; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007eb1d8, declared_size=4, range_size=4, mode=arm
; class-group: b2Joint
; alias: _ZN7b2JointD1Ev
; demangled: b2Joint::~b2Joint()
; decoder-mode: arm
007eb1d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb1dc, declared_size=4, range_size=4, mode=arm
; class-group: b2Joint
; alias: _ZN7b2Joint23InitPositionConstraintsEv
; demangled: b2Joint::InitPositionConstraints()
; decoder-mode: arm
007eb1dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x007eb1e0, declared_size=100, range_size=100, mode=arm
; class-group: b2Joint
; alias: _ZN7b2JointC2EPK10b2JointDef
; demangled: b2Joint::b2Joint(b2JointDef const*)
; decoder-mode: arm
007eb1e0  54 20 9f e5                                      ldr r2, [pc, #0x54]
007eb1e4  54 c0 9f e5                                      ldr ip, [pc, #0x54]
007eb1e8  04 40 2d e5                                      str r4, [sp, #-4]!
007eb1ec  02 20 8f e0                                      add r2, pc, r2
007eb1f0  0c c0 92 e7                                      ldr ip, [r2, ip]
007eb1f4  00 40 a0 e3                                      mov r4, #0
007eb1f8  08 c0 8c e2                                      add ip, ip, #8
007eb1fc  00 c0 80 e5                                      str ip, [r0]
007eb200  00 c0 91 e5                                      ldr ip, [r1]
007eb204  08 40 80 e5                                      str r4, [r0, #8]
007eb208  0c 40 80 e5                                      str r4, [r0, #0xc]
007eb20c  04 c0 80 e5                                      str ip, [r0, #4]
007eb210  08 c0 91 e5                                      ldr ip, [r1, #8]
007eb214  30 c0 80 e5                                      str ip, [r0, #0x30]
007eb218  0c 20 91 e5                                      ldr r2, [r1, #0xc]
007eb21c  34 20 80 e5                                      str r2, [r0, #0x34]
007eb220  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
007eb224  3c 40 c0 e5                                      strb r4, [r0, #0x3c]
007eb228  3d 20 c0 e5                                      strb r2, [r0, #0x3d]
007eb22c  04 20 91 e5                                      ldr r2, [r1, #4]
007eb230  40 20 80 e5                                      str r2, [r0, #0x40]
007eb234  10 00 bd e8                                      ldm sp!, {r4}
007eb238  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007eb23c  a4 98 1a 00 b4 46 00 00                          .byte 0xa4, 0x98, 0x1a, 0x00, 0xb4, 0x46, 0x00, 0x00

; FUNCTION 0x007eb244, declared_size=100, range_size=100, mode=arm
; class-group: b2Joint
; alias: _ZN7b2JointC1EPK10b2JointDef
; demangled: b2Joint::b2Joint(b2JointDef const*)
; decoder-mode: arm
007eb244  54 20 9f e5                                      ldr r2, [pc, #0x54]
007eb248  54 c0 9f e5                                      ldr ip, [pc, #0x54]
007eb24c  04 40 2d e5                                      str r4, [sp, #-4]!
007eb250  02 20 8f e0                                      add r2, pc, r2
007eb254  0c c0 92 e7                                      ldr ip, [r2, ip]
007eb258  00 40 a0 e3                                      mov r4, #0
007eb25c  08 c0 8c e2                                      add ip, ip, #8
007eb260  00 c0 80 e5                                      str ip, [r0]
007eb264  00 c0 91 e5                                      ldr ip, [r1]
007eb268  08 40 80 e5                                      str r4, [r0, #8]
007eb26c  0c 40 80 e5                                      str r4, [r0, #0xc]
007eb270  04 c0 80 e5                                      str ip, [r0, #4]
007eb274  08 c0 91 e5                                      ldr ip, [r1, #8]
007eb278  30 c0 80 e5                                      str ip, [r0, #0x30]
007eb27c  0c 20 91 e5                                      ldr r2, [r1, #0xc]
007eb280  34 20 80 e5                                      str r2, [r0, #0x34]
007eb284  10 20 d1 e5                                      ldrb r2, [r1, #0x10]
007eb288  3c 40 c0 e5                                      strb r4, [r0, #0x3c]
007eb28c  3d 20 c0 e5                                      strb r2, [r0, #0x3d]
007eb290  04 20 91 e5                                      ldr r2, [r1, #4]
007eb294  40 20 80 e5                                      str r2, [r0, #0x40]
007eb298  10 00 bd e8                                      ldm sp!, {r4}
007eb29c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
007eb2a0  40 98 1a 00 b4 46 00 00                          .byte 0x40, 0x98, 0x1a, 0x00, 0xb4, 0x46, 0x00, 0x00

; FUNCTION 0x007eb2a8, declared_size=20, range_size=20, mode=arm
; class-group: b2Joint
; alias: _ZN7b2JointD0Ev
; demangled: b2Joint::~b2Joint()
; decoder-mode: arm
007eb2a8  10 40 2d e9                                      push {r4, lr}
007eb2ac  00 40 a0 e1                                      mov r4, r0
007eb2b0  fe 8b ec eb                                      bl #0x30e2b0
007eb2b4  04 00 a0 e1                                      mov r0, r4
007eb2b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007eb2bc, declared_size=192, range_size=192, mode=arm
; class-group: b2Joint
; alias: _ZN7b2Joint7DestroyEPS_P16b2BlockAllocator
; demangled: b2Joint::Destroy(b2Joint*, b2BlockAllocator*)
; decoder-mode: arm
007eb2bc  70 40 2d e9                                      push {r4, r5, r6, lr}
007eb2c0  00 40 a0 e1                                      mov r4, r0
007eb2c4  00 30 90 e5                                      ldr r3, [r0]
007eb2c8  01 50 a0 e1                                      mov r5, r1
007eb2cc  0f e0 a0 e1                                      mov lr, pc
007eb2d0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
007eb2d4  04 30 94 e5                                      ldr r3, [r4, #4]
007eb2d8  01 30 43 e2                                      sub r3, r3, #1
007eb2dc  05 00 53 e3                                      cmp r3, #5
007eb2e0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007eb2e4  23 00 00 ea                                      b #0x7eb378
007eb2e8  09 00 00 ea                                      b #0x7eb314
007eb2ec  0d 00 00 ea                                      b #0x7eb328
007eb2f0  11 00 00 ea                                      b #0x7eb33c
007eb2f4  15 00 00 ea                                      b #0x7eb350
007eb2f8  19 00 00 ea                                      b #0x7eb364
007eb2fc  ff ff ff ea                                      b #0x7eb300
007eb300  05 00 a0 e1                                      mov r0, r5
007eb304  04 10 a0 e1                                      mov r1, r4
007eb308  a4 20 a0 e3                                      mov r2, #0xa4
007eb30c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007eb310  a2 f6 ff ea                                      b #0x7e8da0
007eb314  05 00 a0 e1                                      mov r0, r5
007eb318  04 10 a0 e1                                      mov r1, r4
007eb31c  9c 20 a0 e3                                      mov r2, #0x9c
007eb320  70 40 bd e8                                      pop {r4, r5, r6, lr}
007eb324  9d f6 ff ea                                      b #0x7e8da0
007eb328  05 00 a0 e1                                      mov r0, r5
007eb32c  04 10 a0 e1                                      mov r1, r4
007eb330  d0 20 a0 e3                                      mov r2, #0xd0
007eb334  70 40 bd e8                                      pop {r4, r5, r6, lr}
007eb338  98 f6 ff ea                                      b #0x7e8da0
007eb33c  05 00 a0 e1                                      mov r0, r5
007eb340  04 10 a0 e1                                      mov r1, r4
007eb344  78 20 a0 e3                                      mov r2, #0x78
007eb348  70 40 bd e8                                      pop {r4, r5, r6, lr}
007eb34c  93 f6 ff ea                                      b #0x7e8da0
007eb350  05 00 a0 e1                                      mov r0, r5
007eb354  04 10 a0 e1                                      mov r1, r4
007eb358  b8 20 a0 e3                                      mov r2, #0xb8
007eb35c  70 40 bd e8                                      pop {r4, r5, r6, lr}
007eb360  8e f6 ff ea                                      b #0x7e8da0
007eb364  05 00 a0 e1                                      mov r0, r5
007eb368  04 10 a0 e1                                      mov r1, r4
007eb36c  80 20 a0 e3                                      mov r2, #0x80
007eb370  70 40 bd e8                                      pop {r4, r5, r6, lr}
007eb374  89 f6 ff ea                                      b #0x7e8da0
007eb378  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x007eb37c, declared_size=252, range_size=252, mode=arm
; class-group: b2Joint
; alias: _ZN7b2Joint6CreateEPK10b2JointDefP16b2BlockAllocator
; demangled: b2Joint::Create(b2JointDef const*, b2BlockAllocator*)
; decoder-mode: arm
007eb37c  70 40 2d e9                                      push {r4, r5, r6, lr}
007eb380  00 30 90 e5                                      ldr r3, [r0]
007eb384  00 40 a0 e1                                      mov r4, r0
007eb388  01 30 43 e2                                      sub r3, r3, #1
007eb38c  05 00 53 e3                                      cmp r3, #5
007eb390  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
007eb394  0d 00 00 ea                                      b #0x7eb3d0
007eb398  0e 00 00 ea                                      b #0x7eb3d8
007eb39c  15 00 00 ea                                      b #0x7eb3f8
007eb3a0  1c 00 00 ea                                      b #0x7eb418
007eb3a4  23 00 00 ea                                      b #0x7eb438
007eb3a8  2a 00 00 ea                                      b #0x7eb458
007eb3ac  ff ff ff ea                                      b #0x7eb3b0
007eb3b0  01 00 a0 e1                                      mov r0, r1
007eb3b4  a4 10 a0 e3                                      mov r1, #0xa4
007eb3b8  3f f7 ff eb                                      bl #0x7e90bc
007eb3bc  04 10 a0 e1                                      mov r1, r4
007eb3c0  00 50 a0 e1                                      mov r5, r0
007eb3c4  88 40 00 eb                                      bl #0x7fb5ec
007eb3c8  05 00 a0 e1                                      mov r0, r5
007eb3cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
007eb3d0  00 00 a0 e3                                      mov r0, #0
007eb3d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007eb3d8  01 00 a0 e1                                      mov r0, r1
007eb3dc  9c 10 a0 e3                                      mov r1, #0x9c
007eb3e0  35 f7 ff eb                                      bl #0x7e90bc
007eb3e4  04 10 a0 e1                                      mov r1, r4
007eb3e8  00 50 a0 e1                                      mov r5, r0
007eb3ec  de 1f 00 eb                                      bl #0x7f336c
007eb3f0  05 00 a0 e1                                      mov r0, r5
007eb3f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
007eb3f8  01 00 a0 e1                                      mov r0, r1
007eb3fc  d0 10 a0 e3                                      mov r1, #0xd0
007eb400  2d f7 ff eb                                      bl #0x7e90bc
007eb404  04 10 a0 e1                                      mov r1, r4
007eb408  00 50 a0 e1                                      mov r5, r0
007eb40c  7d 11 00 eb                                      bl #0x7efa08
007eb410  05 00 a0 e1                                      mov r0, r5
007eb414  70 80 bd e8                                      pop {r4, r5, r6, pc}
007eb418  01 00 a0 e1                                      mov r0, r1
007eb41c  78 10 a0 e3                                      mov r1, #0x78
007eb420  25 f7 ff eb                                      bl #0x7e90bc
007eb424  04 10 a0 e1                                      mov r1, r4
007eb428  00 50 a0 e1                                      mov r5, r0
007eb42c  97 3d 00 eb                                      bl #0x7faa90
007eb430  05 00 a0 e1                                      mov r0, r5
007eb434  70 80 bd e8                                      pop {r4, r5, r6, pc}
007eb438  01 00 a0 e1                                      mov r0, r1
007eb43c  b8 10 a0 e3                                      mov r1, #0xb8
007eb440  1d f7 ff eb                                      bl #0x7e90bc
007eb444  04 10 a0 e1                                      mov r1, r4
007eb448  00 50 a0 e1                                      mov r5, r0
007eb44c  2f 14 00 eb                                      bl #0x7f0510
007eb450  05 00 a0 e1                                      mov r0, r5
007eb454  70 80 bd e8                                      pop {r4, r5, r6, pc}
007eb458  01 00 a0 e1                                      mov r0, r1
007eb45c  80 10 a0 e3                                      mov r1, #0x80
007eb460  15 f7 ff eb                                      bl #0x7e90bc
007eb464  04 10 a0 e1                                      mov r1, r4
007eb468  00 50 a0 e1                                      mov r5, r0
007eb46c  db 01 00 eb                                      bl #0x7ebbe0
007eb470  05 00 a0 e1                                      mov r0, r5
007eb474  70 80 bd e8                                      pop {r4, r5, r6, pc}
