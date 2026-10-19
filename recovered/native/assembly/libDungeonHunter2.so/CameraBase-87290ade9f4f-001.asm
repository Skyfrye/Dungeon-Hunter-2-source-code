; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040e718, declared_size=4, range_size=4, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase9ActivatedEv
; demangled: CameraBase::Activated()
; decoder-mode: arm
0040e718  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040e71c, declared_size=4, range_size=4, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase11DeactivatedEv
; demangled: CameraBase::Deactivated()
; decoder-mode: arm
0040e71c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040e720, declared_size=48, range_size=48, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBaseC2Ev
; demangled: CameraBase::CameraBase()
; decoder-mode: arm
0040e720  20 30 9f e5                                      ldr r3, [pc, #0x20]
0040e724  20 10 9f e5                                      ldr r1, [pc, #0x20]
0040e728  00 c0 a0 e3                                      mov ip, #0
0040e72c  03 30 8f e0                                      add r3, pc, r3
0040e730  01 10 93 e7                                      ldr r1, [r3, r1]
0040e734  08 c0 80 e5                                      str ip, [r0, #8]
0040e738  04 c0 80 e5                                      str ip, [r0, #4]
0040e73c  08 10 81 e2                                      add r1, r1, #8
0040e740  00 10 80 e5                                      str r1, [r0]
0040e744  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0040e748  64 63 58 00 ec 21 00 00                          .byte 0x64, 0x63, 0x58, 0x00, 0xec, 0x21, 0x00, 0x00

; FUNCTION 0x0040e750, declared_size=48, range_size=48, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBaseC1Ev
; demangled: CameraBase::CameraBase()
; decoder-mode: arm
0040e750  20 30 9f e5                                      ldr r3, [pc, #0x20]
0040e754  20 10 9f e5                                      ldr r1, [pc, #0x20]
0040e758  00 c0 a0 e3                                      mov ip, #0
0040e75c  03 30 8f e0                                      add r3, pc, r3
0040e760  01 10 93 e7                                      ldr r1, [r3, r1]
0040e764  08 c0 80 e5                                      str ip, [r0, #8]
0040e768  04 c0 80 e5                                      str ip, [r0, #4]
0040e76c  08 10 81 e2                                      add r1, r1, #8
0040e770  00 10 80 e5                                      str r1, [r0]
0040e774  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0040e778  34 63 58 00 ec 21 00 00                          .byte 0x34, 0x63, 0x58, 0x00, 0xec, 0x21, 0x00, 0x00

; FUNCTION 0x0040e780, declared_size=148, range_size=148, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBaseD2Ev
; demangled: CameraBase::~CameraBase()
; decoder-mode: arm
0040e780  80 30 9f e5                                      ldr r3, [pc, #0x80]
0040e784  80 20 9f e5                                      ldr r2, [pc, #0x80]
0040e788  80 10 9f e5                                      ldr r1, [pc, #0x80]
0040e78c  03 30 8f e0                                      add r3, pc, r3
0040e790  10 40 2d e9                                      push {r4, lr}
0040e794  02 20 93 e7                                      ldr r2, [r3, r2]
0040e798  01 10 93 e7                                      ldr r1, [r3, r1]
0040e79c  00 40 a0 e1                                      mov r4, r0
0040e7a0  08 20 82 e2                                      add r2, r2, #8
0040e7a4  00 20 80 e5                                      str r2, [r0]
0040e7a8  00 20 91 e5                                      ldr r2, [r1]
0040e7ac  00 00 52 e1                                      cmp r2, r0
0040e7b0  00 30 a0 03                                      moveq r3, #0
0040e7b4  00 30 81 05                                      streq r3, [r1]
0040e7b8  04 30 90 e5                                      ldr r3, [r0, #4]
0040e7bc  00 00 53 e3                                      cmp r3, #0
0040e7c0  05 00 00 0a                                      beq #0x40e7dc
0040e7c4  00 20 93 e5                                      ldr r2, [r3]
0040e7c8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0040e7cc  00 00 83 e0                                      add r0, r3, r0
0040e7d0  6b 3b fc eb                                      bl #0x31d584
0040e7d4  00 30 a0 e3                                      mov r3, #0
0040e7d8  04 30 84 e5                                      str r3, [r4, #4]
0040e7dc  08 30 94 e5                                      ldr r3, [r4, #8]
0040e7e0  00 00 53 e3                                      cmp r3, #0
0040e7e4  05 00 00 0a                                      beq #0x40e800
0040e7e8  00 20 93 e5                                      ldr r2, [r3]
0040e7ec  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0040e7f0  00 00 83 e0                                      add r0, r3, r0
0040e7f4  62 3b fc eb                                      bl #0x31d584
0040e7f8  00 30 a0 e3                                      mov r3, #0
0040e7fc  08 30 84 e5                                      str r3, [r4, #8]
0040e800  04 00 a0 e1                                      mov r0, r4
0040e804  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040e808  04 63 58 00 ec 21 00 00 b0 42 00 00              .byte 0x04, 0x63, 0x58, 0x00, 0xec, 0x21, 0x00, 0x00, 0xb0, 0x42, 0x00, 0x00

; FUNCTION 0x0040e814, declared_size=148, range_size=148, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBaseD1Ev
; demangled: CameraBase::~CameraBase()
; decoder-mode: arm
0040e814  80 30 9f e5                                      ldr r3, [pc, #0x80]
0040e818  80 20 9f e5                                      ldr r2, [pc, #0x80]
0040e81c  80 10 9f e5                                      ldr r1, [pc, #0x80]
0040e820  03 30 8f e0                                      add r3, pc, r3
0040e824  10 40 2d e9                                      push {r4, lr}
0040e828  02 20 93 e7                                      ldr r2, [r3, r2]
0040e82c  01 10 93 e7                                      ldr r1, [r3, r1]
0040e830  00 40 a0 e1                                      mov r4, r0
0040e834  08 20 82 e2                                      add r2, r2, #8
0040e838  00 20 80 e5                                      str r2, [r0]
0040e83c  00 20 91 e5                                      ldr r2, [r1]
0040e840  00 00 52 e1                                      cmp r2, r0
0040e844  00 30 a0 03                                      moveq r3, #0
0040e848  00 30 81 05                                      streq r3, [r1]
0040e84c  04 30 90 e5                                      ldr r3, [r0, #4]
0040e850  00 00 53 e3                                      cmp r3, #0
0040e854  05 00 00 0a                                      beq #0x40e870
0040e858  00 20 93 e5                                      ldr r2, [r3]
0040e85c  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0040e860  00 00 83 e0                                      add r0, r3, r0
0040e864  46 3b fc eb                                      bl #0x31d584
0040e868  00 30 a0 e3                                      mov r3, #0
0040e86c  04 30 84 e5                                      str r3, [r4, #4]
0040e870  08 30 94 e5                                      ldr r3, [r4, #8]
0040e874  00 00 53 e3                                      cmp r3, #0
0040e878  05 00 00 0a                                      beq #0x40e894
0040e87c  00 20 93 e5                                      ldr r2, [r3]
0040e880  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0040e884  00 00 83 e0                                      add r0, r3, r0
0040e888  3d 3b fc eb                                      bl #0x31d584
0040e88c  00 30 a0 e3                                      mov r3, #0
0040e890  08 30 84 e5                                      str r3, [r4, #8]
0040e894  04 00 a0 e1                                      mov r0, r4
0040e898  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040e89c  70 62 58 00 ec 21 00 00 b0 42 00 00              .byte 0x70, 0x62, 0x58, 0x00, 0xec, 0x21, 0x00, 0x00, 0xb0, 0x42, 0x00, 0x00

; FUNCTION 0x0040e8a8, declared_size=128, range_size=128, mode=arm
; class-group: CameraBase
; alias: _ZNK10CameraBase18GetCameraLookAtVecEv
; demangled: CameraBase::GetCameraLookAtVec() const
; decoder-mode: arm
0040e8a8  10 40 2d e9                                      push {r4, lr}
0040e8ac  08 20 91 e5                                      ldr r2, [r1, #8]
0040e8b0  68 30 9f e5                                      ldr r3, [pc, #0x68]
0040e8b4  00 40 a0 e1                                      mov r4, r0
0040e8b8  00 00 52 e3                                      cmp r2, #0
0040e8bc  03 30 8f e0                                      add r3, pc, r3
0040e8c0  0c 00 00 0a                                      beq #0x40e8f8
0040e8c4  00 30 92 e5                                      ldr r3, [r2]
0040e8c8  02 00 a0 e1                                      mov r0, r2
0040e8cc  0f e0 a0 e1                                      mov lr, pc
0040e8d0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0040e8d4  10 30 80 e2                                      add r3, r0, #0x10
0040e8d8  08 10 93 e5                                      ldr r1, [r3, #8]
0040e8dc  10 20 90 e5                                      ldr r2, [r0, #0x10]
0040e8e0  04 30 93 e5                                      ldr r3, [r3, #4]
0040e8e4  04 00 a0 e1                                      mov r0, r4
0040e8e8  08 10 84 e5                                      str r1, [r4, #8]
0040e8ec  00 20 84 e5                                      str r2, [r4]
0040e8f0  04 30 84 e5                                      str r3, [r4, #4]
0040e8f4  10 80 bd e8                                      pop {r4, pc}
0040e8f8  24 20 9f e5                                      ldr r2, [pc, #0x24]
0040e8fc  02 30 93 e7                                      ldr r3, [r3, r2]
0040e900  00 20 93 e5                                      ldr r2, [r3]
0040e904  00 20 80 e5                                      str r2, [r0]
0040e908  04 20 93 e5                                      ldr r2, [r3, #4]
0040e90c  04 20 80 e5                                      str r2, [r0, #4]
0040e910  08 30 93 e5                                      ldr r3, [r3, #8]
0040e914  08 30 80 e5                                      str r3, [r0, #8]
0040e918  04 00 a0 e1                                      mov r0, r4
0040e91c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040e920  d4 61 58 00 2c 3f 00 00                          .byte 0xd4, 0x61, 0x58, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x0040e928, declared_size=128, range_size=128, mode=arm
; class-group: CameraBase
; alias: _ZNK10CameraBase14GetCameraUpVecEv
; demangled: CameraBase::GetCameraUpVec() const
; decoder-mode: arm
0040e928  10 40 2d e9                                      push {r4, lr}
0040e92c  08 20 91 e5                                      ldr r2, [r1, #8]
0040e930  68 30 9f e5                                      ldr r3, [pc, #0x68]
0040e934  00 40 a0 e1                                      mov r4, r0
0040e938  00 00 52 e3                                      cmp r2, #0
0040e93c  03 30 8f e0                                      add r3, pc, r3
0040e940  0c 00 00 0a                                      beq #0x40e978
0040e944  00 30 92 e5                                      ldr r3, [r2]
0040e948  02 00 a0 e1                                      mov r0, r2
0040e94c  0f e0 a0 e1                                      mov lr, pc
0040e950  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0040e954  20 30 80 e2                                      add r3, r0, #0x20
0040e958  08 10 93 e5                                      ldr r1, [r3, #8]
0040e95c  20 20 90 e5                                      ldr r2, [r0, #0x20]
0040e960  04 30 93 e5                                      ldr r3, [r3, #4]
0040e964  04 00 a0 e1                                      mov r0, r4
0040e968  08 10 84 e5                                      str r1, [r4, #8]
0040e96c  00 20 84 e5                                      str r2, [r4]
0040e970  04 30 84 e5                                      str r3, [r4, #4]
0040e974  10 80 bd e8                                      pop {r4, pc}
0040e978  24 20 9f e5                                      ldr r2, [pc, #0x24]
0040e97c  02 30 93 e7                                      ldr r3, [r3, r2]
0040e980  00 20 93 e5                                      ldr r2, [r3]
0040e984  00 20 80 e5                                      str r2, [r0]
0040e988  04 20 93 e5                                      ldr r2, [r3, #4]
0040e98c  04 20 80 e5                                      str r2, [r0, #4]
0040e990  08 30 93 e5                                      ldr r3, [r3, #8]
0040e994  08 30 80 e5                                      str r3, [r0, #8]
0040e998  04 00 a0 e1                                      mov r0, r4
0040e99c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0040e9a0  54 61 58 00 2c 3f 00 00                          .byte 0x54, 0x61, 0x58, 0x00, 0x2c, 0x3f, 0x00, 0x00

; FUNCTION 0x0040e9a8, declared_size=168, range_size=168, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase7SetDataEffffb
; demangled: CameraBase::SetData(float, float, float, float, bool)
; decoder-mode: arm
0040e9a8  70 40 2d e9                                      push {r4, r5, r6, lr}
0040e9ac  08 c0 90 e5                                      ldr ip, [r0, #8]
0040e9b0  10 d0 4d e2                                      sub sp, sp, #0x10
0040e9b4  00 40 a0 e1                                      mov r4, r0
0040e9b8  00 00 5c e3                                      cmp ip, #0
0040e9bc  02 50 a0 e1                                      mov r5, r2
0040e9c0  03 60 a0 e1                                      mov r6, r3
0040e9c4  1f 00 00 0a                                      beq #0x40ea48
0040e9c8  0c 00 a0 e1                                      mov r0, ip
0040e9cc  00 30 9c e5                                      ldr r3, [ip]
0040e9d0  0f e0 a0 e1                                      mov lr, pc
0040e9d4  3c f1 93 e5                                      ldr pc, [r3, #0x13c]
0040e9d8  08 30 94 e5                                      ldr r3, [r4, #8]
0040e9dc  05 10 a0 e1                                      mov r1, r5
0040e9e0  03 00 a0 e1                                      mov r0, r3
0040e9e4  00 30 93 e5                                      ldr r3, [r3]
0040e9e8  0f e0 a0 e1                                      mov lr, pc
0040e9ec  38 f1 93 e5                                      ldr pc, [r3, #0x138]
0040e9f0  08 30 94 e5                                      ldr r3, [r4, #8]
0040e9f4  06 10 a0 e1                                      mov r1, r6
0040e9f8  03 00 a0 e1                                      mov r0, r3
0040e9fc  00 30 93 e5                                      ldr r3, [r3]
0040ea00  0f e0 a0 e1                                      mov lr, pc
0040ea04  30 f1 93 e5                                      ldr pc, [r3, #0x130]
0040ea08  08 30 94 e5                                      ldr r3, [r4, #8]
0040ea0c  20 10 9d e5                                      ldr r1, [sp, #0x20]
0040ea10  03 00 a0 e1                                      mov r0, r3
0040ea14  00 30 93 e5                                      ldr r3, [r3]
0040ea18  0f e0 a0 e1                                      mov lr, pc
0040ea1c  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0040ea20  08 00 94 e5                                      ldr r0, [r4, #8]
0040ea24  00 20 a0 e3                                      mov r2, #0
0040ea28  fe c5 a0 e3                                      mov ip, #0x3f800000
0040ea2c  00 30 90 e5                                      ldr r3, [r0]
0040ea30  04 10 8d e2                                      add r1, sp, #4
0040ea34  14 31 93 e5                                      ldr r3, [r3, #0x114]
0040ea38  08 20 8d e5                                      str r2, [sp, #8]
0040ea3c  0c c0 8d e5                                      str ip, [sp, #0xc]
0040ea40  04 20 8d e5                                      str r2, [sp, #4]
0040ea44  33 ff 2f e1                                      blx r3
0040ea48  10 d0 8d e2                                      add sp, sp, #0x10
0040ea4c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0040ea50, declared_size=4, range_size=4, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase6UpdateEv
; demangled: CameraBase::Update()
; decoder-mode: arm
0040ea50  1e ff 2f e1                                      bx lr

; FUNCTION 0x0040f2f0, declared_size=164, range_size=164, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase13GetWorldCoordERK7Point2DIiER7Point3DIfEf
; demangled: CameraBase::GetWorldCoord(Point2D<int> const&, Point3D<float>&, float)
; decoder-mode: arm
0040f2f0  94 c0 9f e5                                      ldr ip, [pc, #0x94]
0040f2f4  94 30 9f e5                                      ldr r3, [pc, #0x94]
0040f2f8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040f2fc  0c c0 8f e0                                      add ip, pc, ip
0040f300  03 30 9c e7                                      ldr r3, [ip, r3]
0040f304  01 80 a0 e1                                      mov r8, r1
0040f308  04 e0 90 e5                                      ldr lr, [r0, #4]
0040f30c  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040f310  00 60 90 e5                                      ldr r6, [r0]
0040f314  30 d0 4d e2                                      sub sp, sp, #0x30
0040f318  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
0040f31c  02 50 a0 e1                                      mov r5, r2
0040f320  0d 00 a0 e1                                      mov r0, sp
0040f324  2c 10 91 e5                                      ldr r1, [r1, #0x2c]
0040f328  28 20 8d e2                                      add r2, sp, #0x28
0040f32c  00 30 a0 e3                                      mov r3, #0
0040f330  00 70 91 e5                                      ldr r7, [r1]
0040f334  0d 40 a0 e1                                      mov r4, sp
0040f338  14 c0 97 e5                                      ldr ip, [r7, #0x14]
0040f33c  2c e0 8d e5                                      str lr, [sp, #0x2c]
0040f340  28 60 8d e5                                      str r6, [sp, #0x28]
0040f344  3c ff 2f e1                                      blx ip
0040f348  00 30 a0 e3                                      mov r3, #0
0040f34c  03 10 a0 e1                                      mov r1, r3
0040f350  fe 25 a0 e3                                      mov r2, #0x3f800000
0040f354  05 00 a0 e1                                      mov r0, r5
0040f358  20 20 8d e5                                      str r2, [sp, #0x20]
0040f35c  18 30 8d e5                                      str r3, [sp, #0x18]
0040f360  1c 30 8d e5                                      str r3, [sp, #0x1c]
0040f364  0e fe fb eb                                      bl #0x30eba4
0040f368  0d 10 a0 e1                                      mov r1, sp
0040f36c  02 c1 80 e2                                      add ip, r0, #0x80000000
0040f370  08 30 a0 e1                                      mov r3, r8
0040f374  18 00 8d e2                                      add r0, sp, #0x18
0040f378  0c 20 8d e2                                      add r2, sp, #0xc
0040f37c  24 c0 8d e5                                      str ip, [sp, #0x24]
0040f380  4b ff ff eb                                      bl #0x40f0b4
0040f384  30 d0 8d e2                                      add sp, sp, #0x30
0040f388  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0040f38c  94 57 58 00 f4 37 00 00                          .byte 0x94, 0x57, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0040f394, declared_size=200, range_size=200, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase13GetWorldCoordERK7Point2DIfER7Point3DIfEf
; demangled: CameraBase::GetWorldCoord(Point2D<float> const&, Point3D<float>&, float)
; decoder-mode: arm
0040f394  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
0040f398  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0040f39c  00 40 a0 e1                                      mov r4, r0
0040f3a0  b0 00 9f e5                                      ldr r0, [pc, #0xb0]
0040f3a4  03 30 8f e0                                      add r3, pc, r3
0040f3a8  08 d0 4d e2                                      sub sp, sp, #8
0040f3ac  00 00 93 e7                                      ldr r0, [r3, r0]
0040f3b0  00 c0 a0 e3                                      mov ip, #0
0040f3b4  01 50 a0 e1                                      mov r5, r1
0040f3b8  10 e0 90 e5                                      ldr lr, [r0, #0x10]
0040f3bc  fe 15 a0 e3                                      mov r1, #0x3f800000
0040f3c0  00 00 94 e5                                      ldr r0, [r4]
0040f3c4  10 e0 9e e5                                      ldr lr, [lr, #0x10]
0040f3c8  02 70 a0 e1                                      mov r7, r2
0040f3cc  cc 30 9e e5                                      ldr r3, [lr, #0xcc]
0040f3d0  04 60 13 e5                                      ldr r6, [r3, #-4]
0040f3d4  04 c0 8d e5                                      str ip, [sp, #4]
0040f3d8  00 c0 8d e5                                      str ip, [sp]
0040f3dc  f0 fd fb eb                                      bl #0x30eba4
0040f3e0  3f 14 a0 e3                                      mov r1, #0x3f000000
0040f3e4  60 fe fb eb                                      bl #0x30ed6c
0040f3e8  00 80 a0 e1                                      mov r8, r0
0040f3ec  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0040f3f0  5b fd fb eb                                      bl #0x30e964
0040f3f4  00 10 a0 e1                                      mov r1, r0
0040f3f8  08 00 a0 e1                                      mov r0, r8
0040f3fc  5a fe fb eb                                      bl #0x30ed6c
0040f400  31 fc fb eb                                      bl #0x30e4cc
0040f404  00 00 8d e5                                      str r0, [sp]
0040f408  04 00 94 e5                                      ldr r0, [r4, #4]
0040f40c  fe 15 a0 e3                                      mov r1, #0x3f800000
0040f410  e3 fd fb eb                                      bl #0x30eba4
0040f414  3f 14 a0 e3                                      mov r1, #0x3f000000
0040f418  53 fe fb eb                                      bl #0x30ed6c
0040f41c  00 40 a0 e1                                      mov r4, r0
0040f420  10 00 96 e5                                      ldr r0, [r6, #0x10]
0040f424  4e fd fb eb                                      bl #0x30e964
0040f428  00 10 a0 e1                                      mov r1, r0
0040f42c  04 00 a0 e1                                      mov r0, r4
0040f430  4d fe fb eb                                      bl #0x30ed6c
0040f434  24 fc fb eb                                      bl #0x30e4cc
0040f438  05 10 a0 e1                                      mov r1, r5
0040f43c  04 00 8d e5                                      str r0, [sp, #4]
0040f440  07 20 a0 e1                                      mov r2, r7
0040f444  0d 00 a0 e1                                      mov r0, sp
0040f448  a8 ff ff eb                                      bl #0x40f2f0
0040f44c  08 d0 8d e2                                      add sp, sp, #8
0040f450  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0040f454  ec 56 58 00 f4 37 00 00                          .byte 0xec, 0x56, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0040f45c, declared_size=128, range_size=128, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase9SetActiveEv
; demangled: CameraBase::SetActive()
; decoder-mode: arm
0040f45c  70 40 2d e9                                      push {r4, r5, r6, lr}
0040f460  68 50 9f e5                                      ldr r5, [pc, #0x68]
0040f464  68 40 9f e5                                      ldr r4, [pc, #0x68]
0040f468  00 60 a0 e1                                      mov r6, r0
0040f46c  05 50 8f e0                                      add r5, pc, r5
0040f470  04 30 95 e7                                      ldr r3, [r5, r4]
0040f474  00 30 93 e5                                      ldr r3, [r3]
0040f478  00 00 53 e1                                      cmp r3, r0
0040f47c  12 00 00 0a                                      beq #0x40f4cc
0040f480  00 00 53 e3                                      cmp r3, #0
0040f484  03 00 00 0a                                      beq #0x40f498
0040f488  03 00 a0 e1                                      mov r0, r3
0040f48c  00 30 93 e5                                      ldr r3, [r3]
0040f490  0f e0 a0 e1                                      mov lr, pc
0040f494  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0040f498  38 30 9f e5                                      ldr r3, [pc, #0x38]
0040f49c  04 40 95 e7                                      ldr r4, [r5, r4]
0040f4a0  03 30 95 e7                                      ldr r3, [r5, r3]
0040f4a4  00 60 84 e5                                      str r6, [r4]
0040f4a8  08 10 96 e5                                      ldr r1, [r6, #8]
0040f4ac  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040f4b0  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0040f4b4  01 e7 05 eb                                      bl #0x5890c0
0040f4b8  00 30 94 e5                                      ldr r3, [r4]
0040f4bc  03 00 a0 e1                                      mov r0, r3
0040f4c0  00 30 93 e5                                      ldr r3, [r3]
0040f4c4  0f e0 a0 e1                                      mov lr, pc
0040f4c8  08 f0 93 e5                                      ldr pc, [r3, #8]
0040f4cc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0040f4d0  24 56 58 00 b0 42 00 00 f4 37 00 00              .byte 0x24, 0x56, 0x58, 0x00, 0xb0, 0x42, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0040f4dc, declared_size=540, range_size=540, mode=arm
; class-group: CameraBase
; alias: _ZNK10CameraBase15GetCenterOffsetER7Point3DIfEf
; demangled: CameraBase::GetCenterOffset(Point3D<float>&, float) const
; decoder-mode: arm
0040f4dc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0040f4e0  08 30 90 e5                                      ldr r3, [r0, #8]
0040f4e4  04 42 9f e5                                      ldr r4, [pc, #0x204]
0040f4e8  00 60 a0 e1                                      mov r6, r0
0040f4ec  00 00 53 e3                                      cmp r3, #0
0040f4f0  04 40 8f e0                                      add r4, pc, r4
0040f4f4  34 d0 4d e2                                      sub sp, sp, #0x34
0040f4f8  01 50 a0 e1                                      mov r5, r1
0040f4fc  02 b0 a0 e1                                      mov fp, r2
0040f500  03 00 a0 01                                      moveq r0, r3
0040f504  1f 00 00 0a                                      beq #0x40f588
0040f508  03 00 a0 e1                                      mov r0, r3
0040f50c  00 30 93 e5                                      ldr r3, [r3]
0040f510  0f e0 a0 e1                                      mov lr, pc
0040f514  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0040f518  10 30 80 e2                                      add r3, r0, #0x10
0040f51c  04 70 93 e5                                      ldr r7, [r3, #4]
0040f520  10 80 90 e5                                      ldr r8, [r0, #0x10]
0040f524  08 30 93 e5                                      ldr r3, [r3, #8]
0040f528  00 a0 a0 e3                                      mov sl, #0
0040f52c  08 10 a0 e1                                      mov r1, r8
0040f530  04 30 8d e5                                      str r3, [sp, #4]
0040f534  08 00 a0 e1                                      mov r0, r8
0040f538  00 80 85 e5                                      str r8, [r5]
0040f53c  04 70 85 e5                                      str r7, [r5, #4]
0040f540  08 a0 85 e5                                      str sl, [r5, #8]
0040f544  08 fe fb eb                                      bl #0x30ed6c
0040f548  07 10 a0 e1                                      mov r1, r7
0040f54c  00 90 a0 e1                                      mov sb, r0
0040f550  07 00 a0 e1                                      mov r0, r7
0040f554  04 fe fb eb                                      bl #0x30ed6c
0040f558  00 10 a0 e1                                      mov r1, r0
0040f55c  09 00 a0 e1                                      mov r0, sb
0040f560  8f fd fb eb                                      bl #0x30eba4
0040f564  0a 10 a0 e1                                      mov r1, sl
0040f568  8d fd fb eb                                      bl #0x30eba4
0040f56c  17 17 0b e3                                      movw r1, #0xb717
0040f570  02 01 c0 e3                                      bic r0, r0, #0x80000000
0040f574  d1 18 43 e3                                      movt r1, #0x38d1
0040f578  63 fc fb eb                                      bl #0x30e70c
0040f57c  00 00 50 e3                                      cmp r0, #0
0040f580  02 00 00 0a                                      beq #0x40f590
0040f584  01 00 a0 e3                                      mov r0, #1
0040f588  34 d0 8d e2                                      add sp, sp, #0x34
0040f58c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0040f590  08 10 96 e5                                      ldr r1, [r6, #8]
0040f594  24 00 8d e2                                      add r0, sp, #0x24
0040f598  f8 1e 06 eb                                      bl #0x597180
0040f59c  0b 10 a0 e1                                      mov r1, fp
0040f5a0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0040f5a4  80 fb fb eb                                      bl #0x30e3ac
0040f5a8  44 31 9f e5                                      ldr r3, [pc, #0x144]
0040f5ac  04 e0 9d e5                                      ldr lr, [sp, #4]
0040f5b0  18 10 8d e2                                      add r1, sp, #0x18
0040f5b4  03 30 94 e7                                      ldr r3, [r4, r3]
0040f5b8  00 a0 a0 e1                                      mov sl, r0
0040f5bc  0c 00 8d e2                                      add r0, sp, #0xc
0040f5c0  00 c0 93 e5                                      ldr ip, [r3]
0040f5c4  0c 00 93 e9                                      ldmib r3, {r2, r3}
0040f5c8  02 c1 8c e2                                      add ip, ip, #0x80000000
0040f5cc  02 21 82 e2                                      add r2, r2, #0x80000000
0040f5d0  02 31 83 e2                                      add r3, r3, #0x80000000
0040f5d4  14 e0 8d e5                                      str lr, [sp, #0x14]
0040f5d8  18 c0 8d e5                                      str ip, [sp, #0x18]
0040f5dc  1c 20 8d e5                                      str r2, [sp, #0x1c]
0040f5e0  0c 80 8d e5                                      str r8, [sp, #0xc]
0040f5e4  10 70 8d e5                                      str r7, [sp, #0x10]
0040f5e8  20 30 8d e5                                      str r3, [sp, #0x20]
0040f5ec  99 0e fc eb                                      bl #0x313058
0040f5f0  08 30 96 e5                                      ldr r3, [r6, #8]
0040f5f4  02 41 c0 e3                                      bic r4, r0, #0x80000000
0040f5f8  03 00 a0 e1                                      mov r0, r3
0040f5fc  00 30 93 e5                                      ldr r3, [r3]
0040f600  0f e0 a0 e1                                      mov lr, pc
0040f604  28 f1 93 e5                                      ldr pc, [r3, #0x128]
0040f608  08 30 96 e5                                      ldr r3, [r6, #8]
0040f60c  00 80 a0 e1                                      mov r8, r0
0040f610  03 00 a0 e1                                      mov r0, r3
0040f614  00 30 93 e5                                      ldr r3, [r3]
0040f618  0f e0 a0 e1                                      mov lr, pc
0040f61c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
0040f620  00 60 a0 e1                                      mov r6, r0
0040f624  04 00 a0 e1                                      mov r0, r4
0040f628  3f fa fb eb                                      bl #0x30df2c
0040f62c  3f 14 a0 e3                                      mov r1, #0x3f000000
0040f630  00 70 a0 e1                                      mov r7, r0
0040f634  08 00 a0 e1                                      mov r0, r8
0040f638  cb fd fb eb                                      bl #0x30ed6c
0040f63c  04 10 a0 e1                                      mov r1, r4
0040f640  57 fd fb eb                                      bl #0x30eba4
0040f644  38 fa fb eb                                      bl #0x30df2c
0040f648  bf 14 a0 e3                                      mov r1, #0xbf000000
0040f64c  00 80 a0 e1                                      mov r8, r0
0040f650  06 00 a0 e1                                      mov r0, r6
0040f654  c4 fd fb eb                                      bl #0x30ed6c
0040f658  04 10 a0 e1                                      mov r1, r4
0040f65c  50 fd fb eb                                      bl #0x30eba4
0040f660  31 fa fb eb                                      bl #0x30df2c
0040f664  00 10 a0 e1                                      mov r1, r0
0040f668  07 00 a0 e1                                      mov r0, r7
0040f66c  4e fb fb eb                                      bl #0x30e3ac
0040f670  0a 10 a0 e1                                      mov r1, sl
0040f674  bc fd fb eb                                      bl #0x30ed6c
0040f678  00 60 a0 e1                                      mov r6, r0
0040f67c  05 00 a0 e1                                      mov r0, r5
0040f680  8a f6 fc eb                                      bl #0x34d0b0
0040f684  07 10 a0 e1                                      mov r1, r7
0040f688  00 40 a0 e1                                      mov r4, r0
0040f68c  08 00 a0 e1                                      mov r0, r8
0040f690  45 fb fb eb                                      bl #0x30e3ac
0040f694  0a 10 a0 e1                                      mov r1, sl
0040f698  b3 fd fb eb                                      bl #0x30ed6c
0040f69c  00 10 a0 e1                                      mov r1, r0
0040f6a0  06 00 a0 e1                                      mov r0, r6
0040f6a4  3e fd fb eb                                      bl #0x30eba4
0040f6a8  3f 14 a0 e3                                      mov r1, #0x3f000000
0040f6ac  ae fd fb eb                                      bl #0x30ed6c
0040f6b0  06 10 a0 e1                                      mov r1, r6
0040f6b4  3c fb fb eb                                      bl #0x30e3ac
0040f6b8  00 50 a0 e1                                      mov r5, r0
0040f6bc  00 10 a0 e1                                      mov r1, r0
0040f6c0  00 00 94 e5                                      ldr r0, [r4]
0040f6c4  a8 fd fb eb                                      bl #0x30ed6c
0040f6c8  05 10 a0 e1                                      mov r1, r5
0040f6cc  00 00 84 e5                                      str r0, [r4]
0040f6d0  04 00 94 e5                                      ldr r0, [r4, #4]
0040f6d4  a4 fd fb eb                                      bl #0x30ed6c
0040f6d8  05 10 a0 e1                                      mov r1, r5
0040f6dc  04 00 84 e5                                      str r0, [r4, #4]
0040f6e0  08 00 94 e5                                      ldr r0, [r4, #8]
0040f6e4  a0 fd fb eb                                      bl #0x30ed6c
0040f6e8  08 00 84 e5                                      str r0, [r4, #8]
0040f6ec  a4 ff ff ea                                      b #0x40f584
; mapping-symbol data/literal pool
0040f6f0  a0 55 58 00 40 43 00 00                          .byte 0xa0, 0x55, 0x58, 0x00, 0x40, 0x43, 0x00, 0x00

; FUNCTION 0x0040f6f8, declared_size=28, range_size=28, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBaseD0Ev
; demangled: CameraBase::~CameraBase()
; decoder-mode: arm
0040f6f8  10 40 2d e9                                      push {r4, lr}
0040f6fc  00 40 a0 e1                                      mov r4, r0
0040f700  43 fc ff eb                                      bl #0x40e814
0040f704  04 00 a0 e1                                      mov r0, r4
0040f708  4c 03 fc eb                                      bl #0x310440
0040f70c  04 00 a0 e1                                      mov r0, r4
0040f710  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0040f714, declared_size=264, range_size=264, mode=arm
; class-group: CameraBase
; alias: _ZN10CameraBase14GetScreenCoordERK7Point3DIfER7Point2DIfE
; demangled: CameraBase::GetScreenCoord(Point3D<float> const&, Point2D<float>&)
; decoder-mode: arm
0040f714  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0040f718  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
0040f71c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0040f720  03 30 8f e0                                      add r3, pc, r3
0040f724  02 80 93 e7                                      ldr r8, [r3, r2]
0040f728  5c d0 4d e2                                      sub sp, sp, #0x5c
0040f72c  00 60 a0 e1                                      mov r6, r0
0040f730  10 20 98 e5                                      ldr r2, [r8, #0x10]
0040f734  01 70 a0 e1                                      mov r7, r1
0040f738  00 10 a0 e3                                      mov r1, #0
0040f73c  10 30 92 e5                                      ldr r3, [r2, #0x10]
0040f740  04 50 8d e2                                      add r5, sp, #4
0040f744  fe 45 a0 e3                                      mov r4, #0x3f800000
0040f748  03 00 a0 e1                                      mov r0, r3
0040f74c  00 30 93 e5                                      ldr r3, [r3]
0040f750  0f e0 a0 e1                                      mov lr, pc
0040f754  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0040f758  10 30 98 e5                                      ldr r3, [r8, #0x10]
0040f75c  00 a0 a0 e1                                      mov sl, r0
0040f760  02 10 a0 e3                                      mov r1, #2
0040f764  10 30 93 e5                                      ldr r3, [r3, #0x10]
0040f768  03 00 a0 e1                                      mov r0, r3
0040f76c  00 30 93 e5                                      ldr r3, [r3]
0040f770  0f e0 a0 e1                                      mov lr, pc
0040f774  70 f0 93 e5                                      ldr pc, [r3, #0x70]
0040f778  00 10 a0 e3                                      mov r1, #0
0040f77c  00 80 a0 e1                                      mov r8, r0
0040f780  40 20 a0 e3                                      mov r2, #0x40
0040f784  05 00 a0 e1                                      mov r0, r5
0040f788  34 fb fb eb                                      bl #0x30e460
0040f78c  00 c0 96 e5                                      ldr ip, [r6]
0040f790  04 30 96 e5                                      ldr r3, [r6, #4]
0040f794  08 e0 96 e5                                      ldr lr, [r6, #8]
0040f798  0a 20 a0 e1                                      mov r2, sl
0040f79c  08 10 a0 e1                                      mov r1, r8
0040f7a0  05 00 a0 e1                                      mov r0, r5
0040f7a4  01 60 a0 e3                                      mov r6, #1
0040f7a8  48 c0 8d e5                                      str ip, [sp, #0x48]
0040f7ac  4c 30 8d e5                                      str r3, [sp, #0x4c]
0040f7b0  50 e0 8d e5                                      str lr, [sp, #0x50]
0040f7b4  04 40 8d e5                                      str r4, [sp, #4]
0040f7b8  18 40 8d e5                                      str r4, [sp, #0x18]
0040f7bc  2c 40 8d e5                                      str r4, [sp, #0x2c]
0040f7c0  40 40 8d e5                                      str r4, [sp, #0x40]
0040f7c4  54 40 8d e5                                      str r4, [sp, #0x54]
0040f7c8  44 60 cd e5                                      strb r6, [sp, #0x44]
0040f7cc  a0 fc ff eb                                      bl #0x40ea54
0040f7d0  05 00 a0 e1                                      mov r0, r5
0040f7d4  48 10 8d e2                                      add r1, sp, #0x48
0040f7d8  06 0d fc eb                                      bl #0x312bf8
0040f7dc  54 10 9d e5                                      ldr r1, [sp, #0x54]
0040f7e0  04 00 a0 e1                                      mov r0, r4
0040f7e4  2a fd fb eb                                      bl #0x30ec94
0040f7e8  48 10 9d e5                                      ldr r1, [sp, #0x48]
0040f7ec  00 50 a0 e1                                      mov r5, r0
0040f7f0  5d fd fb eb                                      bl #0x30ed6c
0040f7f4  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
0040f7f8  00 40 a0 e1                                      mov r4, r0
0040f7fc  05 00 a0 e1                                      mov r0, r5
0040f800  59 fd fb eb                                      bl #0x30ed6c
0040f804  00 40 87 e5                                      str r4, [r7]
0040f808  04 00 87 e5                                      str r0, [r7, #4]
0040f80c  5c d0 8d e2                                      add sp, sp, #0x5c
0040f810  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
0040f814  70 53 58 00 f4 37 00 00                          .byte 0x70, 0x53, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00
