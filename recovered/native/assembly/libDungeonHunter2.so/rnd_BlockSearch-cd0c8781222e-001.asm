; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048c638, declared_size=156, range_size=156, mode=arm
; class-group: rnd::BlockSearch
; alias: _ZNK3rnd11BlockSearchclERNS_8ListElemE
; demangled: rnd::BlockSearch::operator()(rnd::ListElem&) const
; decoder-mode: arm
0048c638  70 40 2d e9                                      push {r4, r5, r6, lr}
0048c63c  00 40 a0 e1                                      mov r4, r0
0048c640  14 20 91 e5                                      ldr r2, [r1, #0x14]
0048c644  18 00 91 e5                                      ldr r0, [r1, #0x18]
0048c648  01 50 a0 e1                                      mov r5, r1
0048c64c  10 30 94 e5                                      ldr r3, [r4, #0x10]
0048c650  14 10 94 e5                                      ldr r1, [r4, #0x14]
0048c654  02 20 60 e0                                      rsb r2, r0, r2
0048c658  03 30 61 e0                                      rsb r3, r1, r3
0048c65c  03 00 52 e1                                      cmp r2, r3
0048c660  01 00 00 0a                                      beq #0x48c66c
0048c664  00 00 a0 e3                                      mov r0, #0
0048c668  70 80 bd e8                                      pop {r4, r5, r6, pc}
0048c66c  db 07 fa eb                                      bl #0x30e5e0
0048c670  00 00 50 e3                                      cmp r0, #0
0048c674  fa ff ff 1a                                      bne #0x48c664
0048c678  30 00 95 e5                                      ldr r0, [r5, #0x30]
0048c67c  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
0048c680  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
0048c684  28 30 94 e5                                      ldr r3, [r4, #0x28]
0048c688  02 20 60 e0                                      rsb r2, r0, r2
0048c68c  03 30 61 e0                                      rsb r3, r1, r3
0048c690  03 00 52 e1                                      cmp r2, r3
0048c694  f2 ff ff 1a                                      bne #0x48c664
0048c698  d0 07 fa eb                                      bl #0x30e5e0
0048c69c  00 00 50 e3                                      cmp r0, #0
0048c6a0  ef ff ff 1a                                      bne #0x48c664
0048c6a4  44 20 95 e5                                      ldr r2, [r5, #0x44]
0048c6a8  40 30 94 e5                                      ldr r3, [r4, #0x40]
0048c6ac  48 00 95 e5                                      ldr r0, [r5, #0x48]
0048c6b0  44 10 94 e5                                      ldr r1, [r4, #0x44]
0048c6b4  02 20 60 e0                                      rsb r2, r0, r2
0048c6b8  03 30 61 e0                                      rsb r3, r1, r3
0048c6bc  03 00 52 e1                                      cmp r2, r3
0048c6c0  e7 ff ff 1a                                      bne #0x48c664
0048c6c4  c5 07 fa eb                                      bl #0x30e5e0
0048c6c8  01 00 70 e2                                      rsbs r0, r0, #1
0048c6cc  00 00 a0 33                                      movlo r0, #0
0048c6d0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0048db5c, declared_size=172, range_size=172, mode=arm
; class-group: rnd::BlockSearch
; alias: _ZN3rnd11BlockSearchD1Ev
; demangled: rnd::BlockSearch::~BlockSearch()
; decoder-mode: arm
0048db5c  10 40 2d e9                                      push {r4, lr}
0048db60  30 30 80 e2                                      add r3, r0, #0x30
0048db64  00 40 a0 e1                                      mov r4, r0
0048db68  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048db6c  03 00 50 e1                                      cmp r0, r3
0048db70  06 00 00 0a                                      beq #0x48db90
0048db74  00 00 50 e3                                      cmp r0, #0
0048db78  04 00 00 0a                                      beq #0x48db90
0048db7c  30 10 94 e5                                      ldr r1, [r4, #0x30]
0048db80  01 10 60 e0                                      rsb r1, r0, r1
0048db84  80 00 51 e3                                      cmp r1, #0x80
0048db88  17 00 00 8a                                      bhi #0x48dbec
0048db8c  db ec 09 eb                                      bl #0x708f00
0048db90  18 30 84 e2                                      add r3, r4, #0x18
0048db94  14 00 93 e5                                      ldr r0, [r3, #0x14]
0048db98  03 00 50 e1                                      cmp r0, r3
0048db9c  06 00 00 0a                                      beq #0x48dbbc
0048dba0  00 00 50 e3                                      cmp r0, #0
0048dba4  04 00 00 0a                                      beq #0x48dbbc
0048dba8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0048dbac  01 10 60 e0                                      rsb r1, r0, r1
0048dbb0  80 00 51 e3                                      cmp r1, #0x80
0048dbb4  0e 00 00 8a                                      bhi #0x48dbf4
0048dbb8  d0 ec 09 eb                                      bl #0x708f00
0048dbbc  14 00 94 e5                                      ldr r0, [r4, #0x14]
0048dbc0  04 00 50 e1                                      cmp r0, r4
0048dbc4  06 00 00 0a                                      beq #0x48dbe4
0048dbc8  00 00 50 e3                                      cmp r0, #0
0048dbcc  04 00 00 0a                                      beq #0x48dbe4
0048dbd0  00 10 94 e5                                      ldr r1, [r4]
0048dbd4  01 10 60 e0                                      rsb r1, r0, r1
0048dbd8  80 00 51 e3                                      cmp r1, #0x80
0048dbdc  06 00 00 8a                                      bhi #0x48dbfc
0048dbe0  c6 ec 09 eb                                      bl #0x708f00
0048dbe4  04 00 a0 e1                                      mov r0, r4
0048dbe8  10 80 bd e8                                      pop {r4, pc}
0048dbec  13 0a fa eb                                      bl #0x310440
0048dbf0  e6 ff ff ea                                      b #0x48db90
0048dbf4  11 0a fa eb                                      bl #0x310440
0048dbf8  ef ff ff ea                                      b #0x48dbbc
0048dbfc  0f 0a fa eb                                      bl #0x310440
0048dc00  04 00 a0 e1                                      mov r0, r4
0048dc04  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0048e0e0, declared_size=72, range_size=72, mode=arm
; class-group: rnd::BlockSearch
; alias: _ZN3rnd11BlockSearchC1EPKcS2_S2_
; demangled: rnd::BlockSearch::BlockSearch(char const*, char const*, char const*)
; decoder-mode: arm
0048e0e0  70 40 2d e9                                      push {r4, r5, r6, lr}
0048e0e4  10 d0 4d e2                                      sub sp, sp, #0x10
0048e0e8  00 40 a0 e1                                      mov r4, r0
0048e0ec  02 50 a0 e1                                      mov r5, r2
0048e0f0  0c 20 8d e2                                      add r2, sp, #0xc
0048e0f4  03 60 a0 e1                                      mov r6, r3
0048e0f8  fb 17 fa eb                                      bl #0x3140ec
0048e0fc  05 10 a0 e1                                      mov r1, r5
0048e100  08 20 8d e2                                      add r2, sp, #8
0048e104  18 00 84 e2                                      add r0, r4, #0x18
0048e108  f7 17 fa eb                                      bl #0x3140ec
0048e10c  06 10 a0 e1                                      mov r1, r6
0048e110  30 00 84 e2                                      add r0, r4, #0x30
0048e114  04 20 8d e2                                      add r2, sp, #4
0048e118  f3 17 fa eb                                      bl #0x3140ec
0048e11c  04 00 a0 e1                                      mov r0, r4
0048e120  10 d0 8d e2                                      add sp, sp, #0x10
0048e124  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00490520, declared_size=48, range_size=48, mode=arm
; class-group: rnd::BlockSearch
; alias: _ZN3rnd11BlockSearchC1ERKS0_
; demangled: rnd::BlockSearch::BlockSearch(rnd::BlockSearch const&)
; decoder-mode: arm
00490520  70 40 2d e9                                      push {r4, r5, r6, lr}
00490524  00 40 a0 e1                                      mov r4, r0
00490528  01 50 a0 e1                                      mov r5, r1
0049052c  f9 6c fa eb                                      bl #0x32b918
00490530  18 10 85 e2                                      add r1, r5, #0x18
00490534  18 00 84 e2                                      add r0, r4, #0x18
00490538  f6 6c fa eb                                      bl #0x32b918
0049053c  30 10 85 e2                                      add r1, r5, #0x30
00490540  30 00 84 e2                                      add r0, r4, #0x30
00490544  f3 6c fa eb                                      bl #0x32b918
00490548  04 00 a0 e1                                      mov r0, r4
0049054c  70 80 bd e8                                      pop {r4, r5, r6, pc}
