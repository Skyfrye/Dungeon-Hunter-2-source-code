; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f78c, declared_size=4, range_size=4, mode=arm
; class-group: GCSingleton<GameCenter>
; alias: _ZN11GCSingletonI10GameCenterED1Ev
; demangled: GCSingleton<GameCenter>::~GCSingleton()
; decoder-mode: arm
0031f78c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031fbec, declared_size=52, range_size=52, mode=arm
; class-group: GCSingleton<GameCenter>
; alias: _ZN11GCSingletonI10GameCenterED0Ev
; demangled: GCSingleton<GameCenter>::~GCSingleton()
; decoder-mode: arm
0031fbec  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031fbf0  24 20 9f e5                                      ldr r2, [pc, #0x24]
0031fbf4  10 40 2d e9                                      push {r4, lr}
0031fbf8  03 30 8f e0                                      add r3, pc, r3
0031fbfc  02 20 93 e7                                      ldr r2, [r3, r2]
0031fc00  00 40 a0 e1                                      mov r4, r0
0031fc04  08 20 82 e2                                      add r2, r2, #8
0031fc08  00 20 80 e5                                      str r2, [r0]
0031fc0c  0b c2 ff eb                                      bl #0x310440
0031fc10  04 00 a0 e1                                      mov r0, r4
0031fc14  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0031fc18  98 4e 67 00 00 2a 00 00                          .byte 0x98, 0x4e, 0x67, 0x00, 0x00, 0x2a, 0x00, 0x00

; FUNCTION 0x0032bd08, declared_size=192, range_size=192, mode=arm
; class-group: GCSingleton<GameCenter>
; alias: _ZN11GCSingletonI10GameCenterE11GetInstanceEv
; demangled: GCSingleton<GameCenter>::GetInstance()
; decoder-mode: arm
0032bd08  70 40 2d e9                                      push {r4, r5, r6, lr}
0032bd0c  98 50 9f e5                                      ldr r5, [pc, #0x98]
0032bd10  98 30 9f e5                                      ldr r3, [pc, #0x98]
0032bd14  08 d0 4d e2                                      sub sp, sp, #8
0032bd18  05 50 8f e0                                      add r5, pc, r5
0032bd1c  03 40 95 e7                                      ldr r4, [r5, r3]
0032bd20  00 60 94 e5                                      ldr r6, [r4]
0032bd24  00 00 56 e3                                      cmp r6, #0
0032bd28  02 00 00 0a                                      beq #0x32bd38
0032bd2c  06 00 a0 e1                                      mov r0, r6
0032bd30  08 d0 8d e2                                      add sp, sp, #8
0032bd34  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032bd38  7c 00 a0 e3                                      mov r0, #0x7c
0032bd3c  c4 91 ff eb                                      bl #0x310454
0032bd40  00 60 a0 e1                                      mov r6, r0
0032bd44  ba ff ff eb                                      bl #0x32bc34
0032bd48  00 00 56 e3                                      cmp r6, #0
0032bd4c  00 60 84 e5                                      str r6, [r4]
0032bd50  f5 ff ff 1a                                      bne #0x32bd2c
0032bd54  58 30 9f e5                                      ldr r3, [pc, #0x58]
0032bd58  03 30 95 e7                                      ldr r3, [r5, r3]
0032bd5c  00 30 93 e5                                      ldr r3, [r3]
0032bd60  02 00 53 e3                                      cmp r3, #2
0032bd64  00 60 86 05                                      streq r6, [r6]
0032bd68  ef ff ff 0a                                      beq #0x32bd2c
0032bd6c  01 00 53 e3                                      cmp r3, #1
0032bd70  ed ff ff 1a                                      bne #0x32bd2c
0032bd74  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
0032bd78  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0032bd7c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0032bd80  00 00 95 e7                                      ldr r0, [r5, r0]
0032bd84  38 30 9f e5                                      ldr r3, [pc, #0x38]
0032bd88  1b c0 a0 e3                                      mov ip, #0x1b
0032bd8c  01 10 8f e0                                      add r1, pc, r1
0032bd90  a8 00 80 e2                                      add r0, r0, #0xa8
0032bd94  02 20 8f e0                                      add r2, pc, r2
0032bd98  03 30 8f e0                                      add r3, pc, r3
0032bd9c  00 c0 8d e5                                      str ip, [sp]
0032bda0  97 88 ff eb                                      bl #0x30e004
0032bda4  00 60 94 e5                                      ldr r6, [r4]
0032bda8  df ff ff ea                                      b #0x32bd2c
; mapping-symbol data/literal pool
0032bdac  78 8d 66 00 24 43 00 00 c0 39 00 00 c0 19 00 00  .byte 0x78, 0x8d, 0x66, 0x00, 0x24, 0x43, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0032bdbc  4c 26 59 00 b4 2e 59 00 a8 32 59 00              .byte 0x4c, 0x26, 0x59, 0x00, 0xb4, 0x2e, 0x59, 0x00, 0xa8, 0x32, 0x59, 0x00
