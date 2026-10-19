; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0083fa7c, declared_size=48, range_size=48, mode=arm
; class-group: channel
; alias: _ZN7channelD1Ev
; demangled: channel::~channel()
; decoder-mode: arm
0083fa7c  10 40 2d e9                                      push {r4, lr}
0083fa80  00 40 a0 e1                                      mov r4, r0
0083fa84  48 00 80 e2                                      add r0, r0, #0x48
0083fa88  d9 ff ff eb                                      bl #0x83f9f4
0083fa8c  30 00 84 e2                                      add r0, r4, #0x30
0083fa90  ef 61 eb eb                                      bl #0x318254
0083fa94  18 00 84 e2                                      add r0, r4, #0x18
0083fa98  ed 61 eb eb                                      bl #0x318254
0083fa9c  04 00 a0 e1                                      mov r0, r4
0083faa0  eb 61 eb eb                                      bl #0x318254
0083faa4  04 00 a0 e1                                      mov r0, r4
0083faa8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00842468, declared_size=4, range_size=4, mode=arm
; class-group: channel
; alias: _ZNK7channel5writeEPN4slim7XmlNodeE
; demangled: channel::write(slim::XmlNode*) const
; decoder-mode: arm
00842468  1e ff 2f e1                                      bx lr

; FUNCTION 0x008435ec, declared_size=108, range_size=108, mode=arm
; class-group: channel
; alias: _ZN7channelaSERKS_
; demangled: channel::operator=(channel const&)
; decoder-mode: arm
008435ec  01 00 50 e1                                      cmp r0, r1
008435f0  70 40 2d e9                                      push {r4, r5, r6, lr}
008435f4  01 40 a0 e1                                      mov r4, r1
008435f8  00 50 a0 e1                                      mov r5, r0
008435fc  02 00 00 0a                                      beq #0x84360c
00843600  14 10 91 e5                                      ldr r1, [r1, #0x14]
00843604  10 20 94 e5                                      ldr r2, [r4, #0x10]
00843608  f4 34 eb eb                                      bl #0x3109e0
0084360c  18 00 85 e2                                      add r0, r5, #0x18
00843610  18 30 84 e2                                      add r3, r4, #0x18
00843614  03 00 50 e1                                      cmp r0, r3
00843618  02 00 00 0a                                      beq #0x843628
0084361c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00843620  28 20 94 e5                                      ldr r2, [r4, #0x28]
00843624  ed 34 eb eb                                      bl #0x3109e0
00843628  30 00 85 e2                                      add r0, r5, #0x30
0084362c  30 30 84 e2                                      add r3, r4, #0x30
00843630  03 00 50 e1                                      cmp r0, r3
00843634  02 00 00 0a                                      beq #0x843644
00843638  44 10 94 e5                                      ldr r1, [r4, #0x44]
0084363c  40 20 94 e5                                      ldr r2, [r4, #0x40]
00843640  e6 34 eb eb                                      bl #0x3109e0
00843644  48 10 84 e2                                      add r1, r4, #0x48
00843648  48 00 85 e2                                      add r0, r5, #0x48
0084364c  55 ff ff eb                                      bl #0x8433a8
00843650  05 00 a0 e1                                      mov r0, r5
00843654  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008436e4, declared_size=60, range_size=60, mode=arm
; class-group: channel
; alias: _ZN7channelC1ERKS_
; demangled: channel::channel(channel const&)
; decoder-mode: arm
008436e4  70 40 2d e9                                      push {r4, r5, r6, lr}
008436e8  00 40 a0 e1                                      mov r4, r0
008436ec  01 50 a0 e1                                      mov r5, r1
008436f0  88 a0 eb eb                                      bl #0x32b918
008436f4  18 10 85 e2                                      add r1, r5, #0x18
008436f8  18 00 84 e2                                      add r0, r4, #0x18
008436fc  85 a0 eb eb                                      bl #0x32b918
00843700  30 10 85 e2                                      add r1, r5, #0x30
00843704  30 00 84 e2                                      add r0, r4, #0x30
00843708  82 a0 eb eb                                      bl #0x32b918
0084370c  48 10 85 e2                                      add r1, r5, #0x48
00843710  48 00 84 e2                                      add r0, r4, #0x48
00843714  bc fd ff eb                                      bl #0x842e0c
00843718  04 00 a0 e1                                      mov r0, r4
0084371c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00843c60, declared_size=120, range_size=120, mode=arm
; class-group: channel
; alias: _ZN7channelC1Ev
; demangled: channel::channel()
; decoder-mode: arm
00843c60  70 40 2d e9                                      push {r4, r5, r6, lr}
00843c64  00 40 a0 e1                                      mov r4, r0
00843c68  10 00 84 e5                                      str r0, [r4, #0x10]
00843c6c  14 00 84 e5                                      str r0, [r4, #0x14]
00843c70  10 10 a0 e3                                      mov r1, #0x10
00843c74  80 36 eb eb                                      bl #0x31167c
00843c78  10 20 94 e5                                      ldr r2, [r4, #0x10]
00843c7c  00 50 a0 e3                                      mov r5, #0
00843c80  18 30 84 e2                                      add r3, r4, #0x18
00843c84  00 50 c2 e5                                      strb r5, [r2]
00843c88  03 00 a0 e1                                      mov r0, r3
00843c8c  28 30 84 e5                                      str r3, [r4, #0x28]
00843c90  2c 30 84 e5                                      str r3, [r4, #0x2c]
00843c94  10 10 a0 e3                                      mov r1, #0x10
00843c98  77 36 eb eb                                      bl #0x31167c
00843c9c  28 20 94 e5                                      ldr r2, [r4, #0x28]
00843ca0  30 30 84 e2                                      add r3, r4, #0x30
00843ca4  03 00 a0 e1                                      mov r0, r3
00843ca8  00 50 c2 e5                                      strb r5, [r2]
00843cac  10 10 a0 e3                                      mov r1, #0x10
00843cb0  40 30 84 e5                                      str r3, [r4, #0x40]
00843cb4  44 30 84 e5                                      str r3, [r4, #0x44]
00843cb8  6f 36 eb eb                                      bl #0x31167c
00843cbc  40 30 94 e5                                      ldr r3, [r4, #0x40]
00843cc0  04 00 a0 e1                                      mov r0, r4
00843cc4  00 50 c3 e5                                      strb r5, [r3]
00843cc8  50 50 84 e5                                      str r5, [r4, #0x50]
00843ccc  48 50 84 e5                                      str r5, [r4, #0x48]
00843cd0  4c 50 84 e5                                      str r5, [r4, #0x4c]
00843cd4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00843e64, declared_size=492, range_size=492, mode=arm
; class-group: channel
; alias: _ZN7channel4readEPKN4slim7XmlNodeE
; demangled: channel::read(slim::XmlNode const*)
; decoder-mode: arm
00843e64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00843e68  bc b1 9f e5                                      ldr fp, [pc, #0x1bc]
00843e6c  bc 21 9f e5                                      ldr r2, [pc, #0x1bc]
00843e70  4d df 4d e2                                      sub sp, sp, #0x134
00843e74  0b b0 8f e0                                      add fp, pc, fp
00843e78  02 30 9b e7                                      ldr r3, [fp, r2]
00843e7c  00 50 51 e2                                      subs r5, r1, #0
00843e80  04 20 8d e5                                      str r2, [sp, #4]
00843e84  00 30 93 e5                                      ldr r3, [r3]
00843e88  00 40 a0 e1                                      mov r4, r0
00843e8c  2c 31 8d e5                                      str r3, [sp, #0x12c]
00843e90  5a 00 00 0a                                      beq #0x844000
00843e94  98 11 9f e5                                      ldr r1, [pc, #0x198]
00843e98  00 30 a0 e3                                      mov r3, #0
00843e9c  05 00 a0 e1                                      mov r0, r5
00843ea0  01 10 8f e0                                      add r1, pc, r1
00843ea4  08 30 8d e5                                      str r3, [sp, #8]
00843ea8  5e 02 00 eb                                      bl #0x844828
00843eac  00 00 50 e3                                      cmp r0, #0
00843eb0  06 00 00 0a                                      beq #0x843ed0
00843eb4  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00843eb8  06 00 a0 e1                                      mov r0, r6
00843ebc  e4 27 eb eb                                      bl #0x30de54
00843ec0  06 10 a0 e1                                      mov r1, r6
00843ec4  00 20 86 e0                                      add r2, r6, r0
00843ec8  04 00 a0 e1                                      mov r0, r4
00843ecc  c3 32 eb eb                                      bl #0x3109e0
00843ed0  60 11 9f e5                                      ldr r1, [pc, #0x160]
00843ed4  05 00 a0 e1                                      mov r0, r5
00843ed8  01 10 8f e0                                      add r1, pc, r1
00843edc  51 02 00 eb                                      bl #0x844828
00843ee0  00 00 50 e3                                      cmp r0, #0
00843ee4  06 00 00 0a                                      beq #0x843f04
00843ee8  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00843eec  06 00 a0 e1                                      mov r0, r6
00843ef0  d7 27 eb eb                                      bl #0x30de54
00843ef4  06 10 a0 e1                                      mov r1, r6
00843ef8  00 20 86 e0                                      add r2, r6, r0
00843efc  18 00 84 e2                                      add r0, r4, #0x18
00843f00  b6 32 eb eb                                      bl #0x3109e0
00843f04  30 11 9f e5                                      ldr r1, [pc, #0x130]
00843f08  05 00 a0 e1                                      mov r0, r5
00843f0c  01 10 8f e0                                      add r1, pc, r1
00843f10  44 02 00 eb                                      bl #0x844828
00843f14  00 00 50 e3                                      cmp r0, #0
00843f18  06 00 00 0a                                      beq #0x843f38
00843f1c  2c 60 90 e5                                      ldr r6, [r0, #0x2c]
00843f20  06 00 a0 e1                                      mov r0, r6
00843f24  ca 27 eb eb                                      bl #0x30de54
00843f28  06 10 a0 e1                                      mov r1, r6
00843f2c  00 20 86 e0                                      add r2, r6, r0
00843f30  30 00 84 e2                                      add r0, r4, #0x30
00843f34  a9 32 eb eb                                      bl #0x3109e0
00843f38  00 a1 9f e5                                      ldr sl, [pc, #0x100]
00843f3c  08 80 8d e2                                      add r8, sp, #8
00843f40  05 00 a0 e1                                      mov r0, r5
00843f44  0a a0 8f e0                                      add sl, pc, sl
00843f48  0a 10 a0 e1                                      mov r1, sl
00843f4c  08 20 a0 e1                                      mov r2, r8
00843f50  f9 01 00 eb                                      bl #0x84473c
00843f54  00 70 50 e2                                      subs r7, r0, #0
00843f58  20 00 00 0a                                      beq #0x843fe0
00843f5c  48 90 84 e2                                      add sb, r4, #0x48
00843f60  0c 60 8d e2                                      add r6, sp, #0xc
00843f64  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00843f68  48 30 94 e5                                      ldr r3, [r4, #0x48]
00843f6c  06 00 a0 e1                                      mov r0, r6
00843f70  01 30 63 e0                                      rsb r3, r3, r1
00843f74  c3 32 a0 e1                                      asr r3, r3, #5
00843f78  83 21 a0 e1                                      lsl r2, r3, #3
00843f7c  02 20 63 e0                                      rsb r2, r3, r2
00843f80  02 23 82 e0                                      add r2, r2, r2, lsl #6
00843f84  82 21 83 e0                                      add r2, r3, r2, lsl #3
00843f88  82 17 a0 e1                                      lsl r1, r2, #0xf
00843f8c  01 10 62 e0                                      rsb r1, r2, r1
00843f90  81 11 83 e0                                      add r1, r3, r1, lsl #3
00843f94  01 10 81 e2                                      add r1, r1, #1
00843f98  00 10 8d e5                                      str r1, [sp]
00843f9c  4d ff ff eb                                      bl #0x843cd8
00843fa0  06 20 a0 e1                                      mov r2, r6
00843fa4  00 10 9d e5                                      ldr r1, [sp]
00843fa8  09 00 a0 e1                                      mov r0, sb
00843fac  e1 fc ff eb                                      bl #0x843338
00843fb0  06 00 a0 e1                                      mov r0, r6
00843fb4  ca ed ff eb                                      bl #0x83f6e4
00843fb8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
00843fbc  07 10 a0 e1                                      mov r1, r7
00843fc0  12 0e 40 e2                                      sub r0, r0, #0x120
00843fc4  af fa ff eb                                      bl #0x842a88
00843fc8  05 00 a0 e1                                      mov r0, r5
00843fcc  0a 10 a0 e1                                      mov r1, sl
00843fd0  08 20 a0 e1                                      mov r2, r8
00843fd4  a1 01 00 eb                                      bl #0x844660
00843fd8  00 70 50 e2                                      subs r7, r0, #0
00843fdc  e0 ff ff 1a                                      bne #0x843f64
00843fe0  04 20 9d e5                                      ldr r2, [sp, #4]
00843fe4  02 30 9b e7                                      ldr r3, [fp, r2]
00843fe8  2c 21 9d e5                                      ldr r2, [sp, #0x12c]
00843fec  00 30 93 e5                                      ldr r3, [r3]
00843ff0  03 00 52 e1                                      cmp r2, r3
00843ff4  0b 00 00 1a                                      bne #0x844028
00843ff8  4d df 8d e2                                      add sp, sp, #0x134
00843ffc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00844000  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00844004  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
00844008  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0084400c  02 20 8f e0                                      add r2, pc, r2
00844010  00 00 8f e0                                      add r0, pc, r0
00844014  28 20 82 e2                                      add r2, r2, #0x28
00844018  03 30 8f e0                                      add r3, pc, r3
0084401c  21 10 a0 e3                                      mov r1, #0x21
00844020  06 2b eb eb                                      bl #0x30ec40
00844024  9a ff ff ea                                      b #0x843e94
00844028  b8 28 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0084402c  1c 0c 15 00 ac 40 00 00 d8 af 0c 00 80 0e 09 00  .byte 0x1c, 0x0c, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0xd8, 0xaf, 0x0c, 0x00, 0x80, 0x0e, 0x09, 0x00
0084403c  74 af 0c 00 9c af 0c 00 7c ad 0c 00 f8 ad 0c 00  .byte 0x74, 0xaf, 0x0c, 0x00, 0x9c, 0xaf, 0x0c, 0x00, 0x7c, 0xad, 0x0c, 0x00, 0xf8, 0xad, 0x0c, 0x00
0084404c  50 ae 0c 00                                      .byte 0x50, 0xae, 0x0c, 0x00
