; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d48ac, declared_size=76, range_size=76, mode=arm
; class-group: Structs::Item
; alias: _ZN7Structs4Item8finalizeEv
; demangled: Structs::Item::finalize()
; decoder-mode: arm
004d48ac  10 40 2d e9                                      push {r4, lr}
004d48b0  00 40 a0 e1                                      mov r4, r0
004d48b4  08 00 90 e5                                      ldr r0, [r0, #8]
004d48b8  00 00 50 e3                                      cmp r0, #0
004d48bc  03 00 00 0a                                      beq #0x4d48d0
004d48c0  de ee f8 eb                                      bl #0x310440
004d48c4  00 30 a0 e3                                      mov r3, #0
004d48c8  04 30 84 e5                                      str r3, [r4, #4]
004d48cc  08 30 84 e5                                      str r3, [r4, #8]
004d48d0  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d48d4  00 00 50 e3                                      cmp r0, #0
004d48d8  03 00 00 0a                                      beq #0x4d48ec
004d48dc  d7 ee f8 eb                                      bl #0x310440
004d48e0  00 30 a0 e3                                      mov r3, #0
004d48e4  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d48e8  50 30 84 e5                                      str r3, [r4, #0x50]
004d48ec  04 00 a0 e1                                      mov r0, r4
004d48f0  10 40 bd e8                                      pop {r4, lr}
004d48f4  fe fe ff ea                                      b #0x4d44f4

; FUNCTION 0x004d5324, declared_size=88, range_size=88, mode=arm
; class-group: Structs::Item
; alias: _ZN7Structs4ItemD1Ev
; demangled: Structs::Item::~Item()
; decoder-mode: arm
004d5324  10 40 2d e9                                      push {r4, lr}
004d5328  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d532c  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d5330  00 40 a0 e1                                      mov r4, r0
004d5334  03 30 8f e0                                      add r3, pc, r3
004d5338  08 00 90 e5                                      ldr r0, [r0, #8]
004d533c  02 20 93 e7                                      ldr r2, [r3, r2]
004d5340  00 00 50 e3                                      cmp r0, #0
004d5344  08 20 82 e2                                      add r2, r2, #8
004d5348  00 20 84 e5                                      str r2, [r4]
004d534c  00 00 00 0a                                      beq #0x4d5354
004d5350  3a ec f8 eb                                      bl #0x310440
004d5354  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d5358  00 00 50 e3                                      cmp r0, #0
004d535c  00 00 00 0a                                      beq #0x4d5364
004d5360  36 ec f8 eb                                      bl #0x310440
004d5364  04 00 a0 e1                                      mov r0, r4
004d5368  79 fd ff eb                                      bl #0x4d4954
004d536c  04 00 a0 e1                                      mov r0, r4
004d5370  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5374  5c f7 4b 00 54 41 00 00                          .byte 0x5c, 0xf7, 0x4b, 0x00, 0x54, 0x41, 0x00, 0x00

; FUNCTION 0x004d537c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::Item
; alias: _ZN7Structs4ItemD0Ev
; demangled: Structs::Item::~Item()
; decoder-mode: arm
004d537c  10 40 2d e9                                      push {r4, lr}
004d5380  00 40 a0 e1                                      mov r4, r0
004d5384  e6 ff ff eb                                      bl #0x4d5324
004d5388  04 00 a0 e1                                      mov r0, r4
004d538c  2b ec f8 eb                                      bl #0x310440
004d5390  04 00 a0 e1                                      mov r0, r4
004d5394  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d5398, declared_size=88, range_size=88, mode=arm
; class-group: Structs::Item
; alias: _ZN7Structs4ItemD2Ev
; demangled: Structs::Item::~Item()
; decoder-mode: arm
004d5398  10 40 2d e9                                      push {r4, lr}
004d539c  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d53a0  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d53a4  00 40 a0 e1                                      mov r4, r0
004d53a8  03 30 8f e0                                      add r3, pc, r3
004d53ac  08 00 90 e5                                      ldr r0, [r0, #8]
004d53b0  02 20 93 e7                                      ldr r2, [r3, r2]
004d53b4  00 00 50 e3                                      cmp r0, #0
004d53b8  08 20 82 e2                                      add r2, r2, #8
004d53bc  00 20 84 e5                                      str r2, [r4]
004d53c0  00 00 00 0a                                      beq #0x4d53c8
004d53c4  1d ec f8 eb                                      bl #0x310440
004d53c8  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d53cc  00 00 50 e3                                      cmp r0, #0
004d53d0  00 00 00 0a                                      beq #0x4d53d8
004d53d4  19 ec f8 eb                                      bl #0x310440
004d53d8  04 00 a0 e1                                      mov r0, r4
004d53dc  5c fd ff eb                                      bl #0x4d4954
004d53e0  04 00 a0 e1                                      mov r0, r4
004d53e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d53e8  e8 f6 4b 00 54 41 00 00                          .byte 0xe8, 0xf6, 0x4b, 0x00, 0x54, 0x41, 0x00, 0x00

; FUNCTION 0x004fc068, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::Item
; alias: _ZN7Structs4Item4readEP11IStreamBase
; demangled: Structs::Item::read(IStreamBase*)
; decoder-mode: arm
004fc068  70 40 2d e9                                      push {r4, r5, r6, lr}
004fc06c  00 40 a0 e1                                      mov r4, r0
004fc070  08 d0 4d e2                                      sub sp, sp, #8
004fc074  01 50 a0 e1                                      mov r5, r1
004fc078  ff c0 ff eb                                      bl #0x4ec47c
004fc07c  05 00 a0 e1                                      mov r0, r5
004fc080  44 10 84 e2                                      add r1, r4, #0x44
004fc084  01 74 fd eb                                      bl #0x459090
004fc088  01 30 a0 e3                                      mov r3, #1
004fc08c  00 00 53 e3                                      cmp r3, #0
004fc090  04 30 8d e5                                      str r3, [sp, #4]
004fc094  0f 00 00 1a                                      bne #0x4fc0d8
004fc098  45 30 84 e2                                      add r3, r4, #0x45
004fc09c  46 20 84 e2                                      add r2, r4, #0x46
004fc0a0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc0a4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc0a8  02 00 53 e1                                      cmp r3, r2
004fc0ac  01 10 20 e0                                      eor r1, r0, r1
004fc0b0  01 10 43 e5                                      strb r1, [r3, #-1]
004fc0b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc0b8  00 10 21 e0                                      eor r1, r1, r0
004fc0bc  01 10 c2 e5                                      strb r1, [r2, #1]
004fc0c0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc0c4  01 20 42 e2                                      sub r2, r2, #1
004fc0c8  00 10 21 e0                                      eor r1, r1, r0
004fc0cc  01 10 43 e5                                      strb r1, [r3, #-1]
004fc0d0  01 30 83 e2                                      add r3, r3, #1
004fc0d4  f1 ff ff 3a                                      blo #0x4fc0a0
004fc0d8  05 00 a0 e1                                      mov r0, r5
004fc0dc  48 10 84 e2                                      add r1, r4, #0x48
004fc0e0  ea 73 fd eb                                      bl #0x459090
004fc0e4  01 30 a0 e3                                      mov r3, #1
004fc0e8  00 00 53 e3                                      cmp r3, #0
004fc0ec  04 30 8d e5                                      str r3, [sp, #4]
004fc0f0  0f 00 00 1a                                      bne #0x4fc134
004fc0f4  49 30 84 e2                                      add r3, r4, #0x49
004fc0f8  4a 20 84 e2                                      add r2, r4, #0x4a
004fc0fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc100  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc104  02 00 53 e1                                      cmp r3, r2
004fc108  01 10 20 e0                                      eor r1, r0, r1
004fc10c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc110  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc114  00 10 21 e0                                      eor r1, r1, r0
004fc118  01 10 c2 e5                                      strb r1, [r2, #1]
004fc11c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc120  01 20 42 e2                                      sub r2, r2, #1
004fc124  00 10 21 e0                                      eor r1, r1, r0
004fc128  01 10 43 e5                                      strb r1, [r3, #-1]
004fc12c  01 30 83 e2                                      add r3, r3, #1
004fc130  f1 ff ff 3a                                      blo #0x4fc0fc
004fc134  05 00 a0 e1                                      mov r0, r5
004fc138  4c 10 84 e2                                      add r1, r4, #0x4c
004fc13c  17 8c fb eb                                      bl #0x3df1a0
004fc140  01 30 a0 e3                                      mov r3, #1
004fc144  00 00 53 e3                                      cmp r3, #0
004fc148  04 30 8d e5                                      str r3, [sp, #4]
004fc14c  0f 00 00 1a                                      bne #0x4fc190
004fc150  4d 30 84 e2                                      add r3, r4, #0x4d
004fc154  4e 20 84 e2                                      add r2, r4, #0x4e
004fc158  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc15c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc160  02 00 53 e1                                      cmp r3, r2
004fc164  01 10 20 e0                                      eor r1, r0, r1
004fc168  01 10 43 e5                                      strb r1, [r3, #-1]
004fc16c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc170  00 10 21 e0                                      eor r1, r1, r0
004fc174  01 10 c2 e5                                      strb r1, [r2, #1]
004fc178  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc17c  01 20 42 e2                                      sub r2, r2, #1
004fc180  00 10 21 e0                                      eor r1, r1, r0
004fc184  01 10 43 e5                                      strb r1, [r3, #-1]
004fc188  01 30 83 e2                                      add r3, r3, #1
004fc18c  f1 ff ff 3a                                      blo #0x4fc158
004fc190  50 00 94 e5                                      ldr r0, [r4, #0x50]
004fc194  00 00 50 e3                                      cmp r0, #0
004fc198  00 00 00 0a                                      beq #0x4fc1a0
004fc19c  a7 50 f8 eb                                      bl #0x310440
004fc1a0  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004fc1a4  01 10 a0 e3                                      mov r1, #1
004fc1a8  00 60 a0 e3                                      mov r6, #0
004fc1ac  01 00 80 e0                                      add r0, r0, r1
004fc1b0  ed 50 f8 eb                                      bl #0x31056c
004fc1b4  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004fc1b8  00 10 a0 e1                                      mov r1, r0
004fc1bc  50 00 84 e5                                      str r0, [r4, #0x50]
004fc1c0  06 30 a0 e1                                      mov r3, r6
004fc1c4  05 00 a0 e1                                      mov r0, r5
004fc1c8  a1 6c f8 eb                                      bl #0x317454
004fc1cc  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004fc1d0  50 20 94 e5                                      ldr r2, [r4, #0x50]
004fc1d4  05 00 a0 e1                                      mov r0, r5
004fc1d8  54 10 84 e2                                      add r1, r4, #0x54
004fc1dc  03 60 c2 e7                                      strb r6, [r2, r3]
004fc1e0  aa 73 fd eb                                      bl #0x459090
004fc1e4  01 30 a0 e3                                      mov r3, #1
004fc1e8  06 00 53 e1                                      cmp r3, r6
004fc1ec  04 30 8d e5                                      str r3, [sp, #4]
004fc1f0  0f 00 00 1a                                      bne #0x4fc234
004fc1f4  55 30 84 e2                                      add r3, r4, #0x55
004fc1f8  56 20 84 e2                                      add r2, r4, #0x56
004fc1fc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc200  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc204  02 00 53 e1                                      cmp r3, r2
004fc208  01 10 20 e0                                      eor r1, r0, r1
004fc20c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc210  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc214  00 10 21 e0                                      eor r1, r1, r0
004fc218  01 10 c2 e5                                      strb r1, [r2, #1]
004fc21c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc220  01 20 42 e2                                      sub r2, r2, #1
004fc224  00 10 21 e0                                      eor r1, r1, r0
004fc228  01 10 43 e5                                      strb r1, [r3, #-1]
004fc22c  01 30 83 e2                                      add r3, r3, #1
004fc230  f1 ff ff 3a                                      blo #0x4fc1fc
004fc234  05 00 a0 e1                                      mov r0, r5
004fc238  58 10 84 e2                                      add r1, r4, #0x58
004fc23c  93 73 fd eb                                      bl #0x459090
004fc240  01 30 a0 e3                                      mov r3, #1
004fc244  00 00 53 e3                                      cmp r3, #0
004fc248  04 30 8d e5                                      str r3, [sp, #4]
004fc24c  0f 00 00 1a                                      bne #0x4fc290
004fc250  59 30 84 e2                                      add r3, r4, #0x59
004fc254  5a 20 84 e2                                      add r2, r4, #0x5a
004fc258  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc25c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc260  02 00 53 e1                                      cmp r3, r2
004fc264  01 10 20 e0                                      eor r1, r0, r1
004fc268  01 10 43 e5                                      strb r1, [r3, #-1]
004fc26c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc270  00 10 21 e0                                      eor r1, r1, r0
004fc274  01 10 c2 e5                                      strb r1, [r2, #1]
004fc278  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc27c  01 20 42 e2                                      sub r2, r2, #1
004fc280  00 10 21 e0                                      eor r1, r1, r0
004fc284  01 10 43 e5                                      strb r1, [r3, #-1]
004fc288  01 30 83 e2                                      add r3, r3, #1
004fc28c  f1 ff ff 3a                                      blo #0x4fc258
004fc290  05 00 a0 e1                                      mov r0, r5
004fc294  5c 10 84 e2                                      add r1, r4, #0x5c
004fc298  7c 73 fd eb                                      bl #0x459090
004fc29c  01 30 a0 e3                                      mov r3, #1
004fc2a0  00 00 53 e3                                      cmp r3, #0
004fc2a4  04 30 8d e5                                      str r3, [sp, #4]
004fc2a8  0f 00 00 1a                                      bne #0x4fc2ec
004fc2ac  5d 30 84 e2                                      add r3, r4, #0x5d
004fc2b0  5e 20 84 e2                                      add r2, r4, #0x5e
004fc2b4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc2b8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc2bc  02 00 53 e1                                      cmp r3, r2
004fc2c0  01 10 20 e0                                      eor r1, r0, r1
004fc2c4  01 10 43 e5                                      strb r1, [r3, #-1]
004fc2c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc2cc  00 10 21 e0                                      eor r1, r1, r0
004fc2d0  01 10 c2 e5                                      strb r1, [r2, #1]
004fc2d4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc2d8  01 20 42 e2                                      sub r2, r2, #1
004fc2dc  00 10 21 e0                                      eor r1, r1, r0
004fc2e0  01 10 43 e5                                      strb r1, [r3, #-1]
004fc2e4  01 30 83 e2                                      add r3, r3, #1
004fc2e8  f1 ff ff 3a                                      blo #0x4fc2b4
004fc2ec  05 00 a0 e1                                      mov r0, r5
004fc2f0  60 10 84 e2                                      add r1, r4, #0x60
004fc2f4  65 73 fd eb                                      bl #0x459090
004fc2f8  01 30 a0 e3                                      mov r3, #1
004fc2fc  00 00 53 e3                                      cmp r3, #0
004fc300  04 30 8d e5                                      str r3, [sp, #4]
004fc304  0f 00 00 1a                                      bne #0x4fc348
004fc308  61 30 84 e2                                      add r3, r4, #0x61
004fc30c  62 20 84 e2                                      add r2, r4, #0x62
004fc310  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc314  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc318  02 00 53 e1                                      cmp r3, r2
004fc31c  01 10 20 e0                                      eor r1, r0, r1
004fc320  01 10 43 e5                                      strb r1, [r3, #-1]
004fc324  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc328  00 10 21 e0                                      eor r1, r1, r0
004fc32c  01 10 c2 e5                                      strb r1, [r2, #1]
004fc330  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc334  01 20 42 e2                                      sub r2, r2, #1
004fc338  00 10 21 e0                                      eor r1, r1, r0
004fc33c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc340  01 30 83 e2                                      add r3, r3, #1
004fc344  f1 ff ff 3a                                      blo #0x4fc310
004fc348  05 00 a0 e1                                      mov r0, r5
004fc34c  64 10 84 e2                                      add r1, r4, #0x64
004fc350  4e 73 fd eb                                      bl #0x459090
004fc354  01 30 a0 e3                                      mov r3, #1
004fc358  00 00 53 e3                                      cmp r3, #0
004fc35c  04 30 8d e5                                      str r3, [sp, #4]
004fc360  0f 00 00 1a                                      bne #0x4fc3a4
004fc364  65 30 84 e2                                      add r3, r4, #0x65
004fc368  66 20 84 e2                                      add r2, r4, #0x66
004fc36c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc370  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc374  02 00 53 e1                                      cmp r3, r2
004fc378  01 10 20 e0                                      eor r1, r0, r1
004fc37c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc380  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc384  00 10 21 e0                                      eor r1, r1, r0
004fc388  01 10 c2 e5                                      strb r1, [r2, #1]
004fc38c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc390  01 20 42 e2                                      sub r2, r2, #1
004fc394  00 10 21 e0                                      eor r1, r1, r0
004fc398  01 10 43 e5                                      strb r1, [r3, #-1]
004fc39c  01 30 83 e2                                      add r3, r3, #1
004fc3a0  f1 ff ff 3a                                      blo #0x4fc36c
004fc3a4  05 00 a0 e1                                      mov r0, r5
004fc3a8  68 10 84 e2                                      add r1, r4, #0x68
004fc3ac  37 73 fd eb                                      bl #0x459090
004fc3b0  01 30 a0 e3                                      mov r3, #1
004fc3b4  00 00 53 e3                                      cmp r3, #0
004fc3b8  04 30 8d e5                                      str r3, [sp, #4]
004fc3bc  0f 00 00 1a                                      bne #0x4fc400
004fc3c0  69 30 84 e2                                      add r3, r4, #0x69
004fc3c4  6a 20 84 e2                                      add r2, r4, #0x6a
004fc3c8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc3cc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc3d0  02 00 53 e1                                      cmp r3, r2
004fc3d4  01 10 20 e0                                      eor r1, r0, r1
004fc3d8  01 10 43 e5                                      strb r1, [r3, #-1]
004fc3dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc3e0  00 10 21 e0                                      eor r1, r1, r0
004fc3e4  01 10 c2 e5                                      strb r1, [r2, #1]
004fc3e8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc3ec  01 20 42 e2                                      sub r2, r2, #1
004fc3f0  00 10 21 e0                                      eor r1, r1, r0
004fc3f4  01 10 43 e5                                      strb r1, [r3, #-1]
004fc3f8  01 30 83 e2                                      add r3, r3, #1
004fc3fc  f1 ff ff 3a                                      blo #0x4fc3c8
004fc400  05 00 a0 e1                                      mov r0, r5
004fc404  6c 10 84 e2                                      add r1, r4, #0x6c
004fc408  20 73 fd eb                                      bl #0x459090
004fc40c  01 30 a0 e3                                      mov r3, #1
004fc410  00 00 53 e3                                      cmp r3, #0
004fc414  04 30 8d e5                                      str r3, [sp, #4]
004fc418  0f 00 00 1a                                      bne #0x4fc45c
004fc41c  6d 30 84 e2                                      add r3, r4, #0x6d
004fc420  6e 20 84 e2                                      add r2, r4, #0x6e
004fc424  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc428  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc42c  02 00 53 e1                                      cmp r3, r2
004fc430  01 10 20 e0                                      eor r1, r0, r1
004fc434  01 10 43 e5                                      strb r1, [r3, #-1]
004fc438  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc43c  00 10 21 e0                                      eor r1, r1, r0
004fc440  01 10 c2 e5                                      strb r1, [r2, #1]
004fc444  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc448  01 20 42 e2                                      sub r2, r2, #1
004fc44c  00 10 21 e0                                      eor r1, r1, r0
004fc450  01 10 43 e5                                      strb r1, [r3, #-1]
004fc454  01 30 83 e2                                      add r3, r3, #1
004fc458  f1 ff ff 3a                                      blo #0x4fc424
004fc45c  05 00 a0 e1                                      mov r0, r5
004fc460  70 10 84 e2                                      add r1, r4, #0x70
004fc464  09 73 fd eb                                      bl #0x459090
004fc468  01 30 a0 e3                                      mov r3, #1
004fc46c  00 00 53 e3                                      cmp r3, #0
004fc470  04 30 8d e5                                      str r3, [sp, #4]
004fc474  0f 00 00 1a                                      bne #0x4fc4b8
004fc478  71 30 84 e2                                      add r3, r4, #0x71
004fc47c  72 20 84 e2                                      add r2, r4, #0x72
004fc480  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc484  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc488  02 00 53 e1                                      cmp r3, r2
004fc48c  01 10 20 e0                                      eor r1, r0, r1
004fc490  01 10 43 e5                                      strb r1, [r3, #-1]
004fc494  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc498  00 10 21 e0                                      eor r1, r1, r0
004fc49c  01 10 c2 e5                                      strb r1, [r2, #1]
004fc4a0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc4a4  01 20 42 e2                                      sub r2, r2, #1
004fc4a8  00 10 21 e0                                      eor r1, r1, r0
004fc4ac  01 10 43 e5                                      strb r1, [r3, #-1]
004fc4b0  01 30 83 e2                                      add r3, r3, #1
004fc4b4  f1 ff ff 3a                                      blo #0x4fc480
004fc4b8  05 00 a0 e1                                      mov r0, r5
004fc4bc  74 10 84 e2                                      add r1, r4, #0x74
004fc4c0  f2 72 fd eb                                      bl #0x459090
004fc4c4  01 30 a0 e3                                      mov r3, #1
004fc4c8  00 00 53 e3                                      cmp r3, #0
004fc4cc  04 30 8d e5                                      str r3, [sp, #4]
004fc4d0  0f 00 00 1a                                      bne #0x4fc514
004fc4d4  75 30 84 e2                                      add r3, r4, #0x75
004fc4d8  76 20 84 e2                                      add r2, r4, #0x76
004fc4dc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc4e0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc4e4  02 00 53 e1                                      cmp r3, r2
004fc4e8  01 10 20 e0                                      eor r1, r0, r1
004fc4ec  01 10 43 e5                                      strb r1, [r3, #-1]
004fc4f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc4f4  00 10 21 e0                                      eor r1, r1, r0
004fc4f8  01 10 c2 e5                                      strb r1, [r2, #1]
004fc4fc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc500  01 20 42 e2                                      sub r2, r2, #1
004fc504  00 10 21 e0                                      eor r1, r1, r0
004fc508  01 10 43 e5                                      strb r1, [r3, #-1]
004fc50c  01 30 83 e2                                      add r3, r3, #1
004fc510  f1 ff ff 3a                                      blo #0x4fc4dc
004fc514  05 00 a0 e1                                      mov r0, r5
004fc518  78 10 84 e2                                      add r1, r4, #0x78
004fc51c  db 72 fd eb                                      bl #0x459090
004fc520  01 30 a0 e3                                      mov r3, #1
004fc524  00 00 53 e3                                      cmp r3, #0
004fc528  04 30 8d e5                                      str r3, [sp, #4]
004fc52c  0f 00 00 1a                                      bne #0x4fc570
004fc530  79 30 84 e2                                      add r3, r4, #0x79
004fc534  7a 20 84 e2                                      add r2, r4, #0x7a
004fc538  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc53c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc540  02 00 53 e1                                      cmp r3, r2
004fc544  01 10 20 e0                                      eor r1, r0, r1
004fc548  01 10 43 e5                                      strb r1, [r3, #-1]
004fc54c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc550  00 10 21 e0                                      eor r1, r1, r0
004fc554  01 10 c2 e5                                      strb r1, [r2, #1]
004fc558  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc55c  01 20 42 e2                                      sub r2, r2, #1
004fc560  00 10 21 e0                                      eor r1, r1, r0
004fc564  01 10 43 e5                                      strb r1, [r3, #-1]
004fc568  01 30 83 e2                                      add r3, r3, #1
004fc56c  f1 ff ff 3a                                      blo #0x4fc538
004fc570  05 00 a0 e1                                      mov r0, r5
004fc574  7c 10 84 e2                                      add r1, r4, #0x7c
004fc578  c4 72 fd eb                                      bl #0x459090
004fc57c  01 30 a0 e3                                      mov r3, #1
004fc580  00 00 53 e3                                      cmp r3, #0
004fc584  04 30 8d e5                                      str r3, [sp, #4]
004fc588  0f 00 00 1a                                      bne #0x4fc5cc
004fc58c  7d 30 84 e2                                      add r3, r4, #0x7d
004fc590  7e 20 84 e2                                      add r2, r4, #0x7e
004fc594  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc598  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc59c  02 00 53 e1                                      cmp r3, r2
004fc5a0  01 10 20 e0                                      eor r1, r0, r1
004fc5a4  01 10 43 e5                                      strb r1, [r3, #-1]
004fc5a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc5ac  00 10 21 e0                                      eor r1, r1, r0
004fc5b0  01 10 c2 e5                                      strb r1, [r2, #1]
004fc5b4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc5b8  01 20 42 e2                                      sub r2, r2, #1
004fc5bc  00 10 21 e0                                      eor r1, r1, r0
004fc5c0  01 10 43 e5                                      strb r1, [r3, #-1]
004fc5c4  01 30 83 e2                                      add r3, r3, #1
004fc5c8  f1 ff ff 3a                                      blo #0x4fc594
004fc5cc  05 00 a0 e1                                      mov r0, r5
004fc5d0  80 10 84 e2                                      add r1, r4, #0x80
004fc5d4  ad 72 fd eb                                      bl #0x459090
004fc5d8  01 30 a0 e3                                      mov r3, #1
004fc5dc  00 00 53 e3                                      cmp r3, #0
004fc5e0  04 30 8d e5                                      str r3, [sp, #4]
004fc5e4  0f 00 00 1a                                      bne #0x4fc628
004fc5e8  81 30 84 e2                                      add r3, r4, #0x81
004fc5ec  82 20 84 e2                                      add r2, r4, #0x82
004fc5f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc5f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc5f8  02 00 53 e1                                      cmp r3, r2
004fc5fc  01 10 20 e0                                      eor r1, r0, r1
004fc600  01 10 43 e5                                      strb r1, [r3, #-1]
004fc604  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc608  00 10 21 e0                                      eor r1, r1, r0
004fc60c  01 10 c2 e5                                      strb r1, [r2, #1]
004fc610  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc614  01 20 42 e2                                      sub r2, r2, #1
004fc618  00 10 21 e0                                      eor r1, r1, r0
004fc61c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc620  01 30 83 e2                                      add r3, r3, #1
004fc624  f1 ff ff 3a                                      blo #0x4fc5f0
004fc628  05 00 a0 e1                                      mov r0, r5
004fc62c  84 10 84 e2                                      add r1, r4, #0x84
004fc630  96 72 fd eb                                      bl #0x459090
004fc634  01 30 a0 e3                                      mov r3, #1
004fc638  00 00 53 e3                                      cmp r3, #0
004fc63c  04 30 8d e5                                      str r3, [sp, #4]
004fc640  0f 00 00 1a                                      bne #0x4fc684
004fc644  85 30 84 e2                                      add r3, r4, #0x85
004fc648  86 20 84 e2                                      add r2, r4, #0x86
004fc64c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc650  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc654  02 00 53 e1                                      cmp r3, r2
004fc658  01 10 20 e0                                      eor r1, r0, r1
004fc65c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc660  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc664  00 10 21 e0                                      eor r1, r1, r0
004fc668  01 10 c2 e5                                      strb r1, [r2, #1]
004fc66c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc670  01 20 42 e2                                      sub r2, r2, #1
004fc674  00 10 21 e0                                      eor r1, r1, r0
004fc678  01 10 43 e5                                      strb r1, [r3, #-1]
004fc67c  01 30 83 e2                                      add r3, r3, #1
004fc680  f1 ff ff 3a                                      blo #0x4fc64c
004fc684  05 00 a0 e1                                      mov r0, r5
004fc688  88 10 84 e2                                      add r1, r4, #0x88
004fc68c  7f 72 fd eb                                      bl #0x459090
004fc690  01 30 a0 e3                                      mov r3, #1
004fc694  00 00 53 e3                                      cmp r3, #0
004fc698  04 30 8d e5                                      str r3, [sp, #4]
004fc69c  0f 00 00 1a                                      bne #0x4fc6e0
004fc6a0  89 30 84 e2                                      add r3, r4, #0x89
004fc6a4  8a 20 84 e2                                      add r2, r4, #0x8a
004fc6a8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc6ac  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc6b0  02 00 53 e1                                      cmp r3, r2
004fc6b4  01 10 20 e0                                      eor r1, r0, r1
004fc6b8  01 10 43 e5                                      strb r1, [r3, #-1]
004fc6bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc6c0  00 10 21 e0                                      eor r1, r1, r0
004fc6c4  01 10 c2 e5                                      strb r1, [r2, #1]
004fc6c8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc6cc  01 20 42 e2                                      sub r2, r2, #1
004fc6d0  00 10 21 e0                                      eor r1, r1, r0
004fc6d4  01 10 43 e5                                      strb r1, [r3, #-1]
004fc6d8  01 30 83 e2                                      add r3, r3, #1
004fc6dc  f1 ff ff 3a                                      blo #0x4fc6a8
004fc6e0  05 00 a0 e1                                      mov r0, r5
004fc6e4  8c 10 84 e2                                      add r1, r4, #0x8c
004fc6e8  68 72 fd eb                                      bl #0x459090
004fc6ec  01 30 a0 e3                                      mov r3, #1
004fc6f0  00 00 53 e3                                      cmp r3, #0
004fc6f4  04 30 8d e5                                      str r3, [sp, #4]
004fc6f8  0f 00 00 1a                                      bne #0x4fc73c
004fc6fc  8d 30 84 e2                                      add r3, r4, #0x8d
004fc700  8e 20 84 e2                                      add r2, r4, #0x8e
004fc704  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc708  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc70c  02 00 53 e1                                      cmp r3, r2
004fc710  01 10 20 e0                                      eor r1, r0, r1
004fc714  01 10 43 e5                                      strb r1, [r3, #-1]
004fc718  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc71c  00 10 21 e0                                      eor r1, r1, r0
004fc720  01 10 c2 e5                                      strb r1, [r2, #1]
004fc724  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc728  01 20 42 e2                                      sub r2, r2, #1
004fc72c  00 10 21 e0                                      eor r1, r1, r0
004fc730  01 10 43 e5                                      strb r1, [r3, #-1]
004fc734  01 30 83 e2                                      add r3, r3, #1
004fc738  f1 ff ff 3a                                      blo #0x4fc704
004fc73c  05 00 a0 e1                                      mov r0, r5
004fc740  90 10 84 e2                                      add r1, r4, #0x90
004fc744  51 72 fd eb                                      bl #0x459090
004fc748  01 30 a0 e3                                      mov r3, #1
004fc74c  00 00 53 e3                                      cmp r3, #0
004fc750  04 30 8d e5                                      str r3, [sp, #4]
004fc754  0f 00 00 1a                                      bne #0x4fc798
004fc758  91 30 84 e2                                      add r3, r4, #0x91
004fc75c  92 20 84 e2                                      add r2, r4, #0x92
004fc760  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc764  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc768  02 00 53 e1                                      cmp r3, r2
004fc76c  01 10 20 e0                                      eor r1, r0, r1
004fc770  01 10 43 e5                                      strb r1, [r3, #-1]
004fc774  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc778  00 10 21 e0                                      eor r1, r1, r0
004fc77c  01 10 c2 e5                                      strb r1, [r2, #1]
004fc780  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc784  01 20 42 e2                                      sub r2, r2, #1
004fc788  00 10 21 e0                                      eor r1, r1, r0
004fc78c  01 10 43 e5                                      strb r1, [r3, #-1]
004fc790  01 30 83 e2                                      add r3, r3, #1
004fc794  f1 ff ff 3a                                      blo #0x4fc760
004fc798  05 00 a0 e1                                      mov r0, r5
004fc79c  94 10 84 e2                                      add r1, r4, #0x94
004fc7a0  3a 72 fd eb                                      bl #0x459090
004fc7a4  01 30 a0 e3                                      mov r3, #1
004fc7a8  00 00 53 e3                                      cmp r3, #0
004fc7ac  04 30 8d e5                                      str r3, [sp, #4]
004fc7b0  0f 00 00 1a                                      bne #0x4fc7f4
004fc7b4  95 30 84 e2                                      add r3, r4, #0x95
004fc7b8  96 20 84 e2                                      add r2, r4, #0x96
004fc7bc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc7c0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc7c4  02 00 53 e1                                      cmp r3, r2
004fc7c8  01 10 20 e0                                      eor r1, r0, r1
004fc7cc  01 10 43 e5                                      strb r1, [r3, #-1]
004fc7d0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc7d4  00 10 21 e0                                      eor r1, r1, r0
004fc7d8  01 10 c2 e5                                      strb r1, [r2, #1]
004fc7dc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc7e0  01 20 42 e2                                      sub r2, r2, #1
004fc7e4  00 10 21 e0                                      eor r1, r1, r0
004fc7e8  01 10 43 e5                                      strb r1, [r3, #-1]
004fc7ec  01 30 83 e2                                      add r3, r3, #1
004fc7f0  f1 ff ff 3a                                      blo #0x4fc7bc
004fc7f4  05 00 a0 e1                                      mov r0, r5
004fc7f8  98 10 84 e2                                      add r1, r4, #0x98
004fc7fc  23 72 fd eb                                      bl #0x459090
004fc800  01 30 a0 e3                                      mov r3, #1
004fc804  00 00 53 e3                                      cmp r3, #0
004fc808  04 30 8d e5                                      str r3, [sp, #4]
004fc80c  0f 00 00 1a                                      bne #0x4fc850
004fc810  99 30 84 e2                                      add r3, r4, #0x99
004fc814  9a 20 84 e2                                      add r2, r4, #0x9a
004fc818  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc81c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc820  02 00 53 e1                                      cmp r3, r2
004fc824  01 10 20 e0                                      eor r1, r0, r1
004fc828  01 10 43 e5                                      strb r1, [r3, #-1]
004fc82c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc830  00 10 21 e0                                      eor r1, r1, r0
004fc834  01 10 c2 e5                                      strb r1, [r2, #1]
004fc838  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc83c  01 20 42 e2                                      sub r2, r2, #1
004fc840  00 10 21 e0                                      eor r1, r1, r0
004fc844  01 10 43 e5                                      strb r1, [r3, #-1]
004fc848  01 30 83 e2                                      add r3, r3, #1
004fc84c  f1 ff ff 3a                                      blo #0x4fc818
004fc850  05 00 a0 e1                                      mov r0, r5
004fc854  9c 10 84 e2                                      add r1, r4, #0x9c
004fc858  0c 72 fd eb                                      bl #0x459090
004fc85c  01 30 a0 e3                                      mov r3, #1
004fc860  00 00 53 e3                                      cmp r3, #0
004fc864  04 30 8d e5                                      str r3, [sp, #4]
004fc868  0f 00 00 1a                                      bne #0x4fc8ac
004fc86c  9d 30 84 e2                                      add r3, r4, #0x9d
004fc870  9e 20 84 e2                                      add r2, r4, #0x9e
004fc874  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc878  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fc87c  02 00 53 e1                                      cmp r3, r2
004fc880  01 10 20 e0                                      eor r1, r0, r1
004fc884  01 10 43 e5                                      strb r1, [r3, #-1]
004fc888  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fc88c  00 10 21 e0                                      eor r1, r1, r0
004fc890  01 10 c2 e5                                      strb r1, [r2, #1]
004fc894  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fc898  01 20 42 e2                                      sub r2, r2, #1
004fc89c  00 10 21 e0                                      eor r1, r1, r0
004fc8a0  01 10 43 e5                                      strb r1, [r3, #-1]
004fc8a4  01 30 83 e2                                      add r3, r3, #1
004fc8a8  f1 ff ff 3a                                      blo #0x4fc874
004fc8ac  05 00 a0 e1                                      mov r0, r5
004fc8b0  a0 10 84 e2                                      add r1, r4, #0xa0
004fc8b4  f5 71 fd eb                                      bl #0x459090
004fc8b8  01 30 a0 e3                                      mov r3, #1
004fc8bc  00 00 53 e3                                      cmp r3, #0
004fc8c0  04 30 8d e5                                      str r3, [sp, #4]
004fc8c4  0f 00 00 1a                                      bne #0x4fc908
004fc8c8  a2 30 84 e2                                      add r3, r4, #0xa2
004fc8cc  a1 40 84 e2                                      add r4, r4, #0xa1
004fc8d0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fc8d4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fc8d8  03 00 54 e1                                      cmp r4, r3
004fc8dc  02 20 21 e0                                      eor r2, r1, r2
004fc8e0  01 20 44 e5                                      strb r2, [r4, #-1]
004fc8e4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fc8e8  01 20 22 e0                                      eor r2, r2, r1
004fc8ec  01 20 c3 e5                                      strb r2, [r3, #1]
004fc8f0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fc8f4  01 30 43 e2                                      sub r3, r3, #1
004fc8f8  01 20 22 e0                                      eor r2, r2, r1
004fc8fc  01 20 44 e5                                      strb r2, [r4, #-1]
004fc900  01 40 84 e2                                      add r4, r4, #1
004fc904  f1 ff ff 3a                                      blo #0x4fc8d0
004fc908  08 d0 8d e2                                      add sp, sp, #8
004fc90c  70 80 bd e8                                      pop {r4, r5, r6, pc}
