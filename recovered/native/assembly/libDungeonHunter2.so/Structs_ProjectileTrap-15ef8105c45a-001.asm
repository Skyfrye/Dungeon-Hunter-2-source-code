; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9e24, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ProjectileTrap
; alias: _ZN7Structs14ProjectileTrap8finalizeEv
; demangled: Structs::ProjectileTrap::finalize()
; decoder-mode: arm
004d9e24  10 40 2d e9                                      push {r4, lr}
004d9e28  00 40 a0 e1                                      mov r4, r0
004d9e2c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
004d9e30  00 00 50 e3                                      cmp r0, #0
004d9e34  03 00 00 0a                                      beq #0x4d9e48
004d9e38  80 d9 f8 eb                                      bl #0x310440
004d9e3c  00 30 a0 e3                                      mov r3, #0
004d9e40  18 30 84 e5                                      str r3, [r4, #0x18]
004d9e44  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d9e48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9e4c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ProjectileTrap
; alias: _ZN7Structs14ProjectileTrapD1Ev
; demangled: Structs::ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
004d9e4c  10 40 2d e9                                      push {r4, lr}
004d9e50  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9e54  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9e58  00 40 a0 e1                                      mov r4, r0
004d9e5c  03 30 8f e0                                      add r3, pc, r3
004d9e60  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
004d9e64  02 20 93 e7                                      ldr r2, [r3, r2]
004d9e68  00 00 50 e3                                      cmp r0, #0
004d9e6c  08 20 82 e2                                      add r2, r2, #8
004d9e70  00 20 84 e5                                      str r2, [r4]
004d9e74  00 00 00 0a                                      beq #0x4d9e7c
004d9e78  70 d9 f8 eb                                      bl #0x310440
004d9e7c  04 00 a0 e1                                      mov r0, r4
004d9e80  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9e84  34 ac 4b 00 20 36 00 00                          .byte 0x34, 0xac, 0x4b, 0x00, 0x20, 0x36, 0x00, 0x00

; FUNCTION 0x004d9e8c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ProjectileTrap
; alias: _ZN7Structs14ProjectileTrapD0Ev
; demangled: Structs::ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
004d9e8c  10 40 2d e9                                      push {r4, lr}
004d9e90  00 40 a0 e1                                      mov r4, r0
004d9e94  ec ff ff eb                                      bl #0x4d9e4c
004d9e98  04 00 a0 e1                                      mov r0, r4
004d9e9c  67 d9 f8 eb                                      bl #0x310440
004d9ea0  04 00 a0 e1                                      mov r0, r4
004d9ea4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9ea8, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ProjectileTrap
; alias: _ZN7Structs14ProjectileTrapD2Ev
; demangled: Structs::ProjectileTrap::~ProjectileTrap()
; decoder-mode: arm
004d9ea8  10 40 2d e9                                      push {r4, lr}
004d9eac  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9eb0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9eb4  00 40 a0 e1                                      mov r4, r0
004d9eb8  03 30 8f e0                                      add r3, pc, r3
004d9ebc  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
004d9ec0  02 20 93 e7                                      ldr r2, [r3, r2]
004d9ec4  00 00 50 e3                                      cmp r0, #0
004d9ec8  08 20 82 e2                                      add r2, r2, #8
004d9ecc  00 20 84 e5                                      str r2, [r4]
004d9ed0  00 00 00 0a                                      beq #0x4d9ed8
004d9ed4  59 d9 f8 eb                                      bl #0x310440
004d9ed8  04 00 a0 e1                                      mov r0, r4
004d9edc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9ee0  d8 ab 4b 00 20 36 00 00                          .byte 0xd8, 0xab, 0x4b, 0x00, 0x20, 0x36, 0x00, 0x00

; FUNCTION 0x004fd8a0, declared_size=752, range_size=752, mode=arm
; class-group: Structs::ProjectileTrap
; alias: _ZN7Structs14ProjectileTrap4readEP11IStreamBase
; demangled: Structs::ProjectileTrap::read(IStreamBase*)
; decoder-mode: arm
004fd8a0  70 40 2d e9                                      push {r4, r5, r6, lr}
004fd8a4  00 40 a0 e1                                      mov r4, r0
004fd8a8  08 d0 4d e2                                      sub sp, sp, #8
004fd8ac  01 00 a0 e1                                      mov r0, r1
004fd8b0  01 50 a0 e1                                      mov r5, r1
004fd8b4  04 10 84 e2                                      add r1, r4, #4
004fd8b8  f4 6d fd eb                                      bl #0x459090
004fd8bc  01 30 a0 e3                                      mov r3, #1
004fd8c0  00 00 53 e3                                      cmp r3, #0
004fd8c4  04 30 8d e5                                      str r3, [sp, #4]
004fd8c8  0f 00 00 1a                                      bne #0x4fd90c
004fd8cc  05 30 84 e2                                      add r3, r4, #5
004fd8d0  06 20 84 e2                                      add r2, r4, #6
004fd8d4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd8d8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd8dc  02 00 53 e1                                      cmp r3, r2
004fd8e0  01 10 20 e0                                      eor r1, r0, r1
004fd8e4  01 10 43 e5                                      strb r1, [r3, #-1]
004fd8e8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd8ec  00 10 21 e0                                      eor r1, r1, r0
004fd8f0  01 10 c2 e5                                      strb r1, [r2, #1]
004fd8f4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd8f8  01 20 42 e2                                      sub r2, r2, #1
004fd8fc  00 10 21 e0                                      eor r1, r1, r0
004fd900  01 10 43 e5                                      strb r1, [r3, #-1]
004fd904  01 30 83 e2                                      add r3, r3, #1
004fd908  f1 ff ff 3a                                      blo #0x4fd8d4
004fd90c  05 00 a0 e1                                      mov r0, r5
004fd910  08 10 84 e2                                      add r1, r4, #8
004fd914  dd 6d fd eb                                      bl #0x459090
004fd918  01 30 a0 e3                                      mov r3, #1
004fd91c  00 00 53 e3                                      cmp r3, #0
004fd920  04 30 8d e5                                      str r3, [sp, #4]
004fd924  0f 00 00 1a                                      bne #0x4fd968
004fd928  09 30 84 e2                                      add r3, r4, #9
004fd92c  0a 20 84 e2                                      add r2, r4, #0xa
004fd930  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd934  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd938  02 00 53 e1                                      cmp r3, r2
004fd93c  01 10 20 e0                                      eor r1, r0, r1
004fd940  01 10 43 e5                                      strb r1, [r3, #-1]
004fd944  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd948  00 10 21 e0                                      eor r1, r1, r0
004fd94c  01 10 c2 e5                                      strb r1, [r2, #1]
004fd950  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd954  01 20 42 e2                                      sub r2, r2, #1
004fd958  00 10 21 e0                                      eor r1, r1, r0
004fd95c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd960  01 30 83 e2                                      add r3, r3, #1
004fd964  f1 ff ff 3a                                      blo #0x4fd930
004fd968  05 00 a0 e1                                      mov r0, r5
004fd96c  0c 10 84 e2                                      add r1, r4, #0xc
004fd970  c6 6d fd eb                                      bl #0x459090
004fd974  01 30 a0 e3                                      mov r3, #1
004fd978  00 00 53 e3                                      cmp r3, #0
004fd97c  04 30 8d e5                                      str r3, [sp, #4]
004fd980  0f 00 00 1a                                      bne #0x4fd9c4
004fd984  0d 30 84 e2                                      add r3, r4, #0xd
004fd988  0e 20 84 e2                                      add r2, r4, #0xe
004fd98c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd990  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd994  02 00 53 e1                                      cmp r3, r2
004fd998  01 10 20 e0                                      eor r1, r0, r1
004fd99c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd9a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd9a4  00 10 21 e0                                      eor r1, r1, r0
004fd9a8  01 10 c2 e5                                      strb r1, [r2, #1]
004fd9ac  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd9b0  01 20 42 e2                                      sub r2, r2, #1
004fd9b4  00 10 21 e0                                      eor r1, r1, r0
004fd9b8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd9bc  01 30 83 e2                                      add r3, r3, #1
004fd9c0  f1 ff ff 3a                                      blo #0x4fd98c
004fd9c4  10 10 84 e2                                      add r1, r4, #0x10
004fd9c8  05 00 a0 e1                                      mov r0, r5
004fd9cc  b2 77 ff eb                                      bl #0x4db89c
004fd9d0  05 00 a0 e1                                      mov r0, r5
004fd9d4  14 10 84 e2                                      add r1, r4, #0x14
004fd9d8  ac 6d fd eb                                      bl #0x459090
004fd9dc  01 30 a0 e3                                      mov r3, #1
004fd9e0  00 00 53 e3                                      cmp r3, #0
004fd9e4  04 30 8d e5                                      str r3, [sp, #4]
004fd9e8  0f 00 00 1a                                      bne #0x4fda2c
004fd9ec  15 30 84 e2                                      add r3, r4, #0x15
004fd9f0  16 20 84 e2                                      add r2, r4, #0x16
004fd9f4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd9f8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd9fc  02 00 53 e1                                      cmp r3, r2
004fda00  01 10 20 e0                                      eor r1, r0, r1
004fda04  01 10 43 e5                                      strb r1, [r3, #-1]
004fda08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fda0c  00 10 21 e0                                      eor r1, r1, r0
004fda10  01 10 c2 e5                                      strb r1, [r2, #1]
004fda14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fda18  01 20 42 e2                                      sub r2, r2, #1
004fda1c  00 10 21 e0                                      eor r1, r1, r0
004fda20  01 10 43 e5                                      strb r1, [r3, #-1]
004fda24  01 30 83 e2                                      add r3, r3, #1
004fda28  f1 ff ff 3a                                      blo #0x4fd9f4
004fda2c  05 00 a0 e1                                      mov r0, r5
004fda30  18 10 84 e2                                      add r1, r4, #0x18
004fda34  d9 85 fb eb                                      bl #0x3df1a0
004fda38  01 30 a0 e3                                      mov r3, #1
004fda3c  00 00 53 e3                                      cmp r3, #0
004fda40  04 30 8d e5                                      str r3, [sp, #4]
004fda44  0f 00 00 1a                                      bne #0x4fda88
004fda48  19 30 84 e2                                      add r3, r4, #0x19
004fda4c  1a 20 84 e2                                      add r2, r4, #0x1a
004fda50  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fda54  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fda58  02 00 53 e1                                      cmp r3, r2
004fda5c  01 10 20 e0                                      eor r1, r0, r1
004fda60  01 10 43 e5                                      strb r1, [r3, #-1]
004fda64  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fda68  00 10 21 e0                                      eor r1, r1, r0
004fda6c  01 10 c2 e5                                      strb r1, [r2, #1]
004fda70  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fda74  01 20 42 e2                                      sub r2, r2, #1
004fda78  00 10 21 e0                                      eor r1, r1, r0
004fda7c  01 10 43 e5                                      strb r1, [r3, #-1]
004fda80  01 30 83 e2                                      add r3, r3, #1
004fda84  f1 ff ff 3a                                      blo #0x4fda50
004fda88  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004fda8c  00 00 50 e3                                      cmp r0, #0
004fda90  00 00 00 0a                                      beq #0x4fda98
004fda94  69 4a f8 eb                                      bl #0x310440
004fda98  18 00 94 e5                                      ldr r0, [r4, #0x18]
004fda9c  01 10 a0 e3                                      mov r1, #1
004fdaa0  00 60 a0 e3                                      mov r6, #0
004fdaa4  01 00 80 e0                                      add r0, r0, r1
004fdaa8  af 4a f8 eb                                      bl #0x31056c
004fdaac  18 20 94 e5                                      ldr r2, [r4, #0x18]
004fdab0  00 10 a0 e1                                      mov r1, r0
004fdab4  1c 00 84 e5                                      str r0, [r4, #0x1c]
004fdab8  06 30 a0 e1                                      mov r3, r6
004fdabc  05 00 a0 e1                                      mov r0, r5
004fdac0  63 66 f8 eb                                      bl #0x317454
004fdac4  18 30 94 e5                                      ldr r3, [r4, #0x18]
004fdac8  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
004fdacc  05 00 a0 e1                                      mov r0, r5
004fdad0  20 10 84 e2                                      add r1, r4, #0x20
004fdad4  03 60 c2 e7                                      strb r6, [r2, r3]
004fdad8  6c 6d fd eb                                      bl #0x459090
004fdadc  01 30 a0 e3                                      mov r3, #1
004fdae0  06 00 53 e1                                      cmp r3, r6
004fdae4  04 30 8d e5                                      str r3, [sp, #4]
004fdae8  0f 00 00 1a                                      bne #0x4fdb2c
004fdaec  21 30 84 e2                                      add r3, r4, #0x21
004fdaf0  22 20 84 e2                                      add r2, r4, #0x22
004fdaf4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdaf8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fdafc  02 00 53 e1                                      cmp r3, r2
004fdb00  01 10 20 e0                                      eor r1, r0, r1
004fdb04  01 10 43 e5                                      strb r1, [r3, #-1]
004fdb08  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fdb0c  00 10 21 e0                                      eor r1, r1, r0
004fdb10  01 10 c2 e5                                      strb r1, [r2, #1]
004fdb14  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fdb18  01 20 42 e2                                      sub r2, r2, #1
004fdb1c  00 10 21 e0                                      eor r1, r1, r0
004fdb20  01 10 43 e5                                      strb r1, [r3, #-1]
004fdb24  01 30 83 e2                                      add r3, r3, #1
004fdb28  f1 ff ff 3a                                      blo #0x4fdaf4
004fdb2c  05 00 a0 e1                                      mov r0, r5
004fdb30  24 10 84 e2                                      add r1, r4, #0x24
004fdb34  55 6d fd eb                                      bl #0x459090
004fdb38  01 30 a0 e3                                      mov r3, #1
004fdb3c  00 00 53 e3                                      cmp r3, #0
004fdb40  04 30 8d e5                                      str r3, [sp, #4]
004fdb44  0f 00 00 1a                                      bne #0x4fdb88
004fdb48  26 30 84 e2                                      add r3, r4, #0x26
004fdb4c  25 40 84 e2                                      add r4, r4, #0x25
004fdb50  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fdb54  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fdb58  03 00 54 e1                                      cmp r4, r3
004fdb5c  02 20 21 e0                                      eor r2, r1, r2
004fdb60  01 20 44 e5                                      strb r2, [r4, #-1]
004fdb64  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fdb68  01 20 22 e0                                      eor r2, r2, r1
004fdb6c  01 20 c3 e5                                      strb r2, [r3, #1]
004fdb70  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fdb74  01 30 43 e2                                      sub r3, r3, #1
004fdb78  01 20 22 e0                                      eor r2, r2, r1
004fdb7c  01 20 44 e5                                      strb r2, [r4, #-1]
004fdb80  01 40 84 e2                                      add r4, r4, #1
004fdb84  f1 ff ff 3a                                      blo #0x4fdb50
004fdb88  08 d0 8d e2                                      add sp, sp, #8
004fdb8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
