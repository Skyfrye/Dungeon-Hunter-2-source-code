; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d0ca4, declared_size=124, range_size=124, mode=arm
; class-group: Structs::CharSounds
; alias: _ZN7Structs10CharSounds8finalizeEv
; demangled: Structs::CharSounds::finalize()
; decoder-mode: arm
004d0ca4  10 40 2d e9                                      push {r4, lr}
004d0ca8  00 40 a0 e1                                      mov r4, r0
004d0cac  08 00 90 e5                                      ldr r0, [r0, #8]
004d0cb0  00 00 50 e3                                      cmp r0, #0
004d0cb4  03 00 00 0a                                      beq #0x4d0cc8
004d0cb8  e0 fd f8 eb                                      bl #0x310440
004d0cbc  00 30 a0 e3                                      mov r3, #0
004d0cc0  04 30 84 e5                                      str r3, [r4, #4]
004d0cc4  08 30 84 e5                                      str r3, [r4, #8]
004d0cc8  10 00 94 e5                                      ldr r0, [r4, #0x10]
004d0ccc  00 00 50 e3                                      cmp r0, #0
004d0cd0  03 00 00 0a                                      beq #0x4d0ce4
004d0cd4  d9 fd f8 eb                                      bl #0x310440
004d0cd8  00 30 a0 e3                                      mov r3, #0
004d0cdc  0c 30 84 e5                                      str r3, [r4, #0xc]
004d0ce0  10 30 84 e5                                      str r3, [r4, #0x10]
004d0ce4  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d0ce8  00 00 50 e3                                      cmp r0, #0
004d0cec  03 00 00 0a                                      beq #0x4d0d00
004d0cf0  d2 fd f8 eb                                      bl #0x310440
004d0cf4  00 30 a0 e3                                      mov r3, #0
004d0cf8  14 30 84 e5                                      str r3, [r4, #0x14]
004d0cfc  18 30 84 e5                                      str r3, [r4, #0x18]
004d0d00  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d0d04  00 00 50 e3                                      cmp r0, #0
004d0d08  03 00 00 0a                                      beq #0x4d0d1c
004d0d0c  cb fd f8 eb                                      bl #0x310440
004d0d10  00 30 a0 e3                                      mov r3, #0
004d0d14  1c 30 84 e5                                      str r3, [r4, #0x1c]
004d0d18  20 30 84 e5                                      str r3, [r4, #0x20]
004d0d1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0d20, declared_size=112, range_size=112, mode=arm
; class-group: Structs::CharSounds
; alias: _ZN7Structs10CharSoundsD1Ev
; demangled: Structs::CharSounds::~CharSounds()
; decoder-mode: arm
004d0d20  10 40 2d e9                                      push {r4, lr}
004d0d24  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
004d0d28  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
004d0d2c  00 40 a0 e1                                      mov r4, r0
004d0d30  03 30 8f e0                                      add r3, pc, r3
004d0d34  08 00 90 e5                                      ldr r0, [r0, #8]
004d0d38  02 20 93 e7                                      ldr r2, [r3, r2]
004d0d3c  00 00 50 e3                                      cmp r0, #0
004d0d40  08 20 82 e2                                      add r2, r2, #8
004d0d44  00 20 84 e5                                      str r2, [r4]
004d0d48  00 00 00 0a                                      beq #0x4d0d50
004d0d4c  bb fd f8 eb                                      bl #0x310440
004d0d50  10 00 94 e5                                      ldr r0, [r4, #0x10]
004d0d54  00 00 50 e3                                      cmp r0, #0
004d0d58  00 00 00 0a                                      beq #0x4d0d60
004d0d5c  b7 fd f8 eb                                      bl #0x310440
004d0d60  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d0d64  00 00 50 e3                                      cmp r0, #0
004d0d68  00 00 00 0a                                      beq #0x4d0d70
004d0d6c  b3 fd f8 eb                                      bl #0x310440
004d0d70  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d0d74  00 00 50 e3                                      cmp r0, #0
004d0d78  00 00 00 0a                                      beq #0x4d0d80
004d0d7c  af fd f8 eb                                      bl #0x310440
004d0d80  04 00 a0 e1                                      mov r0, r4
004d0d84  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0d88  60 3d 4c 00 34 41 00 00                          .byte 0x60, 0x3d, 0x4c, 0x00, 0x34, 0x41, 0x00, 0x00

; FUNCTION 0x004d0d90, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CharSounds
; alias: _ZN7Structs10CharSoundsD0Ev
; demangled: Structs::CharSounds::~CharSounds()
; decoder-mode: arm
004d0d90  10 40 2d e9                                      push {r4, lr}
004d0d94  00 40 a0 e1                                      mov r4, r0
004d0d98  e0 ff ff eb                                      bl #0x4d0d20
004d0d9c  04 00 a0 e1                                      mov r0, r4
004d0da0  a6 fd f8 eb                                      bl #0x310440
004d0da4  04 00 a0 e1                                      mov r0, r4
004d0da8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d0dac, declared_size=112, range_size=112, mode=arm
; class-group: Structs::CharSounds
; alias: _ZN7Structs10CharSoundsD2Ev
; demangled: Structs::CharSounds::~CharSounds()
; decoder-mode: arm
004d0dac  10 40 2d e9                                      push {r4, lr}
004d0db0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
004d0db4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
004d0db8  00 40 a0 e1                                      mov r4, r0
004d0dbc  03 30 8f e0                                      add r3, pc, r3
004d0dc0  08 00 90 e5                                      ldr r0, [r0, #8]
004d0dc4  02 20 93 e7                                      ldr r2, [r3, r2]
004d0dc8  00 00 50 e3                                      cmp r0, #0
004d0dcc  08 20 82 e2                                      add r2, r2, #8
004d0dd0  00 20 84 e5                                      str r2, [r4]
004d0dd4  00 00 00 0a                                      beq #0x4d0ddc
004d0dd8  98 fd f8 eb                                      bl #0x310440
004d0ddc  10 00 94 e5                                      ldr r0, [r4, #0x10]
004d0de0  00 00 50 e3                                      cmp r0, #0
004d0de4  00 00 00 0a                                      beq #0x4d0dec
004d0de8  94 fd f8 eb                                      bl #0x310440
004d0dec  18 00 94 e5                                      ldr r0, [r4, #0x18]
004d0df0  00 00 50 e3                                      cmp r0, #0
004d0df4  00 00 00 0a                                      beq #0x4d0dfc
004d0df8  90 fd f8 eb                                      bl #0x310440
004d0dfc  20 00 94 e5                                      ldr r0, [r4, #0x20]
004d0e00  00 00 50 e3                                      cmp r0, #0
004d0e04  00 00 00 0a                                      beq #0x4d0e0c
004d0e08  8c fd f8 eb                                      bl #0x310440
004d0e0c  04 00 a0 e1                                      mov r0, r4
004d0e10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d0e14  d4 3c 4c 00 34 41 00 00                          .byte 0xd4, 0x3c, 0x4c, 0x00, 0x34, 0x41, 0x00, 0x00

; FUNCTION 0x004eade4, declared_size=1120, range_size=1120, mode=arm
; class-group: Structs::CharSounds
; alias: _ZN7Structs10CharSounds4readEP11IStreamBase
; demangled: Structs::CharSounds::read(IStreamBase*)
; decoder-mode: arm
004eade4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004eade8  00 40 a0 e1                                      mov r4, r0
004eadec  08 d0 4d e2                                      sub sp, sp, #8
004eadf0  01 00 a0 e1                                      mov r0, r1
004eadf4  01 50 a0 e1                                      mov r5, r1
004eadf8  04 10 84 e2                                      add r1, r4, #4
004eadfc  e7 d0 fb eb                                      bl #0x3df1a0
004eae00  01 30 a0 e3                                      mov r3, #1
004eae04  00 00 53 e3                                      cmp r3, #0
004eae08  04 30 8d e5                                      str r3, [sp, #4]
004eae0c  0f 00 00 1a                                      bne #0x4eae50
004eae10  05 30 84 e2                                      add r3, r4, #5
004eae14  06 20 84 e2                                      add r2, r4, #6
004eae18  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eae1c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eae20  02 00 53 e1                                      cmp r3, r2
004eae24  01 10 20 e0                                      eor r1, r0, r1
004eae28  01 10 43 e5                                      strb r1, [r3, #-1]
004eae2c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eae30  00 10 21 e0                                      eor r1, r1, r0
004eae34  01 10 c2 e5                                      strb r1, [r2, #1]
004eae38  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eae3c  01 20 42 e2                                      sub r2, r2, #1
004eae40  00 10 21 e0                                      eor r1, r1, r0
004eae44  01 10 43 e5                                      strb r1, [r3, #-1]
004eae48  01 30 83 e2                                      add r3, r3, #1
004eae4c  f1 ff ff 3a                                      blo #0x4eae18
004eae50  08 00 94 e5                                      ldr r0, [r4, #8]
004eae54  00 00 50 e3                                      cmp r0, #0
004eae58  00 00 00 0a                                      beq #0x4eae60
004eae5c  77 95 f8 eb                                      bl #0x310440
004eae60  04 00 94 e5                                      ldr r0, [r4, #4]
004eae64  01 10 a0 e3                                      mov r1, #1
004eae68  00 01 a0 e1                                      lsl r0, r0, #2
004eae6c  be 95 f8 eb                                      bl #0x31056c
004eae70  04 30 94 e5                                      ldr r3, [r4, #4]
004eae74  08 00 84 e5                                      str r0, [r4, #8]
004eae78  00 00 53 e3                                      cmp r3, #0
004eae7c  1f 00 00 0a                                      beq #0x4eaf00
004eae80  00 60 a0 e3                                      mov r6, #0
004eae84  01 80 a0 e3                                      mov r8, #1
004eae88  06 71 a0 e1                                      lsl r7, r6, #2
004eae8c  07 10 80 e0                                      add r1, r0, r7
004eae90  05 00 a0 e1                                      mov r0, r5
004eae94  7d b8 fd eb                                      bl #0x459090
004eae98  04 80 8d e5                                      str r8, [sp, #4]
004eae9c  00 00 58 e3                                      cmp r8, #0
004eaea0  08 30 94 e5                                      ldr r3, [r4, #8]
004eaea4  10 00 00 1a                                      bne #0x4eaeec
004eaea8  07 70 83 e0                                      add r7, r3, r7
004eaeac  02 30 87 e2                                      add r3, r7, #2
004eaeb0  01 70 87 e2                                      add r7, r7, #1
004eaeb4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eaeb8  01 20 57 e5                                      ldrb r2, [r7, #-1]
004eaebc  03 00 57 e1                                      cmp r7, r3
004eaec0  02 20 21 e0                                      eor r2, r1, r2
004eaec4  01 20 47 e5                                      strb r2, [r7, #-1]
004eaec8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eaecc  01 20 22 e0                                      eor r2, r2, r1
004eaed0  01 20 c3 e5                                      strb r2, [r3, #1]
004eaed4  01 10 57 e5                                      ldrb r1, [r7, #-1]
004eaed8  01 30 43 e2                                      sub r3, r3, #1
004eaedc  01 20 22 e0                                      eor r2, r2, r1
004eaee0  01 20 47 e5                                      strb r2, [r7, #-1]
004eaee4  01 70 87 e2                                      add r7, r7, #1
004eaee8  f1 ff ff 3a                                      blo #0x4eaeb4
004eaeec  04 30 94 e5                                      ldr r3, [r4, #4]
004eaef0  01 60 86 e2                                      add r6, r6, #1
004eaef4  06 00 53 e1                                      cmp r3, r6
004eaef8  08 00 94 85                                      ldrhi r0, [r4, #8]
004eaefc  e1 ff ff 8a                                      bhi #0x4eae88
004eaf00  05 00 a0 e1                                      mov r0, r5
004eaf04  0c 10 84 e2                                      add r1, r4, #0xc
004eaf08  a4 d0 fb eb                                      bl #0x3df1a0
004eaf0c  01 30 a0 e3                                      mov r3, #1
004eaf10  00 00 53 e3                                      cmp r3, #0
004eaf14  04 30 8d e5                                      str r3, [sp, #4]
004eaf18  0f 00 00 1a                                      bne #0x4eaf5c
004eaf1c  0d 30 84 e2                                      add r3, r4, #0xd
004eaf20  0e 20 84 e2                                      add r2, r4, #0xe
004eaf24  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eaf28  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eaf2c  02 00 53 e1                                      cmp r3, r2
004eaf30  01 10 20 e0                                      eor r1, r0, r1
004eaf34  01 10 43 e5                                      strb r1, [r3, #-1]
004eaf38  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eaf3c  00 10 21 e0                                      eor r1, r1, r0
004eaf40  01 10 c2 e5                                      strb r1, [r2, #1]
004eaf44  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eaf48  01 20 42 e2                                      sub r2, r2, #1
004eaf4c  00 10 21 e0                                      eor r1, r1, r0
004eaf50  01 10 43 e5                                      strb r1, [r3, #-1]
004eaf54  01 30 83 e2                                      add r3, r3, #1
004eaf58  f1 ff ff 3a                                      blo #0x4eaf24
004eaf5c  10 00 94 e5                                      ldr r0, [r4, #0x10]
004eaf60  00 00 50 e3                                      cmp r0, #0
004eaf64  00 00 00 0a                                      beq #0x4eaf6c
004eaf68  34 95 f8 eb                                      bl #0x310440
004eaf6c  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004eaf70  01 10 a0 e3                                      mov r1, #1
004eaf74  00 01 a0 e1                                      lsl r0, r0, #2
004eaf78  7b 95 f8 eb                                      bl #0x31056c
004eaf7c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004eaf80  10 00 84 e5                                      str r0, [r4, #0x10]
004eaf84  00 00 53 e3                                      cmp r3, #0
004eaf88  1f 00 00 0a                                      beq #0x4eb00c
004eaf8c  00 60 a0 e3                                      mov r6, #0
004eaf90  01 80 a0 e3                                      mov r8, #1
004eaf94  06 71 a0 e1                                      lsl r7, r6, #2
004eaf98  07 10 80 e0                                      add r1, r0, r7
004eaf9c  05 00 a0 e1                                      mov r0, r5
004eafa0  3a b8 fd eb                                      bl #0x459090
004eafa4  04 80 8d e5                                      str r8, [sp, #4]
004eafa8  00 00 58 e3                                      cmp r8, #0
004eafac  10 30 94 e5                                      ldr r3, [r4, #0x10]
004eafb0  10 00 00 1a                                      bne #0x4eaff8
004eafb4  07 70 83 e0                                      add r7, r3, r7
004eafb8  02 30 87 e2                                      add r3, r7, #2
004eafbc  01 70 87 e2                                      add r7, r7, #1
004eafc0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eafc4  01 20 57 e5                                      ldrb r2, [r7, #-1]
004eafc8  03 00 57 e1                                      cmp r7, r3
004eafcc  02 20 21 e0                                      eor r2, r1, r2
004eafd0  01 20 47 e5                                      strb r2, [r7, #-1]
004eafd4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eafd8  01 20 22 e0                                      eor r2, r2, r1
004eafdc  01 20 c3 e5                                      strb r2, [r3, #1]
004eafe0  01 10 57 e5                                      ldrb r1, [r7, #-1]
004eafe4  01 30 43 e2                                      sub r3, r3, #1
004eafe8  01 20 22 e0                                      eor r2, r2, r1
004eafec  01 20 47 e5                                      strb r2, [r7, #-1]
004eaff0  01 70 87 e2                                      add r7, r7, #1
004eaff4  f1 ff ff 3a                                      blo #0x4eafc0
004eaff8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004eaffc  01 60 86 e2                                      add r6, r6, #1
004eb000  06 00 53 e1                                      cmp r3, r6
004eb004  10 00 94 85                                      ldrhi r0, [r4, #0x10]
004eb008  e1 ff ff 8a                                      bhi #0x4eaf94
004eb00c  05 00 a0 e1                                      mov r0, r5
004eb010  14 10 84 e2                                      add r1, r4, #0x14
004eb014  61 d0 fb eb                                      bl #0x3df1a0
004eb018  01 30 a0 e3                                      mov r3, #1
004eb01c  00 00 53 e3                                      cmp r3, #0
004eb020  04 30 8d e5                                      str r3, [sp, #4]
004eb024  0f 00 00 1a                                      bne #0x4eb068
004eb028  15 30 84 e2                                      add r3, r4, #0x15
004eb02c  16 20 84 e2                                      add r2, r4, #0x16
004eb030  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb034  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb038  02 00 53 e1                                      cmp r3, r2
004eb03c  01 10 20 e0                                      eor r1, r0, r1
004eb040  01 10 43 e5                                      strb r1, [r3, #-1]
004eb044  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb048  00 10 21 e0                                      eor r1, r1, r0
004eb04c  01 10 c2 e5                                      strb r1, [r2, #1]
004eb050  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb054  01 20 42 e2                                      sub r2, r2, #1
004eb058  00 10 21 e0                                      eor r1, r1, r0
004eb05c  01 10 43 e5                                      strb r1, [r3, #-1]
004eb060  01 30 83 e2                                      add r3, r3, #1
004eb064  f1 ff ff 3a                                      blo #0x4eb030
004eb068  18 00 94 e5                                      ldr r0, [r4, #0x18]
004eb06c  00 00 50 e3                                      cmp r0, #0
004eb070  00 00 00 0a                                      beq #0x4eb078
004eb074  f1 94 f8 eb                                      bl #0x310440
004eb078  14 00 94 e5                                      ldr r0, [r4, #0x14]
004eb07c  01 10 a0 e3                                      mov r1, #1
004eb080  00 01 a0 e1                                      lsl r0, r0, #2
004eb084  38 95 f8 eb                                      bl #0x31056c
004eb088  14 30 94 e5                                      ldr r3, [r4, #0x14]
004eb08c  18 00 84 e5                                      str r0, [r4, #0x18]
004eb090  00 00 53 e3                                      cmp r3, #0
004eb094  1f 00 00 0a                                      beq #0x4eb118
004eb098  00 60 a0 e3                                      mov r6, #0
004eb09c  01 80 a0 e3                                      mov r8, #1
004eb0a0  06 71 a0 e1                                      lsl r7, r6, #2
004eb0a4  07 10 80 e0                                      add r1, r0, r7
004eb0a8  05 00 a0 e1                                      mov r0, r5
004eb0ac  f7 b7 fd eb                                      bl #0x459090
004eb0b0  04 80 8d e5                                      str r8, [sp, #4]
004eb0b4  00 00 58 e3                                      cmp r8, #0
004eb0b8  18 30 94 e5                                      ldr r3, [r4, #0x18]
004eb0bc  10 00 00 1a                                      bne #0x4eb104
004eb0c0  07 70 83 e0                                      add r7, r3, r7
004eb0c4  02 30 87 e2                                      add r3, r7, #2
004eb0c8  01 70 87 e2                                      add r7, r7, #1
004eb0cc  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb0d0  01 20 57 e5                                      ldrb r2, [r7, #-1]
004eb0d4  03 00 57 e1                                      cmp r7, r3
004eb0d8  02 20 21 e0                                      eor r2, r1, r2
004eb0dc  01 20 47 e5                                      strb r2, [r7, #-1]
004eb0e0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb0e4  01 20 22 e0                                      eor r2, r2, r1
004eb0e8  01 20 c3 e5                                      strb r2, [r3, #1]
004eb0ec  01 10 57 e5                                      ldrb r1, [r7, #-1]
004eb0f0  01 30 43 e2                                      sub r3, r3, #1
004eb0f4  01 20 22 e0                                      eor r2, r2, r1
004eb0f8  01 20 47 e5                                      strb r2, [r7, #-1]
004eb0fc  01 70 87 e2                                      add r7, r7, #1
004eb100  f1 ff ff 3a                                      blo #0x4eb0cc
004eb104  14 30 94 e5                                      ldr r3, [r4, #0x14]
004eb108  01 60 86 e2                                      add r6, r6, #1
004eb10c  06 00 53 e1                                      cmp r3, r6
004eb110  18 00 94 85                                      ldrhi r0, [r4, #0x18]
004eb114  e1 ff ff 8a                                      bhi #0x4eb0a0
004eb118  05 00 a0 e1                                      mov r0, r5
004eb11c  1c 10 84 e2                                      add r1, r4, #0x1c
004eb120  1e d0 fb eb                                      bl #0x3df1a0
004eb124  01 30 a0 e3                                      mov r3, #1
004eb128  00 00 53 e3                                      cmp r3, #0
004eb12c  04 30 8d e5                                      str r3, [sp, #4]
004eb130  0f 00 00 1a                                      bne #0x4eb174
004eb134  1d 30 84 e2                                      add r3, r4, #0x1d
004eb138  1e 20 84 e2                                      add r2, r4, #0x1e
004eb13c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb140  01 10 53 e5                                      ldrb r1, [r3, #-1]
004eb144  02 00 53 e1                                      cmp r3, r2
004eb148  01 10 20 e0                                      eor r1, r0, r1
004eb14c  01 10 43 e5                                      strb r1, [r3, #-1]
004eb150  01 00 d2 e5                                      ldrb r0, [r2, #1]
004eb154  00 10 21 e0                                      eor r1, r1, r0
004eb158  01 10 c2 e5                                      strb r1, [r2, #1]
004eb15c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004eb160  01 20 42 e2                                      sub r2, r2, #1
004eb164  00 10 21 e0                                      eor r1, r1, r0
004eb168  01 10 43 e5                                      strb r1, [r3, #-1]
004eb16c  01 30 83 e2                                      add r3, r3, #1
004eb170  f1 ff ff 3a                                      blo #0x4eb13c
004eb174  20 00 94 e5                                      ldr r0, [r4, #0x20]
004eb178  00 00 50 e3                                      cmp r0, #0
004eb17c  00 00 00 0a                                      beq #0x4eb184
004eb180  ae 94 f8 eb                                      bl #0x310440
004eb184  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
004eb188  01 10 a0 e3                                      mov r1, #1
004eb18c  00 01 a0 e1                                      lsl r0, r0, #2
004eb190  f5 94 f8 eb                                      bl #0x31056c
004eb194  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004eb198  20 00 84 e5                                      str r0, [r4, #0x20]
004eb19c  00 00 53 e3                                      cmp r3, #0
004eb1a0  1f 00 00 0a                                      beq #0x4eb224
004eb1a4  00 60 a0 e3                                      mov r6, #0
004eb1a8  01 80 a0 e3                                      mov r8, #1
004eb1ac  06 71 a0 e1                                      lsl r7, r6, #2
004eb1b0  07 10 80 e0                                      add r1, r0, r7
004eb1b4  05 00 a0 e1                                      mov r0, r5
004eb1b8  b4 b7 fd eb                                      bl #0x459090
004eb1bc  04 80 8d e5                                      str r8, [sp, #4]
004eb1c0  00 00 58 e3                                      cmp r8, #0
004eb1c4  20 30 94 e5                                      ldr r3, [r4, #0x20]
004eb1c8  10 00 00 1a                                      bne #0x4eb210
004eb1cc  07 70 83 e0                                      add r7, r3, r7
004eb1d0  02 30 87 e2                                      add r3, r7, #2
004eb1d4  01 70 87 e2                                      add r7, r7, #1
004eb1d8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb1dc  01 20 57 e5                                      ldrb r2, [r7, #-1]
004eb1e0  03 00 57 e1                                      cmp r7, r3
004eb1e4  02 20 21 e0                                      eor r2, r1, r2
004eb1e8  01 20 47 e5                                      strb r2, [r7, #-1]
004eb1ec  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eb1f0  01 20 22 e0                                      eor r2, r2, r1
004eb1f4  01 20 c3 e5                                      strb r2, [r3, #1]
004eb1f8  01 10 57 e5                                      ldrb r1, [r7, #-1]
004eb1fc  01 30 43 e2                                      sub r3, r3, #1
004eb200  01 20 22 e0                                      eor r2, r2, r1
004eb204  01 20 47 e5                                      strb r2, [r7, #-1]
004eb208  01 70 87 e2                                      add r7, r7, #1
004eb20c  f1 ff ff 3a                                      blo #0x4eb1d8
004eb210  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
004eb214  01 60 86 e2                                      add r6, r6, #1
004eb218  06 00 53 e1                                      cmp r3, r6
004eb21c  20 00 94 85                                      ldrhi r0, [r4, #0x20]
004eb220  e1 ff ff 8a                                      bhi #0x4eb1ac
004eb224  24 10 84 e2                                      add r1, r4, #0x24
004eb228  05 00 a0 e1                                      mov r0, r5
004eb22c  9a c1 ff eb                                      bl #0x4db89c
004eb230  05 00 a0 e1                                      mov r0, r5
004eb234  25 10 84 e2                                      add r1, r4, #0x25
004eb238  97 c1 ff eb                                      bl #0x4db89c
004eb23c  08 d0 8d e2                                      add sp, sp, #8
004eb240  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
