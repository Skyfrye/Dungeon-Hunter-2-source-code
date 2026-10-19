; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079d638, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_date
; alias: _ZNK7gameswf7as_date2isEi
; demangled: gameswf::as_date::is(int) const
; decoder-mode: arm
0079d638  1f 00 51 e3                                      cmp r1, #0x1f
0079d63c  01 00 a0 03                                      moveq r0, #1
0079d640  1e ff 2f 01                                      bxeq lr
0079d644  01 00 71 e2                                      rsbs r0, r1, #1
0079d648  00 00 a0 33                                      movlo r0, #0
0079d64c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079d650, declared_size=12, range_size=12, mode=arm
; class-group: gameswf::as_date
; alias: _ZNK7gameswf7as_date8get_timeEv
; demangled: gameswf::as_date::get_time() const
; decoder-mode: arm
0079d650  3c 10 90 e5                                      ldr r1, [r0, #0x3c]
0079d654  38 00 90 e5                                      ldr r0, [r0, #0x38]
0079d658  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079d690, declared_size=52, range_size=52, mode=arm
; class-group: gameswf::as_date
; alias: _ZN7gameswf7as_dateD1Ev
; demangled: gameswf::as_date::~as_date()
; decoder-mode: arm
0079d690  24 30 9f e5                                      ldr r3, [pc, #0x24]
0079d694  24 20 9f e5                                      ldr r2, [pc, #0x24]
0079d698  10 40 2d e9                                      push {r4, lr}
0079d69c  03 30 8f e0                                      add r3, pc, r3
0079d6a0  02 20 93 e7                                      ldr r2, [r3, r2]
0079d6a4  00 40 a0 e1                                      mov r4, r0
0079d6a8  08 20 82 e2                                      add r2, r2, #8
0079d6ac  00 20 80 e5                                      str r2, [r0]
0079d6b0  f9 30 ff eb                                      bl #0x769a9c
0079d6b4  04 00 a0 e1                                      mov r0, r4
0079d6b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0079d6bc  f4 73 1f 00 a0 3c 00 00                          .byte 0xf4, 0x73, 0x1f, 0x00, 0xa0, 0x3c, 0x00, 0x00

; FUNCTION 0x0079d72c, declared_size=60, range_size=60, mode=arm
; class-group: gameswf::as_date
; alias: _ZN7gameswf7as_dateD0Ev
; demangled: gameswf::as_date::~as_date()
; decoder-mode: arm
0079d72c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0079d730  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0079d734  10 40 2d e9                                      push {r4, lr}
0079d738  03 30 8f e0                                      add r3, pc, r3
0079d73c  02 20 93 e7                                      ldr r2, [r3, r2]
0079d740  00 40 a0 e1                                      mov r4, r0
0079d744  08 20 82 e2                                      add r2, r2, #8
0079d748  00 20 80 e5                                      str r2, [r0]
0079d74c  d2 30 ff eb                                      bl #0x769a9c
0079d750  04 00 a0 e1                                      mov r0, r4
0079d754  d5 c2 ed eb                                      bl #0x30e2b0
0079d758  04 00 a0 e1                                      mov r0, r4
0079d75c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0079d760  58 73 1f 00 a0 3c 00 00                          .byte 0x58, 0x73, 0x1f, 0x00, 0xa0, 0x3c, 0x00, 0x00

; FUNCTION 0x0079d908, declared_size=1296, range_size=1296, mode=arm
; class-group: gameswf::as_date
; alias: _ZN7gameswf7as_dateC1ERKNS_7fn_callE
; demangled: gameswf::as_date::as_date(gameswf::fn_call const&)
; decoder-mode: arm
0079d908  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079d90c  a4 44 9f e5                                      ldr r4, [pc, #0x4a4]
0079d910  a4 74 9f e5                                      ldr r7, [pc, #0x4a4]
0079d914  0c 80 91 e5                                      ldr r8, [r1, #0xc]
0079d918  04 40 8f e0                                      add r4, pc, r4
0079d91c  07 30 94 e7                                      ldr r3, [r4, r7]
0079d920  52 df 4d e2                                      sub sp, sp, #0x148
0079d924  00 50 a0 e1                                      mov r5, r0
0079d928  00 30 93 e5                                      ldr r3, [r3]
0079d92c  64 00 88 e2                                      add r0, r8, #0x64
0079d930  01 60 a0 e1                                      mov r6, r1
0079d934  44 31 8d e5                                      str r3, [sp, #0x144]
0079d938  48 de fe eb                                      bl #0x755260
0079d93c  68 10 98 e5                                      ldr r1, [r8, #0x68]
0079d940  05 00 a0 e1                                      mov r0, r5
0079d944  e5 38 ff eb                                      bl #0x76bce0
0079d948  70 34 9f e5                                      ldr r3, [pc, #0x470]
0079d94c  03 30 94 e7                                      ldr r3, [r4, r3]
0079d950  08 30 83 e2                                      add r3, r3, #8
0079d954  00 30 85 e5                                      str r3, [r5]
0079d958  66 68 00 eb                                      bl #0x7b7af8
0079d95c  f8 03 c5 e1                                      strd r0, r1, [r5, #0x38]
0079d960  10 30 96 e5                                      ldr r3, [r6, #0x10]
0079d964  00 00 53 e3                                      cmp r3, #0
0079d968  02 00 00 da                                      ble #0x79d978
0079d96c  50 04 9f e5                                      ldr r0, [pc, #0x450]
0079d970  00 00 8f e0                                      add r0, pc, r0
0079d974  02 0e ff eb                                      bl #0x761184
0079d978  48 14 9f e5                                      ldr r1, [pc, #0x448]
0079d97c  13 8e 8d e2                                      add r8, sp, #0x130
0079d980  08 00 a0 e1                                      mov r0, r8
0079d984  01 10 8f e0                                      add r1, pc, r1
0079d988  3b d8 f1 eb                                      bl #0x413a7c
0079d98c  38 24 9f e5                                      ldr r2, [pc, #0x438]
0079d990  70 60 8d e2                                      add r6, sp, #0x70
0079d994  00 30 a0 e3                                      mov r3, #0
0079d998  02 10 94 e7                                      ldr r1, [r4, r2]
0079d99c  06 00 a0 e1                                      mov r0, r6
0079d9a0  71 30 cd e5                                      strb r3, [sp, #0x71]
0079d9a4  70 30 cd e5                                      strb r3, [sp, #0x70]
0079d9a8  3c e6 ff eb                                      bl #0x7972a0
0079d9ac  06 20 a0 e1                                      mov r2, r6
0079d9b0  05 00 a0 e1                                      mov r0, r5
0079d9b4  08 10 a0 e1                                      mov r1, r8
0079d9b8  65 2c ff eb                                      bl #0x768b54
0079d9bc  06 00 a0 e1                                      mov r0, r6
0079d9c0  d7 e5 ff eb                                      bl #0x797124
0079d9c4  30 21 dd e5                                      ldrb r2, [sp, #0x130]
0079d9c8  72 30 af e6                                      sxtb r3, r2
0079d9cc  01 00 73 e3                                      cmn r3, #1
0079d9d0  cf 00 00 0a                                      beq #0x79dd14
0079d9d4  f4 13 9f e5                                      ldr r1, [pc, #0x3f4]
0079d9d8  47 8f 8d e2                                      add r8, sp, #0x11c
0079d9dc  08 00 a0 e1                                      mov r0, r8
0079d9e0  01 10 8f e0                                      add r1, pc, r1
0079d9e4  24 d8 f1 eb                                      bl #0x413a7c
0079d9e8  e4 23 9f e5                                      ldr r2, [pc, #0x3e4]
0079d9ec  64 60 8d e2                                      add r6, sp, #0x64
0079d9f0  00 30 a0 e3                                      mov r3, #0
0079d9f4  02 10 94 e7                                      ldr r1, [r4, r2]
0079d9f8  06 00 a0 e1                                      mov r0, r6
0079d9fc  65 30 cd e5                                      strb r3, [sp, #0x65]
0079da00  64 30 cd e5                                      strb r3, [sp, #0x64]
0079da04  25 e6 ff eb                                      bl #0x7972a0
0079da08  06 20 a0 e1                                      mov r2, r6
0079da0c  05 00 a0 e1                                      mov r0, r5
0079da10  08 10 a0 e1                                      mov r1, r8
0079da14  4e 2c ff eb                                      bl #0x768b54
0079da18  06 00 a0 e1                                      mov r0, r6
0079da1c  c0 e5 ff eb                                      bl #0x797124
0079da20  1c 21 dd e5                                      ldrb r2, [sp, #0x11c]
0079da24  72 30 af e6                                      sxtb r3, r2
0079da28  01 00 73 e3                                      cmn r3, #1
0079da2c  bc 00 00 0a                                      beq #0x79dd24
0079da30  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
0079da34  42 8f 8d e2                                      add r8, sp, #0x108
0079da38  08 00 a0 e1                                      mov r0, r8
0079da3c  01 10 8f e0                                      add r1, pc, r1
0079da40  0d d8 f1 eb                                      bl #0x413a7c
0079da44  90 23 9f e5                                      ldr r2, [pc, #0x390]
0079da48  58 60 8d e2                                      add r6, sp, #0x58
0079da4c  00 30 a0 e3                                      mov r3, #0
0079da50  02 10 94 e7                                      ldr r1, [r4, r2]
0079da54  06 00 a0 e1                                      mov r0, r6
0079da58  59 30 cd e5                                      strb r3, [sp, #0x59]
0079da5c  58 30 cd e5                                      strb r3, [sp, #0x58]
0079da60  0e e6 ff eb                                      bl #0x7972a0
0079da64  06 20 a0 e1                                      mov r2, r6
0079da68  05 00 a0 e1                                      mov r0, r5
0079da6c  08 10 a0 e1                                      mov r1, r8
0079da70  37 2c ff eb                                      bl #0x768b54
0079da74  06 00 a0 e1                                      mov r0, r6
0079da78  a9 e5 ff eb                                      bl #0x797124
0079da7c  08 21 dd e5                                      ldrb r2, [sp, #0x108]
0079da80  72 30 af e6                                      sxtb r3, r2
0079da84  01 00 73 e3                                      cmn r3, #1
0079da88  a9 00 00 0a                                      beq #0x79dd34
0079da8c  4c 13 9f e5                                      ldr r1, [pc, #0x34c]
0079da90  f4 80 8d e2                                      add r8, sp, #0xf4
0079da94  08 00 a0 e1                                      mov r0, r8
0079da98  01 10 8f e0                                      add r1, pc, r1
0079da9c  f6 d7 f1 eb                                      bl #0x413a7c
0079daa0  3c 23 9f e5                                      ldr r2, [pc, #0x33c]
0079daa4  4c 60 8d e2                                      add r6, sp, #0x4c
0079daa8  00 30 a0 e3                                      mov r3, #0
0079daac  02 10 94 e7                                      ldr r1, [r4, r2]
0079dab0  06 00 a0 e1                                      mov r0, r6
0079dab4  4d 30 cd e5                                      strb r3, [sp, #0x4d]
0079dab8  4c 30 cd e5                                      strb r3, [sp, #0x4c]
0079dabc  f7 e5 ff eb                                      bl #0x7972a0
0079dac0  05 00 a0 e1                                      mov r0, r5
0079dac4  08 10 a0 e1                                      mov r1, r8
0079dac8  06 20 a0 e1                                      mov r2, r6
0079dacc  20 2c ff eb                                      bl #0x768b54
0079dad0  06 00 a0 e1                                      mov r0, r6
0079dad4  92 e5 ff eb                                      bl #0x797124
0079dad8  d4 3f dd e1                                      ldrsb r3, [sp, #0xf4]
0079dadc  01 00 73 e3                                      cmn r3, #1
0079dae0  97 00 00 0a                                      beq #0x79dd44
0079dae4  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
0079dae8  e0 80 8d e2                                      add r8, sp, #0xe0
0079daec  08 00 a0 e1                                      mov r0, r8
0079daf0  01 10 8f e0                                      add r1, pc, r1
0079daf4  e0 d7 f1 eb                                      bl #0x413a7c
0079daf8  ec 22 9f e5                                      ldr r2, [pc, #0x2ec]
0079dafc  40 60 8d e2                                      add r6, sp, #0x40
0079db00  00 30 a0 e3                                      mov r3, #0
0079db04  02 10 94 e7                                      ldr r1, [r4, r2]
0079db08  06 00 a0 e1                                      mov r0, r6
0079db0c  41 30 cd e5                                      strb r3, [sp, #0x41]
0079db10  40 30 cd e5                                      strb r3, [sp, #0x40]
0079db14  e1 e5 ff eb                                      bl #0x7972a0
0079db18  05 00 a0 e1                                      mov r0, r5
0079db1c  08 10 a0 e1                                      mov r1, r8
0079db20  06 20 a0 e1                                      mov r2, r6
0079db24  0a 2c ff eb                                      bl #0x768b54
0079db28  06 00 a0 e1                                      mov r0, r6
0079db2c  7c e5 ff eb                                      bl #0x797124
0079db30  d0 3e dd e1                                      ldrsb r3, [sp, #0xe0]
0079db34  01 00 73 e3                                      cmn r3, #1
0079db38  85 00 00 0a                                      beq #0x79dd54
0079db3c  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
0079db40  cc 80 8d e2                                      add r8, sp, #0xcc
0079db44  08 00 a0 e1                                      mov r0, r8
0079db48  01 10 8f e0                                      add r1, pc, r1
0079db4c  ca d7 f1 eb                                      bl #0x413a7c
0079db50  9c 22 9f e5                                      ldr r2, [pc, #0x29c]
0079db54  34 60 8d e2                                      add r6, sp, #0x34
0079db58  00 30 a0 e3                                      mov r3, #0
0079db5c  02 10 94 e7                                      ldr r1, [r4, r2]
0079db60  06 00 a0 e1                                      mov r0, r6
0079db64  35 30 cd e5                                      strb r3, [sp, #0x35]
0079db68  34 30 cd e5                                      strb r3, [sp, #0x34]
0079db6c  cb e5 ff eb                                      bl #0x7972a0
0079db70  05 00 a0 e1                                      mov r0, r5
0079db74  08 10 a0 e1                                      mov r1, r8
0079db78  06 20 a0 e1                                      mov r2, r6
0079db7c  f4 2b ff eb                                      bl #0x768b54
0079db80  06 00 a0 e1                                      mov r0, r6
0079db84  66 e5 ff eb                                      bl #0x797124
0079db88  dc 3c dd e1                                      ldrsb r3, [sp, #0xcc]
0079db8c  01 00 73 e3                                      cmn r3, #1
0079db90  73 00 00 0a                                      beq #0x79dd64
0079db94  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
0079db98  b8 80 8d e2                                      add r8, sp, #0xb8
0079db9c  08 00 a0 e1                                      mov r0, r8
0079dba0  01 10 8f e0                                      add r1, pc, r1
0079dba4  b4 d7 f1 eb                                      bl #0x413a7c
0079dba8  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
0079dbac  28 60 8d e2                                      add r6, sp, #0x28
0079dbb0  00 30 a0 e3                                      mov r3, #0
0079dbb4  02 10 94 e7                                      ldr r1, [r4, r2]
0079dbb8  06 00 a0 e1                                      mov r0, r6
0079dbbc  29 30 cd e5                                      strb r3, [sp, #0x29]
0079dbc0  28 30 cd e5                                      strb r3, [sp, #0x28]
0079dbc4  b5 e5 ff eb                                      bl #0x7972a0
0079dbc8  05 00 a0 e1                                      mov r0, r5
0079dbcc  08 10 a0 e1                                      mov r1, r8
0079dbd0  06 20 a0 e1                                      mov r2, r6
0079dbd4  de 2b ff eb                                      bl #0x768b54
0079dbd8  06 00 a0 e1                                      mov r0, r6
0079dbdc  50 e5 ff eb                                      bl #0x797124
0079dbe0  d8 3b dd e1                                      ldrsb r3, [sp, #0xb8]
0079dbe4  01 00 73 e3                                      cmn r3, #1
0079dbe8  61 00 00 0a                                      beq #0x79dd74
0079dbec  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
0079dbf0  a4 80 8d e2                                      add r8, sp, #0xa4
0079dbf4  08 00 a0 e1                                      mov r0, r8
0079dbf8  01 10 8f e0                                      add r1, pc, r1
0079dbfc  9e d7 f1 eb                                      bl #0x413a7c
0079dc00  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
0079dc04  1c 60 8d e2                                      add r6, sp, #0x1c
0079dc08  00 30 a0 e3                                      mov r3, #0
0079dc0c  02 10 94 e7                                      ldr r1, [r4, r2]
0079dc10  06 00 a0 e1                                      mov r0, r6
0079dc14  1d 30 cd e5                                      strb r3, [sp, #0x1d]
0079dc18  1c 30 cd e5                                      strb r3, [sp, #0x1c]
0079dc1c  9f e5 ff eb                                      bl #0x7972a0
0079dc20  05 00 a0 e1                                      mov r0, r5
0079dc24  08 10 a0 e1                                      mov r1, r8
0079dc28  06 20 a0 e1                                      mov r2, r6
0079dc2c  c8 2b ff eb                                      bl #0x768b54
0079dc30  06 00 a0 e1                                      mov r0, r6
0079dc34  3a e5 ff eb                                      bl #0x797124
0079dc38  d4 3a dd e1                                      ldrsb r3, [sp, #0xa4]
0079dc3c  01 00 73 e3                                      cmn r3, #1
0079dc40  4f 00 00 0a                                      beq #0x79dd84
0079dc44  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0079dc48  90 80 8d e2                                      add r8, sp, #0x90
0079dc4c  08 00 a0 e1                                      mov r0, r8
0079dc50  01 10 8f e0                                      add r1, pc, r1
0079dc54  88 d7 f1 eb                                      bl #0x413a7c
0079dc58  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
0079dc5c  10 60 8d e2                                      add r6, sp, #0x10
0079dc60  00 30 a0 e3                                      mov r3, #0
0079dc64  02 10 94 e7                                      ldr r1, [r4, r2]
0079dc68  06 00 a0 e1                                      mov r0, r6
0079dc6c  11 30 cd e5                                      strb r3, [sp, #0x11]
0079dc70  10 30 cd e5                                      strb r3, [sp, #0x10]
0079dc74  89 e5 ff eb                                      bl #0x7972a0
0079dc78  05 00 a0 e1                                      mov r0, r5
0079dc7c  08 10 a0 e1                                      mov r1, r8
0079dc80  06 20 a0 e1                                      mov r2, r6
0079dc84  b2 2b ff eb                                      bl #0x768b54
0079dc88  06 00 a0 e1                                      mov r0, r6
0079dc8c  24 e5 ff eb                                      bl #0x797124
0079dc90  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
0079dc94  01 00 73 e3                                      cmn r3, #1
0079dc98  3d 00 00 0a                                      beq #0x79dd94
0079dc9c  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
0079dca0  7c 80 8d e2                                      add r8, sp, #0x7c
0079dca4  08 00 a0 e1                                      mov r0, r8
0079dca8  01 10 8f e0                                      add r1, pc, r1
0079dcac  72 d7 f1 eb                                      bl #0x413a7c
0079dcb0  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0079dcb4  04 60 8d e2                                      add r6, sp, #4
0079dcb8  00 30 a0 e3                                      mov r3, #0
0079dcbc  02 10 94 e7                                      ldr r1, [r4, r2]
0079dcc0  06 00 a0 e1                                      mov r0, r6
0079dcc4  05 30 cd e5                                      strb r3, [sp, #5]
0079dcc8  04 30 cd e5                                      strb r3, [sp, #4]
0079dccc  73 e5 ff eb                                      bl #0x7972a0
0079dcd0  05 00 a0 e1                                      mov r0, r5
0079dcd4  08 10 a0 e1                                      mov r1, r8
0079dcd8  06 20 a0 e1                                      mov r2, r6
0079dcdc  9c 2b ff eb                                      bl #0x768b54
0079dce0  06 00 a0 e1                                      mov r0, r6
0079dce4  0e e5 ff eb                                      bl #0x797124
0079dce8  dc 37 dd e1                                      ldrsb r3, [sp, #0x7c]
0079dcec  01 00 73 e3                                      cmn r3, #1
0079dcf0  2b 00 00 0a                                      beq #0x79dda4
0079dcf4  07 30 94 e7                                      ldr r3, [r4, r7]
0079dcf8  44 21 9d e5                                      ldr r2, [sp, #0x144]
0079dcfc  05 00 a0 e1                                      mov r0, r5
0079dd00  00 30 93 e5                                      ldr r3, [r3]
0079dd04  03 00 52 e1                                      cmp r2, r3
0079dd08  29 00 00 1a                                      bne #0x79ddb4
0079dd0c  52 df 8d e2                                      add sp, sp, #0x148
0079dd10  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0079dd14  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
0079dd18  38 11 9d e5                                      ldr r1, [sp, #0x138]
0079dd1c  85 d3 fe eb                                      bl #0x752b38
0079dd20  2b ff ff ea                                      b #0x79d9d4
0079dd24  28 01 9d e5                                      ldr r0, [sp, #0x128]
0079dd28  24 11 9d e5                                      ldr r1, [sp, #0x124]
0079dd2c  81 d3 fe eb                                      bl #0x752b38
0079dd30  3e ff ff ea                                      b #0x79da30
0079dd34  14 01 9d e5                                      ldr r0, [sp, #0x114]
0079dd38  10 11 9d e5                                      ldr r1, [sp, #0x110]
0079dd3c  7d d3 fe eb                                      bl #0x752b38
0079dd40  51 ff ff ea                                      b #0x79da8c
0079dd44  00 01 9d e5                                      ldr r0, [sp, #0x100]
0079dd48  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
0079dd4c  79 d3 fe eb                                      bl #0x752b38
0079dd50  63 ff ff ea                                      b #0x79dae4
0079dd54  ec 00 9d e5                                      ldr r0, [sp, #0xec]
0079dd58  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
0079dd5c  75 d3 fe eb                                      bl #0x752b38
0079dd60  75 ff ff ea                                      b #0x79db3c
0079dd64  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0079dd68  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0079dd6c  71 d3 fe eb                                      bl #0x752b38
0079dd70  87 ff ff ea                                      b #0x79db94
0079dd74  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
0079dd78  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0079dd7c  6d d3 fe eb                                      bl #0x752b38
0079dd80  99 ff ff ea                                      b #0x79dbec
0079dd84  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0079dd88  ac 10 9d e5                                      ldr r1, [sp, #0xac]
0079dd8c  69 d3 fe eb                                      bl #0x752b38
0079dd90  ab ff ff ea                                      b #0x79dc44
0079dd94  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0079dd98  98 10 9d e5                                      ldr r1, [sp, #0x98]
0079dd9c  65 d3 fe eb                                      bl #0x752b38
0079dda0  bd ff ff ea                                      b #0x79dc9c
0079dda4  88 00 9d e5                                      ldr r0, [sp, #0x88]
0079dda8  84 10 9d e5                                      ldr r1, [sp, #0x84]
0079ddac  61 d3 fe eb                                      bl #0x752b38
0079ddb0  cf ff ff ea                                      b #0x79dcf4
0079ddb4  55 c1 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079ddb8  78 71 1f 00 ac 40 00 00 a0 3c 00 00 48 c8 16 00  .byte 0x78, 0x71, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x3c, 0x00, 0x00, 0x48, 0xc8, 0x16, 0x00
0079ddc8  64 c8 16 00 bc 2a 00 00 10 c8 16 00 1c 41 00 00  .byte 0x64, 0xc8, 0x16, 0x00, 0xbc, 0x2a, 0x00, 0x00, 0x10, 0xc8, 0x16, 0x00, 0x1c, 0x41, 0x00, 0x00
0079ddd8  bc c7 16 00 f4 1e 00 00 70 c7 16 00 f4 25 00 00  .byte 0xbc, 0xc7, 0x16, 0x00, 0xf4, 0x1e, 0x00, 0x00, 0x70, 0xc7, 0x16, 0x00, 0xf4, 0x25, 0x00, 0x00
0079dde8  28 c7 16 00 64 33 00 00 e0 c6 16 00 bc 10 00 00  .byte 0x28, 0xc7, 0x16, 0x00, 0x64, 0x33, 0x00, 0x00, 0xe0, 0xc6, 0x16, 0x00, 0xbc, 0x10, 0x00, 0x00
0079ddf8  98 c6 16 00 30 11 00 00 50 c6 16 00 cc 47 00 00  .byte 0x98, 0xc6, 0x16, 0x00, 0x30, 0x11, 0x00, 0x00, 0x50, 0xc6, 0x16, 0x00, 0xcc, 0x47, 0x00, 0x00
0079de08  08 c6 16 00 7c 1d 00 00 b8 c5 16 00 3c 38 00 00  .byte 0x08, 0xc6, 0x16, 0x00, 0x7c, 0x1d, 0x00, 0x00, 0xb8, 0xc5, 0x16, 0x00, 0x3c, 0x38, 0x00, 0x00

; FUNCTION 0x0079de70, declared_size=1296, range_size=1296, mode=arm
; class-group: gameswf::as_date
; alias: _ZN7gameswf7as_dateC2ERKNS_7fn_callE
; demangled: gameswf::as_date::as_date(gameswf::fn_call const&)
; decoder-mode: arm
0079de70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079de74  a4 44 9f e5                                      ldr r4, [pc, #0x4a4]
0079de78  a4 74 9f e5                                      ldr r7, [pc, #0x4a4]
0079de7c  0c 80 91 e5                                      ldr r8, [r1, #0xc]
0079de80  04 40 8f e0                                      add r4, pc, r4
0079de84  07 30 94 e7                                      ldr r3, [r4, r7]
0079de88  52 df 4d e2                                      sub sp, sp, #0x148
0079de8c  00 50 a0 e1                                      mov r5, r0
0079de90  00 30 93 e5                                      ldr r3, [r3]
0079de94  64 00 88 e2                                      add r0, r8, #0x64
0079de98  01 60 a0 e1                                      mov r6, r1
0079de9c  44 31 8d e5                                      str r3, [sp, #0x144]
0079dea0  ee dc fe eb                                      bl #0x755260
0079dea4  68 10 98 e5                                      ldr r1, [r8, #0x68]
0079dea8  05 00 a0 e1                                      mov r0, r5
0079deac  8b 37 ff eb                                      bl #0x76bce0
0079deb0  70 34 9f e5                                      ldr r3, [pc, #0x470]
0079deb4  03 30 94 e7                                      ldr r3, [r4, r3]
0079deb8  08 30 83 e2                                      add r3, r3, #8
0079debc  00 30 85 e5                                      str r3, [r5]
0079dec0  0c 67 00 eb                                      bl #0x7b7af8
0079dec4  f8 03 c5 e1                                      strd r0, r1, [r5, #0x38]
0079dec8  10 30 96 e5                                      ldr r3, [r6, #0x10]
0079decc  00 00 53 e3                                      cmp r3, #0
0079ded0  02 00 00 da                                      ble #0x79dee0
0079ded4  50 04 9f e5                                      ldr r0, [pc, #0x450]
0079ded8  00 00 8f e0                                      add r0, pc, r0
0079dedc  a8 0c ff eb                                      bl #0x761184
0079dee0  48 14 9f e5                                      ldr r1, [pc, #0x448]
0079dee4  13 8e 8d e2                                      add r8, sp, #0x130
0079dee8  08 00 a0 e1                                      mov r0, r8
0079deec  01 10 8f e0                                      add r1, pc, r1
0079def0  e1 d6 f1 eb                                      bl #0x413a7c
0079def4  38 24 9f e5                                      ldr r2, [pc, #0x438]
0079def8  70 60 8d e2                                      add r6, sp, #0x70
0079defc  00 30 a0 e3                                      mov r3, #0
0079df00  02 10 94 e7                                      ldr r1, [r4, r2]
0079df04  06 00 a0 e1                                      mov r0, r6
0079df08  71 30 cd e5                                      strb r3, [sp, #0x71]
0079df0c  70 30 cd e5                                      strb r3, [sp, #0x70]
0079df10  e2 e4 ff eb                                      bl #0x7972a0
0079df14  06 20 a0 e1                                      mov r2, r6
0079df18  05 00 a0 e1                                      mov r0, r5
0079df1c  08 10 a0 e1                                      mov r1, r8
0079df20  0b 2b ff eb                                      bl #0x768b54
0079df24  06 00 a0 e1                                      mov r0, r6
0079df28  7d e4 ff eb                                      bl #0x797124
0079df2c  30 21 dd e5                                      ldrb r2, [sp, #0x130]
0079df30  72 30 af e6                                      sxtb r3, r2
0079df34  01 00 73 e3                                      cmn r3, #1
0079df38  cf 00 00 0a                                      beq #0x79e27c
0079df3c  f4 13 9f e5                                      ldr r1, [pc, #0x3f4]
0079df40  47 8f 8d e2                                      add r8, sp, #0x11c
0079df44  08 00 a0 e1                                      mov r0, r8
0079df48  01 10 8f e0                                      add r1, pc, r1
0079df4c  ca d6 f1 eb                                      bl #0x413a7c
0079df50  e4 23 9f e5                                      ldr r2, [pc, #0x3e4]
0079df54  64 60 8d e2                                      add r6, sp, #0x64
0079df58  00 30 a0 e3                                      mov r3, #0
0079df5c  02 10 94 e7                                      ldr r1, [r4, r2]
0079df60  06 00 a0 e1                                      mov r0, r6
0079df64  65 30 cd e5                                      strb r3, [sp, #0x65]
0079df68  64 30 cd e5                                      strb r3, [sp, #0x64]
0079df6c  cb e4 ff eb                                      bl #0x7972a0
0079df70  06 20 a0 e1                                      mov r2, r6
0079df74  05 00 a0 e1                                      mov r0, r5
0079df78  08 10 a0 e1                                      mov r1, r8
0079df7c  f4 2a ff eb                                      bl #0x768b54
0079df80  06 00 a0 e1                                      mov r0, r6
0079df84  66 e4 ff eb                                      bl #0x797124
0079df88  1c 21 dd e5                                      ldrb r2, [sp, #0x11c]
0079df8c  72 30 af e6                                      sxtb r3, r2
0079df90  01 00 73 e3                                      cmn r3, #1
0079df94  bc 00 00 0a                                      beq #0x79e28c
0079df98  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
0079df9c  42 8f 8d e2                                      add r8, sp, #0x108
0079dfa0  08 00 a0 e1                                      mov r0, r8
0079dfa4  01 10 8f e0                                      add r1, pc, r1
0079dfa8  b3 d6 f1 eb                                      bl #0x413a7c
0079dfac  90 23 9f e5                                      ldr r2, [pc, #0x390]
0079dfb0  58 60 8d e2                                      add r6, sp, #0x58
0079dfb4  00 30 a0 e3                                      mov r3, #0
0079dfb8  02 10 94 e7                                      ldr r1, [r4, r2]
0079dfbc  06 00 a0 e1                                      mov r0, r6
0079dfc0  59 30 cd e5                                      strb r3, [sp, #0x59]
0079dfc4  58 30 cd e5                                      strb r3, [sp, #0x58]
0079dfc8  b4 e4 ff eb                                      bl #0x7972a0
0079dfcc  06 20 a0 e1                                      mov r2, r6
0079dfd0  05 00 a0 e1                                      mov r0, r5
0079dfd4  08 10 a0 e1                                      mov r1, r8
0079dfd8  dd 2a ff eb                                      bl #0x768b54
0079dfdc  06 00 a0 e1                                      mov r0, r6
0079dfe0  4f e4 ff eb                                      bl #0x797124
0079dfe4  08 21 dd e5                                      ldrb r2, [sp, #0x108]
0079dfe8  72 30 af e6                                      sxtb r3, r2
0079dfec  01 00 73 e3                                      cmn r3, #1
0079dff0  a9 00 00 0a                                      beq #0x79e29c
0079dff4  4c 13 9f e5                                      ldr r1, [pc, #0x34c]
0079dff8  f4 80 8d e2                                      add r8, sp, #0xf4
0079dffc  08 00 a0 e1                                      mov r0, r8
0079e000  01 10 8f e0                                      add r1, pc, r1
0079e004  9c d6 f1 eb                                      bl #0x413a7c
0079e008  3c 23 9f e5                                      ldr r2, [pc, #0x33c]
0079e00c  4c 60 8d e2                                      add r6, sp, #0x4c
0079e010  00 30 a0 e3                                      mov r3, #0
0079e014  02 10 94 e7                                      ldr r1, [r4, r2]
0079e018  06 00 a0 e1                                      mov r0, r6
0079e01c  4d 30 cd e5                                      strb r3, [sp, #0x4d]
0079e020  4c 30 cd e5                                      strb r3, [sp, #0x4c]
0079e024  9d e4 ff eb                                      bl #0x7972a0
0079e028  05 00 a0 e1                                      mov r0, r5
0079e02c  08 10 a0 e1                                      mov r1, r8
0079e030  06 20 a0 e1                                      mov r2, r6
0079e034  c6 2a ff eb                                      bl #0x768b54
0079e038  06 00 a0 e1                                      mov r0, r6
0079e03c  38 e4 ff eb                                      bl #0x797124
0079e040  d4 3f dd e1                                      ldrsb r3, [sp, #0xf4]
0079e044  01 00 73 e3                                      cmn r3, #1
0079e048  97 00 00 0a                                      beq #0x79e2ac
0079e04c  fc 12 9f e5                                      ldr r1, [pc, #0x2fc]
0079e050  e0 80 8d e2                                      add r8, sp, #0xe0
0079e054  08 00 a0 e1                                      mov r0, r8
0079e058  01 10 8f e0                                      add r1, pc, r1
0079e05c  86 d6 f1 eb                                      bl #0x413a7c
0079e060  ec 22 9f e5                                      ldr r2, [pc, #0x2ec]
0079e064  40 60 8d e2                                      add r6, sp, #0x40
0079e068  00 30 a0 e3                                      mov r3, #0
0079e06c  02 10 94 e7                                      ldr r1, [r4, r2]
0079e070  06 00 a0 e1                                      mov r0, r6
0079e074  41 30 cd e5                                      strb r3, [sp, #0x41]
0079e078  40 30 cd e5                                      strb r3, [sp, #0x40]
0079e07c  87 e4 ff eb                                      bl #0x7972a0
0079e080  05 00 a0 e1                                      mov r0, r5
0079e084  08 10 a0 e1                                      mov r1, r8
0079e088  06 20 a0 e1                                      mov r2, r6
0079e08c  b0 2a ff eb                                      bl #0x768b54
0079e090  06 00 a0 e1                                      mov r0, r6
0079e094  22 e4 ff eb                                      bl #0x797124
0079e098  d0 3e dd e1                                      ldrsb r3, [sp, #0xe0]
0079e09c  01 00 73 e3                                      cmn r3, #1
0079e0a0  85 00 00 0a                                      beq #0x79e2bc
0079e0a4  ac 12 9f e5                                      ldr r1, [pc, #0x2ac]
0079e0a8  cc 80 8d e2                                      add r8, sp, #0xcc
0079e0ac  08 00 a0 e1                                      mov r0, r8
0079e0b0  01 10 8f e0                                      add r1, pc, r1
0079e0b4  70 d6 f1 eb                                      bl #0x413a7c
0079e0b8  9c 22 9f e5                                      ldr r2, [pc, #0x29c]
0079e0bc  34 60 8d e2                                      add r6, sp, #0x34
0079e0c0  00 30 a0 e3                                      mov r3, #0
0079e0c4  02 10 94 e7                                      ldr r1, [r4, r2]
0079e0c8  06 00 a0 e1                                      mov r0, r6
0079e0cc  35 30 cd e5                                      strb r3, [sp, #0x35]
0079e0d0  34 30 cd e5                                      strb r3, [sp, #0x34]
0079e0d4  71 e4 ff eb                                      bl #0x7972a0
0079e0d8  05 00 a0 e1                                      mov r0, r5
0079e0dc  08 10 a0 e1                                      mov r1, r8
0079e0e0  06 20 a0 e1                                      mov r2, r6
0079e0e4  9a 2a ff eb                                      bl #0x768b54
0079e0e8  06 00 a0 e1                                      mov r0, r6
0079e0ec  0c e4 ff eb                                      bl #0x797124
0079e0f0  dc 3c dd e1                                      ldrsb r3, [sp, #0xcc]
0079e0f4  01 00 73 e3                                      cmn r3, #1
0079e0f8  73 00 00 0a                                      beq #0x79e2cc
0079e0fc  5c 12 9f e5                                      ldr r1, [pc, #0x25c]
0079e100  b8 80 8d e2                                      add r8, sp, #0xb8
0079e104  08 00 a0 e1                                      mov r0, r8
0079e108  01 10 8f e0                                      add r1, pc, r1
0079e10c  5a d6 f1 eb                                      bl #0x413a7c
0079e110  4c 22 9f e5                                      ldr r2, [pc, #0x24c]
0079e114  28 60 8d e2                                      add r6, sp, #0x28
0079e118  00 30 a0 e3                                      mov r3, #0
0079e11c  02 10 94 e7                                      ldr r1, [r4, r2]
0079e120  06 00 a0 e1                                      mov r0, r6
0079e124  29 30 cd e5                                      strb r3, [sp, #0x29]
0079e128  28 30 cd e5                                      strb r3, [sp, #0x28]
0079e12c  5b e4 ff eb                                      bl #0x7972a0
0079e130  05 00 a0 e1                                      mov r0, r5
0079e134  08 10 a0 e1                                      mov r1, r8
0079e138  06 20 a0 e1                                      mov r2, r6
0079e13c  84 2a ff eb                                      bl #0x768b54
0079e140  06 00 a0 e1                                      mov r0, r6
0079e144  f6 e3 ff eb                                      bl #0x797124
0079e148  d8 3b dd e1                                      ldrsb r3, [sp, #0xb8]
0079e14c  01 00 73 e3                                      cmn r3, #1
0079e150  61 00 00 0a                                      beq #0x79e2dc
0079e154  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
0079e158  a4 80 8d e2                                      add r8, sp, #0xa4
0079e15c  08 00 a0 e1                                      mov r0, r8
0079e160  01 10 8f e0                                      add r1, pc, r1
0079e164  44 d6 f1 eb                                      bl #0x413a7c
0079e168  fc 21 9f e5                                      ldr r2, [pc, #0x1fc]
0079e16c  1c 60 8d e2                                      add r6, sp, #0x1c
0079e170  00 30 a0 e3                                      mov r3, #0
0079e174  02 10 94 e7                                      ldr r1, [r4, r2]
0079e178  06 00 a0 e1                                      mov r0, r6
0079e17c  1d 30 cd e5                                      strb r3, [sp, #0x1d]
0079e180  1c 30 cd e5                                      strb r3, [sp, #0x1c]
0079e184  45 e4 ff eb                                      bl #0x7972a0
0079e188  05 00 a0 e1                                      mov r0, r5
0079e18c  08 10 a0 e1                                      mov r1, r8
0079e190  06 20 a0 e1                                      mov r2, r6
0079e194  6e 2a ff eb                                      bl #0x768b54
0079e198  06 00 a0 e1                                      mov r0, r6
0079e19c  e0 e3 ff eb                                      bl #0x797124
0079e1a0  d4 3a dd e1                                      ldrsb r3, [sp, #0xa4]
0079e1a4  01 00 73 e3                                      cmn r3, #1
0079e1a8  4f 00 00 0a                                      beq #0x79e2ec
0079e1ac  bc 11 9f e5                                      ldr r1, [pc, #0x1bc]
0079e1b0  90 80 8d e2                                      add r8, sp, #0x90
0079e1b4  08 00 a0 e1                                      mov r0, r8
0079e1b8  01 10 8f e0                                      add r1, pc, r1
0079e1bc  2e d6 f1 eb                                      bl #0x413a7c
0079e1c0  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
0079e1c4  10 60 8d e2                                      add r6, sp, #0x10
0079e1c8  00 30 a0 e3                                      mov r3, #0
0079e1cc  02 10 94 e7                                      ldr r1, [r4, r2]
0079e1d0  06 00 a0 e1                                      mov r0, r6
0079e1d4  11 30 cd e5                                      strb r3, [sp, #0x11]
0079e1d8  10 30 cd e5                                      strb r3, [sp, #0x10]
0079e1dc  2f e4 ff eb                                      bl #0x7972a0
0079e1e0  05 00 a0 e1                                      mov r0, r5
0079e1e4  08 10 a0 e1                                      mov r1, r8
0079e1e8  06 20 a0 e1                                      mov r2, r6
0079e1ec  58 2a ff eb                                      bl #0x768b54
0079e1f0  06 00 a0 e1                                      mov r0, r6
0079e1f4  ca e3 ff eb                                      bl #0x797124
0079e1f8  d0 39 dd e1                                      ldrsb r3, [sp, #0x90]
0079e1fc  01 00 73 e3                                      cmn r3, #1
0079e200  3d 00 00 0a                                      beq #0x79e2fc
0079e204  6c 11 9f e5                                      ldr r1, [pc, #0x16c]
0079e208  7c 80 8d e2                                      add r8, sp, #0x7c
0079e20c  08 00 a0 e1                                      mov r0, r8
0079e210  01 10 8f e0                                      add r1, pc, r1
0079e214  18 d6 f1 eb                                      bl #0x413a7c
0079e218  5c 21 9f e5                                      ldr r2, [pc, #0x15c]
0079e21c  04 60 8d e2                                      add r6, sp, #4
0079e220  00 30 a0 e3                                      mov r3, #0
0079e224  02 10 94 e7                                      ldr r1, [r4, r2]
0079e228  06 00 a0 e1                                      mov r0, r6
0079e22c  05 30 cd e5                                      strb r3, [sp, #5]
0079e230  04 30 cd e5                                      strb r3, [sp, #4]
0079e234  19 e4 ff eb                                      bl #0x7972a0
0079e238  05 00 a0 e1                                      mov r0, r5
0079e23c  08 10 a0 e1                                      mov r1, r8
0079e240  06 20 a0 e1                                      mov r2, r6
0079e244  42 2a ff eb                                      bl #0x768b54
0079e248  06 00 a0 e1                                      mov r0, r6
0079e24c  b4 e3 ff eb                                      bl #0x797124
0079e250  dc 37 dd e1                                      ldrsb r3, [sp, #0x7c]
0079e254  01 00 73 e3                                      cmn r3, #1
0079e258  2b 00 00 0a                                      beq #0x79e30c
0079e25c  07 30 94 e7                                      ldr r3, [r4, r7]
0079e260  44 21 9d e5                                      ldr r2, [sp, #0x144]
0079e264  05 00 a0 e1                                      mov r0, r5
0079e268  00 30 93 e5                                      ldr r3, [r3]
0079e26c  03 00 52 e1                                      cmp r2, r3
0079e270  29 00 00 1a                                      bne #0x79e31c
0079e274  52 df 8d e2                                      add sp, sp, #0x148
0079e278  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0079e27c  3c 01 9d e5                                      ldr r0, [sp, #0x13c]
0079e280  38 11 9d e5                                      ldr r1, [sp, #0x138]
0079e284  2b d2 fe eb                                      bl #0x752b38
0079e288  2b ff ff ea                                      b #0x79df3c
0079e28c  28 01 9d e5                                      ldr r0, [sp, #0x128]
0079e290  24 11 9d e5                                      ldr r1, [sp, #0x124]
0079e294  27 d2 fe eb                                      bl #0x752b38
0079e298  3e ff ff ea                                      b #0x79df98
0079e29c  14 01 9d e5                                      ldr r0, [sp, #0x114]
0079e2a0  10 11 9d e5                                      ldr r1, [sp, #0x110]
0079e2a4  23 d2 fe eb                                      bl #0x752b38
0079e2a8  51 ff ff ea                                      b #0x79dff4
0079e2ac  00 01 9d e5                                      ldr r0, [sp, #0x100]
0079e2b0  fc 10 9d e5                                      ldr r1, [sp, #0xfc]
0079e2b4  1f d2 fe eb                                      bl #0x752b38
0079e2b8  63 ff ff ea                                      b #0x79e04c
0079e2bc  ec 00 9d e5                                      ldr r0, [sp, #0xec]
0079e2c0  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
0079e2c4  1b d2 fe eb                                      bl #0x752b38
0079e2c8  75 ff ff ea                                      b #0x79e0a4
0079e2cc  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
0079e2d0  d4 10 9d e5                                      ldr r1, [sp, #0xd4]
0079e2d4  17 d2 fe eb                                      bl #0x752b38
0079e2d8  87 ff ff ea                                      b #0x79e0fc
0079e2dc  c4 00 9d e5                                      ldr r0, [sp, #0xc4]
0079e2e0  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
0079e2e4  13 d2 fe eb                                      bl #0x752b38
0079e2e8  99 ff ff ea                                      b #0x79e154
0079e2ec  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
0079e2f0  ac 10 9d e5                                      ldr r1, [sp, #0xac]
0079e2f4  0f d2 fe eb                                      bl #0x752b38
0079e2f8  ab ff ff ea                                      b #0x79e1ac
0079e2fc  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0079e300  98 10 9d e5                                      ldr r1, [sp, #0x98]
0079e304  0b d2 fe eb                                      bl #0x752b38
0079e308  bd ff ff ea                                      b #0x79e204
0079e30c  88 00 9d e5                                      ldr r0, [sp, #0x88]
0079e310  84 10 9d e5                                      ldr r1, [sp, #0x84]
0079e314  07 d2 fe eb                                      bl #0x752b38
0079e318  cf ff ff ea                                      b #0x79e25c
0079e31c  fb bf ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079e320  10 6c 1f 00 ac 40 00 00 a0 3c 00 00 e0 c2 16 00  .byte 0x10, 0x6c, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x3c, 0x00, 0x00, 0xe0, 0xc2, 0x16, 0x00
0079e330  fc c2 16 00 bc 2a 00 00 a8 c2 16 00 1c 41 00 00  .byte 0xfc, 0xc2, 0x16, 0x00, 0xbc, 0x2a, 0x00, 0x00, 0xa8, 0xc2, 0x16, 0x00, 0x1c, 0x41, 0x00, 0x00
0079e340  54 c2 16 00 f4 1e 00 00 08 c2 16 00 f4 25 00 00  .byte 0x54, 0xc2, 0x16, 0x00, 0xf4, 0x1e, 0x00, 0x00, 0x08, 0xc2, 0x16, 0x00, 0xf4, 0x25, 0x00, 0x00
0079e350  c0 c1 16 00 64 33 00 00 78 c1 16 00 bc 10 00 00  .byte 0xc0, 0xc1, 0x16, 0x00, 0x64, 0x33, 0x00, 0x00, 0x78, 0xc1, 0x16, 0x00, 0xbc, 0x10, 0x00, 0x00
0079e360  30 c1 16 00 30 11 00 00 e8 c0 16 00 cc 47 00 00  .byte 0x30, 0xc1, 0x16, 0x00, 0x30, 0x11, 0x00, 0x00, 0xe8, 0xc0, 0x16, 0x00, 0xcc, 0x47, 0x00, 0x00
0079e370  a0 c0 16 00 7c 1d 00 00 50 c0 16 00 3c 38 00 00  .byte 0xa0, 0xc0, 0x16, 0x00, 0x7c, 0x1d, 0x00, 0x00, 0x50, 0xc0, 0x16, 0x00, 0x3c, 0x38, 0x00, 0x00
