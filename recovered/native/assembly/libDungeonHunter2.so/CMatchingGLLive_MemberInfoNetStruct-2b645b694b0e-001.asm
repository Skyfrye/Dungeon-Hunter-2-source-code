; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0081d1f4, declared_size=164, range_size=164, mode=arm
; class-group: CMatchingGLLive::MemberInfoNetStruct
; alias: _ZN15CMatchingGLLive19MemberInfoNetStructD1Ev
; demangled: CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct()
; decoder-mode: arm
0081d1f4  70 40 2d e9                                      push {r4, r5, r6, lr}
0081d1f8  84 50 9f e5                                      ldr r5, [pc, #0x84]
0081d1fc  84 20 9f e5                                      ldr r2, [pc, #0x84]
0081d200  84 30 9f e5                                      ldr r3, [pc, #0x84]
0081d204  05 50 8f e0                                      add r5, pc, r5
0081d208  02 20 95 e7                                      ldr r2, [r5, r2]
0081d20c  03 30 95 e7                                      ldr r3, [r5, r3]
0081d210  00 40 a0 e1                                      mov r4, r0
0081d214  08 20 82 e2                                      add r2, r2, #8
0081d218  08 30 83 e2                                      add r3, r3, #8
0081d21c  00 20 80 e5                                      str r2, [r0]
0081d220  30 31 80 e5                                      str r3, [r0, #0x130]
0081d224  15 0e 80 e2                                      add r0, r0, #0x150
0081d228  09 ec eb eb                                      bl #0x318254
0081d22c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0081d230  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
0081d234  1c 11 94 e5                                      ldr r1, [r4, #0x11c]
0081d238  02 20 95 e7                                      ldr r2, [r5, r2]
0081d23c  03 30 95 e7                                      ldr r3, [r5, r3]
0081d240  00 00 51 e3                                      cmp r1, #0
0081d244  08 20 82 e2                                      add r2, r2, #8
0081d248  08 30 83 e2                                      add r3, r3, #8
0081d24c  30 21 84 e5                                      str r2, [r4, #0x130]
0081d250  00 30 84 e5                                      str r3, [r4]
0081d254  08 00 00 0a                                      beq #0x81d27c
0081d258  43 5f 84 e2                                      add r5, r4, #0x10c
0081d25c  05 00 a0 e1                                      mov r0, r5
0081d260  10 11 94 e5                                      ldr r1, [r4, #0x110]
0081d264  59 4f ed eb                                      bl #0x370fd0
0081d268  00 30 a0 e3                                      mov r3, #0
0081d26c  18 51 84 e5                                      str r5, [r4, #0x118]
0081d270  1c 31 84 e5                                      str r3, [r4, #0x11c]
0081d274  14 51 84 e5                                      str r5, [r4, #0x114]
0081d278  10 31 84 e5                                      str r3, [r4, #0x110]
0081d27c  04 00 a0 e1                                      mov r0, r4
0081d280  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0081d284  8c 78 17 00 40 13 00 00 30 3e 00 00 a8 10 00 00  .byte 0x8c, 0x78, 0x17, 0x00, 0x40, 0x13, 0x00, 0x00, 0x30, 0x3e, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
0081d294  c4 43 00 00                                      .byte 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x0081d298, declared_size=28, range_size=28, mode=arm
; class-group: CMatchingGLLive::MemberInfoNetStruct
; alias: _ZN15CMatchingGLLive19MemberInfoNetStructD0Ev
; demangled: CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct()
; decoder-mode: arm
0081d298  10 40 2d e9                                      push {r4, lr}
0081d29c  00 40 a0 e1                                      mov r4, r0
0081d2a0  d3 ff ff eb                                      bl #0x81d1f4
0081d2a4  04 00 a0 e1                                      mov r0, r4
0081d2a8  64 cc eb eb                                      bl #0x310440
0081d2ac  04 00 a0 e1                                      mov r0, r4
0081d2b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0081e680, declared_size=164, range_size=164, mode=arm
; class-group: CMatchingGLLive::MemberInfoNetStruct
; alias: _ZN15CMatchingGLLive19MemberInfoNetStructC1Ev
; demangled: CMatchingGLLive::MemberInfoNetStruct::MemberInfoNetStruct()
; decoder-mode: arm
0081e680  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0081e684  88 80 9f e5                                      ldr r8, [pc, #0x88]
0081e688  88 30 9f e5                                      ldr r3, [pc, #0x88]
0081e68c  20 d0 4d e2                                      sub sp, sp, #0x20
0081e690  08 80 8f e0                                      add r8, pc, r8
0081e694  03 70 98 e7                                      ldr r7, [r8, r3]
0081e698  00 40 a0 e1                                      mov r4, r0
0081e69c  00 50 a0 e1                                      mov r5, r0
0081e6a0  00 30 97 e5                                      ldr r3, [r7]
0081e6a4  04 60 8d e2                                      add r6, sp, #4
0081e6a8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0081e6ac  90 d4 ff eb                                      bl #0x8138f4
0081e6b0  64 30 9f e5                                      ldr r3, [pc, #0x64]
0081e6b4  64 10 9f e5                                      ldr r1, [pc, #0x64]
0081e6b8  0d 20 a0 e1                                      mov r2, sp
0081e6bc  03 30 98 e7                                      ldr r3, [r8, r3]
0081e6c0  01 10 8f e0                                      add r1, pc, r1
0081e6c4  06 00 a0 e1                                      mov r0, r6
0081e6c8  08 30 83 e2                                      add r3, r3, #8
0081e6cc  30 31 84 e4                                      str r3, [r4], #0x130
0081e6d0  85 d6 eb eb                                      bl #0x3140ec
0081e6d4  06 10 a0 e1                                      mov r1, r6
0081e6d8  04 00 a0 e1                                      mov r0, r4
0081e6dc  af ff ff eb                                      bl #0x81e5a0
0081e6e0  06 00 a0 e1                                      mov r0, r6
0081e6e4  da e6 eb eb                                      bl #0x318254
0081e6e8  05 00 a0 e1                                      mov r0, r5
0081e6ec  04 10 a0 e1                                      mov r1, r4
0081e6f0  d5 d2 ff eb                                      bl #0x81324c
0081e6f4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0081e6f8  00 30 97 e5                                      ldr r3, [r7]
0081e6fc  05 00 a0 e1                                      mov r0, r5
0081e700  03 00 52 e1                                      cmp r2, r3
0081e704  01 00 00 1a                                      bne #0x81e710
0081e708  20 d0 8d e2                                      add sp, sp, #0x20
0081e70c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0081e710  fe be eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0081e714  00 64 17 00 ac 40 00 00 40 13 00 00 48 d1 0a 00  .byte 0x00, 0x64, 0x17, 0x00, 0xac, 0x40, 0x00, 0x00, 0x40, 0x13, 0x00, 0x00, 0x48, 0xd1, 0x0a, 0x00
