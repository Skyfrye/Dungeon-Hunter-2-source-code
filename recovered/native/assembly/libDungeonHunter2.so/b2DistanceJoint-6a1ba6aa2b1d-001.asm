; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007f9bc8, declared_size=844, range_size=844, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJoint24SolveVelocityConstraintsERK10b2TimeStep
; demangled: b2DistanceJoint::SolveVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007f9bc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007f9bcc  30 50 90 e5                                      ldr r5, [r0, #0x30]
007f9bd0  14 d0 4d e2                                      sub sp, sp, #0x14
007f9bd4  00 60 a0 e1                                      mov r6, r0
007f9bd8  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007f9bdc  44 00 90 e5                                      ldr r0, [r0, #0x44]
007f9be0  f1 51 ec eb                                      bl #0x30e3ac
007f9be4  20 10 95 e5                                      ldr r1, [r5, #0x20]
007f9be8  00 80 a0 e1                                      mov r8, r0
007f9bec  48 00 96 e5                                      ldr r0, [r6, #0x48]
007f9bf0  ed 51 ec eb                                      bl #0x30e3ac
007f9bf4  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007f9bf8  00 70 a0 e1                                      mov r7, r0
007f9bfc  08 00 a0 e1                                      mov r0, r8
007f9c00  59 54 ec eb                                      bl #0x30ed6c
007f9c04  14 10 95 e5                                      ldr r1, [r5, #0x14]
007f9c08  00 a0 a0 e1                                      mov sl, r0
007f9c0c  07 00 a0 e1                                      mov r0, r7
007f9c10  55 54 ec eb                                      bl #0x30ed6c
007f9c14  00 10 a0 e1                                      mov r1, r0
007f9c18  0a 00 a0 e1                                      mov r0, sl
007f9c1c  e0 53 ec eb                                      bl #0x30eba4
007f9c20  10 10 95 e5                                      ldr r1, [r5, #0x10]
007f9c24  00 a0 a0 e1                                      mov sl, r0
007f9c28  08 00 a0 e1                                      mov r0, r8
007f9c2c  4e 54 ec eb                                      bl #0x30ed6c
007f9c30  18 10 95 e5                                      ldr r1, [r5, #0x18]
007f9c34  00 80 a0 e1                                      mov r8, r0
007f9c38  07 00 a0 e1                                      mov r0, r7
007f9c3c  4a 54 ec eb                                      bl #0x30ed6c
007f9c40  00 10 a0 e1                                      mov r1, r0
007f9c44  08 00 a0 e1                                      mov r0, r8
007f9c48  d5 53 ec eb                                      bl #0x30eba4
007f9c4c  34 40 96 e5                                      ldr r4, [r6, #0x34]
007f9c50  00 80 a0 e1                                      mov r8, r0
007f9c54  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007f9c58  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007f9c5c  d2 51 ec eb                                      bl #0x30e3ac
007f9c60  20 10 94 e5                                      ldr r1, [r4, #0x20]
007f9c64  00 b0 a0 e1                                      mov fp, r0
007f9c68  50 00 96 e5                                      ldr r0, [r6, #0x50]
007f9c6c  ce 51 ec eb                                      bl #0x30e3ac
007f9c70  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f9c74  00 90 a0 e1                                      mov sb, r0
007f9c78  0b 00 a0 e1                                      mov r0, fp
007f9c7c  3a 54 ec eb                                      bl #0x30ed6c
007f9c80  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f9c84  00 70 a0 e1                                      mov r7, r0
007f9c88  09 00 a0 e1                                      mov r0, sb
007f9c8c  36 54 ec eb                                      bl #0x30ed6c
007f9c90  00 10 a0 e1                                      mov r1, r0
007f9c94  07 00 a0 e1                                      mov r0, r7
007f9c98  c1 53 ec eb                                      bl #0x30eba4
007f9c9c  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f9ca0  00 70 a0 e1                                      mov r7, r0
007f9ca4  0b 00 a0 e1                                      mov r0, fp
007f9ca8  2f 54 ec eb                                      bl #0x30ed6c
007f9cac  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f9cb0  00 b0 a0 e1                                      mov fp, r0
007f9cb4  09 00 a0 e1                                      mov r0, sb
007f9cb8  2b 54 ec eb                                      bl #0x30ed6c
007f9cbc  00 10 a0 e1                                      mov r1, r0
007f9cc0  0b 00 a0 e1                                      mov r0, fp
007f9cc4  b6 53 ec eb                                      bl #0x30eba4
007f9cc8  0c 00 8d e5                                      str r0, [sp, #0xc]
007f9ccc  48 90 95 e5                                      ldr sb, [r5, #0x48]
007f9cd0  08 00 a0 e1                                      mov r0, r8
007f9cd4  02 11 89 e2                                      add r1, sb, #0x80000000
007f9cd8  23 54 ec eb                                      bl #0x30ed6c
007f9cdc  0a 10 a0 e1                                      mov r1, sl
007f9ce0  00 b0 a0 e1                                      mov fp, r0
007f9ce4  09 00 a0 e1                                      mov r0, sb
007f9ce8  1f 54 ec eb                                      bl #0x30ed6c
007f9cec  40 10 95 e5                                      ldr r1, [r5, #0x40]
007f9cf0  00 90 a0 e1                                      mov sb, r0
007f9cf4  0b 00 a0 e1                                      mov r0, fp
007f9cf8  a9 53 ec eb                                      bl #0x30eba4
007f9cfc  44 10 95 e5                                      ldr r1, [r5, #0x44]
007f9d00  00 20 a0 e1                                      mov r2, r0
007f9d04  09 00 a0 e1                                      mov r0, sb
007f9d08  08 20 8d e5                                      str r2, [sp, #8]
007f9d0c  a4 53 ec eb                                      bl #0x30eba4
007f9d10  48 b0 94 e5                                      ldr fp, [r4, #0x48]
007f9d14  00 c0 a0 e1                                      mov ip, r0
007f9d18  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f9d1c  02 11 8b e2                                      add r1, fp, #0x80000000
007f9d20  04 c0 8d e5                                      str ip, [sp, #4]
007f9d24  10 54 ec eb                                      bl #0x30ed6c
007f9d28  07 10 a0 e1                                      mov r1, r7
007f9d2c  00 90 a0 e1                                      mov sb, r0
007f9d30  0b 00 a0 e1                                      mov r0, fp
007f9d34  0c 54 ec eb                                      bl #0x30ed6c
007f9d38  40 10 94 e5                                      ldr r1, [r4, #0x40]
007f9d3c  00 b0 a0 e1                                      mov fp, r0
007f9d40  09 00 a0 e1                                      mov r0, sb
007f9d44  96 53 ec eb                                      bl #0x30eba4
007f9d48  44 10 94 e5                                      ldr r1, [r4, #0x44]
007f9d4c  00 90 a0 e1                                      mov sb, r0
007f9d50  0b 00 a0 e1                                      mov r0, fp
007f9d54  92 53 ec eb                                      bl #0x30eba4
007f9d58  08 20 9d e5                                      ldr r2, [sp, #8]
007f9d5c  70 30 96 e5                                      ldr r3, [r6, #0x70]
007f9d60  00 b0 a0 e1                                      mov fp, r0
007f9d64  02 10 a0 e1                                      mov r1, r2
007f9d68  02 31 83 e2                                      add r3, r3, #0x80000000
007f9d6c  09 00 a0 e1                                      mov r0, sb
007f9d70  08 30 8d e5                                      str r3, [sp, #8]
007f9d74  8c 51 ec eb                                      bl #0x30e3ac
007f9d78  54 10 96 e5                                      ldr r1, [r6, #0x54]
007f9d7c  fa 53 ec eb                                      bl #0x30ed6c
007f9d80  04 c0 9d e5                                      ldr ip, [sp, #4]
007f9d84  00 90 a0 e1                                      mov sb, r0
007f9d88  0b 00 a0 e1                                      mov r0, fp
007f9d8c  0c 10 a0 e1                                      mov r1, ip
007f9d90  85 51 ec eb                                      bl #0x30e3ac
007f9d94  58 10 96 e5                                      ldr r1, [r6, #0x58]
007f9d98  f3 53 ec eb                                      bl #0x30ed6c
007f9d9c  00 10 a0 e1                                      mov r1, r0
007f9da0  09 00 a0 e1                                      mov r0, sb
007f9da4  7e 53 ec eb                                      bl #0x30eba4
007f9da8  68 10 96 e5                                      ldr r1, [r6, #0x68]
007f9dac  7c 53 ec eb                                      bl #0x30eba4
007f9db0  6c 90 96 e5                                      ldr sb, [r6, #0x6c]
007f9db4  64 10 96 e5                                      ldr r1, [r6, #0x64]
007f9db8  00 b0 a0 e1                                      mov fp, r0
007f9dbc  09 00 a0 e1                                      mov r0, sb
007f9dc0  e9 53 ec eb                                      bl #0x30ed6c
007f9dc4  00 10 a0 e1                                      mov r1, r0
007f9dc8  0b 00 a0 e1                                      mov r0, fp
007f9dcc  74 53 ec eb                                      bl #0x30eba4
007f9dd0  08 30 9d e5                                      ldr r3, [sp, #8]
007f9dd4  00 10 a0 e1                                      mov r1, r0
007f9dd8  03 00 a0 e1                                      mov r0, r3
007f9ddc  e2 53 ec eb                                      bl #0x30ed6c
007f9de0  00 b0 a0 e1                                      mov fp, r0
007f9de4  0b 10 a0 e1                                      mov r1, fp
007f9de8  09 00 a0 e1                                      mov r0, sb
007f9dec  6c 53 ec eb                                      bl #0x30eba4
007f9df0  6c 00 86 e5                                      str r0, [r6, #0x6c]
007f9df4  54 10 96 e5                                      ldr r1, [r6, #0x54]
007f9df8  0b 00 a0 e1                                      mov r0, fp
007f9dfc  da 53 ec eb                                      bl #0x30ed6c
007f9e00  58 10 96 e5                                      ldr r1, [r6, #0x58]
007f9e04  00 90 a0 e1                                      mov sb, r0
007f9e08  0b 00 a0 e1                                      mov r0, fp
007f9e0c  d6 53 ec eb                                      bl #0x30ed6c
007f9e10  78 b0 95 e5                                      ldr fp, [r5, #0x78]
007f9e14  00 60 a0 e1                                      mov r6, r0
007f9e18  09 10 a0 e1                                      mov r1, sb
007f9e1c  0b 00 a0 e1                                      mov r0, fp
007f9e20  d1 53 ec eb                                      bl #0x30ed6c
007f9e24  00 10 a0 e1                                      mov r1, r0
007f9e28  40 00 95 e5                                      ldr r0, [r5, #0x40]
007f9e2c  5e 51 ec eb                                      bl #0x30e3ac
007f9e30  06 10 a0 e1                                      mov r1, r6
007f9e34  40 00 85 e5                                      str r0, [r5, #0x40]
007f9e38  0b 00 a0 e1                                      mov r0, fp
007f9e3c  ca 53 ec eb                                      bl #0x30ed6c
007f9e40  00 10 a0 e1                                      mov r1, r0
007f9e44  44 00 95 e5                                      ldr r0, [r5, #0x44]
007f9e48  57 51 ec eb                                      bl #0x30e3ac
007f9e4c  06 10 a0 e1                                      mov r1, r6
007f9e50  44 00 85 e5                                      str r0, [r5, #0x44]
007f9e54  0a 00 a0 e1                                      mov r0, sl
007f9e58  c3 53 ec eb                                      bl #0x30ed6c
007f9e5c  09 10 a0 e1                                      mov r1, sb
007f9e60  00 a0 a0 e1                                      mov sl, r0
007f9e64  08 00 a0 e1                                      mov r0, r8
007f9e68  bf 53 ec eb                                      bl #0x30ed6c
007f9e6c  00 10 a0 e1                                      mov r1, r0
007f9e70  0a 00 a0 e1                                      mov r0, sl
007f9e74  4c 51 ec eb                                      bl #0x30e3ac
007f9e78  80 10 95 e5                                      ldr r1, [r5, #0x80]
007f9e7c  ba 53 ec eb                                      bl #0x30ed6c
007f9e80  00 10 a0 e1                                      mov r1, r0
007f9e84  48 00 95 e5                                      ldr r0, [r5, #0x48]
007f9e88  47 51 ec eb                                      bl #0x30e3ac
007f9e8c  48 00 85 e5                                      str r0, [r5, #0x48]
007f9e90  78 50 94 e5                                      ldr r5, [r4, #0x78]
007f9e94  09 10 a0 e1                                      mov r1, sb
007f9e98  05 00 a0 e1                                      mov r0, r5
007f9e9c  b2 53 ec eb                                      bl #0x30ed6c
007f9ea0  00 10 a0 e1                                      mov r1, r0
007f9ea4  40 00 94 e5                                      ldr r0, [r4, #0x40]
007f9ea8  3d 53 ec eb                                      bl #0x30eba4
007f9eac  06 10 a0 e1                                      mov r1, r6
007f9eb0  40 00 84 e5                                      str r0, [r4, #0x40]
007f9eb4  05 00 a0 e1                                      mov r0, r5
007f9eb8  ab 53 ec eb                                      bl #0x30ed6c
007f9ebc  00 10 a0 e1                                      mov r1, r0
007f9ec0  44 00 94 e5                                      ldr r0, [r4, #0x44]
007f9ec4  36 53 ec eb                                      bl #0x30eba4
007f9ec8  06 10 a0 e1                                      mov r1, r6
007f9ecc  44 00 84 e5                                      str r0, [r4, #0x44]
007f9ed0  07 00 a0 e1                                      mov r0, r7
007f9ed4  a4 53 ec eb                                      bl #0x30ed6c
007f9ed8  09 10 a0 e1                                      mov r1, sb
007f9edc  00 50 a0 e1                                      mov r5, r0
007f9ee0  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007f9ee4  a0 53 ec eb                                      bl #0x30ed6c
007f9ee8  00 10 a0 e1                                      mov r1, r0
007f9eec  05 00 a0 e1                                      mov r0, r5
007f9ef0  2d 51 ec eb                                      bl #0x30e3ac
007f9ef4  80 10 94 e5                                      ldr r1, [r4, #0x80]
007f9ef8  9b 53 ec eb                                      bl #0x30ed6c
007f9efc  00 10 a0 e1                                      mov r1, r0
007f9f00  48 00 94 e5                                      ldr r0, [r4, #0x48]
007f9f04  26 53 ec eb                                      bl #0x30eba4
007f9f08  48 00 84 e5                                      str r0, [r4, #0x48]
007f9f0c  14 d0 8d e2                                      add sp, sp, #0x14
007f9f10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x007f9f14, declared_size=144, range_size=144, mode=arm
; class-group: b2DistanceJoint
; alias: _ZNK15b2DistanceJoint10GetAnchor1Ev
; demangled: b2DistanceJoint::GetAnchor1() const
; decoder-mode: arm
007f9f14  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f9f18  30 40 91 e5                                      ldr r4, [r1, #0x30]
007f9f1c  44 70 91 e5                                      ldr r7, [r1, #0x44]
007f9f20  48 60 91 e5                                      ldr r6, [r1, #0x48]
007f9f24  00 50 a0 e1                                      mov r5, r0
007f9f28  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f9f2c  07 00 a0 e1                                      mov r0, r7
007f9f30  8d 53 ec eb                                      bl #0x30ed6c
007f9f34  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f9f38  00 80 a0 e1                                      mov r8, r0
007f9f3c  06 00 a0 e1                                      mov r0, r6
007f9f40  89 53 ec eb                                      bl #0x30ed6c
007f9f44  00 10 a0 e1                                      mov r1, r0
007f9f48  08 00 a0 e1                                      mov r0, r8
007f9f4c  14 53 ec eb                                      bl #0x30eba4
007f9f50  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f9f54  00 80 a0 e1                                      mov r8, r0
007f9f58  07 00 a0 e1                                      mov r0, r7
007f9f5c  82 53 ec eb                                      bl #0x30ed6c
007f9f60  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f9f64  00 70 a0 e1                                      mov r7, r0
007f9f68  06 00 a0 e1                                      mov r0, r6
007f9f6c  7e 53 ec eb                                      bl #0x30ed6c
007f9f70  00 10 a0 e1                                      mov r1, r0
007f9f74  07 00 a0 e1                                      mov r0, r7
007f9f78  09 53 ec eb                                      bl #0x30eba4
007f9f7c  08 10 94 e5                                      ldr r1, [r4, #8]
007f9f80  07 53 ec eb                                      bl #0x30eba4
007f9f84  04 10 94 e5                                      ldr r1, [r4, #4]
007f9f88  00 60 a0 e1                                      mov r6, r0
007f9f8c  08 00 a0 e1                                      mov r0, r8
007f9f90  03 53 ec eb                                      bl #0x30eba4
007f9f94  04 60 85 e5                                      str r6, [r5, #4]
007f9f98  00 00 85 e5                                      str r0, [r5]
007f9f9c  05 00 a0 e1                                      mov r0, r5
007f9fa0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007f9fa4, declared_size=144, range_size=144, mode=arm
; class-group: b2DistanceJoint
; alias: _ZNK15b2DistanceJoint10GetAnchor2Ev
; demangled: b2DistanceJoint::GetAnchor2() const
; decoder-mode: arm
007f9fa4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007f9fa8  34 40 91 e5                                      ldr r4, [r1, #0x34]
007f9fac  4c 70 91 e5                                      ldr r7, [r1, #0x4c]
007f9fb0  50 60 91 e5                                      ldr r6, [r1, #0x50]
007f9fb4  00 50 a0 e1                                      mov r5, r0
007f9fb8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007f9fbc  07 00 a0 e1                                      mov r0, r7
007f9fc0  69 53 ec eb                                      bl #0x30ed6c
007f9fc4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007f9fc8  00 80 a0 e1                                      mov r8, r0
007f9fcc  06 00 a0 e1                                      mov r0, r6
007f9fd0  65 53 ec eb                                      bl #0x30ed6c
007f9fd4  00 10 a0 e1                                      mov r1, r0
007f9fd8  08 00 a0 e1                                      mov r0, r8
007f9fdc  f0 52 ec eb                                      bl #0x30eba4
007f9fe0  10 10 94 e5                                      ldr r1, [r4, #0x10]
007f9fe4  00 80 a0 e1                                      mov r8, r0
007f9fe8  07 00 a0 e1                                      mov r0, r7
007f9fec  5e 53 ec eb                                      bl #0x30ed6c
007f9ff0  18 10 94 e5                                      ldr r1, [r4, #0x18]
007f9ff4  00 70 a0 e1                                      mov r7, r0
007f9ff8  06 00 a0 e1                                      mov r0, r6
007f9ffc  5a 53 ec eb                                      bl #0x30ed6c
007fa000  00 10 a0 e1                                      mov r1, r0
007fa004  07 00 a0 e1                                      mov r0, r7
007fa008  e5 52 ec eb                                      bl #0x30eba4
007fa00c  08 10 94 e5                                      ldr r1, [r4, #8]
007fa010  e3 52 ec eb                                      bl #0x30eba4
007fa014  04 10 94 e5                                      ldr r1, [r4, #4]
007fa018  00 60 a0 e1                                      mov r6, r0
007fa01c  08 00 a0 e1                                      mov r0, r8
007fa020  df 52 ec eb                                      bl #0x30eba4
007fa024  04 60 85 e5                                      str r6, [r5, #4]
007fa028  00 00 85 e5                                      str r0, [r5]
007fa02c  05 00 a0 e1                                      mov r0, r5
007fa030  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fa034, declared_size=68, range_size=68, mode=arm
; class-group: b2DistanceJoint
; alias: _ZNK15b2DistanceJoint16GetReactionForceEv
; demangled: b2DistanceJoint::GetReactionForce() const
; decoder-mode: arm
007fa034  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007fa038  01 40 a0 e1                                      mov r4, r1
007fa03c  00 50 a0 e1                                      mov r5, r0
007fa040  6c 10 91 e5                                      ldr r1, [r1, #0x6c]
007fa044  38 00 94 e5                                      ldr r0, [r4, #0x38]
007fa048  47 53 ec eb                                      bl #0x30ed6c
007fa04c  58 10 94 e5                                      ldr r1, [r4, #0x58]
007fa050  00 70 a0 e1                                      mov r7, r0
007fa054  44 53 ec eb                                      bl #0x30ed6c
007fa058  54 10 94 e5                                      ldr r1, [r4, #0x54]
007fa05c  00 60 a0 e1                                      mov r6, r0
007fa060  07 00 a0 e1                                      mov r0, r7
007fa064  40 53 ec eb                                      bl #0x30ed6c
007fa068  04 60 85 e5                                      str r6, [r5, #4]
007fa06c  00 00 85 e5                                      str r0, [r5]
007fa070  05 00 a0 e1                                      mov r0, r5
007fa074  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007fa078, declared_size=8, range_size=8, mode=arm
; class-group: b2DistanceJoint
; alias: _ZNK15b2DistanceJoint17GetReactionTorqueEv
; demangled: b2DistanceJoint::GetReactionTorque() const
; decoder-mode: arm
007fa078  00 00 a0 e3                                      mov r0, #0
007fa07c  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fa080, declared_size=4, range_size=4, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJointD1Ev
; demangled: b2DistanceJoint::~b2DistanceJoint()
; decoder-mode: arm
007fa080  1e ff 2f e1                                      bx lr

; FUNCTION 0x007fa084, declared_size=20, range_size=20, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJointD0Ev
; demangled: b2DistanceJoint::~b2DistanceJoint()
; decoder-mode: arm
007fa084  10 40 2d e9                                      push {r4, lr}
007fa088  00 40 a0 e1                                      mov r4, r0
007fa08c  87 50 ec eb                                      bl #0x30e2b0
007fa090  04 00 a0 e1                                      mov r0, r4
007fa094  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007fa098, declared_size=1296, range_size=1296, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJoint23InitVelocityConstraintsERK10b2TimeStep
; demangled: b2DistanceJoint::InitVelocityConstraints(b2TimeStep const&)
; decoder-mode: arm
007fa098  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fa09c  04 30 91 e5                                      ldr r3, [r1, #4]
007fa0a0  30 60 90 e5                                      ldr r6, [r0, #0x30]
007fa0a4  00 40 a0 e1                                      mov r4, r0
007fa0a8  44 00 90 e5                                      ldr r0, [r0, #0x44]
007fa0ac  38 30 84 e5                                      str r3, [r4, #0x38]
007fa0b0  24 d0 4d e2                                      sub sp, sp, #0x24
007fa0b4  01 70 a0 e1                                      mov r7, r1
007fa0b8  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
007fa0bc  ba 50 ec eb                                      bl #0x30e3ac
007fa0c0  20 10 96 e5                                      ldr r1, [r6, #0x20]
007fa0c4  00 a0 a0 e1                                      mov sl, r0
007fa0c8  48 00 94 e5                                      ldr r0, [r4, #0x48]
007fa0cc  b6 50 ec eb                                      bl #0x30e3ac
007fa0d0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007fa0d4  00 80 a0 e1                                      mov r8, r0
007fa0d8  0a 00 a0 e1                                      mov r0, sl
007fa0dc  22 53 ec eb                                      bl #0x30ed6c
007fa0e0  14 10 96 e5                                      ldr r1, [r6, #0x14]
007fa0e4  00 50 a0 e1                                      mov r5, r0
007fa0e8  08 00 a0 e1                                      mov r0, r8
007fa0ec  1e 53 ec eb                                      bl #0x30ed6c
007fa0f0  00 10 a0 e1                                      mov r1, r0
007fa0f4  05 00 a0 e1                                      mov r0, r5
007fa0f8  a9 52 ec eb                                      bl #0x30eba4
007fa0fc  10 10 96 e5                                      ldr r1, [r6, #0x10]
007fa100  00 90 a0 e1                                      mov sb, r0
007fa104  0a 00 a0 e1                                      mov r0, sl
007fa108  17 53 ec eb                                      bl #0x30ed6c
007fa10c  18 10 96 e5                                      ldr r1, [r6, #0x18]
007fa110  00 a0 a0 e1                                      mov sl, r0
007fa114  08 00 a0 e1                                      mov r0, r8
007fa118  13 53 ec eb                                      bl #0x30ed6c
007fa11c  00 10 a0 e1                                      mov r1, r0
007fa120  0a 00 a0 e1                                      mov r0, sl
007fa124  9e 52 ec eb                                      bl #0x30eba4
007fa128  34 50 94 e5                                      ldr r5, [r4, #0x34]
007fa12c  18 00 8d e5                                      str r0, [sp, #0x18]
007fa130  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
007fa134  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007fa138  9b 50 ec eb                                      bl #0x30e3ac
007fa13c  20 10 95 e5                                      ldr r1, [r5, #0x20]
007fa140  00 b0 a0 e1                                      mov fp, r0
007fa144  50 00 94 e5                                      ldr r0, [r4, #0x50]
007fa148  97 50 ec eb                                      bl #0x30e3ac
007fa14c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007fa150  00 80 a0 e1                                      mov r8, r0
007fa154  0b 00 a0 e1                                      mov r0, fp
007fa158  03 53 ec eb                                      bl #0x30ed6c
007fa15c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007fa160  00 a0 a0 e1                                      mov sl, r0
007fa164  08 00 a0 e1                                      mov r0, r8
007fa168  ff 52 ec eb                                      bl #0x30ed6c
007fa16c  00 10 a0 e1                                      mov r1, r0
007fa170  0a 00 a0 e1                                      mov r0, sl
007fa174  8a 52 ec eb                                      bl #0x30eba4
007fa178  10 10 95 e5                                      ldr r1, [r5, #0x10]
007fa17c  00 a0 a0 e1                                      mov sl, r0
007fa180  0b 00 a0 e1                                      mov r0, fp
007fa184  f8 52 ec eb                                      bl #0x30ed6c
007fa188  18 10 95 e5                                      ldr r1, [r5, #0x18]
007fa18c  00 b0 a0 e1                                      mov fp, r0
007fa190  08 00 a0 e1                                      mov r0, r8
007fa194  f4 52 ec eb                                      bl #0x30ed6c
007fa198  00 10 a0 e1                                      mov r1, r0
007fa19c  0b 00 a0 e1                                      mov r0, fp
007fa1a0  7f 52 ec eb                                      bl #0x30eba4
007fa1a4  14 00 8d e5                                      str r0, [sp, #0x14]
007fa1a8  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007fa1ac  0a 00 a0 e1                                      mov r0, sl
007fa1b0  7b 52 ec eb                                      bl #0x30eba4
007fa1b4  30 10 95 e5                                      ldr r1, [r5, #0x30]
007fa1b8  00 b0 a0 e1                                      mov fp, r0
007fa1bc  14 00 9d e5                                      ldr r0, [sp, #0x14]
007fa1c0  77 52 ec eb                                      bl #0x30eba4
007fa1c4  2c 10 96 e5                                      ldr r1, [r6, #0x2c]
007fa1c8  00 80 a0 e1                                      mov r8, r0
007fa1cc  0b 00 a0 e1                                      mov r0, fp
007fa1d0  75 50 ec eb                                      bl #0x30e3ac
007fa1d4  30 10 96 e5                                      ldr r1, [r6, #0x30]
007fa1d8  00 b0 a0 e1                                      mov fp, r0
007fa1dc  08 00 a0 e1                                      mov r0, r8
007fa1e0  71 50 ec eb                                      bl #0x30e3ac
007fa1e4  09 10 a0 e1                                      mov r1, sb
007fa1e8  00 80 a0 e1                                      mov r8, r0
007fa1ec  0b 00 a0 e1                                      mov r0, fp
007fa1f0  6d 50 ec eb                                      bl #0x30e3ac
007fa1f4  18 10 9d e5                                      ldr r1, [sp, #0x18]
007fa1f8  00 b0 a0 e1                                      mov fp, r0
007fa1fc  08 00 a0 e1                                      mov r0, r8
007fa200  69 50 ec eb                                      bl #0x30e3ac
007fa204  00 80 a0 e1                                      mov r8, r0
007fa208  0b 10 a0 e1                                      mov r1, fp
007fa20c  0b 00 a0 e1                                      mov r0, fp
007fa210  54 b0 84 e5                                      str fp, [r4, #0x54]
007fa214  58 80 84 e5                                      str r8, [r4, #0x58]
007fa218  d3 52 ec eb                                      bl #0x30ed6c
007fa21c  08 10 a0 e1                                      mov r1, r8
007fa220  00 b0 a0 e1                                      mov fp, r0
007fa224  08 00 a0 e1                                      mov r0, r8
007fa228  cf 52 ec eb                                      bl #0x30ed6c
007fa22c  00 10 a0 e1                                      mov r1, r0
007fa230  0b 00 a0 e1                                      mov r0, fp
007fa234  5a 52 ec eb                                      bl #0x30eba4
007fa238  b9 4f ec eb                                      bl #0x30e124
007fa23c  0a 17 0d e3                                      movw r1, #0xd70a
007fa240  a3 1b 43 e3                                      movt r1, #0x3ba3
007fa244  1c 00 8d e5                                      str r0, [sp, #0x1c]
007fa248  2a 50 ec eb                                      bl #0x30e2f8
007fa24c  00 00 50 e3                                      cmp r0, #0
007fa250  ce 00 00 0a                                      beq #0x7fa590
007fa254  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
007fa258  fe 05 a0 e3                                      mov r0, #0x3f800000
007fa25c  8c 52 ec eb                                      bl #0x30ec94
007fa260  54 10 94 e5                                      ldr r1, [r4, #0x54]
007fa264  00 b0 a0 e1                                      mov fp, r0
007fa268  bf 52 ec eb                                      bl #0x30ed6c
007fa26c  58 10 94 e5                                      ldr r1, [r4, #0x58]
007fa270  54 00 84 e5                                      str r0, [r4, #0x54]
007fa274  00 80 a0 e1                                      mov r8, r0
007fa278  0b 00 a0 e1                                      mov r0, fp
007fa27c  ba 52 ec eb                                      bl #0x30ed6c
007fa280  00 b0 a0 e1                                      mov fp, r0
007fa284  58 00 84 e5                                      str r0, [r4, #0x58]
007fa288  0b 10 a0 e1                                      mov r1, fp
007fa28c  09 00 a0 e1                                      mov r0, sb
007fa290  b5 52 ec eb                                      bl #0x30ed6c
007fa294  08 10 a0 e1                                      mov r1, r8
007fa298  00 30 a0 e1                                      mov r3, r0
007fa29c  18 00 9d e5                                      ldr r0, [sp, #0x18]
007fa2a0  04 30 8d e5                                      str r3, [sp, #4]
007fa2a4  b0 52 ec eb                                      bl #0x30ed6c
007fa2a8  04 30 9d e5                                      ldr r3, [sp, #4]
007fa2ac  00 10 a0 e1                                      mov r1, r0
007fa2b0  03 00 a0 e1                                      mov r0, r3
007fa2b4  3c 50 ec eb                                      bl #0x30e3ac
007fa2b8  0b 10 a0 e1                                      mov r1, fp
007fa2bc  10 00 8d e5                                      str r0, [sp, #0x10]
007fa2c0  0a 00 a0 e1                                      mov r0, sl
007fa2c4  a8 52 ec eb                                      bl #0x30ed6c
007fa2c8  08 10 a0 e1                                      mov r1, r8
007fa2cc  00 b0 a0 e1                                      mov fp, r0
007fa2d0  14 00 9d e5                                      ldr r0, [sp, #0x14]
007fa2d4  a4 52 ec eb                                      bl #0x30ed6c
007fa2d8  00 10 a0 e1                                      mov r1, r0
007fa2dc  0b 00 a0 e1                                      mov r0, fp
007fa2e0  31 50 ec eb                                      bl #0x30e3ac
007fa2e4  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fa2e8  00 80 a0 e1                                      mov r8, r0
007fa2ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
007fa2f0  9d 52 ec eb                                      bl #0x30ed6c
007fa2f4  10 10 9d e5                                      ldr r1, [sp, #0x10]
007fa2f8  9b 52 ec eb                                      bl #0x30ed6c
007fa2fc  78 10 96 e5                                      ldr r1, [r6, #0x78]
007fa300  27 52 ec eb                                      bl #0x30eba4
007fa304  78 10 95 e5                                      ldr r1, [r5, #0x78]
007fa308  25 52 ec eb                                      bl #0x30eba4
007fa30c  80 10 95 e5                                      ldr r1, [r5, #0x80]
007fa310  00 b0 a0 e1                                      mov fp, r0
007fa314  08 00 a0 e1                                      mov r0, r8
007fa318  93 52 ec eb                                      bl #0x30ed6c
007fa31c  08 10 a0 e1                                      mov r1, r8
007fa320  91 52 ec eb                                      bl #0x30ed6c
007fa324  00 10 a0 e1                                      mov r1, r0
007fa328  0b 00 a0 e1                                      mov r0, fp
007fa32c  1c 52 ec eb                                      bl #0x30eba4
007fa330  00 10 a0 e1                                      mov r1, r0
007fa334  10 00 8d e5                                      str r0, [sp, #0x10]
007fa338  fe 05 a0 e3                                      mov r0, #0x3f800000
007fa33c  54 52 ec eb                                      bl #0x30ec94
007fa340  5c b0 94 e5                                      ldr fp, [r4, #0x5c]
007fa344  70 00 84 e5                                      str r0, [r4, #0x70]
007fa348  00 80 a0 e1                                      mov r8, r0
007fa34c  00 10 a0 e3                                      mov r1, #0
007fa350  0b 00 a0 e1                                      mov r0, fp
007fa354  e7 4f ec eb                                      bl #0x30e2f8
007fa358  00 00 50 e3                                      cmp r0, #0
007fa35c  3a 00 00 0a                                      beq #0x7fa44c
007fa360  74 10 94 e5                                      ldr r1, [r4, #0x74]
007fa364  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007fa368  0f 50 ec eb                                      bl #0x30e3ac
007fa36c  db 1f 00 e3                                      movw r1, #0xfdb
007fa370  1c 00 8d e5                                      str r0, [sp, #0x1c]
007fa374  c9 10 44 e3                                      movt r1, #0x40c9
007fa378  0b 00 a0 e1                                      mov r0, fp
007fa37c  7a 52 ec eb                                      bl #0x30ed6c
007fa380  00 b0 a0 e1                                      mov fp, r0
007fa384  0b 10 a0 e1                                      mov r1, fp
007fa388  08 00 a0 e1                                      mov r0, r8
007fa38c  76 52 ec eb                                      bl #0x30ed6c
007fa390  0b 10 a0 e1                                      mov r1, fp
007fa394  74 52 ec eb                                      bl #0x30ed6c
007fa398  00 c0 97 e5                                      ldr ip, [r7]
007fa39c  00 30 a0 e1                                      mov r3, r0
007fa3a0  00 10 a0 e1                                      mov r1, r0
007fa3a4  0c 00 a0 e1                                      mov r0, ip
007fa3a8  08 10 8d e9                                      stmib sp, {r3, ip}
007fa3ac  6e 52 ec eb                                      bl #0x30ed6c
007fa3b0  08 10 a0 e1                                      mov r1, r8
007fa3b4  00 20 a0 e1                                      mov r2, r0
007fa3b8  08 00 a0 e1                                      mov r0, r8
007fa3bc  0c 20 8d e5                                      str r2, [sp, #0xc]
007fa3c0  f7 51 ec eb                                      bl #0x30eba4
007fa3c4  60 10 94 e5                                      ldr r1, [r4, #0x60]
007fa3c8  67 52 ec eb                                      bl #0x30ed6c
007fa3cc  0b 10 a0 e1                                      mov r1, fp
007fa3d0  65 52 ec eb                                      bl #0x30ed6c
007fa3d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007fa3d8  00 10 a0 e1                                      mov r1, r0
007fa3dc  02 00 a0 e1                                      mov r0, r2
007fa3e0  ef 51 ec eb                                      bl #0x30eba4
007fa3e4  08 c0 9d e5                                      ldr ip, [sp, #8]
007fa3e8  00 10 a0 e1                                      mov r1, r0
007fa3ec  0c 00 a0 e1                                      mov r0, ip
007fa3f0  5d 52 ec eb                                      bl #0x30ed6c
007fa3f4  00 10 a0 e1                                      mov r1, r0
007fa3f8  fe 05 a0 e3                                      mov r0, #0x3f800000
007fa3fc  24 52 ec eb                                      bl #0x30ec94
007fa400  64 00 84 e5                                      str r0, [r4, #0x64]
007fa404  00 10 97 e5                                      ldr r1, [r7]
007fa408  00 80 a0 e1                                      mov r8, r0
007fa40c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
007fa410  55 52 ec eb                                      bl #0x30ed6c
007fa414  04 30 9d e5                                      ldr r3, [sp, #4]
007fa418  03 10 a0 e1                                      mov r1, r3
007fa41c  52 52 ec eb                                      bl #0x30ed6c
007fa420  00 10 a0 e1                                      mov r1, r0
007fa424  08 00 a0 e1                                      mov r0, r8
007fa428  4f 52 ec eb                                      bl #0x30ed6c
007fa42c  68 00 84 e5                                      str r0, [r4, #0x68]
007fa430  08 10 a0 e1                                      mov r1, r8
007fa434  10 00 9d e5                                      ldr r0, [sp, #0x10]
007fa438  d9 51 ec eb                                      bl #0x30eba4
007fa43c  00 10 a0 e1                                      mov r1, r0
007fa440  fe 05 a0 e3                                      mov r0, #0x3f800000
007fa444  12 52 ec eb                                      bl #0x30ec94
007fa448  70 00 84 e5                                      str r0, [r4, #0x70]
007fa44c  10 30 d7 e5                                      ldrb r3, [r7, #0x10]
007fa450  00 00 53 e3                                      cmp r3, #0
007fa454  00 30 a0 03                                      moveq r3, #0
007fa458  6c 30 84 05                                      streq r3, [r4, #0x6c]
007fa45c  49 00 00 0a                                      beq #0x7fa588
007fa460  08 10 97 e5                                      ldr r1, [r7, #8]
007fa464  6c 00 94 e5                                      ldr r0, [r4, #0x6c]
007fa468  3f 52 ec eb                                      bl #0x30ed6c
007fa46c  54 10 94 e5                                      ldr r1, [r4, #0x54]
007fa470  6c 00 84 e5                                      str r0, [r4, #0x6c]
007fa474  00 80 a0 e1                                      mov r8, r0
007fa478  3b 52 ec eb                                      bl #0x30ed6c
007fa47c  58 10 94 e5                                      ldr r1, [r4, #0x58]
007fa480  00 70 a0 e1                                      mov r7, r0
007fa484  08 00 a0 e1                                      mov r0, r8
007fa488  37 52 ec eb                                      bl #0x30ed6c
007fa48c  78 80 96 e5                                      ldr r8, [r6, #0x78]
007fa490  00 40 a0 e1                                      mov r4, r0
007fa494  07 10 a0 e1                                      mov r1, r7
007fa498  08 00 a0 e1                                      mov r0, r8
007fa49c  32 52 ec eb                                      bl #0x30ed6c
007fa4a0  00 10 a0 e1                                      mov r1, r0
007fa4a4  40 00 96 e5                                      ldr r0, [r6, #0x40]
007fa4a8  bf 4f ec eb                                      bl #0x30e3ac
007fa4ac  04 10 a0 e1                                      mov r1, r4
007fa4b0  40 00 86 e5                                      str r0, [r6, #0x40]
007fa4b4  08 00 a0 e1                                      mov r0, r8
007fa4b8  2b 52 ec eb                                      bl #0x30ed6c
007fa4bc  00 10 a0 e1                                      mov r1, r0
007fa4c0  44 00 96 e5                                      ldr r0, [r6, #0x44]
007fa4c4  b8 4f ec eb                                      bl #0x30e3ac
007fa4c8  04 10 a0 e1                                      mov r1, r4
007fa4cc  44 00 86 e5                                      str r0, [r6, #0x44]
007fa4d0  09 00 a0 e1                                      mov r0, sb
007fa4d4  24 52 ec eb                                      bl #0x30ed6c
007fa4d8  07 10 a0 e1                                      mov r1, r7
007fa4dc  00 80 a0 e1                                      mov r8, r0
007fa4e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
007fa4e4  20 52 ec eb                                      bl #0x30ed6c
007fa4e8  00 10 a0 e1                                      mov r1, r0
007fa4ec  08 00 a0 e1                                      mov r0, r8
007fa4f0  ad 4f ec eb                                      bl #0x30e3ac
007fa4f4  80 10 96 e5                                      ldr r1, [r6, #0x80]
007fa4f8  1b 52 ec eb                                      bl #0x30ed6c
007fa4fc  00 10 a0 e1                                      mov r1, r0
007fa500  48 00 96 e5                                      ldr r0, [r6, #0x48]
007fa504  a8 4f ec eb                                      bl #0x30e3ac
007fa508  48 00 86 e5                                      str r0, [r6, #0x48]
007fa50c  78 60 95 e5                                      ldr r6, [r5, #0x78]
007fa510  07 10 a0 e1                                      mov r1, r7
007fa514  06 00 a0 e1                                      mov r0, r6
007fa518  13 52 ec eb                                      bl #0x30ed6c
007fa51c  00 10 a0 e1                                      mov r1, r0
007fa520  40 00 95 e5                                      ldr r0, [r5, #0x40]
007fa524  9e 51 ec eb                                      bl #0x30eba4
007fa528  04 10 a0 e1                                      mov r1, r4
007fa52c  40 00 85 e5                                      str r0, [r5, #0x40]
007fa530  06 00 a0 e1                                      mov r0, r6
007fa534  0c 52 ec eb                                      bl #0x30ed6c
007fa538  00 10 a0 e1                                      mov r1, r0
007fa53c  44 00 95 e5                                      ldr r0, [r5, #0x44]
007fa540  97 51 ec eb                                      bl #0x30eba4
007fa544  04 10 a0 e1                                      mov r1, r4
007fa548  44 00 85 e5                                      str r0, [r5, #0x44]
007fa54c  0a 00 a0 e1                                      mov r0, sl
007fa550  05 52 ec eb                                      bl #0x30ed6c
007fa554  07 10 a0 e1                                      mov r1, r7
007fa558  00 40 a0 e1                                      mov r4, r0
007fa55c  14 00 9d e5                                      ldr r0, [sp, #0x14]
007fa560  01 52 ec eb                                      bl #0x30ed6c
007fa564  00 10 a0 e1                                      mov r1, r0
007fa568  04 00 a0 e1                                      mov r0, r4
007fa56c  8e 4f ec eb                                      bl #0x30e3ac
007fa570  80 10 95 e5                                      ldr r1, [r5, #0x80]
007fa574  fc 51 ec eb                                      bl #0x30ed6c
007fa578  00 10 a0 e1                                      mov r1, r0
007fa57c  48 00 95 e5                                      ldr r0, [r5, #0x48]
007fa580  87 51 ec eb                                      bl #0x30eba4
007fa584  48 00 85 e5                                      str r0, [r5, #0x48]
007fa588  24 d0 8d e2                                      add sp, sp, #0x24
007fa58c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007fa590  00 30 a0 e3                                      mov r3, #0
007fa594  03 80 a0 e1                                      mov r8, r3
007fa598  54 30 84 e5                                      str r3, [r4, #0x54]
007fa59c  58 30 84 e5                                      str r3, [r4, #0x58]
007fa5a0  03 b0 a0 e1                                      mov fp, r3
007fa5a4  37 ff ff ea                                      b #0x7fa288

; FUNCTION 0x007fa714, declared_size=892, range_size=892, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJoint24SolvePositionConstraintsEv
; demangled: b2DistanceJoint::SolvePositionConstraints()
; decoder-mode: arm
007fa714  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007fa718  00 10 a0 e3                                      mov r1, #0
007fa71c  1c d0 4d e2                                      sub sp, sp, #0x1c
007fa720  00 60 a0 e1                                      mov r6, r0
007fa724  5c 00 90 e5                                      ldr r0, [r0, #0x5c]
007fa728  f2 4e ec eb                                      bl #0x30e2f8
007fa72c  00 00 50 e3                                      cmp r0, #0
007fa730  01 00 a0 13                                      movne r0, #1
007fa734  cb 00 00 1a                                      bne #0x7faa68
007fa738  30 50 96 e5                                      ldr r5, [r6, #0x30]
007fa73c  44 00 96 e5                                      ldr r0, [r6, #0x44]
007fa740  34 40 96 e5                                      ldr r4, [r6, #0x34]
007fa744  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
007fa748  17 4f ec eb                                      bl #0x30e3ac
007fa74c  20 10 95 e5                                      ldr r1, [r5, #0x20]
007fa750  00 80 a0 e1                                      mov r8, r0
007fa754  48 00 96 e5                                      ldr r0, [r6, #0x48]
007fa758  13 4f ec eb                                      bl #0x30e3ac
007fa75c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007fa760  00 70 a0 e1                                      mov r7, r0
007fa764  08 00 a0 e1                                      mov r0, r8
007fa768  7f 51 ec eb                                      bl #0x30ed6c
007fa76c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007fa770  00 a0 a0 e1                                      mov sl, r0
007fa774  07 00 a0 e1                                      mov r0, r7
007fa778  7b 51 ec eb                                      bl #0x30ed6c
007fa77c  00 10 a0 e1                                      mov r1, r0
007fa780  0a 00 a0 e1                                      mov r0, sl
007fa784  06 51 ec eb                                      bl #0x30eba4
007fa788  10 10 95 e5                                      ldr r1, [r5, #0x10]
007fa78c  00 b0 a0 e1                                      mov fp, r0
007fa790  08 00 a0 e1                                      mov r0, r8
007fa794  74 51 ec eb                                      bl #0x30ed6c
007fa798  18 10 95 e5                                      ldr r1, [r5, #0x18]
007fa79c  00 80 a0 e1                                      mov r8, r0
007fa7a0  07 00 a0 e1                                      mov r0, r7
007fa7a4  70 51 ec eb                                      bl #0x30ed6c
007fa7a8  00 10 a0 e1                                      mov r1, r0
007fa7ac  08 00 a0 e1                                      mov r0, r8
007fa7b0  fb 50 ec eb                                      bl #0x30eba4
007fa7b4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
007fa7b8  00 90 a0 e1                                      mov sb, r0
007fa7bc  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
007fa7c0  f9 4e ec eb                                      bl #0x30e3ac
007fa7c4  20 10 94 e5                                      ldr r1, [r4, #0x20]
007fa7c8  00 80 a0 e1                                      mov r8, r0
007fa7cc  50 00 96 e5                                      ldr r0, [r6, #0x50]
007fa7d0  f5 4e ec eb                                      bl #0x30e3ac
007fa7d4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
007fa7d8  00 70 a0 e1                                      mov r7, r0
007fa7dc  08 00 a0 e1                                      mov r0, r8
007fa7e0  61 51 ec eb                                      bl #0x30ed6c
007fa7e4  14 10 94 e5                                      ldr r1, [r4, #0x14]
007fa7e8  00 a0 a0 e1                                      mov sl, r0
007fa7ec  07 00 a0 e1                                      mov r0, r7
007fa7f0  5d 51 ec eb                                      bl #0x30ed6c
007fa7f4  00 10 a0 e1                                      mov r1, r0
007fa7f8  0a 00 a0 e1                                      mov r0, sl
007fa7fc  e8 50 ec eb                                      bl #0x30eba4
007fa800  10 10 94 e5                                      ldr r1, [r4, #0x10]
007fa804  00 a0 a0 e1                                      mov sl, r0
007fa808  08 00 a0 e1                                      mov r0, r8
007fa80c  56 51 ec eb                                      bl #0x30ed6c
007fa810  18 10 94 e5                                      ldr r1, [r4, #0x18]
007fa814  00 80 a0 e1                                      mov r8, r0
007fa818  07 00 a0 e1                                      mov r0, r7
007fa81c  52 51 ec eb                                      bl #0x30ed6c
007fa820  00 10 a0 e1                                      mov r1, r0
007fa824  08 00 a0 e1                                      mov r0, r8
007fa828  dd 50 ec eb                                      bl #0x30eba4
007fa82c  0c 00 8d e5                                      str r0, [sp, #0xc]
007fa830  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
007fa834  0a 00 a0 e1                                      mov r0, sl
007fa838  d9 50 ec eb                                      bl #0x30eba4
007fa83c  30 10 94 e5                                      ldr r1, [r4, #0x30]
007fa840  00 80 a0 e1                                      mov r8, r0
007fa844  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007fa848  d5 50 ec eb                                      bl #0x30eba4
007fa84c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
007fa850  00 70 a0 e1                                      mov r7, r0
007fa854  08 00 a0 e1                                      mov r0, r8
007fa858  d3 4e ec eb                                      bl #0x30e3ac
007fa85c  30 10 95 e5                                      ldr r1, [r5, #0x30]
007fa860  00 80 a0 e1                                      mov r8, r0
007fa864  07 00 a0 e1                                      mov r0, r7
007fa868  cf 4e ec eb                                      bl #0x30e3ac
007fa86c  0b 10 a0 e1                                      mov r1, fp
007fa870  00 70 a0 e1                                      mov r7, r0
007fa874  08 00 a0 e1                                      mov r0, r8
007fa878  cb 4e ec eb                                      bl #0x30e3ac
007fa87c  09 10 a0 e1                                      mov r1, sb
007fa880  10 00 8d e5                                      str r0, [sp, #0x10]
007fa884  07 00 a0 e1                                      mov r0, r7
007fa888  c7 4e ec eb                                      bl #0x30e3ac
007fa88c  14 00 8d e5                                      str r0, [sp, #0x14]
007fa890  10 00 8d e2                                      add r0, sp, #0x10
007fa894  22 ab ff eb                                      bl #0x7e5524
007fa898  74 10 96 e5                                      ldr r1, [r6, #0x74]
007fa89c  c2 4e ec eb                                      bl #0x30e3ac
007fa8a0  cd 1c 0c e3                                      movw r1, #0xcccd
007fa8a4  4c 1e 43 e3                                      movt r1, #0x3e4c
007fa8a8  00 70 a0 e1                                      mov r7, r0
007fa8ac  96 4f ec eb                                      bl #0x30e70c
007fa8b0  00 00 50 e3                                      cmp r0, #0
007fa8b4  cd 7c 0c 03                                      movweq r7, #0xcccd
007fa8b8  4c 7e 43 03                                      movteq r7, #0x3e4c
007fa8bc  6b 00 00 0a                                      beq #0x7faa70
007fa8c0  cd 1c 0c e3                                      movw r1, #0xcccd
007fa8c4  07 00 a0 e1                                      mov r0, r7
007fa8c8  4c 1e 4b e3                                      movt r1, #0xbe4c
007fa8cc  8e 4f ec eb                                      bl #0x30e70c
007fa8d0  00 00 50 e3                                      cmp r0, #0
007fa8d4  cd 7c 0c 13                                      movwne r7, #0xcccd
007fa8d8  00 20 a0 13                                      movne r2, #0
007fa8dc  4c 7e 4b 13                                      movtne r7, #0xbe4c
007fa8e0  62 00 00 0a                                      beq #0x7faa70
007fa8e4  70 00 96 e5                                      ldr r0, [r6, #0x70]
007fa8e8  07 10 a0 e1                                      mov r1, r7
007fa8ec  04 20 8d e5                                      str r2, [sp, #4]
007fa8f0  02 01 80 e2                                      add r0, r0, #0x80000000
007fa8f4  1c 51 ec eb                                      bl #0x30ed6c
007fa8f8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007fa8fc  14 10 9d e5                                      ldr r1, [sp, #0x14]
007fa900  54 c0 86 e5                                      str ip, [r6, #0x54]
007fa904  58 10 86 e5                                      str r1, [r6, #0x58]
007fa908  54 10 96 e5                                      ldr r1, [r6, #0x54]
007fa90c  08 00 8d e5                                      str r0, [sp, #8]
007fa910  15 51 ec eb                                      bl #0x30ed6c
007fa914  08 30 9d e5                                      ldr r3, [sp, #8]
007fa918  58 10 96 e5                                      ldr r1, [r6, #0x58]
007fa91c  00 80 a0 e1                                      mov r8, r0
007fa920  03 00 a0 e1                                      mov r0, r3
007fa924  10 51 ec eb                                      bl #0x30ed6c
007fa928  78 30 95 e5                                      ldr r3, [r5, #0x78]
007fa92c  00 60 a0 e1                                      mov r6, r0
007fa930  08 10 a0 e1                                      mov r1, r8
007fa934  03 00 a0 e1                                      mov r0, r3
007fa938  08 30 8d e5                                      str r3, [sp, #8]
007fa93c  0a 51 ec eb                                      bl #0x30ed6c
007fa940  00 10 a0 e1                                      mov r1, r0
007fa944  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
007fa948  97 4e ec eb                                      bl #0x30e3ac
007fa94c  2c 00 85 e5                                      str r0, [r5, #0x2c]
007fa950  08 30 9d e5                                      ldr r3, [sp, #8]
007fa954  06 10 a0 e1                                      mov r1, r6
007fa958  03 00 a0 e1                                      mov r0, r3
007fa95c  02 51 ec eb                                      bl #0x30ed6c
007fa960  00 10 a0 e1                                      mov r1, r0
007fa964  30 00 95 e5                                      ldr r0, [r5, #0x30]
007fa968  8f 4e ec eb                                      bl #0x30e3ac
007fa96c  06 10 a0 e1                                      mov r1, r6
007fa970  30 00 85 e5                                      str r0, [r5, #0x30]
007fa974  0b 00 a0 e1                                      mov r0, fp
007fa978  fb 50 ec eb                                      bl #0x30ed6c
007fa97c  08 10 a0 e1                                      mov r1, r8
007fa980  00 b0 a0 e1                                      mov fp, r0
007fa984  09 00 a0 e1                                      mov r0, sb
007fa988  f7 50 ec eb                                      bl #0x30ed6c
007fa98c  00 10 a0 e1                                      mov r1, r0
007fa990  0b 00 a0 e1                                      mov r0, fp
007fa994  84 4e ec eb                                      bl #0x30e3ac
007fa998  80 10 95 e5                                      ldr r1, [r5, #0x80]
007fa99c  f2 50 ec eb                                      bl #0x30ed6c
007fa9a0  00 10 a0 e1                                      mov r1, r0
007fa9a4  38 00 95 e5                                      ldr r0, [r5, #0x38]
007fa9a8  7f 4e ec eb                                      bl #0x30e3ac
007fa9ac  38 00 85 e5                                      str r0, [r5, #0x38]
007fa9b0  78 90 94 e5                                      ldr sb, [r4, #0x78]
007fa9b4  08 10 a0 e1                                      mov r1, r8
007fa9b8  09 00 a0 e1                                      mov r0, sb
007fa9bc  ea 50 ec eb                                      bl #0x30ed6c
007fa9c0  00 10 a0 e1                                      mov r1, r0
007fa9c4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
007fa9c8  75 50 ec eb                                      bl #0x30eba4
007fa9cc  06 10 a0 e1                                      mov r1, r6
007fa9d0  2c 00 84 e5                                      str r0, [r4, #0x2c]
007fa9d4  09 00 a0 e1                                      mov r0, sb
007fa9d8  e3 50 ec eb                                      bl #0x30ed6c
007fa9dc  00 10 a0 e1                                      mov r1, r0
007fa9e0  30 00 94 e5                                      ldr r0, [r4, #0x30]
007fa9e4  6e 50 ec eb                                      bl #0x30eba4
007fa9e8  06 10 a0 e1                                      mov r1, r6
007fa9ec  30 00 84 e5                                      str r0, [r4, #0x30]
007fa9f0  0a 00 a0 e1                                      mov r0, sl
007fa9f4  dc 50 ec eb                                      bl #0x30ed6c
007fa9f8  08 10 a0 e1                                      mov r1, r8
007fa9fc  00 60 a0 e1                                      mov r6, r0
007faa00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007faa04  d8 50 ec eb                                      bl #0x30ed6c
007faa08  00 10 a0 e1                                      mov r1, r0
007faa0c  06 00 a0 e1                                      mov r0, r6
007faa10  65 4e ec eb                                      bl #0x30e3ac
007faa14  80 10 94 e5                                      ldr r1, [r4, #0x80]
007faa18  d3 50 ec eb                                      bl #0x30ed6c
007faa1c  00 10 a0 e1                                      mov r1, r0
007faa20  38 00 94 e5                                      ldr r0, [r4, #0x38]
007faa24  5e 50 ec eb                                      bl #0x30eba4
007faa28  38 00 84 e5                                      str r0, [r4, #0x38]
007faa2c  05 00 a0 e1                                      mov r0, r5
007faa30  f9 b2 ff eb                                      bl #0x7e761c
007faa34  04 00 a0 e1                                      mov r0, r4
007faa38  f7 b2 ff eb                                      bl #0x7e761c
007faa3c  04 20 9d e5                                      ldr r2, [sp, #4]
007faa40  0a 17 0d e3                                      movw r1, #0xd70a
007faa44  a3 1b 43 e3                                      movt r1, #0x3ba3
007faa48  00 00 52 e3                                      cmp r2, #0
007faa4c  02 71 87 02                                      addeq r7, r7, #0x80000000
007faa50  07 00 a0 e1                                      mov r0, r7
007faa54  2c 4f ec eb                                      bl #0x30e70c
007faa58  00 00 50 e3                                      cmp r0, #0
007faa5c  00 00 a0 e3                                      mov r0, #0
007faa60  01 00 a0 13                                      movne r0, #1
007faa64  70 00 ef e6                                      uxtb r0, r0
007faa68  1c d0 8d e2                                      add sp, sp, #0x1c
007faa6c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007faa70  07 00 a0 e1                                      mov r0, r7
007faa74  00 10 a0 e3                                      mov r1, #0
007faa78  1e 4e ec eb                                      bl #0x30e2f8
007faa7c  00 00 50 e3                                      cmp r0, #0
007faa80  00 20 a0 e3                                      mov r2, #0
007faa84  01 20 a0 13                                      movne r2, #1
007faa88  72 20 ef e6                                      uxtb r2, r2
007faa8c  94 ff ff ea                                      b #0x7fa8e4

; FUNCTION 0x007faa90, declared_size=132, range_size=132, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJointC1EPK18b2DistanceJointDef
; demangled: b2DistanceJoint::b2DistanceJoint(b2DistanceJointDef const*)
; decoder-mode: arm
007faa90  70 40 2d e9                                      push {r4, r5, r6, lr}
007faa94  70 60 9f e5                                      ldr r6, [pc, #0x70]
007faa98  00 40 a0 e1                                      mov r4, r0
007faa9c  01 50 a0 e1                                      mov r5, r1
007faaa0  ce c1 ff eb                                      bl #0x7eb1e0
007faaa4  64 20 9f e5                                      ldr r2, [pc, #0x64]
007faaa8  06 60 8f e0                                      add r6, pc, r6
007faaac  00 30 a0 e3                                      mov r3, #0
007faab0  02 20 96 e7                                      ldr r2, [r6, r2]
007faab4  04 00 a0 e1                                      mov r0, r4
007faab8  08 20 82 e2                                      add r2, r2, #8
007faabc  00 20 84 e5                                      str r2, [r4]
007faac0  14 20 95 e5                                      ldr r2, [r5, #0x14]
007faac4  44 20 84 e5                                      str r2, [r4, #0x44]
007faac8  18 20 95 e5                                      ldr r2, [r5, #0x18]
007faacc  48 20 84 e5                                      str r2, [r4, #0x48]
007faad0  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007faad4  4c 20 84 e5                                      str r2, [r4, #0x4c]
007faad8  20 20 95 e5                                      ldr r2, [r5, #0x20]
007faadc  50 20 84 e5                                      str r2, [r4, #0x50]
007faae0  24 20 95 e5                                      ldr r2, [r5, #0x24]
007faae4  74 20 84 e5                                      str r2, [r4, #0x74]
007faae8  28 20 95 e5                                      ldr r2, [r5, #0x28]
007faaec  5c 20 84 e5                                      str r2, [r4, #0x5c]
007faaf0  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
007faaf4  38 30 84 e5                                      str r3, [r4, #0x38]
007faaf8  6c 30 84 e5                                      str r3, [r4, #0x6c]
007faafc  60 20 84 e5                                      str r2, [r4, #0x60]
007fab00  64 30 84 e5                                      str r3, [r4, #0x64]
007fab04  68 30 84 e5                                      str r3, [r4, #0x68]
007fab08  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fab0c  e8 9f 19 00 50 11 00 00                          .byte 0xe8, 0x9f, 0x19, 0x00, 0x50, 0x11, 0x00, 0x00

; FUNCTION 0x007fab14, declared_size=132, range_size=132, mode=arm
; class-group: b2DistanceJoint
; alias: _ZN15b2DistanceJointC2EPK18b2DistanceJointDef
; demangled: b2DistanceJoint::b2DistanceJoint(b2DistanceJointDef const*)
; decoder-mode: arm
007fab14  70 40 2d e9                                      push {r4, r5, r6, lr}
007fab18  70 60 9f e5                                      ldr r6, [pc, #0x70]
007fab1c  00 40 a0 e1                                      mov r4, r0
007fab20  01 50 a0 e1                                      mov r5, r1
007fab24  ad c1 ff eb                                      bl #0x7eb1e0
007fab28  64 20 9f e5                                      ldr r2, [pc, #0x64]
007fab2c  06 60 8f e0                                      add r6, pc, r6
007fab30  00 30 a0 e3                                      mov r3, #0
007fab34  02 20 96 e7                                      ldr r2, [r6, r2]
007fab38  04 00 a0 e1                                      mov r0, r4
007fab3c  08 20 82 e2                                      add r2, r2, #8
007fab40  00 20 84 e5                                      str r2, [r4]
007fab44  14 20 95 e5                                      ldr r2, [r5, #0x14]
007fab48  44 20 84 e5                                      str r2, [r4, #0x44]
007fab4c  18 20 95 e5                                      ldr r2, [r5, #0x18]
007fab50  48 20 84 e5                                      str r2, [r4, #0x48]
007fab54  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
007fab58  4c 20 84 e5                                      str r2, [r4, #0x4c]
007fab5c  20 20 95 e5                                      ldr r2, [r5, #0x20]
007fab60  50 20 84 e5                                      str r2, [r4, #0x50]
007fab64  24 20 95 e5                                      ldr r2, [r5, #0x24]
007fab68  74 20 84 e5                                      str r2, [r4, #0x74]
007fab6c  28 20 95 e5                                      ldr r2, [r5, #0x28]
007fab70  5c 20 84 e5                                      str r2, [r4, #0x5c]
007fab74  2c 20 95 e5                                      ldr r2, [r5, #0x2c]
007fab78  38 30 84 e5                                      str r3, [r4, #0x38]
007fab7c  6c 30 84 e5                                      str r3, [r4, #0x6c]
007fab80  60 20 84 e5                                      str r2, [r4, #0x60]
007fab84  64 30 84 e5                                      str r3, [r4, #0x64]
007fab88  68 30 84 e5                                      str r3, [r4, #0x68]
007fab8c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
007fab90  64 9f 19 00 50 11 00 00                          .byte 0x64, 0x9f, 0x19, 0x00, 0x50, 0x11, 0x00, 0x00
