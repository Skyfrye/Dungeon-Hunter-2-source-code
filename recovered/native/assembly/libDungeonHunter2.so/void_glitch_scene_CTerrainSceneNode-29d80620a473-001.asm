; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006d0470, declared_size=496, range_size=496, mode=arm
; class-group: void glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode34preRenderIndicesCalculationsDirectItEEvPT_
; demangled: void glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<unsigned short>(unsigned short*)
; decoder-mode: arm
006d0470  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d0474  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
006d0478  00 a0 a0 e3                                      mov sl, #0
006d047c  34 d0 4d e2                                      sub sp, sp, #0x34
006d0480  0a 00 53 e1                                      cmp r3, sl
006d0484  00 50 a0 e1                                      mov r5, r0
006d0488  01 60 a0 e1                                      mov r6, r1
006d048c  b8 a1 80 e5                                      str sl, [r0, #0x1b8]
006d0490  64 00 00 da                                      ble #0x6d0628
006d0494  00 70 a0 e3                                      mov r7, #0
006d0498  9a 73 28 e0                                      mla r8, sl, r3, r7
006d049c  38 00 a0 e3                                      mov r0, #0x38
006d04a0  a8 11 95 e5                                      ldr r1, [r5, #0x1a8]
006d04a4  90 08 02 e0                                      mul r2, r0, r8
006d04a8  02 20 91 e7                                      ldr r2, [r1, r2]
006d04ac  00 00 52 e3                                      cmp r2, #0
006d04b0  54 00 00 ba                                      blt #0x6d0608
006d04b4  01 30 a0 e3                                      mov r3, #1
006d04b8  13 22 a0 e1                                      lsl r2, r3, r2
006d04bc  2c 20 8d e5                                      str r2, [sp, #0x2c]
006d04c0  78 c1 95 e5                                      ldr ip, [r5, #0x178]
006d04c4  00 b0 a0 e3                                      mov fp, #0
006d04c8  1c 20 8d e5                                      str r2, [sp, #0x1c]
006d04cc  00 40 a0 e3                                      mov r4, #0
006d04d0  0b 00 5c e1                                      cmp ip, fp
006d04d4  07 10 a0 e1                                      mov r1, r7
006d04d8  0a 20 a0 e1                                      mov r2, sl
006d04dc  08 30 a0 e1                                      mov r3, r8
006d04e0  05 00 a0 e1                                      mov r0, r5
006d04e4  04 90 a0 e1                                      mov sb, r4
006d04e8  45 00 00 da                                      ble #0x6d0604
006d04ec  10 08 8d e8                                      stm sp, {r4, fp}
006d04f0  65 ff ff eb                                      bl #0x6d028c
006d04f4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
006d04f8  70 00 ff e6                                      uxth r0, r0
006d04fc  18 00 8d e5                                      str r0, [sp, #0x18]
006d0500  0c 40 84 e0                                      add r4, r4, ip
006d0504  07 10 a0 e1                                      mov r1, r7
006d0508  0a 20 a0 e1                                      mov r2, sl
006d050c  08 30 a0 e1                                      mov r3, r8
006d0510  05 00 a0 e1                                      mov r0, r5
006d0514  10 08 8d e8                                      stm sp, {r4, fp}
006d0518  5b ff ff eb                                      bl #0x6d028c
006d051c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006d0520  24 00 8d e5                                      str r0, [sp, #0x24]
006d0524  07 10 a0 e1                                      mov r1, r7
006d0528  0a 20 a0 e1                                      mov r2, sl
006d052c  08 30 a0 e1                                      mov r3, r8
006d0530  05 00 a0 e1                                      mov r0, r5
006d0534  00 12 8d e8                                      stm sp, {sb, ip}
006d0538  53 ff ff eb                                      bl #0x6d028c
006d053c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006d0540  20 00 8d e5                                      str r0, [sp, #0x20]
006d0544  07 10 a0 e1                                      mov r1, r7
006d0548  0a 20 a0 e1                                      mov r2, sl
006d054c  08 30 a0 e1                                      mov r3, r8
006d0550  05 00 a0 e1                                      mov r0, r5
006d0554  10 10 8d e8                                      stm sp, {r4, ip}
006d0558  4b ff ff eb                                      bl #0x6d028c
006d055c  b8 21 95 e5                                      ldr r2, [r5, #0x1b8]
006d0560  70 00 ff e6                                      uxth r0, r0
006d0564  01 90 82 e2                                      add sb, r2, #1
006d0568  01 c0 89 e2                                      add ip, sb, #1
006d056c  01 10 8c e2                                      add r1, ip, #1
006d0570  01 20 81 e2                                      add r2, r1, #1
006d0574  01 30 82 e2                                      add r3, r2, #1
006d0578  0c 30 8d e5                                      str r3, [sp, #0xc]
006d057c  82 20 a0 e1                                      lsl r2, r2, #1
006d0580  b8 31 95 e5                                      ldr r3, [r5, #0x1b8]
006d0584  08 20 8d e5                                      str r2, [sp, #8]
006d0588  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006d058c  89 90 a0 e1                                      lsl sb, sb, #1
006d0590  28 90 8d e5                                      str sb, [sp, #0x28]
006d0594  8c 90 a0 e1                                      lsl sb, ip, #1
006d0598  82 c0 a0 e1                                      lsl ip, r2, #1
006d059c  20 20 9d e5                                      ldr r2, [sp, #0x20]
006d05a0  83 30 a0 e1                                      lsl r3, r3, #1
006d05a4  14 30 8d e5                                      str r3, [sp, #0x14]
006d05a8  b3 20 86 e1                                      strh r2, [r6, r3]
006d05ac  18 20 9d e5                                      ldr r2, [sp, #0x18]
006d05b0  28 30 9d e5                                      ldr r3, [sp, #0x28]
006d05b4  81 10 a0 e1                                      lsl r1, r1, #1
006d05b8  b3 20 86 e1                                      strh r2, [r6, r3]
006d05bc  b9 00 86 e1                                      strh r0, [r6, sb]
006d05c0  b1 00 86 e1                                      strh r0, [r6, r1]
006d05c4  08 30 9d e5                                      ldr r3, [sp, #8]
006d05c8  b3 20 86 e1                                      strh r2, [r6, r3]
006d05cc  24 00 9d e5                                      ldr r0, [sp, #0x24]
006d05d0  bc 00 86 e1                                      strh r0, [r6, ip]
006d05d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
006d05d8  78 c1 95 e5                                      ldr ip, [r5, #0x178]
006d05dc  01 30 82 e2                                      add r3, r2, #1
006d05e0  04 00 5c e1                                      cmp ip, r4
006d05e4  b8 31 85 e5                                      str r3, [r5, #0x1b8]
006d05e8  b8 ff ff ca                                      bgt #0x6d04d0
006d05ec  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006d05f0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006d05f4  00 30 83 e0                                      add r3, r3, r0
006d05f8  1c 30 8d e5                                      str r3, [sp, #0x1c]
006d05fc  00 b0 8b e0                                      add fp, fp, r0
006d0600  b1 ff ff ea                                      b #0x6d04cc
006d0604  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
006d0608  01 70 87 e2                                      add r7, r7, #1
006d060c  07 00 53 e1                                      cmp r3, r7
006d0610  a0 ff ff ca                                      bgt #0x6d0498
006d0614  01 a0 8a e2                                      add sl, sl, #1
006d0618  0a 00 53 e1                                      cmp r3, sl
006d061c  01 00 00 da                                      ble #0x6d0628
006d0620  00 00 53 e3                                      cmp r3, #0
006d0624  9a ff ff ca                                      bgt #0x6d0494
006d0628  bc 31 d5 e5                                      ldrb r3, [r5, #0x1bc]
006d062c  00 00 53 e3                                      cmp r3, #0
006d0630  08 00 00 0a                                      beq #0x6d0658
006d0634  14 31 95 e5                                      ldr r3, [r5, #0x114]
006d0638  00 00 53 e3                                      cmp r3, #0
006d063c  05 00 00 0a                                      beq #0x6d0658
006d0640  03 00 a0 e1                                      mov r0, r3
006d0644  05 10 a0 e1                                      mov r1, r5
006d0648  00 30 93 e5                                      ldr r3, [r3]
006d064c  00 20 e0 e3                                      mvn r2, #0
006d0650  0f e0 a0 e1                                      mov lr, pc
006d0654  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006d0658  34 d0 8d e2                                      add sp, sp, #0x34
006d065c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x006d0660, declared_size=444, range_size=444, mode=arm
; class-group: void glitch::scene::CTerrainSceneNode
; alias: _ZN6glitch5scene17CTerrainSceneNode34preRenderIndicesCalculationsDirectIjEEvPT_
; demangled: void glitch::scene::CTerrainSceneNode::preRenderIndicesCalculationsDirect<unsigned int>(unsigned int*)
; decoder-mode: arm
006d0660  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006d0664  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
006d0668  00 a0 a0 e3                                      mov sl, #0
006d066c  2c d0 4d e2                                      sub sp, sp, #0x2c
006d0670  0a 00 53 e1                                      cmp r3, sl
006d0674  00 50 a0 e1                                      mov r5, r0
006d0678  01 60 a0 e1                                      mov r6, r1
006d067c  b8 a1 80 e5                                      str sl, [r0, #0x1b8]
006d0680  57 00 00 da                                      ble #0x6d07e4
006d0684  00 70 a0 e3                                      mov r7, #0
006d0688  9a 73 28 e0                                      mla r8, sl, r3, r7
006d068c  38 00 a0 e3                                      mov r0, #0x38
006d0690  a8 11 95 e5                                      ldr r1, [r5, #0x1a8]
006d0694  90 08 02 e0                                      mul r2, r0, r8
006d0698  02 20 91 e7                                      ldr r2, [r1, r2]
006d069c  00 00 52 e3                                      cmp r2, #0
006d06a0  47 00 00 ba                                      blt #0x6d07c4
006d06a4  01 10 a0 e3                                      mov r1, #1
006d06a8  11 22 a0 e1                                      lsl r2, r1, r2
006d06ac  24 20 8d e5                                      str r2, [sp, #0x24]
006d06b0  78 c1 95 e5                                      ldr ip, [r5, #0x178]
006d06b4  00 b0 a0 e3                                      mov fp, #0
006d06b8  18 20 8d e5                                      str r2, [sp, #0x18]
006d06bc  00 40 a0 e3                                      mov r4, #0
006d06c0  0b 00 5c e1                                      cmp ip, fp
006d06c4  07 10 a0 e1                                      mov r1, r7
006d06c8  0a 20 a0 e1                                      mov r2, sl
006d06cc  08 30 a0 e1                                      mov r3, r8
006d06d0  05 00 a0 e1                                      mov r0, r5
006d06d4  04 90 a0 e1                                      mov sb, r4
006d06d8  38 00 00 da                                      ble #0x6d07c0
006d06dc  10 08 8d e8                                      stm sp, {r4, fp}
006d06e0  e9 fe ff eb                                      bl #0x6d028c
006d06e4  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d06e8  14 00 8d e5                                      str r0, [sp, #0x14]
006d06ec  07 10 a0 e1                                      mov r1, r7
006d06f0  02 40 84 e0                                      add r4, r4, r2
006d06f4  08 30 a0 e1                                      mov r3, r8
006d06f8  0a 20 a0 e1                                      mov r2, sl
006d06fc  05 00 a0 e1                                      mov r0, r5
006d0700  10 08 8d e8                                      stm sp, {r4, fp}
006d0704  e0 fe ff eb                                      bl #0x6d028c
006d0708  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d070c  20 00 8d e5                                      str r0, [sp, #0x20]
006d0710  07 10 a0 e1                                      mov r1, r7
006d0714  0a 20 a0 e1                                      mov r2, sl
006d0718  08 30 a0 e1                                      mov r3, r8
006d071c  05 00 a0 e1                                      mov r0, r5
006d0720  00 12 8d e8                                      stm sp, {sb, ip}
006d0724  d8 fe ff eb                                      bl #0x6d028c
006d0728  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006d072c  1c 00 8d e5                                      str r0, [sp, #0x1c]
006d0730  07 10 a0 e1                                      mov r1, r7
006d0734  0a 20 a0 e1                                      mov r2, sl
006d0738  08 30 a0 e1                                      mov r3, r8
006d073c  05 00 a0 e1                                      mov r0, r5
006d0740  10 10 8d e8                                      stm sp, {r4, ip}
006d0744  d0 fe ff eb                                      bl #0x6d028c
006d0748  b8 11 95 e5                                      ldr r1, [r5, #0x1b8]
006d074c  01 90 81 e2                                      add sb, r1, #1
006d0750  01 c0 89 e2                                      add ip, sb, #1
006d0754  01 20 8c e2                                      add r2, ip, #1
006d0758  08 20 8d e5                                      str r2, [sp, #8]
006d075c  01 30 82 e2                                      add r3, r2, #1
006d0760  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006d0764  0c 30 8d e5                                      str r3, [sp, #0xc]
006d0768  01 30 83 e2                                      add r3, r3, #1
006d076c  01 21 86 e7                                      str r2, [r6, r1, lsl #2]
006d0770  14 10 9d e5                                      ldr r1, [sp, #0x14]
006d0774  09 11 86 e7                                      str r1, [r6, sb, lsl #2]
006d0778  0c 01 86 e7                                      str r0, [r6, ip, lsl #2]
006d077c  08 20 9d e5                                      ldr r2, [sp, #8]
006d0780  02 01 86 e7                                      str r0, [r6, r2, lsl #2]
006d0784  0c c0 9d e5                                      ldr ip, [sp, #0xc]
006d0788  0c 11 86 e7                                      str r1, [r6, ip, lsl #2]
006d078c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006d0790  03 01 86 e7                                      str r0, [r6, r3, lsl #2]
006d0794  78 c1 95 e5                                      ldr ip, [r5, #0x178]
006d0798  01 30 83 e2                                      add r3, r3, #1
006d079c  b8 31 85 e5                                      str r3, [r5, #0x1b8]
006d07a0  0c 00 54 e1                                      cmp r4, ip
006d07a4  c5 ff ff ba                                      blt #0x6d06c0
006d07a8  18 10 9d e5                                      ldr r1, [sp, #0x18]
006d07ac  24 20 9d e5                                      ldr r2, [sp, #0x24]
006d07b0  02 10 81 e0                                      add r1, r1, r2
006d07b4  18 10 8d e5                                      str r1, [sp, #0x18]
006d07b8  02 b0 8b e0                                      add fp, fp, r2
006d07bc  be ff ff ea                                      b #0x6d06bc
006d07c0  7c 31 95 e5                                      ldr r3, [r5, #0x17c]
006d07c4  01 70 87 e2                                      add r7, r7, #1
006d07c8  07 00 53 e1                                      cmp r3, r7
006d07cc  ad ff ff ca                                      bgt #0x6d0688
006d07d0  01 a0 8a e2                                      add sl, sl, #1
006d07d4  0a 00 53 e1                                      cmp r3, sl
006d07d8  01 00 00 da                                      ble #0x6d07e4
006d07dc  00 00 53 e3                                      cmp r3, #0
006d07e0  a7 ff ff ca                                      bgt #0x6d0684
006d07e4  bc 31 d5 e5                                      ldrb r3, [r5, #0x1bc]
006d07e8  00 00 53 e3                                      cmp r3, #0
006d07ec  08 00 00 0a                                      beq #0x6d0814
006d07f0  14 31 95 e5                                      ldr r3, [r5, #0x114]
006d07f4  00 00 53 e3                                      cmp r3, #0
006d07f8  05 00 00 0a                                      beq #0x6d0814
006d07fc  03 00 a0 e1                                      mov r0, r3
006d0800  05 10 a0 e1                                      mov r1, r5
006d0804  00 30 93 e5                                      ldr r3, [r3]
006d0808  00 20 e0 e3                                      mvn r2, #0
006d080c  0f e0 a0 e1                                      mov lr, pc
006d0810  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
006d0814  2c d0 8d e2                                      add sp, sp, #0x2c
006d0818  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
