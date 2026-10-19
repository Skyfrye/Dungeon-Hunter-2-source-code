; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007031d8, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivityC2ERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
; demangled: glitch::scene::CMeshConnectivity::CMeshConnectivity(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
007031d8  00 30 91 e5                                      ldr r3, [r1]
007031dc  00 00 53 e3                                      cmp r3, #0
007031e0  00 30 80 e5                                      str r3, [r0]
007031e4  04 20 93 15                                      ldrne r2, [r3, #4]
007031e8  01 20 82 12                                      addne r2, r2, #1
007031ec  04 20 83 15                                      strne r2, [r3, #4]
007031f0  00 30 a0 e3                                      mov r3, #0
007031f4  14 30 80 e5                                      str r3, [r0, #0x14]
007031f8  04 30 80 e5                                      str r3, [r0, #4]
007031fc  08 30 80 e5                                      str r3, [r0, #8]
00703200  0c 30 80 e5                                      str r3, [r0, #0xc]
00703204  10 30 80 e5                                      str r3, [r0, #0x10]
00703208  1e ff 2f e1                                      bx lr

; FUNCTION 0x0070320c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivityC1ERKN5boost13intrusive_ptrIKNS0_11CMeshBufferEEE
; demangled: glitch::scene::CMeshConnectivity::CMeshConnectivity(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&)
; decoder-mode: arm
0070320c  00 30 91 e5                                      ldr r3, [r1]
00703210  00 00 53 e3                                      cmp r3, #0
00703214  00 30 80 e5                                      str r3, [r0]
00703218  04 20 93 15                                      ldrne r2, [r3, #4]
0070321c  01 20 82 12                                      addne r2, r2, #1
00703220  04 20 83 15                                      strne r2, [r3, #4]
00703224  00 30 a0 e3                                      mov r3, #0
00703228  14 30 80 e5                                      str r3, [r0, #0x14]
0070322c  04 30 80 e5                                      str r3, [r0, #4]
00703230  08 30 80 e5                                      str r3, [r0, #8]
00703234  0c 30 80 e5                                      str r3, [r0, #0xc]
00703238  10 30 80 e5                                      str r3, [r0, #0x10]
0070323c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0070336c, declared_size=360, range_size=360, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivity4saveEPNS_2io10IWriteFileE
; demangled: glitch::scene::CMeshConnectivity::save(glitch::io::IWriteFile*)
; decoder-mode: arm
0070336c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00703370  00 30 90 e5                                      ldr r3, [r0]
00703374  14 d0 4d e2                                      sub sp, sp, #0x14
00703378  00 70 a0 e1                                      mov r7, r0
0070337c  14 30 93 e5                                      ldr r3, [r3, #0x14]
00703380  10 40 8d e2                                      add r4, sp, #0x10
00703384  04 00 8d e2                                      add r0, sp, #4
00703388  00 00 53 e3                                      cmp r3, #0
0070338c  04 30 8d e5                                      str r3, [sp, #4]
00703390  00 20 93 15                                      ldrne r2, [r3]
00703394  01 50 a0 e1                                      mov r5, r1
00703398  01 20 82 12                                      addne r2, r2, #1
0070339c  00 20 83 15                                      strne r2, [r3]
007033a0  04 30 9d 15                                      ldrne r3, [sp, #4]
007033a4  08 60 93 e5                                      ldr r6, [r3, #8]
007033a8  f8 6d f1 eb                                      bl #0x35eb90
007033ac  04 60 24 e5                                      str r6, [r4, #-4]!
007033b0  04 10 a0 e1                                      mov r1, r4
007033b4  04 20 a0 e3                                      mov r2, #4
007033b8  00 30 95 e5                                      ldr r3, [r5]
007033bc  05 00 a0 e1                                      mov r0, r5
007033c0  0f e0 a0 e1                                      mov lr, pc
007033c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007033c8  00 30 97 e5                                      ldr r3, [r7]
007033cc  04 10 a0 e1                                      mov r1, r4
007033d0  00 60 a0 e1                                      mov r6, r0
007033d4  20 c0 93 e5                                      ldr ip, [r3, #0x20]
007033d8  04 20 a0 e3                                      mov r2, #4
007033dc  00 30 95 e5                                      ldr r3, [r5]
007033e0  05 00 a0 e1                                      mov r0, r5
007033e4  0c c0 8d e5                                      str ip, [sp, #0xc]
007033e8  0f e0 a0 e1                                      mov lr, pc
007033ec  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007033f0  08 20 97 e5                                      ldr r2, [r7, #8]
007033f4  04 30 97 e5                                      ldr r3, [r7, #4]
007033f8  06 60 80 e0                                      add r6, r0, r6
007033fc  04 10 a0 e1                                      mov r1, r4
00703400  02 30 63 e0                                      rsb r3, r3, r2
00703404  43 32 a0 e1                                      asr r3, r3, #4
00703408  0c 30 8d e5                                      str r3, [sp, #0xc]
0070340c  00 30 95 e5                                      ldr r3, [r5]
00703410  05 00 a0 e1                                      mov r0, r5
00703414  04 20 a0 e3                                      mov r2, #4
00703418  0f e0 a0 e1                                      mov lr, pc
0070341c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00703420  04 40 97 e5                                      ldr r4, [r7, #4]
00703424  08 30 97 e5                                      ldr r3, [r7, #8]
00703428  00 60 86 e0                                      add r6, r6, r0
0070342c  03 00 54 e1                                      cmp r4, r3
00703430  0a 00 00 2a                                      bhs #0x703460
00703434  04 10 a0 e1                                      mov r1, r4
00703438  00 30 95 e5                                      ldr r3, [r5]
0070343c  05 00 a0 e1                                      mov r0, r5
00703440  10 20 a0 e3                                      mov r2, #0x10
00703444  0f e0 a0 e1                                      mov lr, pc
00703448  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070344c  08 30 97 e5                                      ldr r3, [r7, #8]
00703450  10 40 84 e2                                      add r4, r4, #0x10
00703454  00 60 86 e0                                      add r6, r6, r0
00703458  03 00 54 e1                                      cmp r4, r3
0070345c  f4 ff ff 3a                                      blo #0x703434
00703460  14 10 87 e2                                      add r1, r7, #0x14
00703464  00 30 95 e5                                      ldr r3, [r5]
00703468  04 20 a0 e3                                      mov r2, #4
0070346c  05 00 a0 e1                                      mov r0, r5
00703470  0f e0 a0 e1                                      mov lr, pc
00703474  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00703478  14 30 97 e5                                      ldr r3, [r7, #0x14]
0070347c  06 20 a0 e3                                      mov r2, #6
00703480  10 10 97 e5                                      ldr r1, [r7, #0x10]
00703484  92 03 02 e0                                      mul r2, r2, r3
00703488  00 40 a0 e1                                      mov r4, r0
0070348c  00 30 95 e5                                      ldr r3, [r5]
00703490  05 00 a0 e1                                      mov r0, r5
00703494  0f e0 a0 e1                                      mov lr, pc
00703498  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070349c  08 38 0e e3                                      movw r3, #0xe808
007034a0  10 10 8d e2                                      add r1, sp, #0x10
007034a4  ff 30 4c e3                                      movt r3, #0xc0ff
007034a8  08 30 21 e5                                      str r3, [r1, #-8]!
007034ac  00 40 84 e0                                      add r4, r4, r0
007034b0  00 30 95 e5                                      ldr r3, [r5]
007034b4  05 00 a0 e1                                      mov r0, r5
007034b8  04 20 a0 e3                                      mov r2, #4
007034bc  0f e0 a0 e1                                      mov lr, pc
007034c0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007034c4  06 60 84 e0                                      add r6, r4, r6
007034c8  00 00 86 e0                                      add r0, r6, r0
007034cc  14 d0 8d e2                                      add sp, sp, #0x14
007034d0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0070355c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivityD1Ev
; demangled: glitch::scene::CMeshConnectivity::~CMeshConnectivity()
; decoder-mode: arm
0070355c  10 40 2d e9                                      push {r4, lr}
00703560  00 40 a0 e1                                      mov r4, r0
00703564  10 00 90 e5                                      ldr r0, [r0, #0x10]
00703568  00 00 50 e3                                      cmp r0, #0
0070356c  00 00 00 0a                                      beq #0x703574
00703570  d0 2a f0 eb                                      bl #0x30e0b8
00703574  04 00 94 e5                                      ldr r0, [r4, #4]
00703578  00 00 50 e3                                      cmp r0, #0
0070357c  00 00 00 0a                                      beq #0x703584
00703580  b2 33 f0 eb                                      bl #0x310450
00703584  00 00 94 e5                                      ldr r0, [r4]
00703588  00 00 50 e3                                      cmp r0, #0
0070358c  00 00 00 0a                                      beq #0x703594
00703590  fb 67 f0 eb                                      bl #0x31d584
00703594  04 00 a0 e1                                      mov r0, r4
00703598  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0070359c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivityD2Ev
; demangled: glitch::scene::CMeshConnectivity::~CMeshConnectivity()
; decoder-mode: arm
0070359c  10 40 2d e9                                      push {r4, lr}
007035a0  00 40 a0 e1                                      mov r4, r0
007035a4  10 00 90 e5                                      ldr r0, [r0, #0x10]
007035a8  00 00 50 e3                                      cmp r0, #0
007035ac  00 00 00 0a                                      beq #0x7035b4
007035b0  c0 2a f0 eb                                      bl #0x30e0b8
007035b4  04 00 94 e5                                      ldr r0, [r4, #4]
007035b8  00 00 50 e3                                      cmp r0, #0
007035bc  00 00 00 0a                                      beq #0x7035c4
007035c0  a2 33 f0 eb                                      bl #0x310450
007035c4  00 00 94 e5                                      ldr r0, [r4]
007035c8  00 00 50 e3                                      cmp r0, #0
007035cc  00 00 00 0a                                      beq #0x7035d4
007035d0  eb 67 f0 eb                                      bl #0x31d584
007035d4  04 00 a0 e1                                      mov r0, r4
007035d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x007037d4, declared_size=144, range_size=144, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivity15addEdgeWithFaceERNS1_5SEdgeEj
; demangled: glitch::scene::CMeshConnectivity::addEdgeWithFace(glitch::scene::CMeshConnectivity::SEdge&, unsigned int)
; decoder-mode: arm
007037d4  70 40 2d e9                                      push {r4, r5, r6, lr}
007037d8  00 40 a0 e1                                      mov r4, r0
007037dc  08 d0 4d e2                                      sub sp, sp, #8
007037e0  01 50 a0 e1                                      mov r5, r1
007037e4  04 30 8d e2                                      add r3, sp, #4
007037e8  02 60 a0 e1                                      mov r6, r2
007037ec  04 00 90 e5                                      ldr r0, [r0, #4]
007037f0  08 10 94 e5                                      ldr r1, [r4, #8]
007037f4  05 20 a0 e1                                      mov r2, r5
007037f8  90 fe ff eb                                      bl #0x703240
007037fc  08 30 94 e5                                      ldr r3, [r4, #8]
00703800  00 00 53 e1                                      cmp r3, r0
00703804  03 00 00 0a                                      beq #0x703818
00703808  06 10 a0 e1                                      mov r1, r6
0070380c  30 ff ff eb                                      bl #0x7034d4
00703810  08 d0 8d e2                                      add sp, sp, #8
00703814  70 80 bd e8                                      pop {r4, r5, r6, pc}
00703818  06 10 a0 e1                                      mov r1, r6
0070381c  05 00 a0 e1                                      mov r0, r5
00703820  2b ff ff eb                                      bl #0x7034d4
00703824  08 c0 94 e5                                      ldr ip, [r4, #8]
00703828  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0070382c  03 00 5c e1                                      cmp ip, r3
00703830  06 00 00 0a                                      beq #0x703850
00703834  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00703838  07 00 ac e8                                      stm ip!, {r0, r1, r2}
0070383c  b0 30 cc e1                                      strh r3, [ip]
00703840  08 30 94 e5                                      ldr r3, [r4, #8]
00703844  10 30 83 e2                                      add r3, r3, #0x10
00703848  08 30 84 e5                                      str r3, [r4, #8]
0070384c  ef ff ff ea                                      b #0x703810
00703850  04 00 84 e2                                      add r0, r4, #4
00703854  0c 10 a0 e1                                      mov r1, ip
00703858  05 20 a0 e1                                      mov r2, r5
0070385c  a5 ff ff eb                                      bl #0x7036f8
00703860  ea ff ff ea                                      b #0x703810

; FUNCTION 0x00703864, declared_size=616, range_size=616, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivity4loadEPNS_2io9IReadFileE
; demangled: glitch::scene::CMeshConnectivity::load(glitch::io::IReadFile*)
; decoder-mode: arm
00703864  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00703868  00 50 a0 e3                                      mov r5, #0
0070386c  28 d0 4d e2                                      sub sp, sp, #0x28
00703870  18 50 8d e5                                      str r5, [sp, #0x18]
00703874  1c 50 8d e5                                      str r5, [sp, #0x1c]
00703878  18 a0 8d e2                                      add sl, sp, #0x18
0070387c  08 20 a0 e3                                      mov r2, #8
00703880  00 30 91 e5                                      ldr r3, [r1]
00703884  01 60 a0 e1                                      mov r6, r1
00703888  00 40 a0 e1                                      mov r4, r0
0070388c  01 00 a0 e1                                      mov r0, r1
00703890  0a 10 a0 e1                                      mov r1, sl
00703894  0f e0 a0 e1                                      mov lr, pc
00703898  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0070389c  14 30 95 e5                                      ldr r3, [r5, #0x14]
007038a0  00 70 a0 e1                                      mov r7, r0
007038a4  20 00 8d e2                                      add r0, sp, #0x20
007038a8  05 00 53 e1                                      cmp r3, r5
007038ac  20 30 8d e5                                      str r3, [sp, #0x20]
007038b0  00 20 93 15                                      ldrne r2, [r3]
007038b4  01 20 82 12                                      addne r2, r2, #1
007038b8  00 20 83 15                                      strne r2, [r3]
007038bc  20 30 9d 15                                      ldrne r3, [sp, #0x20]
007038c0  08 50 93 e5                                      ldr r5, [r3, #8]
007038c4  b1 6c f1 eb                                      bl #0x35eb90
007038c8  18 30 9d e5                                      ldr r3, [sp, #0x18]
007038cc  05 00 53 e1                                      cmp r3, r5
007038d0  75 00 00 0a                                      beq #0x703aac
007038d4  e8 01 9f e5                                      ldr r0, [pc, #0x1e8]
007038d8  03 10 a0 e3                                      mov r1, #3
007038dc  00 00 8f e0                                      add r0, pc, r0
007038e0  ee 1c fc eb                                      bl #0x60aca0
007038e4  00 30 96 e5                                      ldr r3, [r6]
007038e8  04 20 a0 e3                                      mov r2, #4
007038ec  06 00 a0 e1                                      mov r0, r6
007038f0  0a 10 a0 e1                                      mov r1, sl
007038f4  0f e0 a0 e1                                      mov lr, pc
007038f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007038fc  0c 00 94 e9                                      ldmib r4, {r2, r3}
00703900  07 70 80 e0                                      add r7, r0, r7
00703904  03 00 52 e1                                      cmp r2, r3
00703908  06 00 00 0a                                      beq #0x703928
0070390c  03 00 a0 e1                                      mov r0, r3
00703910  03 10 a0 e1                                      mov r1, r3
00703914  00 c0 a0 e3                                      mov ip, #0
00703918  24 30 8d e2                                      add r3, sp, #0x24
0070391c  00 c0 8d e5                                      str ip, [sp]
00703920  f8 fe ff eb                                      bl #0x703508
00703924  08 00 84 e5                                      str r0, [r4, #8]
00703928  04 90 84 e2                                      add sb, r4, #4
0070392c  09 00 a0 e1                                      mov r0, sb
00703930  18 10 9d e5                                      ldr r1, [sp, #0x18]
00703934  3f ff ff eb                                      bl #0x703638
00703938  18 30 9d e5                                      ldr r3, [sp, #0x18]
0070393c  00 00 53 e3                                      cmp r3, #0
00703940  1a 00 00 0a                                      beq #0x7039b0
00703944  00 50 a0 e3                                      mov r5, #0
00703948  08 80 8d e2                                      add r8, sp, #8
0070394c  00 20 a0 e3                                      mov r2, #0
00703950  b4 21 cd e1                                      strh r2, [sp, #0x14]
00703954  b8 20 cd e1                                      strh r2, [sp, #8]
00703958  ba 20 cd e1                                      strh r2, [sp, #0xa]
0070395c  00 30 96 e5                                      ldr r3, [r6]
00703960  08 10 a0 e1                                      mov r1, r8
00703964  10 20 a0 e3                                      mov r2, #0x10
00703968  06 00 a0 e1                                      mov r0, r6
0070396c  0f e0 a0 e1                                      mov lr, pc
00703970  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00703974  08 c0 94 e5                                      ldr ip, [r4, #8]
00703978  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0070397c  00 70 87 e0                                      add r7, r7, r0
00703980  03 00 5c e1                                      cmp ip, r3
00703984  43 00 00 0a                                      beq #0x703a98
00703988  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
0070398c  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00703990  b0 30 cc e1                                      strh r3, [ip]
00703994  08 30 94 e5                                      ldr r3, [r4, #8]
00703998  10 30 83 e2                                      add r3, r3, #0x10
0070399c  08 30 84 e5                                      str r3, [r4, #8]
007039a0  18 30 9d e5                                      ldr r3, [sp, #0x18]
007039a4  01 50 85 e2                                      add r5, r5, #1
007039a8  05 00 53 e1                                      cmp r3, r5
007039ac  e6 ff ff 8a                                      bhi #0x70394c
007039b0  00 30 96 e5                                      ldr r3, [r6]
007039b4  06 00 a0 e1                                      mov r0, r6
007039b8  14 10 84 e2                                      add r1, r4, #0x14
007039bc  04 20 a0 e3                                      mov r2, #4
007039c0  0f e0 a0 e1                                      mov lr, pc
007039c4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
007039c8  10 30 94 e5                                      ldr r3, [r4, #0x10]
007039cc  07 70 80 e0                                      add r7, r0, r7
007039d0  00 00 53 e3                                      cmp r3, #0
007039d4  01 00 00 0a                                      beq #0x7039e0
007039d8  03 00 a0 e1                                      mov r0, r3
007039dc  b5 29 f0 eb                                      bl #0x30e0b8
007039e0  14 50 94 e5                                      ldr r5, [r4, #0x14]
007039e4  06 80 a0 e3                                      mov r8, #6
007039e8  00 10 a0 e3                                      mov r1, #0
007039ec  98 05 08 e0                                      mul r8, r8, r5
007039f0  08 00 a0 e1                                      mov r0, r8
007039f4  eb c1 f8 eb                                      bl #0x5341a8
007039f8  00 00 55 e3                                      cmp r5, #0
007039fc  00 10 a0 e1                                      mov r1, r0
00703a00  08 00 00 0a                                      beq #0x703a28
00703a04  00 80 88 e0                                      add r8, r8, r0
00703a08  00 30 a0 e1                                      mov r3, r0
00703a0c  00 20 e0 e3                                      mvn r2, #0
00703a10  b0 20 c3 e1                                      strh r2, [r3]
00703a14  b2 20 c3 e1                                      strh r2, [r3, #2]
00703a18  b4 20 c3 e1                                      strh r2, [r3, #4]
00703a1c  06 30 83 e2                                      add r3, r3, #6
00703a20  08 00 53 e1                                      cmp r3, r8
00703a24  f8 ff ff 1a                                      bne #0x703a0c
00703a28  14 30 94 e5                                      ldr r3, [r4, #0x14]
00703a2c  10 10 84 e5                                      str r1, [r4, #0x10]
00703a30  06 20 a0 e3                                      mov r2, #6
00703a34  92 03 02 e0                                      mul r2, r2, r3
00703a38  06 00 a0 e1                                      mov r0, r6
00703a3c  00 30 96 e5                                      ldr r3, [r6]
00703a40  0f e0 a0 e1                                      mov lr, pc
00703a44  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00703a48  00 30 96 e5                                      ldr r3, [r6]
00703a4c  00 70 87 e0                                      add r7, r7, r0
00703a50  04 20 a0 e3                                      mov r2, #4
00703a54  0a 10 a0 e1                                      mov r1, sl
00703a58  06 00 a0 e1                                      mov r0, r6
00703a5c  0f e0 a0 e1                                      mov lr, pc
00703a60  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00703a64  18 20 9d e5                                      ldr r2, [sp, #0x18]
00703a68  08 38 0e e3                                      movw r3, #0xe808
00703a6c  ff 30 4c e3                                      movt r3, #0xc0ff
00703a70  03 00 52 e1                                      cmp r2, r3
00703a74  00 70 87 e0                                      add r7, r7, r0
00703a78  03 00 00 0a                                      beq #0x703a8c
00703a7c  44 00 9f e5                                      ldr r0, [pc, #0x44]
00703a80  03 10 a0 e3                                      mov r1, #3
00703a84  00 00 8f e0                                      add r0, pc, r0
00703a88  84 1c fc eb                                      bl #0x60aca0
00703a8c  07 00 a0 e1                                      mov r0, r7
00703a90  28 d0 8d e2                                      add sp, sp, #0x28
00703a94  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00703a98  0c 10 a0 e1                                      mov r1, ip
00703a9c  09 00 a0 e1                                      mov r0, sb
00703aa0  08 20 a0 e1                                      mov r2, r8
00703aa4  13 ff ff eb                                      bl #0x7036f8
00703aa8  bc ff ff ea                                      b #0x7039a0
00703aac  00 30 a0 e3                                      mov r3, #0
00703ab0  20 30 93 e5                                      ldr r3, [r3, #0x20]
00703ab4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00703ab8  03 00 52 e1                                      cmp r2, r3
00703abc  84 ff ff 1a                                      bne #0x7038d4
00703ac0  87 ff ff ea                                      b #0x7038e4
; mapping-symbol data/literal pool
00703ac4  3c e5 1e 00 f4 e3 1e 00                          .byte 0x3c, 0xe5, 0x1e, 0x00, 0xf4, 0xe3, 0x1e, 0x00

; FUNCTION 0x00703acc, declared_size=1756, range_size=1756, mode=arm
; class-group: glitch::scene::CMeshConnectivity
; alias: _ZN6glitch5scene17CMeshConnectivity13creatEdgeListEb
; demangled: glitch::scene::CMeshConnectivity::creatEdgeList(bool)
; decoder-mode: arm
00703acc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00703ad0  00 80 a0 e1                                      mov r8, r0
00703ad4  00 00 90 e5                                      ldr r0, [r0]
00703ad8  74 d0 4d e2                                      sub sp, sp, #0x74
00703adc  01 50 a0 e1                                      mov r5, r1
00703ae0  2c 00 8d e5                                      str r0, [sp, #0x2c]
00703ae4  01 10 a0 e3                                      mov r1, #1
00703ae8  18 00 90 e5                                      ldr r0, [r0, #0x18]
00703aec  fa 77 fa eb                                      bl #0x5a1adc
00703af0  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00703af4  00 30 98 e5                                      ldr r3, [r8]
00703af8  1c 20 91 e5                                      ldr r2, [r1, #0x1c]
00703afc  14 30 93 e5                                      ldr r3, [r3, #0x14]
00703b00  01 10 a0 e3                                      mov r1, #1
00703b04  02 20 80 e0                                      add r2, r0, r2
00703b08  00 00 53 e3                                      cmp r3, #0
00703b0c  20 20 8d e5                                      str r2, [sp, #0x20]
00703b10  6c 30 8d e5                                      str r3, [sp, #0x6c]
00703b14  00 20 93 15                                      ldrne r2, [r3]
00703b18  01 20 82 12                                      addne r2, r2, #1
00703b1c  00 20 83 15                                      strne r2, [r3]
00703b20  6c 30 9d 15                                      ldrne r3, [sp, #0x6c]
00703b24  14 00 93 e5                                      ldr r0, [r3, #0x14]
00703b28  14 30 83 e2                                      add r3, r3, #0x14
00703b2c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00703b30  e9 77 fa eb                                      bl #0x5a1adc
00703b34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00703b38  04 30 92 e5                                      ldr r3, [r2, #4]
00703b3c  03 30 80 e0                                      add r3, r0, r3
00703b40  6c 00 8d e2                                      add r0, sp, #0x6c
00703b44  14 30 8d e5                                      str r3, [sp, #0x14]
00703b48  10 6c f1 eb                                      bl #0x35eb90
00703b4c  00 30 98 e5                                      ldr r3, [r8]
00703b50  00 10 a0 e3                                      mov r1, #0
00703b54  20 30 93 e5                                      ldr r3, [r3, #0x20]
00703b58  83 00 a0 e1                                      lsl r0, r3, #1
00703b5c  18 30 8d e5                                      str r3, [sp, #0x18]
00703b60  90 c1 f8 eb                                      bl #0x5341a8
00703b64  10 00 8d e5                                      str r0, [sp, #0x10]
00703b68  10 00 98 e5                                      ldr r0, [r8, #0x10]
00703b6c  00 00 50 e3                                      cmp r0, #0
00703b70  00 00 00 0a                                      beq #0x703b78
00703b74  4f 29 f0 eb                                      bl #0x30e0b8
00703b78  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00703b7c  ab 3a 0a e3                                      movw r3, #0xaaab
00703b80  aa 3a 4a e3                                      movt r3, #0xaaaa
00703b84  93 cc 83 e0                                      umull ip, r3, r3, ip
00703b88  06 40 a0 e3                                      mov r4, #6
00703b8c  a3 30 a0 e1                                      lsr r3, r3, #1
00703b90  94 03 04 e0                                      mul r4, r4, r3
00703b94  00 10 a0 e3                                      mov r1, #0
00703b98  04 00 a0 e1                                      mov r0, r4
00703b9c  28 30 8d e5                                      str r3, [sp, #0x28]
00703ba0  80 c1 f8 eb                                      bl #0x5341a8
00703ba4  28 10 9d e5                                      ldr r1, [sp, #0x28]
00703ba8  00 00 51 e3                                      cmp r1, #0
00703bac  08 00 00 0a                                      beq #0x703bd4
00703bb0  00 40 84 e0                                      add r4, r4, r0
00703bb4  00 30 a0 e1                                      mov r3, r0
00703bb8  00 20 e0 e3                                      mvn r2, #0
00703bbc  b0 20 c3 e1                                      strh r2, [r3]
00703bc0  b2 20 c3 e1                                      strh r2, [r3, #2]
00703bc4  b4 20 c3 e1                                      strh r2, [r3, #4]
00703bc8  06 30 83 e2                                      add r3, r3, #6
00703bcc  04 00 53 e1                                      cmp r3, r4
00703bd0  f8 ff ff 1a                                      bne #0x703bb8
00703bd4  00 00 55 e3                                      cmp r5, #0
00703bd8  10 00 88 e5                                      str r0, [r8, #0x10]
00703bdc  6a 00 00 1a                                      bne #0x703d8c
00703be0  18 30 9d e5                                      ldr r3, [sp, #0x18]
00703be4  00 00 53 e3                                      cmp r3, #0
00703be8  09 00 00 0a                                      beq #0x703c14
00703bec  20 20 9d e5                                      ldr r2, [sp, #0x20]
00703bf0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00703bf4  10 00 9d e5                                      ldr r0, [sp, #0x10]
00703bf8  05 30 a0 e1                                      mov r3, r5
00703bfc  b5 c0 92 e1                                      ldrh ip, [r2, r5]
00703c00  01 30 83 e2                                      add r3, r3, #1
00703c04  01 00 53 e1                                      cmp r3, r1
00703c08  b5 c0 80 e1                                      strh ip, [r0, r5]
00703c0c  02 50 85 e2                                      add r5, r5, #2
00703c10  f9 ff ff 1a                                      bne #0x703bfc
00703c14  28 00 9d e5                                      ldr r0, [sp, #0x28]
00703c18  00 00 50 e3                                      cmp r0, #0
00703c1c  14 00 88 e5                                      str r0, [r8, #0x14]
00703c20  38 00 00 0a                                      beq #0x703d08
00703c24  10 90 9d e5                                      ldr sb, [sp, #0x10]
00703c28  00 a0 a0 e3                                      mov sl, #0
00703c2c  4c 10 8d e2                                      add r1, sp, #0x4c
00703c30  3c 20 8d e2                                      add r2, sp, #0x3c
00703c34  0a 50 a0 e1                                      mov r5, sl
00703c38  5c b0 8d e2                                      add fp, sp, #0x5c
00703c3c  0c 10 8d e5                                      str r1, [sp, #0xc]
00703c40  08 20 8d e5                                      str r2, [sp, #8]
00703c44  10 30 9d e5                                      ldr r3, [sp, #0x10]
00703c48  b2 70 d9 e1                                      ldrh r7, [sb, #2]
00703c4c  b4 60 d9 e1                                      ldrh r6, [sb, #4]
00703c50  ba 40 93 e1                                      ldrh r4, [r3, sl]
00703c54  10 30 98 e5                                      ldr r3, [r8, #0x10]
00703c58  00 c0 a0 e3                                      mov ip, #0
00703c5c  07 00 54 e1                                      cmp r4, r7
00703c60  0a 20 83 e0                                      add r2, r3, sl
00703c64  b2 70 c2 e1                                      strh r7, [r2, #2]
00703c68  b4 60 c2 e1                                      strh r6, [r2, #4]
00703c6c  08 00 a0 e1                                      mov r0, r8
00703c70  ba 40 83 e1                                      strh r4, [r3, sl]
00703c74  05 20 a0 e1                                      mov r2, r5
00703c78  04 30 a0 21                                      movhs r3, r4
00703c7c  07 30 a0 31                                      movlo r3, r7
00703c80  0b 10 a0 e1                                      mov r1, fp
00703c84  be 35 cd e1                                      strh r3, [sp, #0x5e]
00703c88  b8 c6 cd e1                                      strh ip, [sp, #0x68]
00703c8c  bc 75 cd 21                                      strhhs r7, [sp, #0x5c]
00703c90  bc 45 cd 31                                      strhlo r4, [sp, #0x5c]
00703c94  ce fe ff eb                                      bl #0x7037d4
00703c98  06 00 57 e1                                      cmp r7, r6
00703c9c  00 00 a0 e3                                      mov r0, #0
00703ca0  bc 74 cd 31                                      strhlo r7, [sp, #0x4c]
00703ca4  05 20 a0 e1                                      mov r2, r5
00703ca8  06 70 a0 31                                      movlo r7, r6
00703cac  b8 05 cd e1                                      strh r0, [sp, #0x58]
00703cb0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00703cb4  08 00 a0 e1                                      mov r0, r8
00703cb8  bc 64 cd 21                                      strhhs r6, [sp, #0x4c]
00703cbc  be 74 cd e1                                      strh r7, [sp, #0x4e]
00703cc0  c3 fe ff eb                                      bl #0x7037d4
00703cc4  06 00 54 e1                                      cmp r4, r6
00703cc8  00 10 a0 e3                                      mov r1, #0
00703ccc  bc 43 cd 91                                      strhls r4, [sp, #0x3c]
00703cd0  b8 14 cd e1                                      strh r1, [sp, #0x48]
00703cd4  06 40 a0 91                                      movls r4, r6
00703cd8  05 20 a0 e1                                      mov r2, r5
00703cdc  08 00 a0 e1                                      mov r0, r8
00703ce0  08 10 9d e5                                      ldr r1, [sp, #8]
00703ce4  bc 63 cd 81                                      strhhi r6, [sp, #0x3c]
00703ce8  be 43 cd e1                                      strh r4, [sp, #0x3e]
00703cec  b8 fe ff eb                                      bl #0x7037d4
00703cf0  14 30 98 e5                                      ldr r3, [r8, #0x14]
00703cf4  01 50 85 e2                                      add r5, r5, #1
00703cf8  06 90 89 e2                                      add sb, sb, #6
00703cfc  05 00 53 e1                                      cmp r3, r5
00703d00  06 a0 8a e2                                      add sl, sl, #6
00703d04  ce ff ff 8a                                      bhi #0x703c44
00703d08  10 20 9d e5                                      ldr r2, [sp, #0x10]
00703d0c  00 00 52 e3                                      cmp r2, #0
00703d10  01 00 00 0a                                      beq #0x703d1c
00703d14  02 00 a0 e1                                      mov r0, r2
00703d18  e6 28 f0 eb                                      bl #0x30e0b8
00703d1c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00703d20  00 00 53 e3                                      cmp r3, #0
00703d24  09 00 00 0a                                      beq #0x703d50
00703d28  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00703d2c  00 40 9c e5                                      ldr r4, [ip]
00703d30  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00703d34  1f 20 03 e2                                      and r2, r3, #0x1f
00703d38  01 00 52 e3                                      cmp r2, #1
00703d3c  71 00 00 9a                                      bls #0x703f08
00703d40  01 20 42 e2                                      sub r2, r2, #1
00703d44  1f 30 c3 e3                                      bic r3, r3, #0x1f
00703d48  03 30 82 e1                                      orr r3, r2, r3
00703d4c  13 30 c4 e5                                      strb r3, [r4, #0x13]
00703d50  20 00 9d e5                                      ldr r0, [sp, #0x20]
00703d54  00 00 50 e3                                      cmp r0, #0
00703d58  09 00 00 0a                                      beq #0x703d84
00703d5c  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00703d60  18 40 91 e5                                      ldr r4, [r1, #0x18]
00703d64  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
00703d68  1f 20 03 e2                                      and r2, r3, #0x1f
00703d6c  01 00 52 e3                                      cmp r2, #1
00703d70  5e 00 00 9a                                      bls #0x703ef0
00703d74  01 20 42 e2                                      sub r2, r2, #1
00703d78  1f 30 c3 e3                                      bic r3, r3, #0x1f
00703d7c  03 30 82 e1                                      orr r3, r2, r3
00703d80  13 30 c4 e5                                      strb r3, [r4, #0x13]
00703d84  74 d0 8d e2                                      add sp, sp, #0x74
00703d88  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00703d8c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00703d90  00 00 5c e3                                      cmp ip, #0
00703d94  9e ff ff 0a                                      beq #0x703c14
00703d98  00 90 a0 e3                                      mov sb, #0
00703d9c  08 90 8d e5                                      str sb, [sp, #8]
00703da0  30 90 8d e5                                      str sb, [sp, #0x30]
00703da4  0c 90 8d e5                                      str sb, [sp, #0xc]
00703da8  09 b0 a0 e1                                      mov fp, sb
00703dac  34 80 8d e5                                      str r8, [sp, #0x34]
00703db0  18 00 00 ea                                      b #0x703e18
00703db4  07 00 a0 e1                                      mov r0, r7
00703db8  08 10 94 e5                                      ldr r1, [r4, #8]
00703dbc  72 28 f0 eb                                      bl #0x30df8c
00703dc0  00 00 50 e3                                      cmp r0, #0
00703dc4  2a 00 00 0a                                      beq #0x703e74
00703dc8  08 00 a0 e1                                      mov r0, r8
00703dcc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00703dd0  6d 28 f0 eb                                      bl #0x30df8c
00703dd4  00 00 50 e3                                      cmp r0, #0
00703dd8  25 00 00 0a                                      beq #0x703e74
00703ddc  08 10 9d e5                                      ldr r1, [sp, #8]
00703de0  01 00 54 e1                                      cmp r4, r1
00703de4  35 00 00 0a                                      beq #0x703ec0
00703de8  b0 a0 d4 e1                                      ldrh sl, [r4]
00703dec  0b 40 a0 e1                                      mov r4, fp
00703df0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00703df4  18 20 9d e5                                      ldr r2, [sp, #0x18]
00703df8  10 30 9d e5                                      ldr r3, [sp, #0x10]
00703dfc  01 10 81 e2                                      add r1, r1, #1
00703e00  02 00 51 e1                                      cmp r1, r2
00703e04  0c 10 8d e5                                      str r1, [sp, #0xc]
00703e08  b9 a0 83 e1                                      strh sl, [r3, sb]
00703e0c  02 90 89 e2                                      add sb, sb, #2
00703e10  7f 00 00 0a                                      beq #0x704014
00703e14  04 b0 a0 e1                                      mov fp, r4
00703e18  20 00 9d e5                                      ldr r0, [sp, #0x20]
00703e1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00703e20  08 c0 9d e5                                      ldr ip, [sp, #8]
00703e24  b9 a0 90 e1                                      ldrh sl, [r0, sb]
00703e28  be 10 d2 e1                                      ldrh r1, [r2, #0xe]
00703e2c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00703e30  0c 30 6b e0                                      rsb r3, fp, ip
00703e34  91 0a 01 e0                                      mul r1, r1, sl
00703e38  43 63 a0 e1                                      asr r6, r3, #6
00703e3c  01 20 80 e0                                      add r2, r0, r1
00703e40  43 32 a0 e1                                      asr r3, r3, #4
00703e44  00 00 56 e3                                      cmp r6, #0
00703e48  01 50 90 e7                                      ldr r5, [r0, r1]
00703e4c  08 80 92 e5                                      ldr r8, [r2, #8]
00703e50  04 70 92 e5                                      ldr r7, [r2, #4]
00703e54  24 30 8d e5                                      str r3, [sp, #0x24]
00703e58  99 00 00 da                                      ble #0x7040c4
00703e5c  0b 40 a0 e1                                      mov r4, fp
00703e60  05 00 a0 e1                                      mov r0, r5
00703e64  04 10 94 e5                                      ldr r1, [r4, #4]
00703e68  47 28 f0 eb                                      bl #0x30df8c
00703e6c  00 00 50 e3                                      cmp r0, #0
00703e70  cf ff ff 1a                                      bne #0x703db4
00703e74  05 00 a0 e1                                      mov r0, r5
00703e78  14 10 94 e5                                      ldr r1, [r4, #0x14]
00703e7c  42 28 f0 eb                                      bl #0x30df8c
00703e80  00 00 50 e3                                      cmp r0, #0
00703e84  25 00 00 0a                                      beq #0x703f20
00703e88  07 00 a0 e1                                      mov r0, r7
00703e8c  18 10 94 e5                                      ldr r1, [r4, #0x18]
00703e90  3d 28 f0 eb                                      bl #0x30df8c
00703e94  00 00 50 e3                                      cmp r0, #0
00703e98  20 00 00 0a                                      beq #0x703f20
00703e9c  08 00 a0 e1                                      mov r0, r8
00703ea0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
00703ea4  38 28 f0 eb                                      bl #0x30df8c
00703ea8  00 00 50 e3                                      cmp r0, #0
00703eac  1b 00 00 0a                                      beq #0x703f20
00703eb0  08 10 9d e5                                      ldr r1, [sp, #8]
00703eb4  10 40 84 e2                                      add r4, r4, #0x10
00703eb8  01 00 54 e1                                      cmp r4, r1
00703ebc  c9 ff ff 1a                                      bne #0x703de8
00703ec0  30 20 9d e5                                      ldr r2, [sp, #0x30]
00703ec4  08 30 9d e5                                      ldr r3, [sp, #8]
00703ec8  03 00 52 e1                                      cmp r2, r3
00703ecc  84 00 00 0a                                      beq #0x7040e4
00703ed0  04 50 83 e5                                      str r5, [r3, #4]
00703ed4  08 70 83 e5                                      str r7, [r3, #8]
00703ed8  0c 80 83 e5                                      str r8, [r3, #0xc]
00703edc  b0 a0 c3 e1                                      strh sl, [r3]
00703ee0  10 30 83 e2                                      add r3, r3, #0x10
00703ee4  0b 40 a0 e1                                      mov r4, fp
00703ee8  08 30 8d e5                                      str r3, [sp, #8]
00703eec  bf ff ff ea                                      b #0x703df0
00703ef0  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00703ef4  20 00 13 e3                                      tst r3, #0x20
00703ef8  74 00 00 1a                                      bne #0x7040d0
00703efc  00 30 a0 e3                                      mov r3, #0
00703f00  13 30 c4 e5                                      strb r3, [r4, #0x13]
00703f04  9e ff ff ea                                      b #0x703d84
00703f08  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
00703f0c  20 00 13 e3                                      tst r3, #0x20
00703f10  66 00 00 1a                                      bne #0x7040b0
00703f14  00 30 a0 e3                                      mov r3, #0
00703f18  13 30 c4 e5                                      strb r3, [r4, #0x13]
00703f1c  8b ff ff ea                                      b #0x703d50
00703f20  05 00 a0 e1                                      mov r0, r5
00703f24  24 10 94 e5                                      ldr r1, [r4, #0x24]
00703f28  17 28 f0 eb                                      bl #0x30df8c
00703f2c  00 00 50 e3                                      cmp r0, #0
00703f30  0a 00 00 0a                                      beq #0x703f60
00703f34  07 00 a0 e1                                      mov r0, r7
00703f38  28 10 94 e5                                      ldr r1, [r4, #0x28]
00703f3c  12 28 f0 eb                                      bl #0x30df8c
00703f40  00 00 50 e3                                      cmp r0, #0
00703f44  05 00 00 0a                                      beq #0x703f60
00703f48  08 00 a0 e1                                      mov r0, r8
00703f4c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00703f50  0d 28 f0 eb                                      bl #0x30df8c
00703f54  00 00 50 e3                                      cmp r0, #0
00703f58  20 40 84 12                                      addne r4, r4, #0x20
00703f5c  9e ff ff 1a                                      bne #0x703ddc
00703f60  05 00 a0 e1                                      mov r0, r5
00703f64  34 10 94 e5                                      ldr r1, [r4, #0x34]
00703f68  07 28 f0 eb                                      bl #0x30df8c
00703f6c  00 00 50 e3                                      cmp r0, #0
00703f70  0a 00 00 0a                                      beq #0x703fa0
00703f74  07 00 a0 e1                                      mov r0, r7
00703f78  38 10 94 e5                                      ldr r1, [r4, #0x38]
00703f7c  02 28 f0 eb                                      bl #0x30df8c
00703f80  00 00 50 e3                                      cmp r0, #0
00703f84  05 00 00 0a                                      beq #0x703fa0
00703f88  08 00 a0 e1                                      mov r0, r8
00703f8c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00703f90  fd 27 f0 eb                                      bl #0x30df8c
00703f94  00 00 50 e3                                      cmp r0, #0
00703f98  30 40 84 12                                      addne r4, r4, #0x30
00703f9c  8e ff ff 1a                                      bne #0x703ddc
00703fa0  01 60 56 e2                                      subs r6, r6, #1
00703fa4  40 40 84 e2                                      add r4, r4, #0x40
00703fa8  ac ff ff 1a                                      bne #0x703e60
00703fac  08 20 9d e5                                      ldr r2, [sp, #8]
00703fb0  02 30 64 e0                                      rsb r3, r4, r2
00703fb4  43 32 a0 e1                                      asr r3, r3, #4
00703fb8  02 00 53 e3                                      cmp r3, #2
00703fbc  2a 00 00 0a                                      beq #0x70406c
00703fc0  03 00 53 e3                                      cmp r3, #3
00703fc4  18 00 00 0a                                      beq #0x70402c
00703fc8  01 00 53 e3                                      cmp r3, #1
00703fcc  08 40 9d 15                                      ldrne r4, [sp, #8]
00703fd0  81 ff ff 1a                                      bne #0x703ddc
00703fd4  05 00 a0 e1                                      mov r0, r5
00703fd8  04 10 94 e5                                      ldr r1, [r4, #4]
00703fdc  ea 27 f0 eb                                      bl #0x30df8c
00703fe0  00 00 50 e3                                      cmp r0, #0
00703fe4  b5 ff ff 0a                                      beq #0x703ec0
00703fe8  07 00 a0 e1                                      mov r0, r7
00703fec  08 10 94 e5                                      ldr r1, [r4, #8]
00703ff0  e5 27 f0 eb                                      bl #0x30df8c
00703ff4  00 00 50 e3                                      cmp r0, #0
00703ff8  b0 ff ff 0a                                      beq #0x703ec0
00703ffc  08 00 a0 e1                                      mov r0, r8
00704000  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00704004  e0 27 f0 eb                                      bl #0x30df8c
00704008  00 00 50 e3                                      cmp r0, #0
0070400c  ab ff ff 0a                                      beq #0x703ec0
00704010  71 ff ff ea                                      b #0x703ddc
00704014  00 00 54 e3                                      cmp r4, #0
00704018  34 80 9d e5                                      ldr r8, [sp, #0x34]
0070401c  fc fe ff 0a                                      beq #0x703c14
00704020  04 00 a0 e1                                      mov r0, r4
00704024  09 31 f0 eb                                      bl #0x310450
00704028  f9 fe ff ea                                      b #0x703c14
0070402c  05 00 a0 e1                                      mov r0, r5
00704030  04 10 94 e5                                      ldr r1, [r4, #4]
00704034  d4 27 f0 eb                                      bl #0x30df8c
00704038  00 00 50 e3                                      cmp r0, #0
0070403c  09 00 00 0a                                      beq #0x704068
00704040  07 00 a0 e1                                      mov r0, r7
00704044  08 10 94 e5                                      ldr r1, [r4, #8]
00704048  cf 27 f0 eb                                      bl #0x30df8c
0070404c  00 00 50 e3                                      cmp r0, #0
00704050  04 00 00 0a                                      beq #0x704068
00704054  08 00 a0 e1                                      mov r0, r8
00704058  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0070405c  ca 27 f0 eb                                      bl #0x30df8c
00704060  00 00 50 e3                                      cmp r0, #0
00704064  5c ff ff 1a                                      bne #0x703ddc
00704068  10 40 84 e2                                      add r4, r4, #0x10
0070406c  05 00 a0 e1                                      mov r0, r5
00704070  04 10 94 e5                                      ldr r1, [r4, #4]
00704074  c4 27 f0 eb                                      bl #0x30df8c
00704078  00 00 50 e3                                      cmp r0, #0
0070407c  09 00 00 0a                                      beq #0x7040a8
00704080  07 00 a0 e1                                      mov r0, r7
00704084  08 10 94 e5                                      ldr r1, [r4, #8]
00704088  bf 27 f0 eb                                      bl #0x30df8c
0070408c  00 00 50 e3                                      cmp r0, #0
00704090  04 00 00 0a                                      beq #0x7040a8
00704094  08 00 a0 e1                                      mov r0, r8
00704098  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0070409c  ba 27 f0 eb                                      bl #0x30df8c
007040a0  00 00 50 e3                                      cmp r0, #0
007040a4  4c ff ff 1a                                      bne #0x703ddc
007040a8  10 40 84 e2                                      add r4, r4, #0x10
007040ac  c8 ff ff ea                                      b #0x703fd4
007040b0  00 30 94 e5                                      ldr r3, [r4]
007040b4  04 00 a0 e1                                      mov r0, r4
007040b8  0f e0 a0 e1                                      mov lr, pc
007040bc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007040c0  93 ff ff ea                                      b #0x703f14
007040c4  24 30 9d e5                                      ldr r3, [sp, #0x24]
007040c8  0b 40 a0 e1                                      mov r4, fp
007040cc  b9 ff ff ea                                      b #0x703fb8
007040d0  00 30 94 e5                                      ldr r3, [r4]
007040d4  04 00 a0 e1                                      mov r0, r4
007040d8  0f e0 a0 e1                                      mov lr, pc
007040dc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
007040e0  85 ff ff ea                                      b #0x703efc
007040e4  24 30 9d e5                                      ldr r3, [sp, #0x24]
007040e8  03 c0 a0 e1                                      mov ip, r3
007040ec  01 00 53 e3                                      cmp r3, #1
007040f0  03 30 83 20                                      addhs r3, r3, r3
007040f4  01 30 83 32                                      addlo r3, r3, #1
007040f8  1f 02 73 e3                                      cmn r3, #0xf0000001
007040fc  26 00 00 9a                                      bls #0x70419c
00704100  0f 32 e0 e3                                      mvn r3, #0xf0000000
00704104  03 62 a0 e1                                      lsl r6, r3, #4
00704108  06 00 a0 e1                                      mov r0, r6
0070410c  00 10 a0 e3                                      mov r1, #0
00704110  04 c0 8d e5                                      str ip, [sp, #4]
00704114  13 31 f0 eb                                      bl #0x310568
00704118  00 40 a0 e1                                      mov r4, r0
0070411c  24 00 9d e5                                      ldr r0, [sp, #0x24]
00704120  04 c0 9d e5                                      ldr ip, [sp, #4]
00704124  00 00 50 e3                                      cmp r0, #0
00704128  04 30 a0 d1                                      movle r3, r4
0070412c  0f 00 00 da                                      ble #0x704170
00704130  24 10 9d e5                                      ldr r1, [sp, #0x24]
00704134  10 20 8b e2                                      add r2, fp, #0x10
00704138  10 30 84 e2                                      add r3, r4, #0x10
0070413c  b0 01 52 e1                                      ldrh r0, [r2, #-0x10]
00704140  01 10 51 e2                                      subs r1, r1, #1
00704144  b0 01 43 e1                                      strh r0, [r3, #-0x10]
00704148  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
0070414c  0c 00 03 e5                                      str r0, [r3, #-0xc]
00704150  08 00 12 e5                                      ldr r0, [r2, #-8]
00704154  08 00 03 e5                                      str r0, [r3, #-8]
00704158  04 00 12 e5                                      ldr r0, [r2, #-4]
0070415c  10 20 82 e2                                      add r2, r2, #0x10
00704160  04 00 03 e5                                      str r0, [r3, #-4]
00704164  10 30 83 e2                                      add r3, r3, #0x10
00704168  f3 ff ff 1a                                      bne #0x70413c
0070416c  0c 32 84 e0                                      add r3, r4, ip, lsl #4
00704170  04 50 83 e5                                      str r5, [r3, #4]
00704174  08 70 83 e5                                      str r7, [r3, #8]
00704178  0c 80 83 e5                                      str r8, [r3, #0xc]
0070417c  b0 a0 c3 e1                                      strh sl, [r3]
00704180  0b 00 a0 e1                                      mov r0, fp
00704184  10 30 83 e2                                      add r3, r3, #0x10
00704188  06 60 84 e0                                      add r6, r4, r6
0070418c  08 30 8d e5                                      str r3, [sp, #8]
00704190  ae 30 f0 eb                                      bl #0x310450
00704194  30 60 8d e5                                      str r6, [sp, #0x30]
00704198  14 ff ff ea                                      b #0x703df0
0070419c  03 00 5c e1                                      cmp ip, r3
007041a0  d7 ff ff 9a                                      bls #0x704104
007041a4  d5 ff ff ea                                      b #0x704100
