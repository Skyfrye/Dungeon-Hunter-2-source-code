; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3274, declared_size=48, range_size=48, mode=arm
; class-group: Structs::ShowFlash
; alias: _ZN7Structs9ShowFlash8finalizeEv
; demangled: Structs::ShowFlash::finalize()
; decoder-mode: arm
004d3274  10 40 2d e9                                      push {r4, lr}
004d3278  00 40 a0 e1                                      mov r4, r0
004d327c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3280  00 00 50 e3                                      cmp r0, #0
004d3284  03 00 00 0a                                      beq #0x4d3298
004d3288  6c f4 f8 eb                                      bl #0x310440
004d328c  00 30 a0 e3                                      mov r3, #0
004d3290  0c 30 84 e5                                      str r3, [r4, #0xc]
004d3294  10 30 84 e5                                      str r3, [r4, #0x10]
004d3298  04 00 a0 e1                                      mov r0, r4
004d329c  10 40 bd e8                                      pop {r4, lr}
004d32a0  70 ce ff ea                                      b #0x4c6c68

; FUNCTION 0x004d32d4, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ShowFlash
; alias: _ZN7Structs9ShowFlashD1Ev
; demangled: Structs::ShowFlash::~ShowFlash()
; decoder-mode: arm
004d32d4  10 40 2d e9                                      push {r4, lr}
004d32d8  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d32dc  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d32e0  00 40 a0 e1                                      mov r4, r0
004d32e4  03 30 8f e0                                      add r3, pc, r3
004d32e8  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d32ec  02 20 93 e7                                      ldr r2, [r3, r2]
004d32f0  00 00 50 e3                                      cmp r0, #0
004d32f4  08 20 82 e2                                      add r2, r2, #8
004d32f8  00 20 84 e5                                      str r2, [r4]
004d32fc  00 00 00 0a                                      beq #0x4d3304
004d3300  4e f4 f8 eb                                      bl #0x310440
004d3304  04 00 a0 e1                                      mov r0, r4
004d3308  54 ce ff eb                                      bl #0x4c6c60
004d330c  04 00 a0 e1                                      mov r0, r4
004d3310  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3314  ac 17 4c 00 58 3c 00 00                          .byte 0xac, 0x17, 0x4c, 0x00, 0x58, 0x3c, 0x00, 0x00

; FUNCTION 0x004d331c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ShowFlash
; alias: _ZN7Structs9ShowFlashD0Ev
; demangled: Structs::ShowFlash::~ShowFlash()
; decoder-mode: arm
004d331c  10 40 2d e9                                      push {r4, lr}
004d3320  00 40 a0 e1                                      mov r4, r0
004d3324  ea ff ff eb                                      bl #0x4d32d4
004d3328  04 00 a0 e1                                      mov r0, r4
004d332c  43 f4 f8 eb                                      bl #0x310440
004d3330  04 00 a0 e1                                      mov r0, r4
004d3334  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3338, declared_size=72, range_size=72, mode=arm
; class-group: Structs::ShowFlash
; alias: _ZN7Structs9ShowFlashD2Ev
; demangled: Structs::ShowFlash::~ShowFlash()
; decoder-mode: arm
004d3338  10 40 2d e9                                      push {r4, lr}
004d333c  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3340  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3344  00 40 a0 e1                                      mov r4, r0
004d3348  03 30 8f e0                                      add r3, pc, r3
004d334c  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3350  02 20 93 e7                                      ldr r2, [r3, r2]
004d3354  00 00 50 e3                                      cmp r0, #0
004d3358  08 20 82 e2                                      add r2, r2, #8
004d335c  00 20 84 e5                                      str r2, [r4]
004d3360  00 00 00 0a                                      beq #0x4d3368
004d3364  35 f4 f8 eb                                      bl #0x310440
004d3368  04 00 a0 e1                                      mov r0, r4
004d336c  3b ce ff eb                                      bl #0x4c6c60
004d3370  04 00 a0 e1                                      mov r0, r4
004d3374  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d3378  48 17 4c 00 58 3c 00 00                          .byte 0x48, 0x17, 0x4c, 0x00, 0x58, 0x3c, 0x00, 0x00

; FUNCTION 0x005021b8, declared_size=296, range_size=296, mode=arm
; class-group: Structs::ShowFlash
; alias: _ZN7Structs9ShowFlash4readEP11IStreamBase
; demangled: Structs::ShowFlash::read(IStreamBase*)
; decoder-mode: arm
005021b8  70 40 2d e9                                      push {r4, r5, r6, lr}
005021bc  00 40 a0 e1                                      mov r4, r0
005021c0  08 d0 4d e2                                      sub sp, sp, #8
005021c4  01 50 a0 e1                                      mov r5, r1
005021c8  96 f5 ff eb                                      bl #0x4ff828
005021cc  05 00 a0 e1                                      mov r0, r5
005021d0  08 10 84 e2                                      add r1, r4, #8
005021d4  ad 5b fd eb                                      bl #0x459090
005021d8  01 30 a0 e3                                      mov r3, #1
005021dc  00 00 53 e3                                      cmp r3, #0
005021e0  04 30 8d e5                                      str r3, [sp, #4]
005021e4  0f 00 00 1a                                      bne #0x502228
005021e8  09 30 84 e2                                      add r3, r4, #9
005021ec  0a 20 84 e2                                      add r2, r4, #0xa
005021f0  01 00 d2 e5                                      ldrb r0, [r2, #1]
005021f4  01 10 53 e5                                      ldrb r1, [r3, #-1]
005021f8  03 00 52 e1                                      cmp r2, r3
005021fc  01 10 20 e0                                      eor r1, r0, r1
00502200  01 10 43 e5                                      strb r1, [r3, #-1]
00502204  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502208  00 10 21 e0                                      eor r1, r1, r0
0050220c  01 10 c2 e5                                      strb r1, [r2, #1]
00502210  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502214  01 20 42 e2                                      sub r2, r2, #1
00502218  00 10 21 e0                                      eor r1, r1, r0
0050221c  01 10 43 e5                                      strb r1, [r3, #-1]
00502220  01 30 83 e2                                      add r3, r3, #1
00502224  f1 ff ff 8a                                      bhi #0x5021f0
00502228  05 00 a0 e1                                      mov r0, r5
0050222c  0c 10 84 e2                                      add r1, r4, #0xc
00502230  da 73 fb eb                                      bl #0x3df1a0
00502234  01 30 a0 e3                                      mov r3, #1
00502238  00 00 53 e3                                      cmp r3, #0
0050223c  04 30 8d e5                                      str r3, [sp, #4]
00502240  0f 00 00 1a                                      bne #0x502284
00502244  0d 30 84 e2                                      add r3, r4, #0xd
00502248  0e 20 84 e2                                      add r2, r4, #0xe
0050224c  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502250  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502254  03 00 52 e1                                      cmp r2, r3
00502258  01 10 20 e0                                      eor r1, r0, r1
0050225c  01 10 43 e5                                      strb r1, [r3, #-1]
00502260  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502264  00 10 21 e0                                      eor r1, r1, r0
00502268  01 10 c2 e5                                      strb r1, [r2, #1]
0050226c  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502270  01 20 42 e2                                      sub r2, r2, #1
00502274  00 10 21 e0                                      eor r1, r1, r0
00502278  01 10 43 e5                                      strb r1, [r3, #-1]
0050227c  01 30 83 e2                                      add r3, r3, #1
00502280  f1 ff ff 8a                                      bhi #0x50224c
00502284  10 00 94 e5                                      ldr r0, [r4, #0x10]
00502288  00 00 50 e3                                      cmp r0, #0
0050228c  00 00 00 0a                                      beq #0x502294
00502290  6a 38 f8 eb                                      bl #0x310440
00502294  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00502298  01 10 a0 e3                                      mov r1, #1
0050229c  00 60 a0 e3                                      mov r6, #0
005022a0  01 00 80 e0                                      add r0, r0, r1
005022a4  b0 38 f8 eb                                      bl #0x31056c
005022a8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
005022ac  00 10 a0 e1                                      mov r1, r0
005022b0  10 00 84 e5                                      str r0, [r4, #0x10]
005022b4  06 30 a0 e1                                      mov r3, r6
005022b8  05 00 a0 e1                                      mov r0, r5
005022bc  64 54 f8 eb                                      bl #0x317454
005022c0  10 20 94 e5                                      ldr r2, [r4, #0x10]
005022c4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005022c8  05 00 a0 e1                                      mov r0, r5
005022cc  14 10 84 e2                                      add r1, r4, #0x14
005022d0  03 60 c2 e7                                      strb r6, [r2, r3]
005022d4  70 65 ff eb                                      bl #0x4db89c
005022d8  08 d0 8d e2                                      add sp, sp, #8
005022dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
