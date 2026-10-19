; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00479f88, declared_size=16, range_size=16, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListixEi
; demangled: Vector3DFList::operator[](int)
; decoder-mode: arm
00479f88  00 30 90 e5                                      ldr r3, [r0]
00479f8c  0c 00 a0 e3                                      mov r0, #0xc
00479f90  90 31 20 e0                                      mla r0, r0, r1, r3
00479f94  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479f98, declared_size=8, range_size=8, mode=arm
; class-group: Vector3DFList
; alias: _ZNK13Vector3DFList8getCountEv
; demangled: Vector3DFList::getCount() const
; decoder-mode: arm
00479f98  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00479f9c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479fa0, declared_size=40, range_size=40, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFList20setCharacterPositionERKN6glitch4core8vector3dIfEE
; demangled: Vector3DFList::setCharacterPosition(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00479fa0  00 30 91 e5                                      ldr r3, [r1]
00479fa4  14 30 80 e5                                      str r3, [r0, #0x14]
00479fa8  04 c0 91 e5                                      ldr ip, [r1, #4]
00479fac  18 c0 80 e5                                      str ip, [r0, #0x18]
00479fb0  08 20 91 e5                                      ldr r2, [r1, #8]
00479fb4  3c 30 80 e5                                      str r3, [r0, #0x3c]
00479fb8  40 c0 80 e5                                      str ip, [r0, #0x40]
00479fbc  44 20 80 e5                                      str r2, [r0, #0x44]
00479fc0  1c 20 80 e5                                      str r2, [r0, #0x1c]
00479fc4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00479fc8, declared_size=432, range_size=432, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFList10addClosestERKN6glitch4core8vector3dIfEE
; demangled: Vector3DFList::addClosest(glitch::core::vector3d<float> const&)
; decoder-mode: arm
00479fc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00479fcc  01 90 a0 e1                                      mov sb, r1
00479fd0  00 10 91 e5                                      ldr r1, [r1]
00479fd4  0c d0 4d e2                                      sub sp, sp, #0xc
00479fd8  00 70 a0 e1                                      mov r7, r0
00479fdc  00 10 8d e5                                      str r1, [sp]
00479fe0  14 10 90 e5                                      ldr r1, [r0, #0x14]
00479fe4  00 00 9d e5                                      ldr r0, [sp]
00479fe8  ef 50 fa eb                                      bl #0x30e3ac
00479fec  18 10 97 e5                                      ldr r1, [r7, #0x18]
00479ff0  00 60 a0 e1                                      mov r6, r0
00479ff4  04 00 99 e5                                      ldr r0, [sb, #4]
00479ff8  eb 50 fa eb                                      bl #0x30e3ac
00479ffc  1c 10 97 e5                                      ldr r1, [r7, #0x1c]
0047a000  00 50 a0 e1                                      mov r5, r0
0047a004  08 00 99 e5                                      ldr r0, [sb, #8]
0047a008  e7 50 fa eb                                      bl #0x30e3ac
0047a00c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0047a010  08 80 97 e5                                      ldr r8, [r7, #8]
0047a014  00 40 a0 e1                                      mov r4, r0
0047a018  08 00 53 e1                                      cmp r3, r8
0047a01c  34 00 00 ba                                      blt #0x47a0f4
0047a020  00 00 58 e3                                      cmp r8, #0
0047a024  30 00 00 da                                      ble #0x47a0ec
0047a028  06 10 a0 e1                                      mov r1, r6
0047a02c  06 00 a0 e1                                      mov r0, r6
0047a030  4d 53 fa eb                                      bl #0x30ed6c
0047a034  05 10 a0 e1                                      mov r1, r5
0047a038  00 60 a0 e1                                      mov r6, r0
0047a03c  05 00 a0 e1                                      mov r0, r5
0047a040  49 53 fa eb                                      bl #0x30ed6c
0047a044  00 10 a0 e1                                      mov r1, r0
0047a048  06 00 a0 e1                                      mov r0, r6
0047a04c  d4 52 fa eb                                      bl #0x30eba4
0047a050  04 10 a0 e1                                      mov r1, r4
0047a054  00 50 a0 e1                                      mov r5, r0
0047a058  04 00 a0 e1                                      mov r0, r4
0047a05c  42 53 fa eb                                      bl #0x30ed6c
0047a060  00 10 a0 e1                                      mov r1, r0
0047a064  05 00 a0 e1                                      mov r0, r5
0047a068  cd 52 fa eb                                      bl #0x30eba4
0047a06c  04 00 8d e5                                      str r0, [sp, #4]
0047a070  04 a0 97 e5                                      ldr sl, [r7, #4]
0047a074  00 60 a0 e1                                      mov r6, r0
0047a078  00 40 a0 e3                                      mov r4, #0
0047a07c  00 b0 e0 e3                                      mvn fp, #0
0047a080  00 00 00 ea                                      b #0x47a088
0047a084  05 60 a0 e1                                      mov r6, r5
0047a088  04 51 9a e7                                      ldr r5, [sl, r4, lsl #2]
0047a08c  06 10 a0 e1                                      mov r1, r6
0047a090  05 00 a0 e1                                      mov r0, r5
0047a094  97 50 fa eb                                      bl #0x30e2f8
0047a098  00 00 50 e3                                      cmp r0, #0
0047a09c  04 b0 a0 11                                      movne fp, r4
0047a0a0  01 40 84 e2                                      add r4, r4, #1
0047a0a4  06 50 a0 01                                      moveq r5, r6
0047a0a8  08 00 54 e1                                      cmp r4, r8
0047a0ac  f4 ff ff 1a                                      bne #0x47a084
0047a0b0  01 00 7b e3                                      cmn fp, #1
0047a0b4  0c 00 00 0a                                      beq #0x47a0ec
0047a0b8  0c 30 a0 e3                                      mov r3, #0xc
0047a0bc  00 20 97 e5                                      ldr r2, [r7]
0047a0c0  00 10 9d e5                                      ldr r1, [sp]
0047a0c4  93 0b 03 e0                                      mul r3, r3, fp
0047a0c8  03 10 82 e7                                      str r1, [r2, r3]
0047a0cc  04 10 99 e5                                      ldr r1, [sb, #4]
0047a0d0  03 30 82 e0                                      add r3, r2, r3
0047a0d4  04 10 83 e5                                      str r1, [r3, #4]
0047a0d8  08 20 99 e5                                      ldr r2, [sb, #8]
0047a0dc  08 20 83 e5                                      str r2, [r3, #8]
0047a0e0  04 30 97 e5                                      ldr r3, [r7, #4]
0047a0e4  04 20 9d e5                                      ldr r2, [sp, #4]
0047a0e8  0b 21 83 e7                                      str r2, [r3, fp, lsl #2]
0047a0ec  0c d0 8d e2                                      add sp, sp, #0xc
0047a0f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0047a0f4  0c 20 a0 e3                                      mov r2, #0xc
0047a0f8  00 c0 9d e5                                      ldr ip, [sp]
0047a0fc  92 03 03 e0                                      mul r3, r2, r3
0047a100  00 20 97 e5                                      ldr r2, [r7]
0047a104  06 10 a0 e1                                      mov r1, r6
0047a108  06 00 a0 e1                                      mov r0, r6
0047a10c  03 c0 82 e7                                      str ip, [r2, r3]
0047a110  04 c0 99 e5                                      ldr ip, [sb, #4]
0047a114  03 30 82 e0                                      add r3, r2, r3
0047a118  04 c0 83 e5                                      str ip, [r3, #4]
0047a11c  08 20 99 e5                                      ldr r2, [sb, #8]
0047a120  08 20 83 e5                                      str r2, [r3, #8]
0047a124  10 53 fa eb                                      bl #0x30ed6c
0047a128  05 10 a0 e1                                      mov r1, r5
0047a12c  00 60 a0 e1                                      mov r6, r0
0047a130  05 00 a0 e1                                      mov r0, r5
0047a134  0c 53 fa eb                                      bl #0x30ed6c
0047a138  00 10 a0 e1                                      mov r1, r0
0047a13c  06 00 a0 e1                                      mov r0, r6
0047a140  97 52 fa eb                                      bl #0x30eba4
0047a144  04 10 a0 e1                                      mov r1, r4
0047a148  00 50 a0 e1                                      mov r5, r0
0047a14c  04 00 a0 e1                                      mov r0, r4
0047a150  05 53 fa eb                                      bl #0x30ed6c
0047a154  00 10 a0 e1                                      mov r1, r0
0047a158  05 00 a0 e1                                      mov r0, r5
0047a15c  90 52 fa eb                                      bl #0x30eba4
0047a160  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0047a164  04 10 97 e5                                      ldr r1, [r7, #4]
0047a168  01 20 83 e2                                      add r2, r3, #1
0047a16c  03 01 81 e7                                      str r0, [r1, r3, lsl #2]
0047a170  0c 20 87 e5                                      str r2, [r7, #0xc]
0047a174  dc ff ff ea                                      b #0x47a0ec

; FUNCTION 0x0047a178, declared_size=92, range_size=92, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFList3addERKN6glitch4core8vector3dIfEE
; demangled: Vector3DFList::add(glitch::core::vector3d<float> const&)
; decoder-mode: arm
0047a178  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047a17c  08 20 90 e5                                      ldr r2, [r0, #8]
0047a180  04 40 2d e5                                      str r4, [sp, #-4]!
0047a184  02 00 53 e1                                      cmp r3, r2
0047a188  0f 00 00 aa                                      bge #0x47a1cc
0047a18c  0c 20 a0 e3                                      mov r2, #0xc
0047a190  00 c0 90 e5                                      ldr ip, [r0]
0047a194  00 40 91 e5                                      ldr r4, [r1]
0047a198  92 03 03 e0                                      mul r3, r2, r3
0047a19c  03 40 8c e7                                      str r4, [ip, r3]
0047a1a0  03 20 8c e0                                      add r2, ip, r3
0047a1a4  04 30 91 e5                                      ldr r3, [r1, #4]
0047a1a8  00 c0 a0 e3                                      mov ip, #0
0047a1ac  04 30 82 e5                                      str r3, [r2, #4]
0047a1b0  08 30 91 e5                                      ldr r3, [r1, #8]
0047a1b4  08 30 82 e5                                      str r3, [r2, #8]
0047a1b8  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0047a1bc  04 10 90 e5                                      ldr r1, [r0, #4]
0047a1c0  01 20 83 e2                                      add r2, r3, #1
0047a1c4  03 c1 81 e7                                      str ip, [r1, r3, lsl #2]
0047a1c8  0c 20 80 e5                                      str r2, [r0, #0xc]
0047a1cc  10 00 bd e8                                      ldm sp!, {r4}
0047a1d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x0047a9b4, declared_size=148, range_size=148, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFList6setNewEi
; demangled: Vector3DFList::setNew(int)
; decoder-mode: arm
0047a9b4  70 40 2d e9                                      push {r4, r5, r6, lr}
0047a9b8  00 40 a0 e1                                      mov r4, r0
0047a9bc  00 00 90 e5                                      ldr r0, [r0]
0047a9c0  00 60 a0 e3                                      mov r6, #0
0047a9c4  01 50 a0 e1                                      mov r5, r1
0047a9c8  06 00 50 e1                                      cmp r0, r6
0047a9cc  08 10 84 e5                                      str r1, [r4, #8]
0047a9d0  0c 60 84 e5                                      str r6, [r4, #0xc]
0047a9d4  01 00 00 0a                                      beq #0x47a9e0
0047a9d8  98 56 fa eb                                      bl #0x310440
0047a9dc  00 60 84 e5                                      str r6, [r4]
0047a9e0  04 00 94 e5                                      ldr r0, [r4, #4]
0047a9e4  00 00 50 e3                                      cmp r0, #0
0047a9e8  02 00 00 0a                                      beq #0x47a9f8
0047a9ec  93 56 fa eb                                      bl #0x310440
0047a9f0  00 30 a0 e3                                      mov r3, #0
0047a9f4  04 30 84 e5                                      str r3, [r4, #4]
0047a9f8  0c 00 a0 e3                                      mov r0, #0xc
0047a9fc  90 05 00 e0                                      mul r0, r0, r5
0047aa00  93 56 fa eb                                      bl #0x310454
0047aa04  00 00 55 e3                                      cmp r5, #0
0047aa08  09 00 00 0a                                      beq #0x47aa34
0047aa0c  00 10 a0 e3                                      mov r1, #0
0047aa10  00 30 a0 e1                                      mov r3, r0
0047aa14  00 20 a0 e3                                      mov r2, #0
0047aa18  01 20 82 e2                                      add r2, r2, #1
0047aa1c  05 00 52 e1                                      cmp r2, r5
0047aa20  00 10 83 e5                                      str r1, [r3]
0047aa24  04 10 83 e5                                      str r1, [r3, #4]
0047aa28  08 10 83 e5                                      str r1, [r3, #8]
0047aa2c  0c 30 83 e2                                      add r3, r3, #0xc
0047aa30  f8 ff ff 1a                                      bne #0x47aa18
0047aa34  00 00 84 e5                                      str r0, [r4]
0047aa38  05 01 a0 e1                                      lsl r0, r5, #2
0047aa3c  84 56 fa eb                                      bl #0x310454
0047aa40  04 00 84 e5                                      str r0, [r4, #4]
0047aa44  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0047bfcc, declared_size=72, range_size=72, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListD1Ev
; demangled: Vector3DFList::~Vector3DFList()
; decoder-mode: arm
0047bfcc  10 40 2d e9                                      push {r4, lr}
0047bfd0  00 40 a0 e1                                      mov r4, r0
0047bfd4  00 00 90 e5                                      ldr r0, [r0]
0047bfd8  00 00 50 e3                                      cmp r0, #0
0047bfdc  02 00 00 0a                                      beq #0x47bfec
0047bfe0  16 51 fa eb                                      bl #0x310440
0047bfe4  00 30 a0 e3                                      mov r3, #0
0047bfe8  00 30 84 e5                                      str r3, [r4]
0047bfec  04 00 94 e5                                      ldr r0, [r4, #4]
0047bff0  00 00 50 e3                                      cmp r0, #0
0047bff4  02 00 00 0a                                      beq #0x47c004
0047bff8  10 51 fa eb                                      bl #0x310440
0047bffc  00 30 a0 e3                                      mov r3, #0
0047c000  04 30 84 e5                                      str r3, [r4, #4]
0047c004  24 00 84 e2                                      add r0, r4, #0x24
0047c008  d0 a3 02 eb                                      bl #0x524f50
0047c00c  04 00 a0 e1                                      mov r0, r4
0047c010  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047c014, declared_size=72, range_size=72, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListD2Ev
; demangled: Vector3DFList::~Vector3DFList()
; decoder-mode: arm
0047c014  10 40 2d e9                                      push {r4, lr}
0047c018  00 40 a0 e1                                      mov r4, r0
0047c01c  00 00 90 e5                                      ldr r0, [r0]
0047c020  00 00 50 e3                                      cmp r0, #0
0047c024  02 00 00 0a                                      beq #0x47c034
0047c028  04 51 fa eb                                      bl #0x310440
0047c02c  00 30 a0 e3                                      mov r3, #0
0047c030  00 30 84 e5                                      str r3, [r4]
0047c034  04 00 94 e5                                      ldr r0, [r4, #4]
0047c038  00 00 50 e3                                      cmp r0, #0
0047c03c  02 00 00 0a                                      beq #0x47c04c
0047c040  fe 50 fa eb                                      bl #0x310440
0047c044  00 30 a0 e3                                      mov r3, #0
0047c048  04 30 84 e5                                      str r3, [r4, #4]
0047c04c  24 00 84 e2                                      add r0, r4, #0x24
0047c050  be a3 02 eb                                      bl #0x524f50
0047c054  04 00 a0 e1                                      mov r0, r4
0047c058  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047c05c, declared_size=124, range_size=124, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListC1Ei
; demangled: Vector3DFList::Vector3DFList(int)
; decoder-mode: arm
0047c05c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047c060  00 50 a0 e3                                      mov r5, #0
0047c064  00 40 a0 e1                                      mov r4, r0
0047c068  00 70 a0 e3                                      mov r7, #0
0047c06c  08 10 84 e5                                      str r1, [r4, #8]
0047c070  0c 70 80 e5                                      str r7, [r0, #0xc]
0047c074  14 50 80 e5                                      str r5, [r0, #0x14]
0047c078  18 50 80 e5                                      str r5, [r0, #0x18]
0047c07c  1c 50 80 e5                                      str r5, [r0, #0x1c]
0047c080  24 00 80 e2                                      add r0, r0, #0x24
0047c084  01 60 a0 e1                                      mov r6, r1
0047c088  6d a1 02 eb                                      bl #0x524644
0047c08c  0c 00 a0 e3                                      mov r0, #0xc
0047c090  90 06 00 e0                                      mul r0, r0, r6
0047c094  ee 50 fa eb                                      bl #0x310454
0047c098  07 00 56 e1                                      cmp r6, r7
0047c09c  07 00 00 0a                                      beq #0x47c0c0
0047c0a0  00 30 a0 e1                                      mov r3, r0
0047c0a4  01 70 87 e2                                      add r7, r7, #1
0047c0a8  06 00 57 e1                                      cmp r7, r6
0047c0ac  00 50 83 e5                                      str r5, [r3]
0047c0b0  04 50 83 e5                                      str r5, [r3, #4]
0047c0b4  08 50 83 e5                                      str r5, [r3, #8]
0047c0b8  0c 30 83 e2                                      add r3, r3, #0xc
0047c0bc  f8 ff ff 1a                                      bne #0x47c0a4
0047c0c0  00 00 84 e5                                      str r0, [r4]
0047c0c4  06 01 a0 e1                                      lsl r0, r6, #2
0047c0c8  e1 50 fa eb                                      bl #0x310454
0047c0cc  04 00 84 e5                                      str r0, [r4, #4]
0047c0d0  04 00 a0 e1                                      mov r0, r4
0047c0d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047c0d8, declared_size=124, range_size=124, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListC2Ei
; demangled: Vector3DFList::Vector3DFList(int)
; decoder-mode: arm
0047c0d8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0047c0dc  00 50 a0 e3                                      mov r5, #0
0047c0e0  00 40 a0 e1                                      mov r4, r0
0047c0e4  00 70 a0 e3                                      mov r7, #0
0047c0e8  08 10 84 e5                                      str r1, [r4, #8]
0047c0ec  0c 70 80 e5                                      str r7, [r0, #0xc]
0047c0f0  14 50 80 e5                                      str r5, [r0, #0x14]
0047c0f4  18 50 80 e5                                      str r5, [r0, #0x18]
0047c0f8  1c 50 80 e5                                      str r5, [r0, #0x1c]
0047c0fc  24 00 80 e2                                      add r0, r0, #0x24
0047c100  01 60 a0 e1                                      mov r6, r1
0047c104  4e a1 02 eb                                      bl #0x524644
0047c108  0c 00 a0 e3                                      mov r0, #0xc
0047c10c  90 06 00 e0                                      mul r0, r0, r6
0047c110  cf 50 fa eb                                      bl #0x310454
0047c114  07 00 56 e1                                      cmp r6, r7
0047c118  07 00 00 0a                                      beq #0x47c13c
0047c11c  00 30 a0 e1                                      mov r3, r0
0047c120  01 70 87 e2                                      add r7, r7, #1
0047c124  06 00 57 e1                                      cmp r7, r6
0047c128  00 50 83 e5                                      str r5, [r3]
0047c12c  04 50 83 e5                                      str r5, [r3, #4]
0047c130  08 50 83 e5                                      str r5, [r3, #8]
0047c134  0c 30 83 e2                                      add r3, r3, #0xc
0047c138  f8 ff ff 1a                                      bne #0x47c120
0047c13c  00 00 84 e5                                      str r0, [r4]
0047c140  06 01 a0 e1                                      lsl r0, r6, #2
0047c144  c2 50 fa eb                                      bl #0x310454
0047c148  04 00 84 e5                                      str r0, [r4, #4]
0047c14c  04 00 a0 e1                                      mov r0, r4
0047c150  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0047c154, declared_size=60, range_size=60, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListC1Ev
; demangled: Vector3DFList::Vector3DFList()
; decoder-mode: arm
0047c154  00 20 a0 e3                                      mov r2, #0
0047c158  00 30 a0 e3                                      mov r3, #0
0047c15c  10 40 2d e9                                      push {r4, lr}
0047c160  00 40 a0 e1                                      mov r4, r0
0047c164  0c 20 80 e5                                      str r2, [r0, #0xc]
0047c168  1c 30 80 e5                                      str r3, [r0, #0x1c]
0047c16c  00 20 80 e5                                      str r2, [r0]
0047c170  04 20 80 e5                                      str r2, [r0, #4]
0047c174  08 20 80 e5                                      str r2, [r0, #8]
0047c178  14 30 80 e5                                      str r3, [r0, #0x14]
0047c17c  18 30 80 e5                                      str r3, [r0, #0x18]
0047c180  24 00 80 e2                                      add r0, r0, #0x24
0047c184  2e a1 02 eb                                      bl #0x524644
0047c188  04 00 a0 e1                                      mov r0, r4
0047c18c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0047c190, declared_size=60, range_size=60, mode=arm
; class-group: Vector3DFList
; alias: _ZN13Vector3DFListC2Ev
; demangled: Vector3DFList::Vector3DFList()
; decoder-mode: arm
0047c190  00 20 a0 e3                                      mov r2, #0
0047c194  00 30 a0 e3                                      mov r3, #0
0047c198  10 40 2d e9                                      push {r4, lr}
0047c19c  00 40 a0 e1                                      mov r4, r0
0047c1a0  0c 20 80 e5                                      str r2, [r0, #0xc]
0047c1a4  1c 30 80 e5                                      str r3, [r0, #0x1c]
0047c1a8  00 20 80 e5                                      str r2, [r0]
0047c1ac  04 20 80 e5                                      str r2, [r0, #4]
0047c1b0  08 20 80 e5                                      str r2, [r0, #8]
0047c1b4  14 30 80 e5                                      str r3, [r0, #0x14]
0047c1b8  18 30 80 e5                                      str r3, [r0, #0x18]
0047c1bc  24 00 80 e2                                      add r0, r0, #0x24
0047c1c0  1f a1 02 eb                                      bl #0x524644
0047c1c4  04 00 a0 e1                                      mov r0, r4
0047c1c8  10 80 bd e8                                      pop {r4, pc}
