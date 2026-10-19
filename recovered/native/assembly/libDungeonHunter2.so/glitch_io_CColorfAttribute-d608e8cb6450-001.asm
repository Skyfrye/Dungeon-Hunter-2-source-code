; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031ef94, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZN6glitch2io16CColorfAttribute6getIntEv
; demangled: glitch::io::CColorfAttribute::getInt()
; decoder-mode: arm
0031ef94  04 e0 2d e5                                      str lr, [sp, #-4]!
0031ef98  14 d0 4d e2                                      sub sp, sp, #0x14
0031ef9c  00 30 90 e5                                      ldr r3, [r0]
0031efa0  0f e0 a0 e1                                      mov lr, pc
0031efa4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0031efa8  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0031efac  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0031efb0  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0031efb4  01 10 cd e5                                      strb r1, [sp, #1]
0031efb8  02 20 cd e5                                      strb r2, [sp, #2]
0031efbc  00 00 cd e5                                      strb r0, [sp]
0031efc0  03 30 cd e5                                      strb r3, [sp, #3]
0031efc4  00 30 9d e5                                      ldr r3, [sp]
0031efc8  09 20 8d e2                                      add r2, sp, #9
0031efcc  23 0c a0 e1                                      lsr r0, r3, #0x18
0031efd0  53 c8 e7 e7                                      ubfx ip, r3, #0x10, #8
0031efd4  53 14 e7 e7                                      ubfx r1, r3, #8, #8
0031efd8  02 c0 c2 e5                                      strb ip, [r2, #2]
0031efdc  08 00 cd e5                                      strb r0, [sp, #8]
0031efe0  01 10 c2 e5                                      strb r1, [r2, #1]
0031efe4  09 30 cd e5                                      strb r3, [sp, #9]
0031efe8  08 00 9d e5                                      ldr r0, [sp, #8]
0031efec  14 d0 8d e2                                      add sp, sp, #0x14
0031eff0  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0031eff4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZN6glitch2io16CColorfAttribute8getFloatEv
; demangled: glitch::io::CColorfAttribute::getFloat()
; decoder-mode: arm
0031eff4  04 e0 2d e5                                      str lr, [sp, #-4]!
0031eff8  14 d0 4d e2                                      sub sp, sp, #0x14
0031effc  00 30 90 e5                                      ldr r3, [r0]
0031f000  0f e0 a0 e1                                      mov lr, pc
0031f004  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0031f008  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
0031f00c  50 14 e7 e7                                      ubfx r1, r0, #8, #8
0031f010  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
0031f014  01 10 cd e5                                      strb r1, [sp, #1]
0031f018  02 20 cd e5                                      strb r2, [sp, #2]
0031f01c  00 00 cd e5                                      strb r0, [sp]
0031f020  03 30 cd e5                                      strb r3, [sp, #3]
0031f024  00 30 9d e5                                      ldr r3, [sp]
0031f028  09 20 8d e2                                      add r2, sp, #9
0031f02c  23 0c a0 e1                                      lsr r0, r3, #0x18
0031f030  53 c8 e7 e7                                      ubfx ip, r3, #0x10, #8
0031f034  53 14 e7 e7                                      ubfx r1, r3, #8, #8
0031f038  02 c0 c2 e5                                      strb ip, [r2, #2]
0031f03c  08 00 cd e5                                      strb r0, [sp, #8]
0031f040  01 10 c2 e5                                      strb r1, [r2, #1]
0031f044  09 30 cd e5                                      strb r3, [sp, #9]
0031f048  08 00 9d e5                                      ldr r0, [sp, #8]
0031f04c  a3 bc ff eb                                      bl #0x30e2e0
0031f050  14 d0 8d e2                                      add sp, sp, #0x14
0031f054  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0031f058, declared_size=148, range_size=148, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZN6glitch2io16CColorfAttribute6setIntEi
; demangled: glitch::io::CColorfAttribute::setInt(int)
; decoder-mode: arm
0031f058  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0031f05c  00 40 a0 e1                                      mov r4, r0
0031f060  51 04 e7 e7                                      ubfx r0, r1, #8, #8
0031f064  51 68 e7 e7                                      ubfx r6, r1, #0x10, #8
0031f068  21 5c a0 e1                                      lsr r5, r1, #0x18
0031f06c  71 80 ef e6                                      uxtb r8, r1
0031f070  3b be ff eb                                      bl #0x30e964
0031f074  81 10 08 e3                                      movw r1, #0x8081
0031f078  80 1b 43 e3                                      movt r1, #0x3b80
0031f07c  3a bf ff eb                                      bl #0x30ed6c
0031f080  00 70 a0 e1                                      mov r7, r0
0031f084  06 00 a0 e1                                      mov r0, r6
0031f088  35 be ff eb                                      bl #0x30e964
0031f08c  81 10 08 e3                                      movw r1, #0x8081
0031f090  80 1b 43 e3                                      movt r1, #0x3b80
0031f094  34 bf ff eb                                      bl #0x30ed6c
0031f098  00 60 a0 e1                                      mov r6, r0
0031f09c  05 00 a0 e1                                      mov r0, r5
0031f0a0  2f be ff eb                                      bl #0x30e964
0031f0a4  81 10 08 e3                                      movw r1, #0x8081
0031f0a8  80 1b 43 e3                                      movt r1, #0x3b80
0031f0ac  2e bf ff eb                                      bl #0x30ed6c
0031f0b0  00 50 a0 e1                                      mov r5, r0
0031f0b4  08 00 a0 e1                                      mov r0, r8
0031f0b8  29 be ff eb                                      bl #0x30e964
0031f0bc  81 10 08 e3                                      movw r1, #0x8081
0031f0c0  80 1b 43 e3                                      movt r1, #0x3b80
0031f0c4  28 bf ff eb                                      bl #0x30ed6c
0031f0c8  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f0cc  00 70 83 e5                                      str r7, [r3]
0031f0d0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f0d4  04 60 83 e5                                      str r6, [r3, #4]
0031f0d8  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f0dc  08 50 83 e5                                      str r5, [r3, #8]
0031f0e0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0031f0e4  0c 00 83 e5                                      str r0, [r3, #0xc]
0031f0e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0031f0ec, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZN6glitch2io16CColorfAttribute8setFloatEf
; demangled: glitch::io::CColorfAttribute::setFloat(float)
; decoder-mode: arm
0031f0ec  70 40 2d e9                                      push {r4, r5, r6, lr}
0031f0f0  00 40 a0 e1                                      mov r4, r0
0031f0f4  01 00 a0 e1                                      mov r0, r1
0031f0f8  f3 bc ff eb                                      bl #0x30e4cc
0031f0fc  00 50 94 e5                                      ldr r5, [r4]
0031f100  00 10 a0 e1                                      mov r1, r0
0031f104  04 00 a0 e1                                      mov r0, r4
0031f108  0f e0 a0 e1                                      mov lr, pc
0031f10c  88 f0 95 e5                                      ldr pc, [r5, #0x88]
0031f110  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0031f114, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZNK6glitch2io16CColorfAttribute7getTypeEv
; demangled: glitch::io::CColorfAttribute::getType() const
; decoder-mode: arm
0031f114  06 00 a0 e3                                      mov r0, #6
0031f118  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f11c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZNK6glitch2io16CColorfAttribute13getTypeStringEv
; demangled: glitch::io::CColorfAttribute::getTypeString() const
; decoder-mode: arm
0031f11c  04 00 9f e5                                      ldr r0, [pc, #4]
0031f120  00 00 8f e0                                      add r0, pc, r0
0031f124  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f128  48 f9 59 00                                      .byte 0x48, 0xf9, 0x59, 0x00

; FUNCTION 0x00326914, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZN6glitch2io16CColorfAttributeD1Ev
; demangled: glitch::io::CColorfAttribute::~CColorfAttribute()
; decoder-mode: arm
00326914  24 30 9f e5                                      ldr r3, [pc, #0x24]
00326918  24 20 9f e5                                      ldr r2, [pc, #0x24]
0032691c  10 40 2d e9                                      push {r4, lr}
00326920  03 30 8f e0                                      add r3, pc, r3
00326924  02 20 93 e7                                      ldr r2, [r3, r2]
00326928  00 40 a0 e1                                      mov r4, r0
0032692c  08 20 82 e2                                      add r2, r2, #8
00326930  00 20 80 e5                                      str r2, [r0]
00326934  af ff ff eb                                      bl #0x3267f8
00326938  04 00 a0 e1                                      mov r0, r4
0032693c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326940  70 e1 66 00 c0 24 00 00                          .byte 0x70, 0xe1, 0x66, 0x00, 0xc0, 0x24, 0x00, 0x00

; FUNCTION 0x00326a30, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CColorfAttribute
; alias: _ZN6glitch2io16CColorfAttributeD0Ev
; demangled: glitch::io::CColorfAttribute::~CColorfAttribute()
; decoder-mode: arm
00326a30  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00326a34  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00326a38  10 40 2d e9                                      push {r4, lr}
00326a3c  03 30 8f e0                                      add r3, pc, r3
00326a40  02 20 93 e7                                      ldr r2, [r3, r2]
00326a44  00 40 a0 e1                                      mov r4, r0
00326a48  08 20 82 e2                                      add r2, r2, #8
00326a4c  00 20 80 e5                                      str r2, [r0]
00326a50  68 ff ff eb                                      bl #0x3267f8
00326a54  04 00 a0 e1                                      mov r0, r4
00326a58  78 a6 ff eb                                      bl #0x310440
00326a5c  04 00 a0 e1                                      mov r0, r4
00326a60  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00326a64  54 e0 66 00 c0 24 00 00                          .byte 0x54, 0xe0, 0x66, 0x00, 0xc0, 0x24, 0x00, 0x00
