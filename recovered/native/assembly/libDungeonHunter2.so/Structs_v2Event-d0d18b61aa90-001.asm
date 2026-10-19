; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004cfc80, declared_size=132, range_size=132, mode=arm
; class-group: Structs::v2Event
; alias: _ZN7Structs7v2Event8finalizeEv
; demangled: Structs::v2Event::finalize()
; decoder-mode: arm
004cfc80  70 40 2d e9                                      push {r4, r5, r6, lr}
004cfc84  00 50 a0 e1                                      mov r5, r0
004cfc88  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004cfc8c  00 00 50 e3                                      cmp r0, #0
004cfc90  03 00 00 0a                                      beq #0x4cfca4
004cfc94  e9 01 f9 eb                                      bl #0x310440
004cfc98  00 30 a0 e3                                      mov r3, #0
004cfc9c  08 30 85 e5                                      str r3, [r5, #8]
004cfca0  0c 30 85 e5                                      str r3, [r5, #0xc]
004cfca4  14 30 95 e5                                      ldr r3, [r5, #0x14]
004cfca8  00 00 53 e3                                      cmp r3, #0
004cfcac  13 00 00 0a                                      beq #0x4cfd00
004cfcb0  04 20 13 e5                                      ldr r2, [r3, #-4]
004cfcb4  2c 00 a0 e3                                      mov r0, #0x2c
004cfcb8  90 32 20 e0                                      mla r0, r0, r2, r3
004cfcbc  00 00 53 e1                                      cmp r3, r0
004cfcc0  01 00 00 1a                                      bne #0x4cfccc
004cfcc4  08 00 00 ea                                      b #0x4cfcec
004cfcc8  04 00 a0 e1                                      mov r0, r4
004cfccc  2c 40 40 e2                                      sub r4, r0, #0x2c
004cfcd0  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004cfcd4  04 00 a0 e1                                      mov r0, r4
004cfcd8  0f e0 a0 e1                                      mov lr, pc
004cfcdc  00 f0 93 e5                                      ldr pc, [r3]
004cfce0  14 00 95 e5                                      ldr r0, [r5, #0x14]
004cfce4  04 00 50 e1                                      cmp r0, r4
004cfce8  f6 ff ff 1a                                      bne #0x4cfcc8
004cfcec  08 00 40 e2                                      sub r0, r0, #8
004cfcf0  d2 01 f9 eb                                      bl #0x310440
004cfcf4  00 30 a0 e3                                      mov r3, #0
004cfcf8  10 30 85 e5                                      str r3, [r5, #0x10]
004cfcfc  14 30 85 e5                                      str r3, [r5, #0x14]
004cfd00  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004cfd04, declared_size=144, range_size=144, mode=arm
; class-group: Structs::v2Event
; alias: _ZN7Structs7v2EventD1Ev
; demangled: Structs::v2Event::~v2Event()
; decoder-mode: arm
004cfd04  70 40 2d e9                                      push {r4, r5, r6, lr}
004cfd08  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
004cfd0c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
004cfd10  00 50 a0 e1                                      mov r5, r0
004cfd14  03 30 8f e0                                      add r3, pc, r3
004cfd18  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004cfd1c  02 20 93 e7                                      ldr r2, [r3, r2]
004cfd20  00 00 50 e3                                      cmp r0, #0
004cfd24  08 20 82 e2                                      add r2, r2, #8
004cfd28  00 20 85 e5                                      str r2, [r5]
004cfd2c  00 00 00 0a                                      beq #0x4cfd34
004cfd30  c2 01 f9 eb                                      bl #0x310440
004cfd34  14 30 95 e5                                      ldr r3, [r5, #0x14]
004cfd38  00 00 53 e3                                      cmp r3, #0
004cfd3c  10 00 00 0a                                      beq #0x4cfd84
004cfd40  04 20 13 e5                                      ldr r2, [r3, #-4]
004cfd44  2c 00 a0 e3                                      mov r0, #0x2c
004cfd48  90 32 20 e0                                      mla r0, r0, r2, r3
004cfd4c  00 00 53 e1                                      cmp r3, r0
004cfd50  01 00 00 1a                                      bne #0x4cfd5c
004cfd54  08 00 00 ea                                      b #0x4cfd7c
004cfd58  04 00 a0 e1                                      mov r0, r4
004cfd5c  2c 40 40 e2                                      sub r4, r0, #0x2c
004cfd60  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004cfd64  04 00 a0 e1                                      mov r0, r4
004cfd68  0f e0 a0 e1                                      mov lr, pc
004cfd6c  00 f0 93 e5                                      ldr pc, [r3]
004cfd70  14 00 95 e5                                      ldr r0, [r5, #0x14]
004cfd74  04 00 50 e1                                      cmp r0, r4
004cfd78  f6 ff ff 1a                                      bne #0x4cfd58
004cfd7c  08 00 40 e2                                      sub r0, r0, #8
004cfd80  ae 01 f9 eb                                      bl #0x310440
004cfd84  05 00 a0 e1                                      mov r0, r5
004cfd88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004cfd8c  7c 4d 4c 00 88 34 00 00                          .byte 0x7c, 0x4d, 0x4c, 0x00, 0x88, 0x34, 0x00, 0x00

; FUNCTION 0x004cfd94, declared_size=28, range_size=28, mode=arm
; class-group: Structs::v2Event
; alias: _ZN7Structs7v2EventD0Ev
; demangled: Structs::v2Event::~v2Event()
; decoder-mode: arm
004cfd94  10 40 2d e9                                      push {r4, lr}
004cfd98  00 40 a0 e1                                      mov r4, r0
004cfd9c  d8 ff ff eb                                      bl #0x4cfd04
004cfda0  04 00 a0 e1                                      mov r0, r4
004cfda4  a5 01 f9 eb                                      bl #0x310440
004cfda8  04 00 a0 e1                                      mov r0, r4
004cfdac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004cfdb0, declared_size=144, range_size=144, mode=arm
; class-group: Structs::v2Event
; alias: _ZN7Structs7v2EventD2Ev
; demangled: Structs::v2Event::~v2Event()
; decoder-mode: arm
004cfdb0  70 40 2d e9                                      push {r4, r5, r6, lr}
004cfdb4  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
004cfdb8  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
004cfdbc  00 50 a0 e1                                      mov r5, r0
004cfdc0  03 30 8f e0                                      add r3, pc, r3
004cfdc4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004cfdc8  02 20 93 e7                                      ldr r2, [r3, r2]
004cfdcc  00 00 50 e3                                      cmp r0, #0
004cfdd0  08 20 82 e2                                      add r2, r2, #8
004cfdd4  00 20 85 e5                                      str r2, [r5]
004cfdd8  00 00 00 0a                                      beq #0x4cfde0
004cfddc  97 01 f9 eb                                      bl #0x310440
004cfde0  14 30 95 e5                                      ldr r3, [r5, #0x14]
004cfde4  00 00 53 e3                                      cmp r3, #0
004cfde8  10 00 00 0a                                      beq #0x4cfe30
004cfdec  04 20 13 e5                                      ldr r2, [r3, #-4]
004cfdf0  2c 00 a0 e3                                      mov r0, #0x2c
004cfdf4  90 32 20 e0                                      mla r0, r0, r2, r3
004cfdf8  00 00 53 e1                                      cmp r3, r0
004cfdfc  01 00 00 1a                                      bne #0x4cfe08
004cfe00  08 00 00 ea                                      b #0x4cfe28
004cfe04  04 00 a0 e1                                      mov r0, r4
004cfe08  2c 40 40 e2                                      sub r4, r0, #0x2c
004cfe0c  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004cfe10  04 00 a0 e1                                      mov r0, r4
004cfe14  0f e0 a0 e1                                      mov lr, pc
004cfe18  00 f0 93 e5                                      ldr pc, [r3]
004cfe1c  14 00 95 e5                                      ldr r0, [r5, #0x14]
004cfe20  04 00 50 e1                                      cmp r0, r4
004cfe24  f6 ff ff 1a                                      bne #0x4cfe04
004cfe28  08 00 40 e2                                      sub r0, r0, #8
004cfe2c  83 01 f9 eb                                      bl #0x310440
004cfe30  05 00 a0 e1                                      mov r0, r5
004cfe34  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004cfe38  d0 4c 4c 00 88 34 00 00                          .byte 0xd0, 0x4c, 0x4c, 0x00, 0x88, 0x34, 0x00, 0x00

; FUNCTION 0x004ebc38, declared_size=632, range_size=632, mode=arm
; class-group: Structs::v2Event
; alias: _ZN7Structs7v2Event4readEP11IStreamBase
; demangled: Structs::v2Event::read(IStreamBase*)
; decoder-mode: arm
004ebc38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ebc3c  00 40 a0 e1                                      mov r4, r0
004ebc40  08 d0 4d e2                                      sub sp, sp, #8
004ebc44  01 00 a0 e1                                      mov r0, r1
004ebc48  01 50 a0 e1                                      mov r5, r1
004ebc4c  54 62 9f e5                                      ldr r6, [pc, #0x254]
004ebc50  04 10 84 e2                                      add r1, r4, #4
004ebc54  0d b5 fd eb                                      bl #0x459090
004ebc58  01 30 a0 e3                                      mov r3, #1
004ebc5c  00 00 53 e3                                      cmp r3, #0
004ebc60  04 30 8d e5                                      str r3, [sp, #4]
004ebc64  06 60 8f e0                                      add r6, pc, r6
004ebc68  0f 00 00 1a                                      bne #0x4ebcac
004ebc6c  05 30 84 e2                                      add r3, r4, #5
004ebc70  06 20 84 e2                                      add r2, r4, #6
004ebc74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebc78  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebc7c  03 00 52 e1                                      cmp r2, r3
004ebc80  01 10 20 e0                                      eor r1, r0, r1
004ebc84  01 10 43 e5                                      strb r1, [r3, #-1]
004ebc88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebc8c  00 10 21 e0                                      eor r1, r1, r0
004ebc90  01 10 c2 e5                                      strb r1, [r2, #1]
004ebc94  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebc98  01 20 42 e2                                      sub r2, r2, #1
004ebc9c  00 10 21 e0                                      eor r1, r1, r0
004ebca0  01 10 43 e5                                      strb r1, [r3, #-1]
004ebca4  01 30 83 e2                                      add r3, r3, #1
004ebca8  f1 ff ff 8a                                      bhi #0x4ebc74
004ebcac  05 00 a0 e1                                      mov r0, r5
004ebcb0  08 10 84 e2                                      add r1, r4, #8
004ebcb4  39 cd fb eb                                      bl #0x3df1a0
004ebcb8  01 30 a0 e3                                      mov r3, #1
004ebcbc  00 00 53 e3                                      cmp r3, #0
004ebcc0  04 30 8d e5                                      str r3, [sp, #4]
004ebcc4  0f 00 00 1a                                      bne #0x4ebd08
004ebcc8  09 30 84 e2                                      add r3, r4, #9
004ebccc  0a 20 84 e2                                      add r2, r4, #0xa
004ebcd0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebcd4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebcd8  03 00 52 e1                                      cmp r2, r3
004ebcdc  01 10 20 e0                                      eor r1, r0, r1
004ebce0  01 10 43 e5                                      strb r1, [r3, #-1]
004ebce4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebce8  00 10 21 e0                                      eor r1, r1, r0
004ebcec  01 10 c2 e5                                      strb r1, [r2, #1]
004ebcf0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebcf4  01 20 42 e2                                      sub r2, r2, #1
004ebcf8  00 10 21 e0                                      eor r1, r1, r0
004ebcfc  01 10 43 e5                                      strb r1, [r3, #-1]
004ebd00  01 30 83 e2                                      add r3, r3, #1
004ebd04  f1 ff ff 8a                                      bhi #0x4ebcd0
004ebd08  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004ebd0c  00 00 50 e3                                      cmp r0, #0
004ebd10  00 00 00 0a                                      beq #0x4ebd18
004ebd14  c9 91 f8 eb                                      bl #0x310440
004ebd18  08 00 94 e5                                      ldr r0, [r4, #8]
004ebd1c  01 10 a0 e3                                      mov r1, #1
004ebd20  00 70 a0 e3                                      mov r7, #0
004ebd24  01 00 80 e0                                      add r0, r0, r1
004ebd28  0f 92 f8 eb                                      bl #0x31056c
004ebd2c  08 20 94 e5                                      ldr r2, [r4, #8]
004ebd30  00 10 a0 e1                                      mov r1, r0
004ebd34  0c 00 84 e5                                      str r0, [r4, #0xc]
004ebd38  07 30 a0 e1                                      mov r3, r7
004ebd3c  05 00 a0 e1                                      mov r0, r5
004ebd40  c3 ad f8 eb                                      bl #0x317454
004ebd44  08 30 94 e5                                      ldr r3, [r4, #8]
004ebd48  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004ebd4c  05 00 a0 e1                                      mov r0, r5
004ebd50  10 10 84 e2                                      add r1, r4, #0x10
004ebd54  03 70 c2 e7                                      strb r7, [r2, r3]
004ebd58  10 cd fb eb                                      bl #0x3df1a0
004ebd5c  01 30 a0 e3                                      mov r3, #1
004ebd60  07 00 53 e1                                      cmp r3, r7
004ebd64  04 30 8d e5                                      str r3, [sp, #4]
004ebd68  0f 00 00 1a                                      bne #0x4ebdac
004ebd6c  11 30 84 e2                                      add r3, r4, #0x11
004ebd70  12 20 84 e2                                      add r2, r4, #0x12
004ebd74  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebd78  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ebd7c  03 00 52 e1                                      cmp r2, r3
004ebd80  01 10 20 e0                                      eor r1, r0, r1
004ebd84  01 10 43 e5                                      strb r1, [r3, #-1]
004ebd88  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ebd8c  00 10 21 e0                                      eor r1, r1, r0
004ebd90  01 10 c2 e5                                      strb r1, [r2, #1]
004ebd94  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ebd98  01 20 42 e2                                      sub r2, r2, #1
004ebd9c  00 10 21 e0                                      eor r1, r1, r0
004ebda0  01 10 43 e5                                      strb r1, [r3, #-1]
004ebda4  01 30 83 e2                                      add r3, r3, #1
004ebda8  f1 ff ff 8a                                      bhi #0x4ebd74
004ebdac  14 30 94 e5                                      ldr r3, [r4, #0x14]
004ebdb0  00 00 53 e3                                      cmp r3, #0
004ebdb4  10 00 00 0a                                      beq #0x4ebdfc
004ebdb8  04 20 13 e5                                      ldr r2, [r3, #-4]
004ebdbc  2c 00 a0 e3                                      mov r0, #0x2c
004ebdc0  90 32 20 e0                                      mla r0, r0, r2, r3
004ebdc4  00 00 53 e1                                      cmp r3, r0
004ebdc8  01 00 00 1a                                      bne #0x4ebdd4
004ebdcc  08 00 00 ea                                      b #0x4ebdf4
004ebdd0  07 00 a0 e1                                      mov r0, r7
004ebdd4  2c 70 40 e2                                      sub r7, r0, #0x2c
004ebdd8  2c 30 10 e5                                      ldr r3, [r0, #-0x2c]
004ebddc  07 00 a0 e1                                      mov r0, r7
004ebde0  0f e0 a0 e1                                      mov lr, pc
004ebde4  00 f0 93 e5                                      ldr pc, [r3]
004ebde8  14 00 94 e5                                      ldr r0, [r4, #0x14]
004ebdec  07 00 50 e1                                      cmp r0, r7
004ebdf0  f6 ff ff 1a                                      bne #0x4ebdd0
004ebdf4  08 00 40 e2                                      sub r0, r0, #8
004ebdf8  90 91 f8 eb                                      bl #0x310440
004ebdfc  10 70 94 e5                                      ldr r7, [r4, #0x10]
004ebe00  2c 80 a0 e3                                      mov r8, #0x2c
004ebe04  01 10 a0 e3                                      mov r1, #1
004ebe08  98 07 00 e0                                      mul r0, r8, r7
004ebe0c  08 00 80 e2                                      add r0, r0, #8
004ebe10  d5 91 f8 eb                                      bl #0x31056c
004ebe14  00 00 57 e3                                      cmp r7, #0
004ebe18  00 80 80 e5                                      str r8, [r0]
004ebe1c  04 70 80 e5                                      str r7, [r0, #4]
004ebe20  08 30 80 e2                                      add r3, r0, #8
004ebe24  0b 00 00 0a                                      beq #0x4ebe58
004ebe28  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
004ebe2c  00 20 a0 e3                                      mov r2, #0
004ebe30  01 c0 96 e7                                      ldr ip, [r6, r1]
004ebe34  02 10 a0 e1                                      mov r1, r2
004ebe38  08 c0 8c e2                                      add ip, ip, #8
004ebe3c  01 20 82 e2                                      add r2, r2, #1
004ebe40  07 00 52 e1                                      cmp r2, r7
004ebe44  08 c0 80 e5                                      str ip, [r0, #8]
004ebe48  1c 10 80 e5                                      str r1, [r0, #0x1c]
004ebe4c  24 10 80 e5                                      str r1, [r0, #0x24]
004ebe50  2c 00 80 e2                                      add r0, r0, #0x2c
004ebe54  f8 ff ff 1a                                      bne #0x4ebe3c
004ebe58  10 20 94 e5                                      ldr r2, [r4, #0x10]
004ebe5c  14 30 84 e5                                      str r3, [r4, #0x14]
004ebe60  00 00 52 e3                                      cmp r2, #0
004ebe64  0d 00 00 0a                                      beq #0x4ebea0
004ebe68  00 60 a0 e3                                      mov r6, #0
004ebe6c  06 70 a0 e1                                      mov r7, r6
004ebe70  00 00 00 ea                                      b #0x4ebe78
004ebe74  14 30 94 e5                                      ldr r3, [r4, #0x14]
004ebe78  06 00 83 e0                                      add r0, r3, r6
004ebe7c  05 10 a0 e1                                      mov r1, r5
004ebe80  06 30 93 e7                                      ldr r3, [r3, r6]
004ebe84  0f e0 a0 e1                                      mov lr, pc
004ebe88  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004ebe8c  10 30 94 e5                                      ldr r3, [r4, #0x10]
004ebe90  01 70 87 e2                                      add r7, r7, #1
004ebe94  2c 60 86 e2                                      add r6, r6, #0x2c
004ebe98  07 00 53 e1                                      cmp r3, r7
004ebe9c  f4 ff ff 8a                                      bhi #0x4ebe74
004ebea0  08 d0 8d e2                                      add sp, sp, #8
004ebea4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004ebea8  2c 8e 4a 00 28 1e 00 00                          .byte 0x2c, 0x8e, 0x4a, 0x00, 0x28, 0x1e, 0x00, 0x00
