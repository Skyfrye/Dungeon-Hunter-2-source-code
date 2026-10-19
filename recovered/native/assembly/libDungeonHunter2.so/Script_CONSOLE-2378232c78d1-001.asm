; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455648, declared_size=8, range_size=8, mode=arm
; class-group: Script_CONSOLE
; alias: _ZNK14Script_CONSOLE10IsBlockingEv
; demangled: Script_CONSOLE::IsBlocking() const
; decoder-mode: arm
00455648  00 00 a0 e3                                      mov r0, #0
0045564c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00460e68, declared_size=384, range_size=384, mode=arm
; class-group: Script_CONSOLE
; alias: _ZN14Script_CONSOLE7ExecuteEbi
; demangled: Script_CONSOLE::Execute(bool, int)
; decoder-mode: arm
00460e68  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00460e6c  50 41 9f e5                                      ldr r4, [pc, #0x150]
00460e70  50 51 9f e5                                      ldr r5, [pc, #0x150]
00460e74  50 21 9f e5                                      ldr r2, [pc, #0x150]
00460e78  04 40 8f e0                                      add r4, pc, r4
00460e7c  05 30 94 e7                                      ldr r3, [r4, r5]
00460e80  02 60 94 e7                                      ldr r6, [r4, r2]
00460e84  cc d0 4d e2                                      sub sp, sp, #0xcc
00460e88  00 30 93 e5                                      ldr r3, [r3]
00460e8c  ac a0 8d e2                                      add sl, sp, #0xac
00460e90  94 70 8d e2                                      add r7, sp, #0x94
00460e94  c4 30 8d e5                                      str r3, [sp, #0xc4]
00460e98  0c 80 90 e5                                      ldr r8, [r0, #0xc]
00460e9c  06 00 a0 e1                                      mov r0, r6
00460ea0  78 5a fb eb                                      bl #0x337888
00460ea4  24 11 9f e5                                      ldr r1, [pc, #0x124]
00460ea8  14 20 8d e2                                      add r2, sp, #0x14
00460eac  0a 00 a0 e1                                      mov r0, sl
00460eb0  01 10 8f e0                                      add r1, pc, r1
00460eb4  8c cc fa eb                                      bl #0x3140ec
00460eb8  0a 10 a0 e1                                      mov r1, sl
00460ebc  06 00 a0 e1                                      mov r0, r6
00460ec0  f0 5a fb eb                                      bl #0x337a88
00460ec4  0a 00 a0 e1                                      mov r0, sl
00460ec8  e1 dc fa eb                                      bl #0x318254
00460ecc  06 00 a0 e1                                      mov r0, r6
00460ed0  6c 5a fb eb                                      bl #0x337888
00460ed4  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
00460ed8  10 20 8d e2                                      add r2, sp, #0x10
00460edc  07 00 a0 e1                                      mov r0, r7
00460ee0  01 10 8f e0                                      add r1, pc, r1
00460ee4  80 cc fa eb                                      bl #0x3140ec
00460ee8  06 00 a0 e1                                      mov r0, r6
00460eec  07 10 a0 e1                                      mov r1, r7
00460ef0  e4 5a fb eb                                      bl #0x337a88
00460ef4  00 60 a0 e1                                      mov r6, r0
00460ef8  07 00 a0 e1                                      mov r0, r7
00460efc  d4 dc fa eb                                      bl #0x318254
00460f00  00 00 56 e3                                      cmp r6, #0
00460f04  26 00 00 0a                                      beq #0x460fa4
00460f08  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00460f0c  00 00 53 e3                                      cmp r3, #0
00460f10  23 00 00 0a                                      beq #0x460fa4
00460f14  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00460f18  7c 60 8d e2                                      add r6, sp, #0x7c
00460f1c  64 70 8d e2                                      add r7, sp, #0x64
00460f20  03 10 9f e7                                      ldr r1, [pc, r3]
00460f24  0c 20 8d e2                                      add r2, sp, #0xc
00460f28  06 00 a0 e1                                      mov r0, r6
00460f2c  6e cc fa eb                                      bl #0x3140ec
00460f30  0c 10 98 e5                                      ldr r1, [r8, #0xc]
00460f34  08 20 8d e2                                      add r2, sp, #8
00460f38  07 00 a0 e1                                      mov r0, r7
00460f3c  6a cc fa eb                                      bl #0x3140ec
00460f40  94 30 9f e5                                      ldr r3, [pc, #0x94]
00460f44  94 10 9f e5                                      ldr r1, [pc, #0x94]
00460f48  94 20 9f e5                                      ldr r2, [pc, #0x94]
00460f4c  03 30 94 e7                                      ldr r3, [r4, r3]
00460f50  01 10 8f e0                                      add r1, pc, r1
00460f54  02 20 8f e0                                      add r2, pc, r2
00460f58  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
00460f5c  1e 8f 01 eb                                      bl #0x4c4bdc
00460f60  18 80 8d e2                                      add r8, sp, #0x18
00460f64  00 30 a0 e1                                      mov r3, r0
00460f68  00 c0 e0 e3                                      mvn ip, #0
00460f6c  06 10 a0 e1                                      mov r1, r6
00460f70  07 20 a0 e1                                      mov r2, r7
00460f74  08 00 a0 e1                                      mov r0, r8
00460f78  00 c0 8d e5                                      str ip, [sp]
00460f7c  c9 4b ff eb                                      bl #0x433ea8
00460f80  07 00 a0 e1                                      mov r0, r7
00460f84  b2 dc fa eb                                      bl #0x318254
00460f88  06 00 a0 e1                                      mov r0, r6
00460f8c  b0 dc fa eb                                      bl #0x318254
00460f90  08 00 a0 e1                                      mov r0, r8
00460f94  01 10 a0 e3                                      mov r1, #1
00460f98  93 ff ff eb                                      bl #0x460dec
00460f9c  08 00 a0 e1                                      mov r0, r8
00460fa0  c2 fb fa eb                                      bl #0x31feb0
00460fa4  05 30 94 e7                                      ldr r3, [r4, r5]
00460fa8  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
00460fac  00 30 93 e5                                      ldr r3, [r3]
00460fb0  03 00 52 e1                                      cmp r2, r3
00460fb4  01 00 00 1a                                      bne #0x460fc0
00460fb8  cc d0 8d e2                                      add sp, sp, #0xcc
00460fbc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00460fc0  d2 b4 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00460fc4  18 3c 53 00 ac 40 00 00 84 08 00 00 d0 c1 46 00  .byte 0x18, 0x3c, 0x53, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xd0, 0xc1, 0x46, 0x00
00460fd4  08 c2 46 00 ac 5b 4f 00 f4 37 00 00 d8 bc 46 00  .byte 0x08, 0xc2, 0x46, 0x00, 0xac, 0x5b, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd8, 0xbc, 0x46, 0x00
00460fe4  b4 c1 46 00                                      .byte 0xb4, 0xc1, 0x46, 0x00
