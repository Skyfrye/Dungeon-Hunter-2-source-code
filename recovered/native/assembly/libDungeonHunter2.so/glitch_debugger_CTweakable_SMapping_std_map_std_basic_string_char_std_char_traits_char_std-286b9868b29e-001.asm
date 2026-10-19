; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032ece8, declared_size=464, range_size=464, mode=arm
; class-group: glitch::debugger::CTweakable::SMapping& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::debugger::CTweakable::SMapping, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >
; alias: _ZNSt3mapISsN6glitch8debugger10CTweakable8SMappingESt4lessISsESaISt4pairIKSsS3_EEEixIPKcEERS3_RKT_
; demangled: glitch::debugger::CTweakable::SMapping& std::map<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, glitch::debugger::CTweakable::SMapping, std::less<std::basic_string<char, std::char_traits<char>, std::allocator<char> > >, std::allocator<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, glitch::debugger::CTweakable::SMapping> > >::operator[]<char const*>(char const* const&)
; decoder-mode: arm
0032ece8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032ecec  bc 41 9f e5                                      ldr r4, [pc, #0x1bc]
0032ecf0  bc 91 9f e5                                      ldr sb, [pc, #0x1bc]
0032ecf4  dc d0 4d e2                                      sub sp, sp, #0xdc
0032ecf8  04 40 8f e0                                      add r4, pc, r4
0032ecfc  09 30 94 e7                                      ldr r3, [r4, sb]
0032ed00  04 00 8d e5                                      str r0, [sp, #4]
0032ed04  01 60 a0 e1                                      mov r6, r1
0032ed08  00 30 93 e5                                      ldr r3, [r3]
0032ed0c  d4 30 8d e5                                      str r3, [sp, #0xd4]
0032ed10  c4 f2 ff eb                                      bl #0x32b828
0032ed14  04 20 9d e5                                      ldr r2, [sp, #4]
0032ed18  00 50 a0 e1                                      mov r5, r0
0032ed1c  02 00 50 e1                                      cmp r0, r2
0032ed20  21 00 00 0a                                      beq #0x32edac
0032ed24  bc 70 8d e2                                      add r7, sp, #0xbc
0032ed28  00 10 96 e5                                      ldr r1, [r6]
0032ed2c  18 20 8d e2                                      add r2, sp, #0x18
0032ed30  07 00 a0 e1                                      mov r0, r7
0032ed34  ec 94 ff eb                                      bl #0x3140ec
0032ed38  d0 30 9d e5                                      ldr r3, [sp, #0xd0]
0032ed3c  24 10 95 e5                                      ldr r1, [r5, #0x24]
0032ed40  20 80 95 e5                                      ldr r8, [r5, #0x20]
0032ed44  cc a0 9d e5                                      ldr sl, [sp, #0xcc]
0032ed48  03 00 a0 e1                                      mov r0, r3
0032ed4c  08 80 61 e0                                      rsb r8, r1, r8
0032ed50  0a a0 63 e0                                      rsb sl, r3, sl
0032ed54  0a 00 58 e1                                      cmp r8, sl
0032ed58  08 20 a0 b1                                      movlt r2, r8
0032ed5c  0a 20 a0 a1                                      movge r2, sl
0032ed60  1e 7e ff eb                                      bl #0x30e5e0
0032ed64  00 00 50 e3                                      cmp r0, #0
0032ed68  05 b0 a0 e1                                      mov fp, r5
0032ed6c  0b 00 00 1a                                      bne #0x32eda0
0032ed70  08 00 5a e1                                      cmp sl, r8
0032ed74  0a 00 00 ba                                      blt #0x32eda4
0032ed78  07 00 a0 e1                                      mov r0, r7
0032ed7c  0a 93 ff eb                                      bl #0x3139ac
0032ed80  09 30 94 e7                                      ldr r3, [r4, sb]
0032ed84  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
0032ed88  28 00 8b e2                                      add r0, fp, #0x28
0032ed8c  00 30 93 e5                                      ldr r3, [r3]
0032ed90  03 00 52 e1                                      cmp r2, r3
0032ed94  44 00 00 1a                                      bne #0x32eeac
0032ed98  dc d0 8d e2                                      add sp, sp, #0xdc
0032ed9c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032eda0  f4 ff ff aa                                      bge #0x32ed78
0032eda4  07 00 a0 e1                                      mov r0, r7
0032eda8  ff 92 ff eb                                      bl #0x3139ac
0032edac  a4 a0 8d e2                                      add sl, sp, #0xa4
0032edb0  6c 70 8d e2                                      add r7, sp, #0x6c
0032edb4  14 20 8d e2                                      add r2, sp, #0x14
0032edb8  08 80 87 e2                                      add r8, r7, #8
0032edbc  00 10 96 e5                                      ldr r1, [r6]
0032edc0  0a 00 a0 e1                                      mov r0, sl
0032edc4  c8 94 ff eb                                      bl #0x3140ec
0032edc8  00 b0 a0 e3                                      mov fp, #0
0032edcc  08 00 a0 e1                                      mov r0, r8
0032edd0  1e 30 a0 e3                                      mov r3, #0x1e
0032edd4  10 10 a0 e3                                      mov r1, #0x10
0032edd8  6c 30 8d e5                                      str r3, [sp, #0x6c]
0032eddc  70 b0 8d e5                                      str fp, [sp, #0x70]
0032ede0  84 80 8d e5                                      str r8, [sp, #0x84]
0032ede4  88 80 8d e5                                      str r8, [sp, #0x88]
0032ede8  23 8a ff eb                                      bl #0x31167c
0032edec  84 30 9d e5                                      ldr r3, [sp, #0x84]
0032edf0  20 60 87 e2                                      add r6, r7, #0x20
0032edf4  06 00 a0 e1                                      mov r0, r6
0032edf8  00 b0 c3 e5                                      strb fp, [r3]
0032edfc  10 10 a0 e3                                      mov r1, #0x10
0032ee00  9c 60 8d e5                                      str r6, [sp, #0x9c]
0032ee04  a0 60 8d e5                                      str r6, [sp, #0xa0]
0032ee08  1b 8a ff eb                                      bl #0x31167c
0032ee0c  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
0032ee10  1c 70 8d e2                                      add r7, sp, #0x1c
0032ee14  0a 10 a0 e1                                      mov r1, sl
0032ee18  00 b0 c3 e5                                      strb fp, [r3]
0032ee1c  07 00 a0 e1                                      mov r0, r7
0032ee20  bc f2 ff eb                                      bl #0x32b918
0032ee24  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
0032ee28  20 c0 87 e2                                      add ip, r7, #0x20
0032ee2c  0c 00 a0 e1                                      mov r0, ip
0032ee30  34 30 8d e5                                      str r3, [sp, #0x34]
0032ee34  70 30 9d e5                                      ldr r3, [sp, #0x70]
0032ee38  38 b0 87 e2                                      add fp, r7, #0x38
0032ee3c  08 10 a0 e1                                      mov r1, r8
0032ee40  00 c0 8d e5                                      str ip, [sp]
0032ee44  38 30 8d e5                                      str r3, [sp, #0x38]
0032ee48  b2 f2 ff eb                                      bl #0x32b918
0032ee4c  06 10 a0 e1                                      mov r1, r6
0032ee50  0b 00 a0 e1                                      mov r0, fp
0032ee54  af f2 ff eb                                      bl #0x32b918
0032ee58  04 10 9d e5                                      ldr r1, [sp, #4]
0032ee5c  0c 20 8d e2                                      add r2, sp, #0xc
0032ee60  07 30 a0 e1                                      mov r3, r7
0032ee64  10 00 8d e2                                      add r0, sp, #0x10
0032ee68  0c 50 8d e5                                      str r5, [sp, #0xc]
0032ee6c  5c fe ff eb                                      bl #0x32e7e4
0032ee70  0b 00 a0 e1                                      mov r0, fp
0032ee74  10 b0 9d e5                                      ldr fp, [sp, #0x10]
0032ee78  cb 92 ff eb                                      bl #0x3139ac
0032ee7c  00 c0 9d e5                                      ldr ip, [sp]
0032ee80  0c 00 a0 e1                                      mov r0, ip
0032ee84  c8 92 ff eb                                      bl #0x3139ac
0032ee88  07 00 a0 e1                                      mov r0, r7
0032ee8c  c6 92 ff eb                                      bl #0x3139ac
0032ee90  06 00 a0 e1                                      mov r0, r6
0032ee94  c4 92 ff eb                                      bl #0x3139ac
0032ee98  08 00 a0 e1                                      mov r0, r8
0032ee9c  c2 92 ff eb                                      bl #0x3139ac
0032eea0  0a 00 a0 e1                                      mov r0, sl
0032eea4  c0 92 ff eb                                      bl #0x3139ac
0032eea8  b4 ff ff ea                                      b #0x32ed80
0032eeac  17 7d ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032eeb0  98 5d 66 00 ac 40 00 00                          .byte 0x98, 0x5d, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00
