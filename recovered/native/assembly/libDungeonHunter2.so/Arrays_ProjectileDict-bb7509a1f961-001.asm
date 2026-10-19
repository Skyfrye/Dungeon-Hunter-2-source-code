; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004a3c88, declared_size=156, range_size=156, mode=arm
; class-group: Arrays::ProjectileDict
; alias: _ZN6Arrays14ProjectileDict13finalizeNamesEv
; demangled: Arrays::ProjectileDict::finalizeNames()
; decoder-mode: arm
004a3c88  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3c8c  84 50 9f e5                                      ldr r5, [pc, #0x84]
004a3c90  84 60 9f e5                                      ldr r6, [pc, #0x84]
004a3c94  05 50 8f e0                                      add r5, pc, r5
004a3c98  06 30 95 e7                                      ldr r3, [r5, r6]
004a3c9c  00 30 93 e5                                      ldr r3, [r3]
004a3ca0  00 00 53 e3                                      cmp r3, #0
004a3ca4  1a 00 00 0a                                      beq #0x4a3d14
004a3ca8  70 70 9f e5                                      ldr r7, [pc, #0x70]
004a3cac  07 20 95 e7                                      ldr r2, [r5, r7]
004a3cb0  00 20 92 e5                                      ldr r2, [r2]
004a3cb4  00 00 52 e3                                      cmp r2, #0
004a3cb8  10 00 00 0a                                      beq #0x4a3d00
004a3cbc  00 40 a0 e3                                      mov r4, #0
004a3cc0  01 00 00 ea                                      b #0x4a3ccc
004a3cc4  06 30 95 e7                                      ldr r3, [r5, r6]
004a3cc8  00 30 93 e5                                      ldr r3, [r3]
004a3ccc  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
004a3cd0  01 40 84 e2                                      add r4, r4, #1
004a3cd4  00 00 50 e3                                      cmp r0, #0
004a3cd8  02 00 00 0a                                      beq #0x4a3ce8
004a3cdc  d7 b1 f9 eb                                      bl #0x310440
004a3ce0  06 30 95 e7                                      ldr r3, [r5, r6]
004a3ce4  00 30 93 e5                                      ldr r3, [r3]
004a3ce8  07 20 95 e7                                      ldr r2, [r5, r7]
004a3cec  00 20 92 e5                                      ldr r2, [r2]
004a3cf0  04 00 52 e1                                      cmp r2, r4
004a3cf4  f2 ff ff 8a                                      bhi #0x4a3cc4
004a3cf8  00 00 53 e3                                      cmp r3, #0
004a3cfc  01 00 00 0a                                      beq #0x4a3d08
004a3d00  03 00 a0 e1                                      mov r0, r3
004a3d04  cd b1 f9 eb                                      bl #0x310440
004a3d08  06 30 95 e7                                      ldr r3, [r5, r6]
004a3d0c  00 20 a0 e3                                      mov r2, #0
004a3d10  00 20 83 e5                                      str r2, [r3]
004a3d14  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3d18  fc 0d 4f 00 40 35 00 00 54 13 00 00              .byte 0xfc, 0x0d, 0x4f, 0x00, 0x40, 0x35, 0x00, 0x00, 0x54, 0x13, 0x00, 0x00

; FUNCTION 0x004a3d24, declared_size=228, range_size=228, mode=arm
; class-group: Arrays::ProjectileDict
; alias: _ZN6Arrays14ProjectileDict8finalizeEv
; demangled: Arrays::ProjectileDict::finalize()
; decoder-mode: arm
004a3d24  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004a3d28  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
004a3d2c  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
004a3d30  05 50 8f e0                                      add r5, pc, r5
004a3d34  07 30 95 e7                                      ldr r3, [r5, r7]
004a3d38  00 30 93 e5                                      ldr r3, [r3]
004a3d3c  00 00 53 e3                                      cmp r3, #0
004a3d40  2c 00 00 0a                                      beq #0x4a3df8
004a3d44  b8 80 9f e5                                      ldr r8, [pc, #0xb8]
004a3d48  08 20 95 e7                                      ldr r2, [r5, r8]
004a3d4c  00 20 92 e5                                      ldr r2, [r2]
004a3d50  00 00 52 e3                                      cmp r2, #0
004a3d54  12 00 00 0a                                      beq #0x4a3da4
004a3d58  00 40 a0 e3                                      mov r4, #0
004a3d5c  04 60 a0 e1                                      mov r6, r4
004a3d60  01 00 00 ea                                      b #0x4a3d6c
004a3d64  07 30 95 e7                                      ldr r3, [r5, r7]
004a3d68  00 30 93 e5                                      ldr r3, [r3]
004a3d6c  04 00 83 e0                                      add r0, r3, r4
004a3d70  04 30 93 e7                                      ldr r3, [r3, r4]
004a3d74  0f e0 a0 e1                                      mov lr, pc
004a3d78  08 f0 93 e5                                      ldr pc, [r3, #8]
004a3d7c  08 30 95 e7                                      ldr r3, [r5, r8]
004a3d80  01 60 86 e2                                      add r6, r6, #1
004a3d84  0c 40 84 e2                                      add r4, r4, #0xc
004a3d88  00 30 93 e5                                      ldr r3, [r3]
004a3d8c  06 00 53 e1                                      cmp r3, r6
004a3d90  f3 ff ff 8a                                      bhi #0x4a3d64
004a3d94  07 30 95 e7                                      ldr r3, [r5, r7]
004a3d98  00 30 93 e5                                      ldr r3, [r3]
004a3d9c  00 00 53 e3                                      cmp r3, #0
004a3da0  11 00 00 0a                                      beq #0x4a3dec
004a3da4  04 20 13 e5                                      ldr r2, [r3, #-4]
004a3da8  0c 00 a0 e3                                      mov r0, #0xc
004a3dac  90 32 20 e0                                      mla r0, r0, r2, r3
004a3db0  00 00 53 e1                                      cmp r3, r0
004a3db4  01 00 00 1a                                      bne #0x4a3dc0
004a3db8  09 00 00 ea                                      b #0x4a3de4
004a3dbc  04 00 a0 e1                                      mov r0, r4
004a3dc0  0c 40 40 e2                                      sub r4, r0, #0xc
004a3dc4  0c 30 10 e5                                      ldr r3, [r0, #-0xc]
004a3dc8  04 00 a0 e1                                      mov r0, r4
004a3dcc  0f e0 a0 e1                                      mov lr, pc
004a3dd0  00 f0 93 e5                                      ldr pc, [r3]
004a3dd4  07 30 95 e7                                      ldr r3, [r5, r7]
004a3dd8  00 00 93 e5                                      ldr r0, [r3]
004a3ddc  04 00 50 e1                                      cmp r0, r4
004a3de0  f5 ff ff 1a                                      bne #0x4a3dbc
004a3de4  08 00 40 e2                                      sub r0, r0, #8
004a3de8  94 b1 f9 eb                                      bl #0x310440
004a3dec  07 30 95 e7                                      ldr r3, [r5, r7]
004a3df0  00 20 a0 e3                                      mov r2, #0
004a3df4  00 20 83 e5                                      str r2, [r3]
004a3df8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
004a3dfc  60 0d 4f 00 e0 19 00 00 54 13 00 00              .byte 0x60, 0x0d, 0x4f, 0x00, 0xe0, 0x19, 0x00, 0x00, 0x54, 0x13, 0x00, 0x00

; FUNCTION 0x004b22cc, declared_size=408, range_size=408, mode=arm
; class-group: Arrays::ProjectileDict
; alias: _ZN6Arrays14ProjectileDict9readNamesEP11IStreamBase
; demangled: Arrays::ProjectileDict::readNames(IStreamBase*)
; decoder-mode: arm
004b22cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004b22d0  00 70 a0 e1                                      mov r7, r0
004b22d4  1c d0 4d e2                                      sub sp, sp, #0x1c
004b22d8  6a c6 ff eb                                      bl #0x4a3c88
004b22dc  07 00 a0 e1                                      mov r0, r7
004b22e0  ea 85 f9 eb                                      bl #0x313a90
004b22e4  6c 61 9f e5                                      ldr r6, [pc, #0x16c]
004b22e8  01 30 a0 e3                                      mov r3, #1
004b22ec  00 00 53 e3                                      cmp r3, #0
004b22f0  06 60 8f e0                                      add r6, pc, r6
004b22f4  14 00 8d e5                                      str r0, [sp, #0x14]
004b22f8  0c 30 8d e5                                      str r3, [sp, #0xc]
004b22fc  12 00 00 1a                                      bne #0x4b234c
004b2300  14 30 8d e2                                      add r3, sp, #0x14
004b2304  02 20 83 e2                                      add r2, r3, #2
004b2308  01 30 83 e2                                      add r3, r3, #1
004b230c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2310  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b2314  03 00 52 e1                                      cmp r2, r3
004b2318  02 40 a0 e1                                      mov r4, r2
004b231c  01 10 20 e0                                      eor r1, r0, r1
004b2320  01 10 43 e5                                      strb r1, [r3, #-1]
004b2324  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b2328  00 10 21 e0                                      eor r1, r1, r0
004b232c  01 10 c2 e5                                      strb r1, [r2, #1]
004b2330  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b2334  01 20 42 e2                                      sub r2, r2, #1
004b2338  00 10 21 e0                                      eor r1, r1, r0
004b233c  01 10 43 e5                                      strb r1, [r3, #-1]
004b2340  01 30 83 e2                                      add r3, r3, #1
004b2344  f0 ff ff 8a                                      bhi #0x4b230c
004b2348  14 00 9d e5                                      ldr r0, [sp, #0x14]
004b234c  08 31 9f e5                                      ldr r3, [pc, #0x108]
004b2350  03 30 96 e7                                      ldr r3, [r6, r3]
004b2354  00 30 93 e5                                      ldr r3, [r3]
004b2358  00 00 53 e1                                      cmp r3, r0
004b235c  01 00 00 0a                                      beq #0x4b2368
004b2360  1c d0 8d e2                                      add sp, sp, #0x1c
004b2364  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
004b2368  00 01 a0 e1                                      lsl r0, r0, #2
004b236c  01 10 a0 e3                                      mov r1, #1
004b2370  7d 78 f9 eb                                      bl #0x31056c
004b2374  e4 90 9f e5                                      ldr sb, [pc, #0xe4]
004b2378  14 20 9d e5                                      ldr r2, [sp, #0x14]
004b237c  09 30 96 e7                                      ldr r3, [r6, sb]
004b2380  00 00 52 e3                                      cmp r2, #0
004b2384  00 00 83 e5                                      str r0, [r3]
004b2388  f4 ff ff 0a                                      beq #0x4b2360
004b238c  10 a0 8d e2                                      add sl, sp, #0x10
004b2390  01 80 a0 e3                                      mov r8, #1
004b2394  08 10 8a e0                                      add r1, sl, r8
004b2398  02 30 8a e2                                      add r3, sl, #2
004b239c  00 40 a0 e3                                      mov r4, #0
004b23a0  0a 00 8d e8                                      stm sp, {r1, r3}
004b23a4  07 00 a0 e1                                      mov r0, r7
004b23a8  0a 10 a0 e1                                      mov r1, sl
004b23ac  7b b3 fc eb                                      bl #0x3df1a0
004b23b0  00 00 58 e3                                      cmp r8, #0
004b23b4  0c 80 8d e5                                      str r8, [sp, #0xc]
004b23b8  0f 00 00 1a                                      bne #0x4b23fc
004b23bc  00 30 9d e5                                      ldr r3, [sp]
004b23c0  04 20 9d e5                                      ldr r2, [sp, #4]
004b23c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b23c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b23cc  03 00 52 e1                                      cmp r2, r3
004b23d0  01 10 20 e0                                      eor r1, r0, r1
004b23d4  01 10 43 e5                                      strb r1, [r3, #-1]
004b23d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b23dc  00 10 21 e0                                      eor r1, r1, r0
004b23e0  01 10 c2 e5                                      strb r1, [r2, #1]
004b23e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b23e8  01 20 42 e2                                      sub r2, r2, #1
004b23ec  00 10 21 e0                                      eor r1, r1, r0
004b23f0  01 10 43 e5                                      strb r1, [r3, #-1]
004b23f4  01 30 83 e2                                      add r3, r3, #1
004b23f8  f1 ff ff 8a                                      bhi #0x4b23c4
004b23fc  10 00 9d e5                                      ldr r0, [sp, #0x10]
004b2400  09 50 96 e7                                      ldr r5, [r6, sb]
004b2404  01 10 a0 e3                                      mov r1, #1
004b2408  01 00 80 e0                                      add r0, r0, r1
004b240c  00 b0 95 e5                                      ldr fp, [r5]
004b2410  55 78 f9 eb                                      bl #0x31056c
004b2414  04 01 8b e7                                      str r0, [fp, r4, lsl #2]
004b2418  00 30 95 e5                                      ldr r3, [r5]
004b241c  10 20 9d e5                                      ldr r2, [sp, #0x10]
004b2420  07 00 a0 e1                                      mov r0, r7
004b2424  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
004b2428  00 30 a0 e3                                      mov r3, #0
004b242c  08 94 f9 eb                                      bl #0x317454
004b2430  00 30 95 e5                                      ldr r3, [r5]
004b2434  00 10 a0 e3                                      mov r1, #0
004b2438  04 21 93 e7                                      ldr r2, [r3, r4, lsl #2]
004b243c  10 30 9d e5                                      ldr r3, [sp, #0x10]
004b2440  01 40 84 e2                                      add r4, r4, #1
004b2444  03 10 c2 e7                                      strb r1, [r2, r3]
004b2448  14 30 9d e5                                      ldr r3, [sp, #0x14]
004b244c  04 00 53 e1                                      cmp r3, r4
004b2450  d3 ff ff 8a                                      bhi #0x4b23a4
004b2454  c1 ff ff ea                                      b #0x4b2360
; mapping-symbol data/literal pool
004b2458  a0 27 4e 00 54 13 00 00 40 35 00 00              .byte 0xa0, 0x27, 0x4e, 0x00, 0x54, 0x13, 0x00, 0x00, 0x40, 0x35, 0x00, 0x00

; FUNCTION 0x004b2464, declared_size=4, range_size=4, mode=arm
; class-group: Arrays::ProjectileDict
; alias: _ZN6Arrays14ProjectileDict9skipNamesEP11IStreamBase
; demangled: Arrays::ProjectileDict::skipNames(IStreamBase*)
; decoder-mode: arm
004b2464  98 ff ff ea                                      b #0x4b22cc

; FUNCTION 0x004b830c, declared_size=332, range_size=332, mode=arm
; class-group: Arrays::ProjectileDict
; alias: _ZN6Arrays14ProjectileDict4readEP11IStreamBase
; demangled: Arrays::ProjectileDict::read(IStreamBase*)
; decoder-mode: arm
004b830c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
004b8310  0c d0 4d e2                                      sub sp, sp, #0xc
004b8314  00 a0 a0 e1                                      mov sl, r0
004b8318  dc 6d f9 eb                                      bl #0x313a90
004b831c  24 61 9f e5                                      ldr r6, [pc, #0x124]
004b8320  01 30 a0 e3                                      mov r3, #1
004b8324  00 00 53 e3                                      cmp r3, #0
004b8328  04 00 8d e5                                      str r0, [sp, #4]
004b832c  00 30 8d e5                                      str r3, [sp]
004b8330  06 60 8f e0                                      add r6, pc, r6
004b8334  10 00 00 1a                                      bne #0x4b837c
004b8338  04 30 8d e2                                      add r3, sp, #4
004b833c  02 20 83 e2                                      add r2, r3, #2
004b8340  01 30 83 e2                                      add r3, r3, #1
004b8344  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b8348  01 10 53 e5                                      ldrb r1, [r3, #-1]
004b834c  03 00 52 e1                                      cmp r2, r3
004b8350  01 10 20 e0                                      eor r1, r0, r1
004b8354  01 10 43 e5                                      strb r1, [r3, #-1]
004b8358  01 00 d2 e5                                      ldrb r0, [r2, #1]
004b835c  00 10 21 e0                                      eor r1, r1, r0
004b8360  01 10 c2 e5                                      strb r1, [r2, #1]
004b8364  01 00 53 e5                                      ldrb r0, [r3, #-1]
004b8368  01 20 42 e2                                      sub r2, r2, #1
004b836c  00 10 21 e0                                      eor r1, r1, r0
004b8370  01 10 43 e5                                      strb r1, [r3, #-1]
004b8374  01 30 83 e2                                      add r3, r3, #1
004b8378  f1 ff ff 8a                                      bhi #0x4b8344
004b837c  68 ae ff eb                                      bl #0x4a3d24
004b8380  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
004b8384  04 40 9d e5                                      ldr r4, [sp, #4]
004b8388  0c 50 a0 e3                                      mov r5, #0xc
004b838c  07 30 96 e7                                      ldr r3, [r6, r7]
004b8390  95 04 00 e0                                      mul r0, r5, r4
004b8394  00 40 83 e5                                      str r4, [r3]
004b8398  08 00 80 e2                                      add r0, r0, #8
004b839c  01 10 a0 e3                                      mov r1, #1
004b83a0  71 60 f9 eb                                      bl #0x31056c
004b83a4  00 00 54 e3                                      cmp r4, #0
004b83a8  00 50 80 e5                                      str r5, [r0]
004b83ac  04 40 80 e5                                      str r4, [r0, #4]
004b83b0  08 30 80 e2                                      add r3, r0, #8
004b83b4  0a 00 00 0a                                      beq #0x4b83e4
004b83b8  90 10 9f e5                                      ldr r1, [pc, #0x90]
004b83bc  00 20 a0 e3                                      mov r2, #0
004b83c0  02 c0 a0 e1                                      mov ip, r2
004b83c4  01 10 96 e7                                      ldr r1, [r6, r1]
004b83c8  08 10 81 e2                                      add r1, r1, #8
004b83cc  01 20 82 e2                                      add r2, r2, #1
004b83d0  04 00 52 e1                                      cmp r2, r4
004b83d4  08 10 80 e5                                      str r1, [r0, #8]
004b83d8  10 c0 80 e5                                      str ip, [r0, #0x10]
004b83dc  0c 00 80 e2                                      add r0, r0, #0xc
004b83e0  f9 ff ff 1a                                      bne #0x4b83cc
004b83e4  07 20 96 e7                                      ldr r2, [r6, r7]
004b83e8  64 80 9f e5                                      ldr r8, [pc, #0x64]
004b83ec  00 10 92 e5                                      ldr r1, [r2]
004b83f0  08 20 96 e7                                      ldr r2, [r6, r8]
004b83f4  00 00 51 e3                                      cmp r1, #0
004b83f8  00 30 82 e5                                      str r3, [r2]
004b83fc  0f 00 00 0a                                      beq #0x4b8440
004b8400  00 40 a0 e3                                      mov r4, #0
004b8404  04 50 a0 e1                                      mov r5, r4
004b8408  01 00 00 ea                                      b #0x4b8414
004b840c  08 30 96 e7                                      ldr r3, [r6, r8]
004b8410  00 30 93 e5                                      ldr r3, [r3]
004b8414  04 00 83 e0                                      add r0, r3, r4
004b8418  0a 10 a0 e1                                      mov r1, sl
004b841c  04 30 93 e7                                      ldr r3, [r3, r4]
004b8420  0f e0 a0 e1                                      mov lr, pc
004b8424  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004b8428  07 30 96 e7                                      ldr r3, [r6, r7]
004b842c  01 50 85 e2                                      add r5, r5, #1
004b8430  0c 40 84 e2                                      add r4, r4, #0xc
004b8434  00 30 93 e5                                      ldr r3, [r3]
004b8438  05 00 53 e1                                      cmp r3, r5
004b843c  f2 ff ff 8a                                      bhi #0x4b840c
004b8440  0c d0 8d e2                                      add sp, sp, #0xc
004b8444  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
004b8448  60 c7 4d 00 54 13 00 00 bc 0a 00 00 e0 19 00 00  .byte 0x60, 0xc7, 0x4d, 0x00, 0x54, 0x13, 0x00, 0x00, 0xbc, 0x0a, 0x00, 0x00, 0xe0, 0x19, 0x00, 0x00
