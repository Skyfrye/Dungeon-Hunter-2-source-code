; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00842464, declared_size=4, range_size=4, mode=arm
; class-group: rss
; alias: _ZNK3rss5writeEPN4slim7XmlNodeE
; demangled: rss::write(slim::XmlNode*) const
; decoder-mode: arm
00842464  1e ff 2f e1                                      bx lr

; FUNCTION 0x00844050, declared_size=304, range_size=304, mode=arm
; class-group: rss
; alias: _ZN3rss4readEPKN4slim7XmlNodeE
; demangled: rss::read(slim::XmlNode const*)
; decoder-mode: arm
00844050  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00844054  0c b1 9f e5                                      ldr fp, [pc, #0x10c]
00844058  0c 21 9f e5                                      ldr r2, [pc, #0x10c]
0084405c  6c d0 4d e2                                      sub sp, sp, #0x6c
00844060  0b b0 8f e0                                      add fp, pc, fp
00844064  02 30 9b e7                                      ldr r3, [fp, r2]
00844068  00 50 51 e2                                      subs r5, r1, #0
0084406c  04 20 8d e5                                      str r2, [sp, #4]
00844070  00 30 93 e5                                      ldr r3, [r3]
00844074  00 40 a0 e1                                      mov r4, r0
00844078  64 30 8d e5                                      str r3, [sp, #0x64]
0084407c  2e 00 00 0a                                      beq #0x84413c
00844080  e8 90 9f e5                                      ldr sb, [pc, #0xe8]
00844084  68 80 8d e2                                      add r8, sp, #0x68
00844088  00 30 a0 e3                                      mov r3, #0
0084408c  5c 30 28 e5                                      str r3, [r8, #-0x5c]!
00844090  09 90 8f e0                                      add sb, pc, sb
00844094  05 00 a0 e1                                      mov r0, r5
00844098  09 10 a0 e1                                      mov r1, sb
0084409c  08 20 a0 e1                                      mov r2, r8
008440a0  a5 01 00 eb                                      bl #0x84473c
008440a4  00 70 50 e2                                      subs r7, r0, #0
008440a8  1b 00 00 0a                                      beq #0x84411c
008440ac  3d af 0c e3                                      movw sl, #0xcf3d
008440b0  f3 ac 43 e3                                      movt sl, #0x3cf3
008440b4  10 60 8d e2                                      add r6, sp, #0x10
008440b8  00 30 94 e5                                      ldr r3, [r4]
008440bc  04 10 94 e5                                      ldr r1, [r4, #4]
008440c0  06 00 a0 e1                                      mov r0, r6
008440c4  01 10 63 e0                                      rsb r1, r3, r1
008440c8  41 11 a0 e1                                      asr r1, r1, #2
008440cc  9a 01 01 e0                                      mul r1, sl, r1
008440d0  01 10 81 e2                                      add r1, r1, #1
008440d4  00 10 8d e5                                      str r1, [sp]
008440d8  e0 fe ff eb                                      bl #0x843c60
008440dc  06 20 a0 e1                                      mov r2, r6
008440e0  00 10 9d e5                                      ldr r1, [sp]
008440e4  04 00 a0 e1                                      mov r0, r4
008440e8  77 fe ff eb                                      bl #0x843acc
008440ec  06 00 a0 e1                                      mov r0, r6
008440f0  61 ee ff eb                                      bl #0x83fa7c
008440f4  04 00 94 e5                                      ldr r0, [r4, #4]
008440f8  07 10 a0 e1                                      mov r1, r7
008440fc  54 00 40 e2                                      sub r0, r0, #0x54
00844100  57 ff ff eb                                      bl #0x843e64
00844104  05 00 a0 e1                                      mov r0, r5
00844108  09 10 a0 e1                                      mov r1, sb
0084410c  08 20 a0 e1                                      mov r2, r8
00844110  52 01 00 eb                                      bl #0x844660
00844114  00 70 50 e2                                      subs r7, r0, #0
00844118  e6 ff ff 1a                                      bne #0x8440b8
0084411c  04 20 9d e5                                      ldr r2, [sp, #4]
00844120  02 30 9b e7                                      ldr r3, [fp, r2]
00844124  64 20 9d e5                                      ldr r2, [sp, #0x64]
00844128  00 30 93 e5                                      ldr r3, [r3]
0084412c  03 00 52 e1                                      cmp r2, r3
00844130  0b 00 00 1a                                      bne #0x844164
00844134  6c d0 8d e2                                      add sp, sp, #0x6c
00844138  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0084413c  30 20 9f e5                                      ldr r2, [pc, #0x30]
00844140  30 00 9f e5                                      ldr r0, [pc, #0x30]
00844144  30 30 9f e5                                      ldr r3, [pc, #0x30]
00844148  02 20 8f e0                                      add r2, pc, r2
0084414c  00 00 8f e0                                      add r0, pc, r0
00844150  58 20 82 e2                                      add r2, r2, #0x58
00844154  03 30 8f e0                                      add r3, pc, r3
00844158  0b 10 a0 e3                                      mov r1, #0xb
0084415c  b7 2a eb eb                                      bl #0x30ec40
00844160  c6 ff ff ea                                      b #0x844080
00844164  69 28 eb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00844168  30 0a 15 00 ac 40 00 00 58 ae 0c 00 40 ac 0c 00  .byte 0x30, 0x0a, 0x15, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0xae, 0x0c, 0x00, 0x40, 0xac, 0x0c, 0x00
00844178  bc ac 0c 00 14 ad 0c 00                          .byte 0xbc, 0xac, 0x0c, 0x00, 0x14, 0xad, 0x0c, 0x00
