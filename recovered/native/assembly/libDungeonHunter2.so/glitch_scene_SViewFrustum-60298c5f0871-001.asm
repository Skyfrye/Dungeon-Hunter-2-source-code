; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035bec8, declared_size=400, range_size=400, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZNK6glitch5scene12SViewFrustum10intersectsERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::SViewFrustum::intersects(glitch::core::aabbox3d<float> const&) const
; decoder-mode: arm
0035bec8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035becc  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0035bed0  1c d0 4d e2                                      sub sp, sp, #0x1c
0035bed4  01 50 a0 e1                                      mov r5, r1
0035bed8  00 30 8d e5                                      str r3, [sp]
0035bedc  00 40 a0 e1                                      mov r4, r0
0035bee0  03 10 a0 e1                                      mov r1, r3
0035bee4  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
0035bee8  af ca fe eb                                      bl #0x30e9ac
0035beec  00 00 50 e3                                      cmp r0, #0
0035bef0  06 00 00 0a                                      beq #0x35bf10
0035bef4  10 30 95 e5                                      ldr r3, [r5, #0x10]
0035bef8  04 30 8d e5                                      str r3, [sp, #4]
0035befc  70 00 94 e5                                      ldr r0, [r4, #0x70]
0035bf00  03 10 a0 e1                                      mov r1, r3
0035bf04  a8 ca fe eb                                      bl #0x30e9ac
0035bf08  00 00 50 e3                                      cmp r0, #0
0035bf0c  02 00 00 1a                                      bne #0x35bf1c
0035bf10  00 00 a0 e3                                      mov r0, #0
0035bf14  1c d0 8d e2                                      add sp, sp, #0x1c
0035bf18  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0035bf1c  14 30 95 e5                                      ldr r3, [r5, #0x14]
0035bf20  0c 30 8d e5                                      str r3, [sp, #0xc]
0035bf24  74 00 94 e5                                      ldr r0, [r4, #0x74]
0035bf28  03 10 a0 e1                                      mov r1, r3
0035bf2c  9e ca fe eb                                      bl #0x30e9ac
0035bf30  00 00 50 e3                                      cmp r0, #0
0035bf34  f5 ff ff 0a                                      beq #0x35bf10
0035bf38  00 30 95 e5                                      ldr r3, [r5]
0035bf3c  14 30 8d e5                                      str r3, [sp, #0x14]
0035bf40  78 00 94 e5                                      ldr r0, [r4, #0x78]
0035bf44  03 10 a0 e1                                      mov r1, r3
0035bf48  59 c9 fe eb                                      bl #0x30e4b4
0035bf4c  00 00 50 e3                                      cmp r0, #0
0035bf50  ee ff ff 0a                                      beq #0x35bf10
0035bf54  04 30 95 e5                                      ldr r3, [r5, #4]
0035bf58  08 30 8d e5                                      str r3, [sp, #8]
0035bf5c  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
0035bf60  03 10 a0 e1                                      mov r1, r3
0035bf64  52 c9 fe eb                                      bl #0x30e4b4
0035bf68  00 00 50 e3                                      cmp r0, #0
0035bf6c  e7 ff ff 0a                                      beq #0x35bf10
0035bf70  08 50 95 e5                                      ldr r5, [r5, #8]
0035bf74  10 50 8d e5                                      str r5, [sp, #0x10]
0035bf78  80 00 94 e5                                      ldr r0, [r4, #0x80]
0035bf7c  05 10 a0 e1                                      mov r1, r5
0035bf80  4b c9 fe eb                                      bl #0x30e4b4
0035bf84  00 00 50 e3                                      cmp r0, #0
0035bf88  e0 ff ff 0a                                      beq #0x35bf10
0035bf8c  00 b0 a0 e3                                      mov fp, #0
0035bf90  0c 70 94 e5                                      ldr r7, [r4, #0xc]
0035bf94  00 10 a0 e3                                      mov r1, #0
0035bf98  07 00 a0 e1                                      mov r0, r7
0035bf9c  44 c9 fe eb                                      bl #0x30e4b4
0035bfa0  10 60 94 e5                                      ldr r6, [r4, #0x10]
0035bfa4  00 00 50 e3                                      cmp r0, #0
0035bfa8  00 10 a0 e3                                      mov r1, #0
0035bfac  06 00 a0 e1                                      mov r0, r6
0035bfb0  14 90 9d 15                                      ldrne sb, [sp, #0x14]
0035bfb4  00 90 9d 05                                      ldreq sb, [sp]
0035bfb8  3d c9 fe eb                                      bl #0x30e4b4
0035bfbc  14 50 94 e5                                      ldr r5, [r4, #0x14]
0035bfc0  00 00 50 e3                                      cmp r0, #0
0035bfc4  00 10 a0 e3                                      mov r1, #0
0035bfc8  05 00 a0 e1                                      mov r0, r5
0035bfcc  04 a0 9d 05                                      ldreq sl, [sp, #4]
0035bfd0  08 a0 9d 15                                      ldrne sl, [sp, #8]
0035bfd4  36 c9 fe eb                                      bl #0x30e4b4
0035bfd8  09 10 a0 e1                                      mov r1, sb
0035bfdc  00 00 50 e3                                      cmp r0, #0
0035bfe0  07 00 a0 e1                                      mov r0, r7
0035bfe4  0c 80 9d 05                                      ldreq r8, [sp, #0xc]
0035bfe8  10 80 9d 15                                      ldrne r8, [sp, #0x10]
0035bfec  5e cb fe eb                                      bl #0x30ed6c
0035bff0  0a 10 a0 e1                                      mov r1, sl
0035bff4  00 70 a0 e1                                      mov r7, r0
0035bff8  06 00 a0 e1                                      mov r0, r6
0035bffc  5a cb fe eb                                      bl #0x30ed6c
0035c000  00 10 a0 e1                                      mov r1, r0
0035c004  07 00 a0 e1                                      mov r0, r7
0035c008  e5 ca fe eb                                      bl #0x30eba4
0035c00c  08 10 a0 e1                                      mov r1, r8
0035c010  00 60 a0 e1                                      mov r6, r0
0035c014  05 00 a0 e1                                      mov r0, r5
0035c018  53 cb fe eb                                      bl #0x30ed6c
0035c01c  00 10 a0 e1                                      mov r1, r0
0035c020  06 00 a0 e1                                      mov r0, r6
0035c024  de ca fe eb                                      bl #0x30eba4
0035c028  18 10 94 e5                                      ldr r1, [r4, #0x18]
0035c02c  dc ca fe eb                                      bl #0x30eba4
0035c030  00 10 a0 e3                                      mov r1, #0
0035c034  af c8 fe eb                                      bl #0x30e2f8
0035c038  00 00 50 e3                                      cmp r0, #0
0035c03c  b3 ff ff 1a                                      bne #0x35bf10
0035c040  01 b0 8b e2                                      add fp, fp, #1
0035c044  06 00 5b e3                                      cmp fp, #6
0035c048  10 40 84 e2                                      add r4, r4, #0x10
0035c04c  cf ff ff 1a                                      bne #0x35bf90
0035c050  01 00 a0 e3                                      mov r0, #1
0035c054  ae ff ff ea                                      b #0x35bf14

; FUNCTION 0x0050cacc, declared_size=580, range_size=580, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZNK6glitch5scene12SViewFrustum25intersectsWithoutBoxTest3ERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::SViewFrustum::intersectsWithoutBoxTest3(glitch::core::aabbox3d<float> const&) const
; decoder-mode: arm
0050cacc  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
0050cad0  2c 80 90 e5                                      ldr r8, [r0, #0x2c]
0050cad4  01 50 a0 e1                                      mov r5, r1
0050cad8  00 40 a0 e1                                      mov r4, r0
0050cadc  00 10 a0 e3                                      mov r1, #0
0050cae0  08 00 a0 e1                                      mov r0, r8
0050cae4  72 06 f8 eb                                      bl #0x30e4b4
0050cae8  30 70 94 e5                                      ldr r7, [r4, #0x30]
0050caec  00 00 50 e3                                      cmp r0, #0
0050caf0  00 10 a0 e3                                      mov r1, #0
0050caf4  07 00 a0 e1                                      mov r0, r7
0050caf8  00 b0 95 15                                      ldrne fp, [r5]
0050cafc  0c b0 95 05                                      ldreq fp, [r5, #0xc]
0050cb00  6b 06 f8 eb                                      bl #0x30e4b4
0050cb04  34 60 94 e5                                      ldr r6, [r4, #0x34]
0050cb08  00 00 50 e3                                      cmp r0, #0
0050cb0c  00 10 a0 e3                                      mov r1, #0
0050cb10  06 00 a0 e1                                      mov r0, r6
0050cb14  04 90 95 15                                      ldrne sb, [r5, #4]
0050cb18  10 90 95 05                                      ldreq sb, [r5, #0x10]
0050cb1c  64 06 f8 eb                                      bl #0x30e4b4
0050cb20  0b 10 a0 e1                                      mov r1, fp
0050cb24  00 00 50 e3                                      cmp r0, #0
0050cb28  08 00 a0 e1                                      mov r0, r8
0050cb2c  08 a0 95 15                                      ldrne sl, [r5, #8]
0050cb30  14 a0 95 05                                      ldreq sl, [r5, #0x14]
0050cb34  8c 08 f8 eb                                      bl #0x30ed6c
0050cb38  09 10 a0 e1                                      mov r1, sb
0050cb3c  00 80 a0 e1                                      mov r8, r0
0050cb40  07 00 a0 e1                                      mov r0, r7
0050cb44  88 08 f8 eb                                      bl #0x30ed6c
0050cb48  00 10 a0 e1                                      mov r1, r0
0050cb4c  08 00 a0 e1                                      mov r0, r8
0050cb50  13 08 f8 eb                                      bl #0x30eba4
0050cb54  0a 10 a0 e1                                      mov r1, sl
0050cb58  00 70 a0 e1                                      mov r7, r0
0050cb5c  06 00 a0 e1                                      mov r0, r6
0050cb60  81 08 f8 eb                                      bl #0x30ed6c
0050cb64  00 10 a0 e1                                      mov r1, r0
0050cb68  07 00 a0 e1                                      mov r0, r7
0050cb6c  0c 08 f8 eb                                      bl #0x30eba4
0050cb70  38 10 94 e5                                      ldr r1, [r4, #0x38]
0050cb74  0a 08 f8 eb                                      bl #0x30eba4
0050cb78  00 10 a0 e3                                      mov r1, #0
0050cb7c  dd 05 f8 eb                                      bl #0x30e2f8
0050cb80  00 00 50 e3                                      cmp r0, #0
0050cb84  2b 00 00 1a                                      bne #0x50cc38
0050cb88  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0050cb8c  00 10 a0 e3                                      mov r1, #0
0050cb90  06 00 a0 e1                                      mov r0, r6
0050cb94  46 06 f8 eb                                      bl #0x30e4b4
0050cb98  00 00 50 e3                                      cmp r0, #0
0050cb9c  00 b0 95 15                                      ldrne fp, [r5]
0050cba0  56 00 00 0a                                      beq #0x50cd00
0050cba4  40 80 94 e5                                      ldr r8, [r4, #0x40]
0050cba8  00 10 a0 e3                                      mov r1, #0
0050cbac  08 00 a0 e1                                      mov r0, r8
0050cbb0  3f 06 f8 eb                                      bl #0x30e4b4
0050cbb4  44 70 94 e5                                      ldr r7, [r4, #0x44]
0050cbb8  00 00 50 e3                                      cmp r0, #0
0050cbbc  00 10 a0 e3                                      mov r1, #0
0050cbc0  07 00 a0 e1                                      mov r0, r7
0050cbc4  04 90 95 15                                      ldrne sb, [r5, #4]
0050cbc8  10 90 95 05                                      ldreq sb, [r5, #0x10]
0050cbcc  38 06 f8 eb                                      bl #0x30e4b4
0050cbd0  0b 10 a0 e1                                      mov r1, fp
0050cbd4  00 00 50 e3                                      cmp r0, #0
0050cbd8  06 00 a0 e1                                      mov r0, r6
0050cbdc  08 a0 95 15                                      ldrne sl, [r5, #8]
0050cbe0  14 a0 95 05                                      ldreq sl, [r5, #0x14]
0050cbe4  60 08 f8 eb                                      bl #0x30ed6c
0050cbe8  09 10 a0 e1                                      mov r1, sb
0050cbec  00 60 a0 e1                                      mov r6, r0
0050cbf0  08 00 a0 e1                                      mov r0, r8
0050cbf4  5c 08 f8 eb                                      bl #0x30ed6c
0050cbf8  00 10 a0 e1                                      mov r1, r0
0050cbfc  06 00 a0 e1                                      mov r0, r6
0050cc00  e7 07 f8 eb                                      bl #0x30eba4
0050cc04  0a 10 a0 e1                                      mov r1, sl
0050cc08  00 60 a0 e1                                      mov r6, r0
0050cc0c  07 00 a0 e1                                      mov r0, r7
0050cc10  55 08 f8 eb                                      bl #0x30ed6c
0050cc14  00 10 a0 e1                                      mov r1, r0
0050cc18  06 00 a0 e1                                      mov r0, r6
0050cc1c  e0 07 f8 eb                                      bl #0x30eba4
0050cc20  48 10 94 e5                                      ldr r1, [r4, #0x48]
0050cc24  de 07 f8 eb                                      bl #0x30eba4
0050cc28  00 10 a0 e3                                      mov r1, #0
0050cc2c  b1 05 f8 eb                                      bl #0x30e2f8
0050cc30  00 00 50 e3                                      cmp r0, #0
0050cc34  01 00 00 0a                                      beq #0x50cc40
0050cc38  00 00 a0 e3                                      mov r0, #0
0050cc3c  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050cc40  0c 60 94 e5                                      ldr r6, [r4, #0xc]
0050cc44  00 10 a0 e3                                      mov r1, #0
0050cc48  06 00 a0 e1                                      mov r0, r6
0050cc4c  18 06 f8 eb                                      bl #0x30e4b4
0050cc50  00 00 50 e3                                      cmp r0, #0
0050cc54  00 b0 95 15                                      ldrne fp, [r5]
0050cc58  2a 00 00 0a                                      beq #0x50cd08
0050cc5c  10 80 94 e5                                      ldr r8, [r4, #0x10]
0050cc60  00 10 a0 e3                                      mov r1, #0
0050cc64  08 00 a0 e1                                      mov r0, r8
0050cc68  11 06 f8 eb                                      bl #0x30e4b4
0050cc6c  14 70 94 e5                                      ldr r7, [r4, #0x14]
0050cc70  00 00 50 e3                                      cmp r0, #0
0050cc74  00 10 a0 e3                                      mov r1, #0
0050cc78  07 00 a0 e1                                      mov r0, r7
0050cc7c  04 90 95 15                                      ldrne sb, [r5, #4]
0050cc80  10 90 95 05                                      ldreq sb, [r5, #0x10]
0050cc84  0a 06 f8 eb                                      bl #0x30e4b4
0050cc88  0b 10 a0 e1                                      mov r1, fp
0050cc8c  00 00 50 e3                                      cmp r0, #0
0050cc90  06 00 a0 e1                                      mov r0, r6
0050cc94  08 a0 95 15                                      ldrne sl, [r5, #8]
0050cc98  14 a0 95 05                                      ldreq sl, [r5, #0x14]
0050cc9c  32 08 f8 eb                                      bl #0x30ed6c
0050cca0  09 10 a0 e1                                      mov r1, sb
0050cca4  00 50 a0 e1                                      mov r5, r0
0050cca8  08 00 a0 e1                                      mov r0, r8
0050ccac  2e 08 f8 eb                                      bl #0x30ed6c
0050ccb0  00 10 a0 e1                                      mov r1, r0
0050ccb4  05 00 a0 e1                                      mov r0, r5
0050ccb8  b9 07 f8 eb                                      bl #0x30eba4
0050ccbc  0a 10 a0 e1                                      mov r1, sl
0050ccc0  00 50 a0 e1                                      mov r5, r0
0050ccc4  07 00 a0 e1                                      mov r0, r7
0050ccc8  27 08 f8 eb                                      bl #0x30ed6c
0050cccc  00 10 a0 e1                                      mov r1, r0
0050ccd0  05 00 a0 e1                                      mov r0, r5
0050ccd4  b2 07 f8 eb                                      bl #0x30eba4
0050ccd8  18 10 94 e5                                      ldr r1, [r4, #0x18]
0050ccdc  b0 07 f8 eb                                      bl #0x30eba4
0050cce0  00 10 a0 e3                                      mov r1, #0
0050cce4  83 05 f8 eb                                      bl #0x30e2f8
0050cce8  00 00 50 e3                                      cmp r0, #0
0050ccec  00 00 a0 e3                                      mov r0, #0
0050ccf0  01 00 a0 13                                      movne r0, #1
0050ccf4  01 00 20 e2                                      eor r0, r0, #1
0050ccf8  70 00 ef e6                                      uxtb r0, r0
0050ccfc  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
0050cd00  0c b0 95 e5                                      ldr fp, [r5, #0xc]
0050cd04  a6 ff ff ea                                      b #0x50cba4
0050cd08  0c b0 95 e5                                      ldr fp, [r5, #0xc]
0050cd0c  d2 ff ff ea                                      b #0x50cc5c

; FUNCTION 0x00582348, declared_size=100, range_size=100, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZN6glitch5scene12SViewFrustum17setTransformStateENS_5video22E_TRANSFORMATION_STATEE
; demangled: glitch::scene::SViewFrustum::setTransformState(glitch::video::E_TRANSFORMATION_STATE)
; decoder-mode: arm
00582348  00 00 51 e3                                      cmp r1, #0
0058234c  70 40 2d e9                                      push {r4, r5, r6, lr}
00582350  00 30 a0 e1                                      mov r3, r0
00582354  0c 00 00 1a                                      bne #0x58238c
00582358  84 50 80 e2                                      add r5, r0, #0x84
0058235c  65 4f 80 e2                                      add r4, r0, #0x194
00582360  43 1f 80 e2                                      add r1, r0, #0x10c
00582364  05 20 a0 e1                                      mov r2, r5
00582368  15 0e 80 e2                                      add r0, r0, #0x150
0058236c  b8 31 fa eb                                      bl #0x40ea54
00582370  05 10 a0 e1                                      mov r1, r5
00582374  04 00 a0 e1                                      mov r0, r4
00582378  41 20 a0 e3                                      mov r2, #0x41
0058237c  39 31 f6 eb                                      bl #0x30e868
00582380  04 00 a0 e1                                      mov r0, r4
00582384  70 40 bd e8                                      pop {r4, r5, r6, lr}
00582388  da ff ff ea                                      b #0x5822f8
0058238c  01 00 51 e3                                      cmp r1, #1
00582390  00 00 00 0a                                      beq #0x582398
00582394  70 80 bd e8                                      pop {r4, r5, r6, pc}
00582398  c8 20 80 e2                                      add r2, r0, #0xc8
0058239c  15 1e 83 e2                                      add r1, r3, #0x150
005823a0  76 0f 80 e2                                      add r0, r0, #0x1d8
005823a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
005823a8  c6 ff ff ea                                      b #0x5822c8

; FUNCTION 0x005823d4, declared_size=748, range_size=748, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZN6glitch5scene12SViewFrustum22recalculateBoundingBoxEv
; demangled: glitch::scene::SViewFrustum::recalculateBoundingBox()
; decoder-mode: arm
005823d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005823d8  00 10 90 e5                                      ldr r1, [r0]
005823dc  04 20 90 e5                                      ldr r2, [r0, #4]
005823e0  08 30 90 e5                                      ldr r3, [r0, #8]
005823e4  30 d0 4d e2                                      sub sp, sp, #0x30
005823e8  0c 50 80 e2                                      add r5, r0, #0xc
005823ec  5c 60 80 e2                                      add r6, r0, #0x5c
005823f0  2c 70 80 e2                                      add r7, r0, #0x2c
005823f4  00 40 a0 e1                                      mov r4, r0
005823f8  00 c0 a0 e3                                      mov ip, #0
005823fc  6c 10 80 e5                                      str r1, [r0, #0x6c]
00582400  70 20 80 e5                                      str r2, [r0, #0x70]
00582404  74 30 80 e5                                      str r3, [r0, #0x74]
00582408  78 10 80 e5                                      str r1, [r0, #0x78]
0058240c  7c 20 80 e5                                      str r2, [r0, #0x7c]
00582410  80 30 80 e5                                      str r3, [r0, #0x80]
00582414  07 20 a0 e1                                      mov r2, r7
00582418  24 30 8d e2                                      add r3, sp, #0x24
0058241c  06 10 a0 e1                                      mov r1, r6
00582420  05 00 a0 e1                                      mov r0, r5
00582424  2c c0 8d e5                                      str ip, [sp, #0x2c]
00582428  24 c0 8d e5                                      str ip, [sp, #0x24]
0058242c  28 c0 8d e5                                      str ip, [sp, #0x28]
00582430  68 fc f6 eb                                      bl #0x3415d8
00582434  24 90 9d e5                                      ldr sb, [sp, #0x24]
00582438  78 10 94 e5                                      ldr r1, [r4, #0x78]
0058243c  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00582440  09 00 a0 e1                                      mov r0, sb
00582444  ab 2f f6 eb                                      bl #0x30e2f8
00582448  00 00 50 e3                                      cmp r0, #0
0058244c  2c 80 9d e5                                      ldr r8, [sp, #0x2c]
00582450  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00582454  78 90 84 15                                      strne sb, [r4, #0x78]
00582458  0a 00 a0 e1                                      mov r0, sl
0058245c  a5 2f f6 eb                                      bl #0x30e2f8
00582460  00 00 50 e3                                      cmp r0, #0
00582464  80 10 94 e5                                      ldr r1, [r4, #0x80]
00582468  7c a0 84 15                                      strne sl, [r4, #0x7c]
0058246c  08 00 a0 e1                                      mov r0, r8
00582470  a0 2f f6 eb                                      bl #0x30e2f8
00582474  00 00 50 e3                                      cmp r0, #0
00582478  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
0058247c  80 80 84 15                                      strne r8, [r4, #0x80]
00582480  09 00 a0 e1                                      mov r0, sb
00582484  a0 30 f6 eb                                      bl #0x30e70c
00582488  00 00 50 e3                                      cmp r0, #0
0058248c  70 10 94 e5                                      ldr r1, [r4, #0x70]
00582490  6c 90 84 15                                      strne sb, [r4, #0x6c]
00582494  0a 00 a0 e1                                      mov r0, sl
00582498  9b 30 f6 eb                                      bl #0x30e70c
0058249c  00 00 50 e3                                      cmp r0, #0
005824a0  74 10 94 e5                                      ldr r1, [r4, #0x74]
005824a4  70 a0 84 15                                      strne sl, [r4, #0x70]
005824a8  08 00 a0 e1                                      mov r0, r8
005824ac  96 30 f6 eb                                      bl #0x30e70c
005824b0  00 00 50 e3                                      cmp r0, #0
005824b4  74 80 84 15                                      strne r8, [r4, #0x74]
005824b8  3c 80 84 e2                                      add r8, r4, #0x3c
005824bc  00 c0 a0 e3                                      mov ip, #0
005824c0  08 20 a0 e1                                      mov r2, r8
005824c4  18 30 8d e2                                      add r3, sp, #0x18
005824c8  06 10 a0 e1                                      mov r1, r6
005824cc  05 00 a0 e1                                      mov r0, r5
005824d0  20 c0 8d e5                                      str ip, [sp, #0x20]
005824d4  18 c0 8d e5                                      str ip, [sp, #0x18]
005824d8  1c c0 8d e5                                      str ip, [sp, #0x1c]
005824dc  3d fc f6 eb                                      bl #0x3415d8
005824e0  18 90 9d e5                                      ldr sb, [sp, #0x18]
005824e4  78 10 94 e5                                      ldr r1, [r4, #0x78]
005824e8  1c a0 9d e5                                      ldr sl, [sp, #0x1c]
005824ec  09 00 a0 e1                                      mov r0, sb
005824f0  80 2f f6 eb                                      bl #0x30e2f8
005824f4  00 00 50 e3                                      cmp r0, #0
005824f8  20 60 9d e5                                      ldr r6, [sp, #0x20]
005824fc  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00582500  78 90 84 15                                      strne sb, [r4, #0x78]
00582504  0a 00 a0 e1                                      mov r0, sl
00582508  7a 2f f6 eb                                      bl #0x30e2f8
0058250c  00 00 50 e3                                      cmp r0, #0
00582510  80 10 94 e5                                      ldr r1, [r4, #0x80]
00582514  7c a0 84 15                                      strne sl, [r4, #0x7c]
00582518  06 00 a0 e1                                      mov r0, r6
0058251c  75 2f f6 eb                                      bl #0x30e2f8
00582520  00 00 50 e3                                      cmp r0, #0
00582524  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
00582528  80 60 84 15                                      strne r6, [r4, #0x80]
0058252c  09 00 a0 e1                                      mov r0, sb
00582530  75 30 f6 eb                                      bl #0x30e70c
00582534  00 00 50 e3                                      cmp r0, #0
00582538  70 10 94 e5                                      ldr r1, [r4, #0x70]
0058253c  6c 90 84 15                                      strne sb, [r4, #0x6c]
00582540  0a 00 a0 e1                                      mov r0, sl
00582544  70 30 f6 eb                                      bl #0x30e70c
00582548  00 00 50 e3                                      cmp r0, #0
0058254c  74 10 94 e5                                      ldr r1, [r4, #0x74]
00582550  70 a0 84 15                                      strne sl, [r4, #0x70]
00582554  06 00 a0 e1                                      mov r0, r6
00582558  6b 30 f6 eb                                      bl #0x30e70c
0058255c  00 00 50 e3                                      cmp r0, #0
00582560  74 60 84 15                                      strne r6, [r4, #0x74]
00582564  4c 60 84 e2                                      add r6, r4, #0x4c
00582568  00 c0 a0 e3                                      mov ip, #0
0058256c  07 20 a0 e1                                      mov r2, r7
00582570  0c 30 8d e2                                      add r3, sp, #0xc
00582574  06 10 a0 e1                                      mov r1, r6
00582578  05 00 a0 e1                                      mov r0, r5
0058257c  14 c0 8d e5                                      str ip, [sp, #0x14]
00582580  0c c0 8d e5                                      str ip, [sp, #0xc]
00582584  10 c0 8d e5                                      str ip, [sp, #0x10]
00582588  12 fc f6 eb                                      bl #0x3415d8
0058258c  0c 90 9d e5                                      ldr sb, [sp, #0xc]
00582590  78 10 94 e5                                      ldr r1, [r4, #0x78]
00582594  10 a0 9d e5                                      ldr sl, [sp, #0x10]
00582598  09 00 a0 e1                                      mov r0, sb
0058259c  55 2f f6 eb                                      bl #0x30e2f8
005825a0  00 00 50 e3                                      cmp r0, #0
005825a4  14 70 9d e5                                      ldr r7, [sp, #0x14]
005825a8  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
005825ac  78 90 84 15                                      strne sb, [r4, #0x78]
005825b0  0a 00 a0 e1                                      mov r0, sl
005825b4  4f 2f f6 eb                                      bl #0x30e2f8
005825b8  00 00 50 e3                                      cmp r0, #0
005825bc  80 10 94 e5                                      ldr r1, [r4, #0x80]
005825c0  7c a0 84 15                                      strne sl, [r4, #0x7c]
005825c4  07 00 a0 e1                                      mov r0, r7
005825c8  4a 2f f6 eb                                      bl #0x30e2f8
005825cc  00 00 50 e3                                      cmp r0, #0
005825d0  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
005825d4  80 70 84 15                                      strne r7, [r4, #0x80]
005825d8  09 00 a0 e1                                      mov r0, sb
005825dc  4a 30 f6 eb                                      bl #0x30e70c
005825e0  00 00 50 e3                                      cmp r0, #0
005825e4  70 10 94 e5                                      ldr r1, [r4, #0x70]
005825e8  6c 90 84 15                                      strne sb, [r4, #0x6c]
005825ec  0a 00 a0 e1                                      mov r0, sl
005825f0  45 30 f6 eb                                      bl #0x30e70c
005825f4  00 00 50 e3                                      cmp r0, #0
005825f8  74 10 94 e5                                      ldr r1, [r4, #0x74]
005825fc  70 a0 84 15                                      strne sl, [r4, #0x70]
00582600  07 00 a0 e1                                      mov r0, r7
00582604  40 30 f6 eb                                      bl #0x30e70c
00582608  00 00 50 e3                                      cmp r0, #0
0058260c  00 c0 a0 e3                                      mov ip, #0
00582610  74 70 84 15                                      strne r7, [r4, #0x74]
00582614  08 20 a0 e1                                      mov r2, r8
00582618  0d 30 a0 e1                                      mov r3, sp
0058261c  06 10 a0 e1                                      mov r1, r6
00582620  05 00 a0 e1                                      mov r0, r5
00582624  08 c0 8d e5                                      str ip, [sp, #8]
00582628  00 c0 8d e5                                      str ip, [sp]
0058262c  04 c0 8d e5                                      str ip, [sp, #4]
00582630  e8 fb f6 eb                                      bl #0x3415d8
00582634  00 70 9d e5                                      ldr r7, [sp]
00582638  78 10 94 e5                                      ldr r1, [r4, #0x78]
0058263c  04 60 9d e5                                      ldr r6, [sp, #4]
00582640  07 00 a0 e1                                      mov r0, r7
00582644  2b 2f f6 eb                                      bl #0x30e2f8
00582648  00 00 50 e3                                      cmp r0, #0
0058264c  08 50 9d e5                                      ldr r5, [sp, #8]
00582650  7c 10 94 e5                                      ldr r1, [r4, #0x7c]
00582654  78 70 84 15                                      strne r7, [r4, #0x78]
00582658  06 00 a0 e1                                      mov r0, r6
0058265c  25 2f f6 eb                                      bl #0x30e2f8
00582660  00 00 50 e3                                      cmp r0, #0
00582664  80 10 94 e5                                      ldr r1, [r4, #0x80]
00582668  7c 60 84 15                                      strne r6, [r4, #0x7c]
0058266c  05 00 a0 e1                                      mov r0, r5
00582670  20 2f f6 eb                                      bl #0x30e2f8
00582674  00 00 50 e3                                      cmp r0, #0
00582678  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
0058267c  80 50 84 15                                      strne r5, [r4, #0x80]
00582680  07 00 a0 e1                                      mov r0, r7
00582684  20 30 f6 eb                                      bl #0x30e70c
00582688  00 00 50 e3                                      cmp r0, #0
0058268c  70 10 94 e5                                      ldr r1, [r4, #0x70]
00582690  6c 70 84 15                                      strne r7, [r4, #0x6c]
00582694  06 00 a0 e1                                      mov r0, r6
00582698  1b 30 f6 eb                                      bl #0x30e70c
0058269c  00 00 50 e3                                      cmp r0, #0
005826a0  70 60 84 15                                      strne r6, [r4, #0x70]
005826a4  74 10 94 e5                                      ldr r1, [r4, #0x74]
005826a8  05 00 a0 e1                                      mov r0, r5
005826ac  16 30 f6 eb                                      bl #0x30e70c
005826b0  00 00 50 e3                                      cmp r0, #0
005826b4  74 50 84 15                                      strne r5, [r4, #0x74]
005826b8  30 d0 8d e2                                      add sp, sp, #0x30
005826bc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005826c0, declared_size=580, range_size=580, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZN6glitch5scene12SViewFrustum7setFromERKNS_4core8CMatrix4IfEE
; demangled: glitch::scene::SViewFrustum::setFrom(glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
005826c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005826c4  01 50 a0 e1                                      mov r5, r1
005826c8  00 60 a0 e1                                      mov r6, r0
005826cc  00 10 91 e5                                      ldr r1, [r1]
005826d0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005826d4  32 31 f6 eb                                      bl #0x30eba4
005826d8  2c 00 86 e5                                      str r0, [r6, #0x2c]
005826dc  10 10 95 e5                                      ldr r1, [r5, #0x10]
005826e0  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
005826e4  2e 31 f6 eb                                      bl #0x30eba4
005826e8  30 00 86 e5                                      str r0, [r6, #0x30]
005826ec  20 10 95 e5                                      ldr r1, [r5, #0x20]
005826f0  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
005826f4  2a 31 f6 eb                                      bl #0x30eba4
005826f8  34 00 86 e5                                      str r0, [r6, #0x34]
005826fc  30 10 95 e5                                      ldr r1, [r5, #0x30]
00582700  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00582704  26 31 f6 eb                                      bl #0x30eba4
00582708  38 00 86 e5                                      str r0, [r6, #0x38]
0058270c  00 10 95 e5                                      ldr r1, [r5]
00582710  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00582714  24 2f f6 eb                                      bl #0x30e3ac
00582718  3c 00 86 e5                                      str r0, [r6, #0x3c]
0058271c  10 10 95 e5                                      ldr r1, [r5, #0x10]
00582720  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00582724  20 2f f6 eb                                      bl #0x30e3ac
00582728  40 00 86 e5                                      str r0, [r6, #0x40]
0058272c  20 10 95 e5                                      ldr r1, [r5, #0x20]
00582730  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00582734  1c 2f f6 eb                                      bl #0x30e3ac
00582738  44 00 86 e5                                      str r0, [r6, #0x44]
0058273c  30 10 95 e5                                      ldr r1, [r5, #0x30]
00582740  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00582744  18 2f f6 eb                                      bl #0x30e3ac
00582748  48 00 86 e5                                      str r0, [r6, #0x48]
0058274c  04 10 95 e5                                      ldr r1, [r5, #4]
00582750  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00582754  14 2f f6 eb                                      bl #0x30e3ac
00582758  5c 00 86 e5                                      str r0, [r6, #0x5c]
0058275c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00582760  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
00582764  10 2f f6 eb                                      bl #0x30e3ac
00582768  60 00 86 e5                                      str r0, [r6, #0x60]
0058276c  24 10 95 e5                                      ldr r1, [r5, #0x24]
00582770  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
00582774  0c 2f f6 eb                                      bl #0x30e3ac
00582778  64 00 86 e5                                      str r0, [r6, #0x64]
0058277c  34 10 95 e5                                      ldr r1, [r5, #0x34]
00582780  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00582784  08 2f f6 eb                                      bl #0x30e3ac
00582788  68 00 86 e5                                      str r0, [r6, #0x68]
0058278c  04 10 95 e5                                      ldr r1, [r5, #4]
00582790  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00582794  02 31 f6 eb                                      bl #0x30eba4
00582798  4c 00 86 e5                                      str r0, [r6, #0x4c]
0058279c  14 10 95 e5                                      ldr r1, [r5, #0x14]
005827a0  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
005827a4  fe 30 f6 eb                                      bl #0x30eba4
005827a8  50 00 86 e5                                      str r0, [r6, #0x50]
005827ac  24 10 95 e5                                      ldr r1, [r5, #0x24]
005827b0  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
005827b4  fa 30 f6 eb                                      bl #0x30eba4
005827b8  54 00 86 e5                                      str r0, [r6, #0x54]
005827bc  34 10 95 e5                                      ldr r1, [r5, #0x34]
005827c0  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
005827c4  f6 30 f6 eb                                      bl #0x30eba4
005827c8  58 00 86 e5                                      str r0, [r6, #0x58]
005827cc  08 10 95 e5                                      ldr r1, [r5, #8]
005827d0  0c 00 95 e5                                      ldr r0, [r5, #0xc]
005827d4  f4 2e f6 eb                                      bl #0x30e3ac
005827d8  0c 00 86 e5                                      str r0, [r6, #0xc]
005827dc  18 10 95 e5                                      ldr r1, [r5, #0x18]
005827e0  00 90 a0 e1                                      mov sb, r0
005827e4  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
005827e8  ef 2e f6 eb                                      bl #0x30e3ac
005827ec  10 00 86 e5                                      str r0, [r6, #0x10]
005827f0  28 10 95 e5                                      ldr r1, [r5, #0x28]
005827f4  00 a0 a0 e1                                      mov sl, r0
005827f8  2c 00 95 e5                                      ldr r0, [r5, #0x2c]
005827fc  ea 2e f6 eb                                      bl #0x30e3ac
00582800  14 00 86 e5                                      str r0, [r6, #0x14]
00582804  38 10 95 e5                                      ldr r1, [r5, #0x38]
00582808  00 80 a0 e1                                      mov r8, r0
0058280c  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
00582810  e5 2e f6 eb                                      bl #0x30e3ac
00582814  18 00 86 e5                                      str r0, [r6, #0x18]
00582818  08 30 95 e5                                      ldr r3, [r5, #8]
0058281c  06 40 a0 e1                                      mov r4, r6
00582820  00 70 a0 e3                                      mov r7, #0
00582824  1c 30 86 e5                                      str r3, [r6, #0x1c]
00582828  18 30 95 e5                                      ldr r3, [r5, #0x18]
0058282c  20 30 86 e5                                      str r3, [r6, #0x20]
00582830  28 30 95 e5                                      ldr r3, [r5, #0x28]
00582834  24 30 86 e5                                      str r3, [r6, #0x24]
00582838  38 30 95 e5                                      ldr r3, [r5, #0x38]
0058283c  28 30 86 e5                                      str r3, [r6, #0x28]
00582840  02 00 00 ea                                      b #0x582850
00582844  0c 90 94 e5                                      ldr sb, [r4, #0xc]
00582848  10 a0 94 e5                                      ldr sl, [r4, #0x10]
0058284c  14 80 94 e5                                      ldr r8, [r4, #0x14]
00582850  09 10 a0 e1                                      mov r1, sb
00582854  09 00 a0 e1                                      mov r0, sb
00582858  43 31 f6 eb                                      bl #0x30ed6c
0058285c  0a 10 a0 e1                                      mov r1, sl
00582860  00 50 a0 e1                                      mov r5, r0
00582864  0a 00 a0 e1                                      mov r0, sl
00582868  3f 31 f6 eb                                      bl #0x30ed6c
0058286c  00 10 a0 e1                                      mov r1, r0
00582870  05 00 a0 e1                                      mov r0, r5
00582874  ca 30 f6 eb                                      bl #0x30eba4
00582878  08 10 a0 e1                                      mov r1, r8
0058287c  00 50 a0 e1                                      mov r5, r0
00582880  08 00 a0 e1                                      mov r0, r8
00582884  38 31 f6 eb                                      bl #0x30ed6c
00582888  00 10 a0 e1                                      mov r1, r0
0058288c  05 00 a0 e1                                      mov r0, r5
00582890  c3 30 f6 eb                                      bl #0x30eba4
00582894  22 2e f6 eb                                      bl #0x30e124
00582898  00 10 a0 e1                                      mov r1, r0
0058289c  fe 05 a0 e3                                      mov r0, #0x3f800000
005828a0  fb 30 f6 eb                                      bl #0x30ec94
005828a4  02 51 80 e2                                      add r5, r0, #0x80000000
005828a8  05 10 a0 e1                                      mov r1, r5
005828ac  0c 00 94 e5                                      ldr r0, [r4, #0xc]
005828b0  2d 31 f6 eb                                      bl #0x30ed6c
005828b4  05 10 a0 e1                                      mov r1, r5
005828b8  0c 00 84 e5                                      str r0, [r4, #0xc]
005828bc  10 00 94 e5                                      ldr r0, [r4, #0x10]
005828c0  29 31 f6 eb                                      bl #0x30ed6c
005828c4  05 10 a0 e1                                      mov r1, r5
005828c8  10 00 84 e5                                      str r0, [r4, #0x10]
005828cc  14 00 94 e5                                      ldr r0, [r4, #0x14]
005828d0  25 31 f6 eb                                      bl #0x30ed6c
005828d4  05 10 a0 e1                                      mov r1, r5
005828d8  14 00 84 e5                                      str r0, [r4, #0x14]
005828dc  18 00 94 e5                                      ldr r0, [r4, #0x18]
005828e0  21 31 f6 eb                                      bl #0x30ed6c
005828e4  01 70 87 e2                                      add r7, r7, #1
005828e8  06 00 57 e3                                      cmp r7, #6
005828ec  18 00 84 e5                                      str r0, [r4, #0x18]
005828f0  10 40 84 e2                                      add r4, r4, #0x10
005828f4  d2 ff ff 1a                                      bne #0x582844
005828f8  06 00 a0 e1                                      mov r0, r6
005828fc  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00582900  b3 fe ff ea                                      b #0x5823d4

; FUNCTION 0x00582bd8, declared_size=176, range_size=176, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZN6glitch5scene12SViewFrustumC1Ev
; demangled: glitch::scene::SViewFrustum::SViewFrustum()
; decoder-mode: arm
00582bd8  00 20 a0 e3                                      mov r2, #0
00582bdc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00582be0  0c 10 80 e2                                      add r1, r0, #0xc
00582be4  00 60 a0 e1                                      mov r6, r0
00582be8  00 20 80 e5                                      str r2, [r0]
00582bec  04 20 80 e5                                      str r2, [r0, #4]
00582bf0  08 20 80 e5                                      str r2, [r0, #8]
00582bf4  fe 55 a0 e3                                      mov r5, #0x3f800000
00582bf8  02 31 a0 e3                                      mov r3, #0x80000000
00582bfc  6c 00 80 e2                                      add r0, r0, #0x6c
00582c00  00 20 81 e5                                      str r2, [r1]
00582c04  04 50 81 e5                                      str r5, [r1, #4]
00582c08  08 20 81 e5                                      str r2, [r1, #8]
00582c0c  0c 30 81 e5                                      str r3, [r1, #0xc]
00582c10  10 10 81 e2                                      add r1, r1, #0x10
00582c14  00 00 51 e1                                      cmp r1, r0
00582c18  f8 ff ff 1a                                      bne #0x582c00
00582c1c  bf 34 a0 e3                                      mov r3, #0xbf000000
00582c20  02 35 83 e2                                      add r3, r3, #0x800000
00582c24  78 50 86 e5                                      str r5, [r6, #0x78]
00582c28  7c 50 86 e5                                      str r5, [r6, #0x7c]
00582c2c  74 30 86 e5                                      str r3, [r6, #0x74]
00582c30  6c 30 86 e5                                      str r3, [r6, #0x6c]
00582c34  70 30 86 e5                                      str r3, [r6, #0x70]
00582c38  80 50 86 e5                                      str r5, [r6, #0x80]
00582c3c  84 40 86 e2                                      add r4, r6, #0x84
00582c40  87 af 86 e2                                      add sl, r6, #0x21c
00582c44  00 80 a0 e3                                      mov r8, #0
00582c48  01 70 a0 e3                                      mov r7, #1
00582c4c  40 80 c4 e5                                      strb r8, [r4, #0x40]
00582c50  04 00 a0 e1                                      mov r0, r4
00582c54  00 10 a0 e3                                      mov r1, #0
00582c58  40 20 a0 e3                                      mov r2, #0x40
00582c5c  ff 2d f6 eb                                      bl #0x30e460
00582c60  00 50 84 e5                                      str r5, [r4]
00582c64  14 50 84 e5                                      str r5, [r4, #0x14]
00582c68  28 50 84 e5                                      str r5, [r4, #0x28]
00582c6c  3c 50 84 e5                                      str r5, [r4, #0x3c]
00582c70  40 70 c4 e5                                      strb r7, [r4, #0x40]
00582c74  44 40 84 e2                                      add r4, r4, #0x44
00582c78  0a 00 54 e1                                      cmp r4, sl
00582c7c  f2 ff ff 1a                                      bne #0x582c4c
00582c80  06 00 a0 e1                                      mov r0, r6
00582c84  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x0058aa8c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::scene::SViewFrustum
; alias: _ZNK6glitch5scene12SViewFrustum11intersects3ERKNS_4core8aabbox3dIfEE
; demangled: glitch::scene::SViewFrustum::intersects3(glitch::core::aabbox3d<float> const&) const
; decoder-mode: arm
0058aa8c  70 40 2d e9                                      push {r4, r5, r6, lr}
0058aa90  00 50 a0 e1                                      mov r5, r0
0058aa94  01 40 a0 e1                                      mov r4, r1
0058aa98  6c 00 90 e5                                      ldr r0, [r0, #0x6c]
0058aa9c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0058aaa0  c1 0f f6 eb                                      bl #0x30e9ac
0058aaa4  00 00 50 e3                                      cmp r0, #0
0058aaa8  1c 00 00 0a                                      beq #0x58ab20
0058aaac  70 00 95 e5                                      ldr r0, [r5, #0x70]
0058aab0  10 10 94 e5                                      ldr r1, [r4, #0x10]
0058aab4  bc 0f f6 eb                                      bl #0x30e9ac
0058aab8  00 00 50 e3                                      cmp r0, #0
0058aabc  17 00 00 0a                                      beq #0x58ab20
0058aac0  74 00 95 e5                                      ldr r0, [r5, #0x74]
0058aac4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0058aac8  b7 0f f6 eb                                      bl #0x30e9ac
0058aacc  00 00 50 e3                                      cmp r0, #0
0058aad0  12 00 00 0a                                      beq #0x58ab20
0058aad4  78 00 95 e5                                      ldr r0, [r5, #0x78]
0058aad8  00 10 94 e5                                      ldr r1, [r4]
0058aadc  74 0e f6 eb                                      bl #0x30e4b4
0058aae0  00 00 50 e3                                      cmp r0, #0
0058aae4  0d 00 00 0a                                      beq #0x58ab20
0058aae8  7c 00 95 e5                                      ldr r0, [r5, #0x7c]
0058aaec  04 10 94 e5                                      ldr r1, [r4, #4]
0058aaf0  6f 0e f6 eb                                      bl #0x30e4b4
0058aaf4  00 00 50 e3                                      cmp r0, #0
0058aaf8  08 00 00 0a                                      beq #0x58ab20
0058aafc  80 00 95 e5                                      ldr r0, [r5, #0x80]
0058ab00  08 10 94 e5                                      ldr r1, [r4, #8]
0058ab04  6a 0e f6 eb                                      bl #0x30e4b4
0058ab08  00 00 50 e3                                      cmp r0, #0
0058ab0c  03 00 00 0a                                      beq #0x58ab20
0058ab10  05 00 a0 e1                                      mov r0, r5
0058ab14  04 10 a0 e1                                      mov r1, r4
0058ab18  70 40 bd e8                                      pop {r4, r5, r6, lr}
0058ab1c  ea 07 fe ea                                      b #0x50cacc
0058ab20  00 00 a0 e3                                      mov r0, #0
0058ab24  70 80 bd e8                                      pop {r4, r5, r6, pc}
