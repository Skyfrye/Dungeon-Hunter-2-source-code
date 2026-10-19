; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d30bc, declared_size=48, range_size=48, mode=arm
; class-group: Structs::HideFlash
; alias: _ZN7Structs9HideFlash8finalizeEv
; demangled: Structs::HideFlash::finalize()
; decoder-mode: arm
004d30bc  10 40 2d e9                                      push {r4, lr}
004d30c0  00 40 a0 e1                                      mov r4, r0
004d30c4  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d30c8  00 00 50 e3                                      cmp r0, #0
004d30cc  03 00 00 0a                                      beq #0x4d30e0
004d30d0  da f4 f8 eb                                      bl #0x310440
004d30d4  00 30 a0 e3                                      mov r3, #0
004d30d8  0c 30 84 e5                                      str r3, [r4, #0xc]
004d30dc  10 30 84 e5                                      str r3, [r4, #0x10]
004d30e0  04 00 a0 e1                                      mov r0, r4
004d30e4  10 40 bd e8                                      pop {r4, lr}
004d30e8  de ce ff ea                                      b #0x4c6c68

; FUNCTION 0x004d311c, declared_size=72, range_size=72, mode=arm
; class-group: Structs::HideFlash
; alias: _ZN7Structs9HideFlashD1Ev
; demangled: Structs::HideFlash::~HideFlash()
; decoder-mode: arm
004d311c  10 40 2d e9                                      push {r4, lr}
004d3120  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3124  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d3128  00 40 a0 e1                                      mov r4, r0
004d312c  03 30 8f e0                                      add r3, pc, r3
004d3130  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3134  02 20 93 e7                                      ldr r2, [r3, r2]
004d3138  00 00 50 e3                                      cmp r0, #0
004d313c  08 20 82 e2                                      add r2, r2, #8
004d3140  00 20 84 e5                                      str r2, [r4]
004d3144  00 00 00 0a                                      beq #0x4d314c
004d3148  bc f4 f8 eb                                      bl #0x310440
004d314c  04 00 a0 e1                                      mov r0, r4
004d3150  c2 ce ff eb                                      bl #0x4c6c60
004d3154  04 00 a0 e1                                      mov r0, r4
004d3158  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d315c  64 19 4c 00 e8 08 00 00                          .byte 0x64, 0x19, 0x4c, 0x00, 0xe8, 0x08, 0x00, 0x00

; FUNCTION 0x004d3164, declared_size=28, range_size=28, mode=arm
; class-group: Structs::HideFlash
; alias: _ZN7Structs9HideFlashD0Ev
; demangled: Structs::HideFlash::~HideFlash()
; decoder-mode: arm
004d3164  10 40 2d e9                                      push {r4, lr}
004d3168  00 40 a0 e1                                      mov r4, r0
004d316c  ea ff ff eb                                      bl #0x4d311c
004d3170  04 00 a0 e1                                      mov r0, r4
004d3174  b1 f4 f8 eb                                      bl #0x310440
004d3178  04 00 a0 e1                                      mov r0, r4
004d317c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3180, declared_size=72, range_size=72, mode=arm
; class-group: Structs::HideFlash
; alias: _ZN7Structs9HideFlashD2Ev
; demangled: Structs::HideFlash::~HideFlash()
; decoder-mode: arm
004d3180  10 40 2d e9                                      push {r4, lr}
004d3184  34 30 9f e5                                      ldr r3, [pc, #0x34]
004d3188  34 20 9f e5                                      ldr r2, [pc, #0x34]
004d318c  00 40 a0 e1                                      mov r4, r0
004d3190  03 30 8f e0                                      add r3, pc, r3
004d3194  10 00 90 e5                                      ldr r0, [r0, #0x10]
004d3198  02 20 93 e7                                      ldr r2, [r3, r2]
004d319c  00 00 50 e3                                      cmp r0, #0
004d31a0  08 20 82 e2                                      add r2, r2, #8
004d31a4  00 20 84 e5                                      str r2, [r4]
004d31a8  00 00 00 0a                                      beq #0x4d31b0
004d31ac  a3 f4 f8 eb                                      bl #0x310440
004d31b0  04 00 a0 e1                                      mov r0, r4
004d31b4  a9 ce ff eb                                      bl #0x4c6c60
004d31b8  04 00 a0 e1                                      mov r0, r4
004d31bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d31c0  00 19 4c 00 e8 08 00 00                          .byte 0x00, 0x19, 0x4c, 0x00, 0xe8, 0x08, 0x00, 0x00

; FUNCTION 0x0050208c, declared_size=296, range_size=296, mode=arm
; class-group: Structs::HideFlash
; alias: _ZN7Structs9HideFlash4readEP11IStreamBase
; demangled: Structs::HideFlash::read(IStreamBase*)
; decoder-mode: arm
0050208c  70 40 2d e9                                      push {r4, r5, r6, lr}
00502090  00 40 a0 e1                                      mov r4, r0
00502094  08 d0 4d e2                                      sub sp, sp, #8
00502098  01 50 a0 e1                                      mov r5, r1
0050209c  e1 f5 ff eb                                      bl #0x4ff828
005020a0  05 00 a0 e1                                      mov r0, r5
005020a4  08 10 84 e2                                      add r1, r4, #8
005020a8  f8 5b fd eb                                      bl #0x459090
005020ac  01 30 a0 e3                                      mov r3, #1
005020b0  00 00 53 e3                                      cmp r3, #0
005020b4  04 30 8d e5                                      str r3, [sp, #4]
005020b8  0f 00 00 1a                                      bne #0x5020fc
005020bc  09 30 84 e2                                      add r3, r4, #9
005020c0  0a 20 84 e2                                      add r2, r4, #0xa
005020c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
005020c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
005020cc  03 00 52 e1                                      cmp r2, r3
005020d0  01 10 20 e0                                      eor r1, r0, r1
005020d4  01 10 43 e5                                      strb r1, [r3, #-1]
005020d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
005020dc  00 10 21 e0                                      eor r1, r1, r0
005020e0  01 10 c2 e5                                      strb r1, [r2, #1]
005020e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
005020e8  01 20 42 e2                                      sub r2, r2, #1
005020ec  00 10 21 e0                                      eor r1, r1, r0
005020f0  01 10 43 e5                                      strb r1, [r3, #-1]
005020f4  01 30 83 e2                                      add r3, r3, #1
005020f8  f1 ff ff 8a                                      bhi #0x5020c4
005020fc  05 00 a0 e1                                      mov r0, r5
00502100  0c 10 84 e2                                      add r1, r4, #0xc
00502104  25 74 fb eb                                      bl #0x3df1a0
00502108  01 30 a0 e3                                      mov r3, #1
0050210c  00 00 53 e3                                      cmp r3, #0
00502110  04 30 8d e5                                      str r3, [sp, #4]
00502114  0f 00 00 1a                                      bne #0x502158
00502118  0d 30 84 e2                                      add r3, r4, #0xd
0050211c  0e 20 84 e2                                      add r2, r4, #0xe
00502120  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502124  01 10 53 e5                                      ldrb r1, [r3, #-1]
00502128  03 00 52 e1                                      cmp r2, r3
0050212c  01 10 20 e0                                      eor r1, r0, r1
00502130  01 10 43 e5                                      strb r1, [r3, #-1]
00502134  01 00 d2 e5                                      ldrb r0, [r2, #1]
00502138  00 10 21 e0                                      eor r1, r1, r0
0050213c  01 10 c2 e5                                      strb r1, [r2, #1]
00502140  01 00 53 e5                                      ldrb r0, [r3, #-1]
00502144  01 20 42 e2                                      sub r2, r2, #1
00502148  00 10 21 e0                                      eor r1, r1, r0
0050214c  01 10 43 e5                                      strb r1, [r3, #-1]
00502150  01 30 83 e2                                      add r3, r3, #1
00502154  f1 ff ff 8a                                      bhi #0x502120
00502158  10 00 94 e5                                      ldr r0, [r4, #0x10]
0050215c  00 00 50 e3                                      cmp r0, #0
00502160  00 00 00 0a                                      beq #0x502168
00502164  b5 38 f8 eb                                      bl #0x310440
00502168  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0050216c  01 10 a0 e3                                      mov r1, #1
00502170  00 60 a0 e3                                      mov r6, #0
00502174  01 00 80 e0                                      add r0, r0, r1
00502178  fb 38 f8 eb                                      bl #0x31056c
0050217c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00502180  00 10 a0 e1                                      mov r1, r0
00502184  10 00 84 e5                                      str r0, [r4, #0x10]
00502188  06 30 a0 e1                                      mov r3, r6
0050218c  05 00 a0 e1                                      mov r0, r5
00502190  af 54 f8 eb                                      bl #0x317454
00502194  10 20 94 e5                                      ldr r2, [r4, #0x10]
00502198  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0050219c  05 00 a0 e1                                      mov r0, r5
005021a0  14 10 84 e2                                      add r1, r4, #0x14
005021a4  03 60 c2 e7                                      strb r6, [r2, r3]
005021a8  bb 65 ff eb                                      bl #0x4db89c
005021ac  08 d0 8d e2                                      add sp, sp, #8
005021b0  70 80 bd e8                                      pop {r4, r5, r6, pc}
