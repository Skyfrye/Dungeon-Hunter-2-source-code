; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00316404, declared_size=4, range_size=4, mode=arm
; class-group: IStreamBase
; alias: _ZN11IStreamBaseD1Ev
; demangled: IStreamBase::~IStreamBase()
; decoder-mode: arm
00316404  1e ff 2f e1                                      bx lr

; FUNCTION 0x00316408, declared_size=20, range_size=20, mode=arm
; class-group: IStreamBase
; alias: _ZN11IStreamBase9seekWriteEy
; demangled: IStreamBase::seekWrite(unsigned long long)
; decoder-mode: arm
00316408  10 40 2d e9                                      push {r4, lr}
0031640c  00 10 90 e5                                      ldr r1, [r0]
00316410  0f e0 a0 e1                                      mov lr, pc
00316414  20 f0 91 e5                                      ldr pc, [r1, #0x20]
00316418  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0031641c, declared_size=20, range_size=20, mode=arm
; class-group: IStreamBase
; alias: _ZNK11IStreamBase9tellWriteEv
; demangled: IStreamBase::tellWrite() const
; decoder-mode: arm
0031641c  10 40 2d e9                                      push {r4, lr}
00316420  00 30 90 e5                                      ldr r3, [r0]
00316424  0f e0 a0 e1                                      mov lr, pc
00316428  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0031642c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00316798, declared_size=52, range_size=52, mode=arm
; class-group: IStreamBase
; alias: _ZN11IStreamBaseD0Ev
; demangled: IStreamBase::~IStreamBase()
; decoder-mode: arm
00316798  24 30 9f e5                                      ldr r3, [pc, #0x24]
0031679c  24 20 9f e5                                      ldr r2, [pc, #0x24]
003167a0  10 40 2d e9                                      push {r4, lr}
003167a4  03 30 8f e0                                      add r3, pc, r3
003167a8  02 20 93 e7                                      ldr r2, [r3, r2]
003167ac  00 40 a0 e1                                      mov r4, r0
003167b0  08 20 82 e2                                      add r2, r2, #8
003167b4  00 20 80 e5                                      str r2, [r0]
003167b8  20 e7 ff eb                                      bl #0x310440
003167bc  04 00 a0 e1                                      mov r0, r4
003167c0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003167c4  ec e2 67 00 ac 2d 00 00                          .byte 0xec, 0xe2, 0x67, 0x00, 0xac, 0x2d, 0x00, 0x00

; FUNCTION 0x00461668, declared_size=80, range_size=80, mode=arm
; class-group: IStreamBase
; alias: _ZN11IStreamBase7writeAsERKSs
; demangled: IStreamBase::writeAs(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&)
; decoder-mode: arm
00461668  30 40 2d e9                                      push {r4, r5, lr}
0046166c  10 20 91 e5                                      ldr r2, [r1, #0x10]
00461670  14 30 91 e5                                      ldr r3, [r1, #0x14]
00461674  0c d0 4d e2                                      sub sp, sp, #0xc
00461678  01 50 a0 e1                                      mov r5, r1
0046167c  02 30 63 e0                                      rsb r3, r3, r2
00461680  08 10 8d e2                                      add r1, sp, #8
00461684  01 30 83 e2                                      add r3, r3, #1
00461688  04 30 21 e5                                      str r3, [r1, #-4]!
0046168c  00 40 a0 e1                                      mov r4, r0
00461690  5c a8 fc eb                                      bl #0x38b808
00461694  04 20 9d e5                                      ldr r2, [sp, #4]
00461698  04 00 a0 e1                                      mov r0, r4
0046169c  14 10 95 e5                                      ldr r1, [r5, #0x14]
004616a0  c2 3f a0 e1                                      asr r3, r2, #0x1f
004616a4  00 c0 94 e5                                      ldr ip, [r4]
004616a8  0f e0 a0 e1                                      mov lr, pc
004616ac  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
004616b0  0c d0 8d e2                                      add sp, sp, #0xc
004616b4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00461da8, declared_size=232, range_size=232, mode=arm
; class-group: IStreamBase
; alias: _ZN11IStreamBase6readAsERSs
; demangled: IStreamBase::readAs(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&)
; decoder-mode: arm
00461da8  30 40 2d e9                                      push {r4, r5, lr}
00461dac  14 d0 4d e2                                      sub sp, sp, #0x14
00461db0  01 40 a0 e1                                      mov r4, r1
00461db4  0c 10 8d e2                                      add r1, sp, #0xc
00461db8  00 50 a0 e1                                      mov r5, r0
00461dbc  65 a6 fc eb                                      bl #0x38b758
00461dc0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00461dc4  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00461dc8  00 00 51 e3                                      cmp r1, #0
00461dcc  03 30 8f e0                                      add r3, pc, r3
00461dd0  0b 00 00 da                                      ble #0x461e04
00461dd4  01 10 41 e2                                      sub r1, r1, #1
00461dd8  04 00 a0 e1                                      mov r0, r4
00461ddc  b1 ff ff eb                                      bl #0x461ca8
00461de0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00461de4  05 00 a0 e1                                      mov r0, r5
00461de8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00461dec  c2 3f a0 e1                                      asr r3, r2, #0x1f
00461df0  00 c0 95 e5                                      ldr ip, [r5]
00461df4  0f e0 a0 e1                                      mov lr, pc
00461df8  18 f0 9c e5                                      ldr pc, [ip, #0x18]
00461dfc  14 d0 8d e2                                      add sp, sp, #0x14
00461e00  30 80 bd e8                                      pop {r4, r5, pc}
00461e04  70 20 9f e5                                      ldr r2, [pc, #0x70]
00461e08  02 20 93 e7                                      ldr r2, [r3, r2]
00461e0c  00 20 92 e5                                      ldr r2, [r2]
00461e10  02 00 52 e3                                      cmp r2, #2
00461e14  00 30 a0 03                                      moveq r3, #0
00461e18  00 30 83 05                                      streq r3, [r3]
00461e1c  01 00 00 0a                                      beq #0x461e28
00461e20  01 00 52 e3                                      cmp r2, #1
00461e24  03 00 00 0a                                      beq #0x461e38
00461e28  04 00 a0 e1                                      mov r0, r4
00461e2c  00 10 a0 e3                                      mov r1, #0
00461e30  9c ff ff eb                                      bl #0x461ca8
00461e34  f0 ff ff ea                                      b #0x461dfc
00461e38  40 00 9f e5                                      ldr r0, [pc, #0x40]
00461e3c  40 10 9f e5                                      ldr r1, [pc, #0x40]
00461e40  40 20 9f e5                                      ldr r2, [pc, #0x40]
00461e44  00 00 93 e7                                      ldr r0, [r3, r0]
00461e48  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00461e4c  01 10 8f e0                                      add r1, pc, r1
00461e50  57 c0 a0 e3                                      mov ip, #0x57
00461e54  a8 00 80 e2                                      add r0, r0, #0xa8
00461e58  02 20 8f e0                                      add r2, pc, r2
00461e5c  03 30 8f e0                                      add r3, pc, r3
00461e60  00 c0 8d e5                                      str ip, [sp]
00461e64  66 b0 fa eb                                      bl #0x30e004
00461e68  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00461e6c  00 00 51 e3                                      cmp r1, #0
00461e70  ec ff ff da                                      ble #0x461e28
00461e74  d6 ff ff ea                                      b #0x461dd4
; mapping-symbol data/literal pool
00461e78  c4 2c 53 00 c0 39 00 00 c0 19 00 00 8c c5 45 00  .byte 0xc4, 0x2c, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x8c, 0xc5, 0x45, 0x00
00461e88  e8 b2 46 00 bc c6 45 00                          .byte 0xe8, 0xb2, 0x46, 0x00, 0xbc, 0xc6, 0x45, 0x00
