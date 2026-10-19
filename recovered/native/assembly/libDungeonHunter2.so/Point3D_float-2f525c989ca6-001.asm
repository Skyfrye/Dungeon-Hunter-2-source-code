; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00312b6c, declared_size=140, range_size=140, mode=arm
; class-group: Point3D<float>
; alias: _ZNK7Point3DIfEeqERKS0_
; demangled: Point3D<float>::operator==(Point3D<float> const&) const
; decoder-mode: arm
00312b6c  70 40 2d e9                                      push {r4, r5, r6, lr}
00312b70  00 40 a0 e1                                      mov r4, r0
00312b74  01 50 a0 e1                                      mov r5, r1
00312b78  00 00 90 e5                                      ldr r0, [r0]
00312b7c  00 10 91 e5                                      ldr r1, [r1]
00312b80  09 ee ff eb                                      bl #0x30e3ac
00312b84  17 17 0b e3                                      movw r1, #0xb717
00312b88  02 01 c0 e3                                      bic r0, r0, #0x80000000
00312b8c  d1 18 43 e3                                      movt r1, #0x38d1
00312b90  dd ee ff eb                                      bl #0x30e70c
00312b94  00 00 50 e3                                      cmp r0, #0
00312b98  14 00 00 0a                                      beq #0x312bf0
00312b9c  04 10 95 e5                                      ldr r1, [r5, #4]
00312ba0  04 00 94 e5                                      ldr r0, [r4, #4]
00312ba4  00 ee ff eb                                      bl #0x30e3ac
00312ba8  17 17 0b e3                                      movw r1, #0xb717
00312bac  02 01 c0 e3                                      bic r0, r0, #0x80000000
00312bb0  d1 18 43 e3                                      movt r1, #0x38d1
00312bb4  d4 ee ff eb                                      bl #0x30e70c
00312bb8  00 00 50 e3                                      cmp r0, #0
00312bbc  0b 00 00 0a                                      beq #0x312bf0
00312bc0  08 10 95 e5                                      ldr r1, [r5, #8]
00312bc4  08 00 94 e5                                      ldr r0, [r4, #8]
00312bc8  f7 ed ff eb                                      bl #0x30e3ac
00312bcc  17 17 0b e3                                      movw r1, #0xb717
00312bd0  02 01 c0 e3                                      bic r0, r0, #0x80000000
00312bd4  d1 18 43 e3                                      movt r1, #0x38d1
00312bd8  cb ee ff eb                                      bl #0x30e70c
00312bdc  00 00 50 e3                                      cmp r0, #0
00312be0  00 00 a0 e3                                      mov r0, #0
00312be4  01 00 a0 13                                      movne r0, #1
00312be8  70 00 ef e6                                      uxtb r0, r0
00312bec  70 80 bd e8                                      pop {r4, r5, r6, pc}
00312bf0  00 00 a0 e3                                      mov r0, #0
00312bf4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00312da8, declared_size=88, range_size=88, mode=arm
; class-group: Point3D<float>
; alias: _ZN7Point3DIfE9transformERKN6glitch4core8CMatrix4IfEE
; demangled: Point3D<float>::transform(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
00312da8  10 40 2d e9                                      push {r4, lr}
00312dac  08 30 90 e5                                      ldr r3, [r0, #8]
00312db0  04 20 90 e5                                      ldr r2, [r0, #4]
00312db4  00 c0 90 e5                                      ldr ip, [r0]
00312db8  10 d0 4d e2                                      sub sp, sp, #0x10
00312dbc  00 40 a0 e1                                      mov r4, r0
00312dc0  08 30 8d e5                                      str r3, [sp, #8]
00312dc4  01 00 a0 e1                                      mov r0, r1
00312dc8  fe 35 a0 e3                                      mov r3, #0x3f800000
00312dcc  0d 10 a0 e1                                      mov r1, sp
00312dd0  04 20 8d e5                                      str r2, [sp, #4]
00312dd4  0c 30 8d e5                                      str r3, [sp, #0xc]
00312dd8  00 c0 8d e5                                      str ip, [sp]
00312ddc  85 ff ff eb                                      bl #0x312bf8
00312de0  08 20 9d e5                                      ldr r2, [sp, #8]
00312de4  00 30 9d e5                                      ldr r3, [sp]
00312de8  04 10 9d e5                                      ldr r1, [sp, #4]
00312dec  08 20 84 e5                                      str r2, [r4, #8]
00312df0  00 30 84 e5                                      str r3, [r4]
00312df4  04 10 84 e5                                      str r1, [r4, #4]
00312df8  10 d0 8d e2                                      add sp, sp, #0x10
00312dfc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00312f40, declared_size=280, range_size=280, mode=arm
; class-group: Point3D<float>
; alias: _ZNK7Point3DIfE8angleCosERKS0_
; demangled: Point3D<float>::angleCos(Point3D<float> const&) const
; decoder-mode: arm
00312f40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00312f44  00 70 90 e5                                      ldr r7, [r0]
00312f48  00 30 a0 e1                                      mov r3, r0
00312f4c  01 40 a0 e1                                      mov r4, r1
00312f50  04 60 90 e5                                      ldr r6, [r0, #4]
00312f54  00 10 91 e5                                      ldr r1, [r1]
00312f58  07 00 a0 e1                                      mov r0, r7
00312f5c  08 50 93 e5                                      ldr r5, [r3, #8]
00312f60  81 ef ff eb                                      bl #0x30ed6c
00312f64  04 10 94 e5                                      ldr r1, [r4, #4]
00312f68  00 80 a0 e1                                      mov r8, r0
00312f6c  06 00 a0 e1                                      mov r0, r6
00312f70  7d ef ff eb                                      bl #0x30ed6c
00312f74  00 10 a0 e1                                      mov r1, r0
00312f78  08 00 a0 e1                                      mov r0, r8
00312f7c  08 ef ff eb                                      bl #0x30eba4
00312f80  08 10 94 e5                                      ldr r1, [r4, #8]
00312f84  00 80 a0 e1                                      mov r8, r0
00312f88  05 00 a0 e1                                      mov r0, r5
00312f8c  76 ef ff eb                                      bl #0x30ed6c
00312f90  00 10 a0 e1                                      mov r1, r0
00312f94  08 00 a0 e1                                      mov r0, r8
00312f98  01 ef ff eb                                      bl #0x30eba4
00312f9c  07 10 a0 e1                                      mov r1, r7
00312fa0  00 80 a0 e1                                      mov r8, r0
00312fa4  07 00 a0 e1                                      mov r0, r7
00312fa8  6f ef ff eb                                      bl #0x30ed6c
00312fac  06 10 a0 e1                                      mov r1, r6
00312fb0  00 70 a0 e1                                      mov r7, r0
00312fb4  06 00 a0 e1                                      mov r0, r6
00312fb8  6b ef ff eb                                      bl #0x30ed6c
00312fbc  00 10 a0 e1                                      mov r1, r0
00312fc0  07 00 a0 e1                                      mov r0, r7
00312fc4  f6 ee ff eb                                      bl #0x30eba4
00312fc8  05 10 a0 e1                                      mov r1, r5
00312fcc  00 60 a0 e1                                      mov r6, r0
00312fd0  05 00 a0 e1                                      mov r0, r5
00312fd4  64 ef ff eb                                      bl #0x30ed6c
00312fd8  00 10 a0 e1                                      mov r1, r0
00312fdc  06 00 a0 e1                                      mov r0, r6
00312fe0  ef ee ff eb                                      bl #0x30eba4
00312fe4  4e ec ff eb                                      bl #0x30e124
00312fe8  00 50 a0 e1                                      mov r5, r0
00312fec  00 00 94 e5                                      ldr r0, [r4]
00312ff0  04 70 94 e5                                      ldr r7, [r4, #4]
00312ff4  08 60 94 e5                                      ldr r6, [r4, #8]
00312ff8  00 10 a0 e1                                      mov r1, r0
00312ffc  5a ef ff eb                                      bl #0x30ed6c
00313000  07 10 a0 e1                                      mov r1, r7
00313004  00 40 a0 e1                                      mov r4, r0
00313008  07 00 a0 e1                                      mov r0, r7
0031300c  56 ef ff eb                                      bl #0x30ed6c
00313010  00 10 a0 e1                                      mov r1, r0
00313014  04 00 a0 e1                                      mov r0, r4
00313018  e1 ee ff eb                                      bl #0x30eba4
0031301c  06 10 a0 e1                                      mov r1, r6
00313020  00 40 a0 e1                                      mov r4, r0
00313024  06 00 a0 e1                                      mov r0, r6
00313028  4f ef ff eb                                      bl #0x30ed6c
0031302c  00 10 a0 e1                                      mov r1, r0
00313030  04 00 a0 e1                                      mov r0, r4
00313034  da ee ff eb                                      bl #0x30eba4
00313038  39 ec ff eb                                      bl #0x30e124
0031303c  00 10 a0 e1                                      mov r1, r0
00313040  05 00 a0 e1                                      mov r0, r5
00313044  48 ef ff eb                                      bl #0x30ed6c
00313048  00 10 a0 e1                                      mov r1, r0
0031304c  08 00 a0 e1                                      mov r0, r8
00313050  0f ef ff eb                                      bl #0x30ec94
00313054  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00313058, declared_size=16, range_size=16, mode=arm
; class-group: Point3D<float>
; alias: _ZNK7Point3DIfE5angleERKS0_
; demangled: Point3D<float>::angle(Point3D<float> const&) const
; decoder-mode: arm
00313058  10 40 2d e9                                      push {r4, lr}
0031305c  b7 ff ff eb                                      bl #0x312f40
00313060  10 40 bd e8                                      pop {r4, lr}
00313064  dc ec ff ea                                      b #0x30e3dc

; FUNCTION 0x0034d04c, declared_size=68, range_size=68, mode=arm
; class-group: Point3D<float>
; alias: _ZN7Point3DIfEdVERKf
; demangled: Point3D<float>::operator/=(float const&)
; decoder-mode: arm
0034d04c  70 40 2d e9                                      push {r4, r5, r6, lr}
0034d050  00 40 a0 e1                                      mov r4, r0
0034d054  01 50 a0 e1                                      mov r5, r1
0034d058  00 00 90 e5                                      ldr r0, [r0]
0034d05c  00 10 91 e5                                      ldr r1, [r1]
0034d060  0b 07 ff eb                                      bl #0x30ec94
0034d064  00 00 84 e5                                      str r0, [r4]
0034d068  00 10 95 e5                                      ldr r1, [r5]
0034d06c  04 00 94 e5                                      ldr r0, [r4, #4]
0034d070  07 07 ff eb                                      bl #0x30ec94
0034d074  04 00 84 e5                                      str r0, [r4, #4]
0034d078  00 10 95 e5                                      ldr r1, [r5]
0034d07c  08 00 94 e5                                      ldr r0, [r4, #8]
0034d080  03 07 ff eb                                      bl #0x30ec94
0034d084  08 00 84 e5                                      str r0, [r4, #8]
0034d088  04 00 a0 e1                                      mov r0, r4
0034d08c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0034d0b0, declared_size=116, range_size=116, mode=arm
; class-group: Point3D<float>
; alias: _ZN7Point3DIfE9normalizeEv
; demangled: Point3D<float>::normalize()
; decoder-mode: arm
0034d0b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0034d0b4  00 40 a0 e1                                      mov r4, r0
0034d0b8  00 00 90 e5                                      ldr r0, [r0]
0034d0bc  0c d0 4d e2                                      sub sp, sp, #0xc
0034d0c0  04 70 94 e5                                      ldr r7, [r4, #4]
0034d0c4  00 10 a0 e1                                      mov r1, r0
0034d0c8  27 07 ff eb                                      bl #0x30ed6c
0034d0cc  07 10 a0 e1                                      mov r1, r7
0034d0d0  00 50 a0 e1                                      mov r5, r0
0034d0d4  07 00 a0 e1                                      mov r0, r7
0034d0d8  23 07 ff eb                                      bl #0x30ed6c
0034d0dc  00 10 a0 e1                                      mov r1, r0
0034d0e0  05 00 a0 e1                                      mov r0, r5
0034d0e4  ae 06 ff eb                                      bl #0x30eba4
0034d0e8  08 60 94 e5                                      ldr r6, [r4, #8]
0034d0ec  00 50 a0 e1                                      mov r5, r0
0034d0f0  06 10 a0 e1                                      mov r1, r6
0034d0f4  06 00 a0 e1                                      mov r0, r6
0034d0f8  1b 07 ff eb                                      bl #0x30ed6c
0034d0fc  00 10 a0 e1                                      mov r1, r0
0034d100  05 00 a0 e1                                      mov r0, r5
0034d104  a6 06 ff eb                                      bl #0x30eba4
0034d108  05 04 ff eb                                      bl #0x30e124
0034d10c  08 10 8d e2                                      add r1, sp, #8
0034d110  04 00 21 e5                                      str r0, [r1, #-4]!
0034d114  04 00 a0 e1                                      mov r0, r4
0034d118  cb ff ff eb                                      bl #0x34d04c
0034d11c  0c d0 8d e2                                      add sp, sp, #0xc
0034d120  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003a4118, declared_size=136, range_size=136, mode=arm
; class-group: Point3D<float>
; alias: _ZNK7Point3DIfE8distanceERKS0_
; demangled: Point3D<float>::distance(Point3D<float> const&) const
; decoder-mode: arm
003a4118  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003a411c  00 40 a0 e1                                      mov r4, r0
003a4120  01 50 a0 e1                                      mov r5, r1
003a4124  00 00 90 e5                                      ldr r0, [r0]
003a4128  00 10 91 e5                                      ldr r1, [r1]
003a412c  9e a8 fd eb                                      bl #0x30e3ac
003a4130  04 10 95 e5                                      ldr r1, [r5, #4]
003a4134  00 70 a0 e1                                      mov r7, r0
003a4138  04 00 94 e5                                      ldr r0, [r4, #4]
003a413c  9a a8 fd eb                                      bl #0x30e3ac
003a4140  08 10 95 e5                                      ldr r1, [r5, #8]
003a4144  00 60 a0 e1                                      mov r6, r0
003a4148  08 00 94 e5                                      ldr r0, [r4, #8]
003a414c  96 a8 fd eb                                      bl #0x30e3ac
003a4150  07 10 a0 e1                                      mov r1, r7
003a4154  00 50 a0 e1                                      mov r5, r0
003a4158  07 00 a0 e1                                      mov r0, r7
003a415c  02 ab fd eb                                      bl #0x30ed6c
003a4160  06 10 a0 e1                                      mov r1, r6
003a4164  00 40 a0 e1                                      mov r4, r0
003a4168  06 00 a0 e1                                      mov r0, r6
003a416c  fe aa fd eb                                      bl #0x30ed6c
003a4170  00 10 a0 e1                                      mov r1, r0
003a4174  04 00 a0 e1                                      mov r0, r4
003a4178  89 aa fd eb                                      bl #0x30eba4
003a417c  05 10 a0 e1                                      mov r1, r5
003a4180  00 40 a0 e1                                      mov r4, r0
003a4184  05 00 a0 e1                                      mov r0, r5
003a4188  f7 aa fd eb                                      bl #0x30ed6c
003a418c  00 10 a0 e1                                      mov r1, r0
003a4190  04 00 a0 e1                                      mov r0, r4
003a4194  82 aa fd eb                                      bl #0x30eba4
003a4198  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003a419c  e0 a7 fd ea                                      b #0x30e124

; FUNCTION 0x003e5740, declared_size=140, range_size=140, mode=arm
; class-group: Point3D<float>
; alias: _ZN7Point3DIfE8rotateXYEf
; demangled: Point3D<float>::rotateXY(float)
; decoder-mode: arm
003e5740  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e5744  00 40 a0 e1                                      mov r4, r0
003e5748  01 00 a0 e1                                      mov r0, r1
003e574c  01 60 a0 e1                                      mov r6, r1
003e5750  ff a3 fc eb                                      bl #0x30e754
003e5754  00 50 a0 e1                                      mov r5, r0
003e5758  06 00 a0 e1                                      mov r0, r6
003e575c  e9 a4 fc eb                                      bl #0x30eb08
003e5760  00 70 94 e5                                      ldr r7, [r4]
003e5764  00 80 a0 e1                                      mov r8, r0
003e5768  05 10 a0 e1                                      mov r1, r5
003e576c  07 00 a0 e1                                      mov r0, r7
003e5770  7d a5 fc eb                                      bl #0x30ed6c
003e5774  04 60 94 e5                                      ldr r6, [r4, #4]
003e5778  00 a0 a0 e1                                      mov sl, r0
003e577c  08 10 a0 e1                                      mov r1, r8
003e5780  06 00 a0 e1                                      mov r0, r6
003e5784  78 a5 fc eb                                      bl #0x30ed6c
003e5788  00 10 a0 e1                                      mov r1, r0
003e578c  0a 00 a0 e1                                      mov r0, sl
003e5790  05 a3 fc eb                                      bl #0x30e3ac
003e5794  08 10 a0 e1                                      mov r1, r8
003e5798  00 00 84 e5                                      str r0, [r4]
003e579c  07 00 a0 e1                                      mov r0, r7
003e57a0  71 a5 fc eb                                      bl #0x30ed6c
003e57a4  05 10 a0 e1                                      mov r1, r5
003e57a8  00 70 a0 e1                                      mov r7, r0
003e57ac  06 00 a0 e1                                      mov r0, r6
003e57b0  6d a5 fc eb                                      bl #0x30ed6c
003e57b4  00 10 a0 e1                                      mov r1, r0
003e57b8  07 00 a0 e1                                      mov r0, r7
003e57bc  f8 a4 fc eb                                      bl #0x30eba4
003e57c0  04 00 84 e5                                      str r0, [r4, #4]
003e57c4  04 00 a0 e1                                      mov r0, r4
003e57c8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00418c48, declared_size=224, range_size=224, mode=arm
; class-group: Point3D<float>
; alias: _ZN7Point3DIfE10rotateXYByEfRKS0_
; demangled: Point3D<float>::rotateXYBy(float, Point3D<float> const&)
; decoder-mode: arm
00418c48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00418c4c  00 40 a0 e1                                      mov r4, r0
00418c50  01 00 a0 e1                                      mov r0, r1
00418c54  35 1a 0f e3                                      movw r1, #0xfa35
00418c58  8e 1c 43 e3                                      movt r1, #0x3c8e
00418c5c  02 50 a0 e1                                      mov r5, r2
00418c60  41 d8 fb eb                                      bl #0x30ed6c
00418c64  00 60 a0 e1                                      mov r6, r0
00418c68  b9 d6 fb eb                                      bl #0x30e754
00418c6c  00 a0 a0 e1                                      mov sl, r0
00418c70  06 00 a0 e1                                      mov r0, r6
00418c74  a3 d7 fb eb                                      bl #0x30eb08
00418c78  00 10 95 e5                                      ldr r1, [r5]
00418c7c  00 90 a0 e1                                      mov sb, r0
00418c80  00 00 94 e5                                      ldr r0, [r4]
00418c84  c8 d5 fb eb                                      bl #0x30e3ac
00418c88  00 00 84 e5                                      str r0, [r4]
00418c8c  04 10 95 e5                                      ldr r1, [r5, #4]
00418c90  00 70 a0 e1                                      mov r7, r0
00418c94  04 00 94 e5                                      ldr r0, [r4, #4]
00418c98  c3 d5 fb eb                                      bl #0x30e3ac
00418c9c  0a 10 a0 e1                                      mov r1, sl
00418ca0  00 60 a0 e1                                      mov r6, r0
00418ca4  04 00 84 e5                                      str r0, [r4, #4]
00418ca8  07 00 a0 e1                                      mov r0, r7
00418cac  2e d8 fb eb                                      bl #0x30ed6c
00418cb0  09 10 a0 e1                                      mov r1, sb
00418cb4  00 80 a0 e1                                      mov r8, r0
00418cb8  06 00 a0 e1                                      mov r0, r6
00418cbc  2a d8 fb eb                                      bl #0x30ed6c
00418cc0  00 10 a0 e1                                      mov r1, r0
00418cc4  08 00 a0 e1                                      mov r0, r8
00418cc8  b7 d5 fb eb                                      bl #0x30e3ac
00418ccc  09 10 a0 e1                                      mov r1, sb
00418cd0  00 80 a0 e1                                      mov r8, r0
00418cd4  07 00 a0 e1                                      mov r0, r7
00418cd8  23 d8 fb eb                                      bl #0x30ed6c
00418cdc  0a 10 a0 e1                                      mov r1, sl
00418ce0  00 70 a0 e1                                      mov r7, r0
00418ce4  06 00 a0 e1                                      mov r0, r6
00418ce8  1f d8 fb eb                                      bl #0x30ed6c
00418cec  00 10 a0 e1                                      mov r1, r0
00418cf0  07 00 a0 e1                                      mov r0, r7
00418cf4  aa d7 fb eb                                      bl #0x30eba4
00418cf8  00 80 84 e5                                      str r8, [r4]
00418cfc  04 00 84 e5                                      str r0, [r4, #4]
00418d00  00 10 95 e5                                      ldr r1, [r5]
00418d04  00 60 a0 e1                                      mov r6, r0
00418d08  08 00 a0 e1                                      mov r0, r8
00418d0c  a4 d7 fb eb                                      bl #0x30eba4
00418d10  00 00 84 e5                                      str r0, [r4]
00418d14  04 10 95 e5                                      ldr r1, [r5, #4]
00418d18  06 00 a0 e1                                      mov r0, r6
00418d1c  a0 d7 fb eb                                      bl #0x30eba4
00418d20  04 00 84 e5                                      str r0, [r4, #4]
00418d24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
