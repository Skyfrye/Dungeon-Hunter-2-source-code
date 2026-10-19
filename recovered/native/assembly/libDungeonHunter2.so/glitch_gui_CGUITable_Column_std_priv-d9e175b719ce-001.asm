; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0055600c, declared_size=132, range_size=132, mode=arm
; class-group: glitch::gui::CGUITable::Column* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch3gui9CGUITable6ColumnES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUITable::Column* std::priv::__ucopy<glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, int>(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0055600c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00556010  3d 3f 0c e3                                      movw r3, #0xcf3d
00556014  01 70 60 e0                                      rsb r7, r0, r1
00556018  47 71 a0 e1                                      asr r7, r7, #2
0055601c  f3 3c 43 e3                                      movt r3, #0x3cf3
00556020  93 07 07 e0                                      mul r7, r3, r7
00556024  00 50 a0 e1                                      mov r5, r0
00556028  00 00 57 e3                                      cmp r7, #0
0055602c  02 80 a0 e1                                      mov r8, r2
00556030  07 60 a0 c1                                      movgt r6, r7
00556034  02 40 a0 c1                                      movgt r4, r2
00556038  12 00 00 da                                      ble #0x556088
0055603c  40 40 84 e5                                      str r4, [r4, #0x40]
00556040  44 40 84 e5                                      str r4, [r4, #0x44]
00556044  04 00 a0 e1                                      mov r0, r4
00556048  44 10 95 e5                                      ldr r1, [r5, #0x44]
0055604c  40 20 95 e5                                      ldr r2, [r5, #0x40]
00556050  75 3f f7 eb                                      bl #0x325e2c
00556054  48 30 95 e5                                      ldr r3, [r5, #0x48]
00556058  01 60 56 e2                                      subs r6, r6, #1
0055605c  48 30 84 e5                                      str r3, [r4, #0x48]
00556060  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00556064  4c 30 84 e5                                      str r3, [r4, #0x4c]
00556068  50 30 95 e5                                      ldr r3, [r5, #0x50]
0055606c  54 50 85 e2                                      add r5, r5, #0x54
00556070  50 30 84 e5                                      str r3, [r4, #0x50]
00556074  54 40 84 e2                                      add r4, r4, #0x54
00556078  ef ff ff 1a                                      bne #0x55603c
0055607c  54 00 a0 e3                                      mov r0, #0x54
00556080  90 87 20 e0                                      mla r0, r0, r7, r8
00556084  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00556088  02 00 a0 e1                                      mov r0, r2
0055608c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00558008, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUITable::Column* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch3gui9CGUITable6ColumnES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUITable::Column* std::priv::__copy<glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, int>(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00558008  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0055800c  3d 3f 0c e3                                      movw r3, #0xcf3d
00558010  01 80 60 e0                                      rsb r8, r0, r1
00558014  48 81 a0 e1                                      asr r8, r8, #2
00558018  f3 3c 43 e3                                      movt r3, #0x3cf3
0055801c  93 08 08 e0                                      mul r8, r3, r8
00558020  00 40 a0 e1                                      mov r4, r0
00558024  00 00 58 e3                                      cmp r8, #0
00558028  02 70 a0 e1                                      mov r7, r2
0055802c  13 00 00 da                                      ble #0x558080
00558030  02 50 a0 e1                                      mov r5, r2
00558034  08 60 a0 e1                                      mov r6, r8
00558038  04 00 55 e1                                      cmp r5, r4
0055803c  05 00 a0 e1                                      mov r0, r5
00558040  02 00 00 0a                                      beq #0x558050
00558044  44 10 94 e5                                      ldr r1, [r4, #0x44]
00558048  40 20 94 e5                                      ldr r2, [r4, #0x40]
0055804c  53 2c f7 eb                                      bl #0x3231a0
00558050  48 30 94 e5                                      ldr r3, [r4, #0x48]
00558054  01 60 56 e2                                      subs r6, r6, #1
00558058  48 30 85 e5                                      str r3, [r5, #0x48]
0055805c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00558060  4c 30 85 e5                                      str r3, [r5, #0x4c]
00558064  50 30 94 e5                                      ldr r3, [r4, #0x50]
00558068  54 40 84 e2                                      add r4, r4, #0x54
0055806c  50 30 85 e5                                      str r3, [r5, #0x50]
00558070  54 50 85 e2                                      add r5, r5, #0x54
00558074  ef ff ff 1a                                      bne #0x558038
00558078  54 30 a0 e3                                      mov r3, #0x54
0055807c  93 78 27 e0                                      mla r7, r3, r8, r7
00558080  07 00 a0 e1                                      mov r0, r7
00558084  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0055816c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::gui::CGUITable::Column* std::priv
; alias: _ZNSt4priv15__copy_backwardIPN6glitch3gui9CGUITable6ColumnES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUITable::Column* std::priv::__copy_backward<glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, int>(glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, glitch::gui::CGUITable::Column*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0055816c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00558170  3d 3f 0c e3                                      movw r3, #0xcf3d
00558174  01 80 60 e0                                      rsb r8, r0, r1
00558178  48 81 a0 e1                                      asr r8, r8, #2
0055817c  f3 3c 43 e3                                      movt r3, #0x3cf3
00558180  93 08 08 e0                                      mul r8, r3, r8
00558184  01 40 a0 e1                                      mov r4, r1
00558188  00 00 58 e3                                      cmp r8, #0
0055818c  02 70 a0 e1                                      mov r7, r2
00558190  16 00 00 da                                      ble #0x5581f0
00558194  02 50 a0 e1                                      mov r5, r2
00558198  08 60 a0 e1                                      mov r6, r8
0055819c  54 50 45 e2                                      sub r5, r5, #0x54
005581a0  54 40 44 e2                                      sub r4, r4, #0x54
005581a4  04 00 55 e1                                      cmp r5, r4
005581a8  05 00 a0 e1                                      mov r0, r5
005581ac  02 00 00 0a                                      beq #0x5581bc
005581b0  44 10 94 e5                                      ldr r1, [r4, #0x44]
005581b4  40 20 94 e5                                      ldr r2, [r4, #0x40]
005581b8  f8 2b f7 eb                                      bl #0x3231a0
005581bc  48 30 94 e5                                      ldr r3, [r4, #0x48]
005581c0  01 60 56 e2                                      subs r6, r6, #1
005581c4  48 30 85 e5                                      str r3, [r5, #0x48]
005581c8  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
005581cc  4c 30 85 e5                                      str r3, [r5, #0x4c]
005581d0  50 30 94 e5                                      ldr r3, [r4, #0x50]
005581d4  50 30 85 e5                                      str r3, [r5, #0x50]
005581d8  ef ff ff 1a                                      bne #0x55819c
005581dc  53 30 e0 e3                                      mvn r3, #0x53
005581e0  01 80 48 e2                                      sub r8, r8, #1
005581e4  93 08 08 e0                                      mul r8, r3, r8
005581e8  03 80 88 e0                                      add r8, r8, r3
005581ec  08 70 87 e0                                      add r7, r7, r8
005581f0  07 00 a0 e1                                      mov r0, r7
005581f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
