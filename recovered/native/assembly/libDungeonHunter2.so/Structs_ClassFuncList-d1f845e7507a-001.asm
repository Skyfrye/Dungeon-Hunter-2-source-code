; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db0c4, declared_size=104, range_size=104, mode=arm
; class-group: Structs::ClassFuncList
; alias: _ZN7Structs13ClassFuncList8finalizeEv
; demangled: Structs::ClassFuncList::finalize()
; decoder-mode: arm
004db0c4  70 40 2d e9                                      push {r4, r5, r6, lr}
004db0c8  08 30 90 e5                                      ldr r3, [r0, #8]
004db0cc  00 50 a0 e1                                      mov r5, r0
004db0d0  00 00 53 e3                                      cmp r3, #0
004db0d4  13 00 00 0a                                      beq #0x4db128
004db0d8  04 20 13 e5                                      ldr r2, [r3, #-4]
004db0dc  18 00 a0 e3                                      mov r0, #0x18
004db0e0  90 32 20 e0                                      mla r0, r0, r2, r3
004db0e4  00 00 53 e1                                      cmp r3, r0
004db0e8  01 00 00 1a                                      bne #0x4db0f4
004db0ec  08 00 00 ea                                      b #0x4db114
004db0f0  04 00 a0 e1                                      mov r0, r4
004db0f4  18 40 40 e2                                      sub r4, r0, #0x18
004db0f8  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004db0fc  04 00 a0 e1                                      mov r0, r4
004db100  0f e0 a0 e1                                      mov lr, pc
004db104  00 f0 93 e5                                      ldr pc, [r3]
004db108  08 00 95 e5                                      ldr r0, [r5, #8]
004db10c  04 00 50 e1                                      cmp r0, r4
004db110  f6 ff ff 1a                                      bne #0x4db0f0
004db114  08 00 40 e2                                      sub r0, r0, #8
004db118  c8 d4 f8 eb                                      bl #0x310440
004db11c  00 30 a0 e3                                      mov r3, #0
004db120  04 30 85 e5                                      str r3, [r5, #4]
004db124  08 30 85 e5                                      str r3, [r5, #8]
004db128  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004db12c, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ClassFuncList
; alias: _ZN7Structs13ClassFuncListD1Ev
; demangled: Structs::ClassFuncList::~ClassFuncList()
; decoder-mode: arm
004db12c  70 40 2d e9                                      push {r4, r5, r6, lr}
004db130  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004db134  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004db138  08 10 90 e5                                      ldr r1, [r0, #8]
004db13c  03 30 8f e0                                      add r3, pc, r3
004db140  02 20 93 e7                                      ldr r2, [r3, r2]
004db144  00 00 51 e3                                      cmp r1, #0
004db148  00 50 a0 e1                                      mov r5, r0
004db14c  08 20 82 e2                                      add r2, r2, #8
004db150  00 20 80 e5                                      str r2, [r0]
004db154  10 00 00 0a                                      beq #0x4db19c
004db158  04 30 11 e5                                      ldr r3, [r1, #-4]
004db15c  18 00 a0 e3                                      mov r0, #0x18
004db160  90 13 20 e0                                      mla r0, r0, r3, r1
004db164  00 00 51 e1                                      cmp r1, r0
004db168  01 00 00 1a                                      bne #0x4db174
004db16c  08 00 00 ea                                      b #0x4db194
004db170  04 00 a0 e1                                      mov r0, r4
004db174  18 40 40 e2                                      sub r4, r0, #0x18
004db178  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004db17c  04 00 a0 e1                                      mov r0, r4
004db180  0f e0 a0 e1                                      mov lr, pc
004db184  00 f0 93 e5                                      ldr pc, [r3]
004db188  08 00 95 e5                                      ldr r0, [r5, #8]
004db18c  04 00 50 e1                                      cmp r0, r4
004db190  f6 ff ff 1a                                      bne #0x4db170
004db194  08 00 40 e2                                      sub r0, r0, #8
004db198  a8 d4 f8 eb                                      bl #0x310440
004db19c  05 00 a0 e1                                      mov r0, r5
004db1a0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db1a4  54 99 4b 00 54 4c 00 00                          .byte 0x54, 0x99, 0x4b, 0x00, 0x54, 0x4c, 0x00, 0x00

; FUNCTION 0x004db1ac, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ClassFuncList
; alias: _ZN7Structs13ClassFuncListD0Ev
; demangled: Structs::ClassFuncList::~ClassFuncList()
; decoder-mode: arm
004db1ac  10 40 2d e9                                      push {r4, lr}
004db1b0  00 40 a0 e1                                      mov r4, r0
004db1b4  dc ff ff eb                                      bl #0x4db12c
004db1b8  04 00 a0 e1                                      mov r0, r4
004db1bc  9f d4 f8 eb                                      bl #0x310440
004db1c0  04 00 a0 e1                                      mov r0, r4
004db1c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db1c8, declared_size=128, range_size=128, mode=arm
; class-group: Structs::ClassFuncList
; alias: _ZN7Structs13ClassFuncListD2Ev
; demangled: Structs::ClassFuncList::~ClassFuncList()
; decoder-mode: arm
004db1c8  70 40 2d e9                                      push {r4, r5, r6, lr}
004db1cc  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
004db1d0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
004db1d4  08 10 90 e5                                      ldr r1, [r0, #8]
004db1d8  03 30 8f e0                                      add r3, pc, r3
004db1dc  02 20 93 e7                                      ldr r2, [r3, r2]
004db1e0  00 00 51 e3                                      cmp r1, #0
004db1e4  00 50 a0 e1                                      mov r5, r0
004db1e8  08 20 82 e2                                      add r2, r2, #8
004db1ec  00 20 80 e5                                      str r2, [r0]
004db1f0  10 00 00 0a                                      beq #0x4db238
004db1f4  04 30 11 e5                                      ldr r3, [r1, #-4]
004db1f8  18 00 a0 e3                                      mov r0, #0x18
004db1fc  90 13 20 e0                                      mla r0, r0, r3, r1
004db200  00 00 51 e1                                      cmp r1, r0
004db204  01 00 00 1a                                      bne #0x4db210
004db208  08 00 00 ea                                      b #0x4db230
004db20c  04 00 a0 e1                                      mov r0, r4
004db210  18 40 40 e2                                      sub r4, r0, #0x18
004db214  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004db218  04 00 a0 e1                                      mov r0, r4
004db21c  0f e0 a0 e1                                      mov lr, pc
004db220  00 f0 93 e5                                      ldr pc, [r3]
004db224  08 00 95 e5                                      ldr r0, [r5, #8]
004db228  04 00 50 e1                                      cmp r0, r4
004db22c  f6 ff ff 1a                                      bne #0x4db20c
004db230  08 00 40 e2                                      sub r0, r0, #8
004db234  81 d4 f8 eb                                      bl #0x310440
004db238  05 00 a0 e1                                      mov r0, r5
004db23c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004db240  b8 98 4b 00 54 4c 00 00                          .byte 0xb8, 0x98, 0x4b, 0x00, 0x54, 0x4c, 0x00, 0x00

; FUNCTION 0x004dcfec, declared_size=364, range_size=364, mode=arm
; class-group: Structs::ClassFuncList
; alias: _ZN7Structs13ClassFuncList4readEP11IStreamBase
; demangled: Structs::ClassFuncList::read(IStreamBase*)
; decoder-mode: arm
004dcfec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004dcff0  00 50 a0 e1                                      mov r5, r0
004dcff4  0c d0 4d e2                                      sub sp, sp, #0xc
004dcff8  01 00 a0 e1                                      mov r0, r1
004dcffc  01 70 a0 e1                                      mov r7, r1
004dd000  48 61 9f e5                                      ldr r6, [pc, #0x148]
004dd004  04 10 85 e2                                      add r1, r5, #4
004dd008  64 08 fc eb                                      bl #0x3df1a0
004dd00c  01 30 a0 e3                                      mov r3, #1
004dd010  00 00 53 e3                                      cmp r3, #0
004dd014  04 30 8d e5                                      str r3, [sp, #4]
004dd018  06 60 8f e0                                      add r6, pc, r6
004dd01c  0f 00 00 1a                                      bne #0x4dd060
004dd020  05 30 85 e2                                      add r3, r5, #5
004dd024  06 20 85 e2                                      add r2, r5, #6
004dd028  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd02c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dd030  02 00 53 e1                                      cmp r3, r2
004dd034  01 10 20 e0                                      eor r1, r0, r1
004dd038  01 10 43 e5                                      strb r1, [r3, #-1]
004dd03c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dd040  00 10 21 e0                                      eor r1, r1, r0
004dd044  01 10 c2 e5                                      strb r1, [r2, #1]
004dd048  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dd04c  01 20 42 e2                                      sub r2, r2, #1
004dd050  00 10 21 e0                                      eor r1, r1, r0
004dd054  01 10 43 e5                                      strb r1, [r3, #-1]
004dd058  01 30 83 e2                                      add r3, r3, #1
004dd05c  f1 ff ff 3a                                      blo #0x4dd028
004dd060  08 30 95 e5                                      ldr r3, [r5, #8]
004dd064  00 00 53 e3                                      cmp r3, #0
004dd068  10 00 00 0a                                      beq #0x4dd0b0
004dd06c  04 20 13 e5                                      ldr r2, [r3, #-4]
004dd070  18 00 a0 e3                                      mov r0, #0x18
004dd074  90 32 20 e0                                      mla r0, r0, r2, r3
004dd078  00 00 53 e1                                      cmp r3, r0
004dd07c  01 00 00 1a                                      bne #0x4dd088
004dd080  08 00 00 ea                                      b #0x4dd0a8
004dd084  04 00 a0 e1                                      mov r0, r4
004dd088  18 40 40 e2                                      sub r4, r0, #0x18
004dd08c  18 30 10 e5                                      ldr r3, [r0, #-0x18]
004dd090  04 00 a0 e1                                      mov r0, r4
004dd094  0f e0 a0 e1                                      mov lr, pc
004dd098  00 f0 93 e5                                      ldr pc, [r3]
004dd09c  08 00 95 e5                                      ldr r0, [r5, #8]
004dd0a0  04 00 50 e1                                      cmp r0, r4
004dd0a4  f6 ff ff 1a                                      bne #0x4dd084
004dd0a8  08 00 40 e2                                      sub r0, r0, #8
004dd0ac  e3 cc f8 eb                                      bl #0x310440
004dd0b0  04 40 95 e5                                      ldr r4, [r5, #4]
004dd0b4  01 10 a0 e3                                      mov r1, #1
004dd0b8  84 00 84 e0                                      add r0, r4, r4, lsl #1
004dd0bc  01 00 80 e0                                      add r0, r0, r1
004dd0c0  80 01 a0 e1                                      lsl r0, r0, #3
004dd0c4  28 cd f8 eb                                      bl #0x31056c
004dd0c8  18 30 a0 e3                                      mov r3, #0x18
004dd0cc  00 00 54 e3                                      cmp r4, #0
004dd0d0  18 00 80 e8                                      stm r0, {r3, r4}
004dd0d4  08 30 80 e2                                      add r3, r0, #8
004dd0d8  08 00 00 0a                                      beq #0x4dd100
004dd0dc  70 10 9f e5                                      ldr r1, [pc, #0x70]
004dd0e0  00 20 a0 e3                                      mov r2, #0
004dd0e4  01 10 96 e7                                      ldr r1, [r6, r1]
004dd0e8  08 10 81 e2                                      add r1, r1, #8
004dd0ec  01 20 82 e2                                      add r2, r2, #1
004dd0f0  04 00 52 e1                                      cmp r2, r4
004dd0f4  08 10 80 e5                                      str r1, [r0, #8]
004dd0f8  18 00 80 e2                                      add r0, r0, #0x18
004dd0fc  fa ff ff 1a                                      bne #0x4dd0ec
004dd100  04 20 95 e5                                      ldr r2, [r5, #4]
004dd104  08 30 85 e5                                      str r3, [r5, #8]
004dd108  00 00 52 e3                                      cmp r2, #0
004dd10c  0d 00 00 0a                                      beq #0x4dd148
004dd110  00 40 a0 e3                                      mov r4, #0
004dd114  04 60 a0 e1                                      mov r6, r4
004dd118  00 00 00 ea                                      b #0x4dd120
004dd11c  08 30 95 e5                                      ldr r3, [r5, #8]
004dd120  04 00 83 e0                                      add r0, r3, r4
004dd124  07 10 a0 e1                                      mov r1, r7
004dd128  04 30 93 e7                                      ldr r3, [r3, r4]
004dd12c  0f e0 a0 e1                                      mov lr, pc
004dd130  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dd134  04 30 95 e5                                      ldr r3, [r5, #4]
004dd138  01 60 86 e2                                      add r6, r6, #1
004dd13c  18 40 84 e2                                      add r4, r4, #0x18
004dd140  06 00 53 e1                                      cmp r3, r6
004dd144  f4 ff ff 8a                                      bhi #0x4dd11c
004dd148  0c d0 8d e2                                      add sp, sp, #0xc
004dd14c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004dd150  78 7a 4b 00 d0 23 00 00                          .byte 0x78, 0x7a, 0x4b, 0x00, 0xd0, 0x23, 0x00, 0x00
