; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d53f0, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ItemAudioVisual
; alias: _ZN7Structs15ItemAudioVisual8finalizeEv
; demangled: Structs::ItemAudioVisual::finalize()
; decoder-mode: arm
004d53f0  10 40 2d e9                                      push {r4, lr}
004d53f4  00 40 a0 e1                                      mov r4, r0
004d53f8  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d53fc  00 00 50 e3                                      cmp r0, #0
004d5400  03 00 00 0a                                      beq #0x4d5414
004d5404  0d ec f8 eb                                      bl #0x310440
004d5408  00 30 a0 e3                                      mov r3, #0
004d540c  0c 30 84 e5                                      str r3, [r4, #0xc]
004d5410  10 30 84 e5                                      str r3, [r4, #0x10]
004d5414  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5418, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemAudioVisual
; alias: _ZN7Structs15ItemAudioVisualD1Ev
; demangled: Structs::ItemAudioVisual::~ItemAudioVisual()
; decoder-mode: arm
004d5418  10 40 2d e9                                      push {r4, lr}
004d541c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d5420  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d5424  00 40 a0 e1                                      mov r4, r0
004d5428  03 30 8f e0                                      add r3, pc, r3
004d542c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d5430  02 20 93 e7                                      ldr r2, [r3, r2]
004d5434  00 00 50 e3                                      cmp r0, #0
004d5438  08 20 82 e2                                      add r2, r2, #8
004d543c  00 20 84 e5                                      str r2, [r4]
004d5440  00 00 00 0a                                      beq #0x4d5448
004d5444  fd eb f8 eb                                      bl #0x310440
004d5448  04 00 a0 e1                                      mov r0, r4
004d544c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5450  68 f6 4b 00 24 42 00 00                          .byte 0x68, 0xf6, 0x4b, 0x00, 0x24, 0x42, 0x00, 0x00

; FUNCTION 0x004d5458, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemAudioVisual
; alias: _ZN7Structs15ItemAudioVisualD0Ev
; demangled: Structs::ItemAudioVisual::~ItemAudioVisual()
; decoder-mode: arm
004d5458  10 40 2d e9                                      push {r4, lr}
004d545c  00 40 a0 e1                                      mov r4, r0
004d5460  ec ff ff eb                                      bl #0x4d5418
004d5464  04 00 a0 e1                                      mov r0, r4
004d5468  f4 eb f8 eb                                      bl #0x310440
004d546c  04 00 a0 e1                                      mov r0, r4
004d5470  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5474, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemAudioVisual
; alias: _ZN7Structs15ItemAudioVisualD2Ev
; demangled: Structs::ItemAudioVisual::~ItemAudioVisual()
; decoder-mode: arm
004d5474  10 40 2d e9                                      push {r4, lr}
004d5478  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d547c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d5480  00 40 a0 e1                                      mov r4, r0
004d5484  03 30 8f e0                                      add r3, pc, r3
004d5488  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d548c  02 20 93 e7                                      ldr r2, [r3, r2]
004d5490  00 00 50 e3                                      cmp r0, #0
004d5494  08 20 82 e2                                      add r2, r2, #8
004d5498  00 20 84 e5                                      str r2, [r4]
004d549c  00 00 00 0a                                      beq #0x4d54a4
004d54a0  e6 eb f8 eb                                      bl #0x310440
004d54a4  04 00 a0 e1                                      mov r0, r4
004d54a8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d54ac  0c f6 4b 00 24 42 00 00                          .byte 0x0c, 0xf6, 0x4b, 0x00, 0x24, 0x42, 0x00, 0x00

; FUNCTION 0x004fc910, declared_size=372, range_size=372, mode=arm
; class-group: Structs::ItemAudioVisual
; alias: _ZN7Structs15ItemAudioVisual4readEP11IStreamBase
; demangled: Structs::ItemAudioVisual::read(IStreamBase*)
; decoder-mode: arm
004fc910  70 40 2d e9                                      push {r4, r5, r6, lr}
004fc914  00 40 a0 e1                                      mov r4, r0
004fc918  08 d0 4d e2                                      sub sp, sp, #8
004fc91c  01 00 a0 e1                                      mov r0, r1
004fc920  01 60 a0 e1                                      mov r6, r1
004fc924  04 10 84 e2                                      add r1, r4, #4
004fc928  d8 71 fd eb                                      bl #0x459090
004fc92c  01 30 a0 e3                                      mov r3, #1
004fc930  00 00 53 e3                                      cmp r3, #0
004fc934  04 30 8d e5                                      str r3, [sp, #4]
004fc938  0f 00 00 1a                                      bne #0x4fc97c
004fc93c  05 30 84 e2                                      add r3, r4, #5
004fc940  06 20 84 e2                                      add r2, r4, #6
004fc944  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc948  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc94c  02 00 53 e1                                      cmp r3, r2
004fc950  01 10 20 e0                                      eor r1, r0, r1
004fc954  01 10 43 e5                                      strb r1, [r3, #-1]
004fc958  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc95c  00 10 21 e0                                      eor r1, r1, r0
004fc960  01 10 c2 e5                                      strb r1, [r2, #1]
004fc964  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc968  01 20 42 e2                                      sub r2, r2, #1
004fc96c  00 10 21 e0                                      eor r1, r1, r0
004fc970  01 10 43 e5                                      strb r1, [r3, #-1]
004fc974  01 30 83 e2                                      add r3, r3, #1
004fc978  f1 ff ff 3a                                      blo #0x4fc944
004fc97c  06 00 a0 e1                                      mov r0, r6
004fc980  08 10 84 e2                                      add r1, r4, #8
004fc984  c1 71 fd eb                                      bl #0x459090
004fc988  01 30 a0 e3                                      mov r3, #1
004fc98c  00 00 53 e3                                      cmp r3, #0
004fc990  04 30 8d e5                                      str r3, [sp, #4]
004fc994  0f 00 00 1a                                      bne #0x4fc9d8
004fc998  09 30 84 e2                                      add r3, r4, #9
004fc99c  0a 20 84 e2                                      add r2, r4, #0xa
004fc9a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc9a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc9a8  03 00 52 e1                                      cmp r2, r3
004fc9ac  01 10 20 e0                                      eor r1, r0, r1
004fc9b0  01 10 43 e5                                      strb r1, [r3, #-1]
004fc9b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc9b8  00 10 21 e0                                      eor r1, r1, r0
004fc9bc  01 10 c2 e5                                      strb r1, [r2, #1]
004fc9c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc9c4  01 20 42 e2                                      sub r2, r2, #1
004fc9c8  00 10 21 e0                                      eor r1, r1, r0
004fc9cc  01 10 43 e5                                      strb r1, [r3, #-1]
004fc9d0  01 30 83 e2                                      add r3, r3, #1
004fc9d4  f1 ff ff 8a                                      bhi #0x4fc9a0
004fc9d8  06 00 a0 e1                                      mov r0, r6
004fc9dc  0c 10 84 e2                                      add r1, r4, #0xc
004fc9e0  ee 89 fb eb                                      bl #0x3df1a0
004fc9e4  01 30 a0 e3                                      mov r3, #1
004fc9e8  00 00 53 e3                                      cmp r3, #0
004fc9ec  04 30 8d e5                                      str r3, [sp, #4]
004fc9f0  0f 00 00 1a                                      bne #0x4fca34
004fc9f4  0d 30 84 e2                                      add r3, r4, #0xd
004fc9f8  0e 20 84 e2                                      add r2, r4, #0xe
004fc9fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fca00  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fca04  03 00 52 e1                                      cmp r2, r3
004fca08  01 10 20 e0                                      eor r1, r0, r1
004fca0c  01 10 43 e5                                      strb r1, [r3, #-1]
004fca10  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fca14  00 10 21 e0                                      eor r1, r1, r0
004fca18  01 10 c2 e5                                      strb r1, [r2, #1]
004fca1c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fca20  01 20 42 e2                                      sub r2, r2, #1
004fca24  00 10 21 e0                                      eor r1, r1, r0
004fca28  01 10 43 e5                                      strb r1, [r3, #-1]
004fca2c  01 30 83 e2                                      add r3, r3, #1
004fca30  f1 ff ff 8a                                      bhi #0x4fc9fc
004fca34  10 00 94 e5                                      ldr r0, [r4, #0x10]
004fca38  00 00 50 e3                                      cmp r0, #0
004fca3c  00 00 00 0a                                      beq #0x4fca44
004fca40  7e 4e f8 eb                                      bl #0x310440
004fca44  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fca48  01 10 a0 e3                                      mov r1, #1
004fca4c  00 50 a0 e3                                      mov r5, #0
004fca50  01 00 80 e0                                      add r0, r0, r1
004fca54  c4 4e f8 eb                                      bl #0x31056c
004fca58  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fca5c  00 10 a0 e1                                      mov r1, r0
004fca60  10 00 84 e5                                      str r0, [r4, #0x10]
004fca64  05 30 a0 e1                                      mov r3, r5
004fca68  06 00 a0 e1                                      mov r0, r6
004fca6c  78 6a f8 eb                                      bl #0x317454
004fca70  0c 30 94 e5                                      ldr r3, [r4, #0xc]
004fca74  10 20 94 e5                                      ldr r2, [r4, #0x10]
004fca78  03 50 c2 e7                                      strb r5, [r2, r3]
004fca7c  08 d0 8d e2                                      add sp, sp, #8
004fca80  70 80 bd e8                                      pop {r4, r5, r6, pc}
