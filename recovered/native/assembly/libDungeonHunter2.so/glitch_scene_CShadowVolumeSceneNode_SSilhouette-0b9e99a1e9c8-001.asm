; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006ffd88, declared_size=56, range_size=56, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SSilhouette
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode11SSilhouetteD1Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette()
; decoder-mode: arm
006ffd88  10 40 2d e9                                      push {r4, lr}
006ffd8c  00 40 a0 e1                                      mov r4, r0
006ffd90  24 00 90 e5                                      ldr r0, [r0, #0x24]
006ffd94  00 00 50 e3                                      cmp r0, #0
006ffd98  00 00 00 0a                                      beq #0x6ffda0
006ffd9c  c5 38 f0 eb                                      bl #0x30e0b8
006ffda0  18 00 94 e5                                      ldr r0, [r4, #0x18]
006ffda4  00 00 50 e3                                      cmp r0, #0
006ffda8  00 00 00 0a                                      beq #0x6ffdb0
006ffdac  a7 41 f0 eb                                      bl #0x310450
006ffdb0  04 00 a0 e1                                      mov r0, r4
006ffdb4  e8 0d 00 eb                                      bl #0x70355c
006ffdb8  04 00 a0 e1                                      mov r0, r4
006ffdbc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ffdc0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SSilhouette
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode11SSilhouetteD2Ev
; demangled: glitch::scene::CShadowVolumeSceneNode::SSilhouette::~SSilhouette()
; decoder-mode: arm
006ffdc0  10 40 2d e9                                      push {r4, lr}
006ffdc4  00 40 a0 e1                                      mov r4, r0
006ffdc8  24 00 90 e5                                      ldr r0, [r0, #0x24]
006ffdcc  00 00 50 e3                                      cmp r0, #0
006ffdd0  00 00 00 0a                                      beq #0x6ffdd8
006ffdd4  b7 38 f0 eb                                      bl #0x30e0b8
006ffdd8  18 00 94 e5                                      ldr r0, [r4, #0x18]
006ffddc  00 00 50 e3                                      cmp r0, #0
006ffde0  00 00 00 0a                                      beq #0x6ffde8
006ffde4  99 41 f0 eb                                      bl #0x310450
006ffde8  04 00 a0 e1                                      mov r0, r4
006ffdec  da 0d 00 eb                                      bl #0x70355c
006ffdf0  04 00 a0 e1                                      mov r0, r4
006ffdf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ffdf8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SSilhouette
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode11SSilhouetteC1ERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
; demangled: glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
006ffdf8  10 40 2d e9                                      push {r4, lr}
006ffdfc  00 40 a0 e1                                      mov r4, r0
006ffe00  01 0d 00 eb                                      bl #0x70320c
006ffe04  00 30 a0 e3                                      mov r3, #0
006ffe08  24 30 84 e5                                      str r3, [r4, #0x24]
006ffe0c  18 30 84 e5                                      str r3, [r4, #0x18]
006ffe10  1c 30 84 e5                                      str r3, [r4, #0x1c]
006ffe14  20 30 84 e5                                      str r3, [r4, #0x20]
006ffe18  04 00 a0 e1                                      mov r0, r4
006ffe1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x006ffe20, declared_size=40, range_size=40, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SSilhouette
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode11SSilhouetteC2ERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
; demangled: glitch::scene::CShadowVolumeSceneNode::SSilhouette::SSilhouette(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
006ffe20  10 40 2d e9                                      push {r4, lr}
006ffe24  00 40 a0 e1                                      mov r4, r0
006ffe28  f7 0c 00 eb                                      bl #0x70320c
006ffe2c  00 30 a0 e3                                      mov r3, #0
006ffe30  24 30 84 e5                                      str r3, [r4, #0x24]
006ffe34  18 30 84 e5                                      str r3, [r4, #0x18]
006ffe38  1c 30 84 e5                                      str r3, [r4, #0x1c]
006ffe3c  20 30 84 e5                                      str r3, [r4, #0x20]
006ffe40  04 00 a0 e1                                      mov r0, r4
006ffe44  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00701358, declared_size=1600, range_size=1600, mode=arm
; class-group: glitch::scene::CShadowVolumeSceneNode::SSilhouette
; alias: _ZN6glitch5scene22CShadowVolumeSceneNode11SSilhouette16createSilhouetteENS_4core8vector3dIfEENS_5video12E_LIGHT_TYPEERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
; demangled: glitch::scene::CShadowVolumeSceneNode::SSilhouette::createSilhouette(glitch::core::vector3d<float>, glitch::video::E_LIGHT_TYPE, boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
00701358  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0070135c  00 30 93 e5                                      ldr r3, [r3]
00701360  4c d0 4d e2                                      sub sp, sp, #0x4c
00701364  14 10 8d e5                                      str r1, [sp, #0x14]
00701368  14 30 93 e5                                      ldr r3, [r3, #0x14]
0070136c  30 20 8d e5                                      str r2, [sp, #0x30]
00701370  00 50 a0 e1                                      mov r5, r0
00701374  38 30 8d e5                                      str r3, [sp, #0x38]
00701378  00 00 53 e3                                      cmp r3, #0
0070137c  00 30 93 15                                      ldrne r3, [r3]
00701380  38 10 9d 15                                      ldrne r1, [sp, #0x38]
00701384  01 30 83 12                                      addne r3, r3, #1
00701388  00 30 81 15                                      strne r3, [r1]
0070138c  38 20 9d e5                                      ldr r2, [sp, #0x38]
00701390  01 10 a0 e3                                      mov r1, #1
00701394  14 00 92 e5                                      ldr r0, [r2, #0x14]
00701398  cf 81 fa eb                                      bl #0x5a1adc
0070139c  38 30 9d e5                                      ldr r3, [sp, #0x38]
007013a0  38 c0 9d e5                                      ldr ip, [sp, #0x38]
007013a4  14 30 83 e2                                      add r3, r3, #0x14
007013a8  2c 30 8d e5                                      str r3, [sp, #0x2c]
007013ac  04 40 93 e5                                      ldr r4, [r3, #4]
007013b0  00 00 5c e3                                      cmp ip, #0
007013b4  04 40 80 e0                                      add r4, r0, r4
007013b8  04 00 00 0a                                      beq #0x7013d0
007013bc  00 30 9c e5                                      ldr r3, [ip]
007013c0  01 30 43 e2                                      sub r3, r3, #1
007013c4  00 00 53 e3                                      cmp r3, #0
007013c8  00 30 8c e5                                      str r3, [ip]
007013cc  5d 01 00 0a                                      beq #0x701948
007013d0  10 e0 95 e5                                      ldr lr, [r5, #0x10]
007013d4  24 00 95 e5                                      ldr r0, [r5, #0x24]
007013d8  3c e0 8d e5                                      str lr, [sp, #0x3c]
007013dc  14 10 95 e5                                      ldr r1, [r5, #0x14]
007013e0  00 00 50 e3                                      cmp r0, #0
007013e4  28 10 8d e5                                      str r1, [sp, #0x28]
007013e8  00 00 00 0a                                      beq #0x7013f0
007013ec  31 33 f0 eb                                      bl #0x30e0b8
007013f0  00 10 a0 e3                                      mov r1, #0
007013f4  28 00 9d e5                                      ldr r0, [sp, #0x28]
007013f8  6a cb f8 eb                                      bl #0x5341a8
007013fc  10 00 8d e5                                      str r0, [sp, #0x10]
00701400  24 00 85 e5                                      str r0, [r5, #0x24]
00701404  14 30 9d e5                                      ldr r3, [sp, #0x14]
00701408  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0070140c  14 10 9d e5                                      ldr r1, [sp, #0x14]
00701410  00 30 93 e5                                      ldr r3, [r3]
00701414  28 20 9d e5                                      ldr r2, [sp, #0x28]
00701418  1c 30 8d e5                                      str r3, [sp, #0x1c]
0070141c  04 c0 9c e5                                      ldr ip, [ip, #4]
00701420  00 00 52 e3                                      cmp r2, #0
00701424  20 c0 8d e5                                      str ip, [sp, #0x20]
00701428  08 10 91 e5                                      ldr r1, [r1, #8]
0070142c  24 10 8d e5                                      str r1, [sp, #0x24]
00701430  92 00 00 0a                                      beq #0x701680
00701434  00 70 a0 e3                                      mov r7, #0
00701438  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
0070143c  34 50 8d e5                                      str r5, [sp, #0x34]
00701440  81 00 00 ea                                      b #0x70164c
00701444  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
00701448  b0 50 d6 e1                                      ldrh r5, [r6]
0070144c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00701450  be 90 dc e1                                      ldrh sb, [ip, #0xe]
00701454  00 00 9e e5                                      ldr r0, [lr]
00701458  95 09 05 e0                                      mul r5, r5, sb
0070145c  05 a0 94 e7                                      ldr sl, [r4, r5]
00701460  05 50 84 e0                                      add r5, r4, r5
00701464  0a 10 a0 e1                                      mov r1, sl
00701468  cf 33 f0 eb                                      bl #0x30e3ac
0070146c  1c 00 8d e5                                      str r0, [sp, #0x1c]
00701470  04 80 95 e5                                      ldr r8, [r5, #4]
00701474  14 10 9d e5                                      ldr r1, [sp, #0x14]
00701478  04 00 91 e5                                      ldr r0, [r1, #4]
0070147c  08 10 a0 e1                                      mov r1, r8
00701480  c9 33 f0 eb                                      bl #0x30e3ac
00701484  20 00 8d e5                                      str r0, [sp, #0x20]
00701488  08 50 95 e5                                      ldr r5, [r5, #8]
0070148c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00701490  05 10 a0 e1                                      mov r1, r5
00701494  08 00 92 e5                                      ldr r0, [r2, #8]
00701498  c3 33 f0 eb                                      bl #0x30e3ac
0070149c  24 00 8d e5                                      str r0, [sp, #0x24]
007014a0  b4 20 d6 e1                                      ldrh r2, [r6, #4]
007014a4  b2 00 d6 e1                                      ldrh r0, [r6, #2]
007014a8  0a 10 a0 e1                                      mov r1, sl
007014ac  92 09 02 e0                                      mul r2, r2, sb
007014b0  90 09 00 e0                                      mul r0, r0, sb
007014b4  02 c0 84 e0                                      add ip, r4, r2
007014b8  08 e0 9c e5                                      ldr lr, [ip, #8]
007014bc  00 30 84 e0                                      add r3, r4, r0
007014c0  02 20 94 e7                                      ldr r2, [r4, r2]
007014c4  04 b0 93 e5                                      ldr fp, [r3, #4]
007014c8  00 00 94 e7                                      ldr r0, [r4, r0]
007014cc  08 30 93 e5                                      ldr r3, [r3, #8]
007014d0  18 e0 8d e5                                      str lr, [sp, #0x18]
007014d4  04 c0 9c e5                                      ldr ip, [ip, #4]
007014d8  0c 10 8d e8                                      stm sp, {r2, r3, ip}
007014dc  b2 33 f0 eb                                      bl #0x30e3ac
007014e0  08 10 a0 e1                                      mov r1, r8
007014e4  00 90 a0 e1                                      mov sb, r0
007014e8  0b 00 a0 e1                                      mov r0, fp
007014ec  ae 33 f0 eb                                      bl #0x30e3ac
007014f0  04 30 9d e5                                      ldr r3, [sp, #4]
007014f4  05 10 a0 e1                                      mov r1, r5
007014f8  0c 00 8d e5                                      str r0, [sp, #0xc]
007014fc  03 00 a0 e1                                      mov r0, r3
00701500  a9 33 f0 eb                                      bl #0x30e3ac
00701504  00 20 9d e5                                      ldr r2, [sp]
00701508  00 b0 a0 e1                                      mov fp, r0
0070150c  0a 10 a0 e1                                      mov r1, sl
00701510  02 00 a0 e1                                      mov r0, r2
00701514  a4 33 f0 eb                                      bl #0x30e3ac
00701518  08 c0 9d e5                                      ldr ip, [sp, #8]
0070151c  00 a0 a0 e1                                      mov sl, r0
00701520  08 10 a0 e1                                      mov r1, r8
00701524  0c 00 a0 e1                                      mov r0, ip
00701528  9f 33 f0 eb                                      bl #0x30e3ac
0070152c  05 10 a0 e1                                      mov r1, r5
00701530  00 80 a0 e1                                      mov r8, r0
00701534  18 00 9d e5                                      ldr r0, [sp, #0x18]
00701538  9b 33 f0 eb                                      bl #0x30e3ac
0070153c  10 e0 9d e5                                      ldr lr, [sp, #0x10]
00701540  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00701544  00 c0 a0 e3                                      mov ip, #0
00701548  07 c0 ce e7                                      strb ip, [lr, r7]
0070154c  02 11 83 e2                                      add r1, r3, #0x80000000
00701550  00 00 8d e5                                      str r0, [sp]
00701554  04 36 f0 eb                                      bl #0x30ed6c
00701558  08 10 a0 e1                                      mov r1, r8
0070155c  00 50 a0 e1                                      mov r5, r0
00701560  0b 00 a0 e1                                      mov r0, fp
00701564  00 36 f0 eb                                      bl #0x30ed6c
00701568  00 10 a0 e1                                      mov r1, r0
0070156c  05 00 a0 e1                                      mov r0, r5
00701570  8b 35 f0 eb                                      bl #0x30eba4
00701574  00 10 a0 e1                                      mov r1, r0
00701578  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0070157c  fa 35 f0 eb                                      bl #0x30ed6c
00701580  02 11 8b e2                                      add r1, fp, #0x80000000
00701584  00 30 a0 e1                                      mov r3, r0
00701588  0a 00 a0 e1                                      mov r0, sl
0070158c  04 30 8d e5                                      str r3, [sp, #4]
00701590  f5 35 f0 eb                                      bl #0x30ed6c
00701594  00 20 9d e5                                      ldr r2, [sp]
00701598  00 50 a0 e1                                      mov r5, r0
0070159c  09 00 a0 e1                                      mov r0, sb
007015a0  02 10 a0 e1                                      mov r1, r2
007015a4  f0 35 f0 eb                                      bl #0x30ed6c
007015a8  00 10 a0 e1                                      mov r1, r0
007015ac  05 00 a0 e1                                      mov r0, r5
007015b0  7b 35 f0 eb                                      bl #0x30eba4
007015b4  00 10 a0 e1                                      mov r1, r0
007015b8  20 00 9d e5                                      ldr r0, [sp, #0x20]
007015bc  ea 35 f0 eb                                      bl #0x30ed6c
007015c0  04 30 9d e5                                      ldr r3, [sp, #4]
007015c4  00 10 a0 e1                                      mov r1, r0
007015c8  06 60 86 e2                                      add r6, r6, #6
007015cc  03 00 a0 e1                                      mov r0, r3
007015d0  73 35 f0 eb                                      bl #0x30eba4
007015d4  02 11 89 e2                                      add r1, sb, #0x80000000
007015d8  00 50 a0 e1                                      mov r5, r0
007015dc  08 00 a0 e1                                      mov r0, r8
007015e0  e1 35 f0 eb                                      bl #0x30ed6c
007015e4  0a 10 a0 e1                                      mov r1, sl
007015e8  00 80 a0 e1                                      mov r8, r0
007015ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007015f0  dd 35 f0 eb                                      bl #0x30ed6c
007015f4  00 10 a0 e1                                      mov r1, r0
007015f8  08 00 a0 e1                                      mov r0, r8
007015fc  68 35 f0 eb                                      bl #0x30eba4
00701600  00 10 a0 e1                                      mov r1, r0
00701604  24 00 9d e5                                      ldr r0, [sp, #0x24]
00701608  d7 35 f0 eb                                      bl #0x30ed6c
0070160c  00 10 a0 e1                                      mov r1, r0
00701610  05 00 a0 e1                                      mov r0, r5
00701614  62 35 f0 eb                                      bl #0x30eba4
00701618  00 10 a0 e3                                      mov r1, #0
0070161c  e2 34 f0 eb                                      bl #0x30e9ac
00701620  00 00 50 e3                                      cmp r0, #0
00701624  10 20 9d 15                                      ldrne r2, [sp, #0x10]
00701628  01 10 a0 13                                      movne r1, #1
0070162c  07 10 c2 17                                      strbne r1, [r2, r7]
00701630  28 30 9d e5                                      ldr r3, [sp, #0x28]
00701634  01 70 87 e2                                      add r7, r7, #1
00701638  03 00 57 e1                                      cmp r7, r3
0070163c  0e 00 00 0a                                      beq #0x70167c
00701640  34 c0 9d e5                                      ldr ip, [sp, #0x34]
00701644  24 c0 9c e5                                      ldr ip, [ip, #0x24]
00701648  10 c0 8d e5                                      str ip, [sp, #0x10]
0070164c  30 20 9d e5                                      ldr r2, [sp, #0x30]
00701650  02 00 52 e3                                      cmp r2, #2
00701654  7a ff ff 1a                                      bne #0x701444
00701658  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0070165c  b0 20 d6 e1                                      ldrh r2, [r6]
00701660  be 90 d3 e1                                      ldrh sb, [r3, #0xe]
00701664  99 02 02 e0                                      mul r2, sb, r2
00701668  02 30 84 e0                                      add r3, r4, r2
0070166c  02 a0 94 e7                                      ldr sl, [r4, r2]
00701670  08 50 93 e5                                      ldr r5, [r3, #8]
00701674  04 80 93 e5                                      ldr r8, [r3, #4]
00701678  88 ff ff ea                                      b #0x7014a0
0070167c  34 50 9d e5                                      ldr r5, [sp, #0x34]
00701680  04 60 95 e5                                      ldr r6, [r5, #4]
00701684  08 30 95 e5                                      ldr r3, [r5, #8]
00701688  03 00 56 e1                                      cmp r6, r3
0070168c  33 00 00 0a                                      beq #0x701760
00701690  40 10 8d e2                                      add r1, sp, #0x40
00701694  44 20 8d e2                                      add r2, sp, #0x44
00701698  10 60 86 e2                                      add r6, r6, #0x10
0070169c  18 b0 85 e2                                      add fp, r5, #0x18
007016a0  0c 10 8d e5                                      str r1, [sp, #0xc]
007016a4  06 70 a0 e3                                      mov r7, #6
007016a8  10 20 8d e5                                      str r2, [sp, #0x10]
007016ac  04 00 00 ea                                      b #0x7016c4
007016b0  02 00 52 e3                                      cmp r2, #2
007016b4  37 00 00 0a                                      beq #0x701798
007016b8  06 00 53 e1                                      cmp r3, r6
007016bc  10 60 86 e2                                      add r6, r6, #0x10
007016c0  26 00 00 0a                                      beq #0x701760
007016c4  b4 20 56 e1                                      ldrh r2, [r6, #-4]
007016c8  01 00 52 e3                                      cmp r2, #1
007016cc  f7 ff ff 1a                                      bne #0x7016b0
007016d0  0c 00 16 e5                                      ldr r0, [r6, #-0xc]
007016d4  24 10 95 e5                                      ldr r1, [r5, #0x24]
007016d8  00 10 d1 e7                                      ldrb r1, [r1, r0]
007016dc  00 00 51 e3                                      cmp r1, #0
007016e0  f4 ff ff 0a                                      beq #0x7016b8
007016e4  b0 c1 56 e1                                      ldrh ip, [r6, #-0x10]
007016e8  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
007016ec  b4 c4 cd e1                                      strh ip, [sp, #0x44]
007016f0  be 10 56 e1                                      ldrh r1, [r6, #-0xe]
007016f4  97 30 20 e0                                      mla r0, r7, r0, r3
007016f8  b6 14 cd e1                                      strh r1, [sp, #0x46]
007016fc  00 30 a0 e3                                      mov r3, #0
00701700  83 10 a0 e1                                      lsl r1, r3, #1
00701704  b1 10 90 e1                                      ldrh r1, [r0, r1]
00701708  b0 c1 56 e1                                      ldrh ip, [r6, #-0x10]
0070170c  0c 00 51 e1                                      cmp r1, ip
00701710  4e 00 00 0a                                      beq #0x701850
00701714  01 30 83 e2                                      add r3, r3, #1
00701718  03 00 53 e3                                      cmp r3, #3
0070171c  01 20 82 e2                                      add r2, r2, #1
00701720  f6 ff ff 1a                                      bne #0x701700
00701724  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00701728  20 30 95 e5                                      ldr r3, [r5, #0x20]
0070172c  03 00 51 e1                                      cmp r1, r3
00701730  8e 00 00 0a                                      beq #0x701970
00701734  b4 24 dd e1                                      ldrh r2, [sp, #0x44]
00701738  b0 20 c1 e1                                      strh r2, [r1]
0070173c  b6 34 dd e1                                      ldrh r3, [sp, #0x46]
00701740  b2 30 c1 e1                                      strh r3, [r1, #2]
00701744  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00701748  08 30 95 e5                                      ldr r3, [r5, #8]
0070174c  04 20 82 e2                                      add r2, r2, #4
00701750  06 00 53 e1                                      cmp r3, r6
00701754  1c 20 85 e5                                      str r2, [r5, #0x1c]
00701758  10 60 86 e2                                      add r6, r6, #0x10
0070175c  d8 ff ff 1a                                      bne #0x7016c4
00701760  00 00 54 e3                                      cmp r4, #0
00701764  09 00 00 0a                                      beq #0x701790
00701768  38 10 9d e5                                      ldr r1, [sp, #0x38]
0070176c  14 40 91 e5                                      ldr r4, [r1, #0x14]
00701770  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00701774  1f 20 03 e2                                      and r2, r3, #0x1f
00701778  01 00 52 e3                                      cmp r2, #1
0070177c  6b 00 00 9a                                      bls #0x701930
00701780  01 20 42 e2                                      sub r2, r2, #1
00701784  1f 30 c3 e3                                      bic r3, r3, #0x1f
00701788  03 30 82 e1                                      orr r3, r2, r3
0070178c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00701790  4c d0 8d e2                                      add sp, sp, #0x4c
00701794  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00701798  24 20 95 e5                                      ldr r2, [r5, #0x24]
0070179c  0c 00 16 e5                                      ldr r0, [r6, #-0xc]
007017a0  08 10 16 e5                                      ldr r1, [r6, #-8]
007017a4  00 00 d2 e7                                      ldrb r0, [r2, r0]
007017a8  01 10 d2 e7                                      ldrb r1, [r2, r1]
007017ac  01 00 50 e1                                      cmp r0, r1
007017b0  c0 ff ff 0a                                      beq #0x7016b8
007017b4  b0 c1 56 e1                                      ldrh ip, [r6, #-0x10]
007017b8  b0 c4 cd e1                                      strh ip, [sp, #0x40]
007017bc  be 10 56 e1                                      ldrh r1, [r6, #-0xe]
007017c0  b2 14 cd e1                                      strh r1, [sp, #0x42]
007017c4  0c c0 16 e5                                      ldr ip, [r6, #-0xc]
007017c8  0c 30 d2 e7                                      ldrb r3, [r2, ip]
007017cc  00 00 53 e3                                      cmp r3, #0
007017d0  2c 00 00 0a                                      beq #0x701888
007017d4  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
007017d8  b0 11 56 e1                                      ldrh r1, [r6, #-0x10]
007017dc  be 80 56 e1                                      ldrh r8, [r6, #-0xe]
007017e0  97 2c 2c e0                                      mla ip, r7, ip, r2
007017e4  01 a0 a0 e1                                      mov sl, r1
007017e8  08 90 a0 e1                                      mov sb, r8
007017ec  01 20 a0 e3                                      mov r2, #1
007017f0  00 30 a0 e3                                      mov r3, #0
007017f4  83 00 a0 e1                                      lsl r0, r3, #1
007017f8  b0 00 9c e1                                      ldrh r0, [ip, r0]
007017fc  01 00 50 e1                                      cmp r0, r1
00701800  3f 00 00 0a                                      beq #0x701904
00701804  01 30 83 e2                                      add r3, r3, #1
00701808  03 00 53 e3                                      cmp r3, #3
0070180c  01 20 82 e2                                      add r2, r2, #1
00701810  f7 ff ff 1a                                      bne #0x7017f4
00701814  b2 94 cd e1                                      strh sb, [sp, #0x42]
00701818  b0 a4 cd e1                                      strh sl, [sp, #0x40]
0070181c  1c 10 95 e5                                      ldr r1, [r5, #0x1c]
00701820  20 30 95 e5                                      ldr r3, [r5, #0x20]
00701824  03 00 51 e1                                      cmp r1, r3
00701828  4b 00 00 0a                                      beq #0x70195c
0070182c  b0 34 dd e1                                      ldrh r3, [sp, #0x40]
00701830  b0 30 c1 e1                                      strh r3, [r1]
00701834  b2 c4 dd e1                                      ldrh ip, [sp, #0x42]
00701838  b2 c0 c1 e1                                      strh ip, [r1, #2]
0070183c  1c 20 95 e5                                      ldr r2, [r5, #0x1c]
00701840  08 30 95 e5                                      ldr r3, [r5, #8]
00701844  04 20 82 e2                                      add r2, r2, #4
00701848  1c 20 85 e5                                      str r2, [r5, #0x1c]
0070184c  99 ff ff ea                                      b #0x7016b8
00701850  02 00 53 e3                                      cmp r3, #2
00701854  02 c0 a0 11                                      movne ip, r2
00701858  00 c0 a0 03                                      moveq ip, #0
0070185c  8c c0 a0 e1                                      lsl ip, ip, #1
00701860  bc 80 90 e1                                      ldrh r8, [r0, ip]
00701864  be c0 56 e1                                      ldrh ip, [r6, #-0xe]
00701868  0c 00 58 e1                                      cmp r8, ip
0070186c  b4 14 cd 01                                      strheq r1, [sp, #0x44]
00701870  b4 c4 cd 11                                      strhne ip, [sp, #0x44]
00701874  be c0 56 01                                      ldrheq ip, [r6, #-0xe]
00701878  b0 11 56 11                                      ldrhne r1, [r6, #-0x10]
0070187c  b6 c4 cd 01                                      strheq ip, [sp, #0x46]
00701880  b6 14 cd 11                                      strhne r1, [sp, #0x46]
00701884  a2 ff ff ea                                      b #0x701714
00701888  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0070188c  08 c0 16 e5                                      ldr ip, [r6, #-8]
00701890  83 00 a0 e1                                      lsl r0, r3, #1
00701894  b0 11 56 e1                                      ldrh r1, [r6, #-0x10]
00701898  97 2c 2c e0                                      mla ip, r7, ip, r2
0070189c  be 80 56 e1                                      ldrh r8, [r6, #-0xe]
007018a0  b0 00 9c e1                                      ldrh r0, [ip, r0]
007018a4  01 a0 a0 e1                                      mov sl, r1
007018a8  08 90 a0 e1                                      mov sb, r8
007018ac  01 00 50 e1                                      cmp r0, r1
007018b0  01 20 a0 e3                                      mov r2, #1
007018b4  07 00 00 0a                                      beq #0x7018d8
007018b8  01 30 83 e2                                      add r3, r3, #1
007018bc  03 00 53 e3                                      cmp r3, #3
007018c0  01 20 82 e2                                      add r2, r2, #1
007018c4  d2 ff ff 0a                                      beq #0x701814
007018c8  83 00 a0 e1                                      lsl r0, r3, #1
007018cc  b0 00 9c e1                                      ldrh r0, [ip, r0]
007018d0  01 00 50 e1                                      cmp r0, r1
007018d4  f7 ff ff 1a                                      bne #0x7018b8
007018d8  02 00 53 e3                                      cmp r3, #2
007018dc  02 00 a0 11                                      movne r0, r2
007018e0  00 00 a0 03                                      moveq r0, #0
007018e4  80 00 a0 e1                                      lsl r0, r0, #1
007018e8  b0 00 9c e1                                      ldrh r0, [ip, r0]
007018ec  08 a0 a0 e1                                      mov sl, r8
007018f0  01 90 a0 e1                                      mov sb, r1
007018f4  08 00 50 e1                                      cmp r0, r8
007018f8  01 a0 a0 01                                      moveq sl, r1
007018fc  08 90 a0 01                                      moveq sb, r8
00701900  ec ff ff ea                                      b #0x7018b8
00701904  02 00 53 e3                                      cmp r3, #2
00701908  02 00 a0 11                                      movne r0, r2
0070190c  00 00 a0 03                                      moveq r0, #0
00701910  80 00 a0 e1                                      lsl r0, r0, #1
00701914  b0 00 9c e1                                      ldrh r0, [ip, r0]
00701918  08 a0 a0 e1                                      mov sl, r8
0070191c  01 90 a0 e1                                      mov sb, r1
00701920  08 00 50 e1                                      cmp r0, r8
00701924  01 a0 a0 01                                      moveq sl, r1
00701928  08 90 a0 01                                      moveq sb, r8
0070192c  b4 ff ff ea                                      b #0x701804
00701930  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00701934  20 00 13 e3                                      tst r3, #0x20
00701938  11 00 00 1a                                      bne #0x701984
0070193c  00 30 a0 e3                                      mov r3, #0
00701940  13 30 c4 e5                                      strb r3, [r4, #0x13]
00701944  91 ff ff ea                                      b #0x701790
00701948  38 00 9d e5                                      ldr r0, [sp, #0x38]
0070194c  32 7c fa eb                                      bl #0x5a0a1c
00701950  38 00 9d e5                                      ldr r0, [sp, #0x38]
00701954  55 32 f0 eb                                      bl #0x30e2b0
00701958  9c fe ff ea                                      b #0x7013d0
0070195c  0b 00 a0 e1                                      mov r0, fp
00701960  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00701964  2b fc ff eb                                      bl #0x700a18
00701968  08 30 95 e5                                      ldr r3, [r5, #8]
0070196c  51 ff ff ea                                      b #0x7016b8
00701970  0b 00 a0 e1                                      mov r0, fp
00701974  10 20 9d e5                                      ldr r2, [sp, #0x10]
00701978  26 fc ff eb                                      bl #0x700a18
0070197c  08 30 95 e5                                      ldr r3, [r5, #8]
00701980  4c ff ff ea                                      b #0x7016b8
00701984  00 30 94 e5                                      ldr r3, [r4]
00701988  04 00 a0 e1                                      mov r0, r4
0070198c  0f e0 a0 e1                                      mov lr, pc
00701990  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00701994  e8 ff ff ea                                      b #0x70193c
