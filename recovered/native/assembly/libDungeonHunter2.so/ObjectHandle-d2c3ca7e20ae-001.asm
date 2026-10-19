; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0033f4f4, declared_size=24, range_size=24, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandleC2Ev
; demangled: ObjectHandle::ObjectHandle()
; decoder-mode: arm
0033f4f4  00 20 a0 e3                                      mov r2, #0
0033f4f8  00 10 e0 e3                                      mvn r1, #0
0033f4fc  08 10 80 e5                                      str r1, [r0, #8]
0033f500  04 20 80 e5                                      str r2, [r0, #4]
0033f504  00 20 80 e5                                      str r2, [r0]
0033f508  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033f50c, declared_size=24, range_size=24, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandleC1Ev
; demangled: ObjectHandle::ObjectHandle()
; decoder-mode: arm
0033f50c  00 20 a0 e3                                      mov r2, #0
0033f510  00 10 e0 e3                                      mvn r1, #0
0033f514  08 10 80 e5                                      str r1, [r0, #8]
0033f518  04 20 80 e5                                      str r2, [r0, #4]
0033f51c  00 20 80 e5                                      str r2, [r0]
0033f520  1e ff 2f e1                                      bx lr

; FUNCTION 0x0033f524, declared_size=84, range_size=84, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandleC1EP10ObjectBase
; demangled: ObjectHandle::ObjectHandle(ObjectBase*)
; decoder-mode: arm
0033f524  30 40 2d e9                                      push {r4, r5, lr}
0033f528  00 30 a0 e3                                      mov r3, #0
0033f52c  00 20 e0 e3                                      mvn r2, #0
0033f530  00 00 51 e3                                      cmp r1, #0
0033f534  14 d0 4d e2                                      sub sp, sp, #0x14
0033f538  00 40 a0 e1                                      mov r4, r0
0033f53c  04 30 80 e5                                      str r3, [r0, #4]
0033f540  08 20 80 e5                                      str r2, [r0, #8]
0033f544  00 30 80 e5                                      str r3, [r0]
0033f548  07 00 00 0a                                      beq #0x33f56c
0033f54c  0d 00 a0 e1                                      mov r0, sp
0033f550  f5 f9 ff eb                                      bl #0x33dd2c
0033f554  07 00 9d e8                                      ldm sp, {r0, r1, r2}
0033f558  04 30 a0 e1                                      mov r3, r4
0033f55c  04 00 83 e4                                      str r0, [r3], #4
0033f560  0d 50 a0 e1                                      mov r5, sp
0033f564  04 10 84 e5                                      str r1, [r4, #4]
0033f568  04 20 83 e5                                      str r2, [r3, #4]
0033f56c  04 00 a0 e1                                      mov r0, r4
0033f570  14 d0 8d e2                                      add sp, sp, #0x14
0033f574  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0033f578, declared_size=84, range_size=84, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandleC2EP10ObjectBase
; demangled: ObjectHandle::ObjectHandle(ObjectBase*)
; decoder-mode: arm
0033f578  30 40 2d e9                                      push {r4, r5, lr}
0033f57c  00 30 a0 e3                                      mov r3, #0
0033f580  00 20 e0 e3                                      mvn r2, #0
0033f584  00 00 51 e3                                      cmp r1, #0
0033f588  14 d0 4d e2                                      sub sp, sp, #0x14
0033f58c  00 40 a0 e1                                      mov r4, r0
0033f590  04 30 80 e5                                      str r3, [r0, #4]
0033f594  08 20 80 e5                                      str r2, [r0, #8]
0033f598  00 30 80 e5                                      str r3, [r0]
0033f59c  07 00 00 0a                                      beq #0x33f5c0
0033f5a0  0d 00 a0 e1                                      mov r0, sp
0033f5a4  e0 f9 ff eb                                      bl #0x33dd2c
0033f5a8  07 00 9d e8                                      ldm sp, {r0, r1, r2}
0033f5ac  04 30 a0 e1                                      mov r3, r4
0033f5b0  04 00 83 e4                                      str r0, [r3], #4
0033f5b4  0d 50 a0 e1                                      mov r5, sp
0033f5b8  04 10 84 e5                                      str r1, [r4, #4]
0033f5bc  04 20 83 e5                                      str r2, [r3, #4]
0033f5c0  04 00 a0 e1                                      mov r0, r4
0033f5c4  14 d0 8d e2                                      add sp, sp, #0x14
0033f5c8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x0033fdc0, declared_size=236, range_size=236, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandle9GetObjectEb
; demangled: ObjectHandle::GetObject(bool)
; decoder-mode: arm
0033fdc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0033fdc4  00 40 90 e5                                      ldr r4, [r0]
0033fdc8  c0 50 9f e5                                      ldr r5, [pc, #0xc0]
0033fdcc  08 d0 4d e2                                      sub sp, sp, #8
0033fdd0  00 00 54 e3                                      cmp r4, #0
0033fdd4  00 60 a0 e1                                      mov r6, r0
0033fdd8  01 70 a0 e1                                      mov r7, r1
0033fddc  05 50 8f e0                                      add r5, pc, r5
0033fde0  0e 00 00 0a                                      beq #0x33fe20
0033fde4  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
0033fde8  04 40 90 e5                                      ldr r4, [r0, #4]
0033fdec  03 30 95 e7                                      ldr r3, [r5, r3]
0033fdf0  00 00 54 e3                                      cmp r4, #0
0033fdf4  38 00 93 e5                                      ldr r0, [r3, #0x38]
0033fdf8  78 80 90 e5                                      ldr r8, [r0, #0x78]
0033fdfc  02 00 00 0a                                      beq #0x33fe0c
0033fe00  08 30 96 e5                                      ldr r3, [r6, #8]
0033fe04  08 00 53 e1                                      cmp r3, r8
0033fe08  04 00 00 0a                                      beq #0x33fe20
0033fe0c  0c 00 80 e2                                      add r0, r0, #0xc
0033fe10  06 10 a0 e1                                      mov r1, r6
0033fe14  9b ff ff eb                                      bl #0x33fc88
0033fe18  18 40 90 e5                                      ldr r4, [r0, #0x18]
0033fe1c  10 01 86 e9                                      stmib r6, {r4, r8}
0033fe20  00 00 57 e3                                      cmp r7, #0
0033fe24  01 00 00 0a                                      beq #0x33fe30
0033fe28  00 00 54 e3                                      cmp r4, #0
0033fe2c  02 00 00 0a                                      beq #0x33fe3c
0033fe30  04 00 a0 e1                                      mov r0, r4
0033fe34  08 d0 8d e2                                      add sp, sp, #8
0033fe38  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0033fe3c  54 30 9f e5                                      ldr r3, [pc, #0x54]
0033fe40  03 30 95 e7                                      ldr r3, [r5, r3]
0033fe44  00 30 93 e5                                      ldr r3, [r3]
0033fe48  02 00 53 e3                                      cmp r3, #2
0033fe4c  00 40 84 05                                      streq r4, [r4]
0033fe50  f6 ff ff 0a                                      beq #0x33fe30
0033fe54  01 00 53 e3                                      cmp r3, #1
0033fe58  f4 ff ff 1a                                      bne #0x33fe30
0033fe5c  38 00 9f e5                                      ldr r0, [pc, #0x38]
0033fe60  38 10 9f e5                                      ldr r1, [pc, #0x38]
0033fe64  38 20 9f e5                                      ldr r2, [pc, #0x38]
0033fe68  00 00 95 e7                                      ldr r0, [r5, r0]
0033fe6c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0033fe70  31 c0 a0 e3                                      mov ip, #0x31
0033fe74  01 10 8f e0                                      add r1, pc, r1
0033fe78  02 20 8f e0                                      add r2, pc, r2
0033fe7c  03 30 8f e0                                      add r3, pc, r3
0033fe80  a8 00 80 e2                                      add r0, r0, #0xa8
0033fe84  00 c0 8d e5                                      str ip, [sp]
0033fe88  5d 38 ff eb                                      bl #0x30e004
0033fe8c  e7 ff ff ea                                      b #0x33fe30
; mapping-symbol data/literal pool
0033fe90  b4 4c 65 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0xb4, 0x4c, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0033fea0  64 e5 57 00 98 03 58 00 9c 03 58 00              .byte 0x64, 0xe5, 0x57, 0x00, 0x98, 0x03, 0x58, 0x00, 0x9c, 0x03, 0x58, 0x00

; FUNCTION 0x0033feac, declared_size=56, range_size=56, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandlecvPK10GameObjectEv
; demangled: ObjectHandle::operator GameObject const*()
; decoder-mode: arm
0033feac  10 40 2d e9                                      push {r4, lr}
0033feb0  00 10 a0 e3                                      mov r1, #0
0033feb4  c1 ff ff eb                                      bl #0x33fdc0
0033feb8  00 40 50 e2                                      subs r4, r0, #0
0033febc  01 00 00 1a                                      bne #0x33fec8
0033fec0  00 00 a0 e3                                      mov r0, #0
0033fec4  10 80 bd e8                                      pop {r4, pc}
0033fec8  00 30 94 e5                                      ldr r3, [r4]
0033fecc  0f e0 a0 e1                                      mov lr, pc
0033fed0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0033fed4  00 00 50 e3                                      cmp r0, #0
0033fed8  f8 ff ff 0a                                      beq #0x33fec0
0033fedc  04 00 a0 e1                                      mov r0, r4
0033fee0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033fee4, declared_size=56, range_size=56, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandlecvP10GameObjectEv
; demangled: ObjectHandle::operator GameObject*()
; decoder-mode: arm
0033fee4  10 40 2d e9                                      push {r4, lr}
0033fee8  00 10 a0 e3                                      mov r1, #0
0033feec  b3 ff ff eb                                      bl #0x33fdc0
0033fef0  00 40 50 e2                                      subs r4, r0, #0
0033fef4  01 00 00 1a                                      bne #0x33ff00
0033fef8  00 00 a0 e3                                      mov r0, #0
0033fefc  10 80 bd e8                                      pop {r4, pc}
0033ff00  00 30 94 e5                                      ldr r3, [r4]
0033ff04  0f e0 a0 e1                                      mov lr, pc
0033ff08  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0033ff0c  00 00 50 e3                                      cmp r0, #0
0033ff10  f8 ff ff 0a                                      beq #0x33fef8
0033ff14  04 00 a0 e1                                      mov r0, r4
0033ff18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033ff1c, declared_size=56, range_size=56, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandlecvPK9CharacterEv
; demangled: ObjectHandle::operator Character const*()
; decoder-mode: arm
0033ff1c  10 40 2d e9                                      push {r4, lr}
0033ff20  00 10 a0 e3                                      mov r1, #0
0033ff24  a5 ff ff eb                                      bl #0x33fdc0
0033ff28  00 40 50 e2                                      subs r4, r0, #0
0033ff2c  01 00 00 1a                                      bne #0x33ff38
0033ff30  00 00 a0 e3                                      mov r0, #0
0033ff34  10 80 bd e8                                      pop {r4, pc}
0033ff38  00 30 94 e5                                      ldr r3, [r4]
0033ff3c  0f e0 a0 e1                                      mov lr, pc
0033ff40  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0033ff44  00 00 50 e3                                      cmp r0, #0
0033ff48  f8 ff ff 0a                                      beq #0x33ff30
0033ff4c  04 00 a0 e1                                      mov r0, r4
0033ff50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033ff54, declared_size=56, range_size=56, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandlecvP9CharacterEv
; demangled: ObjectHandle::operator Character*()
; decoder-mode: arm
0033ff54  10 40 2d e9                                      push {r4, lr}
0033ff58  00 10 a0 e3                                      mov r1, #0
0033ff5c  97 ff ff eb                                      bl #0x33fdc0
0033ff60  00 40 50 e2                                      subs r4, r0, #0
0033ff64  01 00 00 1a                                      bne #0x33ff70
0033ff68  00 00 a0 e3                                      mov r0, #0
0033ff6c  10 80 bd e8                                      pop {r4, pc}
0033ff70  00 30 94 e5                                      ldr r3, [r4]
0033ff74  0f e0 a0 e1                                      mov lr, pc
0033ff78  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0033ff7c  00 00 50 e3                                      cmp r0, #0
0033ff80  f8 ff ff 0a                                      beq #0x33ff68
0033ff84  04 00 a0 e1                                      mov r0, r4
0033ff88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0033ff8c, declared_size=4, range_size=4, mode=arm
; class-group: ObjectHandle
; alias: _ZNK12ObjectHandle9GetObjectEb
; demangled: ObjectHandle::GetObject(bool) const
; decoder-mode: arm
0033ff8c  8b ff ff ea                                      b #0x33fdc0

; FUNCTION 0x004593f4, declared_size=180, range_size=180, mode=arm
; class-group: ObjectHandle
; alias: _ZN12ObjectHandlecvPT_I9ContainerEEv
; demangled: ObjectHandle::operator Container*<Container>()
; decoder-mode: arm
004593f4  30 40 2d e9                                      push {r4, r5, lr}
004593f8  00 10 a0 e3                                      mov r1, #0
004593fc  0c d0 4d e2                                      sub sp, sp, #0xc
00459400  6e 9a fb eb                                      bl #0x33fdc0
00459404  84 50 9f e5                                      ldr r5, [pc, #0x84]
00459408  84 30 9f e5                                      ldr r3, [pc, #0x84]
0045940c  00 40 a0 e1                                      mov r4, r0
00459410  05 50 8f e0                                      add r5, pc, r5
00459414  03 30 95 e7                                      ldr r3, [r5, r3]
00459418  00 30 93 e5                                      ldr r3, [r3]
0045941c  02 00 53 e3                                      cmp r3, #2
00459420  00 30 a0 03                                      moveq r3, #0
00459424  00 30 83 05                                      streq r3, [r3]
00459428  01 00 00 0a                                      beq #0x459434
0045942c  01 00 53 e3                                      cmp r3, #1
00459430  09 00 00 0a                                      beq #0x45945c
00459434  00 00 54 e3                                      cmp r4, #0
00459438  02 00 00 1a                                      bne #0x459448
0045943c  00 00 a0 e3                                      mov r0, #0
00459440  0c d0 8d e2                                      add sp, sp, #0xc
00459444  30 80 bd e8                                      pop {r4, r5, pc}
00459448  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0045944c  15 00 53 e3                                      cmp r3, #0x15
00459450  04 00 a0 01                                      moveq r0, r4
00459454  f8 ff ff 1a                                      bne #0x45943c
00459458  f8 ff ff ea                                      b #0x459440
0045945c  34 00 9f e5                                      ldr r0, [pc, #0x34]
00459460  34 10 9f e5                                      ldr r1, [pc, #0x34]
00459464  34 20 9f e5                                      ldr r2, [pc, #0x34]
00459468  00 00 95 e7                                      ldr r0, [r5, r0]
0045946c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00459470  48 c0 a0 e3                                      mov ip, #0x48
00459474  01 10 8f e0                                      add r1, pc, r1
00459478  02 20 8f e0                                      add r2, pc, r2
0045947c  03 30 8f e0                                      add r3, pc, r3
00459480  a8 00 80 e2                                      add r0, r0, #0xa8
00459484  00 c0 8d e5                                      str ip, [sp]
00459488  dd d2 fa eb                                      bl #0x30e004
0045948c  e8 ff ff ea                                      b #0x459434
; mapping-symbol data/literal pool
00459490  80 b6 53 00 c0 39 00 00 c0 19 00 00 64 4f 46 00  .byte 0x80, 0xb6, 0x53, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x64, 0x4f, 0x46, 0x00
004594a0  08 3a 47 00 3c 3a 47 00                          .byte 0x08, 0x3a, 0x47, 0x00, 0x3c, 0x3a, 0x47, 0x00
