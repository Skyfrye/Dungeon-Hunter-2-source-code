; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0047f700, declared_size=4, range_size=4, mode=arm
; class-group: Quest
; alias: _ZN5Quest16UpdatePostClosedEv
; demangled: Quest::UpdatePostClosed()
; decoder-mode: arm
0047f700  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047f704, declared_size=8, range_size=8, mode=arm
; class-group: Quest
; alias: _ZNK5Quest23DBG_GetCurrentStateNameEv
; demangled: Quest::DBG_GetCurrentStateName() const
; decoder-mode: arm
0047f704  00 00 90 e5                                      ldr r0, [r0]
0047f708  ee ff ff ea                                      b #0x47f6c8

; FUNCTION 0x0047f70c, declared_size=40, range_size=40, mode=arm
; class-group: Quest
; alias: _ZNK5Quest15IsVolatileStateEi
; demangled: Quest::IsVolatileState(int) const
; decoder-mode: arm
0047f70c  02 30 41 e2                                      sub r3, r1, #2
0047f710  09 00 53 e3                                      cmp r3, #9
0047f714  00 00 a0 83                                      movhi r0, #0
0047f718  1e ff 2f 81                                      bxhi lr
0047f71c  0c 30 9f e5                                      ldr r3, [pc, #0xc]
0047f720  03 30 8f e0                                      add r3, pc, r3
0047f724  01 10 83 e0                                      add r1, r3, r1
0047f728  02 00 51 e5                                      ldrb r0, [r1, #-2]
0047f72c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0047f730  fc e7 44 00                                      .byte 0xfc, 0xe7, 0x44, 0x00

; FUNCTION 0x0047f734, declared_size=88, range_size=88, mode=arm
; class-group: Quest
; alias: _ZN5Quest14_saveQuestDataEP11IStreamBase
; demangled: Quest::_saveQuestData(IStreamBase*)
; decoder-mode: arm
0047f734  70 40 2d e9                                      push {r4, r5, r6, lr}
0047f738  00 50 a0 e1                                      mov r5, r0
0047f73c  01 40 a0 e1                                      mov r4, r1
0047f740  01 00 a0 e1                                      mov r0, r1
0047f744  00 10 95 e5                                      ldr r1, [r5]
0047f748  c3 db fa eb                                      bl #0x33665c
0047f74c  18 30 95 e5                                      ldr r3, [r5, #0x18]
0047f750  04 10 a0 e1                                      mov r1, r4
0047f754  03 00 a0 e1                                      mov r0, r3
0047f758  00 30 93 e5                                      ldr r3, [r3]
0047f75c  0f e0 a0 e1                                      mov lr, pc
0047f760  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0047f764  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
0047f768  04 10 a0 e1                                      mov r1, r4
0047f76c  03 00 a0 e1                                      mov r0, r3
0047f770  00 30 93 e5                                      ldr r3, [r3]
0047f774  0f e0 a0 e1                                      mov lr, pc
0047f778  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0047f77c  2c 00 85 e2                                      add r0, r5, #0x2c
0047f780  04 10 a0 e1                                      mov r1, r4
0047f784  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047f788  f7 eb ff ea                                      b #0x47a76c

; FUNCTION 0x0047f78c, declared_size=112, range_size=112, mode=arm
; class-group: Quest
; alias: _ZN5Quest14_loadQuestDataEP11IStreamBaseb
; demangled: Quest::_loadQuestData(IStreamBase*, bool)
; decoder-mode: arm
0047f78c  70 40 2d e9                                      push {r4, r5, r6, lr}
0047f790  00 40 a0 e1                                      mov r4, r0
0047f794  01 50 a0 e1                                      mov r5, r1
0047f798  01 00 a0 e1                                      mov r0, r1
0047f79c  04 10 a0 e1                                      mov r1, r4
0047f7a0  3a 66 ff eb                                      bl #0x459090
0047f7a4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0047f7a8  05 10 a0 e1                                      mov r1, r5
0047f7ac  03 00 a0 e1                                      mov r0, r3
0047f7b0  00 30 93 e5                                      ldr r3, [r3]
0047f7b4  0f e0 a0 e1                                      mov lr, pc
0047f7b8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0047f7bc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0047f7c0  05 10 a0 e1                                      mov r1, r5
0047f7c4  03 00 a0 e1                                      mov r0, r3
0047f7c8  00 30 93 e5                                      ldr r3, [r3]
0047f7cc  0f e0 a0 e1                                      mov lr, pc
0047f7d0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0047f7d4  05 10 a0 e1                                      mov r1, r5
0047f7d8  2c 00 84 e2                                      add r0, r4, #0x2c
0047f7dc  ed eb ff eb                                      bl #0x47a798
0047f7e0  04 00 a0 e1                                      mov r0, r4
0047f7e4  00 10 94 e5                                      ldr r1, [r4]
0047f7e8  c7 ff ff eb                                      bl #0x47f70c
0047f7ec  00 00 50 e3                                      cmp r0, #0
0047f7f0  01 30 a0 13                                      movne r3, #1
0047f7f4  64 30 c4 15                                      strbne r3, [r4, #0x64]
0047f7f8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0047f7fc, declared_size=84, range_size=84, mode=arm
; class-group: Quest
; alias: _ZNK5Quest8IsDialogEv
; demangled: Quest::IsDialog() const
; decoder-mode: arm
0047f7fc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047f800  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047f804  10 40 2d e9                                      push {r4, lr}
0047f808  03 30 8f e0                                      add r3, pc, r3
0047f80c  02 20 93 e7                                      ldr r2, [r3, r2]
0047f810  68 c0 90 e5                                      ldr ip, [r0, #0x68]
0047f814  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0047f818  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
0047f81c  28 20 9f e5                                      ldr r2, [pc, #0x28]
0047f820  01 10 8f e0                                      add r1, pc, r1
0047f824  14 41 9c e5                                      ldr r4, [ip, #0x114]
0047f828  02 20 8f e0                                      add r2, pc, r2
0047f82c  ea 14 01 eb                                      bl #0x4c4bdc
0047f830  00 00 54 e1                                      cmp r4, r0
0047f834  00 00 a0 13                                      movne r0, #0
0047f838  01 00 a0 03                                      moveq r0, #1
0047f83c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047f840  88 52 51 00 f4 37 00 00 08 e7 44 00 f0 ea 44 00  .byte 0x88, 0x52, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x08, 0xe7, 0x44, 0x00, 0xf0, 0xea, 0x44, 0x00

; FUNCTION 0x0047f850, declared_size=84, range_size=84, mode=arm
; class-group: Quest
; alias: _ZNK5Quest7IsDebugEv
; demangled: Quest::IsDebug() const
; decoder-mode: arm
0047f850  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047f854  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047f858  10 40 2d e9                                      push {r4, lr}
0047f85c  03 30 8f e0                                      add r3, pc, r3
0047f860  02 20 93 e7                                      ldr r2, [r3, r2]
0047f864  68 c0 90 e5                                      ldr ip, [r0, #0x68]
0047f868  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0047f86c  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
0047f870  28 20 9f e5                                      ldr r2, [pc, #0x28]
0047f874  01 10 8f e0                                      add r1, pc, r1
0047f878  14 41 9c e5                                      ldr r4, [ip, #0x114]
0047f87c  02 20 8f e0                                      add r2, pc, r2
0047f880  d5 14 01 eb                                      bl #0x4c4bdc
0047f884  00 00 54 e1                                      cmp r4, r0
0047f888  00 00 a0 13                                      movne r0, #0
0047f88c  01 00 a0 03                                      moveq r0, #1
0047f890  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047f894  34 52 51 00 f4 37 00 00 b4 e6 44 00 bc e6 44 00  .byte 0x34, 0x52, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb4, 0xe6, 0x44, 0x00, 0xbc, 0xe6, 0x44, 0x00

; FUNCTION 0x0047f8a4, declared_size=84, range_size=84, mode=arm
; class-group: Quest
; alias: _ZNK5Quest11IsSecondaryEv
; demangled: Quest::IsSecondary() const
; decoder-mode: arm
0047f8a4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047f8a8  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047f8ac  10 40 2d e9                                      push {r4, lr}
0047f8b0  03 30 8f e0                                      add r3, pc, r3
0047f8b4  02 20 93 e7                                      ldr r2, [r3, r2]
0047f8b8  68 c0 90 e5                                      ldr ip, [r0, #0x68]
0047f8bc  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0047f8c0  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
0047f8c4  28 20 9f e5                                      ldr r2, [pc, #0x28]
0047f8c8  01 10 8f e0                                      add r1, pc, r1
0047f8cc  14 41 9c e5                                      ldr r4, [ip, #0x114]
0047f8d0  02 20 8f e0                                      add r2, pc, r2
0047f8d4  c0 14 01 eb                                      bl #0x4c4bdc
0047f8d8  00 00 54 e1                                      cmp r4, r0
0047f8dc  00 00 a0 13                                      movne r0, #0
0047f8e0  01 00 a0 03                                      moveq r0, #1
0047f8e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047f8e8  e0 51 51 00 f4 37 00 00 60 e6 44 00 70 e6 44 00  .byte 0xe0, 0x51, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x60, 0xe6, 0x44, 0x00, 0x70, 0xe6, 0x44, 0x00

; FUNCTION 0x0047f8f8, declared_size=84, range_size=84, mode=arm
; class-group: Quest
; alias: _ZNK5Quest9IsPrimaryEv
; demangled: Quest::IsPrimary() const
; decoder-mode: arm
0047f8f8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0047f8fc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0047f900  10 40 2d e9                                      push {r4, lr}
0047f904  03 30 8f e0                                      add r3, pc, r3
0047f908  02 20 93 e7                                      ldr r2, [r3, r2]
0047f90c  68 c0 90 e5                                      ldr ip, [r0, #0x68]
0047f910  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0047f914  2c 00 92 e5                                      ldr r0, [r2, #0x2c]
0047f918  28 20 9f e5                                      ldr r2, [pc, #0x28]
0047f91c  01 10 8f e0                                      add r1, pc, r1
0047f920  14 41 9c e5                                      ldr r4, [ip, #0x114]
0047f924  02 20 8f e0                                      add r2, pc, r2
0047f928  ab 14 01 eb                                      bl #0x4c4bdc
0047f92c  00 00 54 e1                                      cmp r4, r0
0047f930  00 00 a0 13                                      movne r0, #0
0047f934  01 00 a0 03                                      moveq r0, #1
0047f938  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0047f93c  8c 51 51 00 f4 37 00 00 0c e6 44 00 2c e6 44 00  .byte 0x8c, 0x51, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x0c, 0xe6, 0x44, 0x00, 0x2c, 0xe6, 0x44, 0x00

; FUNCTION 0x0047f94c, declared_size=56, range_size=56, mode=arm
; class-group: Quest
; alias: _ZNK5Quest18GetPostDescriptionEv
; demangled: Quest::GetPostDescription() const
; decoder-mode: arm
0047f94c  68 20 90 e5                                      ldr r2, [r0, #0x68]
0047f950  07 37 a0 e3                                      mov r3, #0x1c0000
0047f954  08 30 83 e2                                      add r3, r3, #8
0047f958  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0047f95c  03 00 52 e1                                      cmp r2, r3
0047f960  02 00 00 0a                                      beq #0x47f970
0047f964  10 00 9f e5                                      ldr r0, [pc, #0x10]
0047f968  00 00 8f e0                                      add r0, pc, r0
0047f96c  1e ff 2f e1                                      bx lr
0047f970  08 00 9f e5                                      ldr r0, [pc, #8]
0047f974  00 00 8f e0                                      add r0, pc, r0
0047f978  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0047f97c  a0 be 44 00 e4 e5 44 00                          .byte 0xa0, 0xbe, 0x44, 0x00, 0xe4, 0xe5, 0x44, 0x00

; FUNCTION 0x0047f984, declared_size=88, range_size=88, mode=arm
; class-group: Quest
; alias: _ZNK5Quest17GetPreDescriptionEv
; demangled: Quest::GetPreDescription() const
; decoder-mode: arm
0047f984  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047f988  07 27 a0 e3                                      mov r2, #0x1c0000
0047f98c  08 20 82 e2                                      add r2, r2, #8
0047f990  08 10 93 e5                                      ldr r1, [r3, #8]
0047f994  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047f998  02 00 51 e0                                      subs r0, r1, r2
0047f99c  01 00 a0 13                                      movne r0, #1
0047f9a0  00 00 51 e3                                      cmp r1, #0
0047f9a4  00 00 a0 b3                                      movlt r0, #0
0047f9a8  00 00 50 e3                                      cmp r0, #0
0047f9ac  03 30 8f e0                                      add r3, pc, r3
0047f9b0  02 00 00 1a                                      bne #0x47f9c0
0047f9b4  18 00 9f e5                                      ldr r0, [pc, #0x18]
0047f9b8  00 00 8f e0                                      add r0, pc, r0
0047f9bc  1e ff 2f e1                                      bx lr
0047f9c0  10 20 9f e5                                      ldr r2, [pc, #0x10]
0047f9c4  02 30 93 e7                                      ldr r3, [r3, r2]
0047f9c8  34 00 93 e5                                      ldr r0, [r3, #0x34]
0047f9cc  42 25 02 ea                                      b #0x508edc
; mapping-symbol data/literal pool
0047f9d0  e4 50 51 00 a0 e5 44 00 f4 37 00 00              .byte 0xe4, 0x50, 0x51, 0x00, 0xa0, 0xe5, 0x44, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047f9dc, declared_size=88, range_size=88, mode=arm
; class-group: Quest
; alias: _ZNK5Quest8GetTitleEv
; demangled: Quest::GetTitle() const
; decoder-mode: arm
0047f9dc  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047f9e0  07 27 a0 e3                                      mov r2, #0x1c0000
0047f9e4  08 20 82 e2                                      add r2, r2, #8
0047f9e8  04 10 93 e5                                      ldr r1, [r3, #4]
0047f9ec  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047f9f0  02 00 51 e0                                      subs r0, r1, r2
0047f9f4  01 00 a0 13                                      movne r0, #1
0047f9f8  00 00 51 e3                                      cmp r1, #0
0047f9fc  00 00 a0 b3                                      movlt r0, #0
0047fa00  00 00 50 e3                                      cmp r0, #0
0047fa04  03 30 8f e0                                      add r3, pc, r3
0047fa08  02 00 00 1a                                      bne #0x47fa18
0047fa0c  18 00 9f e5                                      ldr r0, [pc, #0x18]
0047fa10  00 00 8f e0                                      add r0, pc, r0
0047fa14  1e ff 2f e1                                      bx lr
0047fa18  10 20 9f e5                                      ldr r2, [pc, #0x10]
0047fa1c  02 30 93 e7                                      ldr r3, [r3, r2]
0047fa20  34 00 93 e5                                      ldr r0, [r3, #0x34]
0047fa24  2c 25 02 ea                                      b #0x508edc
; mapping-symbol data/literal pool
0047fa28  8c 50 51 00 48 e5 44 00 f4 37 00 00              .byte 0x8c, 0x50, 0x51, 0x00, 0x48, 0xe5, 0x44, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0047fa80, declared_size=244, range_size=244, mode=arm
; class-group: Quest
; alias: _ZNK5Quest17GetScriptIDFromIDEi
; demangled: Quest::GetScriptIDFromID(int) const
; decoder-mode: arm
0047fa80  0d 00 51 e3                                      cmp r1, #0xd
0047fa84  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
0047fa88  10 00 00 ea                                      b #0x47fad0
0047fa8c  11 00 00 ea                                      b #0x47fad8
0047fa90  13 00 00 ea                                      b #0x47fae4
0047fa94  15 00 00 ea                                      b #0x47faf0
0047fa98  17 00 00 ea                                      b #0x47fafc
0047fa9c  19 00 00 ea                                      b #0x47fb08
0047faa0  1b 00 00 ea                                      b #0x47fb14
0047faa4  1d 00 00 ea                                      b #0x47fb20
0047faa8  1f 00 00 ea                                      b #0x47fb2c
0047faac  21 00 00 ea                                      b #0x47fb38
0047fab0  23 00 00 ea                                      b #0x47fb44
0047fab4  25 00 00 ea                                      b #0x47fb50
0047fab8  27 00 00 ea                                      b #0x47fb5c
0047fabc  29 00 00 ea                                      b #0x47fb68
0047fac0  ff ff ff ea                                      b #0x47fac4
0047fac4  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fac8  10 01 93 e5                                      ldr r0, [r3, #0x110]
0047facc  d8 ff ff ea                                      b #0x47fa34
0047fad0  00 00 e0 e3                                      mvn r0, #0
0047fad4  1e ff 2f e1                                      bx lr
0047fad8  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fadc  a8 00 93 e5                                      ldr r0, [r3, #0xa8]
0047fae0  d3 ff ff ea                                      b #0x47fa34
0047fae4  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fae8  b0 00 93 e5                                      ldr r0, [r3, #0xb0]
0047faec  d0 ff ff ea                                      b #0x47fa34
0047faf0  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047faf4  b8 00 93 e5                                      ldr r0, [r3, #0xb8]
0047faf8  cd ff ff ea                                      b #0x47fa34
0047fafc  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb00  c0 00 93 e5                                      ldr r0, [r3, #0xc0]
0047fb04  ca ff ff ea                                      b #0x47fa34
0047fb08  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb0c  c8 00 93 e5                                      ldr r0, [r3, #0xc8]
0047fb10  c7 ff ff ea                                      b #0x47fa34
0047fb14  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb18  d0 00 93 e5                                      ldr r0, [r3, #0xd0]
0047fb1c  c4 ff ff ea                                      b #0x47fa34
0047fb20  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb24  d8 00 93 e5                                      ldr r0, [r3, #0xd8]
0047fb28  c1 ff ff ea                                      b #0x47fa34
0047fb2c  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb30  e0 00 93 e5                                      ldr r0, [r3, #0xe0]
0047fb34  be ff ff ea                                      b #0x47fa34
0047fb38  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb3c  e8 00 93 e5                                      ldr r0, [r3, #0xe8]
0047fb40  bb ff ff ea                                      b #0x47fa34
0047fb44  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb48  f0 00 93 e5                                      ldr r0, [r3, #0xf0]
0047fb4c  b8 ff ff ea                                      b #0x47fa34
0047fb50  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb54  f8 00 93 e5                                      ldr r0, [r3, #0xf8]
0047fb58  b5 ff ff ea                                      b #0x47fa34
0047fb5c  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb60  00 01 93 e5                                      ldr r0, [r3, #0x100]
0047fb64  b2 ff ff ea                                      b #0x47fa34
0047fb68  68 30 90 e5                                      ldr r3, [r0, #0x68]
0047fb6c  08 01 93 e5                                      ldr r0, [r3, #0x108]
0047fb70  af ff ff ea                                      b #0x47fa34

; FUNCTION 0x0047fb74, declared_size=624, range_size=624, mode=arm
; class-group: Quest
; alias: _ZN5Quest34HandleSaveInStateTransitonIfNeededEi
; demangled: Quest::HandleSaveInStateTransitonIfNeeded(int)
; decoder-mode: arm
0047fb74  70 40 2d e9                                      push {r4, r5, r6, lr}
0047fb78  08 d0 4d e2                                      sub sp, sp, #8
0047fb7c  00 50 a0 e1                                      mov r5, r0
0047fb80  01 60 a0 e1                                      mov r6, r1
0047fb84  e0 fe ff eb                                      bl #0x47f70c
0047fb88  38 42 9f e5                                      ldr r4, [pc, #0x238]
0047fb8c  00 00 50 e3                                      cmp r0, #0
0047fb90  04 40 8f e0                                      add r4, pc, r4
0047fb94  07 00 00 1a                                      bne #0x47fbb8
0047fb98  2c 32 9f e5                                      ldr r3, [pc, #0x22c]
0047fb9c  03 30 94 e7                                      ldr r3, [r4, r3]
0047fba0  00 30 93 e5                                      ldr r3, [r3]
0047fba4  02 00 53 e3                                      cmp r3, #2
0047fba8  00 00 80 05                                      streq r0, [r0]
0047fbac  01 00 00 0a                                      beq #0x47fbb8
0047fbb0  01 00 53 e3                                      cmp r3, #1
0047fbb4  76 00 00 0a                                      beq #0x47fd94
0047fbb8  64 30 d5 e5                                      ldrb r3, [r5, #0x64]
0047fbbc  00 00 53 e3                                      cmp r3, #0
0047fbc0  0f 00 00 1a                                      bne #0x47fc04
0047fbc4  02 60 46 e2                                      sub r6, r6, #2
0047fbc8  0b 00 56 e3                                      cmp r6, #0xb
0047fbcc  06 f1 8f 90                                      addls pc, pc, r6, lsl #2
0047fbd0  0b 00 00 ea                                      b #0x47fc04
0047fbd4  2c 00 00 ea                                      b #0x47fc8c
0047fbd8  09 00 00 ea                                      b #0x47fc04
0047fbdc  36 00 00 ea                                      b #0x47fcbc
0047fbe0  3b 00 00 ea                                      b #0x47fcd4
0047fbe4  06 00 00 ea                                      b #0x47fc04
0047fbe8  45 00 00 ea                                      b #0x47fd04
0047fbec  4a 00 00 ea                                      b #0x47fd1c
0047fbf0  03 00 00 ea                                      b #0x47fc04
0047fbf4  54 00 00 ea                                      b #0x47fd4c
0047fbf8  59 00 00 ea                                      b #0x47fd64
0047fbfc  00 00 00 ea                                      b #0x47fc04
0047fc00  01 00 00 ea                                      b #0x47fc0c
0047fc04  08 d0 8d e2                                      add sp, sp, #8
0047fc08  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047fc0c  05 00 a0 e1                                      mov r0, r5
0047fc10  07 10 a0 e3                                      mov r1, #7
0047fc14  99 ff ff eb                                      bl #0x47fa80
0047fc18  00 00 e0 e1                                      mvn r0, r0
0047fc1c  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0047fc20  00 00 50 e3                                      cmp r0, #0
0047fc24  f6 ff ff 0a                                      beq #0x47fc04
0047fc28  a0 51 9f e5                                      ldr r5, [pc, #0x1a0]
0047fc2c  05 00 94 e7                                      ldr r0, [r4, r5]
0047fc30  57 7e fa eb                                      bl #0x31f594
0047fc34  00 60 50 e2                                      subs r6, r0, #0
0047fc38  04 00 00 0a                                      beq #0x47fc50
0047fc3c  00 10 a0 e3                                      mov r1, #0
0047fc40  7c bd fd eb                                      bl #0x3ef238
0047fc44  06 00 a0 e1                                      mov r0, r6
0047fc48  00 10 a0 e3                                      mov r1, #0
0047fc4c  52 c2 fd eb                                      bl #0x3f059c
0047fc50  05 30 94 e7                                      ldr r3, [r4, r5]
0047fc54  00 10 a0 e3                                      mov r1, #0
0047fc58  01 20 a0 e3                                      mov r2, #1
0047fc5c  40 00 93 e5                                      ldr r0, [r3, #0x40]
0047fc60  04 ba fb eb                                      bl #0x36e478
0047fc64  60 46 90 e5                                      ldr r4, [r0, #0x660]
0047fc68  00 00 54 e3                                      cmp r4, #0
0047fc6c  e4 ff ff 0a                                      beq #0x47fc04
0047fc70  04 00 a0 e1                                      mov r0, r4
0047fc74  00 10 a0 e3                                      mov r1, #0
0047fc78  bc ee fc eb                                      bl #0x3bb770
0047fc7c  04 00 a0 e1                                      mov r0, r4
0047fc80  08 d0 8d e2                                      add sp, sp, #8
0047fc84  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047fc88  06 f2 fc ea                                      b #0x3bc4a8
0047fc8c  0b 10 a0 e3                                      mov r1, #0xb
0047fc90  05 00 a0 e1                                      mov r0, r5
0047fc94  79 ff ff eb                                      bl #0x47fa80
0047fc98  01 10 a0 e3                                      mov r1, #1
0047fc9c  00 60 a0 e1                                      mov r6, r0
0047fca0  05 00 a0 e1                                      mov r0, r5
0047fca4  75 ff ff eb                                      bl #0x47fa80
0047fca8  00 00 56 e3                                      cmp r6, #0
0047fcac  00 00 50 b3                                      cmplt r0, #0
0047fcb0  00 00 a0 b3                                      movlt r0, #0
0047fcb4  01 00 a0 a3                                      movge r0, #1
0047fcb8  d8 ff ff ea                                      b #0x47fc20
0047fcbc  05 00 a0 e1                                      mov r0, r5
0047fcc0  06 10 a0 e3                                      mov r1, #6
0047fcc4  6d ff ff eb                                      bl #0x47fa80
0047fcc8  00 00 e0 e1                                      mvn r0, r0
0047fccc  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0047fcd0  d2 ff ff ea                                      b #0x47fc20
0047fcd4  0a 10 a0 e3                                      mov r1, #0xa
0047fcd8  05 00 a0 e1                                      mov r0, r5
0047fcdc  67 ff ff eb                                      bl #0x47fa80
0047fce0  00 10 a0 e3                                      mov r1, #0
0047fce4  00 60 a0 e1                                      mov r6, r0
0047fce8  05 00 a0 e1                                      mov r0, r5
0047fcec  63 ff ff eb                                      bl #0x47fa80
0047fcf0  00 00 56 e3                                      cmp r6, #0
0047fcf4  00 00 50 b3                                      cmplt r0, #0
0047fcf8  00 00 a0 b3                                      movlt r0, #0
0047fcfc  01 00 a0 a3                                      movge r0, #1
0047fd00  c6 ff ff ea                                      b #0x47fc20
0047fd04  05 00 a0 e1                                      mov r0, r5
0047fd08  05 10 a0 e3                                      mov r1, #5
0047fd0c  5b ff ff eb                                      bl #0x47fa80
0047fd10  00 00 e0 e1                                      mvn r0, r0
0047fd14  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0047fd18  c0 ff ff ea                                      b #0x47fc20
0047fd1c  0d 10 a0 e3                                      mov r1, #0xd
0047fd20  05 00 a0 e1                                      mov r0, r5
0047fd24  55 ff ff eb                                      bl #0x47fa80
0047fd28  03 10 a0 e3                                      mov r1, #3
0047fd2c  00 60 a0 e1                                      mov r6, r0
0047fd30  05 00 a0 e1                                      mov r0, r5
0047fd34  51 ff ff eb                                      bl #0x47fa80
0047fd38  00 00 56 e3                                      cmp r6, #0
0047fd3c  00 00 50 b3                                      cmplt r0, #0
0047fd40  00 00 a0 b3                                      movlt r0, #0
0047fd44  01 00 a0 a3                                      movge r0, #1
0047fd48  b4 ff ff ea                                      b #0x47fc20
0047fd4c  05 00 a0 e1                                      mov r0, r5
0047fd50  08 10 a0 e3                                      mov r1, #8
0047fd54  49 ff ff eb                                      bl #0x47fa80
0047fd58  00 00 e0 e1                                      mvn r0, r0
0047fd5c  a0 0f a0 e1                                      lsr r0, r0, #0x1f
0047fd60  ae ff ff ea                                      b #0x47fc20
0047fd64  0c 10 a0 e3                                      mov r1, #0xc
0047fd68  05 00 a0 e1                                      mov r0, r5
0047fd6c  43 ff ff eb                                      bl #0x47fa80
0047fd70  02 10 a0 e3                                      mov r1, #2
0047fd74  00 60 a0 e1                                      mov r6, r0
0047fd78  05 00 a0 e1                                      mov r0, r5
0047fd7c  3f ff ff eb                                      bl #0x47fa80
0047fd80  00 00 56 e3                                      cmp r6, #0
0047fd84  00 00 50 b3                                      cmplt r0, #0
0047fd88  00 00 a0 b3                                      movlt r0, #0
0047fd8c  01 00 a0 a3                                      movge r0, #1
0047fd90  a2 ff ff ea                                      b #0x47fc20
0047fd94  38 00 9f e5                                      ldr r0, [pc, #0x38]
0047fd98  38 10 9f e5                                      ldr r1, [pc, #0x38]
0047fd9c  38 20 9f e5                                      ldr r2, [pc, #0x38]
0047fda0  00 00 94 e7                                      ldr r0, [r4, r0]
0047fda4  34 30 9f e5                                      ldr r3, [pc, #0x34]
0047fda8  52 c3 00 e3                                      movw ip, #0x352
0047fdac  01 10 8f e0                                      add r1, pc, r1
0047fdb0  02 20 8f e0                                      add r2, pc, r2
0047fdb4  03 30 8f e0                                      add r3, pc, r3
0047fdb8  a8 00 80 e2                                      add r0, r0, #0xa8
0047fdbc  00 c0 8d e5                                      str ip, [sp]
0047fdc0  8f 38 fa eb                                      bl #0x30e004
0047fdc4  7b ff ff ea                                      b #0x47fbb8
; mapping-symbol data/literal pool
0047fdc8  00 4f 51 00 c0 39 00 00 f4 37 00 00 c0 19 00 00  .byte 0x00, 0x4f, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0047fdd8  2c e6 43 00 b8 e1 44 00 cc e1 44 00              .byte 0x2c, 0xe6, 0x43, 0x00, 0xb8, 0xe1, 0x44, 0x00, 0xcc, 0xe1, 0x44, 0x00

; FUNCTION 0x0047fde4, declared_size=316, range_size=316, mode=arm
; class-group: Quest
; alias: _ZN5Quest19TestIsScriptRunningEi
; demangled: Quest::TestIsScriptRunning(int)
; decoder-mode: arm
0047fde4  70 40 2d e9                                      push {r4, r5, r6, lr}
0047fde8  08 41 9f e5                                      ldr r4, [pc, #0x108]
0047fdec  00 50 51 e2                                      subs r5, r1, #0
0047fdf0  08 d0 4d e2                                      sub sp, sp, #8
0047fdf4  00 60 a0 e1                                      mov r6, r0
0047fdf8  04 40 8f e0                                      add r4, pc, r4
0047fdfc  12 00 00 ba                                      blt #0x47fe4c
0047fe00  0d 00 55 e3                                      cmp r5, #0xd
0047fe04  06 00 00 da                                      ble #0x47fe24
0047fe08  ec 30 9f e5                                      ldr r3, [pc, #0xec]
0047fe0c  03 30 94 e7                                      ldr r3, [r4, r3]
0047fe10  00 30 93 e5                                      ldr r3, [r3]
0047fe14  02 00 53 e3                                      cmp r3, #2
0047fe18  10 00 00 0a                                      beq #0x47fe60
0047fe1c  01 00 53 e3                                      cmp r3, #1
0047fe20  27 00 00 0a                                      beq #0x47fec4
0047fe24  05 10 a0 e1                                      mov r1, r5
0047fe28  06 00 a0 e1                                      mov r0, r6
0047fe2c  13 ff ff eb                                      bl #0x47fa80
0047fe30  00 10 50 e2                                      subs r1, r0, #0
0047fe34  10 00 00 ba                                      blt #0x47fe7c
0047fe38  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
0047fe3c  03 00 94 e7                                      ldr r0, [r4, r3]
0047fe40  08 d0 8d e2                                      add sp, sp, #8
0047fe44  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047fe48  67 57 ff ea                                      b #0x455bec
0047fe4c  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0047fe50  03 30 94 e7                                      ldr r3, [r4, r3]
0047fe54  00 30 93 e5                                      ldr r3, [r3]
0047fe58  02 00 53 e3                                      cmp r3, #2
0047fe5c  09 00 00 1a                                      bne #0x47fe88
0047fe60  00 30 a0 e3                                      mov r3, #0
0047fe64  05 10 a0 e1                                      mov r1, r5
0047fe68  00 30 83 e5                                      str r3, [r3]
0047fe6c  06 00 a0 e1                                      mov r0, r6
0047fe70  02 ff ff eb                                      bl #0x47fa80
0047fe74  00 10 50 e2                                      subs r1, r0, #0
0047fe78  ee ff ff aa                                      bge #0x47fe38
0047fe7c  00 00 a0 e3                                      mov r0, #0
0047fe80  08 d0 8d e2                                      add sp, sp, #8
0047fe84  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047fe88  01 00 53 e3                                      cmp r3, #1
0047fe8c  e4 ff ff 1a                                      bne #0x47fe24
0047fe90  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0047fe94  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0047fe98  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0047fe9c  00 00 94 e7                                      ldr r0, [r4, r0]
0047fea0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0047fea4  e7 c2 00 e3                                      movw ip, #0x2e7
0047fea8  01 10 8f e0                                      add r1, pc, r1
0047feac  02 20 8f e0                                      add r2, pc, r2
0047feb0  03 30 8f e0                                      add r3, pc, r3
0047feb4  a8 00 80 e2                                      add r0, r0, #0xa8
0047feb8  00 c0 8d e5                                      str ip, [sp]
0047febc  50 38 fa eb                                      bl #0x30e004
0047fec0  d7 ff ff ea                                      b #0x47fe24
0047fec4  38 00 9f e5                                      ldr r0, [pc, #0x38]
0047fec8  44 10 9f e5                                      ldr r1, [pc, #0x44]
0047fecc  44 20 9f e5                                      ldr r2, [pc, #0x44]
0047fed0  00 00 94 e7                                      ldr r0, [r4, r0]
0047fed4  40 30 9f e5                                      ldr r3, [pc, #0x40]
0047fed8  ba cf a0 e3                                      mov ip, #0x2e8
0047fedc  01 10 8f e0                                      add r1, pc, r1
0047fee0  02 20 8f e0                                      add r2, pc, r2
0047fee4  03 30 8f e0                                      add r3, pc, r3
0047fee8  a8 00 80 e2                                      add r0, r0, #0xa8
0047feec  00 c0 8d e5                                      str ip, [sp]
0047fef0  43 38 fa eb                                      bl #0x30e004
0047fef4  ca ff ff ea                                      b #0x47fe24
; mapping-symbol data/literal pool
0047fef8  98 4c 51 00 c0 39 00 00 20 1a 00 00 c0 19 00 00  .byte 0x98, 0x4c, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0047ff08  30 e5 43 00 1c e1 44 00 d0 e0 44 00 fc e4 43 00  .byte 0x30, 0xe5, 0x43, 0x00, 0x1c, 0xe1, 0x44, 0x00, 0xd0, 0xe0, 0x44, 0x00, 0xfc, 0xe4, 0x43, 0x00
0047ff18  f8 e0 44 00 9c e0 44 00                          .byte 0xf8, 0xe0, 0x44, 0x00, 0x9c, 0xe0, 0x44, 0x00

; FUNCTION 0x0047ff20, declared_size=320, range_size=320, mode=arm
; class-group: Quest
; alias: _ZN5Quest10ExecScriptEi
; demangled: Quest::ExecScript(int)
; decoder-mode: arm
0047ff20  70 40 2d e9                                      push {r4, r5, r6, lr}
0047ff24  0c 41 9f e5                                      ldr r4, [pc, #0x10c]
0047ff28  00 50 51 e2                                      subs r5, r1, #0
0047ff2c  08 d0 4d e2                                      sub sp, sp, #8
0047ff30  00 60 a0 e1                                      mov r6, r0
0047ff34  04 40 8f e0                                      add r4, pc, r4
0047ff38  14 00 00 ba                                      blt #0x47ff90
0047ff3c  0d 00 55 e3                                      cmp r5, #0xd
0047ff40  06 00 00 da                                      ble #0x47ff60
0047ff44  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0047ff48  03 30 94 e7                                      ldr r3, [r4, r3]
0047ff4c  00 30 93 e5                                      ldr r3, [r3]
0047ff50  02 00 53 e3                                      cmp r3, #2
0047ff54  12 00 00 0a                                      beq #0x47ffa4
0047ff58  01 00 53 e3                                      cmp r3, #1
0047ff5c  28 00 00 0a                                      beq #0x480004
0047ff60  05 10 a0 e1                                      mov r1, r5
0047ff64  06 00 a0 e1                                      mov r0, r6
0047ff68  c4 fe ff eb                                      bl #0x47fa80
0047ff6c  00 10 50 e2                                      subs r1, r0, #0
0047ff70  12 00 00 ba                                      blt #0x47ffc0
0047ff74  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0047ff78  00 20 e0 e3                                      mvn r2, #0
0047ff7c  03 00 94 e7                                      ldr r0, [r4, r3]
0047ff80  01 30 a0 e3                                      mov r3, #1
0047ff84  08 d0 8d e2                                      add sp, sp, #8
0047ff88  70 40 bd e8                                      pop {r4, r5, r6, lr}
0047ff8c  8b 81 ff ea                                      b #0x4605c0
0047ff90  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
0047ff94  03 30 94 e7                                      ldr r3, [r4, r3]
0047ff98  00 30 93 e5                                      ldr r3, [r3]
0047ff9c  02 00 53 e3                                      cmp r3, #2
0047ffa0  08 00 00 1a                                      bne #0x47ffc8
0047ffa4  00 30 a0 e3                                      mov r3, #0
0047ffa8  05 10 a0 e1                                      mov r1, r5
0047ffac  00 30 83 e5                                      str r3, [r3]
0047ffb0  06 00 a0 e1                                      mov r0, r6
0047ffb4  b1 fe ff eb                                      bl #0x47fa80
0047ffb8  00 10 50 e2                                      subs r1, r0, #0
0047ffbc  ec ff ff aa                                      bge #0x47ff74
0047ffc0  08 d0 8d e2                                      add sp, sp, #8
0047ffc4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0047ffc8  01 00 53 e3                                      cmp r3, #1
0047ffcc  e3 ff ff 1a                                      bne #0x47ff60
0047ffd0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
0047ffd4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0047ffd8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
0047ffdc  00 00 94 e7                                      ldr r0, [r4, r0]
0047ffe0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0047ffe4  d9 c2 00 e3                                      movw ip, #0x2d9
0047ffe8  01 10 8f e0                                      add r1, pc, r1
0047ffec  02 20 8f e0                                      add r2, pc, r2
0047fff0  03 30 8f e0                                      add r3, pc, r3
0047fff4  a8 00 80 e2                                      add r0, r0, #0xa8
0047fff8  00 c0 8d e5                                      str ip, [sp]
0047fffc  00 38 fa eb                                      bl #0x30e004
00480000  d6 ff ff ea                                      b #0x47ff60
00480004  38 00 9f e5                                      ldr r0, [pc, #0x38]
00480008  44 10 9f e5                                      ldr r1, [pc, #0x44]
0048000c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00480010  00 00 94 e7                                      ldr r0, [r4, r0]
00480014  40 30 9f e5                                      ldr r3, [pc, #0x40]
00480018  da c2 00 e3                                      movw ip, #0x2da
0048001c  01 10 8f e0                                      add r1, pc, r1
00480020  02 20 8f e0                                      add r2, pc, r2
00480024  03 30 8f e0                                      add r3, pc, r3
00480028  a8 00 80 e2                                      add r0, r0, #0xa8
0048002c  00 c0 8d e5                                      str ip, [sp]
00480030  f3 37 fa eb                                      bl #0x30e004
00480034  c9 ff ff ea                                      b #0x47ff60
; mapping-symbol data/literal pool
00480038  5c 4b 51 00 c0 39 00 00 20 1a 00 00 c0 19 00 00  .byte 0x5c, 0x4b, 0x51, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00480048  f0 e3 43 00 dc df 44 00 90 df 44 00 bc e3 43 00  .byte 0xf0, 0xe3, 0x43, 0x00, 0xdc, 0xdf, 0x44, 0x00, 0x90, 0xdf, 0x44, 0x00, 0xbc, 0xe3, 0x43, 0x00
00480058  b8 df 44 00 5c df 44 00                          .byte 0xb8, 0xdf, 0x44, 0x00, 0x5c, 0xdf, 0x44, 0x00

; FUNCTION 0x00480060, declared_size=252, range_size=252, mode=arm
; class-group: Quest
; alias: _ZN5Quest6ReInitEv
; demangled: Quest::ReInit()
; decoder-mode: arm
00480060  10 40 2d e9                                      push {r4, lr}
00480064  00 30 90 e5                                      ldr r3, [r0]
00480068  00 40 a0 e1                                      mov r4, r0
0048006c  02 30 43 e2                                      sub r3, r3, #2
00480070  07 00 53 e3                                      cmp r3, #7
00480074  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00480078  0c 00 00 ea                                      b #0x4800b0
0048007c  0f 00 00 ea                                      b #0x4800c0
00480080  17 00 00 ea                                      b #0x4800e4
00480084  09 00 00 ea                                      b #0x4800b0
00480088  1e 00 00 ea                                      b #0x480108
0048008c  23 00 00 ea                                      b #0x480120
00480090  06 00 00 ea                                      b #0x4800b0
00480094  27 00 00 ea                                      b #0x480138
00480098  ff ff ff ea                                      b #0x48009c
0048009c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
004800a0  03 00 a0 e1                                      mov r0, r3
004800a4  00 30 93 e5                                      ldr r3, [r3]
004800a8  0f e0 a0 e1                                      mov lr, pc
004800ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004800b0  68 30 94 e5                                      ldr r3, [r4, #0x68]
004800b4  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
004800b8  00 30 84 e5                                      str r3, [r4]
004800bc  10 80 bd e8                                      pop {r4, pc}
004800c0  18 30 90 e5                                      ldr r3, [r0, #0x18]
004800c4  03 00 a0 e1                                      mov r0, r3
004800c8  00 30 93 e5                                      ldr r3, [r3]
004800cc  0f e0 a0 e1                                      mov lr, pc
004800d0  14 f0 93 e5                                      ldr pc, [r3, #0x14]
004800d4  68 30 94 e5                                      ldr r3, [r4, #0x68]
004800d8  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
004800dc  00 30 84 e5                                      str r3, [r4]
004800e0  10 80 bd e8                                      pop {r4, pc}
004800e4  18 30 90 e5                                      ldr r3, [r0, #0x18]
004800e8  03 00 a0 e1                                      mov r0, r3
004800ec  00 30 93 e5                                      ldr r3, [r3]
004800f0  0f e0 a0 e1                                      mov lr, pc
004800f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
004800f8  68 30 94 e5                                      ldr r3, [r4, #0x68]
004800fc  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
00480100  00 30 84 e5                                      str r3, [r4]
00480104  10 80 bd e8                                      pop {r4, pc}
00480108  2c 00 80 e2                                      add r0, r0, #0x2c
0048010c  2e e9 ff eb                                      bl #0x47a5cc
00480110  68 30 94 e5                                      ldr r3, [r4, #0x68]
00480114  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
00480118  00 30 84 e5                                      str r3, [r4]
0048011c  10 80 bd e8                                      pop {r4, pc}
00480120  2c 00 80 e2                                      add r0, r0, #0x2c
00480124  31 e9 ff eb                                      bl #0x47a5f0
00480128  68 30 94 e5                                      ldr r3, [r4, #0x68]
0048012c  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
00480130  00 30 84 e5                                      str r3, [r4]
00480134  10 80 bd e8                                      pop {r4, pc}
00480138  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
0048013c  03 00 a0 e1                                      mov r0, r3
00480140  00 30 93 e5                                      ldr r3, [r3]
00480144  0f e0 a0 e1                                      mov lr, pc
00480148  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0048014c  68 30 94 e5                                      ldr r3, [r4, #0x68]
00480150  9c 30 93 e5                                      ldr r3, [r3, #0x9c]
00480154  00 30 84 e5                                      str r3, [r4]
00480158  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048015c, declared_size=28, range_size=28, mode=arm
; class-group: Quest
; alias: _ZN5Quest11GiveRewardsEv
; demangled: Quest::GiveRewards()
; decoder-mode: arm
0048015c  10 40 2d e9                                      push {r4, lr}
00480160  00 40 a0 e1                                      mov r4, r0
00480164  38 00 80 e2                                      add r0, r0, #0x38
00480168  ec 09 00 eb                                      bl #0x482920
0048016c  00 30 a0 e3                                      mov r3, #0
00480170  5c 30 c4 e5                                      strb r3, [r4, #0x5c]
00480174  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00480178, declared_size=316, range_size=316, mode=arm
; class-group: Quest
; alias: _ZN5Quest7CompileEv
; demangled: Quest::Compile()
; decoder-mode: arm
00480178  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048017c  18 30 90 e5                                      ldr r3, [r0, #0x18]
00480180  00 50 a0 e3                                      mov r5, #0
00480184  2c 60 80 e2                                      add r6, r0, #0x2c
00480188  00 40 a0 e1                                      mov r4, r0
0048018c  14 50 c3 e5                                      strb r5, [r3, #0x14]
00480190  08 50 c3 e5                                      strb r5, [r3, #8]
00480194  06 00 a0 e1                                      mov r0, r6
00480198  26 e9 ff eb                                      bl #0x47a638
0048019c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004801a0  38 70 84 e2                                      add r7, r4, #0x38
004801a4  07 00 a0 e1                                      mov r0, r7
004801a8  14 50 c3 e5                                      strb r5, [r3, #0x14]
004801ac  08 50 c3 e5                                      strb r5, [r3, #8]
004801b0  d1 0d 00 eb                                      bl #0x4838fc
004801b4  18 30 94 e5                                      ldr r3, [r4, #0x18]
004801b8  03 00 a0 e1                                      mov r0, r3
004801bc  00 30 93 e5                                      ldr r3, [r3]
004801c0  0f e0 a0 e1                                      mov lr, pc
004801c4  08 f0 93 e5                                      ldr pc, [r3, #8]
004801c8  06 00 a0 e1                                      mov r0, r6
004801cc  26 e9 ff eb                                      bl #0x47a66c
004801d0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004801d4  03 00 a0 e1                                      mov r0, r3
004801d8  00 30 93 e5                                      ldr r3, [r3]
004801dc  0f e0 a0 e1                                      mov lr, pc
004801e0  08 f0 93 e5                                      ldr pc, [r3, #8]
004801e4  5c 30 d4 e5                                      ldrb r3, [r4, #0x5c]
004801e8  05 00 53 e1                                      cmp r3, r5
004801ec  15 00 00 1a                                      bne #0x480248
004801f0  00 30 94 e5                                      ldr r3, [r4]
004801f4  06 00 53 e3                                      cmp r3, #6
004801f8  17 00 00 0a                                      beq #0x48025c
004801fc  09 00 53 e3                                      cmp r3, #9
00480200  1d 00 00 0a                                      beq #0x48027c
00480204  03 00 53 e3                                      cmp r3, #3
00480208  00 00 00 0a                                      beq #0x480210
0048020c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00480210  18 30 94 e5                                      ldr r3, [r4, #0x18]
00480214  03 00 a0 e1                                      mov r0, r3
00480218  00 30 93 e5                                      ldr r3, [r3]
0048021c  0f e0 a0 e1                                      mov lr, pc
00480220  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00480224  18 30 94 e5                                      ldr r3, [r4, #0x18]
00480228  68 10 94 e5                                      ldr r1, [r4, #0x68]
0048022c  00 20 94 e5                                      ldr r2, [r4]
00480230  03 00 a0 e1                                      mov r0, r3
00480234  14 11 91 e5                                      ldr r1, [r1, #0x114]
00480238  00 30 93 e5                                      ldr r3, [r3]
0048023c  0f e0 a0 e1                                      mov lr, pc
00480240  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00480244  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00480248  07 00 a0 e1                                      mov r0, r7
0048024c  c9 09 00 eb                                      bl #0x482978
00480250  00 30 94 e5                                      ldr r3, [r4]
00480254  06 00 53 e3                                      cmp r3, #6
00480258  e7 ff ff 1a                                      bne #0x4801fc
0048025c  06 00 a0 e1                                      mov r0, r6
00480260  eb e8 ff eb                                      bl #0x47a614
00480264  68 30 94 e5                                      ldr r3, [r4, #0x68]
00480268  00 20 94 e5                                      ldr r2, [r4]
0048026c  06 00 a0 e1                                      mov r0, r6
00480270  14 11 93 e5                                      ldr r1, [r3, #0x114]
00480274  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00480278  9b e8 ff ea                                      b #0x47a4ec
0048027c  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00480280  03 00 a0 e1                                      mov r0, r3
00480284  00 30 93 e5                                      ldr r3, [r3]
00480288  0f e0 a0 e1                                      mov lr, pc
0048028c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00480290  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00480294  68 10 94 e5                                      ldr r1, [r4, #0x68]
00480298  00 20 94 e5                                      ldr r2, [r4]
0048029c  03 00 a0 e1                                      mov r0, r3
004802a0  14 11 91 e5                                      ldr r1, [r1, #0x114]
004802a4  00 30 93 e5                                      ldr r3, [r3]
004802a8  0f e0 a0 e1                                      mov lr, pc
004802ac  10 f0 93 e5                                      ldr pc, [r3, #0x10]
004802b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x004802b4, declared_size=116, range_size=116, mode=arm
; class-group: Quest
; alias: _ZN5Quest11SynchronizeEPKS_b
; demangled: Quest::Synchronize(Quest const*, bool)
; decoder-mode: arm
004802b4  00 00 52 e3                                      cmp r2, #0
004802b8  70 40 2d e9                                      push {r4, r5, r6, lr}
004802bc  01 40 a0 e1                                      mov r4, r1
004802c0  00 50 a0 e1                                      mov r5, r0
004802c4  06 00 00 1a                                      bne #0x4802e4
004802c8  00 30 91 e5                                      ldr r3, [r1]
004802cc  00 30 80 e5                                      str r3, [r0]
004802d0  04 30 91 e5                                      ldr r3, [r1, #4]
004802d4  04 30 80 e5                                      str r3, [r0, #4]
004802d8  64 30 d1 e5                                      ldrb r3, [r1, #0x64]
004802dc  64 30 c0 e5                                      strb r3, [r0, #0x64]
004802e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
004802e4  83 fd ff eb                                      bl #0x47f8f8
004802e8  00 00 50 e3                                      cmp r0, #0
004802ec  fb ff ff 0a                                      beq #0x4802e0
004802f0  00 30 94 e5                                      ldr r3, [r4]
004802f4  0b 00 53 e3                                      cmp r3, #0xb
004802f8  f8 ff ff da                                      ble #0x4802e0
004802fc  05 00 a0 e1                                      mov r0, r5
00480300  56 ff ff eb                                      bl #0x480060
00480304  00 30 94 e5                                      ldr r3, [r4]
00480308  05 00 a0 e1                                      mov r0, r5
0048030c  00 30 85 e5                                      str r3, [r5]
00480310  04 30 94 e5                                      ldr r3, [r4, #4]
00480314  04 30 85 e5                                      str r3, [r5, #4]
00480318  64 30 d4 e5                                      ldrb r3, [r4, #0x64]
0048031c  64 30 c5 e5                                      strb r3, [r5, #0x64]
00480320  70 40 bd e8                                      pop {r4, r5, r6, lr}
00480324  93 ff ff ea                                      b #0x480178

; FUNCTION 0x00480328, declared_size=1200, range_size=1200, mode=arm
; class-group: Quest
; alias: _ZNK5Quest33DBG_TraceDetailedQuestInformationEP7__sFILE
; demangled: Quest::DBG_TraceDetailedQuestInformation(__sFILE*) const
; decoder-mode: arm
00480328  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048032c  00 50 a0 e1                                      mov r5, r0
00480330  04 04 9f e5                                      ldr r0, [pc, #0x404]
00480334  01 40 a0 e1                                      mov r4, r1
00480338  46 20 a0 e3                                      mov r2, #0x46
0048033c  01 10 a0 e3                                      mov r1, #1
00480340  04 30 a0 e1                                      mov r3, r4
00480344  00 00 8f e0                                      add r0, pc, r0
00480348  92 38 fa eb                                      bl #0x30e598
0048034c  ec 03 9f e5                                      ldr r0, [pc, #0x3ec]
00480350  04 30 a0 e1                                      mov r3, r4
00480354  01 10 a0 e3                                      mov r1, #1
00480358  15 20 a0 e3                                      mov r2, #0x15
0048035c  00 00 8f e0                                      add r0, pc, r0
00480360  8c 38 fa eb                                      bl #0x30e598
00480364  08 30 95 e5                                      ldr r3, [r5, #8]
00480368  d4 63 9f e5                                      ldr r6, [pc, #0x3d4]
0048036c  00 00 53 e3                                      cmp r3, #0
00480370  06 60 8f e0                                      add r6, pc, r6
00480374  04 00 00 ba                                      blt #0x48038c
00480378  c8 23 9f e5                                      ldr r2, [pc, #0x3c8]
0048037c  02 20 96 e7                                      ldr r2, [r6, r2]
00480380  00 20 92 e5                                      ldr r2, [r2]
00480384  02 00 53 e1                                      cmp r3, r2
00480388  d8 00 00 3a                                      blo #0x4806f0
0048038c  b8 23 9f e5                                      ldr r2, [pc, #0x3b8]
00480390  02 20 8f e0                                      add r2, pc, r2
00480394  b4 13 9f e5                                      ldr r1, [pc, #0x3b4]
00480398  04 00 a0 e1                                      mov r0, r4
0048039c  01 10 8f e0                                      add r1, pc, r1
004803a0  17 37 fa eb                                      bl #0x30e004
004803a4  68 20 95 e5                                      ldr r2, [r5, #0x68]
004803a8  07 37 a0 e3                                      mov r3, #0x1c0000
004803ac  08 30 83 e2                                      add r3, r3, #8
004803b0  04 10 92 e5                                      ldr r1, [r2, #4]
004803b4  03 20 51 e0                                      subs r2, r1, r3
004803b8  01 20 a0 13                                      movne r2, #1
004803bc  00 00 51 e3                                      cmp r1, #0
004803c0  00 20 a0 b3                                      movlt r2, #0
004803c4  00 00 52 e3                                      cmp r2, #0
004803c8  d5 00 00 1a                                      bne #0x480724
004803cc  80 23 9f e5                                      ldr r2, [pc, #0x380]
004803d0  80 73 9f e5                                      ldr r7, [pc, #0x380]
004803d4  02 20 8f e0                                      add r2, pc, r2
004803d8  7c 13 9f e5                                      ldr r1, [pc, #0x37c]
004803dc  04 00 a0 e1                                      mov r0, r4
004803e0  01 10 8f e0                                      add r1, pc, r1
004803e4  06 37 fa eb                                      bl #0x30e004
004803e8  68 20 95 e5                                      ldr r2, [r5, #0x68]
004803ec  07 37 a0 e3                                      mov r3, #0x1c0000
004803f0  08 30 83 e2                                      add r3, r3, #8
004803f4  08 10 92 e5                                      ldr r1, [r2, #8]
004803f8  03 20 51 e0                                      subs r2, r1, r3
004803fc  01 20 a0 13                                      movne r2, #1
00480400  00 00 51 e3                                      cmp r1, #0
00480404  00 20 a0 b3                                      movlt r2, #0
00480408  00 00 52 e3                                      cmp r2, #0
0048040c  bf 00 00 1a                                      bne #0x480710
00480410  48 23 9f e5                                      ldr r2, [pc, #0x348]
00480414  02 20 8f e0                                      add r2, pc, r2
00480418  44 13 9f e5                                      ldr r1, [pc, #0x344]
0048041c  04 00 a0 e1                                      mov r0, r4
00480420  01 10 8f e0                                      add r1, pc, r1
00480424  f6 36 fa eb                                      bl #0x30e004
00480428  38 03 9f e5                                      ldr r0, [pc, #0x338]
0048042c  0b 20 a0 e3                                      mov r2, #0xb
00480430  04 30 a0 e1                                      mov r3, r4
00480434  01 10 a0 e3                                      mov r1, #1
00480438  00 00 8f e0                                      add r0, pc, r0
0048043c  55 38 fa eb                                      bl #0x30e598
00480440  20 00 85 e2                                      add r0, r5, #0x20
00480444  04 10 a0 e1                                      mov r1, r4
00480448  c3 e0 ff eb                                      bl #0x47875c
0048044c  18 03 9f e5                                      ldr r0, [pc, #0x318]
00480450  0f 20 a0 e3                                      mov r2, #0xf
00480454  04 30 a0 e1                                      mov r3, r4
00480458  01 10 a0 e3                                      mov r1, #1
0048045c  00 00 8f e0                                      add r0, pc, r0
00480460  4c 38 fa eb                                      bl #0x30e598
00480464  2c 00 85 e2                                      add r0, r5, #0x2c
00480468  04 10 a0 e1                                      mov r1, r4
0048046c  f1 e8 ff eb                                      bl #0x47a838
00480470  f8 02 9f e5                                      ldr r0, [pc, #0x2f8]
00480474  0a 20 a0 e3                                      mov r2, #0xa
00480478  04 30 a0 e1                                      mov r3, r4
0048047c  01 10 a0 e3                                      mov r1, #1
00480480  00 00 8f e0                                      add r0, pc, r0
00480484  43 38 fa eb                                      bl #0x30e598
00480488  38 00 85 e2                                      add r0, r5, #0x38
0048048c  04 10 a0 e1                                      mov r1, r4
00480490  49 09 00 eb                                      bl #0x4829bc
00480494  d8 02 9f e5                                      ldr r0, [pc, #0x2d8]
00480498  0f 20 a0 e3                                      mov r2, #0xf
0048049c  04 30 a0 e1                                      mov r3, r4
004804a0  01 10 a0 e3                                      mov r1, #1
004804a4  00 00 8f e0                                      add r0, pc, r0
004804a8  3a 38 fa eb                                      bl #0x30e598
004804ac  18 30 95 e5                                      ldr r3, [r5, #0x18]
004804b0  04 10 a0 e1                                      mov r1, r4
004804b4  03 00 a0 e1                                      mov r0, r3
004804b8  00 30 93 e5                                      ldr r3, [r3]
004804bc  0f e0 a0 e1                                      mov lr, pc
004804c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004804c4  ac 02 9f e5                                      ldr r0, [pc, #0x2ac]
004804c8  0c 20 a0 e3                                      mov r2, #0xc
004804cc  04 30 a0 e1                                      mov r3, r4
004804d0  01 10 a0 e3                                      mov r1, #1
004804d4  00 00 8f e0                                      add r0, pc, r0
004804d8  2e 38 fa eb                                      bl #0x30e598
004804dc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
004804e0  04 10 a0 e1                                      mov r1, r4
004804e4  03 00 a0 e1                                      mov r0, r3
004804e8  00 30 93 e5                                      ldr r3, [r3]
004804ec  0f e0 a0 e1                                      mov lr, pc
004804f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004804f4  68 30 95 e5                                      ldr r3, [r5, #0x68]
004804f8  7c 12 9f e5                                      ldr r1, [pc, #0x27c]
004804fc  04 00 a0 e1                                      mov r0, r4
00480500  94 20 93 e5                                      ldr r2, [r3, #0x94]
00480504  01 10 8f e0                                      add r1, pc, r1
00480508  bd 36 fa eb                                      bl #0x30e004
0048050c  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480510  98 30 d3 e5                                      ldrb r3, [r3, #0x98]
00480514  00 00 53 e3                                      cmp r3, #0
00480518  79 00 00 1a                                      bne #0x480704
0048051c  5c 22 9f e5                                      ldr r2, [pc, #0x25c]
00480520  02 20 8f e0                                      add r2, pc, r2
00480524  58 12 9f e5                                      ldr r1, [pc, #0x258]
00480528  04 00 a0 e1                                      mov r0, r4
0048052c  01 10 8f e0                                      add r1, pc, r1
00480530  b3 36 fa eb                                      bl #0x30e004
00480534  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480538  07 60 96 e7                                      ldr r6, [r6, r7]
0048053c  44 12 9f e5                                      ldr r1, [pc, #0x244]
00480540  9c 20 93 e5                                      ldr r2, [r3, #0x9c]
00480544  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00480548  01 10 8f e0                                      add r1, pc, r1
0048054c  6d 11 01 eb                                      bl #0x4c4b08
00480550  34 12 9f e5                                      ldr r1, [pc, #0x234]
00480554  00 20 a0 e1                                      mov r2, r0
00480558  04 00 a0 e1                                      mov r0, r4
0048055c  01 10 8f e0                                      add r1, pc, r1
00480560  a7 36 fa eb                                      bl #0x30e004
00480564  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480568  20 12 9f e5                                      ldr r1, [pc, #0x220]
0048056c  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
00480570  14 21 93 e5                                      ldr r2, [r3, #0x114]
00480574  01 10 8f e0                                      add r1, pc, r1
00480578  62 11 01 eb                                      bl #0x4c4b08
0048057c  10 12 9f e5                                      ldr r1, [pc, #0x210]
00480580  00 20 a0 e1                                      mov r2, r0
00480584  04 00 a0 e1                                      mov r0, r4
00480588  01 10 8f e0                                      add r1, pc, r1
0048058c  9c 36 fa eb                                      bl #0x30e004
00480590  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480594  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
00480598  04 00 a0 e1                                      mov r0, r4
0048059c  a8 20 93 e5                                      ldr r2, [r3, #0xa8]
004805a0  01 10 8f e0                                      add r1, pc, r1
004805a4  96 36 fa eb                                      bl #0x30e004
004805a8  68 30 95 e5                                      ldr r3, [r5, #0x68]
004805ac  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
004805b0  04 00 a0 e1                                      mov r0, r4
004805b4  b0 20 93 e5                                      ldr r2, [r3, #0xb0]
004805b8  01 10 8f e0                                      add r1, pc, r1
004805bc  90 36 fa eb                                      bl #0x30e004
004805c0  68 30 95 e5                                      ldr r3, [r5, #0x68]
004805c4  d4 11 9f e5                                      ldr r1, [pc, #0x1d4]
004805c8  04 00 a0 e1                                      mov r0, r4
004805cc  b8 20 93 e5                                      ldr r2, [r3, #0xb8]
004805d0  01 10 8f e0                                      add r1, pc, r1
004805d4  8a 36 fa eb                                      bl #0x30e004
004805d8  68 30 95 e5                                      ldr r3, [r5, #0x68]
004805dc  c0 11 9f e5                                      ldr r1, [pc, #0x1c0]
004805e0  04 00 a0 e1                                      mov r0, r4
004805e4  c0 20 93 e5                                      ldr r2, [r3, #0xc0]
004805e8  01 10 8f e0                                      add r1, pc, r1
004805ec  84 36 fa eb                                      bl #0x30e004
004805f0  68 30 95 e5                                      ldr r3, [r5, #0x68]
004805f4  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
004805f8  04 00 a0 e1                                      mov r0, r4
004805fc  c8 20 93 e5                                      ldr r2, [r3, #0xc8]
00480600  01 10 8f e0                                      add r1, pc, r1
00480604  7e 36 fa eb                                      bl #0x30e004
00480608  68 30 95 e5                                      ldr r3, [r5, #0x68]
0048060c  98 11 9f e5                                      ldr r1, [pc, #0x198]
00480610  04 00 a0 e1                                      mov r0, r4
00480614  d0 20 93 e5                                      ldr r2, [r3, #0xd0]
00480618  01 10 8f e0                                      add r1, pc, r1
0048061c  78 36 fa eb                                      bl #0x30e004
00480620  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480624  84 11 9f e5                                      ldr r1, [pc, #0x184]
00480628  04 00 a0 e1                                      mov r0, r4
0048062c  d8 20 93 e5                                      ldr r2, [r3, #0xd8]
00480630  01 10 8f e0                                      add r1, pc, r1
00480634  72 36 fa eb                                      bl #0x30e004
00480638  68 30 95 e5                                      ldr r3, [r5, #0x68]
0048063c  70 11 9f e5                                      ldr r1, [pc, #0x170]
00480640  04 00 a0 e1                                      mov r0, r4
00480644  e0 20 93 e5                                      ldr r2, [r3, #0xe0]
00480648  01 10 8f e0                                      add r1, pc, r1
0048064c  6c 36 fa eb                                      bl #0x30e004
00480650  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480654  5c 11 9f e5                                      ldr r1, [pc, #0x15c]
00480658  04 00 a0 e1                                      mov r0, r4
0048065c  e8 20 93 e5                                      ldr r2, [r3, #0xe8]
00480660  01 10 8f e0                                      add r1, pc, r1
00480664  66 36 fa eb                                      bl #0x30e004
00480668  68 30 95 e5                                      ldr r3, [r5, #0x68]
0048066c  48 11 9f e5                                      ldr r1, [pc, #0x148]
00480670  04 00 a0 e1                                      mov r0, r4
00480674  f0 20 93 e5                                      ldr r2, [r3, #0xf0]
00480678  01 10 8f e0                                      add r1, pc, r1
0048067c  60 36 fa eb                                      bl #0x30e004
00480680  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480684  34 11 9f e5                                      ldr r1, [pc, #0x134]
00480688  04 00 a0 e1                                      mov r0, r4
0048068c  f8 20 93 e5                                      ldr r2, [r3, #0xf8]
00480690  01 10 8f e0                                      add r1, pc, r1
00480694  5a 36 fa eb                                      bl #0x30e004
00480698  68 30 95 e5                                      ldr r3, [r5, #0x68]
0048069c  20 11 9f e5                                      ldr r1, [pc, #0x120]
004806a0  04 00 a0 e1                                      mov r0, r4
004806a4  00 21 93 e5                                      ldr r2, [r3, #0x100]
004806a8  01 10 8f e0                                      add r1, pc, r1
004806ac  54 36 fa eb                                      bl #0x30e004
004806b0  68 30 95 e5                                      ldr r3, [r5, #0x68]
004806b4  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
004806b8  04 00 a0 e1                                      mov r0, r4
004806bc  08 21 93 e5                                      ldr r2, [r3, #0x108]
004806c0  01 10 8f e0                                      add r1, pc, r1
004806c4  4e 36 fa eb                                      bl #0x30e004
004806c8  68 30 95 e5                                      ldr r3, [r5, #0x68]
004806cc  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
004806d0  04 00 a0 e1                                      mov r0, r4
004806d4  10 21 93 e5                                      ldr r2, [r3, #0x110]
004806d8  01 10 8f e0                                      add r1, pc, r1
004806dc  48 36 fa eb                                      bl #0x30e004
004806e0  04 10 a0 e1                                      mov r1, r4
004806e4  0a 00 a0 e3                                      mov r0, #0xa
004806e8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
004806ec  32 39 fa ea                                      b #0x30ebbc
004806f0  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
004806f4  02 20 96 e7                                      ldr r2, [r6, r2]
004806f8  00 20 92 e5                                      ldr r2, [r2]
004806fc  03 21 92 e7                                      ldr r2, [r2, r3, lsl #2]
00480700  23 ff ff ea                                      b #0x480394
00480704  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
00480708  02 20 8f e0                                      add r2, pc, r2
0048070c  84 ff ff ea                                      b #0x480524
00480710  07 30 96 e7                                      ldr r3, [r6, r7]
00480714  34 00 93 e5                                      ldr r0, [r3, #0x34]
00480718  ef 21 02 eb                                      bl #0x508edc
0048071c  00 20 a0 e1                                      mov r2, r0
00480720  3c ff ff ea                                      b #0x480418
00480724  2c 70 9f e5                                      ldr r7, [pc, #0x2c]
00480728  07 30 96 e7                                      ldr r3, [r6, r7]
0048072c  34 00 93 e5                                      ldr r0, [r3, #0x34]
00480730  e9 21 02 eb                                      bl #0x508edc
00480734  00 20 a0 e1                                      mov r2, r0
00480738  26 ff ff ea                                      b #0x4803d8
; mapping-symbol data/literal pool
0048073c  c4 dc 44 00 f4 dc 44 00 20 47 51 00 24 44 00 00  .byte 0xc4, 0xdc, 0x44, 0x00, 0xf4, 0xdc, 0x44, 0x00, 0x20, 0x47, 0x51, 0x00, 0x24, 0x44, 0x00, 0x00
0048074c  80 f4 43 00 cc dc 44 00 84 db 44 00 f4 37 00 00  .byte 0x80, 0xf4, 0x43, 0x00, 0xcc, 0xdc, 0x44, 0x00, 0x84, 0xdb, 0x44, 0x00, 0xf4, 0x37, 0x00, 0x00
0048075c  a0 dc 44 00 44 db 44 00 70 dc 44 00 70 dc 44 00  .byte 0xa0, 0xdc, 0x44, 0x00, 0x44, 0xdb, 0x44, 0x00, 0x70, 0xdc, 0x44, 0x00, 0x70, 0xdc, 0x44, 0x00
0048076c  5c dc 44 00 48 dc 44 00 34 dc 44 00 14 dc 44 00  .byte 0x5c, 0xdc, 0x44, 0x00, 0x48, 0xdc, 0x44, 0x00, 0x34, 0xdc, 0x44, 0x00, 0x14, 0xdc, 0x44, 0x00
0048077c  f4 db 44 00 48 e0 43 00 e4 db 44 00 90 ed 43 00  .byte 0xf4, 0xdb, 0x44, 0x00, 0x48, 0xe0, 0x43, 0x00, 0xe4, 0xdb, 0x44, 0x00, 0x90, 0xed, 0x43, 0x00
0048078c  cc db 44 00 b4 d9 44 00 b0 db 44 00 b0 db 44 00  .byte 0xcc, 0xdb, 0x44, 0x00, 0xb4, 0xd9, 0x44, 0x00, 0xb0, 0xdb, 0x44, 0x00, 0xb0, 0xdb, 0x44, 0x00
0048079c  b0 db 44 00 b8 db 44 00 b8 db 44 00 c0 db 44 00  .byte 0xb0, 0xdb, 0x44, 0x00, 0xb8, 0xdb, 0x44, 0x00, 0xb8, 0xdb, 0x44, 0x00, 0xc0, 0xdb, 0x44, 0x00
004807ac  c0 db 44 00 c8 db 44 00 d0 db 44 00 d8 db 44 00  .byte 0xc0, 0xdb, 0x44, 0x00, 0xc8, 0xdb, 0x44, 0x00, 0xd0, 0xdb, 0x44, 0x00, 0xd8, 0xdb, 0x44, 0x00
004807bc  e0 db 44 00 e8 db 44 00 f0 db 44 00 f8 db 44 00  .byte 0xe0, 0xdb, 0x44, 0x00, 0xe8, 0xdb, 0x44, 0x00, 0xf0, 0xdb, 0x44, 0x00, 0xf8, 0xdb, 0x44, 0x00
004807cc  00 dc 44 00 cc 20 00 00 e8 e1 43 00              .byte 0x00, 0xdc, 0x44, 0x00, 0xcc, 0x20, 0x00, 0x00, 0xe8, 0xe1, 0x43, 0x00

; FUNCTION 0x004807d8, declared_size=68, range_size=68, mode=arm
; class-group: Quest
; alias: _ZN5Quest18SetOwnerToChildrenEv
; demangled: Quest::SetOwnerToChildren()
; decoder-mode: arm
004807d8  10 40 2d e9                                      push {r4, lr}
004807dc  00 40 a0 e1                                      mov r4, r0
004807e0  60 10 94 e5                                      ldr r1, [r4, #0x60]
004807e4  2c 00 80 e2                                      add r0, r0, #0x2c
004807e8  09 e7 ff eb                                      bl #0x47a414
004807ec  38 00 84 e2                                      add r0, r4, #0x38
004807f0  60 10 94 e5                                      ldr r1, [r4, #0x60]
004807f4  3d 08 00 eb                                      bl #0x4828f0
004807f8  18 30 94 e5                                      ldr r3, [r4, #0x18]
004807fc  00 00 53 e3                                      cmp r3, #0
00480800  60 20 94 15                                      ldrne r2, [r4, #0x60]
00480804  10 20 83 15                                      strne r2, [r3, #0x10]
00480808  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0048080c  00 00 53 e3                                      cmp r3, #0
00480810  60 20 94 15                                      ldrne r2, [r4, #0x60]
00480814  10 20 83 15                                      strne r2, [r3, #0x10]
00480818  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048081c, declared_size=200, range_size=200, mode=arm
; class-group: Quest
; alias: _ZN5Quest12AssignPyDataEPN7Structs7v2QuestE
; demangled: Quest::AssignPyData(Structs::v2Quest*)
; decoder-mode: arm
0048081c  10 40 2d e9                                      push {r4, lr}
00480820  68 10 80 e5                                      str r1, [r0, #0x68]
00480824  00 40 a0 e1                                      mov r4, r0
00480828  14 20 91 e5                                      ldr r2, [r1, #0x14]
0048082c  20 00 80 e2                                      add r0, r0, #0x20
00480830  18 10 91 e5                                      ldr r1, [r1, #0x18]
00480834  36 e0 ff eb                                      bl #0x478914
00480838  68 30 94 e5                                      ldr r3, [r4, #0x68]
0048083c  2c 00 84 e2                                      add r0, r4, #0x2c
00480840  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
00480844  20 10 93 e5                                      ldr r1, [r3, #0x20]
00480848  7e e8 ff eb                                      bl #0x47aa48
0048084c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00480850  01 00 53 e3                                      cmp r3, #1
00480854  1c 00 00 0a                                      beq #0x4808cc
00480858  02 00 53 e3                                      cmp r3, #2
0048085c  14 00 00 0a                                      beq #0x4808b4
00480860  00 00 53 e3                                      cmp r3, #0
00480864  04 00 00 1a                                      bne #0x48087c
00480868  68 30 94 e5                                      ldr r3, [r4, #0x68]
0048086c  38 00 84 e2                                      add r0, r4, #0x38
00480870  24 20 93 e5                                      ldr r2, [r3, #0x24]
00480874  28 10 93 e5                                      ldr r1, [r3, #0x28]
00480878  34 0c 00 eb                                      bl #0x483950
0048087c  68 00 94 e5                                      ldr r0, [r4, #0x68]
00480880  3c 00 80 e2                                      add r0, r0, #0x3c
00480884  d7 e6 ff eb                                      bl #0x47a3e8
00480888  68 30 94 e5                                      ldr r3, [r4, #0x68]
0048088c  18 00 84 e5                                      str r0, [r4, #0x18]
00480890  68 00 83 e2                                      add r0, r3, #0x68
00480894  d3 e6 ff eb                                      bl #0x47a3e8
00480898  1c 00 84 e5                                      str r0, [r4, #0x1c]
0048089c  04 00 a0 e1                                      mov r0, r4
004808a0  cc ff ff eb                                      bl #0x4807d8
004808a4  68 30 94 e5                                      ldr r3, [r4, #0x68]
004808a8  18 31 93 e5                                      ldr r3, [r3, #0x118]
004808ac  0c 30 84 e5                                      str r3, [r4, #0xc]
004808b0  10 80 bd e8                                      pop {r4, pc}
004808b4  68 30 94 e5                                      ldr r3, [r4, #0x68]
004808b8  38 00 84 e2                                      add r0, r4, #0x38
004808bc  34 20 93 e5                                      ldr r2, [r3, #0x34]
004808c0  38 10 93 e5                                      ldr r1, [r3, #0x38]
004808c4  21 0c 00 eb                                      bl #0x483950
004808c8  eb ff ff ea                                      b #0x48087c
004808cc  68 30 94 e5                                      ldr r3, [r4, #0x68]
004808d0  38 00 84 e2                                      add r0, r4, #0x38
004808d4  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
004808d8  30 10 93 e5                                      ldr r1, [r3, #0x30]
004808dc  1b 0c 00 eb                                      bl #0x483950
004808e0  e5 ff ff ea                                      b #0x48087c

; FUNCTION 0x004808e4, declared_size=96, range_size=96, mode=arm
; class-group: Quest
; alias: _ZN5QuestC1Ei
; demangled: Quest::Quest(int)
; decoder-mode: arm
004808e4  70 40 2d e9                                      push {r4, r5, r6, lr}
004808e8  00 30 e0 e3                                      mvn r3, #0
004808ec  00 50 a0 e3                                      mov r5, #0
004808f0  01 60 a0 e3                                      mov r6, #1
004808f4  00 40 a0 e1                                      mov r4, r0
004808f8  10 10 80 e5                                      str r1, [r0, #0x10]
004808fc  08 30 80 e5                                      str r3, [r0, #8]
00480900  28 00 80 e8                                      stm r0, {r3, r5}
00480904  0c 60 80 e5                                      str r6, [r0, #0xc]
00480908  14 50 80 e5                                      str r5, [r0, #0x14]
0048090c  18 50 80 e5                                      str r5, [r0, #0x18]
00480910  1c 50 80 e5                                      str r5, [r0, #0x1c]
00480914  20 00 80 e2                                      add r0, r0, #0x20
00480918  74 df ff eb                                      bl #0x4786f0
0048091c  2c 00 84 e2                                      add r0, r4, #0x2c
00480920  ab e6 ff eb                                      bl #0x47a3d4
00480924  38 00 84 e2                                      add r0, r4, #0x38
00480928  77 08 00 eb                                      bl #0x482b0c
0048092c  5c 60 c4 e5                                      strb r6, [r4, #0x5c]
00480930  68 50 84 e5                                      str r5, [r4, #0x68]
00480934  5d 50 c4 e5                                      strb r5, [r4, #0x5d]
00480938  64 50 c4 e5                                      strb r5, [r4, #0x64]
0048093c  04 00 a0 e1                                      mov r0, r4
00480940  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00480944, declared_size=96, range_size=96, mode=arm
; class-group: Quest
; alias: _ZN5QuestC2Ei
; demangled: Quest::Quest(int)
; decoder-mode: arm
00480944  70 40 2d e9                                      push {r4, r5, r6, lr}
00480948  00 30 e0 e3                                      mvn r3, #0
0048094c  00 50 a0 e3                                      mov r5, #0
00480950  01 60 a0 e3                                      mov r6, #1
00480954  00 40 a0 e1                                      mov r4, r0
00480958  10 10 80 e5                                      str r1, [r0, #0x10]
0048095c  08 30 80 e5                                      str r3, [r0, #8]
00480960  28 00 80 e8                                      stm r0, {r3, r5}
00480964  0c 60 80 e5                                      str r6, [r0, #0xc]
00480968  14 50 80 e5                                      str r5, [r0, #0x14]
0048096c  18 50 80 e5                                      str r5, [r0, #0x18]
00480970  1c 50 80 e5                                      str r5, [r0, #0x1c]
00480974  20 00 80 e2                                      add r0, r0, #0x20
00480978  5c df ff eb                                      bl #0x4786f0
0048097c  2c 00 84 e2                                      add r0, r4, #0x2c
00480980  93 e6 ff eb                                      bl #0x47a3d4
00480984  38 00 84 e2                                      add r0, r4, #0x38
00480988  5f 08 00 eb                                      bl #0x482b0c
0048098c  5c 60 c4 e5                                      strb r6, [r4, #0x5c]
00480990  68 50 84 e5                                      str r5, [r4, #0x68]
00480994  5d 50 c4 e5                                      strb r5, [r4, #0x5d]
00480998  64 50 c4 e5                                      strb r5, [r4, #0x64]
0048099c  04 00 a0 e1                                      mov r0, r4
004809a0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004809a4, declared_size=112, range_size=112, mode=arm
; class-group: Quest
; alias: _ZN5QuestD1Ev
; demangled: Quest::~Quest()
; decoder-mode: arm
004809a4  10 40 2d e9                                      push {r4, lr}
004809a8  18 30 90 e5                                      ldr r3, [r0, #0x18]
004809ac  00 40 a0 e1                                      mov r4, r0
004809b0  00 00 53 e3                                      cmp r3, #0
004809b4  05 00 00 0a                                      beq #0x4809d0
004809b8  03 00 a0 e1                                      mov r0, r3
004809bc  00 30 93 e5                                      ldr r3, [r3]
004809c0  0f e0 a0 e1                                      mov lr, pc
004809c4  04 f0 93 e5                                      ldr pc, [r3, #4]
004809c8  00 30 a0 e3                                      mov r3, #0
004809cc  18 30 84 e5                                      str r3, [r4, #0x18]
004809d0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004809d4  00 00 53 e3                                      cmp r3, #0
004809d8  05 00 00 0a                                      beq #0x4809f4
004809dc  03 00 a0 e1                                      mov r0, r3
004809e0  00 30 93 e5                                      ldr r3, [r3]
004809e4  0f e0 a0 e1                                      mov lr, pc
004809e8  04 f0 93 e5                                      ldr pc, [r3, #4]
004809ec  00 30 a0 e3                                      mov r3, #0
004809f0  1c 30 84 e5                                      str r3, [r4, #0x1c]
004809f4  38 00 84 e2                                      add r0, r4, #0x38
004809f8  6a 08 00 eb                                      bl #0x482ba8
004809fc  2c 00 84 e2                                      add r0, r4, #0x2c
00480a00  b1 e7 ff eb                                      bl #0x47a8cc
00480a04  20 00 84 e2                                      add r0, r4, #0x20
00480a08  27 e1 ff eb                                      bl #0x478eac
00480a0c  04 00 a0 e1                                      mov r0, r4
00480a10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00480a14, declared_size=112, range_size=112, mode=arm
; class-group: Quest
; alias: _ZN5QuestD2Ev
; demangled: Quest::~Quest()
; decoder-mode: arm
00480a14  10 40 2d e9                                      push {r4, lr}
00480a18  18 30 90 e5                                      ldr r3, [r0, #0x18]
00480a1c  00 40 a0 e1                                      mov r4, r0
00480a20  00 00 53 e3                                      cmp r3, #0
00480a24  05 00 00 0a                                      beq #0x480a40
00480a28  03 00 a0 e1                                      mov r0, r3
00480a2c  00 30 93 e5                                      ldr r3, [r3]
00480a30  0f e0 a0 e1                                      mov lr, pc
00480a34  04 f0 93 e5                                      ldr pc, [r3, #4]
00480a38  00 30 a0 e3                                      mov r3, #0
00480a3c  18 30 84 e5                                      str r3, [r4, #0x18]
00480a40  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00480a44  00 00 53 e3                                      cmp r3, #0
00480a48  05 00 00 0a                                      beq #0x480a64
00480a4c  03 00 a0 e1                                      mov r0, r3
00480a50  00 30 93 e5                                      ldr r3, [r3]
00480a54  0f e0 a0 e1                                      mov lr, pc
00480a58  04 f0 93 e5                                      ldr pc, [r3, #4]
00480a5c  00 30 a0 e3                                      mov r3, #0
00480a60  1c 30 84 e5                                      str r3, [r4, #0x1c]
00480a64  38 00 84 e2                                      add r0, r4, #0x38
00480a68  4e 08 00 eb                                      bl #0x482ba8
00480a6c  2c 00 84 e2                                      add r0, r4, #0x2c
00480a70  95 e7 ff eb                                      bl #0x47a8cc
00480a74  20 00 84 e2                                      add r0, r4, #0x20
00480a78  0b e1 ff eb                                      bl #0x478eac
00480a7c  04 00 a0 e1                                      mov r0, r4
00480a80  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00480a84, declared_size=136, range_size=136, mode=arm
; class-group: Quest
; alias: _ZNK5Quest23GetObjectiveDescriptionEv
; demangled: Quest::GetObjectiveDescription() const
; decoder-mode: arm
00480a84  10 40 2d e9                                      push {r4, lr}
00480a88  68 c0 91 e5                                      ldr ip, [r1, #0x68]
00480a8c  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00480a90  07 27 a0 e3                                      mov r2, #0x1c0000
00480a94  10 c0 9c e5                                      ldr ip, [ip, #0x10]
00480a98  08 20 82 e2                                      add r2, r2, #8
00480a9c  03 30 8f e0                                      add r3, pc, r3
00480aa0  02 00 5c e1                                      cmp ip, r2
00480aa4  08 d0 4d e2                                      sub sp, sp, #8
00480aa8  00 40 a0 e1                                      mov r4, r0
00480aac  10 00 00 0a                                      beq #0x480af4
00480ab0  00 00 5c e3                                      cmp ip, #0
00480ab4  07 00 00 aa                                      bge #0x480ad8
00480ab8  44 10 9f e5                                      ldr r1, [pc, #0x44]
00480abc  01 10 8f e0                                      add r1, pc, r1
00480ac0  04 00 a0 e1                                      mov r0, r4
00480ac4  04 20 8d e2                                      add r2, sp, #4
00480ac8  87 4d fa eb                                      bl #0x3140ec
00480acc  04 00 a0 e1                                      mov r0, r4
00480ad0  08 d0 8d e2                                      add sp, sp, #8
00480ad4  10 80 bd e8                                      pop {r4, pc}
00480ad8  28 20 9f e5                                      ldr r2, [pc, #0x28]
00480adc  0c 10 a0 e1                                      mov r1, ip
00480ae0  02 30 93 e7                                      ldr r3, [r3, r2]
00480ae4  34 00 93 e5                                      ldr r0, [r3, #0x34]
00480ae8  fb 20 02 eb                                      bl #0x508edc
00480aec  00 10 a0 e1                                      mov r1, r0
00480af0  f2 ff ff ea                                      b #0x480ac0
00480af4  2c 10 81 e2                                      add r1, r1, #0x2c
00480af8  85 f7 ff eb                                      bl #0x47e914
00480afc  f2 ff ff ea                                      b #0x480acc
; mapping-symbol data/literal pool
00480b00  f4 3f 51 00 9c d4 44 00 f4 37 00 00              .byte 0xf4, 0x3f, 0x51, 0x00, 0x9c, 0xd4, 0x44, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00480c78, declared_size=1240, range_size=1240, mode=arm
; class-group: Quest
; alias: _ZN5Quest8SetStateEi
; demangled: Quest::SetState(int)
; decoder-mode: arm
00480c78  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00480c7c  a8 44 9f e5                                      ldr r4, [pc, #0x4a8]
00480c80  a8 64 9f e5                                      ldr r6, [pc, #0x4a8]
00480c84  f8 d0 4d e2                                      sub sp, sp, #0xf8
00480c88  04 40 8f e0                                      add r4, pc, r4
00480c8c  06 30 94 e7                                      ldr r3, [r4, r6]
00480c90  0d 00 51 e3                                      cmp r1, #0xd
00480c94  01 70 a0 e1                                      mov r7, r1
00480c98  00 30 93 e5                                      ldr r3, [r3]
00480c9c  00 50 a0 e1                                      mov r5, r0
00480ca0  f4 30 8d e5                                      str r3, [sp, #0xf4]
00480ca4  59 00 00 8a                                      bhi #0x480e10
00480ca8  00 80 90 e5                                      ldr r8, [r0]
00480cac  00 10 85 e5                                      str r1, [r5]
00480cb0  01 00 58 e1                                      cmp r8, r1
00480cb4  5c 00 00 0a                                      beq #0x480e2c
00480cb8  74 a4 9f e5                                      ldr sl, [pc, #0x474]
00480cbc  06 00 58 e3                                      cmp r8, #6
00480cc0  0a 30 94 e7                                      ldr r3, [r4, sl]
00480cc4  70 30 93 e5                                      ldr r3, [r3, #0x70]
00480cc8  04 30 85 e5                                      str r3, [r5, #4]
00480ccc  5f 00 00 0a                                      beq #0x480e50
00480cd0  09 00 58 e3                                      cmp r8, #9
00480cd4  6e 00 00 0a                                      beq #0x480e94
00480cd8  03 00 58 e3                                      cmp r8, #3
00480cdc  66 00 00 0a                                      beq #0x480e7c
00480ce0  05 00 a0 e1                                      mov r0, r5
00480ce4  07 10 a0 e1                                      mov r1, r7
00480ce8  87 fa ff eb                                      bl #0x47f70c
00480cec  00 00 50 e3                                      cmp r0, #0
00480cf0  5d 00 00 1a                                      bne #0x480e6c
00480cf4  00 30 95 e5                                      ldr r3, [r5]
00480cf8  01 30 43 e2                                      sub r3, r3, #1
00480cfc  0c 00 53 e3                                      cmp r3, #0xc
00480d00  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00480d04  41 00 00 ea                                      b #0x480e10
00480d08  b7 00 00 ea                                      b #0x480fec
00480d0c  ba 00 00 ea                                      b #0x480ffc
00480d10  c5 00 00 ea                                      b #0x48102c
00480d14  68 00 00 ea                                      b #0x480ebc
00480d18  70 00 00 ea                                      b #0x480ee0
00480d1c  06 00 00 ea                                      b #0x480d3c
00480d20  77 00 00 ea                                      b #0x480f04
00480d24  83 00 00 ea                                      b #0x480f38
00480d28  8e 00 00 ea                                      b #0x480f68
00480d2c  a1 00 00 ea                                      b #0x480fb8
00480d30  a9 00 00 ea                                      b #0x480fdc
00480d34  c7 00 00 ea                                      b #0x481058
00480d38  5b 00 00 ea                                      b #0x480eac
00480d3c  00 10 a0 e3                                      mov r1, #0
00480d40  05 00 a0 e1                                      mov r0, r5
00480d44  75 fc ff eb                                      bl #0x47ff20
00480d48  2c 00 85 e2                                      add r0, r5, #0x2c
00480d4c  30 e6 ff eb                                      bl #0x47a614
00480d50  0a 70 94 e7                                      ldr r7, [r4, sl]
00480d54  dc 13 9f e5                                      ldr r1, [pc, #0x3dc]
00480d58  dc 23 9f e5                                      ldr r2, [pc, #0x3dc]
00480d5c  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00480d60  01 10 8f e0                                      add r1, pc, r1
00480d64  02 20 8f e0                                      add r2, pc, r2
00480d68  9b 0f 01 eb                                      bl #0x4c4bdc
00480d6c  cc 13 9f e5                                      ldr r1, [pc, #0x3cc]
00480d70  cc 23 9f e5                                      ldr r2, [pc, #0x3cc]
00480d74  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480d78  00 a0 a0 e1                                      mov sl, r0
00480d7c  01 10 8f e0                                      add r1, pc, r1
00480d80  02 20 8f e0                                      add r2, pc, r2
00480d84  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
00480d88  08 90 93 e5                                      ldr sb, [r3, #8]
00480d8c  92 0f 01 eb                                      bl #0x4c4bdc
00480d90  60 80 8d e2                                      add r8, sp, #0x60
00480d94  00 30 a0 e1                                      mov r3, r0
00480d98  0a 10 a0 e1                                      mov r1, sl
00480d9c  09 20 a0 e1                                      mov r2, sb
00480da0  00 a0 e0 e3                                      mvn sl, #0
00480da4  08 00 a0 e1                                      mov r0, r8
00480da8  00 a0 8d e5                                      str sl, [sp]
00480dac  a0 cd fe eb                                      bl #0x434434
00480db0  08 00 a0 e1                                      mov r0, r8
00480db4  5c ff ff eb                                      bl #0x480b2c
00480db8  08 00 a0 e1                                      mov r0, r8
00480dbc  3b 7c fa eb                                      bl #0x31feb0
00480dc0  00 10 a0 e3                                      mov r1, #0
00480dc4  01 20 a0 e3                                      mov r2, #1
00480dc8  40 00 97 e5                                      ldr r0, [r7, #0x40]
00480dcc  a9 b5 fb eb                                      bl #0x36e478
00480dd0  08 10 95 e5                                      ldr r1, [r5, #8]
00480dd4  60 06 90 e5                                      ldr r0, [r0, #0x660]
00480dd8  0a 20 a0 e1                                      mov r2, sl
00480ddc  8e ec fc eb                                      bl #0x3bc01c
00480de0  05 00 a0 e1                                      mov r0, r5
00480de4  c3 fa ff eb                                      bl #0x47f8f8
00480de8  00 00 50 e3                                      cmp r0, #0
00480dec  07 00 00 0a                                      beq #0x480e10
00480df0  00 10 a0 e3                                      mov r1, #0
00480df4  01 20 a0 e3                                      mov r2, #1
00480df8  40 00 97 e5                                      ldr r0, [r7, #0x40]
00480dfc  9d b5 fb eb                                      bl #0x36e478
00480e00  08 10 95 e5                                      ldr r1, [r5, #8]
00480e04  60 06 90 e5                                      ldr r0, [r0, #0x660]
00480e08  0a 20 a0 e1                                      mov r2, sl
00480e0c  6a ec fc eb                                      bl #0x3bbfbc
00480e10  06 30 94 e7                                      ldr r3, [r4, r6]
00480e14  f4 20 9d e5                                      ldr r2, [sp, #0xf4]
00480e18  00 30 93 e5                                      ldr r3, [r3]
00480e1c  03 00 52 e1                                      cmp r2, r3
00480e20  c0 00 00 1a                                      bne #0x481128
00480e24  f8 d0 8d e2                                      add sp, sp, #0xf8
00480e28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00480e2c  64 30 d0 e5                                      ldrb r3, [r0, #0x64]
00480e30  00 00 53 e3                                      cmp r3, #0
00480e34  f5 ff ff 0a                                      beq #0x480e10
00480e38  f4 a2 9f e5                                      ldr sl, [pc, #0x2f4]
00480e3c  06 00 58 e3                                      cmp r8, #6
00480e40  0a 30 94 e7                                      ldr r3, [r4, sl]
00480e44  70 30 93 e5                                      ldr r3, [r3, #0x70]
00480e48  04 30 85 e5                                      str r3, [r5, #4]
00480e4c  9f ff ff 1a                                      bne #0x480cd0
00480e50  2c 00 85 e2                                      add r0, r5, #0x2c
00480e54  e5 e5 ff eb                                      bl #0x47a5f0
00480e58  05 00 a0 e1                                      mov r0, r5
00480e5c  07 10 a0 e1                                      mov r1, r7
00480e60  29 fa ff eb                                      bl #0x47f70c
00480e64  00 00 50 e3                                      cmp r0, #0
00480e68  a1 ff ff 0a                                      beq #0x480cf4
00480e6c  07 10 a0 e1                                      mov r1, r7
00480e70  05 00 a0 e1                                      mov r0, r5
00480e74  3e fb ff eb                                      bl #0x47fb74
00480e78  9d ff ff ea                                      b #0x480cf4
00480e7c  18 30 95 e5                                      ldr r3, [r5, #0x18]
00480e80  03 00 a0 e1                                      mov r0, r3
00480e84  00 30 93 e5                                      ldr r3, [r3]
00480e88  0f e0 a0 e1                                      mov lr, pc
00480e8c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00480e90  92 ff ff ea                                      b #0x480ce0
00480e94  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00480e98  03 00 a0 e1                                      mov r0, r3
00480e9c  00 30 93 e5                                      ldr r3, [r3]
00480ea0  0f e0 a0 e1                                      mov lr, pc
00480ea4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00480ea8  8c ff ff ea                                      b #0x480ce0
00480eac  05 00 a0 e1                                      mov r0, r5
00480eb0  07 10 a0 e3                                      mov r1, #7
00480eb4  19 fc ff eb                                      bl #0x47ff20
00480eb8  d4 ff ff ea                                      b #0x480e10
00480ebc  18 30 95 e5                                      ldr r3, [r5, #0x18]
00480ec0  03 00 a0 e1                                      mov r0, r3
00480ec4  00 30 93 e5                                      ldr r3, [r3]
00480ec8  0f e0 a0 e1                                      mov lr, pc
00480ecc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00480ed0  05 00 a0 e1                                      mov r0, r5
00480ed4  06 10 a0 e3                                      mov r1, #6
00480ed8  10 fc ff eb                                      bl #0x47ff20
00480edc  cb ff ff ea                                      b #0x480e10
00480ee0  68 30 95 e5                                      ldr r3, [r5, #0x68]
00480ee4  2c 00 85 e2                                      add r0, r5, #0x2c
00480ee8  05 20 a0 e3                                      mov r2, #5
00480eec  14 11 93 e5                                      ldr r1, [r3, #0x114]
00480ef0  7d e5 ff eb                                      bl #0x47a4ec
00480ef4  05 00 a0 e1                                      mov r0, r5
00480ef8  0a 10 a0 e3                                      mov r1, #0xa
00480efc  07 fc ff eb                                      bl #0x47ff20
00480f00  c2 ff ff ea                                      b #0x480e10
00480f04  0a 30 94 e7                                      ldr r3, [r4, sl]
00480f08  00 10 a0 e3                                      mov r1, #0
00480f0c  01 20 a0 e3                                      mov r2, #1
00480f10  40 00 93 e5                                      ldr r0, [r3, #0x40]
00480f14  57 b5 fb eb                                      bl #0x36e478
00480f18  00 10 e0 e3                                      mvn r1, #0
00480f1c  01 20 a0 e1                                      mov r2, r1
00480f20  60 06 90 e5                                      ldr r0, [r0, #0x660]
00480f24  3c ec fc eb                                      bl #0x3bc01c
00480f28  05 00 a0 e1                                      mov r0, r5
00480f2c  05 10 a0 e3                                      mov r1, #5
00480f30  fa fb ff eb                                      bl #0x47ff20
00480f34  b5 ff ff ea                                      b #0x480e10
00480f38  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00480f3c  68 10 95 e5                                      ldr r1, [r5, #0x68]
00480f40  08 20 a0 e3                                      mov r2, #8
00480f44  03 00 a0 e1                                      mov r0, r3
00480f48  14 11 91 e5                                      ldr r1, [r1, #0x114]
00480f4c  00 30 93 e5                                      ldr r3, [r3]
00480f50  0f e0 a0 e1                                      mov lr, pc
00480f54  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00480f58  05 00 a0 e1                                      mov r0, r5
00480f5c  0d 10 a0 e3                                      mov r1, #0xd
00480f60  ee fb ff eb                                      bl #0x47ff20
00480f64  a9 ff ff ea                                      b #0x480e10
00480f68  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00480f6c  03 00 a0 e1                                      mov r0, r3
00480f70  00 30 93 e5                                      ldr r3, [r3]
00480f74  0f e0 a0 e1                                      mov lr, pc
00480f78  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00480f7c  2c 00 85 e2                                      add r0, r5, #0x2c
00480f80  91 e5 ff eb                                      bl #0x47a5cc
00480f84  05 00 a0 e1                                      mov r0, r5
00480f88  03 10 a0 e3                                      mov r1, #3
00480f8c  e3 fb ff eb                                      bl #0x47ff20
00480f90  0a 30 94 e7                                      ldr r3, [r4, sl]
00480f94  00 10 a0 e3                                      mov r1, #0
00480f98  01 20 a0 e3                                      mov r2, #1
00480f9c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00480fa0  34 b5 fb eb                                      bl #0x36e478
00480fa4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00480fa8  60 06 90 e5                                      ldr r0, [r0, #0x660]
00480fac  00 20 e0 e3                                      mvn r2, #0
00480fb0  e2 eb fc eb                                      bl #0x3bbf40
00480fb4  95 ff ff ea                                      b #0x480e10
00480fb8  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00480fbc  03 00 a0 e1                                      mov r0, r3
00480fc0  00 30 93 e5                                      ldr r3, [r3]
00480fc4  0f e0 a0 e1                                      mov lr, pc
00480fc8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00480fcc  05 00 a0 e1                                      mov r0, r5
00480fd0  08 10 a0 e3                                      mov r1, #8
00480fd4  d1 fb ff eb                                      bl #0x47ff20
00480fd8  8c ff ff ea                                      b #0x480e10
00480fdc  05 00 a0 e1                                      mov r0, r5
00480fe0  0c 10 a0 e3                                      mov r1, #0xc
00480fe4  cd fb ff eb                                      bl #0x47ff20
00480fe8  88 ff ff ea                                      b #0x480e10
00480fec  05 00 a0 e1                                      mov r0, r5
00480ff0  09 10 a0 e3                                      mov r1, #9
00480ff4  c9 fb ff eb                                      bl #0x47ff20
00480ff8  84 ff ff ea                                      b #0x480e10
00480ffc  18 30 95 e5                                      ldr r3, [r5, #0x18]
00481000  68 10 95 e5                                      ldr r1, [r5, #0x68]
00481004  02 20 a0 e3                                      mov r2, #2
00481008  03 00 a0 e1                                      mov r0, r3
0048100c  14 11 91 e5                                      ldr r1, [r1, #0x114]
00481010  00 30 93 e5                                      ldr r3, [r3]
00481014  0f e0 a0 e1                                      mov lr, pc
00481018  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0048101c  05 00 a0 e1                                      mov r0, r5
00481020  0b 10 a0 e3                                      mov r1, #0xb
00481024  bd fb ff eb                                      bl #0x47ff20
00481028  78 ff ff ea                                      b #0x480e10
0048102c  18 30 95 e5                                      ldr r3, [r5, #0x18]
00481030  03 00 a0 e1                                      mov r0, r3
00481034  00 30 93 e5                                      ldr r3, [r3]
00481038  0f e0 a0 e1                                      mov lr, pc
0048103c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00481040  06 00 58 e3                                      cmp r8, #6
00481044  05 00 a0 e1                                      mov r0, r5
00481048  04 10 a0 03                                      moveq r1, #4
0048104c  01 10 a0 13                                      movne r1, #1
00481050  b2 fb ff eb                                      bl #0x47ff20
00481054  6d ff ff ea                                      b #0x480e10
00481058  05 00 a0 e1                                      mov r0, r5
0048105c  02 10 a0 e3                                      mov r1, #2
00481060  ae fb ff eb                                      bl #0x47ff20
00481064  38 00 85 e2                                      add r0, r5, #0x38
00481068  4c 09 00 eb                                      bl #0x4835a0
0048106c  68 30 95 e5                                      ldr r3, [r5, #0x68]
00481070  0a 90 94 e7                                      ldr sb, [r4, sl]
00481074  c4 a0 8d e2                                      add sl, sp, #0xc4
00481078  08 10 93 e5                                      ldr r1, [r3, #8]
0048107c  34 00 99 e5                                      ldr r0, [sb, #0x34]
00481080  95 1f 02 eb                                      bl #0x508edc
00481084  dc 70 8d e2                                      add r7, sp, #0xdc
00481088  00 10 a0 e1                                      mov r1, r0
0048108c  10 20 8d e2                                      add r2, sp, #0x10
00481090  0a 00 a0 e1                                      mov r0, sl
00481094  14 4c fa eb                                      bl #0x3140ec
00481098  ac 80 8d e2                                      add r8, sp, #0xac
0048109c  50 20 95 e5                                      ldr r2, [r5, #0x50]
004810a0  54 10 95 e5                                      ldr r1, [r5, #0x54]
004810a4  07 00 a0 e1                                      mov r0, r7
004810a8  ec 70 8d e5                                      str r7, [sp, #0xec]
004810ac  f0 70 8d e5                                      str r7, [sp, #0xf0]
004810b0  8c 41 fa eb                                      bl #0x3116e8
004810b4  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
004810b8  0c 20 8d e2                                      add r2, sp, #0xc
004810bc  08 00 a0 e1                                      mov r0, r8
004810c0  09 4c fa eb                                      bl #0x3140ec
004810c4  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004810c8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
004810cc  2c 00 99 e5                                      ldr r0, [sb, #0x2c]
004810d0  01 10 8f e0                                      add r1, pc, r1
004810d4  02 20 8f e0                                      add r2, pc, r2
004810d8  bf 0e 01 eb                                      bl #0x4c4bdc
004810dc  14 50 8d e2                                      add r5, sp, #0x14
004810e0  00 30 a0 e1                                      mov r3, r0
004810e4  01 c0 a0 e3                                      mov ip, #1
004810e8  0a 10 a0 e1                                      mov r1, sl
004810ec  08 20 a0 e1                                      mov r2, r8
004810f0  05 00 a0 e1                                      mov r0, r5
004810f4  00 c0 8d e5                                      str ip, [sp]
004810f8  6a cb fe eb                                      bl #0x433ea8
004810fc  05 00 a0 e1                                      mov r0, r5
00481100  89 fe ff eb                                      bl #0x480b2c
00481104  05 00 a0 e1                                      mov r0, r5
00481108  68 7b fa eb                                      bl #0x31feb0
0048110c  08 00 a0 e1                                      mov r0, r8
00481110  4f 5c fa eb                                      bl #0x318254
00481114  07 00 a0 e1                                      mov r0, r7
00481118  4d 5c fa eb                                      bl #0x318254
0048111c  0a 00 a0 e1                                      mov r0, sl
00481120  4b 5c fa eb                                      bl #0x318254
00481124  39 ff ff ea                                      b #0x480e10
00481128  78 34 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048112c  08 3e 51 00 ac 40 00 00 f4 37 00 00 c8 de 43 00  .byte 0x08, 0x3e, 0x51, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc8, 0xde, 0x43, 0x00
0048113c  94 d5 44 00 ac be 44 00 90 d5 44 00 58 bb 44 00  .byte 0x94, 0xd5, 0x44, 0x00, 0xac, 0xbe, 0x44, 0x00, 0x90, 0xd5, 0x44, 0x00, 0x58, 0xbb, 0x44, 0x00
0048114c  4c d2 44 00                                      .byte 0x4c, 0xd2, 0x44, 0x00

; FUNCTION 0x00481150, declared_size=8, range_size=8, mode=arm
; class-group: Quest
; alias: _ZN5Quest23ReinitStateAfterLoadingEv
; demangled: Quest::ReinitStateAfterLoading()
; decoder-mode: arm
00481150  00 10 90 e5                                      ldr r1, [r0]
00481154  c7 fe ff ea                                      b #0x480c78

; FUNCTION 0x00481158, declared_size=44, range_size=44, mode=arm
; class-group: Quest
; alias: _ZN5Quest12DBG_IncStateEv
; demangled: Quest::DBG_IncState()
; decoder-mode: arm
00481158  00 30 90 e5                                      ldr r3, [r0]
0048115c  93 24 02 e3                                      movw r2, #0x2493
00481160  49 22 49 e3                                      movt r2, #0x9249
00481164  01 30 83 e2                                      add r3, r3, #1
00481168  92 13 c2 e0                                      smull r1, r2, r2, r3
0048116c  c3 1f a0 e1                                      asr r1, r3, #0x1f
00481170  03 20 82 e0                                      add r2, r2, r3
00481174  c2 21 61 e0                                      rsb r2, r1, r2, asr #3
00481178  0e 10 a0 e3                                      mov r1, #0xe
0048117c  91 32 61 e0                                      mls r1, r1, r2, r3
00481180  bc fe ff ea                                      b #0x480c78

; FUNCTION 0x00481184, declared_size=108, range_size=108, mode=arm
; class-group: Quest
; alias: _ZN5Quest15UpdatePreClosedEv
; demangled: Quest::UpdatePreClosed()
; decoder-mode: arm
00481184  10 40 2d e9                                      push {r4, lr}
00481188  0c 10 a0 e3                                      mov r1, #0xc
0048118c  00 40 a0 e1                                      mov r4, r0
00481190  13 fb ff eb                                      bl #0x47fde4
00481194  44 30 9f e5                                      ldr r3, [pc, #0x44]
00481198  00 00 50 e3                                      cmp r0, #0
0048119c  03 30 8f e0                                      add r3, pc, r3
004811a0  00 00 00 0a                                      beq #0x4811a8
004811a4  10 80 bd e8                                      pop {r4, pc}
004811a8  34 20 9f e5                                      ldr r2, [pc, #0x34]
004811ac  34 10 9f e5                                      ldr r1, [pc, #0x34]
004811b0  02 30 93 e7                                      ldr r3, [r3, r2]
004811b4  01 20 a0 e3                                      mov r2, #1
004811b8  5d 20 c4 e5                                      strb r2, [r4, #0x5d]
004811bc  28 20 9f e5                                      ldr r2, [pc, #0x28]
004811c0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004811c4  01 10 8f e0                                      add r1, pc, r1
004811c8  02 20 8f e0                                      add r2, pc, r2
004811cc  82 0e 01 eb                                      bl #0x4c4bdc
004811d0  00 10 a0 e1                                      mov r1, r0
004811d4  04 00 a0 e1                                      mov r0, r4
004811d8  10 40 bd e8                                      pop {r4, lr}
004811dc  a5 fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
004811e0  f4 38 51 00 f4 37 00 00 14 e1 43 00 b0 ab 44 00  .byte 0xf4, 0x38, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x14, 0xe1, 0x43, 0x00, 0xb0, 0xab, 0x44, 0x00

; FUNCTION 0x004811f0, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest19UpdatePostCompletedEv
; demangled: Quest::UpdatePostCompleted()
; decoder-mode: arm
004811f0  10 40 2d e9                                      push {r4, lr}
004811f4  08 10 a0 e3                                      mov r1, #8
004811f8  00 40 a0 e1                                      mov r4, r0
004811fc  f8 fa ff eb                                      bl #0x47fde4
00481200  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00481204  00 00 50 e3                                      cmp r0, #0
00481208  03 30 8f e0                                      add r3, pc, r3
0048120c  00 00 00 0a                                      beq #0x481214
00481210  10 80 bd e8                                      pop {r4, pc}
00481214  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00481218  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0048121c  02 30 93 e7                                      ldr r3, [r3, r2]
00481220  28 20 9f e5                                      ldr r2, [pc, #0x28]
00481224  01 10 8f e0                                      add r1, pc, r1
00481228  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
0048122c  02 20 8f e0                                      add r2, pc, r2
00481230  69 0e 01 eb                                      bl #0x4c4bdc
00481234  00 10 a0 e1                                      mov r1, r0
00481238  04 00 a0 e1                                      mov r0, r4
0048123c  10 40 bd e8                                      pop {r4, lr}
00481240  8c fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
00481244  88 38 51 00 f4 37 00 00 b4 e0 43 00 0c d1 44 00  .byte 0x88, 0x38, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xb4, 0xe0, 0x43, 0x00, 0x0c, 0xd1, 0x44, 0x00

; FUNCTION 0x00481254, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest18UpdatePreCompletedEv
; demangled: Quest::UpdatePreCompleted()
; decoder-mode: arm
00481254  10 40 2d e9                                      push {r4, lr}
00481258  0d 10 a0 e3                                      mov r1, #0xd
0048125c  00 40 a0 e1                                      mov r4, r0
00481260  df fa ff eb                                      bl #0x47fde4
00481264  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00481268  00 00 50 e3                                      cmp r0, #0
0048126c  03 30 8f e0                                      add r3, pc, r3
00481270  00 00 00 0a                                      beq #0x481278
00481274  10 80 bd e8                                      pop {r4, pc}
00481278  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048127c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00481280  02 30 93 e7                                      ldr r3, [r3, r2]
00481284  28 20 9f e5                                      ldr r2, [pc, #0x28]
00481288  01 10 8f e0                                      add r1, pc, r1
0048128c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481290  02 20 8f e0                                      add r2, pc, r2
00481294  50 0e 01 eb                                      bl #0x4c4bdc
00481298  00 10 a0 e1                                      mov r1, r0
0048129c  04 00 a0 e1                                      mov r0, r4
004812a0  10 40 bd e8                                      pop {r4, lr}
004812a4  73 fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
004812a8  24 38 51 00 f4 37 00 00 50 e0 43 00 a0 c8 44 00  .byte 0x24, 0x38, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x50, 0xe0, 0x43, 0x00, 0xa0, 0xc8, 0x44, 0x00

; FUNCTION 0x004812b8, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest16UpdatePostActiveEv
; demangled: Quest::UpdatePostActive()
; decoder-mode: arm
004812b8  10 40 2d e9                                      push {r4, lr}
004812bc  08 10 a0 e3                                      mov r1, #8
004812c0  00 40 a0 e1                                      mov r4, r0
004812c4  c6 fa ff eb                                      bl #0x47fde4
004812c8  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004812cc  00 00 50 e3                                      cmp r0, #0
004812d0  03 30 8f e0                                      add r3, pc, r3
004812d4  00 00 00 0a                                      beq #0x4812dc
004812d8  10 80 bd e8                                      pop {r4, pc}
004812dc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004812e0  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004812e4  02 30 93 e7                                      ldr r3, [r3, r2]
004812e8  28 20 9f e5                                      ldr r2, [pc, #0x28]
004812ec  01 10 8f e0                                      add r1, pc, r1
004812f0  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004812f4  02 20 8f e0                                      add r2, pc, r2
004812f8  37 0e 01 eb                                      bl #0x4c4bdc
004812fc  00 10 a0 e1                                      mov r1, r0
00481300  04 00 a0 e1                                      mov r0, r4
00481304  10 40 bd e8                                      pop {r4, lr}
00481308  5a fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
0048130c  c0 37 51 00 f4 37 00 00 ec df 43 00 54 d0 44 00  .byte 0xc0, 0x37, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xec, 0xdf, 0x43, 0x00, 0x54, 0xd0, 0x44, 0x00

; FUNCTION 0x0048131c, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest19UpdatePostAvailableEv
; demangled: Quest::UpdatePostAvailable()
; decoder-mode: arm
0048131c  10 40 2d e9                                      push {r4, lr}
00481320  06 10 a0 e3                                      mov r1, #6
00481324  00 40 a0 e1                                      mov r4, r0
00481328  ad fa ff eb                                      bl #0x47fde4
0048132c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00481330  00 00 50 e3                                      cmp r0, #0
00481334  03 30 8f e0                                      add r3, pc, r3
00481338  00 00 00 0a                                      beq #0x481340
0048133c  10 80 bd e8                                      pop {r4, pc}
00481340  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00481344  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00481348  02 30 93 e7                                      ldr r3, [r3, r2]
0048134c  28 20 9f e5                                      ldr r2, [pc, #0x28]
00481350  01 10 8f e0                                      add r1, pc, r1
00481354  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481358  02 20 8f e0                                      add r2, pc, r2
0048135c  1e 0e 01 eb                                      bl #0x4c4bdc
00481360  00 10 a0 e1                                      mov r1, r0
00481364  04 00 a0 e1                                      mov r0, r4
00481368  10 40 bd e8                                      pop {r4, lr}
0048136c  41 fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
00481370  5c 37 51 00 f4 37 00 00 88 df 43 00 00 d0 44 00  .byte 0x5c, 0x37, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x88, 0xdf, 0x43, 0x00, 0x00, 0xd0, 0x44, 0x00

; FUNCTION 0x00481380, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest18UpdatePreAvailableEv
; demangled: Quest::UpdatePreAvailable()
; decoder-mode: arm
00481380  10 40 2d e9                                      push {r4, lr}
00481384  0b 10 a0 e3                                      mov r1, #0xb
00481388  00 40 a0 e1                                      mov r4, r0
0048138c  94 fa ff eb                                      bl #0x47fde4
00481390  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00481394  00 00 50 e3                                      cmp r0, #0
00481398  03 30 8f e0                                      add r3, pc, r3
0048139c  00 00 00 0a                                      beq #0x4813a4
004813a0  10 80 bd e8                                      pop {r4, pc}
004813a4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004813a8  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004813ac  02 30 93 e7                                      ldr r3, [r3, r2]
004813b0  28 20 9f e5                                      ldr r2, [pc, #0x28]
004813b4  01 10 8f e0                                      add r1, pc, r1
004813b8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004813bc  02 20 8f e0                                      add r2, pc, r2
004813c0  05 0e 01 eb                                      bl #0x4c4bdc
004813c4  00 10 a0 e1                                      mov r1, r0
004813c8  04 00 a0 e1                                      mov r0, r4
004813cc  10 40 bd e8                                      pop {r4, lr}
004813d0  28 fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
004813d4  f8 36 51 00 f4 37 00 00 24 df 43 00 ac cf 44 00  .byte 0xf8, 0x36, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x24, 0xdf, 0x43, 0x00, 0xac, 0xcf, 0x44, 0x00

; FUNCTION 0x004813e4, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest16UpdatePostLockedEv
; demangled: Quest::UpdatePostLocked()
; decoder-mode: arm
004813e4  10 40 2d e9                                      push {r4, lr}
004813e8  09 10 a0 e3                                      mov r1, #9
004813ec  00 40 a0 e1                                      mov r4, r0
004813f0  7b fa ff eb                                      bl #0x47fde4
004813f4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004813f8  00 00 50 e3                                      cmp r0, #0
004813fc  03 30 8f e0                                      add r3, pc, r3
00481400  00 00 00 0a                                      beq #0x481408
00481404  10 80 bd e8                                      pop {r4, pc}
00481408  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0048140c  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00481410  02 30 93 e7                                      ldr r3, [r3, r2]
00481414  28 20 9f e5                                      ldr r2, [pc, #0x28]
00481418  01 10 8f e0                                      add r1, pc, r1
0048141c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481420  02 20 8f e0                                      add r2, pc, r2
00481424  ec 0d 01 eb                                      bl #0x4c4bdc
00481428  00 10 a0 e1                                      mov r1, r0
0048142c  04 00 a0 e1                                      mov r0, r4
00481430  10 40 bd e8                                      pop {r4, lr}
00481434  0f fe ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
00481438  94 36 51 00 f4 37 00 00 c0 de 43 00 58 cf 44 00  .byte 0x94, 0x36, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0xde, 0x43, 0x00, 0x58, 0xcf, 0x44, 0x00

; FUNCTION 0x00481448, declared_size=144, range_size=144, mode=arm
; class-group: Quest
; alias: _ZN5Quest12UpdateClosedEv
; demangled: Quest::UpdateClosed()
; decoder-mode: arm
00481448  70 40 2d e9                                      push {r4, r5, r6, lr}
0048144c  02 10 a0 e3                                      mov r1, #2
00481450  00 40 a0 e1                                      mov r4, r0
00481454  62 fa ff eb                                      bl #0x47fde4
00481458  68 30 9f e5                                      ldr r3, [pc, #0x68]
0048145c  00 00 50 e3                                      cmp r0, #0
00481460  03 30 8f e0                                      add r3, pc, r3
00481464  00 00 00 0a                                      beq #0x48146c
00481468  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048146c  58 20 9f e5                                      ldr r2, [pc, #0x58]
00481470  58 10 9f e5                                      ldr r1, [pc, #0x58]
00481474  02 50 93 e7                                      ldr r5, [r3, r2]
00481478  54 20 9f e5                                      ldr r2, [pc, #0x54]
0048147c  01 10 8f e0                                      add r1, pc, r1
00481480  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00481484  02 20 8f e0                                      add r2, pc, r2
00481488  d3 0d 01 eb                                      bl #0x4c4bdc
0048148c  00 10 a0 e1                                      mov r1, r0
00481490  04 00 a0 e1                                      mov r0, r4
00481494  f7 fd ff eb                                      bl #0x480c78
00481498  60 10 94 e5                                      ldr r1, [r4, #0x60]
0048149c  01 30 a0 e3                                      mov r3, #1
004814a0  5d 30 c4 e5                                      strb r3, [r4, #0x5d]
004814a4  00 00 51 e3                                      cmp r1, #0
004814a8  ee ff ff 0a                                      beq #0x481468
004814ac  40 00 95 e5                                      ldr r0, [r5, #0x40]
004814b0  d1 b6 fb eb                                      bl #0x36effc
004814b4  00 00 50 e3                                      cmp r0, #0
004814b8  ea ff ff 0a                                      beq #0x481468
004814bc  60 00 94 e5                                      ldr r0, [r4, #0x60]
004814c0  70 40 bd e8                                      pop {r4, r5, r6, lr}
004814c4  c6 8a fc ea                                      b #0x3a3fe4
; mapping-symbol data/literal pool
004814c8  30 36 51 00 f4 37 00 00 5c de 43 00 04 cf 44 00  .byte 0x30, 0x36, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x5c, 0xde, 0x43, 0x00, 0x04, 0xcf, 0x44, 0x00

; FUNCTION 0x004814d8, declared_size=252, range_size=252, mode=arm
; class-group: Quest
; alias: _ZN5Quest15UpdateCompletedEv
; demangled: Quest::UpdateCompleted()
; decoder-mode: arm
004814d8  70 40 2d e9                                      push {r4, r5, r6, lr}
004814dc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
004814e0  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
004814e4  00 50 a0 e1                                      mov r5, r0
004814e8  00 00 53 e3                                      cmp r3, #0
004814ec  04 40 8f e0                                      add r4, pc, r4
004814f0  02 00 00 0a                                      beq #0x481500
004814f4  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
004814f8  00 00 53 e3                                      cmp r3, #0
004814fc  00 00 00 1a                                      bne #0x481504
00481500  70 80 bd e8                                      pop {r4, r5, r6, pc}
00481504  03 10 a0 e3                                      mov r1, #3
00481508  35 fa ff eb                                      bl #0x47fde4
0048150c  00 00 50 e3                                      cmp r0, #0
00481510  fa ff ff 1a                                      bne #0x481500
00481514  05 00 a0 e1                                      mov r0, r5
00481518  0f fb ff eb                                      bl #0x48015c
0048151c  9c f0 0d eb                                      bl #0x7fd794
00481520  05 30 d0 e5                                      ldrb r3, [r0, #5]
00481524  00 00 53 e3                                      cmp r3, #0
00481528  0b 00 00 1a                                      bne #0x48155c
0048152c  94 30 9f e5                                      ldr r3, [pc, #0x94]
00481530  94 10 9f e5                                      ldr r1, [pc, #0x94]
00481534  94 20 9f e5                                      ldr r2, [pc, #0x94]
00481538  03 30 94 e7                                      ldr r3, [r4, r3]
0048153c  01 10 8f e0                                      add r1, pc, r1
00481540  02 20 8f e0                                      add r2, pc, r2
00481544  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481548  a3 0d 01 eb                                      bl #0x4c4bdc
0048154c  00 10 a0 e1                                      mov r1, r0
00481550  05 00 a0 e1                                      mov r0, r5
00481554  70 40 bd e8                                      pop {r4, r5, r6, lr}
00481558  c6 fd ff ea                                      b #0x480c78
0048155c  0c 60 95 e5                                      ldr r6, [r5, #0xc]
00481560  89 fe 0d eb                                      bl #0x800f8c
00481564  00 30 90 e5                                      ldr r3, [r0]
00481568  0f e0 a0 e1                                      mov lr, pc
0048156c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00481570  05 10 a0 e3                                      mov r1, #5
00481574  0c 5a 0e eb                                      bl #0x817dac
00481578  00 00 56 e1                                      cmp r6, r0
0048157c  ea ff ff da                                      ble #0x48152c
00481580  81 fe 0d eb                                      bl #0x800f8c
00481584  00 30 90 e5                                      ldr r3, [r0]
00481588  0f e0 a0 e1                                      mov lr, pc
0048158c  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00481590  05 10 a0 e3                                      mov r1, #5
00481594  00 30 90 e5                                      ldr r3, [r0]
00481598  0c 20 95 e5                                      ldr r2, [r5, #0xc]
0048159c  0f e0 a0 e1                                      mov lr, pc
004815a0  08 f0 93 e5                                      ldr pc, [r3, #8]
004815a4  3b 7e fa eb                                      bl #0x320e98
004815a8  34 30 90 e5                                      ldr r3, [r0, #0x34]
004815ac  03 30 43 e2                                      sub r3, r3, #3
004815b0  01 00 53 e3                                      cmp r3, #1
004815b4  dc ff ff 8a                                      bhi #0x48152c
004815b8  73 fe 0d eb                                      bl #0x800f8c
004815bc  21 78 0e eb                                      bl #0x81f648
004815c0  d9 ff ff ea                                      b #0x48152c
; mapping-symbol data/literal pool
004815c4  a4 35 51 00 f4 37 00 00 9c dd 43 00 58 ce 44 00  .byte 0xa4, 0x35, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x9c, 0xdd, 0x43, 0x00, 0x58, 0xce, 0x44, 0x00

; FUNCTION 0x004815d4, declared_size=180, range_size=180, mode=arm
; class-group: Quest
; alias: _ZN5Quest15UpdatePreActiveEv
; demangled: Quest::UpdatePreActive()
; decoder-mode: arm
004815d4  10 40 2d e9                                      push {r4, lr}
004815d8  0a 10 a0 e3                                      mov r1, #0xa
004815dc  00 40 a0 e1                                      mov r4, r0
004815e0  ff f9 ff eb                                      bl #0x47fde4
004815e4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
004815e8  00 00 50 e3                                      cmp r0, #0
004815ec  03 30 8f e0                                      add r3, pc, r3
004815f0  00 00 00 0a                                      beq #0x4815f8
004815f4  10 80 bd e8                                      pop {r4, pc}
004815f8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
004815fc  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
00481600  02 30 93 e7                                      ldr r3, [r3, r2]
00481604  78 20 9f e5                                      ldr r2, [pc, #0x78]
00481608  01 10 8f e0                                      add r1, pc, r1
0048160c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481610  02 20 8f e0                                      add r2, pc, r2
00481614  70 0d 01 eb                                      bl #0x4c4bdc
00481618  00 10 a0 e1                                      mov r1, r0
0048161c  04 00 a0 e1                                      mov r0, r4
00481620  94 fd ff eb                                      bl #0x480c78
00481624  5a f0 0d eb                                      bl #0x7fd794
00481628  05 30 d0 e5                                      ldrb r3, [r0, #5]
0048162c  00 00 53 e3                                      cmp r3, #0
00481630  ef ff ff 0a                                      beq #0x4815f4
00481634  54 fe 0d eb                                      bl #0x800f8c
00481638  00 30 90 e5                                      ldr r3, [r0]
0048163c  0f e0 a0 e1                                      mov lr, pc
00481640  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00481644  08 20 94 e5                                      ldr r2, [r4, #8]
00481648  00 30 90 e5                                      ldr r3, [r0]
0048164c  06 10 a0 e3                                      mov r1, #6
00481650  0f e0 a0 e1                                      mov lr, pc
00481654  08 f0 93 e5                                      ldr pc, [r3, #8]
00481658  0e 7e fa eb                                      bl #0x320e98
0048165c  34 30 90 e5                                      ldr r3, [r0, #0x34]
00481660  03 30 43 e2                                      sub r3, r3, #3
00481664  01 00 53 e3                                      cmp r3, #1
00481668  e1 ff ff 8a                                      bhi #0x4815f4
0048166c  46 fe 0d eb                                      bl #0x800f8c
00481670  10 40 bd e8                                      pop {r4, lr}
00481674  f3 77 0e ea                                      b #0x81f648
; mapping-symbol data/literal pool
00481678  a4 34 51 00 f4 37 00 00 d0 dc 43 00 d8 dc 43 00  .byte 0xa4, 0x34, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd0, 0xdc, 0x43, 0x00, 0xd8, 0xdc, 0x43, 0x00

; FUNCTION 0x00481688, declared_size=120, range_size=120, mode=arm
; class-group: Quest
; alias: _ZN5Quest12UpdateActiveEv
; demangled: Quest::UpdateActive()
; decoder-mode: arm
00481688  70 40 2d e9                                      push {r4, r5, r6, lr}
0048168c  00 40 a0 e1                                      mov r4, r0
00481690  2c 00 80 e2                                      add r0, r0, #0x2c
00481694  6a e3 ff eb                                      bl #0x47a444
00481698  50 50 9f e5                                      ldr r5, [pc, #0x50]
0048169c  00 00 50 e3                                      cmp r0, #0
004816a0  05 50 8f e0                                      add r5, pc, r5
004816a4  00 00 00 1a                                      bne #0x4816ac
004816a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
004816ac  04 00 a0 e1                                      mov r0, r4
004816b0  00 10 a0 e3                                      mov r1, #0
004816b4  ca f9 ff eb                                      bl #0x47fde4
004816b8  00 00 50 e3                                      cmp r0, #0
004816bc  f9 ff ff 1a                                      bne #0x4816a8
004816c0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004816c4  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004816c8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004816cc  03 30 95 e7                                      ldr r3, [r5, r3]
004816d0  01 10 8f e0                                      add r1, pc, r1
004816d4  02 20 8f e0                                      add r2, pc, r2
004816d8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004816dc  3e 0d 01 eb                                      bl #0x4c4bdc
004816e0  00 10 a0 e1                                      mov r1, r0
004816e4  04 00 a0 e1                                      mov r0, r4
004816e8  70 40 bd e8                                      pop {r4, r5, r6, lr}
004816ec  61 fd ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
004816f0  f0 33 51 00 f4 37 00 00 08 dc 43 00 d4 cc 44 00  .byte 0xf0, 0x33, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x08, 0xdc, 0x43, 0x00, 0xd4, 0xcc, 0x44, 0x00

; FUNCTION 0x00481700, declared_size=180, range_size=180, mode=arm
; class-group: Quest
; alias: _ZN5Quest15UpdateAvailableEv
; demangled: Quest::UpdateAvailable()
; decoder-mode: arm
00481700  70 40 2d e9                                      push {r4, r5, r6, lr}
00481704  00 40 a0 e1                                      mov r4, r0
00481708  20 00 80 e2                                      add r0, r0, #0x20
0048170c  fc db ff eb                                      bl #0x478704
00481710  84 50 9f e5                                      ldr r5, [pc, #0x84]
00481714  00 00 50 e3                                      cmp r0, #0
00481718  05 50 8f e0                                      add r5, pc, r5
0048171c  06 00 00 0a                                      beq #0x48173c
00481720  18 30 94 e5                                      ldr r3, [r4, #0x18]
00481724  00 00 53 e3                                      cmp r3, #0
00481728  02 00 00 0a                                      beq #0x481738
0048172c  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00481730  00 00 53 e3                                      cmp r3, #0
00481734  0c 00 00 1a                                      bne #0x48176c
00481738  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048173c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00481740  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00481744  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00481748  03 30 95 e7                                      ldr r3, [r5, r3]
0048174c  01 10 8f e0                                      add r1, pc, r1
00481750  02 20 8f e0                                      add r2, pc, r2
00481754  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481758  1f 0d 01 eb                                      bl #0x4c4bdc
0048175c  00 10 a0 e1                                      mov r1, r0
00481760  04 00 a0 e1                                      mov r0, r4
00481764  70 40 bd e8                                      pop {r4, r5, r6, lr}
00481768  42 fd ff ea                                      b #0x480c78
0048176c  04 00 a0 e1                                      mov r0, r4
00481770  01 10 a0 e3                                      mov r1, #1
00481774  9a f9 ff eb                                      bl #0x47fde4
00481778  00 00 50 e3                                      cmp r0, #0
0048177c  ed ff ff 1a                                      bne #0x481738
00481780  18 30 9f e5                                      ldr r3, [pc, #0x18]
00481784  20 10 9f e5                                      ldr r1, [pc, #0x20]
00481788  20 20 9f e5                                      ldr r2, [pc, #0x20]
0048178c  03 30 95 e7                                      ldr r3, [r5, r3]
00481790  01 10 8f e0                                      add r1, pc, r1
00481794  02 20 8f e0                                      add r2, pc, r2
00481798  ed ff ff ea                                      b #0x481754
; mapping-symbol data/literal pool
0048179c  78 33 51 00 f4 37 00 00 8c db 43 00 48 7c 44 00  .byte 0x78, 0x33, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x8c, 0xdb, 0x43, 0x00, 0x48, 0x7c, 0x44, 0x00
004817ac  48 db 43 00 24 cc 44 00                          .byte 0x48, 0xdb, 0x43, 0x00, 0x24, 0xcc, 0x44, 0x00

; FUNCTION 0x004817b4, declared_size=100, range_size=100, mode=arm
; class-group: Quest
; alias: _ZN5Quest12UpdateLockedEv
; demangled: Quest::UpdateLocked()
; decoder-mode: arm
004817b4  10 40 2d e9                                      push {r4, lr}
004817b8  00 40 a0 e1                                      mov r4, r0
004817bc  20 00 80 e2                                      add r0, r0, #0x20
004817c0  cf db ff eb                                      bl #0x478704
004817c4  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
004817c8  00 00 50 e3                                      cmp r0, #0
004817cc  03 30 8f e0                                      add r3, pc, r3
004817d0  00 00 00 1a                                      bne #0x4817d8
004817d4  10 80 bd e8                                      pop {r4, pc}
004817d8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004817dc  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
004817e0  02 30 93 e7                                      ldr r3, [r3, r2]
004817e4  28 20 9f e5                                      ldr r2, [pc, #0x28]
004817e8  01 10 8f e0                                      add r1, pc, r1
004817ec  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004817f0  02 20 8f e0                                      add r2, pc, r2
004817f4  f8 0c 01 eb                                      bl #0x4c4bdc
004817f8  00 10 a0 e1                                      mov r1, r0
004817fc  04 00 a0 e1                                      mov r0, r4
00481800  10 40 bd e8                                      pop {r4, lr}
00481804  1b fd ff ea                                      b #0x480c78
; mapping-symbol data/literal pool
00481808  c4 32 51 00 f4 37 00 00 f0 da 43 00 d8 cb 44 00  .byte 0xc4, 0x32, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf0, 0xda, 0x43, 0x00, 0xd8, 0xcb, 0x44, 0x00

; FUNCTION 0x00481818, declared_size=1012, range_size=1012, mode=arm
; class-group: Quest
; alias: _ZN5Quest6UpdateEv
; demangled: Quest::Update()
; decoder-mode: arm
00481818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0048181c  70 43 9f e5                                      ldr r4, [pc, #0x370]
00481820  70 63 9f e5                                      ldr r6, [pc, #0x370]
00481824  00 50 a0 e1                                      mov r5, r0
00481828  04 40 8f e0                                      add r4, pc, r4
0048182c  06 70 94 e7                                      ldr r7, [r4, r6]
00481830  00 10 a0 e3                                      mov r1, #0
00481834  01 20 a0 e3                                      mov r2, #1
00481838  40 00 97 e5                                      ldr r0, [r7, #0x40]
0048183c  0d b3 fb eb                                      bl #0x36e478
00481840  60 36 90 e5                                      ldr r3, [r0, #0x660]
00481844  00 00 53 e3                                      cmp r3, #0
00481848  0b 00 00 0a                                      beq #0x48187c
0048184c  e8 24 01 e3                                      movw r2, #0x14e8
00481850  02 30 93 e7                                      ldr r3, [r3, r2]
00481854  00 00 53 e3                                      cmp r3, #0
00481858  02 00 00 0a                                      beq #0x481868
0048185c  14 30 d3 e5                                      ldrb r3, [r3, #0x14]
00481860  00 00 53 e3                                      cmp r3, #0
00481864  00 00 00 1a                                      bne #0x48186c
00481868  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0048186c  c8 ef 0d eb                                      bl #0x7fd794
00481870  05 30 d0 e5                                      ldrb r3, [r0, #5]
00481874  00 00 53 e3                                      cmp r3, #0
00481878  95 00 00 1a                                      bne #0x481ad4
0048187c  64 30 d5 e5                                      ldrb r3, [r5, #0x64]
00481880  00 00 53 e3                                      cmp r3, #0
00481884  03 00 00 0a                                      beq #0x481898
00481888  05 00 a0 e1                                      mov r0, r5
0048188c  2f fe ff eb                                      bl #0x481150
00481890  00 30 a0 e3                                      mov r3, #0
00481894  64 30 c5 e5                                      strb r3, [r5, #0x64]
00481898  06 30 94 e7                                      ldr r3, [r4, r6]
0048189c  f8 12 9f e5                                      ldr r1, [pc, #0x2f8]
004818a0  f8 22 9f e5                                      ldr r2, [pc, #0x2f8]
004818a4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004818a8  01 10 8f e0                                      add r1, pc, r1
004818ac  02 20 8f e0                                      add r2, pc, r2
004818b0  00 70 95 e5                                      ldr r7, [r5]
004818b4  c8 0c 01 eb                                      bl #0x4c4bdc
004818b8  00 00 57 e1                                      cmp r7, r0
004818bc  8d 00 00 0a                                      beq #0x481af8
004818c0  06 30 94 e7                                      ldr r3, [r4, r6]
004818c4  d8 12 9f e5                                      ldr r1, [pc, #0x2d8]
004818c8  d8 22 9f e5                                      ldr r2, [pc, #0x2d8]
004818cc  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004818d0  01 10 8f e0                                      add r1, pc, r1
004818d4  02 20 8f e0                                      add r2, pc, r2
004818d8  00 70 95 e5                                      ldr r7, [r5]
004818dc  be 0c 01 eb                                      bl #0x4c4bdc
004818e0  00 00 57 e1                                      cmp r7, r0
004818e4  9b 00 00 0a                                      beq #0x481b58
004818e8  06 30 94 e7                                      ldr r3, [r4, r6]
004818ec  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
004818f0  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
004818f4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004818f8  01 10 8f e0                                      add r1, pc, r1
004818fc  02 20 8f e0                                      add r2, pc, r2
00481900  00 70 95 e5                                      ldr r7, [r5]
00481904  b4 0c 01 eb                                      bl #0x4c4bdc
00481908  00 00 57 e1                                      cmp r7, r0
0048190c  8e 00 00 0a                                      beq #0x481b4c
00481910  06 30 94 e7                                      ldr r3, [r4, r6]
00481914  98 12 9f e5                                      ldr r1, [pc, #0x298]
00481918  98 22 9f e5                                      ldr r2, [pc, #0x298]
0048191c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481920  01 10 8f e0                                      add r1, pc, r1
00481924  02 20 8f e0                                      add r2, pc, r2
00481928  00 70 95 e5                                      ldr r7, [r5]
0048192c  aa 0c 01 eb                                      bl #0x4c4bdc
00481930  00 00 57 e1                                      cmp r7, r0
00481934  93 00 00 0a                                      beq #0x481b88
00481938  06 30 94 e7                                      ldr r3, [r4, r6]
0048193c  78 12 9f e5                                      ldr r1, [pc, #0x278]
00481940  78 22 9f e5                                      ldr r2, [pc, #0x278]
00481944  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481948  01 10 8f e0                                      add r1, pc, r1
0048194c  02 20 8f e0                                      add r2, pc, r2
00481950  00 70 95 e5                                      ldr r7, [r5]
00481954  a0 0c 01 eb                                      bl #0x4c4bdc
00481958  00 00 57 e1                                      cmp r7, r0
0048195c  86 00 00 0a                                      beq #0x481b7c
00481960  06 30 94 e7                                      ldr r3, [r4, r6]
00481964  58 12 9f e5                                      ldr r1, [pc, #0x258]
00481968  58 22 9f e5                                      ldr r2, [pc, #0x258]
0048196c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481970  01 10 8f e0                                      add r1, pc, r1
00481974  02 20 8f e0                                      add r2, pc, r2
00481978  00 70 95 e5                                      ldr r7, [r5]
0048197c  96 0c 01 eb                                      bl #0x4c4bdc
00481980  00 00 57 e1                                      cmp r7, r0
00481984  79 00 00 0a                                      beq #0x481b70
00481988  06 30 94 e7                                      ldr r3, [r4, r6]
0048198c  38 12 9f e5                                      ldr r1, [pc, #0x238]
00481990  38 22 9f e5                                      ldr r2, [pc, #0x238]
00481994  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481998  01 10 8f e0                                      add r1, pc, r1
0048199c  02 20 8f e0                                      add r2, pc, r2
004819a0  00 70 95 e5                                      ldr r7, [r5]
004819a4  8c 0c 01 eb                                      bl #0x4c4bdc
004819a8  00 00 57 e1                                      cmp r7, r0
004819ac  6c 00 00 0a                                      beq #0x481b64
004819b0  06 30 94 e7                                      ldr r3, [r4, r6]
004819b4  18 12 9f e5                                      ldr r1, [pc, #0x218]
004819b8  18 22 9f e5                                      ldr r2, [pc, #0x218]
004819bc  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004819c0  01 10 8f e0                                      add r1, pc, r1
004819c4  02 20 8f e0                                      add r2, pc, r2
004819c8  00 70 95 e5                                      ldr r7, [r5]
004819cc  82 0c 01 eb                                      bl #0x4c4bdc
004819d0  00 00 57 e1                                      cmp r7, r0
004819d4  53 00 00 0a                                      beq #0x481b28
004819d8  06 30 94 e7                                      ldr r3, [r4, r6]
004819dc  f8 11 9f e5                                      ldr r1, [pc, #0x1f8]
004819e0  f8 21 9f e5                                      ldr r2, [pc, #0x1f8]
004819e4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
004819e8  01 10 8f e0                                      add r1, pc, r1
004819ec  02 20 8f e0                                      add r2, pc, r2
004819f0  00 70 95 e5                                      ldr r7, [r5]
004819f4  78 0c 01 eb                                      bl #0x4c4bdc
004819f8  00 00 57 e1                                      cmp r7, r0
004819fc  46 00 00 0a                                      beq #0x481b1c
00481a00  06 30 94 e7                                      ldr r3, [r4, r6]
00481a04  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
00481a08  d8 21 9f e5                                      ldr r2, [pc, #0x1d8]
00481a0c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481a10  01 10 8f e0                                      add r1, pc, r1
00481a14  02 20 8f e0                                      add r2, pc, r2
00481a18  00 70 95 e5                                      ldr r7, [r5]
00481a1c  6e 0c 01 eb                                      bl #0x4c4bdc
00481a20  00 00 57 e1                                      cmp r7, r0
00481a24  39 00 00 0a                                      beq #0x481b10
00481a28  06 30 94 e7                                      ldr r3, [r4, r6]
00481a2c  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
00481a30  b8 21 9f e5                                      ldr r2, [pc, #0x1b8]
00481a34  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481a38  01 10 8f e0                                      add r1, pc, r1
00481a3c  02 20 8f e0                                      add r2, pc, r2
00481a40  00 70 95 e5                                      ldr r7, [r5]
00481a44  64 0c 01 eb                                      bl #0x4c4bdc
00481a48  00 00 57 e1                                      cmp r7, r0
00481a4c  2c 00 00 0a                                      beq #0x481b04
00481a50  06 30 94 e7                                      ldr r3, [r4, r6]
00481a54  98 11 9f e5                                      ldr r1, [pc, #0x198]
00481a58  98 21 9f e5                                      ldr r2, [pc, #0x198]
00481a5c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481a60  01 10 8f e0                                      add r1, pc, r1
00481a64  02 20 8f e0                                      add r2, pc, r2
00481a68  00 70 95 e5                                      ldr r7, [r5]
00481a6c  5a 0c 01 eb                                      bl #0x4c4bdc
00481a70  00 00 57 e1                                      cmp r7, r0
00481a74  31 00 00 0a                                      beq #0x481b40
00481a78  06 30 94 e7                                      ldr r3, [r4, r6]
00481a7c  78 11 9f e5                                      ldr r1, [pc, #0x178]
00481a80  78 21 9f e5                                      ldr r2, [pc, #0x178]
00481a84  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481a88  01 10 8f e0                                      add r1, pc, r1
00481a8c  02 20 8f e0                                      add r2, pc, r2
00481a90  00 70 95 e5                                      ldr r7, [r5]
00481a94  50 0c 01 eb                                      bl #0x4c4bdc
00481a98  00 00 57 e1                                      cmp r7, r0
00481a9c  24 00 00 0a                                      beq #0x481b34
00481aa0  06 30 94 e7                                      ldr r3, [r4, r6]
00481aa4  58 11 9f e5                                      ldr r1, [pc, #0x158]
00481aa8  58 21 9f e5                                      ldr r2, [pc, #0x158]
00481aac  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00481ab0  01 10 8f e0                                      add r1, pc, r1
00481ab4  02 20 8f e0                                      add r2, pc, r2
00481ab8  00 40 95 e5                                      ldr r4, [r5]
00481abc  46 0c 01 eb                                      bl #0x4c4bdc
00481ac0  00 00 54 e1                                      cmp r4, r0
00481ac4  67 ff ff 1a                                      bne #0x481868
00481ac8  05 00 a0 e1                                      mov r0, r5
00481acc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00481ad0  0a f7 ff ea                                      b #0x47f700
00481ad4  40 00 97 e5                                      ldr r0, [r7, #0x40]
00481ad8  65 b5 fb eb                                      bl #0x36f074
00481adc  00 00 50 e3                                      cmp r0, #0
00481ae0  65 ff ff 1a                                      bne #0x48187c
00481ae4  38 30 97 e5                                      ldr r3, [r7, #0x38]
00481ae8  60 31 d3 e5                                      ldrb r3, [r3, #0x160]
00481aec  00 00 53 e3                                      cmp r3, #0
00481af0  5c ff ff 0a                                      beq #0x481868
00481af4  60 ff ff ea                                      b #0x48187c
00481af8  05 00 a0 e1                                      mov r0, r5
00481afc  2c ff ff eb                                      bl #0x4817b4
00481b00  6e ff ff ea                                      b #0x4818c0
00481b04  05 00 a0 e1                                      mov r0, r5
00481b08  b8 fd ff eb                                      bl #0x4811f0
00481b0c  cf ff ff ea                                      b #0x481a50
00481b10  05 00 a0 e1                                      mov r0, r5
00481b14  6f fe ff eb                                      bl #0x4814d8
00481b18  c2 ff ff ea                                      b #0x481a28
00481b1c  05 00 a0 e1                                      mov r0, r5
00481b20  cb fd ff eb                                      bl #0x481254
00481b24  b5 ff ff ea                                      b #0x481a00
00481b28  05 00 a0 e1                                      mov r0, r5
00481b2c  e1 fd ff eb                                      bl #0x4812b8
00481b30  a8 ff ff ea                                      b #0x4819d8
00481b34  05 00 a0 e1                                      mov r0, r5
00481b38  42 fe ff eb                                      bl #0x481448
00481b3c  d7 ff ff ea                                      b #0x481aa0
00481b40  05 00 a0 e1                                      mov r0, r5
00481b44  8e fd ff eb                                      bl #0x481184
00481b48  ca ff ff ea                                      b #0x481a78
00481b4c  05 00 a0 e1                                      mov r0, r5
00481b50  0a fe ff eb                                      bl #0x481380
00481b54  6d ff ff ea                                      b #0x481910
00481b58  05 00 a0 e1                                      mov r0, r5
00481b5c  20 fe ff eb                                      bl #0x4813e4
00481b60  60 ff ff ea                                      b #0x4818e8
00481b64  05 00 a0 e1                                      mov r0, r5
00481b68  c6 fe ff eb                                      bl #0x481688
00481b6c  8f ff ff ea                                      b #0x4819b0
00481b70  05 00 a0 e1                                      mov r0, r5
00481b74  96 fe ff eb                                      bl #0x4815d4
00481b78  82 ff ff ea                                      b #0x481988
00481b7c  05 00 a0 e1                                      mov r0, r5
00481b80  e5 fd ff eb                                      bl #0x48131c
00481b84  75 ff ff ea                                      b #0x481960
00481b88  05 00 a0 e1                                      mov r0, r5
00481b8c  db fe ff eb                                      bl #0x481700
00481b90  68 ff ff ea                                      b #0x481938
; mapping-symbol data/literal pool
00481b94  68 32 51 00 f4 37 00 00 30 da 43 00 ec 7a 44 00  .byte 0x68, 0x32, 0x51, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x30, 0xda, 0x43, 0x00, 0xec, 0x7a, 0x44, 0x00
00481ba4  08 da 43 00 f4 ca 44 00 e0 d9 43 00 7c ca 44 00  .byte 0x08, 0xda, 0x43, 0x00, 0xf4, 0xca, 0x44, 0x00, 0xe0, 0xd9, 0x43, 0x00, 0x7c, 0xca, 0x44, 0x00
00481bb4  b8 d9 43 00 44 ca 44 00 90 d9 43 00 6c ca 44 00  .byte 0xb8, 0xd9, 0x43, 0x00, 0x44, 0xca, 0x44, 0x00, 0x90, 0xd9, 0x43, 0x00, 0x6c, 0xca, 0x44, 0x00
00481bc4  68 d9 43 00 e4 c9 44 00 40 d9 43 00 4c d9 43 00  .byte 0x68, 0xd9, 0x43, 0x00, 0xe4, 0xc9, 0x44, 0x00, 0x40, 0xd9, 0x43, 0x00, 0x4c, 0xd9, 0x43, 0x00
00481bd4  18 d9 43 00 e4 c9 44 00 f0 d8 43 00 5c c9 44 00  .byte 0x18, 0xd9, 0x43, 0x00, 0xe4, 0xc9, 0x44, 0x00, 0xf0, 0xd8, 0x43, 0x00, 0x5c, 0xc9, 0x44, 0x00
00481be4  c8 d8 43 00 1c c1 44 00 a0 d8 43 00 5c c9 44 00  .byte 0xc8, 0xd8, 0x43, 0x00, 0x1c, 0xc1, 0x44, 0x00, 0xa0, 0xd8, 0x43, 0x00, 0x5c, 0xc9, 0x44, 0x00
00481bf4  78 d8 43 00 d4 c8 44 00 50 d8 43 00 ec a2 44 00  .byte 0x78, 0xd8, 0x43, 0x00, 0xd4, 0xc8, 0x44, 0x00, 0x50, 0xd8, 0x43, 0x00, 0xec, 0xa2, 0x44, 0x00
00481c04  28 d8 43 00 c4 a2 44 00                          .byte 0x28, 0xd8, 0x43, 0x00, 0xc4, 0xa2, 0x44, 0x00
