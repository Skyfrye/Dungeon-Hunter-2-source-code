; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0051b874, declared_size=248, range_size=248, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor14GetCollisionAtERK7Point3DIfES3_RS1_
; demangled: PFFloor::GetCollisionAt(Point3D<float> const&, Point3D<float> const&, Point3D<float>&)
; decoder-mode: arm
0051b874  e8 c0 9f e5                                      ldr ip, [pc, #0xe8]
0051b878  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0051b87c  e4 e0 9f e5                                      ldr lr, [pc, #0xe4]
0051b880  0c c0 8f e0                                      add ip, pc, ip
0051b884  00 60 91 e5                                      ldr r6, [r1]
0051b888  0e e0 9c e7                                      ldr lr, [ip, lr]
0051b88c  00 40 92 e5                                      ldr r4, [r2]
0051b890  08 50 91 e5                                      ldr r5, [r1, #8]
0051b894  10 80 9e e5                                      ldr r8, [lr, #0x10]
0051b898  04 70 91 e5                                      ldr r7, [r1, #4]
0051b89c  08 a0 92 e5                                      ldr sl, [r2, #8]
0051b8a0  04 10 92 e5                                      ldr r1, [r2, #4]
0051b8a4  1c 20 98 e5                                      ldr r2, [r8, #0x1c]
0051b8a8  54 d0 4d e2                                      sub sp, sp, #0x54
0051b8ac  00 e0 a0 e3                                      mov lr, #0
0051b8b0  28 e0 8d e5                                      str lr, [sp, #0x28]
0051b8b4  38 40 8d e5                                      str r4, [sp, #0x38]
0051b8b8  44 e0 8d e5                                      str lr, [sp, #0x44]
0051b8bc  48 e0 8d e5                                      str lr, [sp, #0x48]
0051b8c0  4c e0 8d e5                                      str lr, [sp, #0x4c]
0051b8c4  08 e0 8d e5                                      str lr, [sp, #8]
0051b8c8  0c e0 8d e5                                      str lr, [sp, #0xc]
0051b8cc  10 e0 8d e5                                      str lr, [sp, #0x10]
0051b8d0  14 e0 8d e5                                      str lr, [sp, #0x14]
0051b8d4  18 e0 8d e5                                      str lr, [sp, #0x18]
0051b8d8  1c e0 8d e5                                      str lr, [sp, #0x1c]
0051b8dc  20 e0 8d e5                                      str lr, [sp, #0x20]
0051b8e0  24 e0 8d e5                                      str lr, [sp, #0x24]
0051b8e4  2c 60 8d e5                                      str r6, [sp, #0x2c]
0051b8e8  30 70 8d e5                                      str r7, [sp, #0x30]
0051b8ec  34 50 8d e5                                      str r5, [sp, #0x34]
0051b8f0  3c 10 8d e5                                      str r1, [sp, #0x3c]
0051b8f4  40 a0 8d e5                                      str sl, [sp, #0x40]
0051b8f8  2c 60 92 e5                                      ldr r6, [r2, #0x2c]
0051b8fc  40 20 90 e5                                      ldr r2, [r0, #0x40]
0051b900  03 40 a0 e1                                      mov r4, r3
0051b904  00 10 96 e5                                      ldr r1, [r6]
0051b908  00 30 92 e5                                      ldr r3, [r2]
0051b90c  02 00 a0 e1                                      mov r0, r2
0051b910  0c 50 91 e5                                      ldr r5, [r1, #0xc]
0051b914  0f e0 a0 e1                                      mov lr, pc
0051b918  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
0051b91c  08 30 8d e2                                      add r3, sp, #8
0051b920  00 20 a0 e1                                      mov r2, r0
0051b924  00 30 8d e5                                      str r3, [sp]
0051b928  06 00 a0 e1                                      mov r0, r6
0051b92c  2c 10 8d e2                                      add r1, sp, #0x2c
0051b930  44 30 8d e2                                      add r3, sp, #0x44
0051b934  35 ff 2f e1                                      blx r5
0051b938  00 00 50 e3                                      cmp r0, #0
0051b93c  06 00 00 0a                                      beq #0x51b95c
0051b940  48 20 9d e5                                      ldr r2, [sp, #0x48]
0051b944  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0051b948  44 10 9d e5                                      ldr r1, [sp, #0x44]
0051b94c  01 00 a0 e3                                      mov r0, #1
0051b950  04 20 84 e5                                      str r2, [r4, #4]
0051b954  00 10 84 e5                                      str r1, [r4]
0051b958  08 30 84 e5                                      str r3, [r4, #8]
0051b95c  54 d0 8d e2                                      add sp, sp, #0x54
0051b960  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0051b964  10 92 47 00 f4 37 00 00                          .byte 0x10, 0x92, 0x47, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0051b96c, declared_size=368, range_size=368, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor14GetCollisionAtERK7Point3DIfERS1_RN6glitch4core10triangle3dIfEE
; demangled: PFFloor::GetCollisionAt(Point3D<float> const&, Point3D<float>&, glitch::core::triangle3d<float>&)
; decoder-mode: arm
0051b96c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051b970  00 50 91 e5                                      ldr r5, [r1]
0051b974  30 d0 4d e2                                      sub sp, sp, #0x30
0051b978  01 60 a0 e1                                      mov r6, r1
0051b97c  00 40 a0 e1                                      mov r4, r0
0051b980  05 10 a0 e1                                      mov r1, r5
0051b984  44 00 90 e5                                      ldr r0, [r0, #0x44]
0051b988  02 70 a0 e1                                      mov r7, r2
0051b98c  03 a0 a0 e1                                      mov sl, r3
0051b990  05 cc f7 eb                                      bl #0x30e9ac
0051b994  38 81 9f e5                                      ldr r8, [pc, #0x138]
0051b998  00 00 50 e3                                      cmp r0, #0
0051b99c  08 80 8f e0                                      add r8, pc, r8
0051b9a0  04 00 00 0a                                      beq #0x51b9b8
0051b9a4  05 00 a0 e1                                      mov r0, r5
0051b9a8  50 10 94 e5                                      ldr r1, [r4, #0x50]
0051b9ac  fe cb f7 eb                                      bl #0x30e9ac
0051b9b0  00 00 50 e3                                      cmp r0, #0
0051b9b4  02 00 00 1a                                      bne #0x51b9c4
0051b9b8  00 00 a0 e3                                      mov r0, #0
0051b9bc  30 d0 8d e2                                      add sp, sp, #0x30
0051b9c0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051b9c4  04 90 96 e5                                      ldr sb, [r6, #4]
0051b9c8  48 00 94 e5                                      ldr r0, [r4, #0x48]
0051b9cc  09 10 a0 e1                                      mov r1, sb
0051b9d0  f5 cb f7 eb                                      bl #0x30e9ac
0051b9d4  00 00 50 e3                                      cmp r0, #0
0051b9d8  f6 ff ff 0a                                      beq #0x51b9b8
0051b9dc  09 00 a0 e1                                      mov r0, sb
0051b9e0  54 10 94 e5                                      ldr r1, [r4, #0x54]
0051b9e4  f0 cb f7 eb                                      bl #0x30e9ac
0051b9e8  00 00 50 e3                                      cmp r0, #0
0051b9ec  f1 ff ff 0a                                      beq #0x51b9b8
0051b9f0  08 60 96 e5                                      ldr r6, [r6, #8]
0051b9f4  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0051b9f8  06 10 a0 e1                                      mov r1, r6
0051b9fc  ea cb f7 eb                                      bl #0x30e9ac
0051ba00  00 00 50 e3                                      cmp r0, #0
0051ba04  eb ff ff 0a                                      beq #0x51b9b8
0051ba08  06 00 a0 e1                                      mov r0, r6
0051ba0c  58 10 94 e5                                      ldr r1, [r4, #0x58]
0051ba10  e5 cb f7 eb                                      bl #0x30e9ac
0051ba14  00 00 50 e3                                      cmp r0, #0
0051ba18  e6 ff ff 0a                                      beq #0x51b9b8
0051ba1c  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0051ba20  11 13 a0 e3                                      mov r1, #0x44000000
0051ba24  00 30 a0 e3                                      mov r3, #0
0051ba28  02 20 98 e7                                      ldr r2, [r8, r2]
0051ba2c  7a 18 81 e2                                      add r1, r1, #0x7a0000
0051ba30  06 00 a0 e1                                      mov r0, r6
0051ba34  10 20 92 e5                                      ldr r2, [r2, #0x10]
0051ba38  1c 80 92 e5                                      ldr r8, [r2, #0x1c]
0051ba3c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0051ba40  24 30 8d e5                                      str r3, [sp, #0x24]
0051ba44  28 30 8d e5                                      str r3, [sp, #0x28]
0051ba48  18 50 8d e5                                      str r5, [sp, #0x18]
0051ba4c  0c 50 8d e5                                      str r5, [sp, #0xc]
0051ba50  1c 90 8d e5                                      str sb, [sp, #0x1c]
0051ba54  10 90 8d e5                                      str sb, [sp, #0x10]
0051ba58  51 cc f7 eb                                      bl #0x30eba4
0051ba5c  11 13 a0 e3                                      mov r1, #0x44000000
0051ba60  7a 18 81 e2                                      add r1, r1, #0x7a0000
0051ba64  14 00 8d e5                                      str r0, [sp, #0x14]
0051ba68  06 00 a0 e1                                      mov r0, r6
0051ba6c  4e ca f7 eb                                      bl #0x30e3ac
0051ba70  20 00 8d e5                                      str r0, [sp, #0x20]
0051ba74  2c 50 98 e5                                      ldr r5, [r8, #0x2c]
0051ba78  40 30 94 e5                                      ldr r3, [r4, #0x40]
0051ba7c  00 20 95 e5                                      ldr r2, [r5]
0051ba80  03 00 a0 e1                                      mov r0, r3
0051ba84  00 30 93 e5                                      ldr r3, [r3]
0051ba88  0c 40 92 e5                                      ldr r4, [r2, #0xc]
0051ba8c  0f e0 a0 e1                                      mov lr, pc
0051ba90  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
0051ba94  00 a0 8d e5                                      str sl, [sp]
0051ba98  00 20 a0 e1                                      mov r2, r0
0051ba9c  0c 10 8d e2                                      add r1, sp, #0xc
0051baa0  05 00 a0 e1                                      mov r0, r5
0051baa4  24 30 8d e2                                      add r3, sp, #0x24
0051baa8  34 ff 2f e1                                      blx r4
0051baac  00 00 50 e3                                      cmp r0, #0
0051bab0  c0 ff ff 0a                                      beq #0x51b9b8
0051bab4  28 20 9d e5                                      ldr r2, [sp, #0x28]
0051bab8  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0051babc  24 10 9d e5                                      ldr r1, [sp, #0x24]
0051bac0  01 00 a0 e3                                      mov r0, #1
0051bac4  04 20 87 e5                                      str r2, [r7, #4]
0051bac8  00 10 87 e5                                      str r1, [r7]
0051bacc  08 30 87 e5                                      str r3, [r7, #8]
0051bad0  b9 ff ff ea                                      b #0x51b9bc
; mapping-symbol data/literal pool
0051bad4  f4 90 47 00 f4 37 00 00                          .byte 0xf4, 0x90, 0x47, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0051badc, declared_size=356, range_size=356, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor16GetFloorHeightAtERK7Point3DIfEPfPS1_
; demangled: PFFloor::GetFloorHeightAt(Point3D<float> const&, float*, Point3D<float>*)
; decoder-mode: arm
0051badc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051bae0  34 d0 4d e2                                      sub sp, sp, #0x34
0051bae4  00 c0 a0 e3                                      mov ip, #0
0051bae8  02 50 a0 e1                                      mov r5, r2
0051baec  03 40 a0 e1                                      mov r4, r3
0051baf0  24 20 8d e2                                      add r2, sp, #0x24
0051baf4  0d 30 a0 e1                                      mov r3, sp
0051baf8  20 c0 8d e5                                      str ip, [sp, #0x20]
0051bafc  24 c0 8d e5                                      str ip, [sp, #0x24]
0051bb00  28 c0 8d e5                                      str ip, [sp, #0x28]
0051bb04  2c c0 8d e5                                      str ip, [sp, #0x2c]
0051bb08  00 c0 8d e5                                      str ip, [sp]
0051bb0c  04 c0 8d e5                                      str ip, [sp, #4]
0051bb10  08 c0 8d e5                                      str ip, [sp, #8]
0051bb14  0c c0 8d e5                                      str ip, [sp, #0xc]
0051bb18  10 c0 8d e5                                      str ip, [sp, #0x10]
0051bb1c  14 c0 8d e5                                      str ip, [sp, #0x14]
0051bb20  18 c0 8d e5                                      str ip, [sp, #0x18]
0051bb24  1c c0 8d e5                                      str ip, [sp, #0x1c]
0051bb28  8f ff ff eb                                      bl #0x51b96c
0051bb2c  00 00 50 e3                                      cmp r0, #0
0051bb30  40 00 00 0a                                      beq #0x51bc38
0051bb34  00 00 55 e3                                      cmp r5, #0
0051bb38  2c 30 9d 15                                      ldrne r3, [sp, #0x2c]
0051bb3c  00 30 85 15                                      strne r3, [r5]
0051bb40  00 00 54 e3                                      cmp r4, #0
0051bb44  3a 00 00 0a                                      beq #0x51bc34
0051bb48  00 50 9d e5                                      ldr r5, [sp]
0051bb4c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0051bb50  05 10 a0 e1                                      mov r1, r5
0051bb54  14 ca f7 eb                                      bl #0x30e3ac
0051bb58  04 70 9d e5                                      ldr r7, [sp, #4]
0051bb5c  00 80 a0 e1                                      mov r8, r0
0051bb60  10 00 9d e5                                      ldr r0, [sp, #0x10]
0051bb64  07 10 a0 e1                                      mov r1, r7
0051bb68  0f ca f7 eb                                      bl #0x30e3ac
0051bb6c  08 90 9d e5                                      ldr sb, [sp, #8]
0051bb70  00 60 a0 e1                                      mov r6, r0
0051bb74  14 00 9d e5                                      ldr r0, [sp, #0x14]
0051bb78  09 10 a0 e1                                      mov r1, sb
0051bb7c  0a ca f7 eb                                      bl #0x30e3ac
0051bb80  05 10 a0 e1                                      mov r1, r5
0051bb84  00 a0 a0 e1                                      mov sl, r0
0051bb88  18 00 9d e5                                      ldr r0, [sp, #0x18]
0051bb8c  06 ca f7 eb                                      bl #0x30e3ac
0051bb90  07 10 a0 e1                                      mov r1, r7
0051bb94  00 50 a0 e1                                      mov r5, r0
0051bb98  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0051bb9c  02 ca f7 eb                                      bl #0x30e3ac
0051bba0  09 10 a0 e1                                      mov r1, sb
0051bba4  00 70 a0 e1                                      mov r7, r0
0051bba8  20 00 9d e5                                      ldr r0, [sp, #0x20]
0051bbac  fe c9 f7 eb                                      bl #0x30e3ac
0051bbb0  02 11 86 e2                                      add r1, r6, #0x80000000
0051bbb4  00 90 a0 e1                                      mov sb, r0
0051bbb8  6b cc f7 eb                                      bl #0x30ed6c
0051bbbc  07 10 a0 e1                                      mov r1, r7
0051bbc0  00 b0 a0 e1                                      mov fp, r0
0051bbc4  0a 00 a0 e1                                      mov r0, sl
0051bbc8  67 cc f7 eb                                      bl #0x30ed6c
0051bbcc  00 10 a0 e1                                      mov r1, r0
0051bbd0  0b 00 a0 e1                                      mov r0, fp
0051bbd4  f2 cb f7 eb                                      bl #0x30eba4
0051bbd8  02 11 8a e2                                      add r1, sl, #0x80000000
0051bbdc  00 00 84 e5                                      str r0, [r4]
0051bbe0  05 00 a0 e1                                      mov r0, r5
0051bbe4  60 cc f7 eb                                      bl #0x30ed6c
0051bbe8  09 10 a0 e1                                      mov r1, sb
0051bbec  00 a0 a0 e1                                      mov sl, r0
0051bbf0  08 00 a0 e1                                      mov r0, r8
0051bbf4  5c cc f7 eb                                      bl #0x30ed6c
0051bbf8  00 10 a0 e1                                      mov r1, r0
0051bbfc  0a 00 a0 e1                                      mov r0, sl
0051bc00  e7 cb f7 eb                                      bl #0x30eba4
0051bc04  02 11 88 e2                                      add r1, r8, #0x80000000
0051bc08  04 00 84 e5                                      str r0, [r4, #4]
0051bc0c  07 00 a0 e1                                      mov r0, r7
0051bc10  55 cc f7 eb                                      bl #0x30ed6c
0051bc14  05 10 a0 e1                                      mov r1, r5
0051bc18  00 70 a0 e1                                      mov r7, r0
0051bc1c  06 00 a0 e1                                      mov r0, r6
0051bc20  51 cc f7 eb                                      bl #0x30ed6c
0051bc24  00 10 a0 e1                                      mov r1, r0
0051bc28  07 00 a0 e1                                      mov r0, r7
0051bc2c  dc cb f7 eb                                      bl #0x30eba4
0051bc30  08 00 84 e5                                      str r0, [r4, #8]
0051bc34  01 00 a0 e3                                      mov r0, #1
0051bc38  34 d0 8d e2                                      add sp, sp, #0x34
0051bc3c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0051bee8, declared_size=64, range_size=64, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor9_PostLoadEv
; demangled: PFFloor::_PostLoad()
; decoder-mode: arm
0051bee8  10 40 2d e9                                      push {r4, lr}
0051beec  a8 10 90 e5                                      ldr r1, [r0, #0xa8]
0051bef0  ac 20 90 e5                                      ldr r2, [r0, #0xac]
0051bef4  08 d0 4d e2                                      sub sp, sp, #8
0051bef8  00 40 a0 e1                                      mov r4, r0
0051befc  02 00 51 e1                                      cmp r1, r2
0051bf00  02 00 00 0a                                      beq #0x51bf10
0051bf04  a8 00 80 e2                                      add r0, r0, #0xa8
0051bf08  04 30 8d e2                                      add r3, sp, #4
0051bf0c  bf ff ff eb                                      bl #0x51be10
0051bf10  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
0051bf14  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
0051bf18  02 00 53 e1                                      cmp r3, r2
0051bf1c  b8 30 84 15                                      strne r3, [r4, #0xb8]
0051bf20  08 d0 8d e2                                      add sp, sp, #8
0051bf24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051c0bc, declared_size=32, range_size=32, mode=arm
; class-group: PFFloor
; alias: _ZNK7PFFloor10_GetNodeAtERK7Point3DIfE
; demangled: PFFloor::_GetNodeAt(Point3D<float> const&) const
; decoder-mode: arm
0051c0bc  10 40 2d e9                                      push {r4, lr}
0051c0c0  90 40 80 e2                                      add r4, r0, #0x90
0051c0c4  04 00 a0 e1                                      mov r0, r4
0051c0c8  96 ff ff eb                                      bl #0x51bf28
0051c0cc  04 00 50 e1                                      cmp r0, r4
0051c0d0  00 00 a0 03                                      moveq r0, #0
0051c0d4  1c 00 90 15                                      ldrne r0, [r0, #0x1c]
0051c0d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051c0dc, declared_size=32, range_size=32, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor10_GetNodeAtERK7Point3DIfE
; demangled: PFFloor::_GetNodeAt(Point3D<float> const&)
; decoder-mode: arm
0051c0dc  10 40 2d e9                                      push {r4, lr}
0051c0e0  90 40 80 e2                                      add r4, r0, #0x90
0051c0e4  04 00 a0 e1                                      mov r0, r4
0051c0e8  8e ff ff eb                                      bl #0x51bf28
0051c0ec  04 00 50 e1                                      cmp r0, r4
0051c0f0  00 00 a0 03                                      moveq r0, #0
0051c0f4  1c 00 90 15                                      ldrne r0, [r0, #0x1c]
0051c0f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051c2c0, declared_size=552, range_size=552, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor9_DBG_DrawEv
; demangled: PFFloor::_DBG_Draw()
; decoder-mode: arm
0051c2c0  18 32 9f e5                                      ldr r3, [pc, #0x218]
0051c2c4  18 22 9f e5                                      ldr r2, [pc, #0x218]
0051c2c8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051c2cc  03 30 8f e0                                      add r3, pc, r3
0051c2d0  02 20 93 e7                                      ldr r2, [r3, r2]
0051c2d4  2c d0 4d e2                                      sub sp, sp, #0x2c
0051c2d8  00 40 a0 e1                                      mov r4, r0
0051c2dc  10 30 92 e5                                      ldr r3, [r2, #0x10]
0051c2e0  10 50 93 e5                                      ldr r5, [r3, #0x10]
0051c2e4  ff 3f 0f e3                                      movw r3, #0xffff
0051c2e8  dc 60 95 e5                                      ldr r6, [r5, #0xdc]
0051c2ec  be 22 d6 e1                                      ldrh r2, [r6, #0x2e]
0051c2f0  03 00 52 e1                                      cmp r2, r3
0051c2f4  74 00 00 0a                                      beq #0x51c4cc
0051c2f8  24 30 8d e2                                      add r3, sp, #0x24
0051c2fc  03 00 a0 e1                                      mov r0, r3
0051c300  04 30 8d e5                                      str r3, [sp, #4]
0051c304  06 10 a0 e1                                      mov r1, r6
0051c308  01 30 a0 e3                                      mov r3, #1
0051c30c  74 03 03 eb                                      bl #0x5dd0e4
0051c310  24 00 9d e5                                      ldr r0, [sp, #0x24]
0051c314  00 00 50 e3                                      cmp r0, #0
0051c318  ff 20 a0 03                                      moveq r2, #0xff
0051c31c  01 00 00 0a                                      beq #0x51c328
0051c320  83 a6 02 eb                                      bl #0x5c5d34
0051c324  00 20 a0 e1                                      mov r2, r0
0051c328  00 30 a0 e3                                      mov r3, #0
0051c32c  05 00 a0 e1                                      mov r0, r5
0051c330  04 10 9d e5                                      ldr r1, [sp, #4]
0051c334  0b 44 02 eb                                      bl #0x5ad368
0051c338  24 30 94 e5                                      ldr r3, [r4, #0x24]
0051c33c  03 24 13 e2                                      ands r2, r3, #0x3000000
0051c340  00 80 a0 13                                      movne r8, #0
0051c344  7f a0 a0 13                                      movne sl, #0x7f
0051c348  08 90 a0 11                                      movne sb, r8
0051c34c  04 00 00 1a                                      bne #0x51c364
0051c350  20 a0 94 e5                                      ldr sl, [r4, #0x20]
0051c354  01 90 1a e2                                      ands sb, sl, #1
0051c358  ff a0 a0 03                                      moveq sl, #0xff
0051c35c  7f 80 a0 03                                      moveq r8, #0x7f
0051c360  4a 00 00 1a                                      bne #0x51c490
0051c364  68 10 94 e5                                      ldr r1, [r4, #0x68]
0051c368  00 00 51 e3                                      cmp r1, #0
0051c36c  02 00 00 0a                                      beq #0x51c37c
0051c370  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0051c374  00 00 53 e3                                      cmp r3, #0
0051c378  2f 00 00 1a                                      bne #0x51c43c
0051c37c  c4 70 94 e5                                      ldr r7, [r4, #0xc4]
0051c380  c0 40 94 e5                                      ldr r4, [r4, #0xc0]
0051c384  00 20 a0 e3                                      mov r2, #0
0051c388  00 30 e0 e3                                      mvn r3, #0
0051c38c  07 00 54 e1                                      cmp r4, r7
0051c390  22 20 cd e5                                      strb r2, [sp, #0x22]
0051c394  23 30 cd e5                                      strb r3, [sp, #0x23]
0051c398  20 20 cd e5                                      strb r2, [sp, #0x20]
0051c39c  21 30 cd e5                                      strb r3, [sp, #0x21]
0051c3a0  21 00 00 0a                                      beq #0x51c42c
0051c3a4  14 80 8d e2                                      add r8, sp, #0x14
0051c3a8  08 a0 8d e2                                      add sl, sp, #8
0051c3ac  00 90 94 e5                                      ldr sb, [r4]
0051c3b0  04 40 84 e2                                      add r4, r4, #4
0051c3b4  00 00 59 e2                                      subs r0, sb, #0
0051c3b8  19 00 00 0a                                      beq #0x51c424
0051c3bc  00 20 95 e5                                      ldr r2, [r5]
0051c3c0  00 30 99 e5                                      ldr r3, [sb]
0051c3c4  1c 60 92 e5                                      ldr r6, [r2, #0x1c]
0051c3c8  0f e0 a0 e1                                      mov lr, pc
0051c3cc  00 f0 93 e5                                      ldr pc, [r3]
0051c3d0  08 10 90 e5                                      ldr r1, [r0, #8]
0051c3d4  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0051c3d8  10 30 90 e5                                      ldr r3, [r0, #0x10]
0051c3dc  14 10 8d e5                                      str r1, [sp, #0x14]
0051c3e0  18 20 8d e5                                      str r2, [sp, #0x18]
0051c3e4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0051c3e8  00 30 99 e5                                      ldr r3, [sb]
0051c3ec  09 00 a0 e1                                      mov r0, sb
0051c3f0  0f e0 a0 e1                                      mov lr, pc
0051c3f4  08 f0 93 e5                                      ldr pc, [r3, #8]
0051c3f8  08 10 90 e5                                      ldr r1, [r0, #8]
0051c3fc  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0051c400  10 30 90 e5                                      ldr r3, [r0, #0x10]
0051c404  08 10 8d e5                                      str r1, [sp, #8]
0051c408  0c 20 8d e5                                      str r2, [sp, #0xc]
0051c40c  10 30 8d e5                                      str r3, [sp, #0x10]
0051c410  05 00 a0 e1                                      mov r0, r5
0051c414  08 10 a0 e1                                      mov r1, r8
0051c418  0a 20 a0 e1                                      mov r2, sl
0051c41c  20 30 9d e5                                      ldr r3, [sp, #0x20]
0051c420  36 ff 2f e1                                      blx r6
0051c424  07 00 54 e1                                      cmp r4, r7
0051c428  df ff ff 1a                                      bne #0x51c3ac
0051c42c  04 00 9d e5                                      ldr r0, [sp, #4]
0051c430  ec d1 f7 eb                                      bl #0x310be8
0051c434  2c d0 8d e2                                      add sp, sp, #0x2c
0051c438  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051c43c  00 60 a0 e3                                      mov r6, #0
0051c440  06 70 a0 e1                                      mov r7, r6
0051c444  00 b0 e0 e3                                      mvn fp, #0
0051c448  00 00 00 ea                                      b #0x51c450
0051c44c  68 10 94 e5                                      ldr r1, [r4, #0x68]
0051c450  00 30 95 e5                                      ldr r3, [r5]
0051c454  06 10 81 e0                                      add r1, r1, r6
0051c458  05 00 a0 e1                                      mov r0, r5
0051c45c  24 30 93 e5                                      ldr r3, [r3, #0x24]
0051c460  23 b0 cd e5                                      strb fp, [sp, #0x23]
0051c464  22 90 cd e5                                      strb sb, [sp, #0x22]
0051c468  21 80 cd e5                                      strb r8, [sp, #0x21]
0051c46c  20 a0 cd e5                                      strb sl, [sp, #0x20]
0051c470  20 20 9d e5                                      ldr r2, [sp, #0x20]
0051c474  33 ff 2f e1                                      blx r3
0051c478  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0051c47c  01 70 87 e2                                      add r7, r7, #1
0051c480  24 60 86 e2                                      add r6, r6, #0x24
0051c484  07 00 53 e1                                      cmp r3, r7
0051c488  ef ff ff 8a                                      bhi #0x51c44c
0051c48c  ba ff ff ea                                      b #0x51c37c
0051c490  02 a0 1a e2                                      ands sl, sl, #2
0051c494  ff a0 a0 13                                      movne sl, #0xff
0051c498  02 90 a0 11                                      movne sb, r2
0051c49c  0a 80 a0 11                                      movne r8, sl
0051c4a0  af ff ff 1a                                      bne #0x51c364
0051c4a4  02 00 13 e3                                      tst r3, #2
0051c4a8  7f 80 a0 13                                      movne r8, #0x7f
0051c4ac  ff 90 a0 13                                      movne sb, #0xff
0051c4b0  ab ff ff 1a                                      bne #0x51c364
0051c4b4  01 00 13 e3                                      tst r3, #1
0051c4b8  ff a0 a0 03                                      moveq sl, #0xff
0051c4bc  7f a0 a0 13                                      movne sl, #0x7f
0051c4c0  0a 80 a0 e1                                      mov r8, sl
0051c4c4  0a 90 a0 e1                                      mov sb, sl
0051c4c8  a5 ff ff ea                                      b #0x51c364
0051c4cc  06 00 a0 e1                                      mov r0, r6
0051c4d0  01 10 a0 e3                                      mov r1, #1
0051c4d4  93 f1 02 eb                                      bl #0x5d8b28
0051c4d8  00 20 a0 e1                                      mov r2, r0
0051c4dc  85 ff ff ea                                      b #0x51c2f8
; mapping-symbol data/literal pool
0051c4e0  c4 87 47 00 f4 37 00 00                          .byte 0xc4, 0x87, 0x47, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0051cca4, declared_size=380, range_size=380, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloorD1Ev
; demangled: PFFloor::~PFFloor()
; decoder-mode: arm
0051cca4  70 40 2d e9                                      push {r4, r5, r6, lr}
0051cca8  68 31 9f e5                                      ldr r3, [pc, #0x168]
0051ccac  68 21 9f e5                                      ldr r2, [pc, #0x168]
0051ccb0  00 40 a0 e1                                      mov r4, r0
0051ccb4  03 30 8f e0                                      add r3, pc, r3
0051ccb8  68 00 90 e5                                      ldr r0, [r0, #0x68]
0051ccbc  02 20 93 e7                                      ldr r2, [r3, r2]
0051ccc0  00 00 50 e3                                      cmp r0, #0
0051ccc4  08 20 82 e2                                      add r2, r2, #8
0051ccc8  00 20 84 e5                                      str r2, [r4]
0051cccc  02 00 00 0a                                      beq #0x51ccdc
0051ccd0  da cd f7 eb                                      bl #0x310440
0051ccd4  00 30 a0 e3                                      mov r3, #0
0051ccd8  68 30 84 e5                                      str r3, [r4, #0x68]
0051ccdc  40 30 94 e5                                      ldr r3, [r4, #0x40]
0051cce0  00 00 53 e3                                      cmp r3, #0
0051cce4  05 00 00 0a                                      beq #0x51cd00
0051cce8  00 20 93 e5                                      ldr r2, [r3]
0051ccec  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0051ccf0  00 00 83 e0                                      add r0, r3, r0
0051ccf4  22 02 f8 eb                                      bl #0x31d584
0051ccf8  00 30 a0 e3                                      mov r3, #0
0051ccfc  40 30 84 e5                                      str r3, [r4, #0x40]
0051cd00  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
0051cd04  c0 30 84 e2                                      add r3, r4, #0xc0
0051cd08  00 00 50 e3                                      cmp r0, #0
0051cd0c  05 00 00 0a                                      beq #0x51cd28
0051cd10  08 10 93 e5                                      ldr r1, [r3, #8]
0051cd14  01 10 60 e0                                      rsb r1, r0, r1
0051cd18  03 10 c1 e3                                      bic r1, r1, #3
0051cd1c  80 00 51 e3                                      cmp r1, #0x80
0051cd20  35 00 00 8a                                      bhi #0x51cdfc
0051cd24  75 b0 07 eb                                      bl #0x708f00
0051cd28  b4 00 84 e2                                      add r0, r4, #0xb4
0051cd2c  fa a4 f8 eb                                      bl #0x34611c
0051cd30  a8 00 84 e2                                      add r0, r4, #0xa8
0051cd34  4c fe ff eb                                      bl #0x51c66c
0051cd38  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0051cd3c  00 00 53 e3                                      cmp r3, #0
0051cd40  23 00 00 1a                                      bne #0x51cdd4
0051cd44  88 30 94 e5                                      ldr r3, [r4, #0x88]
0051cd48  00 00 53 e3                                      cmp r3, #0
0051cd4c  08 00 00 0a                                      beq #0x51cd74
0051cd50  78 50 84 e2                                      add r5, r4, #0x78
0051cd54  05 00 a0 e1                                      mov r0, r5
0051cd58  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0051cd5c  34 fe ff eb                                      bl #0x51c634
0051cd60  00 30 a0 e3                                      mov r3, #0
0051cd64  84 50 84 e5                                      str r5, [r4, #0x84]
0051cd68  88 30 84 e5                                      str r3, [r4, #0x88]
0051cd6c  80 50 84 e5                                      str r5, [r4, #0x80]
0051cd70  7c 30 84 e5                                      str r3, [r4, #0x7c]
0051cd74  28 30 84 e2                                      add r3, r4, #0x28
0051cd78  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051cd7c  03 00 50 e1                                      cmp r0, r3
0051cd80  06 00 00 0a                                      beq #0x51cda0
0051cd84  00 00 50 e3                                      cmp r0, #0
0051cd88  04 00 00 0a                                      beq #0x51cda0
0051cd8c  28 10 94 e5                                      ldr r1, [r4, #0x28]
0051cd90  01 10 60 e0                                      rsb r1, r0, r1
0051cd94  80 00 51 e3                                      cmp r1, #0x80
0051cd98  1c 00 00 8a                                      bhi #0x51ce10
0051cd9c  57 b0 07 eb                                      bl #0x708f00
0051cda0  04 30 84 e2                                      add r3, r4, #4
0051cda4  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051cda8  03 00 50 e1                                      cmp r0, r3
0051cdac  06 00 00 0a                                      beq #0x51cdcc
0051cdb0  00 00 50 e3                                      cmp r0, #0
0051cdb4  04 00 00 0a                                      beq #0x51cdcc
0051cdb8  04 10 94 e5                                      ldr r1, [r4, #4]
0051cdbc  01 10 60 e0                                      rsb r1, r0, r1
0051cdc0  80 00 51 e3                                      cmp r1, #0x80
0051cdc4  0e 00 00 8a                                      bhi #0x51ce04
0051cdc8  4c b0 07 eb                                      bl #0x708f00
0051cdcc  04 00 a0 e1                                      mov r0, r4
0051cdd0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051cdd4  90 50 84 e2                                      add r5, r4, #0x90
0051cdd8  05 00 a0 e1                                      mov r0, r5
0051cddc  94 10 94 e5                                      ldr r1, [r4, #0x94]
0051cde0  05 fe ff eb                                      bl #0x51c5fc
0051cde4  00 30 a0 e3                                      mov r3, #0
0051cde8  9c 50 84 e5                                      str r5, [r4, #0x9c]
0051cdec  a0 30 84 e5                                      str r3, [r4, #0xa0]
0051cdf0  98 50 84 e5                                      str r5, [r4, #0x98]
0051cdf4  94 30 84 e5                                      str r3, [r4, #0x94]
0051cdf8  d1 ff ff ea                                      b #0x51cd44
0051cdfc  8f cd f7 eb                                      bl #0x310440
0051ce00  c8 ff ff ea                                      b #0x51cd28
0051ce04  8d cd f7 eb                                      bl #0x310440
0051ce08  04 00 a0 e1                                      mov r0, r4
0051ce0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051ce10  8a cd f7 eb                                      bl #0x310440
0051ce14  e1 ff ff ea                                      b #0x51cda0
; mapping-symbol data/literal pool
0051ce18  dc 7d 47 00 a0 43 00 00                          .byte 0xdc, 0x7d, 0x47, 0x00, 0xa0, 0x43, 0x00, 0x00

; FUNCTION 0x0051ce20, declared_size=28, range_size=28, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloorD0Ev
; demangled: PFFloor::~PFFloor()
; decoder-mode: arm
0051ce20  10 40 2d e9                                      push {r4, lr}
0051ce24  00 40 a0 e1                                      mov r4, r0
0051ce28  9d ff ff eb                                      bl #0x51cca4
0051ce2c  04 00 a0 e1                                      mov r0, r4
0051ce30  82 cd f7 eb                                      bl #0x310440
0051ce34  04 00 a0 e1                                      mov r0, r4
0051ce38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0051ce3c, declared_size=380, range_size=380, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloorD2Ev
; demangled: PFFloor::~PFFloor()
; decoder-mode: arm
0051ce3c  70 40 2d e9                                      push {r4, r5, r6, lr}
0051ce40  68 31 9f e5                                      ldr r3, [pc, #0x168]
0051ce44  68 21 9f e5                                      ldr r2, [pc, #0x168]
0051ce48  00 40 a0 e1                                      mov r4, r0
0051ce4c  03 30 8f e0                                      add r3, pc, r3
0051ce50  68 00 90 e5                                      ldr r0, [r0, #0x68]
0051ce54  02 20 93 e7                                      ldr r2, [r3, r2]
0051ce58  00 00 50 e3                                      cmp r0, #0
0051ce5c  08 20 82 e2                                      add r2, r2, #8
0051ce60  00 20 84 e5                                      str r2, [r4]
0051ce64  02 00 00 0a                                      beq #0x51ce74
0051ce68  74 cd f7 eb                                      bl #0x310440
0051ce6c  00 30 a0 e3                                      mov r3, #0
0051ce70  68 30 84 e5                                      str r3, [r4, #0x68]
0051ce74  40 30 94 e5                                      ldr r3, [r4, #0x40]
0051ce78  00 00 53 e3                                      cmp r3, #0
0051ce7c  05 00 00 0a                                      beq #0x51ce98
0051ce80  00 20 93 e5                                      ldr r2, [r3]
0051ce84  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0051ce88  00 00 83 e0                                      add r0, r3, r0
0051ce8c  bc 01 f8 eb                                      bl #0x31d584
0051ce90  00 30 a0 e3                                      mov r3, #0
0051ce94  40 30 84 e5                                      str r3, [r4, #0x40]
0051ce98  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
0051ce9c  c0 30 84 e2                                      add r3, r4, #0xc0
0051cea0  00 00 50 e3                                      cmp r0, #0
0051cea4  05 00 00 0a                                      beq #0x51cec0
0051cea8  08 10 93 e5                                      ldr r1, [r3, #8]
0051ceac  01 10 60 e0                                      rsb r1, r0, r1
0051ceb0  03 10 c1 e3                                      bic r1, r1, #3
0051ceb4  80 00 51 e3                                      cmp r1, #0x80
0051ceb8  35 00 00 8a                                      bhi #0x51cf94
0051cebc  0f b0 07 eb                                      bl #0x708f00
0051cec0  b4 00 84 e2                                      add r0, r4, #0xb4
0051cec4  94 a4 f8 eb                                      bl #0x34611c
0051cec8  a8 00 84 e2                                      add r0, r4, #0xa8
0051cecc  e6 fd ff eb                                      bl #0x51c66c
0051ced0  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
0051ced4  00 00 53 e3                                      cmp r3, #0
0051ced8  23 00 00 1a                                      bne #0x51cf6c
0051cedc  88 30 94 e5                                      ldr r3, [r4, #0x88]
0051cee0  00 00 53 e3                                      cmp r3, #0
0051cee4  08 00 00 0a                                      beq #0x51cf0c
0051cee8  78 50 84 e2                                      add r5, r4, #0x78
0051ceec  05 00 a0 e1                                      mov r0, r5
0051cef0  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
0051cef4  ce fd ff eb                                      bl #0x51c634
0051cef8  00 30 a0 e3                                      mov r3, #0
0051cefc  84 50 84 e5                                      str r5, [r4, #0x84]
0051cf00  88 30 84 e5                                      str r3, [r4, #0x88]
0051cf04  80 50 84 e5                                      str r5, [r4, #0x80]
0051cf08  7c 30 84 e5                                      str r3, [r4, #0x7c]
0051cf0c  28 30 84 e2                                      add r3, r4, #0x28
0051cf10  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051cf14  03 00 50 e1                                      cmp r0, r3
0051cf18  06 00 00 0a                                      beq #0x51cf38
0051cf1c  00 00 50 e3                                      cmp r0, #0
0051cf20  04 00 00 0a                                      beq #0x51cf38
0051cf24  28 10 94 e5                                      ldr r1, [r4, #0x28]
0051cf28  01 10 60 e0                                      rsb r1, r0, r1
0051cf2c  80 00 51 e3                                      cmp r1, #0x80
0051cf30  1c 00 00 8a                                      bhi #0x51cfa8
0051cf34  f1 af 07 eb                                      bl #0x708f00
0051cf38  04 30 84 e2                                      add r3, r4, #4
0051cf3c  14 00 93 e5                                      ldr r0, [r3, #0x14]
0051cf40  03 00 50 e1                                      cmp r0, r3
0051cf44  06 00 00 0a                                      beq #0x51cf64
0051cf48  00 00 50 e3                                      cmp r0, #0
0051cf4c  04 00 00 0a                                      beq #0x51cf64
0051cf50  04 10 94 e5                                      ldr r1, [r4, #4]
0051cf54  01 10 60 e0                                      rsb r1, r0, r1
0051cf58  80 00 51 e3                                      cmp r1, #0x80
0051cf5c  0e 00 00 8a                                      bhi #0x51cf9c
0051cf60  e6 af 07 eb                                      bl #0x708f00
0051cf64  04 00 a0 e1                                      mov r0, r4
0051cf68  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051cf6c  90 50 84 e2                                      add r5, r4, #0x90
0051cf70  05 00 a0 e1                                      mov r0, r5
0051cf74  94 10 94 e5                                      ldr r1, [r4, #0x94]
0051cf78  9f fd ff eb                                      bl #0x51c5fc
0051cf7c  00 30 a0 e3                                      mov r3, #0
0051cf80  9c 50 84 e5                                      str r5, [r4, #0x9c]
0051cf84  a0 30 84 e5                                      str r3, [r4, #0xa0]
0051cf88  98 50 84 e5                                      str r5, [r4, #0x98]
0051cf8c  94 30 84 e5                                      str r3, [r4, #0x94]
0051cf90  d1 ff ff ea                                      b #0x51cedc
0051cf94  29 cd f7 eb                                      bl #0x310440
0051cf98  c8 ff ff ea                                      b #0x51cec0
0051cf9c  27 cd f7 eb                                      bl #0x310440
0051cfa0  04 00 a0 e1                                      mov r0, r4
0051cfa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
0051cfa8  24 cd f7 eb                                      bl #0x310440
0051cfac  e1 ff ff ea                                      b #0x51cf38
; mapping-symbol data/literal pool
0051cfb0  44 7c 47 00 a0 43 00 00                          .byte 0x44, 0x7c, 0x47, 0x00, 0xa0, 0x43, 0x00, 0x00

; FUNCTION 0x0051d1b4, declared_size=600, range_size=600, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloorC1EPKcP6PFRoomP13PFGOuterGraphP13PFGInnerGraphj
; demangled: PFFloor::PFFloor(char const*, PFRoom*, PFGOuterGraph*, PFGInnerGraph*, unsigned int)
; decoder-mode: arm
0051d1b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051d1b8  18 52 9f e5                                      ldr r5, [pc, #0x218]
0051d1bc  18 c2 9f e5                                      ldr ip, [pc, #0x218]
0051d1c0  10 d0 4d e2                                      sub sp, sp, #0x10
0051d1c4  05 50 8f e0                                      add r5, pc, r5
0051d1c8  0c c0 95 e7                                      ldr ip, [r5, ip]
0051d1cc  00 40 a0 e1                                      mov r4, r0
0051d1d0  02 60 a0 e1                                      mov r6, r2
0051d1d4  08 c0 8c e2                                      add ip, ip, #8
0051d1d8  0c 20 8d e2                                      add r2, sp, #0xc
0051d1dc  04 c0 80 e4                                      str ip, [r0], #4
0051d1e0  03 80 a0 e1                                      mov r8, r3
0051d1e4  c0 db f7 eb                                      bl #0x3140ec
0051d1e8  1c 60 84 e5                                      str r6, [r4, #0x1c]
0051d1ec  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0051d1f0  00 70 a0 e3                                      mov r7, #0
0051d1f4  28 00 84 e2                                      add r0, r4, #0x28
0051d1f8  20 30 84 e5                                      str r3, [r4, #0x20]
0051d1fc  38 00 84 e5                                      str r0, [r4, #0x38]
0051d200  3c 00 84 e5                                      str r0, [r4, #0x3c]
0051d204  10 10 a0 e3                                      mov r1, #0x10
0051d208  24 70 84 e5                                      str r7, [r4, #0x24]
0051d20c  1a d1 f7 eb                                      bl #0x31167c
0051d210  38 00 94 e5                                      ldr r0, [r4, #0x38]
0051d214  00 30 a0 e3                                      mov r3, #0
0051d218  04 10 a0 e1                                      mov r1, r4
0051d21c  00 70 c0 e5                                      strb r7, [r0]
0051d220  64 30 84 e5                                      str r3, [r4, #0x64]
0051d224  28 00 9d e5                                      ldr r0, [sp, #0x28]
0051d228  04 20 a0 e1                                      mov r2, r4
0051d22c  44 30 84 e5                                      str r3, [r4, #0x44]
0051d230  48 30 84 e5                                      str r3, [r4, #0x48]
0051d234  4c 30 84 e5                                      str r3, [r4, #0x4c]
0051d238  50 30 84 e5                                      str r3, [r4, #0x50]
0051d23c  54 30 84 e5                                      str r3, [r4, #0x54]
0051d240  58 30 84 e5                                      str r3, [r4, #0x58]
0051d244  5c 30 84 e5                                      str r3, [r4, #0x5c]
0051d248  60 30 84 e5                                      str r3, [r4, #0x60]
0051d24c  74 00 84 e5                                      str r0, [r4, #0x74]
0051d250  40 70 84 e5                                      str r7, [r4, #0x40]
0051d254  68 70 84 e5                                      str r7, [r4, #0x68]
0051d258  6c 70 84 e5                                      str r7, [r4, #0x6c]
0051d25c  70 80 84 e5                                      str r8, [r4, #0x70]
0051d260  7c 70 84 e5                                      str r7, [r4, #0x7c]
0051d264  78 70 e1 e5                                      strb r7, [r1, #0x78]!
0051d268  84 10 84 e5                                      str r1, [r4, #0x84]
0051d26c  80 10 84 e5                                      str r1, [r4, #0x80]
0051d270  88 70 84 e5                                      str r7, [r4, #0x88]
0051d274  94 70 84 e5                                      str r7, [r4, #0x94]
0051d278  90 70 e2 e5                                      strb r7, [r2, #0x90]!
0051d27c  9c 20 84 e5                                      str r2, [r4, #0x9c]
0051d280  98 20 84 e5                                      str r2, [r4, #0x98]
0051d284  a0 70 84 e5                                      str r7, [r4, #0xa0]
0051d288  a8 70 84 e5                                      str r7, [r4, #0xa8]
0051d28c  ac 70 84 e5                                      str r7, [r4, #0xac]
0051d290  b0 70 84 e5                                      str r7, [r4, #0xb0]
0051d294  b4 70 84 e5                                      str r7, [r4, #0xb4]
0051d298  b8 70 84 e5                                      str r7, [r4, #0xb8]
0051d29c  bc 70 84 e5                                      str r7, [r4, #0xbc]
0051d2a0  c0 70 84 e5                                      str r7, [r4, #0xc0]
0051d2a4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0051d2a8  c4 70 84 e5                                      str r7, [r4, #0xc4]
0051d2ac  c8 70 84 e5                                      str r7, [r4, #0xc8]
0051d2b0  07 00 53 e1                                      cmp r3, r7
0051d2b4  1c 00 00 0a                                      beq #0x51d32c
0051d2b8  00 00 58 e3                                      cmp r8, #0
0051d2bc  30 00 00 0a                                      beq #0x51d384
0051d2c0  74 30 94 e5                                      ldr r3, [r4, #0x74]
0051d2c4  00 00 53 e3                                      cmp r3, #0
0051d2c8  02 00 00 0a                                      beq #0x51d2d8
0051d2cc  04 00 a0 e1                                      mov r0, r4
0051d2d0  10 d0 8d e2                                      add sp, sp, #0x10
0051d2d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051d2d8  00 21 9f e5                                      ldr r2, [pc, #0x100]
0051d2dc  02 20 95 e7                                      ldr r2, [r5, r2]
0051d2e0  00 20 92 e5                                      ldr r2, [r2]
0051d2e4  02 00 52 e3                                      cmp r2, #2
0051d2e8  00 30 83 05                                      streq r3, [r3]
0051d2ec  f6 ff ff 0a                                      beq #0x51d2cc
0051d2f0  01 00 52 e3                                      cmp r2, #1
0051d2f4  f4 ff ff 1a                                      bne #0x51d2cc
0051d2f8  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
0051d2fc  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0051d300  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
0051d304  00 00 95 e7                                      ldr r0, [r5, r0]
0051d308  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0051d30c  24 c0 a0 e3                                      mov ip, #0x24
0051d310  01 10 8f e0                                      add r1, pc, r1
0051d314  02 20 8f e0                                      add r2, pc, r2
0051d318  03 30 8f e0                                      add r3, pc, r3
0051d31c  a8 00 80 e2                                      add r0, r0, #0xa8
0051d320  00 c0 8d e5                                      str ip, [sp]
0051d324  36 c3 f7 eb                                      bl #0x30e004
0051d328  e7 ff ff ea                                      b #0x51d2cc
0051d32c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0051d330  02 20 95 e7                                      ldr r2, [r5, r2]
0051d334  00 20 92 e5                                      ldr r2, [r2]
0051d338  02 00 52 e3                                      cmp r2, #2
0051d33c  00 30 83 05                                      streq r3, [r3]
0051d340  dc ff ff 0a                                      beq #0x51d2b8
0051d344  01 00 52 e3                                      cmp r2, #1
0051d348  da ff ff 1a                                      bne #0x51d2b8
0051d34c  90 00 9f e5                                      ldr r0, [pc, #0x90]
0051d350  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0051d354  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0051d358  00 00 95 e7                                      ldr r0, [r5, r0]
0051d35c  98 30 9f e5                                      ldr r3, [pc, #0x98]
0051d360  22 c0 a0 e3                                      mov ip, #0x22
0051d364  01 10 8f e0                                      add r1, pc, r1
0051d368  a8 00 80 e2                                      add r0, r0, #0xa8
0051d36c  02 20 8f e0                                      add r2, pc, r2
0051d370  03 30 8f e0                                      add r3, pc, r3
0051d374  00 c0 8d e5                                      str ip, [sp]
0051d378  21 c3 f7 eb                                      bl #0x30e004
0051d37c  70 80 94 e5                                      ldr r8, [r4, #0x70]
0051d380  cc ff ff ea                                      b #0x51d2b8
0051d384  54 30 9f e5                                      ldr r3, [pc, #0x54]
0051d388  03 30 95 e7                                      ldr r3, [r5, r3]
0051d38c  00 30 93 e5                                      ldr r3, [r3]
0051d390  02 00 53 e3                                      cmp r3, #2
0051d394  00 80 88 05                                      streq r8, [r8]
0051d398  c8 ff ff 0a                                      beq #0x51d2c0
0051d39c  01 00 53 e3                                      cmp r3, #1
0051d3a0  c6 ff ff 1a                                      bne #0x51d2c0
0051d3a4  38 00 9f e5                                      ldr r0, [pc, #0x38]
0051d3a8  50 10 9f e5                                      ldr r1, [pc, #0x50]
0051d3ac  50 20 9f e5                                      ldr r2, [pc, #0x50]
0051d3b0  00 00 95 e7                                      ldr r0, [r5, r0]
0051d3b4  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0051d3b8  23 c0 a0 e3                                      mov ip, #0x23
0051d3bc  01 10 8f e0                                      add r1, pc, r1
0051d3c0  02 20 8f e0                                      add r2, pc, r2
0051d3c4  03 30 8f e0                                      add r3, pc, r3
0051d3c8  a8 00 80 e2                                      add r0, r0, #0xa8
0051d3cc  00 c0 8d e5                                      str ip, [sp]
0051d3d0  0b c3 f7 eb                                      bl #0x30e004
0051d3d4  b9 ff ff ea                                      b #0x51d2c0
; mapping-symbol data/literal pool
0051d3d8  cc 78 47 00 a0 43 00 00 c0 39 00 00 c0 19 00 00  .byte 0xcc, 0x78, 0x47, 0x00, 0xa0, 0x43, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0051d3e8  c8 10 3a 00 14 f6 3b 00 b8 f5 3b 00 74 10 3a 00  .byte 0xc8, 0x10, 0x3a, 0x00, 0x14, 0xf6, 0x3b, 0x00, 0xb8, 0xf5, 0x3b, 0x00, 0x74, 0x10, 0x3a, 0x00
0051d3f8  5c f5 3b 00 60 f5 3b 00 1c 10 3a 00 58 f5 3b 00  .byte 0x5c, 0xf5, 0x3b, 0x00, 0x60, 0xf5, 0x3b, 0x00, 0x1c, 0x10, 0x3a, 0x00, 0x58, 0xf5, 0x3b, 0x00
0051d408  0c f5 3b 00                                      .byte 0x0c, 0xf5, 0x3b, 0x00

; FUNCTION 0x0051d40c, declared_size=600, range_size=600, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloorC2EPKcP6PFRoomP13PFGOuterGraphP13PFGInnerGraphj
; demangled: PFFloor::PFFloor(char const*, PFRoom*, PFGOuterGraph*, PFGInnerGraph*, unsigned int)
; decoder-mode: arm
0051d40c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0051d410  18 52 9f e5                                      ldr r5, [pc, #0x218]
0051d414  18 c2 9f e5                                      ldr ip, [pc, #0x218]
0051d418  10 d0 4d e2                                      sub sp, sp, #0x10
0051d41c  05 50 8f e0                                      add r5, pc, r5
0051d420  0c c0 95 e7                                      ldr ip, [r5, ip]
0051d424  00 40 a0 e1                                      mov r4, r0
0051d428  02 60 a0 e1                                      mov r6, r2
0051d42c  08 c0 8c e2                                      add ip, ip, #8
0051d430  0c 20 8d e2                                      add r2, sp, #0xc
0051d434  04 c0 80 e4                                      str ip, [r0], #4
0051d438  03 80 a0 e1                                      mov r8, r3
0051d43c  2a db f7 eb                                      bl #0x3140ec
0051d440  1c 60 84 e5                                      str r6, [r4, #0x1c]
0051d444  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0051d448  00 70 a0 e3                                      mov r7, #0
0051d44c  28 00 84 e2                                      add r0, r4, #0x28
0051d450  20 30 84 e5                                      str r3, [r4, #0x20]
0051d454  38 00 84 e5                                      str r0, [r4, #0x38]
0051d458  3c 00 84 e5                                      str r0, [r4, #0x3c]
0051d45c  10 10 a0 e3                                      mov r1, #0x10
0051d460  24 70 84 e5                                      str r7, [r4, #0x24]
0051d464  84 d0 f7 eb                                      bl #0x31167c
0051d468  38 00 94 e5                                      ldr r0, [r4, #0x38]
0051d46c  00 30 a0 e3                                      mov r3, #0
0051d470  04 10 a0 e1                                      mov r1, r4
0051d474  00 70 c0 e5                                      strb r7, [r0]
0051d478  64 30 84 e5                                      str r3, [r4, #0x64]
0051d47c  28 00 9d e5                                      ldr r0, [sp, #0x28]
0051d480  04 20 a0 e1                                      mov r2, r4
0051d484  44 30 84 e5                                      str r3, [r4, #0x44]
0051d488  48 30 84 e5                                      str r3, [r4, #0x48]
0051d48c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0051d490  50 30 84 e5                                      str r3, [r4, #0x50]
0051d494  54 30 84 e5                                      str r3, [r4, #0x54]
0051d498  58 30 84 e5                                      str r3, [r4, #0x58]
0051d49c  5c 30 84 e5                                      str r3, [r4, #0x5c]
0051d4a0  60 30 84 e5                                      str r3, [r4, #0x60]
0051d4a4  74 00 84 e5                                      str r0, [r4, #0x74]
0051d4a8  40 70 84 e5                                      str r7, [r4, #0x40]
0051d4ac  68 70 84 e5                                      str r7, [r4, #0x68]
0051d4b0  6c 70 84 e5                                      str r7, [r4, #0x6c]
0051d4b4  70 80 84 e5                                      str r8, [r4, #0x70]
0051d4b8  7c 70 84 e5                                      str r7, [r4, #0x7c]
0051d4bc  78 70 e1 e5                                      strb r7, [r1, #0x78]!
0051d4c0  84 10 84 e5                                      str r1, [r4, #0x84]
0051d4c4  80 10 84 e5                                      str r1, [r4, #0x80]
0051d4c8  88 70 84 e5                                      str r7, [r4, #0x88]
0051d4cc  94 70 84 e5                                      str r7, [r4, #0x94]
0051d4d0  90 70 e2 e5                                      strb r7, [r2, #0x90]!
0051d4d4  9c 20 84 e5                                      str r2, [r4, #0x9c]
0051d4d8  98 20 84 e5                                      str r2, [r4, #0x98]
0051d4dc  a0 70 84 e5                                      str r7, [r4, #0xa0]
0051d4e0  a8 70 84 e5                                      str r7, [r4, #0xa8]
0051d4e4  ac 70 84 e5                                      str r7, [r4, #0xac]
0051d4e8  b0 70 84 e5                                      str r7, [r4, #0xb0]
0051d4ec  b4 70 84 e5                                      str r7, [r4, #0xb4]
0051d4f0  b8 70 84 e5                                      str r7, [r4, #0xb8]
0051d4f4  bc 70 84 e5                                      str r7, [r4, #0xbc]
0051d4f8  c0 70 84 e5                                      str r7, [r4, #0xc0]
0051d4fc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0051d500  c4 70 84 e5                                      str r7, [r4, #0xc4]
0051d504  c8 70 84 e5                                      str r7, [r4, #0xc8]
0051d508  07 00 53 e1                                      cmp r3, r7
0051d50c  1c 00 00 0a                                      beq #0x51d584
0051d510  00 00 58 e3                                      cmp r8, #0
0051d514  30 00 00 0a                                      beq #0x51d5dc
0051d518  74 30 94 e5                                      ldr r3, [r4, #0x74]
0051d51c  00 00 53 e3                                      cmp r3, #0
0051d520  02 00 00 0a                                      beq #0x51d530
0051d524  04 00 a0 e1                                      mov r0, r4
0051d528  10 d0 8d e2                                      add sp, sp, #0x10
0051d52c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0051d530  00 21 9f e5                                      ldr r2, [pc, #0x100]
0051d534  02 20 95 e7                                      ldr r2, [r5, r2]
0051d538  00 20 92 e5                                      ldr r2, [r2]
0051d53c  02 00 52 e3                                      cmp r2, #2
0051d540  00 30 83 05                                      streq r3, [r3]
0051d544  f6 ff ff 0a                                      beq #0x51d524
0051d548  01 00 52 e3                                      cmp r2, #1
0051d54c  f4 ff ff 1a                                      bne #0x51d524
0051d550  e4 00 9f e5                                      ldr r0, [pc, #0xe4]
0051d554  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
0051d558  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
0051d55c  00 00 95 e7                                      ldr r0, [r5, r0]
0051d560  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
0051d564  24 c0 a0 e3                                      mov ip, #0x24
0051d568  01 10 8f e0                                      add r1, pc, r1
0051d56c  02 20 8f e0                                      add r2, pc, r2
0051d570  03 30 8f e0                                      add r3, pc, r3
0051d574  a8 00 80 e2                                      add r0, r0, #0xa8
0051d578  00 c0 8d e5                                      str ip, [sp]
0051d57c  a0 c2 f7 eb                                      bl #0x30e004
0051d580  e7 ff ff ea                                      b #0x51d524
0051d584  ac 20 9f e5                                      ldr r2, [pc, #0xac]
0051d588  02 20 95 e7                                      ldr r2, [r5, r2]
0051d58c  00 20 92 e5                                      ldr r2, [r2]
0051d590  02 00 52 e3                                      cmp r2, #2
0051d594  00 30 83 05                                      streq r3, [r3]
0051d598  dc ff ff 0a                                      beq #0x51d510
0051d59c  01 00 52 e3                                      cmp r2, #1
0051d5a0  da ff ff 1a                                      bne #0x51d510
0051d5a4  90 00 9f e5                                      ldr r0, [pc, #0x90]
0051d5a8  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0051d5ac  9c 20 9f e5                                      ldr r2, [pc, #0x9c]
0051d5b0  00 00 95 e7                                      ldr r0, [r5, r0]
0051d5b4  98 30 9f e5                                      ldr r3, [pc, #0x98]
0051d5b8  22 c0 a0 e3                                      mov ip, #0x22
0051d5bc  01 10 8f e0                                      add r1, pc, r1
0051d5c0  a8 00 80 e2                                      add r0, r0, #0xa8
0051d5c4  02 20 8f e0                                      add r2, pc, r2
0051d5c8  03 30 8f e0                                      add r3, pc, r3
0051d5cc  00 c0 8d e5                                      str ip, [sp]
0051d5d0  8b c2 f7 eb                                      bl #0x30e004
0051d5d4  70 80 94 e5                                      ldr r8, [r4, #0x70]
0051d5d8  cc ff ff ea                                      b #0x51d510
0051d5dc  54 30 9f e5                                      ldr r3, [pc, #0x54]
0051d5e0  03 30 95 e7                                      ldr r3, [r5, r3]
0051d5e4  00 30 93 e5                                      ldr r3, [r3]
0051d5e8  02 00 53 e3                                      cmp r3, #2
0051d5ec  00 80 88 05                                      streq r8, [r8]
0051d5f0  c8 ff ff 0a                                      beq #0x51d518
0051d5f4  01 00 53 e3                                      cmp r3, #1
0051d5f8  c6 ff ff 1a                                      bne #0x51d518
0051d5fc  38 00 9f e5                                      ldr r0, [pc, #0x38]
0051d600  50 10 9f e5                                      ldr r1, [pc, #0x50]
0051d604  50 20 9f e5                                      ldr r2, [pc, #0x50]
0051d608  00 00 95 e7                                      ldr r0, [r5, r0]
0051d60c  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
0051d610  23 c0 a0 e3                                      mov ip, #0x23
0051d614  01 10 8f e0                                      add r1, pc, r1
0051d618  02 20 8f e0                                      add r2, pc, r2
0051d61c  03 30 8f e0                                      add r3, pc, r3
0051d620  a8 00 80 e2                                      add r0, r0, #0xa8
0051d624  00 c0 8d e5                                      str ip, [sp]
0051d628  75 c2 f7 eb                                      bl #0x30e004
0051d62c  b9 ff ff ea                                      b #0x51d518
; mapping-symbol data/literal pool
0051d630  74 76 47 00 a0 43 00 00 c0 39 00 00 c0 19 00 00  .byte 0x74, 0x76, 0x47, 0x00, 0xa0, 0x43, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
0051d640  70 0e 3a 00 bc f3 3b 00 60 f3 3b 00 1c 0e 3a 00  .byte 0x70, 0x0e, 0x3a, 0x00, 0xbc, 0xf3, 0x3b, 0x00, 0x60, 0xf3, 0x3b, 0x00, 0x1c, 0x0e, 0x3a, 0x00
0051d650  04 f3 3b 00 08 f3 3b 00 c4 0d 3a 00 00 f3 3b 00  .byte 0x04, 0xf3, 0x3b, 0x00, 0x08, 0xf3, 0x3b, 0x00, 0xc4, 0x0d, 0x3a, 0x00, 0x00, 0xf3, 0x3b, 0x00
0051d660  b4 f2 3b 00                                      .byte 0xb4, 0xf2, 0x3b, 0x00

; FUNCTION 0x0051e98c, declared_size=296, range_size=296, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor11_CreateEdgeEP12PFGInnerNodeS1_
; demangled: PFFloor::_CreateEdge(PFGInnerNode*, PFGInnerNode*)
; decoder-mode: arm
0051e98c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0051e990  00 30 a0 e1                                      mov r3, r0
0051e994  20 00 90 e5                                      ldr r0, [r0, #0x20]
0051e998  01 40 a0 e1                                      mov r4, r1
0051e99c  02 50 a0 e1                                      mov r5, r2
0051e9a0  02 04 10 e3                                      tst r0, #0x2000000
0051e9a4  02 00 00 0a                                      beq #0x51e9b4
0051e9a8  00 60 a0 e3                                      mov r6, #0
0051e9ac  06 00 a0 e1                                      mov r0, r6
0051e9b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0051e9b4  00 00 51 e3                                      cmp r1, #0
0051e9b8  00 00 52 13                                      cmpne r2, #0
0051e9bc  f9 ff ff 0a                                      beq #0x51e9a8
0051e9c0  00 20 91 e5                                      ldr r2, [r1]
0051e9c4  01 00 a0 e1                                      mov r0, r1
0051e9c8  74 70 93 e5                                      ldr r7, [r3, #0x74]
0051e9cc  0f e0 a0 e1                                      mov lr, pc
0051e9d0  00 f0 92 e5                                      ldr pc, [r2]
0051e9d4  00 30 95 e5                                      ldr r3, [r5]
0051e9d8  00 60 a0 e1                                      mov r6, r0
0051e9dc  05 00 a0 e1                                      mov r0, r5
0051e9e0  0f e0 a0 e1                                      mov lr, pc
0051e9e4  00 f0 93 e5                                      ldr pc, [r3]
0051e9e8  06 10 a0 e1                                      mov r1, r6
0051e9ec  00 20 a0 e1                                      mov r2, r0
0051e9f0  07 00 a0 e1                                      mov r0, r7
0051e9f4  57 ff ff eb                                      bl #0x51e758
0051e9f8  08 10 94 e5                                      ldr r1, [r4, #8]
0051e9fc  00 60 a0 e1                                      mov r6, r0
0051ea00  08 00 95 e5                                      ldr r0, [r5, #8]
0051ea04  68 be f7 eb                                      bl #0x30e3ac
0051ea08  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0051ea0c  00 70 a0 e1                                      mov r7, r0
0051ea10  0c 00 95 e5                                      ldr r0, [r5, #0xc]
0051ea14  64 be f7 eb                                      bl #0x30e3ac
0051ea18  10 10 94 e5                                      ldr r1, [r4, #0x10]
0051ea1c  00 a0 a0 e1                                      mov sl, r0
0051ea20  10 00 95 e5                                      ldr r0, [r5, #0x10]
0051ea24  60 be f7 eb                                      bl #0x30e3ac
0051ea28  07 10 a0 e1                                      mov r1, r7
0051ea2c  00 80 a0 e1                                      mov r8, r0
0051ea30  07 00 a0 e1                                      mov r0, r7
0051ea34  cc c0 f7 eb                                      bl #0x30ed6c
0051ea38  0a 10 a0 e1                                      mov r1, sl
0051ea3c  00 70 a0 e1                                      mov r7, r0
0051ea40  0a 00 a0 e1                                      mov r0, sl
0051ea44  c8 c0 f7 eb                                      bl #0x30ed6c
0051ea48  00 10 a0 e1                                      mov r1, r0
0051ea4c  07 00 a0 e1                                      mov r0, r7
0051ea50  53 c0 f7 eb                                      bl #0x30eba4
0051ea54  08 10 a0 e1                                      mov r1, r8
0051ea58  00 70 a0 e1                                      mov r7, r0
0051ea5c  08 00 a0 e1                                      mov r0, r8
0051ea60  c1 c0 f7 eb                                      bl #0x30ed6c
0051ea64  00 10 a0 e1                                      mov r1, r0
0051ea68  07 00 a0 e1                                      mov r0, r7
0051ea6c  4c c0 f7 eb                                      bl #0x30eba4
0051ea70  ab bd f7 eb                                      bl #0x30e124
0051ea74  10 00 86 e5                                      str r0, [r6, #0x10]
0051ea78  20 50 95 e5                                      ldr r5, [r5, #0x20]
0051ea7c  20 40 94 e5                                      ldr r4, [r4, #0x20]
0051ea80  00 70 a0 e1                                      mov r7, r0
0051ea84  05 00 a0 e1                                      mov r0, r5
0051ea88  04 10 a0 e1                                      mov r1, r4
0051ea8c  1e bf f7 eb                                      bl #0x30e70c
0051ea90  00 00 50 e3                                      cmp r0, #0
0051ea94  04 50 a0 01                                      moveq r5, r4
0051ea98  14 50 86 e5                                      str r5, [r6, #0x14]
0051ea9c  07 10 a0 e1                                      mov r1, r7
0051eaa0  00 30 96 e5                                      ldr r3, [r6]
0051eaa4  06 00 a0 e1                                      mov r0, r6
0051eaa8  0f e0 a0 e1                                      mov lr, pc
0051eaac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0051eab0  bd ff ff ea                                      b #0x51e9ac

; FUNCTION 0x0051fa64, declared_size=788, range_size=788, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor11_CreateNodeERK7Point3DIfES3_S3_b
; demangled: PFFloor::_CreateNode(Point3D<float> const&, Point3D<float> const&, Point3D<float> const&, bool)
; decoder-mode: arm
0051fa64  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051fa68  00 50 a0 e1                                      mov r5, r0
0051fa6c  54 d0 4d e2                                      sub sp, sp, #0x54
0051fa70  20 00 90 e5                                      ldr r0, [r0, #0x20]
0051fa74  02 80 a0 e1                                      mov r8, r2
0051fa78  78 20 dd e5                                      ldrb r2, [sp, #0x78]
0051fa7c  01 04 10 e3                                      tst r0, #0x1000000
0051fa80  01 40 a0 e1                                      mov r4, r1
0051fa84  03 b0 a0 e1                                      mov fp, r3
0051fa88  08 20 8d e5                                      str r2, [sp, #8]
0051fa8c  4c 00 00 1a                                      bne #0x51fbc4
0051fa90  00 30 a0 e3                                      mov r3, #0
0051fa94  04 10 98 e5                                      ldr r1, [r8, #4]
0051fa98  04 00 94 e5                                      ldr r0, [r4, #4]
0051fa9c  40 30 8d e5                                      str r3, [sp, #0x40]
0051faa0  38 30 8d e5                                      str r3, [sp, #0x38]
0051faa4  3c 30 8d e5                                      str r3, [sp, #0x3c]
0051faa8  3d bc f7 eb                                      bl #0x30eba4
0051faac  3f 14 a0 e3                                      mov r1, #0x3f000000
0051fab0  ad bc f7 eb                                      bl #0x30ed6c
0051fab4  08 10 98 e5                                      ldr r1, [r8, #8]
0051fab8  00 90 a0 e1                                      mov sb, r0
0051fabc  08 00 94 e5                                      ldr r0, [r4, #8]
0051fac0  37 bc f7 eb                                      bl #0x30eba4
0051fac4  3f 14 a0 e3                                      mov r1, #0x3f000000
0051fac8  a7 bc f7 eb                                      bl #0x30ed6c
0051facc  00 10 98 e5                                      ldr r1, [r8]
0051fad0  00 a0 a0 e1                                      mov sl, r0
0051fad4  00 00 94 e5                                      ldr r0, [r4]
0051fad8  31 bc f7 eb                                      bl #0x30eba4
0051fadc  3f 14 a0 e3                                      mov r1, #0x3f000000
0051fae0  a1 bc f7 eb                                      bl #0x30ed6c
0051fae4  90 60 85 e2                                      add r6, r5, #0x90
0051fae8  44 70 8d e2                                      add r7, sp, #0x44
0051faec  44 00 8d e5                                      str r0, [sp, #0x44]
0051faf0  07 10 a0 e1                                      mov r1, r7
0051faf4  06 00 a0 e1                                      mov r0, r6
0051faf8  48 90 8d e5                                      str sb, [sp, #0x48]
0051fafc  4c a0 8d e5                                      str sl, [sp, #0x4c]
0051fb00  5c f0 ff eb                                      bl #0x51bc78
0051fb04  06 00 50 e1                                      cmp r0, r6
0051fb08  1c 80 90 15                                      ldrne r8, [r0, #0x1c]
0051fb0c  2e 00 00 0a                                      beq #0x51fbcc
0051fb10  08 00 a0 e1                                      mov r0, r8
0051fb14  54 d0 8d e2                                      add sp, sp, #0x54
0051fb18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051fb1c  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0051fb20  48 00 9d e5                                      ldr r0, [sp, #0x48]
0051fb24  1e bc f7 eb                                      bl #0x30eba4
0051fb28  40 10 9d e5                                      ldr r1, [sp, #0x40]
0051fb2c  00 80 a0 e1                                      mov r8, r0
0051fb30  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0051fb34  1a bc f7 eb                                      bl #0x30eba4
0051fb38  38 10 9d e5                                      ldr r1, [sp, #0x38]
0051fb3c  00 b0 a0 e1                                      mov fp, r0
0051fb40  44 00 9d e5                                      ldr r0, [sp, #0x44]
0051fb44  16 bc f7 eb                                      bl #0x30eba4
0051fb48  08 20 9d e5                                      ldr r2, [sp, #8]
0051fb4c  2c 00 8d e5                                      str r0, [sp, #0x2c]
0051fb50  2c 10 8d e2                                      add r1, sp, #0x2c
0051fb54  05 00 a0 e1                                      mov r0, r5
0051fb58  02 30 a0 e1                                      mov r3, r2
0051fb5c  30 80 8d e5                                      str r8, [sp, #0x30]
0051fb60  34 b0 8d e5                                      str fp, [sp, #0x34]
0051fb64  dc ef ff eb                                      bl #0x51badc
0051fb68  00 00 50 e3                                      cmp r0, #0
0051fb6c  14 00 00 0a                                      beq #0x51fbc4
0051fb70  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
0051fb74  48 00 9d e5                                      ldr r0, [sp, #0x48]
0051fb78  0b ba f7 eb                                      bl #0x30e3ac
0051fb7c  40 10 9d e5                                      ldr r1, [sp, #0x40]
0051fb80  00 80 a0 e1                                      mov r8, r0
0051fb84  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0051fb88  07 ba f7 eb                                      bl #0x30e3ac
0051fb8c  38 10 9d e5                                      ldr r1, [sp, #0x38]
0051fb90  00 b0 a0 e1                                      mov fp, r0
0051fb94  44 00 9d e5                                      ldr r0, [sp, #0x44]
0051fb98  03 ba f7 eb                                      bl #0x30e3ac
0051fb9c  08 20 9d e5                                      ldr r2, [sp, #8]
0051fba0  20 00 8d e5                                      str r0, [sp, #0x20]
0051fba4  20 10 8d e2                                      add r1, sp, #0x20
0051fba8  05 00 a0 e1                                      mov r0, r5
0051fbac  02 30 a0 e1                                      mov r3, r2
0051fbb0  24 80 8d e5                                      str r8, [sp, #0x24]
0051fbb4  28 b0 8d e5                                      str fp, [sp, #0x28]
0051fbb8  c7 ef ff eb                                      bl #0x51badc
0051fbbc  00 00 50 e3                                      cmp r0, #0
0051fbc0  39 00 00 1a                                      bne #0x51fcac
0051fbc4  00 80 a0 e3                                      mov r8, #0
0051fbc8  d0 ff ff ea                                      b #0x51fb10
0051fbcc  00 10 94 e5                                      ldr r1, [r4]
0051fbd0  00 00 98 e5                                      ldr r0, [r8]
0051fbd4  f4 b9 f7 eb                                      bl #0x30e3ac
0051fbd8  04 10 94 e5                                      ldr r1, [r4, #4]
0051fbdc  00 a0 a0 e1                                      mov sl, r0
0051fbe0  04 00 98 e5                                      ldr r0, [r8, #4]
0051fbe4  f0 b9 f7 eb                                      bl #0x30e3ac
0051fbe8  08 10 94 e5                                      ldr r1, [r4, #8]
0051fbec  00 90 a0 e1                                      mov sb, r0
0051fbf0  08 00 98 e5                                      ldr r0, [r8, #8]
0051fbf4  ec b9 f7 eb                                      bl #0x30e3ac
0051fbf8  08 30 9b e5                                      ldr r3, [fp, #8]
0051fbfc  04 20 9b e5                                      ldr r2, [fp, #4]
0051fc00  00 40 a0 e1                                      mov r4, r0
0051fc04  03 10 a0 e1                                      mov r1, r3
0051fc08  09 00 a0 e1                                      mov r0, sb
0051fc0c  0c 20 8d e5                                      str r2, [sp, #0xc]
0051fc10  04 30 8d e5                                      str r3, [sp, #4]
0051fc14  54 bc f7 eb                                      bl #0x30ed6c
0051fc18  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0051fc1c  00 80 a0 e1                                      mov r8, r0
0051fc20  04 00 a0 e1                                      mov r0, r4
0051fc24  50 bc f7 eb                                      bl #0x30ed6c
0051fc28  00 10 a0 e1                                      mov r1, r0
0051fc2c  08 00 a0 e1                                      mov r0, r8
0051fc30  dd b9 f7 eb                                      bl #0x30e3ac
0051fc34  00 80 9b e5                                      ldr r8, [fp]
0051fc38  38 00 8d e5                                      str r0, [sp, #0x38]
0051fc3c  04 00 a0 e1                                      mov r0, r4
0051fc40  08 10 a0 e1                                      mov r1, r8
0051fc44  48 bc f7 eb                                      bl #0x30ed6c
0051fc48  04 30 9d e5                                      ldr r3, [sp, #4]
0051fc4c  00 b0 a0 e1                                      mov fp, r0
0051fc50  0a 00 a0 e1                                      mov r0, sl
0051fc54  03 10 a0 e1                                      mov r1, r3
0051fc58  43 bc f7 eb                                      bl #0x30ed6c
0051fc5c  00 10 a0 e1                                      mov r1, r0
0051fc60  0b 00 a0 e1                                      mov r0, fp
0051fc64  d0 b9 f7 eb                                      bl #0x30e3ac
0051fc68  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0051fc6c  3c 00 8d e5                                      str r0, [sp, #0x3c]
0051fc70  0a 00 a0 e1                                      mov r0, sl
0051fc74  3c bc f7 eb                                      bl #0x30ed6c
0051fc78  08 10 a0 e1                                      mov r1, r8
0051fc7c  00 b0 a0 e1                                      mov fp, r0
0051fc80  09 00 a0 e1                                      mov r0, sb
0051fc84  38 bc f7 eb                                      bl #0x30ed6c
0051fc88  00 10 a0 e1                                      mov r1, r0
0051fc8c  0b 00 a0 e1                                      mov r0, fp
0051fc90  c5 b9 f7 eb                                      bl #0x30e3ac
0051fc94  40 00 8d e5                                      str r0, [sp, #0x40]
0051fc98  38 00 8d e2                                      add r0, sp, #0x38
0051fc9c  03 b5 f8 eb                                      bl #0x34d0b0
0051fca0  08 30 9d e5                                      ldr r3, [sp, #8]
0051fca4  00 00 53 e3                                      cmp r3, #0
0051fca8  9b ff ff 0a                                      beq #0x51fb1c
0051fcac  74 30 95 e5                                      ldr r3, [r5, #0x74]
0051fcb0  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0051fcb4  03 00 a0 e1                                      mov r0, r3
0051fcb8  01 20 82 e2                                      add r2, r2, #1
0051fcbc  02 10 a0 e1                                      mov r1, r2
0051fcc0  1c 20 83 e5                                      str r2, [r3, #0x1c]
0051fcc4  f6 f7 ff eb                                      bl #0x51dca4
0051fcc8  44 30 9d e5                                      ldr r3, [sp, #0x44]
0051fccc  00 80 a0 e1                                      mov r8, r0
0051fcd0  14 00 8d e2                                      add r0, sp, #0x14
0051fcd4  08 30 88 e5                                      str r3, [r8, #8]
0051fcd8  48 30 9d e5                                      ldr r3, [sp, #0x48]
0051fcdc  0c 30 88 e5                                      str r3, [r8, #0xc]
0051fce0  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
0051fce4  10 30 88 e5                                      str r3, [r8, #0x10]
0051fce8  14 a0 8d e5                                      str sl, [sp, #0x14]
0051fcec  18 90 8d e5                                      str sb, [sp, #0x18]
0051fcf0  1c 40 8d e5                                      str r4, [sp, #0x1c]
0051fcf4  ed b4 f8 eb                                      bl #0x34d0b0
0051fcf8  04 20 90 e5                                      ldr r2, [r0, #4]
0051fcfc  08 30 90 e5                                      ldr r3, [r0, #8]
0051fd00  00 10 90 e5                                      ldr r1, [r0]
0051fd04  18 20 88 e5                                      str r2, [r8, #0x18]
0051fd08  1c 30 88 e5                                      str r3, [r8, #0x1c]
0051fd0c  0a 00 a0 e1                                      mov r0, sl
0051fd10  14 10 88 e5                                      str r1, [r8, #0x14]
0051fd14  0a 10 a0 e1                                      mov r1, sl
0051fd18  13 bc f7 eb                                      bl #0x30ed6c
0051fd1c  09 10 a0 e1                                      mov r1, sb
0051fd20  00 a0 a0 e1                                      mov sl, r0
0051fd24  09 00 a0 e1                                      mov r0, sb
0051fd28  0f bc f7 eb                                      bl #0x30ed6c
0051fd2c  00 10 a0 e1                                      mov r1, r0
0051fd30  0a 00 a0 e1                                      mov r0, sl
0051fd34  9a bb f7 eb                                      bl #0x30eba4
0051fd38  04 10 a0 e1                                      mov r1, r4
0051fd3c  00 a0 a0 e1                                      mov sl, r0
0051fd40  04 00 a0 e1                                      mov r0, r4
0051fd44  08 bc f7 eb                                      bl #0x30ed6c
0051fd48  00 10 a0 e1                                      mov r1, r0
0051fd4c  0a 00 a0 e1                                      mov r0, sl
0051fd50  93 bb f7 eb                                      bl #0x30eba4
0051fd54  f2 b8 f7 eb                                      bl #0x30e124
0051fd58  28 50 88 e5                                      str r5, [r8, #0x28]
0051fd5c  24 00 88 e5                                      str r0, [r8, #0x24]
0051fd60  20 00 88 e5                                      str r0, [r8, #0x20]
0051fd64  07 10 a0 e1                                      mov r1, r7
0051fd68  06 00 a0 e1                                      mov r0, r6
0051fd6c  b5 fe ff eb                                      bl #0x51f848
0051fd70  00 80 80 e5                                      str r8, [r0]
0051fd74  65 ff ff ea                                      b #0x51fb10

; FUNCTION 0x0051fd78, declared_size=2064, range_size=2064, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor5_LinkEPS_
; demangled: PFFloor::_Link(PFFloor*)
; decoder-mode: arm
0051fd78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0051fd7c  b4 d0 4d e2                                      sub sp, sp, #0xb4
0051fd80  4c 10 8d e5                                      str r1, [sp, #0x4c]
0051fd84  20 20 91 e5                                      ldr r2, [r1, #0x20]
0051fd88  20 30 90 e5                                      ldr r3, [r0, #0x20]
0051fd8c  00 40 a0 e1                                      mov r4, r0
0051fd90  01 90 a0 e1                                      mov sb, r1
0051fd94  03 30 82 e1                                      orr r3, r2, r3
0051fd98  01 33 13 e2                                      ands r3, r3, #0x4000000
0051fd9c  45 00 00 1a                                      bne #0x51feb8
0051fda0  a8 50 90 e5                                      ldr r5, [r0, #0xa8]
0051fda4  ac 60 90 e5                                      ldr r6, [r0, #0xac]
0051fda8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0051fdac  60 30 8d e5                                      str r3, [sp, #0x60]
0051fdb0  06 00 55 e1                                      cmp r5, r6
0051fdb4  64 30 8d e5                                      str r3, [sp, #0x64]
0051fdb8  68 30 8d e5                                      str r3, [sp, #0x68]
0051fdbc  54 30 8d e5                                      str r3, [sp, #0x54]
0051fdc0  58 30 8d e5                                      str r3, [sp, #0x58]
0051fdc4  3d 00 00 0a                                      beq #0x51fec0
0051fdc8  01 70 a0 e3                                      mov r7, #1
0051fdcc  60 80 8d e2                                      add r8, sp, #0x60
0051fdd0  84 a0 8d e2                                      add sl, sp, #0x84
0051fdd4  00 b0 95 e5                                      ldr fp, [r5]
0051fdd8  fe 15 a0 e3                                      mov r1, #0x3f800000
0051fddc  0b 00 a0 e1                                      mov r0, fp
0051fde0  6f bb f7 eb                                      bl #0x30eba4
0051fde4  00 10 a0 e1                                      mov r1, r0
0051fde8  44 00 99 e5                                      ldr r0, [sb, #0x44]
0051fdec  ee ba f7 eb                                      bl #0x30e9ac
0051fdf0  00 00 50 e3                                      cmp r0, #0
0051fdf4  18 00 00 0a                                      beq #0x51fe5c
0051fdf8  fe 15 a0 e3                                      mov r1, #0x3f800000
0051fdfc  0b 00 a0 e1                                      mov r0, fp
0051fe00  69 b9 f7 eb                                      bl #0x30e3ac
0051fe04  00 10 a0 e1                                      mov r1, r0
0051fe08  50 00 99 e5                                      ldr r0, [sb, #0x50]
0051fe0c  a8 b9 f7 eb                                      bl #0x30e4b4
0051fe10  00 00 50 e3                                      cmp r0, #0
0051fe14  10 00 00 0a                                      beq #0x51fe5c
0051fe18  04 b0 95 e5                                      ldr fp, [r5, #4]
0051fe1c  fe 15 a0 e3                                      mov r1, #0x3f800000
0051fe20  0b 00 a0 e1                                      mov r0, fp
0051fe24  5e bb f7 eb                                      bl #0x30eba4
0051fe28  00 10 a0 e1                                      mov r1, r0
0051fe2c  48 00 99 e5                                      ldr r0, [sb, #0x48]
0051fe30  dd ba f7 eb                                      bl #0x30e9ac
0051fe34  00 00 50 e3                                      cmp r0, #0
0051fe38  07 00 00 0a                                      beq #0x51fe5c
0051fe3c  fe 15 a0 e3                                      mov r1, #0x3f800000
0051fe40  0b 00 a0 e1                                      mov r0, fp
0051fe44  58 b9 f7 eb                                      bl #0x30e3ac
0051fe48  00 10 a0 e1                                      mov r1, r0
0051fe4c  54 00 99 e5                                      ldr r0, [sb, #0x54]
0051fe50  97 b9 f7 eb                                      bl #0x30e4b4
0051fe54  00 00 50 e3                                      cmp r0, #0
0051fe58  95 01 00 1a                                      bne #0x5204b4
0051fe5c  38 50 85 e2                                      add r5, r5, #0x38
0051fe60  06 00 55 e1                                      cmp r5, r6
0051fe64  15 00 00 0a                                      beq #0x51fec0
0051fe68  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
0051fe6c  d8 ff ff ea                                      b #0x51fdd4
0051fe70  54 00 9d e5                                      ldr r0, [sp, #0x54]
0051fe74  00 00 50 e3                                      cmp r0, #0
0051fe78  05 00 00 0a                                      beq #0x51fe94
0051fe7c  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
0051fe80  01 10 60 e0                                      rsb r1, r0, r1
0051fe84  07 10 c1 e3                                      bic r1, r1, #7
0051fe88  80 00 51 e3                                      cmp r1, #0x80
0051fe8c  af 01 00 8a                                      bhi #0x520550
0051fe90  1a a4 07 eb                                      bl #0x708f00
0051fe94  60 00 9d e5                                      ldr r0, [sp, #0x60]
0051fe98  00 00 50 e3                                      cmp r0, #0
0051fe9c  05 00 00 0a                                      beq #0x51feb8
0051fea0  68 10 9d e5                                      ldr r1, [sp, #0x68]
0051fea4  01 10 60 e0                                      rsb r1, r0, r1
0051fea8  07 10 c1 e3                                      bic r1, r1, #7
0051feac  80 00 51 e3                                      cmp r1, #0x80
0051feb0  a4 01 00 8a                                      bhi #0x520548
0051feb4  11 a4 07 eb                                      bl #0x708f00
0051feb8  b4 d0 8d e2                                      add sp, sp, #0xb4
0051febc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0051fec0  ac 60 99 e5                                      ldr r6, [sb, #0xac]
0051fec4  a8 50 99 e5                                      ldr r5, [sb, #0xa8]
0051fec8  06 00 55 e1                                      cmp r5, r6
0051fecc  4a 00 00 0a                                      beq #0x51fffc
0051fed0  01 70 a0 e3                                      mov r7, #1
0051fed4  54 80 8d e2                                      add r8, sp, #0x54
0051fed8  7c a0 8d e2                                      add sl, sp, #0x7c
0051fedc  00 90 95 e5                                      ldr sb, [r5]
0051fee0  fe 15 a0 e3                                      mov r1, #0x3f800000
0051fee4  09 00 a0 e1                                      mov r0, sb
0051fee8  2d bb f7 eb                                      bl #0x30eba4
0051feec  00 10 a0 e1                                      mov r1, r0
0051fef0  44 00 94 e5                                      ldr r0, [r4, #0x44]
0051fef4  ac ba f7 eb                                      bl #0x30e9ac
0051fef8  00 00 50 e3                                      cmp r0, #0
0051fefc  fe 15 a0 e3                                      mov r1, #0x3f800000
0051ff00  09 00 a0 e1                                      mov r0, sb
0051ff04  39 00 00 0a                                      beq #0x51fff0
0051ff08  27 b9 f7 eb                                      bl #0x30e3ac
0051ff0c  00 10 a0 e1                                      mov r1, r0
0051ff10  50 00 94 e5                                      ldr r0, [r4, #0x50]
0051ff14  66 b9 f7 eb                                      bl #0x30e4b4
0051ff18  00 00 50 e3                                      cmp r0, #0
0051ff1c  fe 15 a0 e3                                      mov r1, #0x3f800000
0051ff20  32 00 00 0a                                      beq #0x51fff0
0051ff24  04 90 95 e5                                      ldr sb, [r5, #4]
0051ff28  09 00 a0 e1                                      mov r0, sb
0051ff2c  1c bb f7 eb                                      bl #0x30eba4
0051ff30  00 10 a0 e1                                      mov r1, r0
0051ff34  48 00 94 e5                                      ldr r0, [r4, #0x48]
0051ff38  9b ba f7 eb                                      bl #0x30e9ac
0051ff3c  00 00 50 e3                                      cmp r0, #0
0051ff40  fe 15 a0 e3                                      mov r1, #0x3f800000
0051ff44  09 00 a0 e1                                      mov r0, sb
0051ff48  28 00 00 0a                                      beq #0x51fff0
0051ff4c  16 b9 f7 eb                                      bl #0x30e3ac
0051ff50  00 10 a0 e1                                      mov r1, r0
0051ff54  54 00 94 e5                                      ldr r0, [r4, #0x54]
0051ff58  55 b9 f7 eb                                      bl #0x30e4b4
0051ff5c  00 00 50 e3                                      cmp r0, #0
0051ff60  fe 15 a0 e3                                      mov r1, #0x3f800000
0051ff64  21 00 00 0a                                      beq #0x51fff0
0051ff68  08 90 95 e5                                      ldr sb, [r5, #8]
0051ff6c  09 00 a0 e1                                      mov r0, sb
0051ff70  0b bb f7 eb                                      bl #0x30eba4
0051ff74  00 10 a0 e1                                      mov r1, r0
0051ff78  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0051ff7c  8a ba f7 eb                                      bl #0x30e9ac
0051ff80  00 00 50 e3                                      cmp r0, #0
0051ff84  fe 15 a0 e3                                      mov r1, #0x3f800000
0051ff88  09 00 a0 e1                                      mov r0, sb
0051ff8c  17 00 00 0a                                      beq #0x51fff0
0051ff90  05 b9 f7 eb                                      bl #0x30e3ac
0051ff94  00 10 a0 e1                                      mov r1, r0
0051ff98  58 00 94 e5                                      ldr r0, [r4, #0x58]
0051ff9c  44 b9 f7 eb                                      bl #0x30e4b4
0051ffa0  00 00 50 e3                                      cmp r0, #0
0051ffa4  0c 10 85 e2                                      add r1, r5, #0xc
0051ffa8  18 20 85 e2                                      add r2, r5, #0x18
0051ffac  2c 30 85 e2                                      add r3, r5, #0x2c
0051ffb0  0e 00 00 0a                                      beq #0x51fff0
0051ffb4  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0051ffb8  00 70 8d e5                                      str r7, [sp]
0051ffbc  a8 fe ff eb                                      bl #0x51fa64
0051ffc0  58 10 9d e5                                      ldr r1, [sp, #0x58]
0051ffc4  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
0051ffc8  80 00 8d e5                                      str r0, [sp, #0x80]
0051ffcc  7c 50 8d e5                                      str r5, [sp, #0x7c]
0051ffd0  03 00 51 e1                                      cmp r1, r3
0051ffd4  64 01 00 0a                                      beq #0x52056c
0051ffd8  00 50 81 e5                                      str r5, [r1]
0051ffdc  80 30 9d e5                                      ldr r3, [sp, #0x80]
0051ffe0  04 30 81 e5                                      str r3, [r1, #4]
0051ffe4  58 30 9d e5                                      ldr r3, [sp, #0x58]
0051ffe8  08 30 83 e2                                      add r3, r3, #8
0051ffec  58 30 8d e5                                      str r3, [sp, #0x58]
0051fff0  38 50 85 e2                                      add r5, r5, #0x38
0051fff4  06 00 55 e1                                      cmp r5, r6
0051fff8  b7 ff ff 1a                                      bne #0x51fedc
0051fffc  60 30 9d e5                                      ldr r3, [sp, #0x60]
00520000  64 20 9d e5                                      ldr r2, [sp, #0x64]
00520004  02 20 63 e0                                      rsb r2, r3, r2
00520008  c2 21 b0 e1                                      asrs r2, r2, #3
0052000c  34 20 8d e5                                      str r2, [sp, #0x34]
00520010  96 ff ff 0a                                      beq #0x51fe70
00520014  c0 10 84 e2                                      add r1, r4, #0xc0
00520018  78 20 84 e2                                      add r2, r4, #0x78
0052001c  38 10 8d e5                                      str r1, [sp, #0x38]
00520020  00 10 a0 e3                                      mov r1, #0
00520024  28 20 8d e5                                      str r2, [sp, #0x28]
00520028  10 10 8d e5                                      str r1, [sp, #0x10]
0052002c  90 20 8d e2                                      add r2, sp, #0x90
00520030  94 10 8d e2                                      add r1, sp, #0x94
00520034  3c 20 8d e5                                      str r2, [sp, #0x3c]
00520038  40 10 8d e5                                      str r1, [sp, #0x40]
0052003c  98 20 8d e2                                      add r2, sp, #0x98
00520040  9c 10 8d e2                                      add r1, sp, #0x9c
00520044  44 20 8d e5                                      str r2, [sp, #0x44]
00520048  48 10 8d e5                                      str r1, [sp, #0x48]
0052004c  10 10 9d e5                                      ldr r1, [sp, #0x10]
00520050  04 00 a0 e1                                      mov r0, r4
00520054  81 21 83 e0                                      add r2, r3, r1, lsl #3
00520058  81 31 93 e7                                      ldr r3, [r3, r1, lsl #3]
0052005c  0c 30 8d e5                                      str r3, [sp, #0xc]
00520060  04 60 92 e5                                      ldr r6, [r2, #4]
00520064  24 20 93 e5                                      ldr r2, [r3, #0x24]
00520068  06 10 a0 e1                                      mov r1, r6
0052006c  46 fa ff eb                                      bl #0x51e98c
00520070  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00520074  04 00 a0 e1                                      mov r0, r4
00520078  24 10 92 e5                                      ldr r1, [r2, #0x24]
0052007c  06 20 a0 e1                                      mov r2, r6
00520080  41 fa ff eb                                      bl #0x51e98c
00520084  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00520088  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
0052008c  ac 00 8d e5                                      str r0, [sp, #0xac]
00520090  03 00 51 e1                                      cmp r1, r3
00520094  02 01 00 0a                                      beq #0x5204a4
00520098  00 00 81 e5                                      str r0, [r1]
0052009c  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005200a0  04 30 83 e2                                      add r3, r3, #4
005200a4  c4 30 84 e5                                      str r3, [r4, #0xc4]
005200a8  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005200ac  06 10 a0 e1                                      mov r1, r6
005200b0  04 00 a0 e1                                      mov r0, r4
005200b4  28 20 93 e5                                      ldr r2, [r3, #0x28]
005200b8  33 fa ff eb                                      bl #0x51e98c
005200bc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005200c0  04 00 a0 e1                                      mov r0, r4
005200c4  28 10 92 e5                                      ldr r1, [r2, #0x28]
005200c8  06 20 a0 e1                                      mov r2, r6
005200cc  2e fa ff eb                                      bl #0x51e98c
005200d0  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
005200d4  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005200d8  a8 00 8d e5                                      str r0, [sp, #0xa8]
005200dc  03 00 51 e1                                      cmp r1, r3
005200e0  eb 00 00 0a                                      beq #0x520494
005200e4  00 00 81 e5                                      str r0, [r1]
005200e8  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005200ec  04 30 83 e2                                      add r3, r3, #4
005200f0  c4 30 84 e5                                      str r3, [r4, #0xc4]
005200f4  54 30 9d e5                                      ldr r3, [sp, #0x54]
005200f8  58 20 9d e5                                      ldr r2, [sp, #0x58]
005200fc  02 20 63 e0                                      rsb r2, r3, r2
00520100  c2 21 b0 e1                                      asrs r2, r2, #3
00520104  14 20 8d e5                                      str r2, [sp, #0x14]
00520108  c1 00 00 0a                                      beq #0x520414
0052010c  74 10 8d e2                                      add r1, sp, #0x74
00520110  4c 20 8d e2                                      add r2, sp, #0x4c
00520114  18 10 8d e5                                      str r1, [sp, #0x18]
00520118  20 20 8d e5                                      str r2, [sp, #0x20]
0052011c  6c 10 8d e2                                      add r1, sp, #0x6c
00520120  8c 20 8d e2                                      add r2, sp, #0x8c
00520124  24 10 8d e5                                      str r1, [sp, #0x24]
00520128  1c 20 8d e5                                      str r2, [sp, #0x1c]
0052012c  a0 10 8d e2                                      add r1, sp, #0xa0
00520130  a4 20 8d e2                                      add r2, sp, #0xa4
00520134  00 70 a0 e3                                      mov r7, #0
00520138  2c 10 8d e5                                      str r1, [sp, #0x2c]
0052013c  30 20 8d e5                                      str r2, [sp, #0x30]
00520140  88 00 00 ea                                      b #0x520368
00520144  08 10 95 e5                                      ldr r1, [r5, #8]
00520148  08 00 96 e5                                      ldr r0, [r6, #8]
0052014c  96 b8 f7 eb                                      bl #0x30e3ac
00520150  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00520154  00 90 a0 e1                                      mov sb, r0
00520158  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0052015c  92 b8 f7 eb                                      bl #0x30e3ac
00520160  10 10 95 e5                                      ldr r1, [r5, #0x10]
00520164  00 b0 a0 e1                                      mov fp, r0
00520168  10 00 96 e5                                      ldr r0, [r6, #0x10]
0052016c  8e b8 f7 eb                                      bl #0x30e3ac
00520170  20 10 95 e5                                      ldr r1, [r5, #0x20]
00520174  00 a0 a0 e1                                      mov sl, r0
00520178  20 00 96 e5                                      ldr r0, [r6, #0x20]
0052017c  88 ba f7 eb                                      bl #0x30eba4
00520180  00 10 a0 e1                                      mov r1, r0
00520184  f8 ba f7 eb                                      bl #0x30ed6c
00520188  09 10 a0 e1                                      mov r1, sb
0052018c  00 30 a0 e1                                      mov r3, r0
00520190  09 00 a0 e1                                      mov r0, sb
00520194  08 30 8d e5                                      str r3, [sp, #8]
00520198  f3 ba f7 eb                                      bl #0x30ed6c
0052019c  0b 10 a0 e1                                      mov r1, fp
005201a0  00 90 a0 e1                                      mov sb, r0
005201a4  0b 00 a0 e1                                      mov r0, fp
005201a8  ef ba f7 eb                                      bl #0x30ed6c
005201ac  00 10 a0 e1                                      mov r1, r0
005201b0  09 00 a0 e1                                      mov r0, sb
005201b4  7a ba f7 eb                                      bl #0x30eba4
005201b8  0a 10 a0 e1                                      mov r1, sl
005201bc  00 90 a0 e1                                      mov sb, r0
005201c0  0a 00 a0 e1                                      mov r0, sl
005201c4  e8 ba f7 eb                                      bl #0x30ed6c
005201c8  00 10 a0 e1                                      mov r1, r0
005201cc  09 00 a0 e1                                      mov r0, sb
005201d0  73 ba f7 eb                                      bl #0x30eba4
005201d4  08 30 9d e5                                      ldr r3, [sp, #8]
005201d8  00 10 a0 e1                                      mov r1, r0
005201dc  03 00 a0 e1                                      mov r0, r3
005201e0  44 b8 f7 eb                                      bl #0x30e2f8
005201e4  00 00 50 e3                                      cmp r0, #0
005201e8  4f 00 00 0a                                      beq #0x52032c
005201ec  42 14 a0 e3                                      mov r1, #0x42000000
005201f0  02 01 ca e3                                      bic r0, sl, #0x80000000
005201f4  32 17 81 e2                                      add r1, r1, #0xc80000
005201f8  43 b9 f7 eb                                      bl #0x30e70c
005201fc  00 00 50 e3                                      cmp r0, #0
00520200  49 00 00 0a                                      beq #0x52032c
00520204  06 10 a0 e1                                      mov r1, r6
00520208  24 20 98 e5                                      ldr r2, [r8, #0x24]
0052020c  04 00 a0 e1                                      mov r0, r4
00520210  dd f9 ff eb                                      bl #0x51e98c
00520214  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
00520218  24 10 98 e5                                      ldr r1, [r8, #0x24]
0052021c  06 20 a0 e1                                      mov r2, r6
00520220  0a 00 a0 e1                                      mov r0, sl
00520224  d8 f9 ff eb                                      bl #0x51e98c
00520228  9c 00 8d e5                                      str r0, [sp, #0x9c]
0052022c  c4 10 9a e5                                      ldr r1, [sl, #0xc4]
00520230  c8 30 9a e5                                      ldr r3, [sl, #0xc8]
00520234  03 00 51 e1                                      cmp r1, r3
00520238  89 00 00 0a                                      beq #0x520464
0052023c  00 00 81 e5                                      str r0, [r1]
00520240  c4 30 9a e5                                      ldr r3, [sl, #0xc4]
00520244  04 30 83 e2                                      add r3, r3, #4
00520248  c4 30 8a e5                                      str r3, [sl, #0xc4]
0052024c  06 10 a0 e1                                      mov r1, r6
00520250  28 20 98 e5                                      ldr r2, [r8, #0x28]
00520254  04 00 a0 e1                                      mov r0, r4
00520258  cb f9 ff eb                                      bl #0x51e98c
0052025c  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
00520260  28 10 98 e5                                      ldr r1, [r8, #0x28]
00520264  06 20 a0 e1                                      mov r2, r6
00520268  0a 00 a0 e1                                      mov r0, sl
0052026c  c6 f9 ff eb                                      bl #0x51e98c
00520270  98 00 8d e5                                      str r0, [sp, #0x98]
00520274  c4 10 9a e5                                      ldr r1, [sl, #0xc4]
00520278  c8 30 9a e5                                      ldr r3, [sl, #0xc8]
0052027c  03 00 51 e1                                      cmp r1, r3
00520280  73 00 00 0a                                      beq #0x520454
00520284  00 00 81 e5                                      str r0, [r1]
00520288  c4 30 9a e5                                      ldr r3, [sl, #0xc4]
0052028c  04 30 83 e2                                      add r3, r3, #4
00520290  c4 30 8a e5                                      str r3, [sl, #0xc4]
00520294  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00520298  05 10 a0 e1                                      mov r1, r5
0052029c  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005202a0  24 20 93 e5                                      ldr r2, [r3, #0x24]
005202a4  b8 f9 ff eb                                      bl #0x51e98c
005202a8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005202ac  04 00 a0 e1                                      mov r0, r4
005202b0  24 10 92 e5                                      ldr r1, [r2, #0x24]
005202b4  05 20 a0 e1                                      mov r2, r5
005202b8  b3 f9 ff eb                                      bl #0x51e98c
005202bc  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
005202c0  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005202c4  94 00 8d e5                                      str r0, [sp, #0x94]
005202c8  03 00 51 e1                                      cmp r1, r3
005202cc  5c 00 00 0a                                      beq #0x520444
005202d0  00 00 81 e5                                      str r0, [r1]
005202d4  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005202d8  04 30 83 e2                                      add r3, r3, #4
005202dc  c4 30 84 e5                                      str r3, [r4, #0xc4]
005202e0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005202e4  05 10 a0 e1                                      mov r1, r5
005202e8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005202ec  28 20 93 e5                                      ldr r2, [r3, #0x28]
005202f0  a5 f9 ff eb                                      bl #0x51e98c
005202f4  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005202f8  04 00 a0 e1                                      mov r0, r4
005202fc  05 20 a0 e1                                      mov r2, r5
00520300  28 10 93 e5                                      ldr r1, [r3, #0x28]
00520304  a0 f9 ff eb                                      bl #0x51e98c
00520308  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
0052030c  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
00520310  90 00 8d e5                                      str r0, [sp, #0x90]
00520314  03 00 51 e1                                      cmp r1, r3
00520318  45 00 00 0a                                      beq #0x520434
0052031c  00 00 81 e5                                      str r0, [r1]
00520320  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
00520324  04 30 83 e2                                      add r3, r3, #4
00520328  c4 30 84 e5                                      str r3, [r4, #0xc4]
0052032c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00520330  28 10 9d e5                                      ldr r1, [sp, #0x28]
00520334  20 20 9d e5                                      ldr r2, [sp, #0x20]
00520338  16 f7 ff eb                                      bl #0x51df98
0052033c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
00520340  24 00 9d e5                                      ldr r0, [sp, #0x24]
00520344  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00520348  78 10 81 e2                                      add r1, r1, #0x78
0052034c  8c 40 8d e5                                      str r4, [sp, #0x8c]
00520350  10 f7 ff eb                                      bl #0x51df98
00520354  14 10 9d e5                                      ldr r1, [sp, #0x14]
00520358  01 70 87 e2                                      add r7, r7, #1
0052035c  01 00 57 e1                                      cmp r7, r1
00520360  2b 00 00 0a                                      beq #0x520414
00520364  54 30 9d e5                                      ldr r3, [sp, #0x54]
00520368  10 10 9d e5                                      ldr r1, [sp, #0x10]
0052036c  87 21 83 e0                                      add r2, r3, r7, lsl #3
00520370  87 81 93 e7                                      ldr r8, [r3, r7, lsl #3]
00520374  00 00 51 e3                                      cmp r1, #0
00520378  04 50 92 e5                                      ldr r5, [r2, #4]
0052037c  70 ff ff 1a                                      bne #0x520144
00520380  05 10 a0 e1                                      mov r1, r5
00520384  24 20 98 e5                                      ldr r2, [r8, #0x24]
00520388  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
0052038c  7e f9 ff eb                                      bl #0x51e98c
00520390  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
00520394  24 10 98 e5                                      ldr r1, [r8, #0x24]
00520398  05 20 a0 e1                                      mov r2, r5
0052039c  0a 00 a0 e1                                      mov r0, sl
005203a0  79 f9 ff eb                                      bl #0x51e98c
005203a4  a4 00 8d e5                                      str r0, [sp, #0xa4]
005203a8  c4 10 9a e5                                      ldr r1, [sl, #0xc4]
005203ac  c8 30 9a e5                                      ldr r3, [sl, #0xc8]
005203b0  03 00 51 e1                                      cmp r1, r3
005203b4  32 00 00 0a                                      beq #0x520484
005203b8  00 00 81 e5                                      str r0, [r1]
005203bc  c4 30 9a e5                                      ldr r3, [sl, #0xc4]
005203c0  04 30 83 e2                                      add r3, r3, #4
005203c4  c4 30 8a e5                                      str r3, [sl, #0xc4]
005203c8  05 10 a0 e1                                      mov r1, r5
005203cc  28 20 98 e5                                      ldr r2, [r8, #0x28]
005203d0  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
005203d4  6c f9 ff eb                                      bl #0x51e98c
005203d8  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
005203dc  28 10 98 e5                                      ldr r1, [r8, #0x28]
005203e0  05 20 a0 e1                                      mov r2, r5
005203e4  0a 00 a0 e1                                      mov r0, sl
005203e8  67 f9 ff eb                                      bl #0x51e98c
005203ec  a0 00 8d e5                                      str r0, [sp, #0xa0]
005203f0  c4 10 9a e5                                      ldr r1, [sl, #0xc4]
005203f4  c8 30 9a e5                                      ldr r3, [sl, #0xc8]
005203f8  03 00 51 e1                                      cmp r1, r3
005203fc  1c 00 00 0a                                      beq #0x520474
00520400  00 00 81 e5                                      str r0, [r1]
00520404  c4 30 9a e5                                      ldr r3, [sl, #0xc4]
00520408  04 30 83 e2                                      add r3, r3, #4
0052040c  c4 30 8a e5                                      str r3, [sl, #0xc4]
00520410  4b ff ff ea                                      b #0x520144
00520414  10 20 9d e5                                      ldr r2, [sp, #0x10]
00520418  34 30 9d e5                                      ldr r3, [sp, #0x34]
0052041c  01 20 82 e2                                      add r2, r2, #1
00520420  03 00 52 e1                                      cmp r2, r3
00520424  10 20 8d e5                                      str r2, [sp, #0x10]
00520428  90 fe ff 0a                                      beq #0x51fe70
0052042c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00520430  05 ff ff ea                                      b #0x52004c
00520434  38 00 9d e5                                      ldr r0, [sp, #0x38]
00520438  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0052043c  fc f0 ff eb                                      bl #0x51c834
00520440  b9 ff ff ea                                      b #0x52032c
00520444  38 00 9d e5                                      ldr r0, [sp, #0x38]
00520448  40 20 9d e5                                      ldr r2, [sp, #0x40]
0052044c  f8 f0 ff eb                                      bl #0x51c834
00520450  a2 ff ff ea                                      b #0x5202e0
00520454  c0 00 8a e2                                      add r0, sl, #0xc0
00520458  44 20 9d e5                                      ldr r2, [sp, #0x44]
0052045c  f4 f0 ff eb                                      bl #0x51c834
00520460  8b ff ff ea                                      b #0x520294
00520464  c0 00 8a e2                                      add r0, sl, #0xc0
00520468  48 20 9d e5                                      ldr r2, [sp, #0x48]
0052046c  f0 f0 ff eb                                      bl #0x51c834
00520470  75 ff ff ea                                      b #0x52024c
00520474  c0 00 8a e2                                      add r0, sl, #0xc0
00520478  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0052047c  ec f0 ff eb                                      bl #0x51c834
00520480  2f ff ff ea                                      b #0x520144
00520484  c0 00 8a e2                                      add r0, sl, #0xc0
00520488  30 20 9d e5                                      ldr r2, [sp, #0x30]
0052048c  e8 f0 ff eb                                      bl #0x51c834
00520490  cc ff ff ea                                      b #0x5203c8
00520494  38 00 9d e5                                      ldr r0, [sp, #0x38]
00520498  a8 20 8d e2                                      add r2, sp, #0xa8
0052049c  e4 f0 ff eb                                      bl #0x51c834
005204a0  13 ff ff ea                                      b #0x5200f4
005204a4  38 00 9d e5                                      ldr r0, [sp, #0x38]
005204a8  ac 20 8d e2                                      add r2, sp, #0xac
005204ac  e0 f0 ff eb                                      bl #0x51c834
005204b0  fc fe ff ea                                      b #0x5200a8
005204b4  08 b0 95 e5                                      ldr fp, [r5, #8]
005204b8  fe 15 a0 e3                                      mov r1, #0x3f800000
005204bc  0b 00 a0 e1                                      mov r0, fp
005204c0  b7 b9 f7 eb                                      bl #0x30eba4
005204c4  00 10 a0 e1                                      mov r1, r0
005204c8  4c 00 99 e5                                      ldr r0, [sb, #0x4c]
005204cc  36 b9 f7 eb                                      bl #0x30e9ac
005204d0  00 00 50 e3                                      cmp r0, #0
005204d4  60 fe ff 0a                                      beq #0x51fe5c
005204d8  fe 15 a0 e3                                      mov r1, #0x3f800000
005204dc  0b 00 a0 e1                                      mov r0, fp
005204e0  b1 b7 f7 eb                                      bl #0x30e3ac
005204e4  00 10 a0 e1                                      mov r1, r0
005204e8  58 00 99 e5                                      ldr r0, [sb, #0x58]
005204ec  f0 b7 f7 eb                                      bl #0x30e4b4
005204f0  00 00 50 e3                                      cmp r0, #0
005204f4  58 fe ff 0a                                      beq #0x51fe5c
005204f8  0c 10 85 e2                                      add r1, r5, #0xc
005204fc  2c 30 85 e2                                      add r3, r5, #0x2c
00520500  04 00 a0 e1                                      mov r0, r4
00520504  18 20 85 e2                                      add r2, r5, #0x18
00520508  00 70 8d e5                                      str r7, [sp]
0052050c  54 fd ff eb                                      bl #0x51fa64
00520510  64 10 9d e5                                      ldr r1, [sp, #0x64]
00520514  68 30 9d e5                                      ldr r3, [sp, #0x68]
00520518  88 00 8d e5                                      str r0, [sp, #0x88]
0052051c  84 50 8d e5                                      str r5, [sp, #0x84]
00520520  03 00 51 e1                                      cmp r1, r3
00520524  0b 00 00 0a                                      beq #0x520558
00520528  00 50 81 e5                                      str r5, [r1]
0052052c  88 30 9d e5                                      ldr r3, [sp, #0x88]
00520530  04 30 81 e5                                      str r3, [r1, #4]
00520534  64 30 9d e5                                      ldr r3, [sp, #0x64]
00520538  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
0052053c  08 30 83 e2                                      add r3, r3, #8
00520540  64 30 8d e5                                      str r3, [sp, #0x64]
00520544  44 fe ff ea                                      b #0x51fe5c
00520548  bc bf f7 eb                                      bl #0x310440
0052054c  59 fe ff ea                                      b #0x51feb8
00520550  ba bf f7 eb                                      bl #0x310440
00520554  4e fe ff ea                                      b #0x51fe94
00520558  08 00 a0 e1                                      mov r0, r8
0052055c  0a 20 a0 e1                                      mov r2, sl
00520560  e5 f0 ff eb                                      bl #0x51c8fc
00520564  4c 90 9d e5                                      ldr sb, [sp, #0x4c]
00520568  3b fe ff ea                                      b #0x51fe5c
0052056c  08 00 a0 e1                                      mov r0, r8
00520570  0a 20 a0 e1                                      mov r2, sl
00520574  38 50 85 e2                                      add r5, r5, #0x38
00520578  df f0 ff eb                                      bl #0x51c8fc
0052057c  06 00 55 e1                                      cmp r5, r6
00520580  55 fe ff 1a                                      bne #0x51fedc
00520584  9c fe ff ea                                      b #0x51fffc

; FUNCTION 0x00520588, declared_size=1464, range_size=1464, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor12_CreateNodesEPN6glitch4core10triangle3dIfEEj
; demangled: PFFloor::_CreateNodes(glitch::core::triangle3d<float>*, unsigned int)
; decoder-mode: arm
00520588  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052058c  20 50 90 e5                                      ldr r5, [r0, #0x20]
00520590  53 df 4d e2                                      sub sp, sp, #0x14c
00520594  00 40 a0 e1                                      mov r4, r0
00520598  01 54 15 e2                                      ands r5, r5, #0x1000000
0052059c  2c 10 8d e5                                      str r1, [sp, #0x2c]
005205a0  3c 20 8d e5                                      str r2, [sp, #0x3c]
005205a4  57 01 00 1a                                      bne #0x520b08
005205a8  00 00 52 e3                                      cmp r2, #0
005205ac  55 01 00 0a                                      beq #0x520b08
005205b0  c0 20 80 e2                                      add r2, r0, #0xc0
005205b4  a8 30 80 e2                                      add r3, r0, #0xa8
005205b8  49 cf 8d e2                                      add ip, sp, #0x124
005205bc  44 20 8d e5                                      str r2, [sp, #0x44]
005205c0  40 30 8d e5                                      str r3, [sp, #0x40]
005205c4  46 2f 8d e2                                      add r2, sp, #0x118
005205c8  13 3e 8d e2                                      add r3, sp, #0x130
005205cc  38 c0 8d e5                                      str ip, [sp, #0x38]
005205d0  43 cf 8d e2                                      add ip, sp, #0x10c
005205d4  34 20 8d e5                                      str r2, [sp, #0x34]
005205d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
005205dc  51 2f 8d e2                                      add r2, sp, #0x144
005205e0  05 3d 8d e2                                      add r3, sp, #0x140
005205e4  30 c0 8d e5                                      str ip, [sp, #0x30]
005205e8  4f cf 8d e2                                      add ip, sp, #0x13c
005205ec  54 20 8d e5                                      str r2, [sp, #0x54]
005205f0  58 30 8d e5                                      str r3, [sp, #0x58]
005205f4  5c c0 8d e5                                      str ip, [sp, #0x5c]
005205f8  d4 20 8d e2                                      add r2, sp, #0xd4
005205fc  9c 30 8d e2                                      add r3, sp, #0x9c
00520600  64 c0 8d e2                                      add ip, sp, #0x64
00520604  18 50 8d e5                                      str r5, [sp, #0x18]
00520608  48 20 8d e5                                      str r2, [sp, #0x48]
0052060c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00520610  50 c0 8d e5                                      str ip, [sp, #0x50]
00520614  0a 00 00 ea                                      b #0x520644
00520618  00 00 56 e3                                      cmp r6, #0
0052061c  d5 00 00 0a                                      beq #0x520978
00520620  00 00 58 e3                                      cmp r8, #0
00520624  03 01 00 0a                                      beq #0x520a38
00520628  18 20 9d e5                                      ldr r2, [sp, #0x18]
0052062c  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00520630  24 50 85 e2                                      add r5, r5, #0x24
00520634  01 20 82 e2                                      add r2, r2, #1
00520638  03 00 52 e1                                      cmp r2, r3
0052063c  18 20 8d e5                                      str r2, [sp, #0x18]
00520640  30 01 00 0a                                      beq #0x520b08
00520644  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00520648  05 a0 92 e7                                      ldr sl, [r2, r5]
0052064c  05 60 82 e0                                      add r6, r2, r5
00520650  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00520654  0a 10 a0 e1                                      mov r1, sl
00520658  53 b7 f7 eb                                      bl #0x30e3ac
0052065c  04 80 96 e5                                      ldr r8, [r6, #4]
00520660  00 90 a0 e1                                      mov sb, r0
00520664  10 00 96 e5                                      ldr r0, [r6, #0x10]
00520668  08 10 a0 e1                                      mov r1, r8
0052066c  4e b7 f7 eb                                      bl #0x30e3ac
00520670  20 00 8d e5                                      str r0, [sp, #0x20]
00520674  08 70 96 e5                                      ldr r7, [r6, #8]
00520678  14 00 96 e5                                      ldr r0, [r6, #0x14]
0052067c  07 10 a0 e1                                      mov r1, r7
00520680  49 b7 f7 eb                                      bl #0x30e3ac
00520684  0a 10 a0 e1                                      mov r1, sl
00520688  00 b0 a0 e1                                      mov fp, r0
0052068c  18 00 96 e5                                      ldr r0, [r6, #0x18]
00520690  45 b7 f7 eb                                      bl #0x30e3ac
00520694  24 00 8d e5                                      str r0, [sp, #0x24]
00520698  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
0052069c  08 10 a0 e1                                      mov r1, r8
005206a0  41 b7 f7 eb                                      bl #0x30e3ac
005206a4  28 00 8d e5                                      str r0, [sp, #0x28]
005206a8  20 00 96 e5                                      ldr r0, [r6, #0x20]
005206ac  07 10 a0 e1                                      mov r1, r7
005206b0  3d b7 f7 eb                                      bl #0x30e3ac
005206b4  20 30 9d e5                                      ldr r3, [sp, #0x20]
005206b8  0c 00 8d e5                                      str r0, [sp, #0xc]
005206bc  02 11 83 e2                                      add r1, r3, #0x80000000
005206c0  a9 b9 f7 eb                                      bl #0x30ed6c
005206c4  28 10 9d e5                                      ldr r1, [sp, #0x28]
005206c8  00 30 a0 e1                                      mov r3, r0
005206cc  0b 00 a0 e1                                      mov r0, fp
005206d0  10 30 8d e5                                      str r3, [sp, #0x10]
005206d4  a4 b9 f7 eb                                      bl #0x30ed6c
005206d8  10 30 9d e5                                      ldr r3, [sp, #0x10]
005206dc  00 10 a0 e1                                      mov r1, r0
005206e0  03 00 a0 e1                                      mov r0, r3
005206e4  2e b9 f7 eb                                      bl #0x30eba4
005206e8  02 11 8b e2                                      add r1, fp, #0x80000000
005206ec  30 01 8d e5                                      str r0, [sp, #0x130]
005206f0  24 00 9d e5                                      ldr r0, [sp, #0x24]
005206f4  9c b9 f7 eb                                      bl #0x30ed6c
005206f8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
005206fc  00 b0 a0 e1                                      mov fp, r0
00520700  09 00 a0 e1                                      mov r0, sb
00520704  02 10 a0 e1                                      mov r1, r2
00520708  97 b9 f7 eb                                      bl #0x30ed6c
0052070c  00 10 a0 e1                                      mov r1, r0
00520710  0b 00 a0 e1                                      mov r0, fp
00520714  22 b9 f7 eb                                      bl #0x30eba4
00520718  02 11 89 e2                                      add r1, sb, #0x80000000
0052071c  34 01 8d e5                                      str r0, [sp, #0x134]
00520720  28 00 9d e5                                      ldr r0, [sp, #0x28]
00520724  90 b9 f7 eb                                      bl #0x30ed6c
00520728  24 10 9d e5                                      ldr r1, [sp, #0x24]
0052072c  00 90 a0 e1                                      mov sb, r0
00520730  20 00 9d e5                                      ldr r0, [sp, #0x20]
00520734  8c b9 f7 eb                                      bl #0x30ed6c
00520738  00 10 a0 e1                                      mov r1, r0
0052073c  09 00 a0 e1                                      mov r0, sb
00520740  17 b9 f7 eb                                      bl #0x30eba4
00520744  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00520748  10 20 96 e5                                      ldr r2, [r6, #0x10]
0052074c  14 30 96 e5                                      ldr r3, [r6, #0x14]
00520750  38 01 8d e5                                      str r0, [sp, #0x138]
00520754  18 11 8d e5                                      str r1, [sp, #0x118]
00520758  1c 21 8d e5                                      str r2, [sp, #0x11c]
0052075c  28 81 8d e5                                      str r8, [sp, #0x128]
00520760  2c 71 8d e5                                      str r7, [sp, #0x12c]
00520764  20 31 8d e5                                      str r3, [sp, #0x120]
00520768  24 a1 8d e5                                      str sl, [sp, #0x124]
0052076c  20 c0 96 e5                                      ldr ip, [r6, #0x20]
00520770  18 e0 96 e5                                      ldr lr, [r6, #0x18]
00520774  1c 60 96 e5                                      ldr r6, [r6, #0x1c]
00520778  38 10 9d e5                                      ldr r1, [sp, #0x38]
0052077c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00520780  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00520784  14 c1 8d e5                                      str ip, [sp, #0x114]
00520788  04 00 a0 e1                                      mov r0, r4
0052078c  00 c0 a0 e3                                      mov ip, #0
00520790  0c e1 8d e5                                      str lr, [sp, #0x10c]
00520794  10 61 8d e5                                      str r6, [sp, #0x110]
00520798  00 c0 8d e5                                      str ip, [sp]
0052079c  b0 fc ff eb                                      bl #0x51fa64
005207a0  00 c0 a0 e3                                      mov ip, #0
005207a4  00 70 a0 e1                                      mov r7, r0
005207a8  38 10 9d e5                                      ldr r1, [sp, #0x38]
005207ac  30 20 9d e5                                      ldr r2, [sp, #0x30]
005207b0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005207b4  04 00 a0 e1                                      mov r0, r4
005207b8  00 c0 8d e5                                      str ip, [sp]
005207bc  a8 fc ff eb                                      bl #0x51fa64
005207c0  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
005207c4  00 c0 a0 e3                                      mov ip, #0
005207c8  00 60 a0 e1                                      mov r6, r0
005207cc  34 10 9d e5                                      ldr r1, [sp, #0x34]
005207d0  30 20 9d e5                                      ldr r2, [sp, #0x30]
005207d4  04 00 a0 e1                                      mov r0, r4
005207d8  00 c0 8d e5                                      str ip, [sp]
005207dc  a0 fc ff eb                                      bl #0x51fa64
005207e0  07 10 a0 e1                                      mov r1, r7
005207e4  06 20 a0 e1                                      mov r2, r6
005207e8  00 80 a0 e1                                      mov r8, r0
005207ec  04 00 a0 e1                                      mov r0, r4
005207f0  65 f8 ff eb                                      bl #0x51e98c
005207f4  06 10 a0 e1                                      mov r1, r6
005207f8  04 00 a0 e1                                      mov r0, r4
005207fc  07 20 a0 e1                                      mov r2, r7
00520800  61 f8 ff eb                                      bl #0x51e98c
00520804  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00520808  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
0052080c  44 01 8d e5                                      str r0, [sp, #0x144]
00520810  03 00 51 e1                                      cmp r1, r3
00520814  bd 00 00 0a                                      beq #0x520b10
00520818  00 00 81 e5                                      str r0, [r1]
0052081c  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
00520820  04 30 83 e2                                      add r3, r3, #4
00520824  c4 30 84 e5                                      str r3, [r4, #0xc4]
00520828  07 10 a0 e1                                      mov r1, r7
0052082c  08 20 a0 e1                                      mov r2, r8
00520830  04 00 a0 e1                                      mov r0, r4
00520834  54 f8 ff eb                                      bl #0x51e98c
00520838  08 10 a0 e1                                      mov r1, r8
0052083c  04 00 a0 e1                                      mov r0, r4
00520840  07 20 a0 e1                                      mov r2, r7
00520844  50 f8 ff eb                                      bl #0x51e98c
00520848  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
0052084c  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
00520850  40 01 8d e5                                      str r0, [sp, #0x140]
00520854  03 00 51 e1                                      cmp r1, r3
00520858  b4 00 00 0a                                      beq #0x520b30
0052085c  00 00 81 e5                                      str r0, [r1]
00520860  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
00520864  04 30 83 e2                                      add r3, r3, #4
00520868  c4 30 84 e5                                      str r3, [r4, #0xc4]
0052086c  06 10 a0 e1                                      mov r1, r6
00520870  08 20 a0 e1                                      mov r2, r8
00520874  04 00 a0 e1                                      mov r0, r4
00520878  43 f8 ff eb                                      bl #0x51e98c
0052087c  08 10 a0 e1                                      mov r1, r8
00520880  04 00 a0 e1                                      mov r0, r4
00520884  06 20 a0 e1                                      mov r2, r6
00520888  3f f8 ff eb                                      bl #0x51e98c
0052088c  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00520890  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
00520894  3c 01 8d e5                                      str r0, [sp, #0x13c]
00520898  03 00 51 e1                                      cmp r1, r3
0052089c  9f 00 00 0a                                      beq #0x520b20
005208a0  00 00 81 e5                                      str r0, [r1]
005208a4  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
005208a8  04 30 83 e2                                      add r3, r3, #4
005208ac  c4 30 84 e5                                      str r3, [r4, #0xc4]
005208b0  00 00 57 e3                                      cmp r7, #0
005208b4  57 ff ff 1a                                      bne #0x520618
005208b8  18 31 9d e5                                      ldr r3, [sp, #0x118]
005208bc  24 a1 9d e5                                      ldr sl, [sp, #0x124]
005208c0  28 91 9d e5                                      ldr sb, [sp, #0x128]
005208c4  03 10 a0 e1                                      mov r1, r3
005208c8  0a 00 a0 e1                                      mov r0, sl
005208cc  10 30 8d e5                                      str r3, [sp, #0x10]
005208d0  b3 b8 f7 eb                                      bl #0x30eba4
005208d4  3f 14 a0 e3                                      mov r1, #0x3f000000
005208d8  23 b9 f7 eb                                      bl #0x30ed6c
005208dc  1c 21 9d e5                                      ldr r2, [sp, #0x11c]
005208e0  d4 00 8d e5                                      str r0, [sp, #0xd4]
005208e4  09 00 a0 e1                                      mov r0, sb
005208e8  02 10 a0 e1                                      mov r1, r2
005208ec  0c 20 8d e5                                      str r2, [sp, #0xc]
005208f0  ab b8 f7 eb                                      bl #0x30eba4
005208f4  3f 14 a0 e3                                      mov r1, #0x3f000000
005208f8  1b b9 f7 eb                                      bl #0x30ed6c
005208fc  20 c1 9d e5                                      ldr ip, [sp, #0x120]
00520900  2c b1 9d e5                                      ldr fp, [sp, #0x12c]
00520904  d8 00 8d e5                                      str r0, [sp, #0xd8]
00520908  0c 10 a0 e1                                      mov r1, ip
0052090c  0b 00 a0 e1                                      mov r0, fp
00520910  14 c0 8d e5                                      str ip, [sp, #0x14]
00520914  a2 b8 f7 eb                                      bl #0x30eba4
00520918  3f 14 a0 e3                                      mov r1, #0x3f000000
0052091c  12 b9 f7 eb                                      bl #0x30ed6c
00520920  0c 20 8d e2                                      add r2, sp, #0xc
00520924  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
00520928  ec 30 8d e5                                      str r3, [sp, #0xec]
0052092c  30 31 9d e5                                      ldr r3, [sp, #0x130]
00520930  dc 00 8d e5                                      str r0, [sp, #0xdc]
00520934  48 10 9d e5                                      ldr r1, [sp, #0x48]
00520938  00 31 8d e5                                      str r3, [sp, #0x100]
0052093c  34 31 9d e5                                      ldr r3, [sp, #0x134]
00520940  40 00 9d e5                                      ldr r0, [sp, #0x40]
00520944  e0 a0 8d e5                                      str sl, [sp, #0xe0]
00520948  04 31 8d e5                                      str r3, [sp, #0x104]
0052094c  38 31 9d e5                                      ldr r3, [sp, #0x138]
00520950  e4 90 8d e5                                      str sb, [sp, #0xe4]
00520954  e8 b0 8d e5                                      str fp, [sp, #0xe8]
00520958  f0 20 8d e5                                      str r2, [sp, #0xf0]
0052095c  f4 c0 8d e5                                      str ip, [sp, #0xf4]
00520960  08 31 8d e5                                      str r3, [sp, #0x108]
00520964  f8 60 8d e5                                      str r6, [sp, #0xf8]
00520968  fc 80 8d e5                                      str r8, [sp, #0xfc]
0052096c  17 f0 ff eb                                      bl #0x51c9d0
00520970  00 00 56 e3                                      cmp r6, #0
00520974  29 ff ff 1a                                      bne #0x520620
00520978  0c 31 9d e5                                      ldr r3, [sp, #0x10c]
0052097c  24 a1 9d e5                                      ldr sl, [sp, #0x124]
00520980  28 91 9d e5                                      ldr sb, [sp, #0x128]
00520984  03 10 a0 e1                                      mov r1, r3
00520988  0a 00 a0 e1                                      mov r0, sl
0052098c  10 30 8d e5                                      str r3, [sp, #0x10]
00520990  83 b8 f7 eb                                      bl #0x30eba4
00520994  3f 14 a0 e3                                      mov r1, #0x3f000000
00520998  f3 b8 f7 eb                                      bl #0x30ed6c
0052099c  10 21 9d e5                                      ldr r2, [sp, #0x110]
005209a0  9c 00 8d e5                                      str r0, [sp, #0x9c]
005209a4  09 00 a0 e1                                      mov r0, sb
005209a8  02 10 a0 e1                                      mov r1, r2
005209ac  0c 20 8d e5                                      str r2, [sp, #0xc]
005209b0  7b b8 f7 eb                                      bl #0x30eba4
005209b4  3f 14 a0 e3                                      mov r1, #0x3f000000
005209b8  eb b8 f7 eb                                      bl #0x30ed6c
005209bc  14 c1 9d e5                                      ldr ip, [sp, #0x114]
005209c0  2c b1 9d e5                                      ldr fp, [sp, #0x12c]
005209c4  a0 00 8d e5                                      str r0, [sp, #0xa0]
005209c8  0c 10 a0 e1                                      mov r1, ip
005209cc  0b 00 a0 e1                                      mov r0, fp
005209d0  14 c0 8d e5                                      str ip, [sp, #0x14]
005209d4  72 b8 f7 eb                                      bl #0x30eba4
005209d8  3f 14 a0 e3                                      mov r1, #0x3f000000
005209dc  e2 b8 f7 eb                                      bl #0x30ed6c
005209e0  0c 20 8d e2                                      add r2, sp, #0xc
005209e4  0c 10 92 e8                                      ldm r2, {r2, r3, ip}
005209e8  b4 30 8d e5                                      str r3, [sp, #0xb4]
005209ec  30 31 9d e5                                      ldr r3, [sp, #0x130]
005209f0  a4 00 8d e5                                      str r0, [sp, #0xa4]
005209f4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
005209f8  c8 30 8d e5                                      str r3, [sp, #0xc8]
005209fc  34 31 9d e5                                      ldr r3, [sp, #0x134]
00520a00  40 00 9d e5                                      ldr r0, [sp, #0x40]
00520a04  a8 a0 8d e5                                      str sl, [sp, #0xa8]
00520a08  cc 30 8d e5                                      str r3, [sp, #0xcc]
00520a0c  38 31 9d e5                                      ldr r3, [sp, #0x138]
00520a10  ac 90 8d e5                                      str sb, [sp, #0xac]
00520a14  b0 b0 8d e5                                      str fp, [sp, #0xb0]
00520a18  b8 20 8d e5                                      str r2, [sp, #0xb8]
00520a1c  bc c0 8d e5                                      str ip, [sp, #0xbc]
00520a20  d0 30 8d e5                                      str r3, [sp, #0xd0]
00520a24  c0 70 8d e5                                      str r7, [sp, #0xc0]
00520a28  c4 80 8d e5                                      str r8, [sp, #0xc4]
00520a2c  e7 ef ff eb                                      bl #0x51c9d0
00520a30  00 00 58 e3                                      cmp r8, #0
00520a34  fb fe ff 1a                                      bne #0x520628
00520a38  18 81 9d e5                                      ldr r8, [sp, #0x118]
00520a3c  0c b1 9d e5                                      ldr fp, [sp, #0x10c]
00520a40  1c a1 9d e5                                      ldr sl, [sp, #0x11c]
00520a44  08 00 a0 e1                                      mov r0, r8
00520a48  0b 10 a0 e1                                      mov r1, fp
00520a4c  54 b8 f7 eb                                      bl #0x30eba4
00520a50  3f 14 a0 e3                                      mov r1, #0x3f000000
00520a54  c4 b8 f7 eb                                      bl #0x30ed6c
00520a58  10 31 9d e5                                      ldr r3, [sp, #0x110]
00520a5c  64 00 8d e5                                      str r0, [sp, #0x64]
00520a60  0a 00 a0 e1                                      mov r0, sl
00520a64  03 10 a0 e1                                      mov r1, r3
00520a68  10 30 8d e5                                      str r3, [sp, #0x10]
00520a6c  4c b8 f7 eb                                      bl #0x30eba4
00520a70  3f 14 a0 e3                                      mov r1, #0x3f000000
00520a74  bc b8 f7 eb                                      bl #0x30ed6c
00520a78  14 21 9d e5                                      ldr r2, [sp, #0x114]
00520a7c  20 91 9d e5                                      ldr sb, [sp, #0x120]
00520a80  68 00 8d e5                                      str r0, [sp, #0x68]
00520a84  02 10 a0 e1                                      mov r1, r2
00520a88  09 00 a0 e1                                      mov r0, sb
00520a8c  0c 20 8d e5                                      str r2, [sp, #0xc]
00520a90  43 b8 f7 eb                                      bl #0x30eba4
00520a94  3f 14 a0 e3                                      mov r1, #0x3f000000
00520a98  b3 b8 f7 eb                                      bl #0x30ed6c
00520a9c  10 30 9d e5                                      ldr r3, [sp, #0x10]
00520aa0  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00520aa4  6c 00 8d e5                                      str r0, [sp, #0x6c]
00520aa8  80 30 8d e5                                      str r3, [sp, #0x80]
00520aac  30 31 9d e5                                      ldr r3, [sp, #0x130]
00520ab0  50 10 9d e5                                      ldr r1, [sp, #0x50]
00520ab4  40 00 9d e5                                      ldr r0, [sp, #0x40]
00520ab8  90 30 8d e5                                      str r3, [sp, #0x90]
00520abc  34 31 9d e5                                      ldr r3, [sp, #0x134]
00520ac0  84 20 8d e5                                      str r2, [sp, #0x84]
00520ac4  70 80 8d e5                                      str r8, [sp, #0x70]
00520ac8  94 30 8d e5                                      str r3, [sp, #0x94]
00520acc  38 31 9d e5                                      ldr r3, [sp, #0x138]
00520ad0  74 a0 8d e5                                      str sl, [sp, #0x74]
00520ad4  78 90 8d e5                                      str sb, [sp, #0x78]
00520ad8  98 30 8d e5                                      str r3, [sp, #0x98]
00520adc  7c b0 8d e5                                      str fp, [sp, #0x7c]
00520ae0  88 70 8d e5                                      str r7, [sp, #0x88]
00520ae4  8c 60 8d e5                                      str r6, [sp, #0x8c]
00520ae8  b8 ef ff eb                                      bl #0x51c9d0
00520aec  18 20 9d e5                                      ldr r2, [sp, #0x18]
00520af0  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00520af4  24 50 85 e2                                      add r5, r5, #0x24
00520af8  01 20 82 e2                                      add r2, r2, #1
00520afc  03 00 52 e1                                      cmp r2, r3
00520b00  18 20 8d e5                                      str r2, [sp, #0x18]
00520b04  ce fe ff 1a                                      bne #0x520644
00520b08  53 df 8d e2                                      add sp, sp, #0x14c
00520b0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00520b10  44 00 9d e5                                      ldr r0, [sp, #0x44]
00520b14  54 20 9d e5                                      ldr r2, [sp, #0x54]
00520b18  45 ef ff eb                                      bl #0x51c834
00520b1c  41 ff ff ea                                      b #0x520828
00520b20  44 00 9d e5                                      ldr r0, [sp, #0x44]
00520b24  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
00520b28  41 ef ff eb                                      bl #0x51c834
00520b2c  5f ff ff ea                                      b #0x5208b0
00520b30  44 00 9d e5                                      ldr r0, [sp, #0x44]
00520b34  58 20 9d e5                                      ldr r2, [sp, #0x58]
00520b38  3d ef ff eb                                      bl #0x51c834
00520b3c  4a ff ff ea                                      b #0x52086c

; FUNCTION 0x00520b40, declared_size=1112, range_size=1112, mode=arm
; class-group: PFFloor
; alias: _ZN7PFFloor12_LoadNavMeshEPN6glitch5scene14IMeshSceneNodeE
; demangled: PFFloor::_LoadNavMesh(glitch::scene::IMeshSceneNode*)
; decoder-mode: arm
00520b40  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00520b44  00 40 a0 e1                                      mov r4, r0
00520b48  38 d0 4d e2                                      sub sp, sp, #0x38
00520b4c  01 00 a0 e1                                      mov r0, r1
00520b50  01 50 a0 e1                                      mov r5, r1
00520b54  cd d9 01 eb                                      bl #0x597290
00520b58  00 30 90 e5                                      ldr r3, [r0]
00520b5c  0f e0 a0 e1                                      mov lr, pc
00520b60  ac f0 93 e5                                      ldr pc, [r3, #0xac]
00520b64  00 a4 9f e5                                      ldr sl, [pc, #0x400]
00520b68  08 80 8d e2                                      add r8, sp, #8
00520b6c  00 10 a0 e1                                      mov r1, r0
00520b70  38 70 8d e2                                      add r7, sp, #0x38
00520b74  0a a0 8f e0                                      add sl, pc, sl
00520b78  08 00 a0 e1                                      mov r0, r8
00520b7c  75 e1 f7 eb                                      bl #0x319158
00520b80  04 90 88 e2                                      add sb, r8, #4
00520b84  08 a0 27 e5                                      str sl, [r7, #-8]!
00520b88  09 00 a0 e1                                      mov r0, sb
00520b8c  07 10 a0 e1                                      mov r1, r7
00520b90  08 f1 ff eb                                      bl #0x51cfb8
00520b94  d4 63 9f e5                                      ldr r6, [pc, #0x3d4]
00520b98  00 00 59 e1                                      cmp sb, r0
00520b9c  06 60 8f e0                                      add r6, pc, r6
00520ba0  0b 00 00 0a                                      beq #0x520bd4
00520ba4  07 10 a0 e1                                      mov r1, r7
00520ba8  09 00 a0 e1                                      mov r0, sb
00520bac  30 a0 8d e5                                      str sl, [sp, #0x30]
00520bb0  00 f1 ff eb                                      bl #0x51cfb8
00520bb4  3c 90 90 e5                                      ldr sb, [r0, #0x3c]
00520bb8  28 a0 84 e2                                      add sl, r4, #0x28
00520bbc  09 00 a0 e1                                      mov r0, sb
00520bc0  a3 b4 f7 eb                                      bl #0x30de54
00520bc4  09 10 a0 e1                                      mov r1, sb
00520bc8  00 20 89 e0                                      add r2, sb, r0
00520bcc  0a 00 a0 e1                                      mov r0, sl
00520bd0  82 bf f7 eb                                      bl #0x3109e0
00520bd4  3c 90 94 e5                                      ldr sb, [r4, #0x3c]
00520bd8  94 13 9f e5                                      ldr r1, [pc, #0x394]
00520bdc  09 00 a0 e1                                      mov r0, sb
00520be0  01 10 8f e0                                      add r1, pc, r1
00520be4  fa b7 f7 eb                                      bl #0x30ebd4
00520be8  24 a0 94 e5                                      ldr sl, [r4, #0x24]
00520bec  84 13 9f e5                                      ldr r1, [pc, #0x384]
00520bf0  00 00 50 e3                                      cmp r0, #0
00520bf4  01 a4 8a 13                                      orrne sl, sl, #0x1000000
00520bf8  24 a0 84 15                                      strne sl, [r4, #0x24]
00520bfc  01 10 8f e0                                      add r1, pc, r1
00520c00  09 00 a0 e1                                      mov r0, sb
00520c04  f2 b7 f7 eb                                      bl #0x30ebd4
00520c08  6c 13 9f e5                                      ldr r1, [pc, #0x36c]
00520c0c  00 00 50 e3                                      cmp r0, #0
00520c10  02 a4 8a 13                                      orrne sl, sl, #0x2000000
00520c14  24 a0 84 15                                      strne sl, [r4, #0x24]
00520c18  01 10 8f e0                                      add r1, pc, r1
00520c1c  09 00 a0 e1                                      mov r0, sb
00520c20  eb b7 f7 eb                                      bl #0x30ebd4
00520c24  54 13 9f e5                                      ldr r1, [pc, #0x354]
00520c28  00 00 50 e3                                      cmp r0, #0
00520c2c  01 a0 8a 13                                      orrne sl, sl, #1
00520c30  24 a0 84 15                                      strne sl, [r4, #0x24]
00520c34  01 10 8f e0                                      add r1, pc, r1
00520c38  09 00 a0 e1                                      mov r0, sb
00520c3c  e4 b7 f7 eb                                      bl #0x30ebd4
00520c40  00 00 50 e3                                      cmp r0, #0
00520c44  02 a0 8a 13                                      orrne sl, sl, #2
00520c48  24 a0 84 15                                      strne sl, [r4, #0x24]
00520c4c  03 04 1a e3                                      tst sl, #0x3000000
00520c50  20 30 94 15                                      ldrne r3, [r4, #0x20]
00520c54  05 00 a0 e1                                      mov r0, r5
00520c58  07 34 83 13                                      orrne r3, r3, #0x7000000
00520c5c  20 30 84 15                                      strne r3, [r4, #0x20]
00520c60  8a d9 01 eb                                      bl #0x597290
00520c64  00 00 50 e3                                      cmp r0, #0
00520c68  aa 00 00 0a                                      beq #0x520f18
00520c6c  05 00 a0 e1                                      mov r0, r5
00520c70  86 d9 01 eb                                      bl #0x597290
00520c74  00 00 50 e3                                      cmp r0, #0
00520c78  08 00 00 0a                                      beq #0x520ca0
00520c7c  00 30 95 e5                                      ldr r3, [r5]
00520c80  24 60 8d e2                                      add r6, sp, #0x24
00520c84  06 00 a0 e1                                      mov r0, r6
00520c88  05 10 a0 e1                                      mov r1, r5
00520c8c  a4 a0 93 e5                                      ldr sl, [r3, #0xa4]
00520c90  3a d9 01 eb                                      bl #0x597180
00520c94  05 00 a0 e1                                      mov r0, r5
00520c98  06 10 a0 e1                                      mov r1, r6
00520c9c  3a ff 2f e1                                      blx sl
00520ca0  05 00 a0 e1                                      mov r0, r5
00520ca4  fc ba ff eb                                      bl #0x50f89c
00520ca8  40 00 84 e5                                      str r0, [r4, #0x40]
00520cac  00 10 a0 e3                                      mov r1, #0
00520cb0  05 00 a0 e1                                      mov r0, r5
00520cb4  00 30 95 e5                                      ldr r3, [r5]
00520cb8  0f e0 a0 e1                                      mov lr, pc
00520cbc  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00520cc0  05 00 a0 e1                                      mov r0, r5
00520cc4  00 30 95 e5                                      ldr r3, [r5]
00520cc8  0f e0 a0 e1                                      mov lr, pc
00520ccc  68 f0 93 e5                                      ldr pc, [r3, #0x68]
00520cd0  40 30 94 e5                                      ldr r3, [r4, #0x40]
00520cd4  03 00 a0 e1                                      mov r0, r3
00520cd8  00 30 93 e5                                      ldr r3, [r3]
00520cdc  0f e0 a0 e1                                      mov lr, pc
00520ce0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00520ce4  00 10 90 e5                                      ldr r1, [r0]
00520ce8  00 30 a0 e1                                      mov r3, r0
00520cec  40 20 94 e5                                      ldr r2, [r4, #0x40]
00520cf0  5c 10 84 e5                                      str r1, [r4, #0x5c]
00520cf4  04 10 90 e5                                      ldr r1, [r0, #4]
00520cf8  02 00 a0 e1                                      mov r0, r2
00520cfc  60 10 84 e5                                      str r1, [r4, #0x60]
00520d00  08 30 93 e5                                      ldr r3, [r3, #8]
00520d04  64 30 84 e5                                      str r3, [r4, #0x64]
00520d08  00 30 92 e5                                      ldr r3, [r2]
00520d0c  0f e0 a0 e1                                      mov lr, pc
00520d10  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00520d14  00 30 90 e5                                      ldr r3, [r0]
00520d18  11 13 a0 e3                                      mov r1, #0x44000000
00520d1c  7a 18 81 e2                                      add r1, r1, #0x7a0000
00520d20  44 30 84 e5                                      str r3, [r4, #0x44]
00520d24  04 30 90 e5                                      ldr r3, [r0, #4]
00520d28  48 30 84 e5                                      str r3, [r4, #0x48]
00520d2c  08 50 90 e5                                      ldr r5, [r0, #8]
00520d30  4c 50 84 e5                                      str r5, [r4, #0x4c]
00520d34  0c 30 90 e5                                      ldr r3, [r0, #0xc]
00520d38  50 30 84 e5                                      str r3, [r4, #0x50]
00520d3c  10 30 90 e5                                      ldr r3, [r0, #0x10]
00520d40  54 30 84 e5                                      str r3, [r4, #0x54]
00520d44  14 00 90 e5                                      ldr r0, [r0, #0x14]
00520d48  95 b7 f7 eb                                      bl #0x30eba4
00520d4c  11 13 a0 e3                                      mov r1, #0x44000000
00520d50  58 00 84 e5                                      str r0, [r4, #0x58]
00520d54  7a 18 81 e2                                      add r1, r1, #0x7a0000
00520d58  05 00 a0 e1                                      mov r0, r5
00520d5c  92 b5 f7 eb                                      bl #0x30e3ac
00520d60  40 30 94 e5                                      ldr r3, [r4, #0x40]
00520d64  4c 00 84 e5                                      str r0, [r4, #0x4c]
00520d68  34 00 8d e2                                      add r0, sp, #0x34
00520d6c  03 10 a0 e1                                      mov r1, r3
00520d70  00 30 93 e5                                      ldr r3, [r3]
00520d74  0f e0 a0 e1                                      mov lr, pc
00520d78  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
00520d7c  00 10 a0 e3                                      mov r1, #0
00520d80  b8 00 a0 e3                                      mov r0, #0xb8
00520d84  34 50 9d e5                                      ldr r5, [sp, #0x34]
00520d88  07 4d 00 eb                                      bl #0x5341ac
00520d8c  40 20 94 e5                                      ldr r2, [r4, #0x40]
00520d90  01 c0 a0 e3                                      mov ip, #1
00520d94  05 10 a0 e1                                      mov r1, r5
00520d98  0f 30 a0 e3                                      mov r3, #0xf
00520d9c  00 60 a0 e1                                      mov r6, r0
00520da0  00 c0 8d e5                                      str ip, [sp]
00520da4  2a 9e 01 eb                                      bl #0x588654
00520da8  34 00 9d e5                                      ldr r0, [sp, #0x34]
00520dac  00 00 50 e3                                      cmp r0, #0
00520db0  00 00 00 0a                                      beq #0x520db8
00520db4  f2 f1 f7 eb                                      bl #0x31d584
00520db8  40 30 94 e5                                      ldr r3, [r4, #0x40]
00520dbc  06 10 a0 e1                                      mov r1, r6
00520dc0  03 00 a0 e1                                      mov r0, r3
00520dc4  00 30 93 e5                                      ldr r3, [r3]
00520dc8  0f e0 a0 e1                                      mov lr, pc
00520dcc  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00520dd0  06 00 a0 e1                                      mov r0, r6
00520dd4  ea f1 f7 eb                                      bl #0x31d584
00520dd8  00 30 96 e5                                      ldr r3, [r6]
00520ddc  06 00 a0 e1                                      mov r0, r6
00520de0  0f e0 a0 e1                                      mov lr, pc
00520de4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00520de8  00 00 50 e3                                      cmp r0, #0
00520dec  00 a0 a0 e1                                      mov sl, r0
00520df0  30 00 8d e5                                      str r0, [sp, #0x30]
00520df4  00 50 a0 d3                                      movle r5, #0
00520df8  1f 00 00 da                                      ble #0x520e7c
00520dfc  24 00 a0 e3                                      mov r0, #0x24
00520e00  00 10 a0 e3                                      mov r1, #0
00520e04  90 0a 00 e0                                      mul r0, r0, sl
00520e08  d7 bd f7 eb                                      bl #0x31056c
00520e0c  00 20 a0 e3                                      mov r2, #0
00520e10  00 50 a0 e1                                      mov r5, r0
00520e14  00 30 a0 e1                                      mov r3, r0
00520e18  00 10 a0 e3                                      mov r1, #0
00520e1c  00 00 00 ea                                      b #0x520e24
00520e20  24 30 83 e2                                      add r3, r3, #0x24
00520e24  01 10 81 e2                                      add r1, r1, #1
00520e28  01 00 5a e1                                      cmp sl, r1
00520e2c  00 20 83 e5                                      str r2, [r3]
00520e30  04 20 83 e5                                      str r2, [r3, #4]
00520e34  08 20 83 e5                                      str r2, [r3, #8]
00520e38  0c 20 83 e5                                      str r2, [r3, #0xc]
00520e3c  10 20 83 e5                                      str r2, [r3, #0x10]
00520e40  14 20 83 e5                                      str r2, [r3, #0x14]
00520e44  18 20 83 e5                                      str r2, [r3, #0x18]
00520e48  1c 20 83 e5                                      str r2, [r3, #0x1c]
00520e4c  20 20 83 e5                                      str r2, [r3, #0x20]
00520e50  f2 ff ff 1a                                      bne #0x520e20
00520e54  00 10 a0 e3                                      mov r1, #0
00520e58  00 c0 96 e5                                      ldr ip, [r6]
00520e5c  06 00 a0 e1                                      mov r0, r6
00520e60  00 10 8d e5                                      str r1, [sp]
00520e64  30 20 9d e5                                      ldr r2, [sp, #0x30]
00520e68  07 30 a0 e1                                      mov r3, r7
00520e6c  05 10 a0 e1                                      mov r1, r5
00520e70  0f e0 a0 e1                                      mov lr, pc
00520e74  10 f0 9c e5                                      ldr pc, [ip, #0x10]
00520e78  30 a0 9d e5                                      ldr sl, [sp, #0x30]
00520e7c  0a 20 a0 e1                                      mov r2, sl
00520e80  04 00 a0 e1                                      mov r0, r4
00520e84  05 10 a0 e1                                      mov r1, r5
00520e88  be fd ff eb                                      bl #0x520588
00520e8c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00520e90  68 50 84 e5                                      str r5, [r4, #0x68]
00520e94  00 00 53 e3                                      cmp r3, #0
00520e98  6c 30 84 e5                                      str r3, [r4, #0x6c]
00520e9c  19 00 00 0a                                      beq #0x520f08
00520ea0  00 60 a0 e3                                      mov r6, #0
00520ea4  06 70 a0 e1                                      mov r7, r6
00520ea8  00 00 00 ea                                      b #0x520eb0
00520eac  68 50 94 e5                                      ldr r5, [r4, #0x68]
00520eb0  06 50 85 e0                                      add r5, r5, r6
00520eb4  08 00 95 e5                                      ldr r0, [r5, #8]
00520eb8  fe 15 a0 e3                                      mov r1, #0x3f800000
00520ebc  38 b7 f7 eb                                      bl #0x30eba4
00520ec0  08 00 85 e5                                      str r0, [r5, #8]
00520ec4  68 50 94 e5                                      ldr r5, [r4, #0x68]
00520ec8  fe 15 a0 e3                                      mov r1, #0x3f800000
00520ecc  01 70 87 e2                                      add r7, r7, #1
00520ed0  06 50 85 e0                                      add r5, r5, r6
00520ed4  14 00 95 e5                                      ldr r0, [r5, #0x14]
00520ed8  31 b7 f7 eb                                      bl #0x30eba4
00520edc  14 00 85 e5                                      str r0, [r5, #0x14]
00520ee0  68 50 94 e5                                      ldr r5, [r4, #0x68]
00520ee4  fe 15 a0 e3                                      mov r1, #0x3f800000
00520ee8  06 50 85 e0                                      add r5, r5, r6
00520eec  20 00 95 e5                                      ldr r0, [r5, #0x20]
00520ef0  2b b7 f7 eb                                      bl #0x30eba4
00520ef4  20 00 85 e5                                      str r0, [r5, #0x20]
00520ef8  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
00520efc  24 60 86 e2                                      add r6, r6, #0x24
00520f00  07 00 53 e1                                      cmp r3, r7
00520f04  e8 ff ff 8a                                      bhi #0x520eac
00520f08  08 00 a0 e1                                      mov r0, r8
00520f0c  99 dc f7 eb                                      bl #0x318178
00520f10  38 d0 8d e2                                      add sp, sp, #0x38
00520f14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00520f18  64 30 9f e5                                      ldr r3, [pc, #0x64]
00520f1c  03 30 96 e7                                      ldr r3, [r6, r3]
00520f20  00 30 93 e5                                      ldr r3, [r3]
00520f24  02 00 53 e3                                      cmp r3, #2
00520f28  00 00 80 05                                      streq r0, [r0]
00520f2c  4e ff ff 0a                                      beq #0x520c6c
00520f30  01 00 53 e3                                      cmp r3, #1
00520f34  4c ff ff 1a                                      bne #0x520c6c
00520f38  48 00 9f e5                                      ldr r0, [pc, #0x48]
00520f3c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00520f40  48 20 9f e5                                      ldr r2, [pc, #0x48]
00520f44  00 00 96 e7                                      ldr r0, [r6, r0]
00520f48  44 30 9f e5                                      ldr r3, [pc, #0x44]
00520f4c  8a c0 a0 e3                                      mov ip, #0x8a
00520f50  01 10 8f e0                                      add r1, pc, r1
00520f54  02 20 8f e0                                      add r2, pc, r2
00520f58  03 30 8f e0                                      add r3, pc, r3
00520f5c  a8 00 80 e2                                      add r0, r0, #0xa8
00520f60  00 c0 8d e5                                      str ip, [sp]
00520f64  26 b4 f7 eb                                      bl #0x30e004
00520f68  3f ff ff ea                                      b #0x520c6c
; mapping-symbol data/literal pool
00520f6c  c4 bd 3b 00 f4 3e 47 00 10 ab 3e 00 4c bd 3b 00  .byte 0xc4, 0xbd, 0x3b, 0x00, 0xf4, 0x3e, 0x47, 0x00, 0x10, 0xab, 0x3e, 0x00, 0x4c, 0xbd, 0x3b, 0x00
00520f7c  38 bd 3b 00 24 bd 3b 00 c0 39 00 00 c0 19 00 00  .byte 0x38, 0xbd, 0x3b, 0x00, 0x24, 0xbd, 0x3b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00520f8c  88 d4 39 00 0c ba 3b 00 78 b9 3b 00              .byte 0x88, 0xd4, 0x39, 0x00, 0x0c, 0xba, 0x3b, 0x00, 0x78, 0xb9, 0x3b, 0x00
