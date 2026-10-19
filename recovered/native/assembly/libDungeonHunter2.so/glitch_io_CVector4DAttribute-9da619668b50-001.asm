; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0031f2f4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CVector4DAttribute
; alias: _ZNK6glitch2io18CVector4DAttribute7getTypeEv
; demangled: glitch::io::CVector4DAttribute::getType() const
; decoder-mode: arm
0031f2f4  09 00 a0 e3                                      mov r0, #9
0031f2f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0031f2fc, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CVector4DAttribute
; alias: _ZNK6glitch2io18CVector4DAttribute13getTypeStringEv
; demangled: glitch::io::CVector4DAttribute::getTypeString() const
; decoder-mode: arm
0031f2fc  04 00 9f e5                                      ldr r0, [pc, #4]
0031f300  00 00 8f e0                                      add r0, pc, r0
0031f304  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0031f308  f0 f7 59 00                                      .byte 0xf0, 0xf7, 0x59, 0x00

; FUNCTION 0x00326878, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CVector4DAttribute
; alias: _ZN6glitch2io18CVector4DAttributeD1Ev
; demangled: glitch::io::CVector4DAttribute::~CVector4DAttribute()
; decoder-mode: arm
00326878  24 30 9f e5                                      ldr r3, [pc, #0x24]
0032687c  24 20 9f e5                                      ldr r2, [pc, #0x24]
00326880  10 40 2d e9                                      push {r4, lr}
00326884  03 30 8f e0                                      add r3, pc, r3
00326888  02 20 93 e7                                      ldr r2, [r3, r2]
0032688c  00 40 a0 e1                                      mov r4, r0
00326890  08 20 82 e2                                      add r2, r2, #8
00326894  00 20 80 e5                                      str r2, [r0]
00326898  d6 ff ff eb                                      bl #0x3267f8
0032689c  04 00 a0 e1                                      mov r0, r4
003268a0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003268a4  0c e2 66 00 f0 0e 00 00                          .byte 0x0c, 0xe2, 0x66, 0x00, 0xf0, 0x0e, 0x00, 0x00

; FUNCTION 0x003269b8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CVector4DAttribute
; alias: _ZN6glitch2io18CVector4DAttributeD0Ev
; demangled: glitch::io::CVector4DAttribute::~CVector4DAttribute()
; decoder-mode: arm
003269b8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003269bc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
003269c0  10 40 2d e9                                      push {r4, lr}
003269c4  03 30 8f e0                                      add r3, pc, r3
003269c8  02 20 93 e7                                      ldr r2, [r3, r2]
003269cc  00 40 a0 e1                                      mov r4, r0
003269d0  08 20 82 e2                                      add r2, r2, #8
003269d4  00 20 80 e5                                      str r2, [r0]
003269d8  86 ff ff eb                                      bl #0x3267f8
003269dc  04 00 a0 e1                                      mov r0, r4
003269e0  96 a6 ff eb                                      bl #0x310440
003269e4  04 00 a0 e1                                      mov r0, r4
003269e8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003269ec  cc e0 66 00 f0 0e 00 00                          .byte 0xcc, 0xe0, 0x66, 0x00, 0xf0, 0x0e, 0x00, 0x00

; FUNCTION 0x003276f8, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CVector4DAttribute
; alias: _ZN6glitch2io18CVector4DAttribute9getMatrixEv
; demangled: glitch::io::CVector4DAttribute::getMatrix()
; decoder-mode: arm
003276f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003276fc  48 d0 4d e2                                      sub sp, sp, #0x48
00327700  00 40 a0 e3                                      mov r4, #0
00327704  04 70 8d e2                                      add r7, sp, #4
00327708  40 50 a0 e3                                      mov r5, #0x40
0032770c  00 60 a0 e1                                      mov r6, r0
00327710  01 80 a0 e1                                      mov r8, r1
00327714  05 20 a0 e1                                      mov r2, r5
00327718  04 10 a0 e1                                      mov r1, r4
0032771c  07 00 a0 e1                                      mov r0, r7
00327720  4e 9b ff eb                                      bl #0x30e460
00327724  05 20 a0 e1                                      mov r2, r5
00327728  04 10 a0 e1                                      mov r1, r4
0032772c  07 00 a0 e1                                      mov r0, r7
00327730  4a 9b ff eb                                      bl #0x30e460
00327734  30 30 98 e5                                      ldr r3, [r8, #0x30]
00327738  fe 55 a0 e3                                      mov r5, #0x3f800000
0032773c  01 20 a0 e3                                      mov r2, #1
00327740  40 50 8d e5                                      str r5, [sp, #0x40]
00327744  44 20 cd e5                                      strb r2, [sp, #0x44]
00327748  04 50 8d e5                                      str r5, [sp, #4]
0032774c  18 50 8d e5                                      str r5, [sp, #0x18]
00327750  2c 50 8d e5                                      str r5, [sp, #0x2c]
00327754  00 00 93 e5                                      ldr r0, [r3]
00327758  04 10 93 e5                                      ldr r1, [r3, #4]
0032775c  08 20 93 e5                                      ldr r2, [r3, #8]
00327760  34 00 8d e5                                      str r0, [sp, #0x34]
00327764  38 10 8d e5                                      str r1, [sp, #0x38]
00327768  3c 20 8d e5                                      str r2, [sp, #0x3c]
0032776c  44 40 cd e5                                      strb r4, [sp, #0x44]
00327770  0c 30 93 e5                                      ldr r3, [r3, #0xc]
00327774  07 10 a0 e1                                      mov r1, r7
00327778  40 40 c6 e5                                      strb r4, [r6, #0x40]
0032777c  06 00 a0 e1                                      mov r0, r6
00327780  41 20 a0 e3                                      mov r2, #0x41
00327784  40 30 8d e5                                      str r3, [sp, #0x40]
00327788  36 9c ff eb                                      bl #0x30e868
0032778c  06 00 a0 e1                                      mov r0, r6
00327790  48 d0 8d e2                                      add sp, sp, #0x48
00327794  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
