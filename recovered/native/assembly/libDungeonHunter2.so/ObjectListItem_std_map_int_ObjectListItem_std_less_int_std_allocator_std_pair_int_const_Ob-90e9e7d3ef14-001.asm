; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033fc88, declared_size=312, range_size=312, mode=arm
; class-group: ObjectListItem& std::map<int, ObjectListItem, std::less<int>, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt3mapIi14ObjectListItemSt4lessIiESaISt4pairIKiS0_EEEixIjEERS0_RKT_
; demangled: ObjectListItem& std::map<int, ObjectListItem, std::less<int>, std::allocator<std::pair<int const, ObjectListItem> > >::operator[]<unsigned int>(unsigned int const&)
; decoder-mode: arm
0033fc88  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0033fc8c  24 51 9f e5                                      ldr r5, [pc, #0x124]
0033fc90  24 91 9f e5                                      ldr sb, [pc, #0x124]
0033fc94  04 40 90 e5                                      ldr r4, [r0, #4]
0033fc98  05 50 8f e0                                      add r5, pc, r5
0033fc9c  09 30 95 e7                                      ldr r3, [r5, sb]
0033fca0  48 d0 4d e2                                      sub sp, sp, #0x48
0033fca4  00 00 54 e3                                      cmp r4, #0
0033fca8  00 30 93 e5                                      ldr r3, [r3]
0033fcac  00 80 a0 e1                                      mov r8, r0
0033fcb0  44 30 8d e5                                      str r3, [sp, #0x44]
0033fcb4  3b 00 00 0a                                      beq #0x33fda8
0033fcb8  00 70 91 e5                                      ldr r7, [r1]
0033fcbc  00 20 a0 e1                                      mov r2, r0
0033fcc0  01 00 00 ea                                      b #0x33fccc
0033fcc4  04 20 a0 e1                                      mov r2, r4
0033fcc8  03 40 a0 e1                                      mov r4, r3
0033fccc  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033fcd0  07 00 53 e1                                      cmp r3, r7
0033fcd4  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
0033fcd8  08 30 94 a5                                      ldrge r3, [r4, #8]
0033fcdc  02 40 a0 b1                                      movlt r4, r2
0033fce0  00 00 53 e3                                      cmp r3, #0
0033fce4  f6 ff ff 1a                                      bne #0x33fcc4
0033fce8  04 00 58 e1                                      cmp r8, r4
0033fcec  0b 00 00 0a                                      beq #0x33fd20
0033fcf0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0033fcf4  04 00 a0 e1                                      mov r0, r4
0033fcf8  07 00 53 e1                                      cmp r3, r7
0033fcfc  07 00 00 ca                                      bgt #0x33fd20
0033fd00  09 30 95 e7                                      ldr r3, [r5, sb]
0033fd04  44 20 9d e5                                      ldr r2, [sp, #0x44]
0033fd08  14 00 80 e2                                      add r0, r0, #0x14
0033fd0c  00 30 93 e5                                      ldr r3, [r3]
0033fd10  03 00 52 e1                                      cmp r2, r3
0033fd14  26 00 00 1a                                      bne #0x33fdb4
0033fd18  48 d0 8d e2                                      add sp, sp, #0x48
0033fd1c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0033fd20  28 60 8d e2                                      add r6, sp, #0x28
0033fd24  06 00 a0 e1                                      mov r0, r6
0033fd28  10 10 a0 e3                                      mov r1, #0x10
0033fd2c  38 60 8d e5                                      str r6, [sp, #0x38]
0033fd30  3c 60 8d e5                                      str r6, [sp, #0x3c]
0033fd34  50 46 ff eb                                      bl #0x31167c
0033fd38  38 20 9d e5                                      ldr r2, [sp, #0x38]
0033fd3c  00 30 a0 e3                                      mov r3, #0
0033fd40  48 a0 8d e2                                      add sl, sp, #0x48
0033fd44  00 30 c2 e5                                      strb r3, [r2]
0033fd48  40 70 2a e5                                      str r7, [sl, #-0x40]!
0033fd4c  04 70 8a e2                                      add r7, sl, #4
0033fd50  07 00 a0 e1                                      mov r0, r7
0033fd54  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0033fd58  38 20 9d e5                                      ldr r2, [sp, #0x38]
0033fd5c  40 30 8d e5                                      str r3, [sp, #0x40]
0033fd60  1c 70 8d e5                                      str r7, [sp, #0x1c]
0033fd64  20 70 8d e5                                      str r7, [sp, #0x20]
0033fd68  5e 46 ff eb                                      bl #0x3116e8
0033fd6c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
0033fd70  08 10 a0 e1                                      mov r1, r8
0033fd74  0a 30 a0 e1                                      mov r3, sl
0033fd78  0d 20 a0 e1                                      mov r2, sp
0033fd7c  04 00 8d e2                                      add r0, sp, #4
0033fd80  24 c0 8d e5                                      str ip, [sp, #0x24]
0033fd84  00 40 8d e5                                      str r4, [sp]
0033fd88  e1 fe ff eb                                      bl #0x33f914
0033fd8c  04 40 9d e5                                      ldr r4, [sp, #4]
0033fd90  07 00 a0 e1                                      mov r0, r7
0033fd94  04 4f ff eb                                      bl #0x3139ac
0033fd98  06 00 a0 e1                                      mov r0, r6
0033fd9c  02 4f ff eb                                      bl #0x3139ac
0033fda0  04 00 a0 e1                                      mov r0, r4
0033fda4  d5 ff ff ea                                      b #0x33fd00
0033fda8  00 70 91 e5                                      ldr r7, [r1]
0033fdac  00 40 a0 e1                                      mov r4, r0
0033fdb0  cc ff ff ea                                      b #0x33fce8
0033fdb4  55 39 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033fdb8  f8 4d 65 00 ac 40 00 00                          .byte 0xf8, 0x4d, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0034952c, declared_size=396, range_size=396, mode=arm
; class-group: ObjectListItem& std::map<int, ObjectListItem, std::less<int>, std::allocator<std::pair<int const, ObjectListItem> > >
; alias: _ZNSt3mapIi14ObjectListItemSt4lessIiESaISt4pairIKiS0_EEEixIiEERS0_RKT_
; demangled: ObjectListItem& std::map<int, ObjectListItem, std::less<int>, std::allocator<std::pair<int const, ObjectListItem> > >::operator[]<int>(int const&)
; decoder-mode: arm
0034952c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00349530  78 51 9f e5                                      ldr r5, [pc, #0x178]
00349534  78 91 9f e5                                      ldr sb, [pc, #0x178]
00349538  04 40 90 e5                                      ldr r4, [r0, #4]
0034953c  05 50 8f e0                                      add r5, pc, r5
00349540  09 30 95 e7                                      ldr r3, [r5, sb]
00349544  48 d0 4d e2                                      sub sp, sp, #0x48
00349548  00 00 54 e3                                      cmp r4, #0
0034954c  00 30 93 e5                                      ldr r3, [r3]
00349550  00 80 a0 e1                                      mov r8, r0
00349554  01 70 a0 e1                                      mov r7, r1
00349558  44 30 8d e5                                      str r3, [sp, #0x44]
0034955c  00 40 a0 01                                      moveq r4, r0
00349560  0b 00 00 0a                                      beq #0x349594
00349564  00 10 91 e5                                      ldr r1, [r1]
00349568  00 20 a0 e1                                      mov r2, r0
0034956c  01 00 00 ea                                      b #0x349578
00349570  04 20 a0 e1                                      mov r2, r4
00349574  03 40 a0 e1                                      mov r4, r3
00349578  10 30 94 e5                                      ldr r3, [r4, #0x10]
0034957c  01 00 53 e1                                      cmp r3, r1
00349580  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
00349584  08 30 94 a5                                      ldrge r3, [r4, #8]
00349588  02 40 a0 b1                                      movlt r4, r2
0034958c  00 00 53 e3                                      cmp r3, #0
00349590  f6 ff ff 1a                                      bne #0x349570
00349594  04 00 58 e1                                      cmp r8, r4
00349598  04 00 00 0a                                      beq #0x3495b0
0034959c  00 20 97 e5                                      ldr r2, [r7]
003495a0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003495a4  04 00 a0 e1                                      mov r0, r4
003495a8  03 00 52 e1                                      cmp r2, r3
003495ac  31 00 00 aa                                      bge #0x349678
003495b0  28 60 8d e2                                      add r6, sp, #0x28
003495b4  06 00 a0 e1                                      mov r0, r6
003495b8  10 10 a0 e3                                      mov r1, #0x10
003495bc  38 60 8d e5                                      str r6, [sp, #0x38]
003495c0  3c 60 8d e5                                      str r6, [sp, #0x3c]
003495c4  2c 20 ff eb                                      bl #0x31167c
003495c8  38 20 9d e5                                      ldr r2, [sp, #0x38]
003495cc  00 30 a0 e3                                      mov r3, #0
003495d0  48 a0 8d e2                                      add sl, sp, #0x48
003495d4  00 30 c2 e5                                      strb r3, [r2]
003495d8  00 00 97 e5                                      ldr r0, [r7]
003495dc  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
003495e0  38 20 9d e5                                      ldr r2, [sp, #0x38]
003495e4  40 00 2a e5                                      str r0, [sl, #-0x40]!
003495e8  04 70 8a e2                                      add r7, sl, #4
003495ec  07 00 a0 e1                                      mov r0, r7
003495f0  40 30 8d e5                                      str r3, [sp, #0x40]
003495f4  1c 70 8d e5                                      str r7, [sp, #0x1c]
003495f8  20 70 8d e5                                      str r7, [sp, #0x20]
003495fc  39 20 ff eb                                      bl #0x3116e8
00349600  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00349604  04 00 8d e2                                      add r0, sp, #4
00349608  08 10 a0 e1                                      mov r1, r8
0034960c  0a 30 a0 e1                                      mov r3, sl
00349610  0d 20 a0 e1                                      mov r2, sp
00349614  00 40 8d e5                                      str r4, [sp]
00349618  24 c0 8d e5                                      str ip, [sp, #0x24]
0034961c  bc d8 ff eb                                      bl #0x33f914
00349620  20 00 9d e5                                      ldr r0, [sp, #0x20]
00349624  04 40 9d e5                                      ldr r4, [sp, #4]
00349628  07 00 50 e1                                      cmp r0, r7
0034962c  06 00 00 0a                                      beq #0x34964c
00349630  00 00 50 e3                                      cmp r0, #0
00349634  04 00 00 0a                                      beq #0x34964c
00349638  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0034963c  01 10 60 e0                                      rsb r1, r0, r1
00349640  80 00 51 e3                                      cmp r1, #0x80
00349644  16 00 00 8a                                      bhi #0x3496a4
00349648  2c fe 0e eb                                      bl #0x708f00
0034964c  3c 00 9d e5                                      ldr r0, [sp, #0x3c]
00349650  06 00 50 e1                                      cmp r0, r6
00349654  06 00 00 0a                                      beq #0x349674
00349658  00 00 50 e3                                      cmp r0, #0
0034965c  04 00 00 0a                                      beq #0x349674
00349660  28 10 9d e5                                      ldr r1, [sp, #0x28]
00349664  01 10 60 e0                                      rsb r1, r0, r1
00349668  80 00 51 e3                                      cmp r1, #0x80
0034966c  09 00 00 8a                                      bhi #0x349698
00349670  22 fe 0e eb                                      bl #0x708f00
00349674  04 00 a0 e1                                      mov r0, r4
00349678  09 30 95 e7                                      ldr r3, [r5, sb]
0034967c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00349680  14 00 80 e2                                      add r0, r0, #0x14
00349684  00 30 93 e5                                      ldr r3, [r3]
00349688  03 00 52 e1                                      cmp r2, r3
0034968c  06 00 00 1a                                      bne #0x3496ac
00349690  48 d0 8d e2                                      add sp, sp, #0x48
00349694  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00349698  68 1b ff eb                                      bl #0x310440
0034969c  04 00 a0 e1                                      mov r0, r4
003496a0  f4 ff ff ea                                      b #0x349678
003496a4  65 1b ff eb                                      bl #0x310440
003496a8  e7 ff ff ea                                      b #0x34964c
003496ac  17 13 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003496b0  54 b5 64 00 ac 40 00 00                          .byte 0x54, 0xb5, 0x64, 0x00, 0xac, 0x40, 0x00, 0x00
