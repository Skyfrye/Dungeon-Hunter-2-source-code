; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004dac4c, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ColladaFile
; alias: _ZN7Structs11ColladaFile8finalizeEv
; demangled: Structs::ColladaFile::finalize()
; decoder-mode: arm
004dac4c  10 40 2d e9                                      push {r4, lr}
004dac50  00 40 a0 e1                                      mov r4, r0
004dac54  08 00 90 e5                                      ldr r0, [r0, #8]
004dac58  00 00 50 e3                                      cmp r0, #0
004dac5c  03 00 00 0a                                      beq #0x4dac70
004dac60  f6 d5 f8 eb                                      bl #0x310440
004dac64  00 30 a0 e3                                      mov r3, #0
004dac68  04 30 84 e5                                      str r3, [r4, #4]
004dac6c  08 30 84 e5                                      str r3, [r4, #8]
004dac70  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dac74, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ColladaFile
; alias: _ZN7Structs11ColladaFileD1Ev
; demangled: Structs::ColladaFile::~ColladaFile()
; decoder-mode: arm
004dac74  10 40 2d e9                                      push {r4, lr}
004dac78  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004dac7c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004dac80  00 40 a0 e1                                      mov r4, r0
004dac84  03 30 8f e0                                      add r3, pc, r3
004dac88  08 00 90 e5                                      ldr r0, [r0, #8]
004dac8c  02 20 93 e7                                      ldr r2, [r3, r2]
004dac90  00 00 50 e3                                      cmp r0, #0
004dac94  08 20 82 e2                                      add r2, r2, #8
004dac98  00 20 84 e5                                      str r2, [r4]
004dac9c  00 00 00 0a                                      beq #0x4daca4
004daca0  e6 d5 f8 eb                                      bl #0x310440
004daca4  04 00 a0 e1                                      mov r0, r4
004daca8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004dacac  0c 9e 4b 00 bc 0a 00 00                          .byte 0x0c, 0x9e, 0x4b, 0x00, 0xbc, 0x0a, 0x00, 0x00

; FUNCTION 0x004dacb4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ColladaFile
; alias: _ZN7Structs11ColladaFileD0Ev
; demangled: Structs::ColladaFile::~ColladaFile()
; decoder-mode: arm
004dacb4  10 40 2d e9                                      push {r4, lr}
004dacb8  00 40 a0 e1                                      mov r4, r0
004dacbc  ec ff ff eb                                      bl #0x4dac74
004dacc0  04 00 a0 e1                                      mov r0, r4
004dacc4  dd d5 f8 eb                                      bl #0x310440
004dacc8  04 00 a0 e1                                      mov r0, r4
004daccc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004dacd0, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ColladaFile
; alias: _ZN7Structs11ColladaFileD2Ev
; demangled: Structs::ColladaFile::~ColladaFile()
; decoder-mode: arm
004dacd0  10 40 2d e9                                      push {r4, lr}
004dacd4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004dacd8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004dacdc  00 40 a0 e1                                      mov r4, r0
004dace0  03 30 8f e0                                      add r3, pc, r3
004dace4  08 00 90 e5                                      ldr r0, [r0, #8]
004dace8  02 20 93 e7                                      ldr r2, [r3, r2]
004dacec  00 00 50 e3                                      cmp r0, #0
004dacf0  08 20 82 e2                                      add r2, r2, #8
004dacf4  00 20 84 e5                                      str r2, [r4]
004dacf8  00 00 00 0a                                      beq #0x4dad00
004dacfc  cf d5 f8 eb                                      bl #0x310440
004dad00  04 00 a0 e1                                      mov r0, r4
004dad04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004dad08  b0 9d 4b 00 bc 0a 00 00                          .byte 0xb0, 0x9d, 0x4b, 0x00, 0xbc, 0x0a, 0x00, 0x00

; FUNCTION 0x004dc424, declared_size=188, range_size=188, mode=arm
; class-group: Structs::ColladaFile
; alias: _ZN7Structs11ColladaFile4readEP11IStreamBase
; demangled: Structs::ColladaFile::read(IStreamBase*)
; decoder-mode: arm
004dc424  70 40 2d e9                                      push {r4, r5, r6, lr}
004dc428  00 40 a0 e1                                      mov r4, r0
004dc42c  08 d0 4d e2                                      sub sp, sp, #8
004dc430  01 00 a0 e1                                      mov r0, r1
004dc434  01 60 a0 e1                                      mov r6, r1
004dc438  04 10 84 e2                                      add r1, r4, #4
004dc43c  57 0b fc eb                                      bl #0x3df1a0
004dc440  01 30 a0 e3                                      mov r3, #1
004dc444  00 00 53 e3                                      cmp r3, #0
004dc448  04 30 8d e5                                      str r3, [sp, #4]
004dc44c  0f 00 00 1a                                      bne #0x4dc490
004dc450  05 30 84 e2                                      add r3, r4, #5
004dc454  06 20 84 e2                                      add r2, r4, #6
004dc458  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc45c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc460  02 00 53 e1                                      cmp r3, r2
004dc464  01 10 20 e0                                      eor r1, r0, r1
004dc468  01 10 43 e5                                      strb r1, [r3, #-1]
004dc46c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc470  00 10 21 e0                                      eor r1, r1, r0
004dc474  01 10 c2 e5                                      strb r1, [r2, #1]
004dc478  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc47c  01 20 42 e2                                      sub r2, r2, #1
004dc480  00 10 21 e0                                      eor r1, r1, r0
004dc484  01 10 43 e5                                      strb r1, [r3, #-1]
004dc488  01 30 83 e2                                      add r3, r3, #1
004dc48c  f1 ff ff 3a                                      blo #0x4dc458
004dc490  08 00 94 e5                                      ldr r0, [r4, #8]
004dc494  00 00 50 e3                                      cmp r0, #0
004dc498  00 00 00 0a                                      beq #0x4dc4a0
004dc49c  e7 cf f8 eb                                      bl #0x310440
004dc4a0  04 00 94 e5                                      ldr r0, [r4, #4]
004dc4a4  01 10 a0 e3                                      mov r1, #1
004dc4a8  00 50 a0 e3                                      mov r5, #0
004dc4ac  01 00 80 e0                                      add r0, r0, r1
004dc4b0  2d d0 f8 eb                                      bl #0x31056c
004dc4b4  04 20 94 e5                                      ldr r2, [r4, #4]
004dc4b8  00 10 a0 e1                                      mov r1, r0
004dc4bc  08 00 84 e5                                      str r0, [r4, #8]
004dc4c0  05 30 a0 e1                                      mov r3, r5
004dc4c4  06 00 a0 e1                                      mov r0, r6
004dc4c8  e1 eb f8 eb                                      bl #0x317454
004dc4cc  04 30 94 e5                                      ldr r3, [r4, #4]
004dc4d0  08 20 94 e5                                      ldr r2, [r4, #8]
004dc4d4  03 50 c2 e7                                      strb r5, [r2, r3]
004dc4d8  08 d0 8d e2                                      add sp, sp, #8
004dc4dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
