; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db348, declared_size=40, range_size=40, mode=arm
; class-group: Structs::CamAnimSet
; alias: _ZN7Structs10CamAnimSet8finalizeEv
; demangled: Structs::CamAnimSet::finalize()
; decoder-mode: arm
004db348  10 40 2d e9                                      push {r4, lr}
004db34c  00 40 a0 e1                                      mov r4, r0
004db350  08 00 90 e5                                      ldr r0, [r0, #8]
004db354  00 00 50 e3                                      cmp r0, #0
004db358  03 00 00 0a                                      beq #0x4db36c
004db35c  37 d4 f8 eb                                      bl #0x310440
004db360  00 30 a0 e3                                      mov r3, #0
004db364  04 30 84 e5                                      str r3, [r4, #4]
004db368  08 30 84 e5                                      str r3, [r4, #8]
004db36c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db370, declared_size=64, range_size=64, mode=arm
; class-group: Structs::CamAnimSet
; alias: _ZN7Structs10CamAnimSetD1Ev
; demangled: Structs::CamAnimSet::~CamAnimSet()
; decoder-mode: arm
004db370  10 40 2d e9                                      push {r4, lr}
004db374  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004db378  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004db37c  00 40 a0 e1                                      mov r4, r0
004db380  03 30 8f e0                                      add r3, pc, r3
004db384  08 00 90 e5                                      ldr r0, [r0, #8]
004db388  02 20 93 e7                                      ldr r2, [r3, r2]
004db38c  00 00 50 e3                                      cmp r0, #0
004db390  08 20 82 e2                                      add r2, r2, #8
004db394  00 20 84 e5                                      str r2, [r4]
004db398  00 00 00 0a                                      beq #0x4db3a0
004db39c  27 d4 f8 eb                                      bl #0x310440
004db3a0  04 00 a0 e1                                      mov r0, r4
004db3a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db3a8  10 97 4b 00 bc 36 00 00                          .byte 0x10, 0x97, 0x4b, 0x00, 0xbc, 0x36, 0x00, 0x00

; FUNCTION 0x004db3b0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::CamAnimSet
; alias: _ZN7Structs10CamAnimSetD0Ev
; demangled: Structs::CamAnimSet::~CamAnimSet()
; decoder-mode: arm
004db3b0  10 40 2d e9                                      push {r4, lr}
004db3b4  00 40 a0 e1                                      mov r4, r0
004db3b8  ec ff ff eb                                      bl #0x4db370
004db3bc  04 00 a0 e1                                      mov r0, r4
004db3c0  1e d4 f8 eb                                      bl #0x310440
004db3c4  04 00 a0 e1                                      mov r0, r4
004db3c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db3cc, declared_size=64, range_size=64, mode=arm
; class-group: Structs::CamAnimSet
; alias: _ZN7Structs10CamAnimSetD2Ev
; demangled: Structs::CamAnimSet::~CamAnimSet()
; decoder-mode: arm
004db3cc  10 40 2d e9                                      push {r4, lr}
004db3d0  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004db3d4  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004db3d8  00 40 a0 e1                                      mov r4, r0
004db3dc  03 30 8f e0                                      add r3, pc, r3
004db3e0  08 00 90 e5                                      ldr r0, [r0, #8]
004db3e4  02 20 93 e7                                      ldr r2, [r3, r2]
004db3e8  00 00 50 e3                                      cmp r0, #0
004db3ec  08 20 82 e2                                      add r2, r2, #8
004db3f0  00 20 84 e5                                      str r2, [r4]
004db3f4  00 00 00 0a                                      beq #0x4db3fc
004db3f8  10 d4 f8 eb                                      bl #0x310440
004db3fc  04 00 a0 e1                                      mov r0, r4
004db400  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db404  b4 96 4b 00 bc 36 00 00                          .byte 0xb4, 0x96, 0x4b, 0x00, 0xbc, 0x36, 0x00, 0x00

; FUNCTION 0x004ef05c, declared_size=660, range_size=660, mode=arm
; class-group: Structs::CamAnimSet
; alias: _ZN7Structs10CamAnimSet4readEP11IStreamBase
; demangled: Structs::CamAnimSet::read(IStreamBase*)
; decoder-mode: arm
004ef05c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ef060  00 40 a0 e1                                      mov r4, r0
004ef064  08 d0 4d e2                                      sub sp, sp, #8
004ef068  01 00 a0 e1                                      mov r0, r1
004ef06c  01 80 a0 e1                                      mov r8, r1
004ef070  04 10 84 e2                                      add r1, r4, #4
004ef074  49 c0 fb eb                                      bl #0x3df1a0
004ef078  01 30 a0 e3                                      mov r3, #1
004ef07c  00 00 53 e3                                      cmp r3, #0
004ef080  04 30 8d e5                                      str r3, [sp, #4]
004ef084  0f 00 00 1a                                      bne #0x4ef0c8
004ef088  05 30 84 e2                                      add r3, r4, #5
004ef08c  06 20 84 e2                                      add r2, r4, #6
004ef090  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef094  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef098  03 00 52 e1                                      cmp r2, r3
004ef09c  01 10 20 e0                                      eor r1, r0, r1
004ef0a0  01 10 43 e5                                      strb r1, [r3, #-1]
004ef0a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef0a8  00 10 21 e0                                      eor r1, r1, r0
004ef0ac  01 10 c2 e5                                      strb r1, [r2, #1]
004ef0b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef0b4  01 20 42 e2                                      sub r2, r2, #1
004ef0b8  00 10 21 e0                                      eor r1, r1, r0
004ef0bc  01 10 43 e5                                      strb r1, [r3, #-1]
004ef0c0  01 30 83 e2                                      add r3, r3, #1
004ef0c4  f1 ff ff 8a                                      bhi #0x4ef090
004ef0c8  08 00 94 e5                                      ldr r0, [r4, #8]
004ef0cc  00 00 50 e3                                      cmp r0, #0
004ef0d0  00 00 00 0a                                      beq #0x4ef0d8
004ef0d4  d9 84 f8 eb                                      bl #0x310440
004ef0d8  04 00 94 e5                                      ldr r0, [r4, #4]
004ef0dc  01 10 a0 e3                                      mov r1, #1
004ef0e0  00 01 a0 e1                                      lsl r0, r0, #2
004ef0e4  20 85 f8 eb                                      bl #0x31056c
004ef0e8  04 30 94 e5                                      ldr r3, [r4, #4]
004ef0ec  08 00 84 e5                                      str r0, [r4, #8]
004ef0f0  00 00 53 e3                                      cmp r3, #0
004ef0f4  1f 00 00 0a                                      beq #0x4ef178
004ef0f8  00 50 a0 e3                                      mov r5, #0
004ef0fc  01 70 a0 e3                                      mov r7, #1
004ef100  05 61 a0 e1                                      lsl r6, r5, #2
004ef104  06 10 80 e0                                      add r1, r0, r6
004ef108  08 00 a0 e1                                      mov r0, r8
004ef10c  df a7 fd eb                                      bl #0x459090
004ef110  04 70 8d e5                                      str r7, [sp, #4]
004ef114  00 00 57 e3                                      cmp r7, #0
004ef118  08 30 94 e5                                      ldr r3, [r4, #8]
004ef11c  10 00 00 1a                                      bne #0x4ef164
004ef120  06 60 83 e0                                      add r6, r3, r6
004ef124  02 30 86 e2                                      add r3, r6, #2
004ef128  01 60 86 e2                                      add r6, r6, #1
004ef12c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef130  01 20 56 e5                                      ldrb r2, [r6, #-1]
004ef134  06 00 53 e1                                      cmp r3, r6
004ef138  02 20 21 e0                                      eor r2, r1, r2
004ef13c  01 20 46 e5                                      strb r2, [r6, #-1]
004ef140  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef144  01 20 22 e0                                      eor r2, r2, r1
004ef148  01 20 c3 e5                                      strb r2, [r3, #1]
004ef14c  01 10 56 e5                                      ldrb r1, [r6, #-1]
004ef150  01 30 43 e2                                      sub r3, r3, #1
004ef154  01 20 22 e0                                      eor r2, r2, r1
004ef158  01 20 46 e5                                      strb r2, [r6, #-1]
004ef15c  01 60 86 e2                                      add r6, r6, #1
004ef160  f1 ff ff 8a                                      bhi #0x4ef12c
004ef164  04 30 94 e5                                      ldr r3, [r4, #4]
004ef168  01 50 85 e2                                      add r5, r5, #1
004ef16c  05 00 53 e1                                      cmp r3, r5
004ef170  08 00 94 85                                      ldrhi r0, [r4, #8]
004ef174  e1 ff ff 8a                                      bhi #0x4ef100
004ef178  08 00 a0 e1                                      mov r0, r8
004ef17c  0c 10 84 e2                                      add r1, r4, #0xc
004ef180  c2 a7 fd eb                                      bl #0x459090
004ef184  01 30 a0 e3                                      mov r3, #1
004ef188  00 00 53 e3                                      cmp r3, #0
004ef18c  04 30 8d e5                                      str r3, [sp, #4]
004ef190  0f 00 00 1a                                      bne #0x4ef1d4
004ef194  0d 30 84 e2                                      add r3, r4, #0xd
004ef198  0e 20 84 e2                                      add r2, r4, #0xe
004ef19c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef1a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef1a4  03 00 52 e1                                      cmp r2, r3
004ef1a8  01 10 20 e0                                      eor r1, r0, r1
004ef1ac  01 10 43 e5                                      strb r1, [r3, #-1]
004ef1b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef1b4  00 10 21 e0                                      eor r1, r1, r0
004ef1b8  01 10 c2 e5                                      strb r1, [r2, #1]
004ef1bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef1c0  01 20 42 e2                                      sub r2, r2, #1
004ef1c4  00 10 21 e0                                      eor r1, r1, r0
004ef1c8  01 10 43 e5                                      strb r1, [r3, #-1]
004ef1cc  01 30 83 e2                                      add r3, r3, #1
004ef1d0  f1 ff ff 8a                                      bhi #0x4ef19c
004ef1d4  08 00 a0 e1                                      mov r0, r8
004ef1d8  10 10 84 e2                                      add r1, r4, #0x10
004ef1dc  ab a7 fd eb                                      bl #0x459090
004ef1e0  01 30 a0 e3                                      mov r3, #1
004ef1e4  00 00 53 e3                                      cmp r3, #0
004ef1e8  04 30 8d e5                                      str r3, [sp, #4]
004ef1ec  0f 00 00 1a                                      bne #0x4ef230
004ef1f0  11 30 84 e2                                      add r3, r4, #0x11
004ef1f4  12 20 84 e2                                      add r2, r4, #0x12
004ef1f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef1fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef200  03 00 52 e1                                      cmp r2, r3
004ef204  01 10 20 e0                                      eor r1, r0, r1
004ef208  01 10 43 e5                                      strb r1, [r3, #-1]
004ef20c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef210  00 10 21 e0                                      eor r1, r1, r0
004ef214  01 10 c2 e5                                      strb r1, [r2, #1]
004ef218  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef21c  01 20 42 e2                                      sub r2, r2, #1
004ef220  00 10 21 e0                                      eor r1, r1, r0
004ef224  01 10 43 e5                                      strb r1, [r3, #-1]
004ef228  01 30 83 e2                                      add r3, r3, #1
004ef22c  f1 ff ff 8a                                      bhi #0x4ef1f8
004ef230  08 00 a0 e1                                      mov r0, r8
004ef234  14 10 84 e2                                      add r1, r4, #0x14
004ef238  94 a7 fd eb                                      bl #0x459090
004ef23c  01 30 a0 e3                                      mov r3, #1
004ef240  00 00 53 e3                                      cmp r3, #0
004ef244  04 30 8d e5                                      str r3, [sp, #4]
004ef248  0f 00 00 1a                                      bne #0x4ef28c
004ef24c  15 30 84 e2                                      add r3, r4, #0x15
004ef250  16 20 84 e2                                      add r2, r4, #0x16
004ef254  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef258  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ef25c  03 00 52 e1                                      cmp r2, r3
004ef260  01 10 20 e0                                      eor r1, r0, r1
004ef264  01 10 43 e5                                      strb r1, [r3, #-1]
004ef268  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ef26c  00 10 21 e0                                      eor r1, r1, r0
004ef270  01 10 c2 e5                                      strb r1, [r2, #1]
004ef274  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ef278  01 20 42 e2                                      sub r2, r2, #1
004ef27c  00 10 21 e0                                      eor r1, r1, r0
004ef280  01 10 43 e5                                      strb r1, [r3, #-1]
004ef284  01 30 83 e2                                      add r3, r3, #1
004ef288  f1 ff ff 8a                                      bhi #0x4ef254
004ef28c  08 00 a0 e1                                      mov r0, r8
004ef290  18 10 84 e2                                      add r1, r4, #0x18
004ef294  7d a7 fd eb                                      bl #0x459090
004ef298  01 30 a0 e3                                      mov r3, #1
004ef29c  00 00 53 e3                                      cmp r3, #0
004ef2a0  04 30 8d e5                                      str r3, [sp, #4]
004ef2a4  0f 00 00 1a                                      bne #0x4ef2e8
004ef2a8  1a 30 84 e2                                      add r3, r4, #0x1a
004ef2ac  19 40 84 e2                                      add r4, r4, #0x19
004ef2b0  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef2b4  01 20 54 e5                                      ldrb r2, [r4, #-1]
004ef2b8  04 00 53 e1                                      cmp r3, r4
004ef2bc  02 20 21 e0                                      eor r2, r1, r2
004ef2c0  01 20 44 e5                                      strb r2, [r4, #-1]
004ef2c4  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ef2c8  01 20 22 e0                                      eor r2, r2, r1
004ef2cc  01 20 c3 e5                                      strb r2, [r3, #1]
004ef2d0  01 10 54 e5                                      ldrb r1, [r4, #-1]
004ef2d4  01 30 43 e2                                      sub r3, r3, #1
004ef2d8  01 20 22 e0                                      eor r2, r2, r1
004ef2dc  01 20 44 e5                                      strb r2, [r4, #-1]
004ef2e0  01 40 84 e2                                      add r4, r4, #1
004ef2e4  f1 ff ff 8a                                      bhi #0x4ef2b0
004ef2e8  08 d0 8d e2                                      add sp, sp, #8
004ef2ec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
