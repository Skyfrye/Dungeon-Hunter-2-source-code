; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004db7d8, declared_size=40, range_size=40, mode=arm
; class-group: Structs::AIProps
; alias: _ZN7Structs7AIProps8finalizeEv
; demangled: Structs::AIProps::finalize()
; decoder-mode: arm
004db7d8  10 40 2d e9                                      push {r4, lr}
004db7dc  00 40 a0 e1                                      mov r4, r0
004db7e0  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004db7e4  00 00 50 e3                                      cmp r0, #0
004db7e8  03 00 00 0a                                      beq #0x4db7fc
004db7ec  13 d3 f8 eb                                      bl #0x310440
004db7f0  00 30 a0 e3                                      mov r3, #0
004db7f4  28 30 84 e5                                      str r3, [r4, #0x28]
004db7f8  2c 30 84 e5                                      str r3, [r4, #0x2c]
004db7fc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db800, declared_size=64, range_size=64, mode=arm
; class-group: Structs::AIProps
; alias: _ZN7Structs7AIPropsD1Ev
; demangled: Structs::AIProps::~AIProps()
; decoder-mode: arm
004db800  10 40 2d e9                                      push {r4, lr}
004db804  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004db808  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004db80c  00 40 a0 e1                                      mov r4, r0
004db810  03 30 8f e0                                      add r3, pc, r3
004db814  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004db818  02 20 93 e7                                      ldr r2, [r3, r2]
004db81c  00 00 50 e3                                      cmp r0, #0
004db820  08 20 82 e2                                      add r2, r2, #8
004db824  00 20 84 e5                                      str r2, [r4]
004db828  00 00 00 0a                                      beq #0x4db830
004db82c  03 d3 f8 eb                                      bl #0x310440
004db830  04 00 a0 e1                                      mov r0, r4
004db834  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db838  80 92 4b 00 8c 41 00 00                          .byte 0x80, 0x92, 0x4b, 0x00, 0x8c, 0x41, 0x00, 0x00

; FUNCTION 0x004db840, declared_size=28, range_size=28, mode=arm
; class-group: Structs::AIProps
; alias: _ZN7Structs7AIPropsD0Ev
; demangled: Structs::AIProps::~AIProps()
; decoder-mode: arm
004db840  10 40 2d e9                                      push {r4, lr}
004db844  00 40 a0 e1                                      mov r4, r0
004db848  ec ff ff eb                                      bl #0x4db800
004db84c  04 00 a0 e1                                      mov r0, r4
004db850  fa d2 f8 eb                                      bl #0x310440
004db854  04 00 a0 e1                                      mov r0, r4
004db858  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004db85c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::AIProps
; alias: _ZN7Structs7AIPropsD2Ev
; demangled: Structs::AIProps::~AIProps()
; decoder-mode: arm
004db85c  10 40 2d e9                                      push {r4, lr}
004db860  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004db864  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004db868  00 40 a0 e1                                      mov r4, r0
004db86c  03 30 8f e0                                      add r3, pc, r3
004db870  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
004db874  02 20 93 e7                                      ldr r2, [r3, r2]
004db878  00 00 50 e3                                      cmp r0, #0
004db87c  08 20 82 e2                                      add r2, r2, #8
004db880  00 20 84 e5                                      str r2, [r4]
004db884  00 00 00 0a                                      beq #0x4db88c
004db888  ec d2 f8 eb                                      bl #0x310440
004db88c  04 00 a0 e1                                      mov r0, r4
004db890  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004db894  24 92 4b 00 8c 41 00 00                          .byte 0x24, 0x92, 0x4b, 0x00, 0x8c, 0x41, 0x00, 0x00

; FUNCTION 0x00506f3c, declared_size=1396, range_size=1396, mode=arm
; class-group: Structs::AIProps
; alias: _ZN7Structs7AIProps4readEP11IStreamBase
; demangled: Structs::AIProps::read(IStreamBase*)
; decoder-mode: arm
00506f3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00506f40  00 40 a0 e1                                      mov r4, r0
00506f44  08 d0 4d e2                                      sub sp, sp, #8
00506f48  01 00 a0 e1                                      mov r0, r1
00506f4c  01 50 a0 e1                                      mov r5, r1
00506f50  04 10 84 e2                                      add r1, r4, #4
00506f54  4d 48 fd eb                                      bl #0x459090
00506f58  01 30 a0 e3                                      mov r3, #1
00506f5c  00 00 53 e3                                      cmp r3, #0
00506f60  04 30 8d e5                                      str r3, [sp, #4]
00506f64  0f 00 00 1a                                      bne #0x506fa8
00506f68  05 30 84 e2                                      add r3, r4, #5
00506f6c  06 20 84 e2                                      add r2, r4, #6
00506f70  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506f74  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506f78  02 00 53 e1                                      cmp r3, r2
00506f7c  01 10 20 e0                                      eor r1, r0, r1
00506f80  01 10 43 e5                                      strb r1, [r3, #-1]
00506f84  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506f88  00 10 21 e0                                      eor r1, r1, r0
00506f8c  01 10 c2 e5                                      strb r1, [r2, #1]
00506f90  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506f94  01 20 42 e2                                      sub r2, r2, #1
00506f98  00 10 21 e0                                      eor r1, r1, r0
00506f9c  01 10 43 e5                                      strb r1, [r3, #-1]
00506fa0  01 30 83 e2                                      add r3, r3, #1
00506fa4  f1 ff ff 3a                                      blo #0x506f70
00506fa8  05 00 a0 e1                                      mov r0, r5
00506fac  08 10 84 e2                                      add r1, r4, #8
00506fb0  36 48 fd eb                                      bl #0x459090
00506fb4  01 30 a0 e3                                      mov r3, #1
00506fb8  00 00 53 e3                                      cmp r3, #0
00506fbc  04 30 8d e5                                      str r3, [sp, #4]
00506fc0  0f 00 00 1a                                      bne #0x507004
00506fc4  09 30 84 e2                                      add r3, r4, #9
00506fc8  0a 20 84 e2                                      add r2, r4, #0xa
00506fcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506fd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
00506fd4  02 00 53 e1                                      cmp r3, r2
00506fd8  01 10 20 e0                                      eor r1, r0, r1
00506fdc  01 10 43 e5                                      strb r1, [r3, #-1]
00506fe0  01 00 d2 e5                                      ldrb r0, [r2, #1]
00506fe4  00 10 21 e0                                      eor r1, r1, r0
00506fe8  01 10 c2 e5                                      strb r1, [r2, #1]
00506fec  01 00 53 e5                                      ldrb r0, [r3, #-1]
00506ff0  01 20 42 e2                                      sub r2, r2, #1
00506ff4  00 10 21 e0                                      eor r1, r1, r0
00506ff8  01 10 43 e5                                      strb r1, [r3, #-1]
00506ffc  01 30 83 e2                                      add r3, r3, #1
00507000  f1 ff ff 3a                                      blo #0x506fcc
00507004  05 00 a0 e1                                      mov r0, r5
00507008  0c 10 84 e2                                      add r1, r4, #0xc
0050700c  1f 48 fd eb                                      bl #0x459090
00507010  01 30 a0 e3                                      mov r3, #1
00507014  00 00 53 e3                                      cmp r3, #0
00507018  04 30 8d e5                                      str r3, [sp, #4]
0050701c  0f 00 00 1a                                      bne #0x507060
00507020  0d 30 84 e2                                      add r3, r4, #0xd
00507024  0e 20 84 e2                                      add r2, r4, #0xe
00507028  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050702c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507030  02 00 53 e1                                      cmp r3, r2
00507034  01 10 20 e0                                      eor r1, r0, r1
00507038  01 10 43 e5                                      strb r1, [r3, #-1]
0050703c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507040  00 10 21 e0                                      eor r1, r1, r0
00507044  01 10 c2 e5                                      strb r1, [r2, #1]
00507048  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050704c  01 20 42 e2                                      sub r2, r2, #1
00507050  00 10 21 e0                                      eor r1, r1, r0
00507054  01 10 43 e5                                      strb r1, [r3, #-1]
00507058  01 30 83 e2                                      add r3, r3, #1
0050705c  f1 ff ff 3a                                      blo #0x507028
00507060  10 10 84 e2                                      add r1, r4, #0x10
00507064  05 00 a0 e1                                      mov r0, r5
00507068  0b 52 ff eb                                      bl #0x4db89c
0050706c  05 00 a0 e1                                      mov r0, r5
00507070  14 10 84 e2                                      add r1, r4, #0x14
00507074  05 48 fd eb                                      bl #0x459090
00507078  01 30 a0 e3                                      mov r3, #1
0050707c  00 00 53 e3                                      cmp r3, #0
00507080  04 30 8d e5                                      str r3, [sp, #4]
00507084  0f 00 00 1a                                      bne #0x5070c8
00507088  15 30 84 e2                                      add r3, r4, #0x15
0050708c  16 20 84 e2                                      add r2, r4, #0x16
00507090  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507094  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507098  02 00 53 e1                                      cmp r3, r2
0050709c  01 10 20 e0                                      eor r1, r0, r1
005070a0  01 10 43 e5                                      strb r1, [r3, #-1]
005070a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005070a8  00 10 21 e0                                      eor r1, r1, r0
005070ac  01 10 c2 e5                                      strb r1, [r2, #1]
005070b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
005070b4  01 20 42 e2                                      sub r2, r2, #1
005070b8  00 10 21 e0                                      eor r1, r1, r0
005070bc  01 10 43 e5                                      strb r1, [r3, #-1]
005070c0  01 30 83 e2                                      add r3, r3, #1
005070c4  f1 ff ff 3a                                      blo #0x507090
005070c8  05 00 a0 e1                                      mov r0, r5
005070cc  18 10 84 e2                                      add r1, r4, #0x18
005070d0  1d 52 ff eb                                      bl #0x4db94c
005070d4  01 30 a0 e3                                      mov r3, #1
005070d8  00 00 53 e3                                      cmp r3, #0
005070dc  04 30 8d e5                                      str r3, [sp, #4]
005070e0  0f 00 00 1a                                      bne #0x507124
005070e4  19 30 84 e2                                      add r3, r4, #0x19
005070e8  1a 20 84 e2                                      add r2, r4, #0x1a
005070ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
005070f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
005070f4  02 00 53 e1                                      cmp r3, r2
005070f8  01 10 20 e0                                      eor r1, r0, r1
005070fc  01 10 43 e5                                      strb r1, [r3, #-1]
00507100  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507104  00 10 21 e0                                      eor r1, r1, r0
00507108  01 10 c2 e5                                      strb r1, [r2, #1]
0050710c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00507110  01 20 42 e2                                      sub r2, r2, #1
00507114  00 10 21 e0                                      eor r1, r1, r0
00507118  01 10 43 e5                                      strb r1, [r3, #-1]
0050711c  01 30 83 e2                                      add r3, r3, #1
00507120  f1 ff ff 3a                                      blo #0x5070ec
00507124  05 00 a0 e1                                      mov r0, r5
00507128  1c 10 84 e2                                      add r1, r4, #0x1c
0050712c  06 52 ff eb                                      bl #0x4db94c
00507130  01 30 a0 e3                                      mov r3, #1
00507134  00 00 53 e3                                      cmp r3, #0
00507138  04 30 8d e5                                      str r3, [sp, #4]
0050713c  0f 00 00 1a                                      bne #0x507180
00507140  1d 30 84 e2                                      add r3, r4, #0x1d
00507144  1e 20 84 e2                                      add r2, r4, #0x1e
00507148  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050714c  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507150  02 00 53 e1                                      cmp r3, r2
00507154  01 10 20 e0                                      eor r1, r0, r1
00507158  01 10 43 e5                                      strb r1, [r3, #-1]
0050715c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507160  00 10 21 e0                                      eor r1, r1, r0
00507164  01 10 c2 e5                                      strb r1, [r2, #1]
00507168  01 00 53 e5                                      ldrb r0, [r3, #-1]
0050716c  01 20 42 e2                                      sub r2, r2, #1
00507170  00 10 21 e0                                      eor r1, r1, r0
00507174  01 10 43 e5                                      strb r1, [r3, #-1]
00507178  01 30 83 e2                                      add r3, r3, #1
0050717c  f1 ff ff 3a                                      blo #0x507148
00507180  05 00 a0 e1                                      mov r0, r5
00507184  20 10 84 e2                                      add r1, r4, #0x20
00507188  ef 51 ff eb                                      bl #0x4db94c
0050718c  01 30 a0 e3                                      mov r3, #1
00507190  00 00 53 e3                                      cmp r3, #0
00507194  04 30 8d e5                                      str r3, [sp, #4]
00507198  0f 00 00 1a                                      bne #0x5071dc
0050719c  21 30 84 e2                                      add r3, r4, #0x21
005071a0  22 20 84 e2                                      add r2, r4, #0x22
005071a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005071a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005071ac  02 00 53 e1                                      cmp r3, r2
005071b0  01 10 20 e0                                      eor r1, r0, r1
005071b4  01 10 43 e5                                      strb r1, [r3, #-1]
005071b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005071bc  00 10 21 e0                                      eor r1, r1, r0
005071c0  01 10 c2 e5                                      strb r1, [r2, #1]
005071c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005071c8  01 20 42 e2                                      sub r2, r2, #1
005071cc  00 10 21 e0                                      eor r1, r1, r0
005071d0  01 10 43 e5                                      strb r1, [r3, #-1]
005071d4  01 30 83 e2                                      add r3, r3, #1
005071d8  f1 ff ff 3a                                      blo #0x5071a4
005071dc  05 00 a0 e1                                      mov r0, r5
005071e0  24 10 84 e2                                      add r1, r4, #0x24
005071e4  a9 47 fd eb                                      bl #0x459090
005071e8  01 30 a0 e3                                      mov r3, #1
005071ec  00 00 53 e3                                      cmp r3, #0
005071f0  04 30 8d e5                                      str r3, [sp, #4]
005071f4  0f 00 00 1a                                      bne #0x507238
005071f8  25 30 84 e2                                      add r3, r4, #0x25
005071fc  26 20 84 e2                                      add r2, r4, #0x26
00507200  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507204  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507208  02 00 53 e1                                      cmp r3, r2
0050720c  01 10 20 e0                                      eor r1, r0, r1
00507210  01 10 43 e5                                      strb r1, [r3, #-1]
00507214  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507218  00 10 21 e0                                      eor r1, r1, r0
0050721c  01 10 c2 e5                                      strb r1, [r2, #1]
00507220  01 00 53 e5                                      ldrb r0, [r3, #-1]
00507224  01 20 42 e2                                      sub r2, r2, #1
00507228  00 10 21 e0                                      eor r1, r1, r0
0050722c  01 10 43 e5                                      strb r1, [r3, #-1]
00507230  01 30 83 e2                                      add r3, r3, #1
00507234  f1 ff ff 3a                                      blo #0x507200
00507238  05 00 a0 e1                                      mov r0, r5
0050723c  28 10 84 e2                                      add r1, r4, #0x28
00507240  d6 5f fb eb                                      bl #0x3df1a0
00507244  01 30 a0 e3                                      mov r3, #1
00507248  00 00 53 e3                                      cmp r3, #0
0050724c  04 30 8d e5                                      str r3, [sp, #4]
00507250  0f 00 00 1a                                      bne #0x507294
00507254  29 30 84 e2                                      add r3, r4, #0x29
00507258  2a 20 84 e2                                      add r2, r4, #0x2a
0050725c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507260  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507264  02 00 53 e1                                      cmp r3, r2
00507268  01 10 20 e0                                      eor r1, r0, r1
0050726c  01 10 43 e5                                      strb r1, [r3, #-1]
00507270  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507274  00 10 21 e0                                      eor r1, r1, r0
00507278  01 10 c2 e5                                      strb r1, [r2, #1]
0050727c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00507280  01 20 42 e2                                      sub r2, r2, #1
00507284  00 10 21 e0                                      eor r1, r1, r0
00507288  01 10 43 e5                                      strb r1, [r3, #-1]
0050728c  01 30 83 e2                                      add r3, r3, #1
00507290  f1 ff ff 3a                                      blo #0x50725c
00507294  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
00507298  00 00 50 e3                                      cmp r0, #0
0050729c  00 00 00 0a                                      beq #0x5072a4
005072a0  66 24 f8 eb                                      bl #0x310440
005072a4  28 00 94 e5                                      ldr r0, [r4, #0x28]
005072a8  01 10 a0 e3                                      mov r1, #1
005072ac  00 60 a0 e3                                      mov r6, #0
005072b0  01 00 80 e0                                      add r0, r0, r1
005072b4  ac 24 f8 eb                                      bl #0x31056c
005072b8  28 20 94 e5                                      ldr r2, [r4, #0x28]
005072bc  00 10 a0 e1                                      mov r1, r0
005072c0  2c 00 84 e5                                      str r0, [r4, #0x2c]
005072c4  06 30 a0 e1                                      mov r3, r6
005072c8  05 00 a0 e1                                      mov r0, r5
005072cc  60 40 f8 eb                                      bl #0x317454
005072d0  28 30 94 e5                                      ldr r3, [r4, #0x28]
005072d4  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
005072d8  05 00 a0 e1                                      mov r0, r5
005072dc  30 10 84 e2                                      add r1, r4, #0x30
005072e0  03 60 c2 e7                                      strb r6, [r2, r3]
005072e4  69 47 fd eb                                      bl #0x459090
005072e8  01 30 a0 e3                                      mov r3, #1
005072ec  06 00 53 e1                                      cmp r3, r6
005072f0  04 30 8d e5                                      str r3, [sp, #4]
005072f4  0f 00 00 1a                                      bne #0x507338
005072f8  31 30 84 e2                                      add r3, r4, #0x31
005072fc  32 20 84 e2                                      add r2, r4, #0x32
00507300  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507304  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507308  02 00 53 e1                                      cmp r3, r2
0050730c  01 10 20 e0                                      eor r1, r0, r1
00507310  01 10 43 e5                                      strb r1, [r3, #-1]
00507314  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507318  00 10 21 e0                                      eor r1, r1, r0
0050731c  01 10 c2 e5                                      strb r1, [r2, #1]
00507320  01 00 53 e5                                      ldrb r0, [r3, #-1]
00507324  01 20 42 e2                                      sub r2, r2, #1
00507328  00 10 21 e0                                      eor r1, r1, r0
0050732c  01 10 43 e5                                      strb r1, [r3, #-1]
00507330  01 30 83 e2                                      add r3, r3, #1
00507334  f1 ff ff 3a                                      blo #0x507300
00507338  05 00 a0 e1                                      mov r0, r5
0050733c  34 10 84 e2                                      add r1, r4, #0x34
00507340  52 47 fd eb                                      bl #0x459090
00507344  01 30 a0 e3                                      mov r3, #1
00507348  00 00 53 e3                                      cmp r3, #0
0050734c  04 30 8d e5                                      str r3, [sp, #4]
00507350  0f 00 00 1a                                      bne #0x507394
00507354  35 30 84 e2                                      add r3, r4, #0x35
00507358  36 20 84 e2                                      add r2, r4, #0x36
0050735c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507360  01 10 53 e5                                      ldrb r1, [r3, #-1]
00507364  02 00 53 e1                                      cmp r3, r2
00507368  01 10 20 e0                                      eor r1, r0, r1
0050736c  01 10 43 e5                                      strb r1, [r3, #-1]
00507370  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507374  00 10 21 e0                                      eor r1, r1, r0
00507378  01 10 c2 e5                                      strb r1, [r2, #1]
0050737c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00507380  01 20 42 e2                                      sub r2, r2, #1
00507384  00 10 21 e0                                      eor r1, r1, r0
00507388  01 10 43 e5                                      strb r1, [r3, #-1]
0050738c  01 30 83 e2                                      add r3, r3, #1
00507390  f1 ff ff 3a                                      blo #0x50735c
00507394  05 00 a0 e1                                      mov r0, r5
00507398  38 10 84 e2                                      add r1, r4, #0x38
0050739c  3b 47 fd eb                                      bl #0x459090
005073a0  01 30 a0 e3                                      mov r3, #1
005073a4  00 00 53 e3                                      cmp r3, #0
005073a8  04 30 8d e5                                      str r3, [sp, #4]
005073ac  0f 00 00 1a                                      bne #0x5073f0
005073b0  39 30 84 e2                                      add r3, r4, #0x39
005073b4  3a 20 84 e2                                      add r2, r4, #0x3a
005073b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005073bc  01 10 53 e5                                      ldrb r1, [r3, #-1]
005073c0  02 00 53 e1                                      cmp r3, r2
005073c4  01 10 20 e0                                      eor r1, r0, r1
005073c8  01 10 43 e5                                      strb r1, [r3, #-1]
005073cc  01 00 d2 e5                                      ldrb r0, [r2, #1]
005073d0  00 10 21 e0                                      eor r1, r1, r0
005073d4  01 10 c2 e5                                      strb r1, [r2, #1]
005073d8  01 00 53 e5                                      ldrb r0, [r3, #-1]
005073dc  01 20 42 e2                                      sub r2, r2, #1
005073e0  00 10 21 e0                                      eor r1, r1, r0
005073e4  01 10 43 e5                                      strb r1, [r3, #-1]
005073e8  01 30 83 e2                                      add r3, r3, #1
005073ec  f1 ff ff 3a                                      blo #0x5073b8
005073f0  05 00 a0 e1                                      mov r0, r5
005073f4  3c 10 84 e2                                      add r1, r4, #0x3c
005073f8  53 51 ff eb                                      bl #0x4db94c
005073fc  01 30 a0 e3                                      mov r3, #1
00507400  00 00 53 e3                                      cmp r3, #0
00507404  04 30 8d e5                                      str r3, [sp, #4]
00507408  0f 00 00 1a                                      bne #0x50744c
0050740c  3d 30 84 e2                                      add r3, r4, #0x3d
00507410  3e 20 84 e2                                      add r2, r4, #0x3e
00507414  01 00 d2 e5                                      ldrb r0, [r2, #1]
00507418  01 10 53 e5                                      ldrb r1, [r3, #-1]
0050741c  02 00 53 e1                                      cmp r3, r2
00507420  01 10 20 e0                                      eor r1, r0, r1
00507424  01 10 43 e5                                      strb r1, [r3, #-1]
00507428  01 00 d2 e5                                      ldrb r0, [r2, #1]
0050742c  00 10 21 e0                                      eor r1, r1, r0
00507430  01 10 c2 e5                                      strb r1, [r2, #1]
00507434  01 00 53 e5                                      ldrb r0, [r3, #-1]
00507438  01 20 42 e2                                      sub r2, r2, #1
0050743c  00 10 21 e0                                      eor r1, r1, r0
00507440  01 10 43 e5                                      strb r1, [r3, #-1]
00507444  01 30 83 e2                                      add r3, r3, #1
00507448  f1 ff ff 3a                                      blo #0x507414
0050744c  05 00 a0 e1                                      mov r0, r5
00507450  40 10 84 e2                                      add r1, r4, #0x40
00507454  3c 51 ff eb                                      bl #0x4db94c
00507458  01 30 a0 e3                                      mov r3, #1
0050745c  00 00 53 e3                                      cmp r3, #0
00507460  04 30 8d e5                                      str r3, [sp, #4]
00507464  0f 00 00 1a                                      bne #0x5074a8
00507468  42 30 84 e2                                      add r3, r4, #0x42
0050746c  41 40 84 e2                                      add r4, r4, #0x41
00507470  01 10 d3 e5                                      ldrb r1, [r3, #1]
00507474  01 20 54 e5                                      ldrb r2, [r4, #-1]
00507478  03 00 54 e1                                      cmp r4, r3
0050747c  02 20 21 e0                                      eor r2, r1, r2
00507480  01 20 44 e5                                      strb r2, [r4, #-1]
00507484  01 10 d3 e5                                      ldrb r1, [r3, #1]
00507488  01 20 22 e0                                      eor r2, r2, r1
0050748c  01 20 c3 e5                                      strb r2, [r3, #1]
00507490  01 10 54 e5                                      ldrb r1, [r4, #-1]
00507494  01 30 43 e2                                      sub r3, r3, #1
00507498  01 20 22 e0                                      eor r2, r2, r1
0050749c  01 20 44 e5                                      strb r2, [r4, #-1]
005074a0  01 40 84 e2                                      add r4, r4, #1
005074a4  f1 ff ff 3a                                      blo #0x507470
005074a8  08 d0 8d e2                                      add sp, sp, #8
005074ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
