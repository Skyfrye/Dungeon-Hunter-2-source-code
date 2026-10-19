; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0e1c, declared_size=40, range_size=40, mode=arm
; class-group: Structs::Sound
; alias: _ZN7Structs5Sound8finalizeEv
; demangled: Structs::Sound::finalize()
; decoder-mode: arm
004d0e1c  10 40 2d e9                                      push {r4, lr}
004d0e20  00 40 a0 e1                                      mov r4, r0
004d0e24  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d0e28  00 00 50 e3                                      cmp r0, #0
004d0e2c  03 00 00 0a                                      beq #0x4d0e40
004d0e30  82 fd f8 eb                                      bl #0x310440
004d0e34  00 30 a0 e3                                      mov r3, #0
004d0e38  0c 30 84 e5                                      str r3, [r4, #0xc]
004d0e3c  10 30 84 e5                                      str r3, [r4, #0x10]
004d0e40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0e44, declared_size=64, range_size=64, mode=arm
; class-group: Structs::Sound
; alias: _ZN7Structs5SoundD1Ev
; demangled: Structs::Sound::~Sound()
; decoder-mode: arm
004d0e44  10 40 2d e9                                      push {r4, lr}
004d0e48  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d0e4c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d0e50  00 40 a0 e1                                      mov r4, r0
004d0e54  03 30 8f e0                                      add r3, pc, r3
004d0e58  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d0e5c  02 20 93 e7                                      ldr r2, [r3, r2]
004d0e60  00 00 50 e3                                      cmp r0, #0
004d0e64  08 20 82 e2                                      add r2, r2, #8
004d0e68  00 20 84 e5                                      str r2, [r4]
004d0e6c  00 00 00 0a                                      beq #0x4d0e74
004d0e70  72 fd f8 eb                                      bl #0x310440
004d0e74  04 00 a0 e1                                      mov r0, r4
004d0e78  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0e7c  3c 3c 4c 00 d4 3a 00 00                          .byte 0x3c, 0x3c, 0x4c, 0x00, 0xd4, 0x3a, 0x00, 0x00

; FUNCTION 0x004d0e84, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Sound
; alias: _ZN7Structs5SoundD0Ev
; demangled: Structs::Sound::~Sound()
; decoder-mode: arm
004d0e84  10 40 2d e9                                      push {r4, lr}
004d0e88  00 40 a0 e1                                      mov r4, r0
004d0e8c  ec ff ff eb                                      bl #0x4d0e44
004d0e90  04 00 a0 e1                                      mov r0, r4
004d0e94  69 fd f8 eb                                      bl #0x310440
004d0e98  04 00 a0 e1                                      mov r0, r4
004d0e9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0ea0, declared_size=64, range_size=64, mode=arm
; class-group: Structs::Sound
; alias: _ZN7Structs5SoundD2Ev
; demangled: Structs::Sound::~Sound()
; decoder-mode: arm
004d0ea0  10 40 2d e9                                      push {r4, lr}
004d0ea4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d0ea8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d0eac  00 40 a0 e1                                      mov r4, r0
004d0eb0  03 30 8f e0                                      add r3, pc, r3
004d0eb4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d0eb8  02 20 93 e7                                      ldr r2, [r3, r2]
004d0ebc  00 00 50 e3                                      cmp r0, #0
004d0ec0  08 20 82 e2                                      add r2, r2, #8
004d0ec4  00 20 84 e5                                      str r2, [r4]
004d0ec8  00 00 00 0a                                      beq #0x4d0ed0
004d0ecc  5b fd f8 eb                                      bl #0x310440
004d0ed0  04 00 a0 e1                                      mov r0, r4
004d0ed4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0ed8  e0 3b 4c 00 d4 3a 00 00                          .byte 0xe0, 0x3b, 0x4c, 0x00, 0xd4, 0x3a, 0x00, 0x00

; FUNCTION 0x004eb89c, declared_size=924, range_size=924, mode=arm
; class-group: Structs::Sound
; alias: _ZN7Structs5Sound4readEP11IStreamBase
; demangled: Structs::Sound::read(IStreamBase*)
; decoder-mode: arm
004eb89c  70 40 2d e9                                      push {r4, r5, r6, lr}
004eb8a0  00 40 a0 e1                                      mov r4, r0
004eb8a4  08 d0 4d e2                                      sub sp, sp, #8
004eb8a8  01 00 a0 e1                                      mov r0, r1
004eb8ac  01 50 a0 e1                                      mov r5, r1
004eb8b0  04 10 84 e2                                      add r1, r4, #4
004eb8b4  f5 b5 fd eb                                      bl #0x459090
004eb8b8  01 30 a0 e3                                      mov r3, #1
004eb8bc  00 00 53 e3                                      cmp r3, #0
004eb8c0  04 30 8d e5                                      str r3, [sp, #4]
004eb8c4  0f 00 00 1a                                      bne #0x4eb908
004eb8c8  05 30 84 e2                                      add r3, r4, #5
004eb8cc  06 20 84 e2                                      add r2, r4, #6
004eb8d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb8d4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb8d8  02 00 53 e1                                      cmp r3, r2
004eb8dc  01 10 20 e0                                      eor r1, r0, r1
004eb8e0  01 10 43 e5                                      strb r1, [r3, #-1]
004eb8e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb8e8  00 10 21 e0                                      eor r1, r1, r0
004eb8ec  01 10 c2 e5                                      strb r1, [r2, #1]
004eb8f0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb8f4  01 20 42 e2                                      sub r2, r2, #1
004eb8f8  00 10 21 e0                                      eor r1, r1, r0
004eb8fc  01 10 43 e5                                      strb r1, [r3, #-1]
004eb900  01 30 83 e2                                      add r3, r3, #1
004eb904  f1 ff ff 3a                                      blo #0x4eb8d0
004eb908  05 00 a0 e1                                      mov r0, r5
004eb90c  08 10 84 e2                                      add r1, r4, #8
004eb910  de b5 fd eb                                      bl #0x459090
004eb914  01 30 a0 e3                                      mov r3, #1
004eb918  00 00 53 e3                                      cmp r3, #0
004eb91c  04 30 8d e5                                      str r3, [sp, #4]
004eb920  0f 00 00 1a                                      bne #0x4eb964
004eb924  09 30 84 e2                                      add r3, r4, #9
004eb928  0a 20 84 e2                                      add r2, r4, #0xa
004eb92c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb930  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb934  02 00 53 e1                                      cmp r3, r2
004eb938  01 10 20 e0                                      eor r1, r0, r1
004eb93c  01 10 43 e5                                      strb r1, [r3, #-1]
004eb940  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb944  00 10 21 e0                                      eor r1, r1, r0
004eb948  01 10 c2 e5                                      strb r1, [r2, #1]
004eb94c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb950  01 20 42 e2                                      sub r2, r2, #1
004eb954  00 10 21 e0                                      eor r1, r1, r0
004eb958  01 10 43 e5                                      strb r1, [r3, #-1]
004eb95c  01 30 83 e2                                      add r3, r3, #1
004eb960  f1 ff ff 3a                                      blo #0x4eb92c
004eb964  05 00 a0 e1                                      mov r0, r5
004eb968  0c 10 84 e2                                      add r1, r4, #0xc
004eb96c  0b ce fb eb                                      bl #0x3df1a0
004eb970  01 30 a0 e3                                      mov r3, #1
004eb974  00 00 53 e3                                      cmp r3, #0
004eb978  04 30 8d e5                                      str r3, [sp, #4]
004eb97c  0f 00 00 1a                                      bne #0x4eb9c0
004eb980  0d 30 84 e2                                      add r3, r4, #0xd
004eb984  0e 20 84 e2                                      add r2, r4, #0xe
004eb988  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb98c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb990  02 00 53 e1                                      cmp r3, r2
004eb994  01 10 20 e0                                      eor r1, r0, r1
004eb998  01 10 43 e5                                      strb r1, [r3, #-1]
004eb99c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb9a0  00 10 21 e0                                      eor r1, r1, r0
004eb9a4  01 10 c2 e5                                      strb r1, [r2, #1]
004eb9a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb9ac  01 20 42 e2                                      sub r2, r2, #1
004eb9b0  00 10 21 e0                                      eor r1, r1, r0
004eb9b4  01 10 43 e5                                      strb r1, [r3, #-1]
004eb9b8  01 30 83 e2                                      add r3, r3, #1
004eb9bc  f1 ff ff 3a                                      blo #0x4eb988
004eb9c0  10 00 94 e5                                      ldr r0, [r4, #0x10]
004eb9c4  00 00 50 e3                                      cmp r0, #0
004eb9c8  00 00 00 0a                                      beq #0x4eb9d0
004eb9cc  9b 92 f8 eb                                      bl #0x310440
004eb9d0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004eb9d4  01 10 a0 e3                                      mov r1, #1
004eb9d8  00 60 a0 e3                                      mov r6, #0
004eb9dc  01 00 80 e0                                      add r0, r0, r1
004eb9e0  e1 92 f8 eb                                      bl #0x31056c
004eb9e4  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004eb9e8  00 10 a0 e1                                      mov r1, r0
004eb9ec  10 00 84 e5                                      str r0, [r4, #0x10]
004eb9f0  06 30 a0 e1                                      mov r3, r6
004eb9f4  05 00 a0 e1                                      mov r0, r5
004eb9f8  95 ae f8 eb                                      bl #0x317454
004eb9fc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004eba00  10 20 94 e5                                      ldr r2, [r4, #0x10]
004eba04  05 00 a0 e1                                      mov r0, r5
004eba08  14 10 84 e2                                      add r1, r4, #0x14
004eba0c  03 60 c2 e7                                      strb r6, [r2, r3]
004eba10  9e b5 fd eb                                      bl #0x459090
004eba14  01 30 a0 e3                                      mov r3, #1
004eba18  06 00 53 e1                                      cmp r3, r6
004eba1c  04 30 8d e5                                      str r3, [sp, #4]
004eba20  0f 00 00 1a                                      bne #0x4eba64
004eba24  15 30 84 e2                                      add r3, r4, #0x15
004eba28  16 20 84 e2                                      add r2, r4, #0x16
004eba2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eba30  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eba34  02 00 53 e1                                      cmp r3, r2
004eba38  01 10 20 e0                                      eor r1, r0, r1
004eba3c  01 10 43 e5                                      strb r1, [r3, #-1]
004eba40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eba44  00 10 21 e0                                      eor r1, r1, r0
004eba48  01 10 c2 e5                                      strb r1, [r2, #1]
004eba4c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eba50  01 20 42 e2                                      sub r2, r2, #1
004eba54  00 10 21 e0                                      eor r1, r1, r0
004eba58  01 10 43 e5                                      strb r1, [r3, #-1]
004eba5c  01 30 83 e2                                      add r3, r3, #1
004eba60  f1 ff ff 3a                                      blo #0x4eba2c
004eba64  05 00 a0 e1                                      mov r0, r5
004eba68  18 10 84 e2                                      add r1, r4, #0x18
004eba6c  87 b5 fd eb                                      bl #0x459090
004eba70  01 30 a0 e3                                      mov r3, #1
004eba74  00 00 53 e3                                      cmp r3, #0
004eba78  04 30 8d e5                                      str r3, [sp, #4]
004eba7c  0f 00 00 1a                                      bne #0x4ebac0
004eba80  19 30 84 e2                                      add r3, r4, #0x19
004eba84  1a 20 84 e2                                      add r2, r4, #0x1a
004eba88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eba8c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eba90  02 00 53 e1                                      cmp r3, r2
004eba94  01 10 20 e0                                      eor r1, r0, r1
004eba98  01 10 43 e5                                      strb r1, [r3, #-1]
004eba9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebaa0  00 10 21 e0                                      eor r1, r1, r0
004ebaa4  01 10 c2 e5                                      strb r1, [r2, #1]
004ebaa8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebaac  01 20 42 e2                                      sub r2, r2, #1
004ebab0  00 10 21 e0                                      eor r1, r1, r0
004ebab4  01 10 43 e5                                      strb r1, [r3, #-1]
004ebab8  01 30 83 e2                                      add r3, r3, #1
004ebabc  f1 ff ff 3a                                      blo #0x4eba88
004ebac0  05 00 a0 e1                                      mov r0, r5
004ebac4  1c 10 84 e2                                      add r1, r4, #0x1c
004ebac8  70 b5 fd eb                                      bl #0x459090
004ebacc  01 30 a0 e3                                      mov r3, #1
004ebad0  00 00 53 e3                                      cmp r3, #0
004ebad4  04 30 8d e5                                      str r3, [sp, #4]
004ebad8  0f 00 00 1a                                      bne #0x4ebb1c
004ebadc  1d 30 84 e2                                      add r3, r4, #0x1d
004ebae0  1e 20 84 e2                                      add r2, r4, #0x1e
004ebae4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebae8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebaec  02 00 53 e1                                      cmp r3, r2
004ebaf0  01 10 20 e0                                      eor r1, r0, r1
004ebaf4  01 10 43 e5                                      strb r1, [r3, #-1]
004ebaf8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebafc  00 10 21 e0                                      eor r1, r1, r0
004ebb00  01 10 c2 e5                                      strb r1, [r2, #1]
004ebb04  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebb08  01 20 42 e2                                      sub r2, r2, #1
004ebb0c  00 10 21 e0                                      eor r1, r1, r0
004ebb10  01 10 43 e5                                      strb r1, [r3, #-1]
004ebb14  01 30 83 e2                                      add r3, r3, #1
004ebb18  f1 ff ff 3a                                      blo #0x4ebae4
004ebb1c  05 00 a0 e1                                      mov r0, r5
004ebb20  20 10 84 e2                                      add r1, r4, #0x20
004ebb24  59 b5 fd eb                                      bl #0x459090
004ebb28  01 30 a0 e3                                      mov r3, #1
004ebb2c  00 00 53 e3                                      cmp r3, #0
004ebb30  04 30 8d e5                                      str r3, [sp, #4]
004ebb34  0f 00 00 1a                                      bne #0x4ebb78
004ebb38  21 30 84 e2                                      add r3, r4, #0x21
004ebb3c  22 20 84 e2                                      add r2, r4, #0x22
004ebb40  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebb44  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebb48  02 00 53 e1                                      cmp r3, r2
004ebb4c  01 10 20 e0                                      eor r1, r0, r1
004ebb50  01 10 43 e5                                      strb r1, [r3, #-1]
004ebb54  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebb58  00 10 21 e0                                      eor r1, r1, r0
004ebb5c  01 10 c2 e5                                      strb r1, [r2, #1]
004ebb60  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebb64  01 20 42 e2                                      sub r2, r2, #1
004ebb68  00 10 21 e0                                      eor r1, r1, r0
004ebb6c  01 10 43 e5                                      strb r1, [r3, #-1]
004ebb70  01 30 83 e2                                      add r3, r3, #1
004ebb74  f1 ff ff 3a                                      blo #0x4ebb40
004ebb78  05 00 a0 e1                                      mov r0, r5
004ebb7c  24 10 84 e2                                      add r1, r4, #0x24
004ebb80  42 b5 fd eb                                      bl #0x459090
004ebb84  01 30 a0 e3                                      mov r3, #1
004ebb88  00 00 53 e3                                      cmp r3, #0
004ebb8c  04 30 8d e5                                      str r3, [sp, #4]
004ebb90  0f 00 00 1a                                      bne #0x4ebbd4
004ebb94  25 30 84 e2                                      add r3, r4, #0x25
004ebb98  26 20 84 e2                                      add r2, r4, #0x26
004ebb9c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebba0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebba4  02 00 53 e1                                      cmp r3, r2
004ebba8  01 10 20 e0                                      eor r1, r0, r1
004ebbac  01 10 43 e5                                      strb r1, [r3, #-1]
004ebbb0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebbb4  00 10 21 e0                                      eor r1, r1, r0
004ebbb8  01 10 c2 e5                                      strb r1, [r2, #1]
004ebbbc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebbc0  01 20 42 e2                                      sub r2, r2, #1
004ebbc4  00 10 21 e0                                      eor r1, r1, r0
004ebbc8  01 10 43 e5                                      strb r1, [r3, #-1]
004ebbcc  01 30 83 e2                                      add r3, r3, #1
004ebbd0  f1 ff ff 3a                                      blo #0x4ebb9c
004ebbd4  05 00 a0 e1                                      mov r0, r5
004ebbd8  28 10 84 e2                                      add r1, r4, #0x28
004ebbdc  2b b5 fd eb                                      bl #0x459090
004ebbe0  01 30 a0 e3                                      mov r3, #1
004ebbe4  00 00 53 e3                                      cmp r3, #0
004ebbe8  04 30 8d e5                                      str r3, [sp, #4]
004ebbec  0f 00 00 1a                                      bne #0x4ebc30
004ebbf0  2a 30 84 e2                                      add r3, r4, #0x2a
004ebbf4  29 40 84 e2                                      add r4, r4, #0x29
004ebbf8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ebbfc  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ebc00  03 00 54 e1                                      cmp r4, r3
004ebc04  02 20 21 e0                                      eor r2, r1, r2
004ebc08  01 20 44 e5                                      strb r2, [r4, #-1]
004ebc0c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ebc10  01 20 22 e0                                      eor r2, r2, r1
004ebc14  01 20 c3 e5                                      strb r2, [r3, #1]
004ebc18  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ebc1c  01 30 43 e2                                      sub r3, r3, #1
004ebc20  01 20 22 e0                                      eor r2, r2, r1
004ebc24  01 20 44 e5                                      strb r2, [r4, #-1]
004ebc28  01 40 84 e2                                      add r4, r4, #1
004ebc2c  f1 ff ff 3a                                      blo #0x4ebbf8
004ebc30  08 d0 8d e2                                      add sp, sp, #8
004ebc34  70 80 bd e8                                      pop {r4, r5, r6, pc}
