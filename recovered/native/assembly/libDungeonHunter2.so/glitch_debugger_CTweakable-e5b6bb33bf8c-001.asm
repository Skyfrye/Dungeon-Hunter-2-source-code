; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f410, declared_size=8, range_size=8, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZNK6glitch8debugger10CTweakable15getInstanceNameEv
; demangled: glitch::debugger::CTweakable::getInstanceName() const
; decoder-mode: arm
0031f410  68 00 90 e5                                      ldr r0, [r0, #0x68]
0031f414  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f418, declared_size=8, range_size=8, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZNK6glitch8debugger10CTweakable6getXMLEv
; demangled: glitch::debugger::CTweakable::getXML() const
; decoder-mode: arm
0031f418  70 00 80 e2                                      add r0, r0, #0x70
0031f41c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f420, declared_size=4, range_size=4, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable10onSetValueERKSs
; demangled: glitch::debugger::CTweakable::onSetValue(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
0031f420  1e ff 2f e1                                      bx lr

; FUNCTION 0x00327be0, declared_size=3508, range_size=3508, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable10writeGroupERNS1_6SGroupERNS_2io10CXMLWriterEb
; demangled: glitch::debugger::CTweakable::writeGroup(glitch::debugger::CTweakable::SGroup&, glitch::io::CXMLWriter&, bool)
; decoder-mode: arm
00327be0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00327be4  4c bd 9f e5                                      ldr fp, [pc, #0xd4c]
00327be8  4c cd 9f e5                                      ldr ip, [pc, #0xd4c]
00327bec  4e de 4d e2                                      sub sp, sp, #0x4e0
00327bf0  04 d0 4d e2                                      sub sp, sp, #4
00327bf4  0b b0 8f e0                                      add fp, pc, fp
00327bf8  90 c0 8d e5                                      str ip, [sp, #0x90]
00327bfc  0c c0 9b e7                                      ldr ip, [fp, ip]
00327c00  01 50 a0 e1                                      mov r5, r1
00327c04  34 1d 9f e5                                      ldr r1, [pc, #0xd34]
00327c08  78 30 8d e5                                      str r3, [sp, #0x78]
00327c0c  00 30 9c e5                                      ldr r3, [ip]
00327c10  82 ef 8d e2                                      add lr, sp, #0x208
00327c14  98 00 8d e5                                      str r0, [sp, #0x98]
00327c18  02 70 a0 e1                                      mov r7, r2
00327c1c  01 10 8f e0                                      add r1, pc, r1
00327c20  0e 00 a0 e1                                      mov r0, lr
00327c24  a3 2f 8d e2                                      add r2, sp, #0x28c
00327c28  8c e0 8d e5                                      str lr, [sp, #0x8c]
00327c2c  dc 34 8d e5                                      str r3, [sp, #0x4dc]
00327c30  b1 f8 ff eb                                      bl #0x325efc
00327c34  78 00 9d e5                                      ldr r0, [sp, #0x78]
00327c38  00 00 50 e3                                      cmp r0, #0
00327c3c  d9 02 00 1a                                      bne #0x3287a8
00327c40  fc 1c 9f e5                                      ldr r1, [pc, #0xcfc]
00327c44  4e 2e 8d e2                                      add r2, sp, #0x4e0
00327c48  01 a0 a0 e3                                      mov sl, #1
00327c4c  01 30 9b e7                                      ldr r3, [fp, r1]
00327c50  5c 10 8d e5                                      str r1, [sp, #0x5c]
00327c54  10 10 a0 e3                                      mov r1, #0x10
00327c58  08 30 83 e2                                      add r3, r3, #8
00327c5c  50 30 22 e5                                      str r3, [r2, #-0x50]!
00327c60  08 80 82 e2                                      add r8, r2, #8
00327c64  08 00 a0 e1                                      mov r0, r8
00327c68  34 30 8d e5                                      str r3, [sp, #0x34]
00327c6c  6c 20 8d e5                                      str r2, [sp, #0x6c]
00327c70  a8 84 8d e5                                      str r8, [sp, #0x4a8]
00327c74  ac 84 8d e5                                      str r8, [sp, #0x4ac]
00327c78  94 a4 8d e5                                      str sl, [sp, #0x494]
00327c7c  49 e3 ff eb                                      bl #0x3209a8
00327c80  c0 3c 9f e5                                      ldr r3, [pc, #0xcc0]
00327c84  c0 6c 9f e5                                      ldr r6, [pc, #0xcc0]
00327c88  a8 24 9d e5                                      ldr r2, [sp, #0x4a8]
00327c8c  03 30 9b e7                                      ldr r3, [fp, r3]
00327c90  00 40 a0 e3                                      mov r4, #0
00327c94  06 60 8f e0                                      add r6, pc, r6
00327c98  4e ce 8d e2                                      add ip, sp, #0x4e0
00327c9c  00 40 c2 e5                                      strb r4, [r2]
00327ca0  08 30 83 e2                                      add r3, r3, #8
00327ca4  06 20 a0 e1                                      mov r2, r6
00327ca8  08 00 a0 e1                                      mov r0, r8
00327cac  06 10 a0 e1                                      mov r1, r6
00327cb0  68 c0 8d e5                                      str ip, [sp, #0x68]
00327cb4  90 34 8d e5                                      str r3, [sp, #0x490]
00327cb8  b0 44 cd e5                                      strb r4, [sp, #0x4b0]
00327cbc  b1 e3 ff eb                                      bl #0x320b88
00327cc0  34 e0 9d e5                                      ldr lr, [sp, #0x34]
00327cc4  68 00 9d e5                                      ldr r0, [sp, #0x68]
00327cc8  10 10 a0 e3                                      mov r1, #0x10
00327ccc  b4 44 8d e5                                      str r4, [sp, #0x4b4]
00327cd0  78 e0 20 e5                                      str lr, [r0, #-0x78]!
00327cd4  08 80 80 e2                                      add r8, r0, #8
00327cd8  68 00 8d e5                                      str r0, [sp, #0x68]
00327cdc  08 00 a0 e1                                      mov r0, r8
00327ce0  80 84 8d e5                                      str r8, [sp, #0x480]
00327ce4  84 84 8d e5                                      str r8, [sp, #0x484]
00327ce8  6c a4 8d e5                                      str sl, [sp, #0x46c]
00327cec  2d e3 ff eb                                      bl #0x3209a8
00327cf0  58 3c 9f e5                                      ldr r3, [pc, #0xc58]
00327cf4  80 24 9d e5                                      ldr r2, [sp, #0x480]
00327cf8  4e 1e 8d e2                                      add r1, sp, #0x4e0
00327cfc  03 30 9b e7                                      ldr r3, [fp, r3]
00327d00  00 40 c2 e5                                      strb r4, [r2]
00327d04  08 00 a0 e1                                      mov r0, r8
00327d08  08 30 83 e2                                      add r3, r3, #8
00327d0c  06 20 a0 e1                                      mov r2, r6
00327d10  40 10 8d e5                                      str r1, [sp, #0x40]
00327d14  06 10 a0 e1                                      mov r1, r6
00327d18  68 34 8d e5                                      str r3, [sp, #0x468]
00327d1c  88 44 cd e5                                      strb r4, [sp, #0x488]
00327d20  98 e3 ff eb                                      bl #0x320b88
00327d24  40 30 9d e5                                      ldr r3, [sp, #0x40]
00327d28  34 20 9d e5                                      ldr r2, [sp, #0x34]
00327d2c  00 80 a0 e3                                      mov r8, #0
00327d30  10 10 a0 e3                                      mov r1, #0x10
00327d34  50 22 23 e5                                      str r2, [r3, #-0x250]!
00327d38  08 90 83 e2                                      add sb, r3, #8
00327d3c  09 00 a0 e1                                      mov r0, sb
00327d40  40 30 8d e5                                      str r3, [sp, #0x40]
00327d44  8c 84 8d e5                                      str r8, [sp, #0x48c]
00327d48  a8 92 8d e5                                      str sb, [sp, #0x2a8]
00327d4c  ac 92 8d e5                                      str sb, [sp, #0x2ac]
00327d50  94 a2 8d e5                                      str sl, [sp, #0x294]
00327d54  13 e3 ff eb                                      bl #0x3209a8
00327d58  f4 3b 9f e5                                      ldr r3, [pc, #0xbf4]
00327d5c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00327d60  a8 12 9d e5                                      ldr r1, [sp, #0x2a8]
00327d64  03 30 9b e7                                      ldr r3, [fp, r3]
00327d68  24 20 8c e2                                      add r2, ip, #0x24
00327d6c  00 40 c1 e5                                      strb r4, [r1]
00327d70  02 00 a0 e1                                      mov r0, r2
00327d74  08 30 83 e2                                      add r3, r3, #8
00327d78  10 10 a0 e3                                      mov r1, #0x10
00327d7c  90 32 8d e5                                      str r3, [sp, #0x290]
00327d80  c4 22 8d e5                                      str r2, [sp, #0x2c4]
00327d84  c8 22 8d e5                                      str r2, [sp, #0x2c8]
00327d88  b0 42 cd e5                                      strb r4, [sp, #0x2b0]
00327d8c  05 e3 ff eb                                      bl #0x3209a8
00327d90  40 e0 9d e5                                      ldr lr, [sp, #0x40]
00327d94  c4 22 9d e5                                      ldr r2, [sp, #0x2c4]
00327d98  10 10 a0 e3                                      mov r1, #0x10
00327d9c  3c 30 8e e2                                      add r3, lr, #0x3c
00327da0  00 40 c2 e5                                      strb r4, [r2]
00327da4  03 00 a0 e1                                      mov r0, r3
00327da8  0c 33 8d e5                                      str r3, [sp, #0x30c]
00327dac  10 33 8d e5                                      str r3, [sp, #0x310]
00327db0  da e2 ff eb                                      bl #0x320920
00327db4  0c 33 9d e5                                      ldr r3, [sp, #0x30c]
00327db8  09 00 a0 e1                                      mov r0, sb
00327dbc  06 20 a0 e1                                      mov r2, r6
00327dc0  00 40 83 e5                                      str r4, [r3]
00327dc4  06 10 a0 e1                                      mov r1, r6
00327dc8  b1 42 cd e5                                      strb r4, [sp, #0x2b1]
00327dcc  6d e3 ff eb                                      bl #0x320b88
00327dd0  4e 2e 8d e2                                      add r2, sp, #0x4e0
00327dd4  40 00 9d e5                                      ldr r0, [sp, #0x40]
00327dd8  06 10 a0 e1                                      mov r1, r6
00327ddc  64 20 8d e5                                      str r2, [sp, #0x64]
00327de0  97 f9 ff eb                                      bl #0x326444
00327de4  64 c0 9d e5                                      ldr ip, [sp, #0x64]
00327de8  34 30 9d e5                                      ldr r3, [sp, #0x34]
00327dec  10 10 a0 e3                                      mov r1, #0x10
00327df0  bc a4 8d e5                                      str sl, [sp, #0x4bc]
00327df4  28 30 2c e5                                      str r3, [ip, #-0x28]!
00327df8  08 90 8c e2                                      add sb, ip, #8
00327dfc  09 00 a0 e1                                      mov r0, sb
00327e00  64 c0 8d e5                                      str ip, [sp, #0x64]
00327e04  d0 94 8d e5                                      str sb, [sp, #0x4d0]
00327e08  d4 94 8d e5                                      str sb, [sp, #0x4d4]
00327e0c  e5 e2 ff eb                                      bl #0x3209a8
00327e10  40 3b 9f e5                                      ldr r3, [pc, #0xb40]
00327e14  d0 24 9d e5                                      ldr r2, [sp, #0x4d0]
00327e18  06 10 a0 e1                                      mov r1, r6
00327e1c  03 30 9b e7                                      ldr r3, [fp, r3]
00327e20  00 40 c2 e5                                      strb r4, [r2]
00327e24  09 00 a0 e1                                      mov r0, sb
00327e28  08 30 83 e2                                      add r3, r3, #8
00327e2c  06 20 a0 e1                                      mov r2, r6
00327e30  b8 34 8d e5                                      str r3, [sp, #0x4b8]
00327e34  d8 44 cd e5                                      strb r4, [sp, #0x4d8]
00327e38  52 e3 ff eb                                      bl #0x320b88
00327e3c  04 00 a0 e1                                      mov r0, r4
00327e40  d9 44 cd e5                                      strb r4, [sp, #0x4d9]
00327e44  c6 9a ff eb                                      bl #0x30e964
00327e48  81 10 08 e3                                      movw r1, #0x8081
00327e4c  80 1b 43 e3                                      movt r1, #0x3b80
00327e50  c5 9b ff eb                                      bl #0x30ed6c
00327e54  00 c0 a0 e1                                      mov ip, r0
00327e58  04 00 a0 e1                                      mov r0, r4
00327e5c  28 c0 8d e5                                      str ip, [sp, #0x28]
00327e60  bf 9a ff eb                                      bl #0x30e964
00327e64  81 10 08 e3                                      movw r1, #0x8081
00327e68  80 1b 43 e3                                      movt r1, #0x3b80
00327e6c  be 9b ff eb                                      bl #0x30ed6c
00327e70  00 20 a0 e1                                      mov r2, r0
00327e74  04 00 a0 e1                                      mov r0, r4
00327e78  2c 20 8d e5                                      str r2, [sp, #0x2c]
00327e7c  b8 9a ff eb                                      bl #0x30e964
00327e80  81 10 08 e3                                      movw r1, #0x8081
00327e84  80 1b 43 e3                                      movt r1, #0x3b80
00327e88  b7 9b ff eb                                      bl #0x30ed6c
00327e8c  00 30 a0 e1                                      mov r3, r0
00327e90  04 00 a0 e1                                      mov r0, r4
00327e94  30 30 8d e5                                      str r3, [sp, #0x30]
00327e98  b1 9a ff eb                                      bl #0x30e964
00327e9c  81 10 08 e3                                      movw r1, #0x8081
00327ea0  80 1b 43 e3                                      movt r1, #0x3b80
00327ea4  b0 9b ff eb                                      bl #0x30ed6c
00327ea8  42 1e 8d e2                                      add r1, sp, #0x420
00327eac  a8 ea 9f e5                                      ldr lr, [pc, #0xaa8]
00327eb0  30 30 9d e5                                      ldr r3, [sp, #0x30]
00327eb4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00327eb8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00327ebc  04 10 81 e2                                      add r1, r1, #4
00327ec0  25 9e 8d e2                                      add sb, sp, #0x250
00327ec4  74 10 8d e5                                      str r1, [sp, #0x74]
00327ec8  5c 02 8d e5                                      str r0, [sp, #0x25c]
00327ecc  09 10 a0 e1                                      mov r1, sb
00327ed0  74 00 9d e5                                      ldr r0, [sp, #0x74]
00327ed4  7c e0 8d e5                                      str lr, [sp, #0x7c]
00327ed8  58 32 8d e5                                      str r3, [sp, #0x258]
00327edc  54 22 8d e5                                      str r2, [sp, #0x254]
00327ee0  50 c2 8d e5                                      str ip, [sp, #0x250]
00327ee4  9a fd ff eb                                      bl #0x327554
00327ee8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00327eec  6c ca 9f e5                                      ldr ip, [pc, #0xa6c]
00327ef0  3e ee 8d e2                                      add lr, sp, #0x3e0
00327ef4  02 30 9b e7                                      ldr r3, [fp, r2]
00327ef8  09 10 a0 e1                                      mov r1, sb
00327efc  0e 00 a0 e1                                      mov r0, lr
00327f00  08 30 83 e2                                      add r3, r3, #8
00327f04  24 34 8d e5                                      str r3, [sp, #0x424]
00327f08  fe 35 a0 e3                                      mov r3, #0x3f800000
00327f0c  84 c0 8d e5                                      str ip, [sp, #0x84]
00327f10  70 e0 8d e5                                      str lr, [sp, #0x70]
00327f14  5c 32 8d e5                                      str r3, [sp, #0x25c]
00327f18  58 82 8d e5                                      str r8, [sp, #0x258]
00327f1c  54 82 8d e5                                      str r8, [sp, #0x254]
00327f20  50 82 8d e5                                      str r8, [sp, #0x250]
00327f24  8a fd ff eb                                      bl #0x327554
00327f28  84 10 9d e5                                      ldr r1, [sp, #0x84]
00327f2c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00327f30  4e 0e 8d e2                                      add r0, sp, #0x4e0
00327f34  01 30 9b e7                                      ldr r3, [fp, r1]
00327f38  78 82 8d e5                                      str r8, [sp, #0x278]
00327f3c  74 82 8d e5                                      str r8, [sp, #0x274]
00327f40  44 21 20 e5                                      str r2, [r0, #-0x144]!
00327f44  18 8a 9f e5                                      ldr r8, [pc, #0xa18]
00327f48  08 90 80 e2                                      add sb, r0, #8
00327f4c  08 30 83 e2                                      add r3, r3, #8
00327f50  60 00 8d e5                                      str r0, [sp, #0x60]
00327f54  10 10 a0 e3                                      mov r1, #0x10
00327f58  09 00 a0 e1                                      mov r0, sb
00327f5c  e0 33 8d e5                                      str r3, [sp, #0x3e0]
00327f60  a0 a3 8d e5                                      str sl, [sp, #0x3a0]
00327f64  b4 93 8d e5                                      str sb, [sp, #0x3b4]
00327f68  b8 93 8d e5                                      str sb, [sp, #0x3b8]
00327f6c  8d e2 ff eb                                      bl #0x3209a8
00327f70  08 30 9b e7                                      ldr r3, [fp, r8]
00327f74  b4 23 9d e5                                      ldr r2, [sp, #0x3b4]
00327f78  06 10 a0 e1                                      mov r1, r6
00327f7c  08 30 83 e2                                      add r3, r3, #8
00327f80  00 40 c2 e5                                      strb r4, [r2]
00327f84  09 00 a0 e1                                      mov r0, sb
00327f88  9c 33 8d e5                                      str r3, [sp, #0x39c]
00327f8c  06 20 a0 e1                                      mov r2, r6
00327f90  02 30 a0 e3                                      mov r3, #2
00327f94  d8 33 8d e5                                      str r3, [sp, #0x3d8]
00327f98  d4 43 8d e5                                      str r4, [sp, #0x3d4]
00327f9c  dc a3 cd e5                                      strb sl, [sp, #0x3dc]
00327fa0  bc 43 cd e5                                      strb r4, [sp, #0x3bc]
00327fa4  c0 43 8d e5                                      str r4, [sp, #0x3c0]
00327fa8  c4 43 8d e5                                      str r4, [sp, #0x3c4]
00327fac  c8 43 8d e5                                      str r4, [sp, #0x3c8]
00327fb0  cc 43 8d e5                                      str r4, [sp, #0x3cc]
00327fb4  d0 43 8d e5                                      str r4, [sp, #0x3d0]
00327fb8  f2 e2 ff eb                                      bl #0x320b88
00327fbc  d0 13 9d e5                                      ldr r1, [sp, #0x3d0]
00327fc0  d4 33 9d e5                                      ldr r3, [sp, #0x3d4]
00327fc4  03 00 51 e1                                      cmp r1, r3
00327fc8  1d 02 00 0a                                      beq #0x328844
00327fcc  74 32 9d e5                                      ldr r3, [sp, #0x274]
00327fd0  00 30 81 e5                                      str r3, [r1]
00327fd4  d0 13 9d e5                                      ldr r1, [sp, #0x3d0]
00327fd8  d4 33 9d e5                                      ldr r3, [sp, #0x3d4]
00327fdc  04 10 81 e2                                      add r1, r1, #4
00327fe0  03 00 51 e1                                      cmp r1, r3
00327fe4  d0 13 8d e5                                      str r1, [sp, #0x3d0]
00327fe8  1d 02 00 0a                                      beq #0x328864
00327fec  78 32 9d e5                                      ldr r3, [sp, #0x278]
00327ff0  00 30 81 e5                                      str r3, [r1]
00327ff4  d0 33 9d e5                                      ldr r3, [sp, #0x3d0]
00327ff8  04 30 83 e2                                      add r3, r3, #4
00327ffc  d0 33 8d e5                                      str r3, [sp, #0x3d0]
00328000  5c e0 9d e5                                      ldr lr, [sp, #0x5c]
00328004  5c 09 9f e5                                      ldr r0, [pc, #0x95c]
00328008  00 20 a0 e3                                      mov r2, #0
0032800c  0e 10 9b e7                                      ldr r1, [fp, lr]
00328010  4e ce 8d e2                                      add ip, sp, #0x4e0
00328014  00 30 9b e7                                      ldr r3, [fp, r0]
00328018  08 10 81 e2                                      add r1, r1, #8
0032801c  68 22 8d e5                                      str r2, [sp, #0x268]
00328020  60 22 8d e5                                      str r2, [sp, #0x260]
00328024  64 22 8d e5                                      str r2, [sp, #0x264]
00328028  88 11 2c e5                                      str r1, [ip, #-0x188]!
0032802c  08 60 8c e2                                      add r6, ip, #8
00328030  08 30 83 e2                                      add r3, r3, #8
00328034  80 00 8d e5                                      str r0, [sp, #0x80]
00328038  01 40 a0 e3                                      mov r4, #1
0032803c  06 00 a0 e1                                      mov r0, r6
00328040  10 10 a0 e3                                      mov r1, #0x10
00328044  58 c0 8d e5                                      str ip, [sp, #0x58]
00328048  9c 33 8d e5                                      str r3, [sp, #0x39c]
0032804c  5c 43 8d e5                                      str r4, [sp, #0x35c]
00328050  70 63 8d e5                                      str r6, [sp, #0x370]
00328054  74 63 8d e5                                      str r6, [sp, #0x374]
00328058  52 e2 ff eb                                      bl #0x3209a8
0032805c  08 c0 9b e7                                      ldr ip, [fp, r8]
00328060  04 19 9f e5                                      ldr r1, [pc, #0x904]
00328064  70 23 9d e5                                      ldr r2, [sp, #0x370]
00328068  00 30 a0 e3                                      mov r3, #0
0032806c  01 10 8f e0                                      add r1, pc, r1
00328070  08 c0 8c e2                                      add ip, ip, #8
00328074  00 30 c2 e5                                      strb r3, [r2]
00328078  06 00 a0 e1                                      mov r0, r6
0032807c  01 20 a0 e1                                      mov r2, r1
00328080  58 c3 8d e5                                      str ip, [sp, #0x358]
00328084  03 c0 a0 e3                                      mov ip, #3
00328088  90 33 8d e5                                      str r3, [sp, #0x390]
0032808c  78 33 cd e5                                      strb r3, [sp, #0x378]
00328090  7c 33 8d e5                                      str r3, [sp, #0x37c]
00328094  80 33 8d e5                                      str r3, [sp, #0x380]
00328098  84 33 8d e5                                      str r3, [sp, #0x384]
0032809c  88 33 8d e5                                      str r3, [sp, #0x388]
003280a0  8c 33 8d e5                                      str r3, [sp, #0x38c]
003280a4  94 c3 8d e5                                      str ip, [sp, #0x394]
003280a8  98 43 cd e5                                      strb r4, [sp, #0x398]
003280ac  b5 e2 ff eb                                      bl #0x320b88
003280b0  8c 13 9d e5                                      ldr r1, [sp, #0x38c]
003280b4  90 33 9d e5                                      ldr r3, [sp, #0x390]
003280b8  03 00 51 e1                                      cmp r1, r3
003280bc  ed 01 00 0a                                      beq #0x328878
003280c0  60 32 9d e5                                      ldr r3, [sp, #0x260]
003280c4  00 30 81 e5                                      str r3, [r1]
003280c8  8c 13 9d e5                                      ldr r1, [sp, #0x38c]
003280cc  90 33 9d e5                                      ldr r3, [sp, #0x390]
003280d0  04 10 81 e2                                      add r1, r1, #4
003280d4  03 00 51 e1                                      cmp r1, r3
003280d8  8c 13 8d e5                                      str r1, [sp, #0x38c]
003280dc  ed 01 00 0a                                      beq #0x328898
003280e0  64 32 9d e5                                      ldr r3, [sp, #0x264]
003280e4  00 30 81 e5                                      str r3, [r1]
003280e8  8c 13 9d e5                                      ldr r1, [sp, #0x38c]
003280ec  90 33 9d e5                                      ldr r3, [sp, #0x390]
003280f0  04 10 81 e2                                      add r1, r1, #4
003280f4  03 00 51 e1                                      cmp r1, r3
003280f8  8c 13 8d e5                                      str r1, [sp, #0x38c]
003280fc  ed 01 00 0a                                      beq #0x3288b8
00328100  68 32 9d e5                                      ldr r3, [sp, #0x268]
00328104  00 30 81 e5                                      str r3, [r1]
00328108  8c 33 9d e5                                      ldr r3, [sp, #0x38c]
0032810c  04 30 83 e2                                      add r3, r3, #4
00328110  8c 33 8d e5                                      str r3, [sp, #0x38c]
00328114  5c c0 9d e5                                      ldr ip, [sp, #0x5c]
00328118  50 e8 9f e5                                      ldr lr, [pc, #0x850]
0032811c  4e 0e 8d e2                                      add r0, sp, #0x4e0
00328120  0c 20 9b e7                                      ldr r2, [fp, ip]
00328124  0e 30 9b e7                                      ldr r3, [fp, lr]
00328128  01 40 a0 e3                                      mov r4, #1
0032812c  08 20 82 e2                                      add r2, r2, #8
00328130  cc 21 20 e5                                      str r2, [r0, #-0x1cc]!
00328134  08 60 80 e2                                      add r6, r0, #8
00328138  08 30 83 e2                                      add r3, r3, #8
0032813c  54 00 8d e5                                      str r0, [sp, #0x54]
00328140  10 10 a0 e3                                      mov r1, #0x10
00328144  06 00 a0 e1                                      mov r0, r6
00328148  88 e0 8d e5                                      str lr, [sp, #0x88]
0032814c  58 33 8d e5                                      str r3, [sp, #0x358]
00328150  18 43 8d e5                                      str r4, [sp, #0x318]
00328154  2c 63 8d e5                                      str r6, [sp, #0x32c]
00328158  30 63 8d e5                                      str r6, [sp, #0x330]
0032815c  11 e2 ff eb                                      bl #0x3209a8
00328160  08 c0 9b e7                                      ldr ip, [fp, r8]
00328164  08 18 9f e5                                      ldr r1, [pc, #0x808]
00328168  2c 23 9d e5                                      ldr r2, [sp, #0x32c]
0032816c  00 30 a0 e3                                      mov r3, #0
00328170  01 10 8f e0                                      add r1, pc, r1
00328174  08 c0 8c e2                                      add ip, ip, #8
00328178  00 30 c2 e5                                      strb r3, [r2]
0032817c  06 00 a0 e1                                      mov r0, r6
00328180  01 20 a0 e1                                      mov r2, r1
00328184  14 c3 8d e5                                      str ip, [sp, #0x314]
00328188  04 c0 a0 e3                                      mov ip, #4
0032818c  4c 33 8d e5                                      str r3, [sp, #0x34c]
00328190  34 33 cd e5                                      strb r3, [sp, #0x334]
00328194  38 33 8d e5                                      str r3, [sp, #0x338]
00328198  3c 33 8d e5                                      str r3, [sp, #0x33c]
0032819c  40 33 8d e5                                      str r3, [sp, #0x340]
003281a0  44 33 8d e5                                      str r3, [sp, #0x344]
003281a4  48 33 8d e5                                      str r3, [sp, #0x348]
003281a8  50 c3 8d e5                                      str ip, [sp, #0x350]
003281ac  54 43 cd e5                                      strb r4, [sp, #0x354]
003281b0  74 e2 ff eb                                      bl #0x320b88
003281b4  48 13 9d e5                                      ldr r1, [sp, #0x348]
003281b8  4c 23 9d e5                                      ldr r2, [sp, #0x34c]
003281bc  00 30 a0 e3                                      mov r3, #0
003281c0  88 32 8d e5                                      str r3, [sp, #0x288]
003281c4  02 00 51 e1                                      cmp r1, r2
003281c8  bf 01 00 0a                                      beq #0x3288cc
003281cc  00 30 81 e5                                      str r3, [r1]
003281d0  48 13 9d e5                                      ldr r1, [sp, #0x348]
003281d4  4c 23 9d e5                                      ldr r2, [sp, #0x34c]
003281d8  00 30 a0 e3                                      mov r3, #0
003281dc  04 10 81 e2                                      add r1, r1, #4
003281e0  02 00 51 e1                                      cmp r1, r2
003281e4  48 13 8d e5                                      str r1, [sp, #0x348]
003281e8  84 32 8d e5                                      str r3, [sp, #0x284]
003281ec  c0 01 00 0a                                      beq #0x3288f4
003281f0  00 30 81 e5                                      str r3, [r1]
003281f4  48 13 9d e5                                      ldr r1, [sp, #0x348]
003281f8  4c 23 9d e5                                      ldr r2, [sp, #0x34c]
003281fc  00 30 a0 e3                                      mov r3, #0
00328200  04 10 81 e2                                      add r1, r1, #4
00328204  02 00 51 e1                                      cmp r1, r2
00328208  48 13 8d e5                                      str r1, [sp, #0x348]
0032820c  80 32 8d e5                                      str r3, [sp, #0x280]
00328210  c1 01 00 0a                                      beq #0x32891c
00328214  00 30 81 e5                                      str r3, [r1]
00328218  48 13 9d e5                                      ldr r1, [sp, #0x348]
0032821c  04 10 81 e2                                      add r1, r1, #4
00328220  48 13 8d e5                                      str r1, [sp, #0x348]
00328224  4c 23 9d e5                                      ldr r2, [sp, #0x34c]
00328228  00 30 a0 e3                                      mov r3, #0
0032822c  7c 32 8d e5                                      str r3, [sp, #0x27c]
00328230  02 00 51 e1                                      cmp r1, r2
00328234  7d 01 00 0a                                      beq #0x328830
00328238  00 30 81 e5                                      str r3, [r1]
0032823c  48 33 9d e5                                      ldr r3, [sp, #0x348]
00328240  04 30 83 e2                                      add r3, r3, #4
00328244  48 33 8d e5                                      str r3, [sp, #0x348]
00328248  18 10 95 e5                                      ldr r1, [r5, #0x18]
0032824c  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00328250  20 07 9f e5                                      ldr r0, [pc, #0x720]
00328254  03 30 61 e0                                      rsb r3, r1, r3
00328258  c3 31 a0 e1                                      asr r3, r3, #3
0032825c  94 00 8d e5                                      str r0, [sp, #0x94]
00328260  03 21 83 e0                                      add r2, r3, r3, lsl #2
00328264  00 00 9b e7                                      ldr r0, [fp, r0]
00328268  02 22 82 e0                                      add r2, r2, r2, lsl #4
0032826c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00328270  08 00 80 e2                                      add r0, r0, #8
00328274  02 28 82 e0                                      add r2, r2, r2, lsl #16
00328278  14 03 8d e5                                      str r0, [sp, #0x314]
0032827c  82 20 83 e0                                      add r2, r3, r2, lsl #1
00328280  00 00 52 e3                                      cmp r2, #0
00328284  86 00 00 0a                                      beq #0x3284a4
00328288  ec 36 9f e5                                      ldr r3, [pc, #0x6ec]
0032828c  98 20 9d e5                                      ldr r2, [sp, #0x98]
00328290  00 80 a0 e3                                      mov r8, #0
00328294  03 30 8f e0                                      add r3, pc, r3
00328298  44 30 8d e5                                      str r3, [sp, #0x44]
0032829c  dc 36 9f e5                                      ldr r3, [pc, #0x6dc]
003282a0  04 20 82 e2                                      add r2, r2, #4
003282a4  34 20 8d e5                                      str r2, [sp, #0x34]
003282a8  03 30 8f e0                                      add r3, pc, r3
003282ac  48 30 8d e5                                      str r3, [sp, #0x48]
003282b0  cc 36 9f e5                                      ldr r3, [pc, #0x6cc]
003282b4  08 a0 a0 e1                                      mov sl, r8
003282b8  9c b0 8d e5                                      str fp, [sp, #0x9c]
003282bc  03 30 8f e0                                      add r3, pc, r3
003282c0  4c 30 8d e5                                      str r3, [sp, #0x4c]
003282c4  bc 36 9f e5                                      ldr r3, [pc, #0x6bc]
003282c8  03 30 8f e0                                      add r3, pc, r3
003282cc  50 30 8d e5                                      str r3, [sp, #0x50]
003282d0  5e 3f 8d e2                                      add r3, sp, #0x178
003282d4  38 30 8d e5                                      str r3, [sp, #0x38]
003282d8  08 10 81 e0                                      add r1, r1, r8
003282dc  34 00 9d e5                                      ldr r0, [sp, #0x34]
003282e0  09 fe ff eb                                      bl #0x327b0c
003282e4  34 c0 9d e5                                      ldr ip, [sp, #0x34]
003282e8  00 40 a0 e1                                      mov r4, r0
003282ec  0c 00 50 e1                                      cmp r0, ip
003282f0  5d 00 00 0a                                      beq #0x32846c
003282f4  28 30 90 e5                                      ldr r3, [r0, #0x28]
003282f8  09 00 53 e3                                      cmp r3, #9
003282fc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00328300  09 00 00 ea                                      b #0x32832c
00328304  22 01 00 ea                                      b #0x328794
00328308  1c 01 00 ea                                      b #0x328780
0032830c  15 01 00 ea                                      b #0x328768
00328310  0f 01 00 ea                                      b #0x328754
00328314  04 00 00 ea                                      b #0x32832c
00328318  01 01 00 ea                                      b #0x328724
0032831c  f8 00 00 ea                                      b #0x328704
00328320  ed 00 00 ea                                      b #0x3286dc
00328324  e7 00 00 ea                                      b #0x3286c8
00328328  e1 00 00 ea                                      b #0x3286b4
0032832c  00 60 a0 e3                                      mov r6, #0
00328330  00 20 97 e5                                      ldr r2, [r7]
00328334  00 30 96 e5                                      ldr r3, [r6]
00328338  06 00 a0 e1                                      mov r0, r6
0032833c  10 20 92 e5                                      ldr r2, [r2, #0x10]
00328340  13 be 8d e2                                      add fp, sp, #0x130
00328344  e8 90 8d e2                                      add sb, sp, #0xe8
00328348  3c 20 8d e5                                      str r2, [sp, #0x3c]
0032834c  0f e0 a0 e1                                      mov lr, pc
00328350  08 f1 93 e5                                      ldr pc, [r3, #0x108]
00328354  24 10 94 e5                                      ldr r1, [r4, #0x24]
00328358  00 c0 a0 e1                                      mov ip, r0
0032835c  38 00 9d e5                                      ldr r0, [sp, #0x38]
00328360  28 c0 8d e5                                      str ip, [sp, #0x28]
00328364  d7 f7 ff eb                                      bl #0x3262c8
00328368  bc 21 9d e5                                      ldr r2, [sp, #0x1bc]
0032836c  00 30 96 e5                                      ldr r3, [r6]
00328370  06 10 a0 e1                                      mov r1, r6
00328374  2c 20 8d e5                                      str r2, [sp, #0x2c]
00328378  0b 00 a0 e1                                      mov r0, fp
0032837c  0f e0 a0 e1                                      mov lr, pc
00328380  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00328384  74 31 9d e5                                      ldr r3, [sp, #0x174]
00328388  44 10 94 e5                                      ldr r1, [r4, #0x44]
0032838c  a0 60 8d e2                                      add r6, sp, #0xa0
00328390  09 00 a0 e1                                      mov r0, sb
00328394  30 30 8d e5                                      str r3, [sp, #0x30]
00328398  ca f7 ff eb                                      bl #0x3262c8
0032839c  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
003283a0  06 00 a0 e1                                      mov r0, r6
003283a4  2c 41 9d e5                                      ldr r4, [sp, #0x12c]
003283a8  c6 f7 ff eb                                      bl #0x3262c8
003283ac  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003283b0  30 30 9d e5                                      ldr r3, [sp, #0x30]
003283b4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
003283b8  28 c0 9d e5                                      ldr ip, [sp, #0x28]
003283bc  00 20 8d e5                                      str r2, [sp]
003283c0  08 30 8d e5                                      str r3, [sp, #8]
003283c4  50 20 9d e5                                      ldr r2, [sp, #0x50]
003283c8  e4 30 9d e5                                      ldr r3, [sp, #0xe4]
003283cc  48 e0 9d e5                                      ldr lr, [sp, #0x48]
003283d0  00 10 a0 e3                                      mov r1, #0
003283d4  18 30 8d e5                                      str r3, [sp, #0x18]
003283d8  20 10 8d e5                                      str r1, [sp, #0x20]
003283dc  0c 00 8d e5                                      str r0, [sp, #0xc]
003283e0  14 20 8d e5                                      str r2, [sp, #0x14]
003283e4  1c 10 8d e5                                      str r1, [sp, #0x1c]
003283e8  07 00 a0 e1                                      mov r0, r7
003283ec  0c 10 a0 e1                                      mov r1, ip
003283f0  10 40 8d e5                                      str r4, [sp, #0x10]
003283f4  04 e0 8d e5                                      str lr, [sp, #4]
003283f8  01 20 a0 e3                                      mov r2, #1
003283fc  44 30 9d e5                                      ldr r3, [sp, #0x44]
00328400  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
00328404  3c ff 2f e1                                      blx ip
00328408  e4 00 9d e5                                      ldr r0, [sp, #0xe4]
0032840c  06 00 50 e1                                      cmp r0, r6
00328410  02 00 00 0a                                      beq #0x328420
00328414  00 00 50 e3                                      cmp r0, #0
00328418  00 00 00 0a                                      beq #0x328420
0032841c  0b a0 ff eb                                      bl #0x310450
00328420  2c 01 9d e5                                      ldr r0, [sp, #0x12c]
00328424  09 00 50 e1                                      cmp r0, sb
00328428  02 00 00 0a                                      beq #0x328438
0032842c  00 00 50 e3                                      cmp r0, #0
00328430  00 00 00 0a                                      beq #0x328438
00328434  05 a0 ff eb                                      bl #0x310450
00328438  74 01 9d e5                                      ldr r0, [sp, #0x174]
0032843c  0b 00 50 e1                                      cmp r0, fp
00328440  02 00 00 0a                                      beq #0x328450
00328444  00 00 50 e3                                      cmp r0, #0
00328448  00 00 00 0a                                      beq #0x328450
0032844c  ff 9f ff eb                                      bl #0x310450
00328450  bc 01 9d e5                                      ldr r0, [sp, #0x1bc]
00328454  38 e0 9d e5                                      ldr lr, [sp, #0x38]
00328458  0e 00 50 e1                                      cmp r0, lr
0032845c  02 00 00 0a                                      beq #0x32846c
00328460  00 00 50 e3                                      cmp r0, #0
00328464  00 00 00 0a                                      beq #0x32846c
00328468  f8 9f ff eb                                      bl #0x310450
0032846c  18 10 95 e5                                      ldr r1, [r5, #0x18]
00328470  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
00328474  01 a0 8a e2                                      add sl, sl, #1
00328478  18 80 88 e2                                      add r8, r8, #0x18
0032847c  03 30 61 e0                                      rsb r3, r1, r3
00328480  c3 31 a0 e1                                      asr r3, r3, #3
00328484  03 21 83 e0                                      add r2, r3, r3, lsl #2
00328488  02 22 82 e0                                      add r2, r2, r2, lsl #4
0032848c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00328490  02 28 82 e0                                      add r2, r2, r2, lsl #16
00328494  82 20 83 e0                                      add r2, r3, r2, lsl #1
00328498  02 00 5a e1                                      cmp sl, r2
0032849c  8d ff ff 3a                                      blo #0x3282d8
003284a0  9c b0 9d e5                                      ldr fp, [sp, #0x9c]
003284a4  24 10 95 e5                                      ldr r1, [r5, #0x24]
003284a8  28 30 95 e5                                      ldr r3, [r5, #0x28]
003284ac  c5 8e 04 e3                                      movw r8, #0x4ec5
003284b0  ec 84 4c e3                                      movt r8, #0xc4ec
003284b4  03 30 61 e0                                      rsb r3, r1, r3
003284b8  43 31 a0 e1                                      asr r3, r3, #2
003284bc  98 03 03 e0                                      mul r3, r8, r3
003284c0  00 00 53 e3                                      cmp r3, #0
003284c4  10 00 00 0a                                      beq #0x32850c
003284c8  98 a0 9d e5                                      ldr sl, [sp, #0x98]
003284cc  00 40 a0 e3                                      mov r4, #0
003284d0  04 60 a0 e1                                      mov r6, r4
003284d4  04 10 81 e0                                      add r1, r1, r4
003284d8  01 30 a0 e3                                      mov r3, #1
003284dc  0a 00 a0 e1                                      mov r0, sl
003284e0  07 20 a0 e1                                      mov r2, r7
003284e4  bd fd ff eb                                      bl #0x327be0
003284e8  24 10 95 e5                                      ldr r1, [r5, #0x24]
003284ec  28 30 95 e5                                      ldr r3, [r5, #0x28]
003284f0  01 60 86 e2                                      add r6, r6, #1
003284f4  34 40 84 e2                                      add r4, r4, #0x34
003284f8  03 30 61 e0                                      rsb r3, r1, r3
003284fc  43 31 a0 e1                                      asr r3, r3, #2
00328500  98 03 03 e0                                      mul r3, r8, r3
00328504  03 00 56 e1                                      cmp r6, r3
00328508  f1 ff ff 3a                                      blo #0x3284d4
0032850c  78 00 9d e5                                      ldr r0, [sp, #0x78]
00328510  00 00 50 e3                                      cmp r0, #0
00328514  08 00 00 0a                                      beq #0x32853c
00328518  07 00 a0 e1                                      mov r0, r7
0032851c  00 30 97 e5                                      ldr r3, [r7]
00328520  4c 12 9d e5                                      ldr r1, [sp, #0x24c]
00328524  0f e0 a0 e1                                      mov lr, pc
00328528  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0032852c  07 00 a0 e1                                      mov r0, r7
00328530  00 30 97 e5                                      ldr r3, [r7]
00328534  0f e0 a0 e1                                      mov lr, pc
00328538  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0032853c  94 10 9d e5                                      ldr r1, [sp, #0x94]
00328540  54 00 9d e5                                      ldr r0, [sp, #0x54]
00328544  01 30 9b e7                                      ldr r3, [fp, r1]
00328548  08 30 83 e2                                      add r3, r3, #8
0032854c  14 33 8d e5                                      str r3, [sp, #0x314]
00328550  a8 f8 ff eb                                      bl #0x3267f8
00328554  88 20 9d e5                                      ldr r2, [sp, #0x88]
00328558  58 00 9d e5                                      ldr r0, [sp, #0x58]
0032855c  02 30 9b e7                                      ldr r3, [fp, r2]
00328560  08 30 83 e2                                      add r3, r3, #8
00328564  58 33 8d e5                                      str r3, [sp, #0x358]
00328568  a2 f8 ff eb                                      bl #0x3267f8
0032856c  80 c0 9d e5                                      ldr ip, [sp, #0x80]
00328570  60 00 9d e5                                      ldr r0, [sp, #0x60]
00328574  0c 30 9b e7                                      ldr r3, [fp, ip]
00328578  08 30 83 e2                                      add r3, r3, #8
0032857c  9c 33 8d e5                                      str r3, [sp, #0x39c]
00328580  9c f8 ff eb                                      bl #0x3267f8
00328584  84 e0 9d e5                                      ldr lr, [sp, #0x84]
00328588  70 00 9d e5                                      ldr r0, [sp, #0x70]
0032858c  0e 30 9b e7                                      ldr r3, [fp, lr]
00328590  08 30 83 e2                                      add r3, r3, #8
00328594  e0 33 8d e5                                      str r3, [sp, #0x3e0]
00328598  96 f8 ff eb                                      bl #0x3267f8
0032859c  7c 00 9d e5                                      ldr r0, [sp, #0x7c]
003285a0  00 30 9b e7                                      ldr r3, [fp, r0]
003285a4  74 00 9d e5                                      ldr r0, [sp, #0x74]
003285a8  08 30 83 e2                                      add r3, r3, #8
003285ac  24 34 8d e5                                      str r3, [sp, #0x424]
003285b0  90 f8 ff eb                                      bl #0x3267f8
003285b4  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
003285b8  64 c0 9d e5                                      ldr ip, [sp, #0x64]
003285bc  d4 04 9d e5                                      ldr r0, [sp, #0x4d4]
003285c0  01 30 9b e7                                      ldr r3, [fp, r1]
003285c4  08 20 8c e2                                      add r2, ip, #8
003285c8  02 00 50 e1                                      cmp r0, r2
003285cc  08 30 83 e2                                      add r3, r3, #8
003285d0  b8 34 8d e5                                      str r3, [sp, #0x4b8]
003285d4  02 00 00 0a                                      beq #0x3285e4
003285d8  00 00 50 e3                                      cmp r0, #0
003285dc  00 00 00 0a                                      beq #0x3285e4
003285e0  9a 9f ff eb                                      bl #0x310450
003285e4  a0 43 9f e5                                      ldr r4, [pc, #0x3a0]
003285e8  40 00 9d e5                                      ldr r0, [sp, #0x40]
003285ec  04 30 9b e7                                      ldr r3, [fp, r4]
003285f0  08 30 83 e2                                      add r3, r3, #8
003285f4  b8 34 8d e5                                      str r3, [sp, #0x4b8]
003285f8  2a f8 ff eb                                      bl #0x3266a8
003285fc  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00328600  68 10 9d e5                                      ldr r1, [sp, #0x68]
00328604  00 30 9b e7                                      ldr r3, [fp, r0]
00328608  84 04 9d e5                                      ldr r0, [sp, #0x484]
0032860c  08 20 81 e2                                      add r2, r1, #8
00328610  08 30 83 e2                                      add r3, r3, #8
00328614  02 00 50 e1                                      cmp r0, r2
00328618  68 34 8d e5                                      str r3, [sp, #0x468]
0032861c  02 00 00 0a                                      beq #0x32862c
00328620  00 00 50 e3                                      cmp r0, #0
00328624  00 00 00 0a                                      beq #0x32862c
00328628  88 9f ff eb                                      bl #0x310450
0032862c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00328630  6c c0 9d e5                                      ldr ip, [sp, #0x6c]
00328634  ac 04 9d e5                                      ldr r0, [sp, #0x4ac]
00328638  02 30 9b e7                                      ldr r3, [fp, r2]
0032863c  04 20 9b e7                                      ldr r2, [fp, r4]
00328640  08 10 8c e2                                      add r1, ip, #8
00328644  08 30 83 e2                                      add r3, r3, #8
00328648  08 20 82 e2                                      add r2, r2, #8
0032864c  01 00 50 e1                                      cmp r0, r1
00328650  68 24 8d e5                                      str r2, [sp, #0x468]
00328654  90 34 8d e5                                      str r3, [sp, #0x490]
00328658  02 00 00 0a                                      beq #0x328668
0032865c  00 00 50 e3                                      cmp r0, #0
00328660  00 00 00 0a                                      beq #0x328668
00328664  79 9f ff eb                                      bl #0x310450
00328668  04 30 9b e7                                      ldr r3, [fp, r4]
0032866c  4c 02 9d e5                                      ldr r0, [sp, #0x24c]
00328670  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00328674  08 30 83 e2                                      add r3, r3, #8
00328678  90 34 8d e5                                      str r3, [sp, #0x490]
0032867c  01 00 50 e1                                      cmp r0, r1
00328680  02 00 00 0a                                      beq #0x328690
00328684  00 00 50 e3                                      cmp r0, #0
00328688  00 00 00 0a                                      beq #0x328690
0032868c  6f 9f ff eb                                      bl #0x310450
00328690  90 20 9d e5                                      ldr r2, [sp, #0x90]
00328694  02 30 9b e7                                      ldr r3, [fp, r2]
00328698  dc 24 9d e5                                      ldr r2, [sp, #0x4dc]
0032869c  00 30 93 e5                                      ldr r3, [r3]
003286a0  03 00 52 e1                                      cmp r2, r3
003286a4  a2 00 00 1a                                      bne #0x328934
003286a8  e4 d0 8d e2                                      add sp, sp, #0xe4
003286ac  01 db 8d e2                                      add sp, sp, #0x400
003286b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003286b4  54 00 9d e5                                      ldr r0, [sp, #0x54]
003286b8  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003286bc  15 f2 ff eb                                      bl #0x324f18
003286c0  54 60 9d e5                                      ldr r6, [sp, #0x54]
003286c4  19 ff ff ea                                      b #0x328330
003286c8  58 00 9d e5                                      ldr r0, [sp, #0x58]
003286cc  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
003286d0  c7 f1 ff eb                                      bl #0x324df4
003286d4  58 60 9d e5                                      ldr r6, [sp, #0x58]
003286d8  14 ff ff ea                                      b #0x328330
003286dc  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
003286e0  60 00 9d e5                                      ldr r0, [sp, #0x60]
003286e4  9b 1f 8d e2                                      add r1, sp, #0x26c
003286e8  00 20 93 e5                                      ldr r2, [r3]
003286ec  00 60 a0 e1                                      mov r6, r0
003286f0  6c 22 8d e5                                      str r2, [sp, #0x26c]
003286f4  04 30 93 e5                                      ldr r3, [r3, #4]
003286f8  70 32 8d e5                                      str r3, [sp, #0x270]
003286fc  80 f1 ff eb                                      bl #0x324d04
00328700  0a ff ff ea                                      b #0x328330
00328704  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00328708  70 00 9d e5                                      ldr r0, [sp, #0x70]
0032870c  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00328710  00 60 a0 e1                                      mov r6, r0
00328714  00 20 8d e5                                      str r2, [sp]
00328718  0e 00 93 e8                                      ldm r3, {r1, r2, r3}
0032871c  15 f1 ff eb                                      bl #0x324b78
00328720  02 ff ff ea                                      b #0x328330
00328724  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00328728  74 00 9d e5                                      ldr r0, [sp, #0x74]
0032872c  00 20 d3 e5                                      ldrb r2, [r3]
00328730  01 10 d3 e5                                      ldrb r1, [r3, #1]
00328734  02 c0 d3 e5                                      ldrb ip, [r3, #2]
00328738  03 30 d3 e5                                      ldrb r3, [r3, #3]
0032873c  01 14 82 e1                                      orr r1, r2, r1, lsl #8
00328740  0c 18 81 e1                                      orr r1, r1, ip, lsl #16
00328744  03 1c 81 e1                                      orr r1, r1, r3, lsl #24
00328748  00 60 a0 e1                                      mov r6, r0
0032874c  a9 f0 ff eb                                      bl #0x3249f8
00328750  f6 fe ff ea                                      b #0x328330
00328754  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00328758  64 60 9d e5                                      ldr r6, [sp, #0x64]
0032875c  00 30 d3 e5                                      ldrb r3, [r3]
00328760  d9 34 cd e5                                      strb r3, [sp, #0x4d9]
00328764  f1 fe ff ea                                      b #0x328330
00328768  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
0032876c  40 00 9d e5                                      ldr r0, [sp, #0x40]
00328770  14 10 93 e5                                      ldr r1, [r3, #0x14]
00328774  00 60 a0 e1                                      mov r6, r0
00328778  31 f7 ff eb                                      bl #0x326444
0032877c  eb fe ff ea                                      b #0x328330
00328780  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00328784  68 60 9d e5                                      ldr r6, [sp, #0x68]
00328788  00 30 93 e5                                      ldr r3, [r3]
0032878c  8c 34 8d e5                                      str r3, [sp, #0x48c]
00328790  e6 fe ff ea                                      b #0x328330
00328794  2c 30 90 e5                                      ldr r3, [r0, #0x2c]
00328798  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
0032879c  00 30 93 e5                                      ldr r3, [r3]
003287a0  b4 34 8d e5                                      str r3, [sp, #0x4b4]
003287a4  e1 fe ff ea                                      b #0x328330
003287a8  00 30 97 e5                                      ldr r3, [r7]
003287ac  07 4d 8d e2                                      add r4, sp, #0x1c0
003287b0  04 00 a0 e1                                      mov r0, r4
003287b4  14 10 95 e5                                      ldr r1, [r5, #0x14]
003287b8  10 60 93 e5                                      ldr r6, [r3, #0x10]
003287bc  4c 82 9d e5                                      ldr r8, [sp, #0x24c]
003287c0  c0 f6 ff eb                                      bl #0x3262c8
003287c4  04 32 9d e5                                      ldr r3, [sp, #0x204]
003287c8  00 20 a0 e3                                      mov r2, #0
003287cc  07 00 a0 e1                                      mov r0, r7
003287d0  00 30 8d e5                                      str r3, [sp]
003287d4  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
003287d8  04 20 8d e5                                      str r2, [sp, #4]
003287dc  08 20 8d e5                                      str r2, [sp, #8]
003287e0  0c 20 8d e5                                      str r2, [sp, #0xc]
003287e4  10 20 8d e5                                      str r2, [sp, #0x10]
003287e8  14 20 8d e5                                      str r2, [sp, #0x14]
003287ec  18 20 8d e5                                      str r2, [sp, #0x18]
003287f0  1c 20 8d e5                                      str r2, [sp, #0x1c]
003287f4  20 20 8d e5                                      str r2, [sp, #0x20]
003287f8  08 10 a0 e1                                      mov r1, r8
003287fc  03 30 8f e0                                      add r3, pc, r3
00328800  36 ff 2f e1                                      blx r6
00328804  04 02 9d e5                                      ldr r0, [sp, #0x204]
00328808  04 00 50 e1                                      cmp r0, r4
0032880c  02 00 00 0a                                      beq #0x32881c
00328810  00 00 50 e3                                      cmp r0, #0
00328814  00 00 00 0a                                      beq #0x32881c
00328818  0c 9f ff eb                                      bl #0x310450
0032881c  00 30 97 e5                                      ldr r3, [r7]
00328820  07 00 a0 e1                                      mov r0, r7
00328824  0f e0 a0 e1                                      mov lr, pc
00328828  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0032882c  03 fd ff ea                                      b #0x327c40
00328830  54 e0 9d e5                                      ldr lr, [sp, #0x54]
00328834  9f 2f 8d e2                                      add r2, sp, #0x27c
00328838  30 00 8e e2                                      add r0, lr, #0x30
0032883c  56 f5 ff eb                                      bl #0x325d9c
00328840  80 fe ff ea                                      b #0x328248
00328844  60 30 9d e5                                      ldr r3, [sp, #0x60]
00328848  9d 2f 8d e2                                      add r2, sp, #0x274
0032884c  30 00 83 e2                                      add r0, r3, #0x30
00328850  51 f5 ff eb                                      bl #0x325d9c
00328854  d0 13 9d e5                                      ldr r1, [sp, #0x3d0]
00328858  d4 33 9d e5                                      ldr r3, [sp, #0x3d4]
0032885c  03 00 51 e1                                      cmp r1, r3
00328860  e1 fd ff 1a                                      bne #0x327fec
00328864  60 c0 9d e5                                      ldr ip, [sp, #0x60]
00328868  9e 2f 8d e2                                      add r2, sp, #0x278
0032886c  30 00 8c e2                                      add r0, ip, #0x30
00328870  49 f5 ff eb                                      bl #0x325d9c
00328874  e1 fd ff ea                                      b #0x328000
00328878  58 e0 9d e5                                      ldr lr, [sp, #0x58]
0032887c  26 2e 8d e2                                      add r2, sp, #0x260
00328880  30 00 8e e2                                      add r0, lr, #0x30
00328884  44 f5 ff eb                                      bl #0x325d9c
00328888  8c 13 9d e5                                      ldr r1, [sp, #0x38c]
0032888c  90 33 9d e5                                      ldr r3, [sp, #0x390]
00328890  03 00 51 e1                                      cmp r1, r3
00328894  11 fe ff 1a                                      bne #0x3280e0
00328898  58 20 9d e5                                      ldr r2, [sp, #0x58]
0032889c  30 00 82 e2                                      add r0, r2, #0x30
003288a0  99 2f 8d e2                                      add r2, sp, #0x264
003288a4  3c f5 ff eb                                      bl #0x325d9c
003288a8  8c 13 9d e5                                      ldr r1, [sp, #0x38c]
003288ac  90 33 9d e5                                      ldr r3, [sp, #0x390]
003288b0  03 00 51 e1                                      cmp r1, r3
003288b4  11 fe ff 1a                                      bne #0x328100
003288b8  58 30 9d e5                                      ldr r3, [sp, #0x58]
003288bc  9a 2f 8d e2                                      add r2, sp, #0x268
003288c0  30 00 83 e2                                      add r0, r3, #0x30
003288c4  34 f5 ff eb                                      bl #0x325d9c
003288c8  11 fe ff ea                                      b #0x328114
003288cc  54 20 9d e5                                      ldr r2, [sp, #0x54]
003288d0  30 00 82 e2                                      add r0, r2, #0x30
003288d4  a2 2f 8d e2                                      add r2, sp, #0x288
003288d8  2f f5 ff eb                                      bl #0x325d9c
003288dc  48 13 9d e5                                      ldr r1, [sp, #0x348]
003288e0  4c 23 9d e5                                      ldr r2, [sp, #0x34c]
003288e4  00 30 a0 e3                                      mov r3, #0
003288e8  84 32 8d e5                                      str r3, [sp, #0x284]
003288ec  02 00 51 e1                                      cmp r1, r2
003288f0  3e fe ff 1a                                      bne #0x3281f0
003288f4  54 30 9d e5                                      ldr r3, [sp, #0x54]
003288f8  a1 2f 8d e2                                      add r2, sp, #0x284
003288fc  30 00 83 e2                                      add r0, r3, #0x30
00328900  25 f5 ff eb                                      bl #0x325d9c
00328904  48 13 9d e5                                      ldr r1, [sp, #0x348]
00328908  4c 23 9d e5                                      ldr r2, [sp, #0x34c]
0032890c  00 30 a0 e3                                      mov r3, #0
00328910  80 32 8d e5                                      str r3, [sp, #0x280]
00328914  02 00 51 e1                                      cmp r1, r2
00328918  3d fe ff 1a                                      bne #0x328214
0032891c  54 c0 9d e5                                      ldr ip, [sp, #0x54]
00328920  0a 2d 8d e2                                      add r2, sp, #0x280
00328924  30 00 8c e2                                      add r0, ip, #0x30
00328928  1b f5 ff eb                                      bl #0x325d9c
0032892c  48 13 9d e5                                      ldr r1, [sp, #0x348]
00328930  3b fe ff ea                                      b #0x328224
00328934  75 96 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00328938  9c ce 66 00 ac 40 00 00 5c 6f 59 00 44 2c 00 00  .byte 0x9c, 0xce, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x5c, 0x6f, 0x59, 0x00, 0x44, 0x2c, 0x00, 0x00
00328948  7c 29 00 00 74 3b 5a 00 28 45 00 00 e4 0e 00 00  .byte 0x7c, 0x29, 0x00, 0x00, 0x74, 0x3b, 0x5a, 0x00, 0x28, 0x45, 0x00, 0x00, 0xe4, 0x0e, 0x00, 0x00
00328958  94 26 00 00 38 16 00 00 c0 24 00 00 18 21 00 00  .byte 0x94, 0x26, 0x00, 0x00, 0x38, 0x16, 0x00, 0x00, 0xc0, 0x24, 0x00, 0x00, 0x18, 0x21, 0x00, 0x00
00328968  84 0b 00 00 9c 37 5a 00 d8 4a 00 00 98 36 5a 00  .byte 0x84, 0x0b, 0x00, 0x00, 0x9c, 0x37, 0x5a, 0x00, 0xd8, 0x4a, 0x00, 0x00, 0x98, 0x36, 0x5a, 0x00
00328978  f0 0e 00 00 54 5f 5b 00 e8 68 59 00 ec 68 59 00  .byte 0xf0, 0x0e, 0x00, 0x00, 0x54, 0x5f, 0x5b, 0x00, 0xe8, 0x68, 0x59, 0x00, 0xec, 0x68, 0x59, 0x00
00328988  f8 68 59 00 44 2b 00 00 ec 59 5b 00              .byte 0xf8, 0x68, 0x59, 0x00, 0x44, 0x2b, 0x00, 0x00, 0xec, 0x59, 0x5b, 0x00

; FUNCTION 0x00328994, declared_size=208, range_size=208, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable11writeValuesEPNS_2io10IWriteFileE
; demangled: glitch::debugger::CTweakable::writeValues(glitch::io::IWriteFile*)
; decoder-mode: arm
00328994  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00328998  8c d0 4d e2                                      sub sp, sp, #0x8c
0032899c  70 50 8d e2                                      add r5, sp, #0x70
003289a0  00 70 a0 e1                                      mov r7, r0
003289a4  05 00 a0 e1                                      mov r0, r5
003289a8  91 36 09 eb                                      bl #0x5763f4
003289ac  05 00 a0 e1                                      mov r0, r5
003289b0  52 38 09 eb                                      bl #0x576b00
003289b4  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003289b8  28 60 8d e2                                      add r6, sp, #0x28
003289bc  00 40 a0 e3                                      mov r4, #0
003289c0  84 20 8d e2                                      add r2, sp, #0x84
003289c4  01 10 8f e0                                      add r1, pc, r1
003289c8  06 00 a0 e1                                      mov r0, r6
003289cc  4a f5 ff eb                                      bl #0x325efc
003289d0  04 20 a0 e1                                      mov r2, r4
003289d4  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
003289d8  04 30 a0 e1                                      mov r3, r4
003289dc  05 00 a0 e1                                      mov r0, r5
003289e0  00 40 8d e5                                      str r4, [sp]
003289e4  04 40 8d e5                                      str r4, [sp, #4]
003289e8  08 40 8d e5                                      str r4, [sp, #8]
003289ec  0c 40 8d e5                                      str r4, [sp, #0xc]
003289f0  10 40 8d e5                                      str r4, [sp, #0x10]
003289f4  14 40 8d e5                                      str r4, [sp, #0x14]
003289f8  18 40 8d e5                                      str r4, [sp, #0x18]
003289fc  1c 40 8d e5                                      str r4, [sp, #0x1c]
00328a00  20 40 8d e5                                      str r4, [sp, #0x20]
00328a04  df 37 09 eb                                      bl #0x576988
00328a08  05 00 a0 e1                                      mov r0, r5
00328a0c  ca 36 09 eb                                      bl #0x57653c
00328a10  04 30 a0 e1                                      mov r3, r4
00328a14  05 20 a0 e1                                      mov r2, r5
00328a18  07 00 a0 e1                                      mov r0, r7
00328a1c  1c 10 87 e2                                      add r1, r7, #0x1c
00328a20  6e fc ff eb                                      bl #0x327be0
00328a24  05 00 a0 e1                                      mov r0, r5
00328a28  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
00328a2c  d7 36 09 eb                                      bl #0x576590
00328a30  05 00 a0 e1                                      mov r0, r5
00328a34  c0 36 09 eb                                      bl #0x57653c
00328a38  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00328a3c  06 00 50 e1                                      cmp r0, r6
00328a40  02 00 00 0a                                      beq #0x328a50
00328a44  04 00 50 e1                                      cmp r0, r4
00328a48  00 00 00 0a                                      beq #0x328a50
00328a4c  7f 9e ff eb                                      bl #0x310450
00328a50  05 00 a0 e1                                      mov r0, r5
00328a54  8a 36 09 eb                                      bl #0x576484
00328a58  8c d0 8d e2                                      add sp, sp, #0x8c
00328a5c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00328a60  14 62 59 00                                      .byte 0x14, 0x62, 0x59, 0x00

; FUNCTION 0x0032a088, declared_size=156, range_size=156, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakableD1Ev
; demangled: glitch::debugger::CTweakable::~CTweakable()
; decoder-mode: arm
0032a088  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
0032a08c  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
0032a090  70 40 2d e9                                      push {r4, r5, r6, lr}
0032a094  03 30 8f e0                                      add r3, pc, r3
0032a098  02 20 93 e7                                      ldr r2, [r3, r2]
0032a09c  00 10 a0 e1                                      mov r1, r0
0032a0a0  00 40 a0 e1                                      mov r4, r0
0032a0a4  08 20 82 e2                                      add r2, r2, #8
0032a0a8  70 20 81 e4                                      str r2, [r1], #0x70
0032a0ac  70 00 90 e5                                      ldr r0, [r0, #0x70]
0032a0b0  00 00 50 e3                                      cmp r0, #0
0032a0b4  04 00 00 0a                                      beq #0x32a0cc
0032a0b8  08 10 91 e5                                      ldr r1, [r1, #8]
0032a0bc  01 10 60 e0                                      rsb r1, r0, r1
0032a0c0  80 00 51 e3                                      cmp r1, #0x80
0032a0c4  12 00 00 8a                                      bhi #0x32a114
0032a0c8  8c 7b 0f eb                                      bl #0x708f00
0032a0cc  54 00 84 e2                                      add r0, r4, #0x54
0032a0d0  35 a6 ff eb                                      bl #0x3139ac
0032a0d4  1c 00 84 e2                                      add r0, r4, #0x1c
0032a0d8  21 ff ff eb                                      bl #0x329d64
0032a0dc  14 30 94 e5                                      ldr r3, [r4, #0x14]
0032a0e0  00 00 53 e3                                      cmp r3, #0
0032a0e4  08 00 00 0a                                      beq #0x32a10c
0032a0e8  04 50 84 e2                                      add r5, r4, #4
0032a0ec  05 00 a0 e1                                      mov r0, r5
0032a0f0  08 10 94 e5                                      ldr r1, [r4, #8]
0032a0f4  2b fc ff eb                                      bl #0x3291a8
0032a0f8  00 30 a0 e3                                      mov r3, #0
0032a0fc  10 50 84 e5                                      str r5, [r4, #0x10]
0032a100  14 30 84 e5                                      str r3, [r4, #0x14]
0032a104  0c 50 84 e5                                      str r5, [r4, #0xc]
0032a108  08 30 84 e5                                      str r3, [r4, #8]
0032a10c  04 00 a0 e1                                      mov r0, r4
0032a110  70 80 bd e8                                      pop {r4, r5, r6, pc}
0032a114  c9 98 ff eb                                      bl #0x310440
0032a118  eb ff ff ea                                      b #0x32a0cc
; mapping-symbol data/literal pool
0032a11c  fc a9 66 00 98 3e 00 00                          .byte 0xfc, 0xa9, 0x66, 0x00, 0x98, 0x3e, 0x00, 0x00

; FUNCTION 0x0032a124, declared_size=28, range_size=28, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakableD0Ev
; demangled: glitch::debugger::CTweakable::~CTweakable()
; decoder-mode: arm
0032a124  10 40 2d e9                                      push {r4, lr}
0032a128  00 40 a0 e1                                      mov r4, r0
0032a12c  d5 ff ff eb                                      bl #0x32a088
0032a130  04 00 a0 e1                                      mov r0, r4
0032a134  c1 98 ff eb                                      bl #0x310440
0032a138  04 00 a0 e1                                      mov r0, r4
0032a13c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0032b3b4, declared_size=668, range_size=668, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable8setValueERNS_2io11CAttributesEi
; demangled: glitch::debugger::CTweakable::setValue(glitch::io::CAttributes&, int)
; decoder-mode: arm
0032b3b4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032b3b8  88 42 9f e5                                      ldr r4, [pc, #0x288]
0032b3bc  88 72 9f e5                                      ldr r7, [pc, #0x288]
0032b3c0  02 90 a0 e1                                      mov sb, r2
0032b3c4  04 40 8f e0                                      add r4, pc, r4
0032b3c8  07 30 94 e7                                      ldr r3, [r4, r7]
0032b3cc  64 d0 4d e2                                      sub sp, sp, #0x64
0032b3d0  01 80 a0 e1                                      mov r8, r1
0032b3d4  00 20 93 e5                                      ldr r2, [r3]
0032b3d8  00 60 a0 e1                                      mov r6, r0
0032b3dc  00 30 98 e5                                      ldr r3, [r8]
0032b3e0  09 10 a0 e1                                      mov r1, sb
0032b3e4  5c 20 8d e5                                      str r2, [sp, #0x5c]
0032b3e8  08 00 a0 e1                                      mov r0, r8
0032b3ec  0f e0 a0 e1                                      mov lr, pc
0032b3f0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0032b3f4  04 a0 86 e2                                      add sl, r6, #4
0032b3f8  60 10 8d e2                                      add r1, sp, #0x60
0032b3fc  20 00 21 e5                                      str r0, [r1, #-0x20]!
0032b400  0a 00 a0 e1                                      mov r0, sl
0032b404  8e ff ff eb                                      bl #0x32b244
0032b408  0a 00 50 e1                                      cmp r0, sl
0032b40c  00 50 a0 e1                                      mov r5, r0
0032b410  26 00 00 0a                                      beq #0x32b4b0
0032b414  28 30 90 e5                                      ldr r3, [r0, #0x28]
0032b418  09 00 53 e3                                      cmp r3, #9
0032b41c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
0032b420  1d 00 00 ea                                      b #0x32b49c
0032b424  38 00 00 ea                                      b #0x32b50c
0032b428  3f 00 00 ea                                      b #0x32b52c
0032b42c  06 00 00 ea                                      b #0x32b44c
0032b430  45 00 00 ea                                      b #0x32b54c
0032b434  18 00 00 ea                                      b #0x32b49c
0032b438  4b 00 00 ea                                      b #0x32b56c
0032b43c  5b 00 00 ea                                      b #0x32b5b0
0032b440  65 00 00 ea                                      b #0x32b5dc
0032b444  70 00 00 ea                                      b #0x32b60c
0032b448  1f 00 00 ea                                      b #0x32b4cc
0032b44c  2c b0 90 e5                                      ldr fp, [r0, #0x2c]
0032b450  44 a0 8d e2                                      add sl, sp, #0x44
0032b454  08 10 a0 e1                                      mov r1, r8
0032b458  09 20 a0 e1                                      mov r2, sb
0032b45c  00 30 98 e5                                      ldr r3, [r8]
0032b460  0a 00 a0 e1                                      mov r0, sl
0032b464  0f e0 a0 e1                                      mov lr, pc
0032b468  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0032b46c  0a 00 5b e1                                      cmp fp, sl
0032b470  03 00 00 0a                                      beq #0x32b484
0032b474  0b 00 a0 e1                                      mov r0, fp
0032b478  58 10 9d e5                                      ldr r1, [sp, #0x58]
0032b47c  54 20 9d e5                                      ldr r2, [sp, #0x54]
0032b480  c0 d5 ff eb                                      bl #0x320b88
0032b484  58 00 9d e5                                      ldr r0, [sp, #0x58]
0032b488  0a 00 50 e1                                      cmp r0, sl
0032b48c  02 00 00 0a                                      beq #0x32b49c
0032b490  00 00 50 e3                                      cmp r0, #0
0032b494  00 00 00 0a                                      beq #0x32b49c
0032b498  ec 93 ff eb                                      bl #0x310450
0032b49c  06 00 a0 e1                                      mov r0, r6
0032b4a0  10 10 85 e2                                      add r1, r5, #0x10
0032b4a4  00 30 96 e5                                      ldr r3, [r6]
0032b4a8  0f e0 a0 e1                                      mov lr, pc
0032b4ac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0032b4b0  07 30 94 e7                                      ldr r3, [r4, r7]
0032b4b4  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0032b4b8  00 30 93 e5                                      ldr r3, [r3]
0032b4bc  03 00 52 e1                                      cmp r2, r3
0032b4c0  5f 00 00 1a                                      bne #0x32b644
0032b4c4  64 d0 8d e2                                      add sp, sp, #0x64
0032b4c8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032b4cc  00 30 98 e5                                      ldr r3, [r8]
0032b4d0  08 10 a0 e1                                      mov r1, r8
0032b4d4  09 20 a0 e1                                      mov r2, sb
0032b4d8  1c 00 8d e2                                      add r0, sp, #0x1c
0032b4dc  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
0032b4e0  0f e0 a0 e1                                      mov lr, pc
0032b4e4  d0 f1 93 e5                                      ldr pc, [r3, #0x1d0]
0032b4e8  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0032b4ec  00 30 88 e5                                      str r3, [r8]
0032b4f0  20 30 9d e5                                      ldr r3, [sp, #0x20]
0032b4f4  04 30 88 e5                                      str r3, [r8, #4]
0032b4f8  24 30 9d e5                                      ldr r3, [sp, #0x24]
0032b4fc  08 30 88 e5                                      str r3, [r8, #8]
0032b500  28 30 9d e5                                      ldr r3, [sp, #0x28]
0032b504  0c 30 88 e5                                      str r3, [r8, #0xc]
0032b508  e3 ff ff ea                                      b #0x32b49c
0032b50c  08 00 a0 e1                                      mov r0, r8
0032b510  00 30 98 e5                                      ldr r3, [r8]
0032b514  09 10 a0 e1                                      mov r1, sb
0032b518  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
0032b51c  0f e0 a0 e1                                      mov lr, pc
0032b520  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
0032b524  00 00 88 e5                                      str r0, [r8]
0032b528  db ff ff ea                                      b #0x32b49c
0032b52c  08 00 a0 e1                                      mov r0, r8
0032b530  00 30 98 e5                                      ldr r3, [r8]
0032b534  09 10 a0 e1                                      mov r1, sb
0032b538  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
0032b53c  0f e0 a0 e1                                      mov lr, pc
0032b540  74 f0 93 e5                                      ldr pc, [r3, #0x74]
0032b544  00 00 88 e5                                      str r0, [r8]
0032b548  d3 ff ff ea                                      b #0x32b49c
0032b54c  08 00 a0 e1                                      mov r0, r8
0032b550  00 30 98 e5                                      ldr r3, [r8]
0032b554  09 10 a0 e1                                      mov r1, sb
0032b558  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
0032b55c  0f e0 a0 e1                                      mov lr, pc
0032b560  e8 f0 93 e5                                      ldr pc, [r3, #0xe8]
0032b564  00 00 c8 e5                                      strb r0, [r8]
0032b568  cb ff ff ea                                      b #0x32b49c
0032b56c  09 10 a0 e1                                      mov r1, sb
0032b570  00 30 98 e5                                      ldr r3, [r8]
0032b574  08 00 a0 e1                                      mov r0, r8
0032b578  0f e0 a0 e1                                      mov lr, pc
0032b57c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
0032b580  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0032b584  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0032b588  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0032b58c  11 10 cd e5                                      strb r1, [sp, #0x11]
0032b590  12 20 cd e5                                      strb r2, [sp, #0x12]
0032b594  13 30 cd e5                                      strb r3, [sp, #0x13]
0032b598  10 00 cd e5                                      strb r0, [sp, #0x10]
0032b59c  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
0032b5a0  10 10 8d e2                                      add r1, sp, #0x10
0032b5a4  04 20 a0 e3                                      mov r2, #4
0032b5a8  ae 8c ff eb                                      bl #0x30e868
0032b5ac  ba ff ff ea                                      b #0x32b49c
0032b5b0  2c b0 90 e5                                      ldr fp, [r0, #0x2c]
0032b5b4  08 10 a0 e1                                      mov r1, r8
0032b5b8  09 20 a0 e1                                      mov r2, sb
0032b5bc  0d 00 a0 e1                                      mov r0, sp
0032b5c0  00 30 98 e5                                      ldr r3, [r8]
0032b5c4  0d a0 a0 e1                                      mov sl, sp
0032b5c8  0f e0 a0 e1                                      mov lr, pc
0032b5cc  40 f1 93 e5                                      ldr pc, [r3, #0x140]
0032b5d0  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
0032b5d4  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
0032b5d8  af ff ff ea                                      b #0x32b49c
0032b5dc  00 30 98 e5                                      ldr r3, [r8]
0032b5e0  08 10 a0 e1                                      mov r1, r8
0032b5e4  09 20 a0 e1                                      mov r2, sb
0032b5e8  38 00 8d e2                                      add r0, sp, #0x38
0032b5ec  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
0032b5f0  0f e0 a0 e1                                      mov lr, pc
0032b5f4  a0 f1 93 e5                                      ldr pc, [r3, #0x1a0]
0032b5f8  38 30 9d e5                                      ldr r3, [sp, #0x38]
0032b5fc  00 30 88 e5                                      str r3, [r8]
0032b600  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
0032b604  04 30 88 e5                                      str r3, [r8, #4]
0032b608  a3 ff ff ea                                      b #0x32b49c
0032b60c  00 30 98 e5                                      ldr r3, [r8]
0032b610  08 10 a0 e1                                      mov r1, r8
0032b614  09 20 a0 e1                                      mov r2, sb
0032b618  2c 00 8d e2                                      add r0, sp, #0x2c
0032b61c  2c 80 95 e5                                      ldr r8, [r5, #0x2c]
0032b620  0f e0 a0 e1                                      mov lr, pc
0032b624  b8 f1 93 e5                                      ldr pc, [r3, #0x1b8]
0032b628  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0032b62c  00 30 88 e5                                      str r3, [r8]
0032b630  30 30 9d e5                                      ldr r3, [sp, #0x30]
0032b634  04 30 88 e5                                      str r3, [r8, #4]
0032b638  34 30 9d e5                                      ldr r3, [sp, #0x34]
0032b63c  08 30 88 e5                                      str r3, [r8, #8]
0032b640  95 ff ff ea                                      b #0x32b49c
0032b644  31 8b ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032b648  cc 96 66 00 ac 40 00 00                          .byte 0xcc, 0x96, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0032b650, declared_size=104, range_size=104, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable9loadGroupERNS_2io11CAttributesEb.clone.25
; demangled: glitch::debugger::CTweakable::loadGroup(glitch::io::CAttributes&, bool) [clone .clone.25]
; decoder-mode: arm
0032b650  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032b654  00 70 a0 e1                                      mov r7, r0
0032b658  00 30 91 e5                                      ldr r3, [r1]
0032b65c  01 00 a0 e1                                      mov r0, r1
0032b660  01 40 a0 e1                                      mov r4, r1
0032b664  0f e0 a0 e1                                      mov lr, pc
0032b668  40 f0 93 e5                                      ldr pc, [r3, #0x40]
0032b66c  00 60 50 e2                                      subs r6, r0, #0
0032b670  0f 00 00 0a                                      beq #0x32b6b4
0032b674  00 50 a0 e3                                      mov r5, #0
0032b678  05 10 a0 e1                                      mov r1, r5
0032b67c  00 30 94 e5                                      ldr r3, [r4]
0032b680  04 00 a0 e1                                      mov r0, r4
0032b684  0f e0 a0 e1                                      mov lr, pc
0032b688  44 f0 93 e5                                      ldr pc, [r3, #0x44]
0032b68c  07 00 a0 e1                                      mov r0, r7
0032b690  04 10 a0 e1                                      mov r1, r4
0032b694  ed ff ff eb                                      bl #0x32b650
0032b698  01 50 85 e2                                      add r5, r5, #1
0032b69c  00 30 94 e5                                      ldr r3, [r4]
0032b6a0  04 00 a0 e1                                      mov r0, r4
0032b6a4  0f e0 a0 e1                                      mov lr, pc
0032b6a8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0032b6ac  06 00 55 e1                                      cmp r5, r6
0032b6b0  f0 ff ff 1a                                      bne #0x32b678
0032b6b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0032b6b8, declared_size=368, range_size=368, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable7loadXMLEPKcb
; demangled: glitch::debugger::CTweakable::loadXML(char const*, bool)
; decoder-mode: arm
0032b6b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032b6bc  58 51 9f e5                                      ldr r5, [pc, #0x158]
0032b6c0  58 91 9f e5                                      ldr sb, [pc, #0x158]
0032b6c4  c4 d0 4d e2                                      sub sp, sp, #0xc4
0032b6c8  05 50 8f e0                                      add r5, pc, r5
0032b6cc  09 30 95 e7                                      ldr r3, [r5, sb]
0032b6d0  74 70 8d e2                                      add r7, sp, #0x74
0032b6d4  00 60 a0 e1                                      mov r6, r0
0032b6d8  00 30 93 e5                                      ldr r3, [r3]
0032b6dc  00 20 a0 e3                                      mov r2, #0
0032b6e0  07 00 a0 e1                                      mov r0, r7
0032b6e4  bc 30 8d e5                                      str r3, [sp, #0xbc]
0032b6e8  11 14 09 eb                                      bl #0x570734
0032b6ec  80 30 9d e5                                      ldr r3, [sp, #0x80]
0032b6f0  00 00 53 e3                                      cmp r3, #0
0032b6f4  3e 00 00 0a                                      beq #0x32b7f4
0032b6f8  6c 30 96 e5                                      ldr r3, [r6, #0x6c]
0032b6fc  07 10 a0 e1                                      mov r1, r7
0032b700  08 80 8d e2                                      add r8, sp, #8
0032b704  34 30 93 e5                                      ldr r3, [r3, #0x34]
0032b708  18 40 8d e2                                      add r4, sp, #0x18
0032b70c  03 00 a0 e1                                      mov r0, r3
0032b710  00 30 93 e5                                      ldr r3, [r3]
0032b714  0f e0 a0 e1                                      mov lr, pc
0032b718  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0032b71c  00 20 a0 e3                                      mov r2, #0
0032b720  02 30 a0 e1                                      mov r3, r2
0032b724  00 10 a0 e1                                      mov r1, r0
0032b728  00 b0 a0 e1                                      mov fp, r0
0032b72c  08 00 a0 e1                                      mov r0, r8
0032b730  78 15 09 eb                                      bl #0x570d18
0032b734  6c 30 96 e5                                      ldr r3, [r6, #0x6c]
0032b738  04 00 a0 e1                                      mov r0, r4
0032b73c  10 10 93 e5                                      ldr r1, [r3, #0x10]
0032b740  0c dd 08 eb                                      bl #0x562b78
0032b744  08 00 a0 e1                                      mov r0, r8
0032b748  04 10 a0 e1                                      mov r1, r4
0032b74c  73 18 09 eb                                      bl #0x571920
0032b750  01 00 00 ea                                      b #0x32b75c
0032b754  04 00 a0 e1                                      mov r0, r4
0032b758  5e d8 08 eb                                      bl #0x5618d8
0032b75c  04 00 a0 e1                                      mov r0, r4
0032b760  6f d8 08 eb                                      bl #0x561924
0032b764  14 30 90 e5                                      ldr r3, [r0, #0x14]
0032b768  10 20 90 e5                                      ldr r2, [r0, #0x10]
0032b76c  03 00 52 e1                                      cmp r2, r3
0032b770  f7 ff ff 1a                                      bne #0x32b754
0032b774  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0032b778  a4 a0 8d e2                                      add sl, sp, #0xa4
0032b77c  04 10 a0 e1                                      mov r1, r4
0032b780  0a 00 a0 e1                                      mov r0, sl
0032b784  02 20 8f e0                                      add r2, pc, r2
0032b788  f6 e3 08 eb                                      bl #0x564768
0032b78c  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
0032b790  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0032b794  01 00 53 e1                                      cmp r3, r1
0032b798  06 00 00 0a                                      beq #0x32b7b8
0032b79c  01 00 a0 e1                                      mov r0, r1
0032b7a0  04 10 8d e5                                      str r1, [sp, #4]
0032b7a4  aa 89 ff eb                                      bl #0x30de54
0032b7a8  04 10 9d e5                                      ldr r1, [sp, #4]
0032b7ac  00 20 81 e0                                      add r2, r1, r0
0032b7b0  54 00 86 e2                                      add r0, r6, #0x54
0032b7b4  89 94 ff eb                                      bl #0x3109e0
0032b7b8  06 00 a0 e1                                      mov r0, r6
0032b7bc  04 10 a0 e1                                      mov r1, r4
0032b7c0  a2 ff ff eb                                      bl #0x32b650
0032b7c4  0b 00 a0 e1                                      mov r0, fp
0032b7c8  6d c7 ff eb                                      bl #0x31d584
0032b7cc  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
0032b7d0  0a 00 50 e1                                      cmp r0, sl
0032b7d4  02 00 00 0a                                      beq #0x32b7e4
0032b7d8  00 00 50 e3                                      cmp r0, #0
0032b7dc  00 00 00 0a                                      beq #0x32b7e4
0032b7e0  1a 93 ff eb                                      bl #0x310450
0032b7e4  04 00 a0 e1                                      mov r0, r4
0032b7e8  0a e3 08 eb                                      bl #0x564418
0032b7ec  08 00 a0 e1                                      mov r0, r8
0032b7f0  68 15 09 eb                                      bl #0x570d98
0032b7f4  07 00 a0 e1                                      mov r0, r7
0032b7f8  98 13 09 eb                                      bl #0x570660
0032b7fc  09 30 95 e7                                      ldr r3, [r5, sb]
0032b800  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
0032b804  00 30 93 e5                                      ldr r3, [r3]
0032b808  03 00 52 e1                                      cmp r2, r3
0032b80c  01 00 00 1a                                      bne #0x32b818
0032b810  c4 d0 8d e2                                      add sp, sp, #0xc4
0032b814  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0032b818  bc 8a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032b81c  c8 93 66 00 ac 40 00 00 ac 38 59 00              .byte 0xc8, 0x93, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xac, 0x38, 0x59, 0x00

; FUNCTION 0x0032bb98, declared_size=156, range_size=156, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable20registerVariableNameEPKc
; demangled: glitch::debugger::CTweakable::registerVariableName(char const*)
; decoder-mode: arm
0032bb98  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032bb9c  88 40 9f e5                                      ldr r4, [pc, #0x88]
0032bba0  88 50 9f e5                                      ldr r5, [pc, #0x88]
0032bba4  2c d0 4d e2                                      sub sp, sp, #0x2c
0032bba8  04 40 8f e0                                      add r4, pc, r4
0032bbac  05 30 94 e7                                      ldr r3, [r4, r5]
0032bbb0  04 60 80 e2                                      add r6, r0, #4
0032bbb4  04 10 8d e5                                      str r1, [sp, #4]
0032bbb8  00 30 93 e5                                      ldr r3, [r3]
0032bbbc  00 70 a0 e1                                      mov r7, r0
0032bbc0  04 10 8d e2                                      add r1, sp, #4
0032bbc4  06 00 a0 e1                                      mov r0, r6
0032bbc8  24 30 8d e5                                      str r3, [sp, #0x24]
0032bbcc  9c fd ff eb                                      bl #0x32b244
0032bbd0  00 00 56 e1                                      cmp r6, r0
0032bbd4  06 00 00 0a                                      beq #0x32bbf4
0032bbd8  05 30 94 e7                                      ldr r3, [r4, r5]
0032bbdc  24 20 9d e5                                      ldr r2, [sp, #0x24]
0032bbe0  00 30 93 e5                                      ldr r3, [r3]
0032bbe4  03 00 52 e1                                      cmp r2, r3
0032bbe8  0e 00 00 1a                                      bne #0x32bc28
0032bbec  2c d0 8d e2                                      add sp, sp, #0x2c
0032bbf0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032bbf4  50 70 97 e5                                      ldr r7, [r7, #0x50]
0032bbf8  0c 60 8d e2                                      add r6, sp, #0xc
0032bbfc  08 20 8d e2                                      add r2, sp, #8
0032bc00  04 10 9d e5                                      ldr r1, [sp, #4]
0032bc04  18 70 87 e2                                      add r7, r7, #0x18
0032bc08  06 00 a0 e1                                      mov r0, r6
0032bc0c  36 a1 ff eb                                      bl #0x3140ec
0032bc10  07 00 a0 e1                                      mov r0, r7
0032bc14  06 10 a0 e1                                      mov r1, r6
0032bc18  ae ff ff eb                                      bl #0x32bad8
0032bc1c  06 00 a0 e1                                      mov r0, r6
0032bc20  61 9f ff eb                                      bl #0x3139ac
0032bc24  eb ff ff ea                                      b #0x32bbd8
0032bc28  b8 89 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032bc2c  e8 8e 66 00 ac 40 00 00                          .byte 0xe8, 0x8e, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0032cfc8, declared_size=192, range_size=192, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakableC2EPNS_7IDeviceE
; demangled: glitch::debugger::CTweakable::CTweakable(glitch::IDevice*)
; decoder-mode: arm
0032cfc8  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0032cfcc  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0032cfd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0032cfd4  03 30 8f e0                                      add r3, pc, r3
0032cfd8  02 20 93 e7                                      ldr r2, [r3, r2]
0032cfdc  00 40 a0 e1                                      mov r4, r0
0032cfe0  00 50 a0 e3                                      mov r5, #0
0032cfe4  08 20 82 e2                                      add r2, r2, #8
0032cfe8  1c 60 84 e2                                      add r6, r4, #0x1c
0032cfec  00 20 84 e5                                      str r2, [r4]
0032cff0  08 50 84 e5                                      str r5, [r4, #8]
0032cff4  04 50 e0 e5                                      strb r5, [r0, #4]!
0032cff8  10 00 84 e5                                      str r0, [r4, #0x10]
0032cffc  01 70 a0 e1                                      mov r7, r1
0032d000  0c 00 84 e5                                      str r0, [r4, #0xc]
0032d004  14 50 84 e5                                      str r5, [r4, #0x14]
0032d008  06 00 a0 e1                                      mov r0, r6
0032d00c  2c 60 84 e5                                      str r6, [r4, #0x2c]
0032d010  30 60 84 e5                                      str r6, [r4, #0x30]
0032d014  10 10 a0 e3                                      mov r1, #0x10
0032d018  97 91 ff eb                                      bl #0x31167c
0032d01c  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
0032d020  54 30 84 e2                                      add r3, r4, #0x54
0032d024  03 00 a0 e1                                      mov r0, r3
0032d028  00 50 c2 e5                                      strb r5, [r2]
0032d02c  10 10 a0 e3                                      mov r1, #0x10
0032d030  64 30 84 e5                                      str r3, [r4, #0x64]
0032d034  68 30 84 e5                                      str r3, [r4, #0x68]
0032d038  34 50 84 e5                                      str r5, [r4, #0x34]
0032d03c  38 50 84 e5                                      str r5, [r4, #0x38]
0032d040  3c 50 84 e5                                      str r5, [r4, #0x3c]
0032d044  40 50 84 e5                                      str r5, [r4, #0x40]
0032d048  44 50 84 e5                                      str r5, [r4, #0x44]
0032d04c  48 50 84 e5                                      str r5, [r4, #0x48]
0032d050  4c 50 84 e5                                      str r5, [r4, #0x4c]
0032d054  50 50 84 e5                                      str r5, [r4, #0x50]
0032d058  87 91 ff eb                                      bl #0x31167c
0032d05c  64 30 94 e5                                      ldr r3, [r4, #0x64]
0032d060  04 00 a0 e1                                      mov r0, r4
0032d064  00 50 c3 e5                                      strb r5, [r3]
0032d068  6c 70 84 e5                                      str r7, [r4, #0x6c]
0032d06c  78 50 84 e5                                      str r5, [r4, #0x78]
0032d070  50 60 84 e5                                      str r6, [r4, #0x50]
0032d074  70 50 84 e5                                      str r5, [r4, #0x70]
0032d078  74 50 84 e5                                      str r5, [r4, #0x74]
0032d07c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0032d080  bc 7a 66 00 98 3e 00 00                          .byte 0xbc, 0x7a, 0x66, 0x00, 0x98, 0x3e, 0x00, 0x00

; FUNCTION 0x0032eeb8, declared_size=148, range_size=148, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable16registerVariableEPKcRNS_5video6SColorE
; demangled: glitch::debugger::CTweakable::registerVariable(char const*, glitch::video::SColor&)
; decoder-mode: arm
0032eeb8  84 30 9f e5                                      ldr r3, [pc, #0x84]
0032eebc  84 c0 9f e5                                      ldr ip, [pc, #0x84]
0032eec0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032eec4  03 30 8f e0                                      add r3, pc, r3
0032eec8  0c 50 93 e7                                      ldr r5, [r3, ip]
0032eecc  02 70 a0 e1                                      mov r7, r2
0032eed0  4c d0 4d e2                                      sub sp, sp, #0x4c
0032eed4  00 20 95 e5                                      ldr r2, [r5]
0032eed8  00 60 a0 e1                                      mov r6, r0
0032eedc  04 10 8d e5                                      str r1, [sp, #4]
0032eee0  44 20 8d e5                                      str r2, [sp, #0x44]
0032eee4  2b f3 ff eb                                      bl #0x32bb98
0032eee8  04 00 86 e2                                      add r0, r6, #4
0032eeec  04 10 8d e2                                      add r1, sp, #4
0032eef0  7c ff ff eb                                      bl #0x32ece8
0032eef4  0c 40 8d e2                                      add r4, sp, #0xc
0032eef8  07 20 a0 e1                                      mov r2, r7
0032eefc  00 60 a0 e1                                      mov r6, r0
0032ef00  05 10 a0 e3                                      mov r1, #5
0032ef04  04 00 a0 e1                                      mov r0, r4
0032ef08  5e f8 ff eb                                      bl #0x32d088
0032ef0c  04 10 a0 e1                                      mov r1, r4
0032ef10  06 00 a0 e1                                      mov r0, r6
0032ef14  de c4 ff eb                                      bl #0x320294
0032ef18  20 00 84 e2                                      add r0, r4, #0x20
0032ef1c  a2 92 ff eb                                      bl #0x3139ac
0032ef20  08 00 84 e2                                      add r0, r4, #8
0032ef24  a0 92 ff eb                                      bl #0x3139ac
0032ef28  44 20 9d e5                                      ldr r2, [sp, #0x44]
0032ef2c  00 30 95 e5                                      ldr r3, [r5]
0032ef30  03 00 52 e1                                      cmp r2, r3
0032ef34  01 00 00 1a                                      bne #0x32ef40
0032ef38  4c d0 8d e2                                      add sp, sp, #0x4c
0032ef3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032ef40  f2 7c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032ef44  cc 5b 66 00 ac 40 00 00                          .byte 0xcc, 0x5b, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0032ef4c, declared_size=148, range_size=148, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable16registerVariableEPKcRf
; demangled: glitch::debugger::CTweakable::registerVariable(char const*, float&)
; decoder-mode: arm
0032ef4c  84 30 9f e5                                      ldr r3, [pc, #0x84]
0032ef50  84 c0 9f e5                                      ldr ip, [pc, #0x84]
0032ef54  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032ef58  03 30 8f e0                                      add r3, pc, r3
0032ef5c  0c 50 93 e7                                      ldr r5, [r3, ip]
0032ef60  02 70 a0 e1                                      mov r7, r2
0032ef64  4c d0 4d e2                                      sub sp, sp, #0x4c
0032ef68  00 20 95 e5                                      ldr r2, [r5]
0032ef6c  00 60 a0 e1                                      mov r6, r0
0032ef70  04 10 8d e5                                      str r1, [sp, #4]
0032ef74  44 20 8d e5                                      str r2, [sp, #0x44]
0032ef78  06 f3 ff eb                                      bl #0x32bb98
0032ef7c  04 00 86 e2                                      add r0, r6, #4
0032ef80  04 10 8d e2                                      add r1, sp, #4
0032ef84  57 ff ff eb                                      bl #0x32ece8
0032ef88  0c 40 8d e2                                      add r4, sp, #0xc
0032ef8c  07 20 a0 e1                                      mov r2, r7
0032ef90  00 60 a0 e1                                      mov r6, r0
0032ef94  01 10 a0 e3                                      mov r1, #1
0032ef98  04 00 a0 e1                                      mov r0, r4
0032ef9c  39 f8 ff eb                                      bl #0x32d088
0032efa0  04 10 a0 e1                                      mov r1, r4
0032efa4  06 00 a0 e1                                      mov r0, r6
0032efa8  b9 c4 ff eb                                      bl #0x320294
0032efac  20 00 84 e2                                      add r0, r4, #0x20
0032efb0  7d 92 ff eb                                      bl #0x3139ac
0032efb4  08 00 84 e2                                      add r0, r4, #8
0032efb8  7b 92 ff eb                                      bl #0x3139ac
0032efbc  44 20 9d e5                                      ldr r2, [sp, #0x44]
0032efc0  00 30 95 e5                                      ldr r3, [r5]
0032efc4  03 00 52 e1                                      cmp r2, r3
0032efc8  01 00 00 1a                                      bne #0x32efd4
0032efcc  4c d0 8d e2                                      add sp, sp, #0x4c
0032efd0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032efd4  cd 7c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032efd8  38 5b 66 00 ac 40 00 00                          .byte 0x38, 0x5b, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0032efe0, declared_size=148, range_size=148, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakable16registerVariableEPKcRi
; demangled: glitch::debugger::CTweakable::registerVariable(char const*, int&)
; decoder-mode: arm
0032efe0  84 30 9f e5                                      ldr r3, [pc, #0x84]
0032efe4  84 c0 9f e5                                      ldr ip, [pc, #0x84]
0032efe8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0032efec  03 30 8f e0                                      add r3, pc, r3
0032eff0  0c 50 93 e7                                      ldr r5, [r3, ip]
0032eff4  02 70 a0 e1                                      mov r7, r2
0032eff8  4c d0 4d e2                                      sub sp, sp, #0x4c
0032effc  00 20 95 e5                                      ldr r2, [r5]
0032f000  00 60 a0 e1                                      mov r6, r0
0032f004  04 10 8d e5                                      str r1, [sp, #4]
0032f008  44 20 8d e5                                      str r2, [sp, #0x44]
0032f00c  e1 f2 ff eb                                      bl #0x32bb98
0032f010  04 00 86 e2                                      add r0, r6, #4
0032f014  04 10 8d e2                                      add r1, sp, #4
0032f018  32 ff ff eb                                      bl #0x32ece8
0032f01c  0c 40 8d e2                                      add r4, sp, #0xc
0032f020  07 20 a0 e1                                      mov r2, r7
0032f024  00 60 a0 e1                                      mov r6, r0
0032f028  00 10 a0 e3                                      mov r1, #0
0032f02c  04 00 a0 e1                                      mov r0, r4
0032f030  14 f8 ff eb                                      bl #0x32d088
0032f034  04 10 a0 e1                                      mov r1, r4
0032f038  06 00 a0 e1                                      mov r0, r6
0032f03c  94 c4 ff eb                                      bl #0x320294
0032f040  20 00 84 e2                                      add r0, r4, #0x20
0032f044  58 92 ff eb                                      bl #0x3139ac
0032f048  08 00 84 e2                                      add r0, r4, #8
0032f04c  56 92 ff eb                                      bl #0x3139ac
0032f050  44 20 9d e5                                      ldr r2, [sp, #0x44]
0032f054  00 30 95 e5                                      ldr r3, [r5]
0032f058  03 00 52 e1                                      cmp r2, r3
0032f05c  01 00 00 1a                                      bne #0x32f068
0032f060  4c d0 8d e2                                      add sp, sp, #0x4c
0032f064  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0032f068  a8 7c ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0032f06c  a4 5a 66 00 ac 40 00 00                          .byte 0xa4, 0x5a, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00404ab0, declared_size=156, range_size=156, mode=arm
; class-group: glitch::debugger::CTweakable
; alias: _ZN6glitch8debugger10CTweakableD2Ev
; demangled: glitch::debugger::CTweakable::~CTweakable()
; decoder-mode: arm
00404ab0  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
00404ab4  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
00404ab8  70 40 2d e9                                      push {r4, r5, r6, lr}
00404abc  03 30 8f e0                                      add r3, pc, r3
00404ac0  02 20 93 e7                                      ldr r2, [r3, r2]
00404ac4  00 10 a0 e1                                      mov r1, r0
00404ac8  00 40 a0 e1                                      mov r4, r0
00404acc  08 20 82 e2                                      add r2, r2, #8
00404ad0  70 20 81 e4                                      str r2, [r1], #0x70
00404ad4  70 00 90 e5                                      ldr r0, [r0, #0x70]
00404ad8  00 00 50 e3                                      cmp r0, #0
00404adc  04 00 00 0a                                      beq #0x404af4
00404ae0  08 10 91 e5                                      ldr r1, [r1, #8]
00404ae4  01 10 60 e0                                      rsb r1, r0, r1
00404ae8  80 00 51 e3                                      cmp r1, #0x80
00404aec  12 00 00 8a                                      bhi #0x404b3c
00404af0  02 11 0c eb                                      bl #0x708f00
00404af4  54 00 84 e2                                      add r0, r4, #0x54
00404af8  ab 3b fc eb                                      bl #0x3139ac
00404afc  1c 00 84 e2                                      add r0, r4, #0x1c
00404b00  97 94 fc eb                                      bl #0x329d64
00404b04  14 30 94 e5                                      ldr r3, [r4, #0x14]
00404b08  00 00 53 e3                                      cmp r3, #0
00404b0c  08 00 00 0a                                      beq #0x404b34
00404b10  04 50 84 e2                                      add r5, r4, #4
00404b14  05 00 a0 e1                                      mov r0, r5
00404b18  08 10 94 e5                                      ldr r1, [r4, #8]
00404b1c  a1 91 fc eb                                      bl #0x3291a8
00404b20  00 30 a0 e3                                      mov r3, #0
00404b24  10 50 84 e5                                      str r5, [r4, #0x10]
00404b28  14 30 84 e5                                      str r3, [r4, #0x14]
00404b2c  0c 50 84 e5                                      str r5, [r4, #0xc]
00404b30  08 30 84 e5                                      str r3, [r4, #8]
00404b34  04 00 a0 e1                                      mov r0, r4
00404b38  70 80 bd e8                                      pop {r4, r5, r6, pc}
00404b3c  3f 2e fc eb                                      bl #0x310440
00404b40  eb ff ff ea                                      b #0x404af4
; mapping-symbol data/literal pool
00404b44  d4 ff 58 00 98 3e 00 00                          .byte 0xd4, 0xff, 0x58, 0x00, 0x98, 0x3e, 0x00, 0x00
