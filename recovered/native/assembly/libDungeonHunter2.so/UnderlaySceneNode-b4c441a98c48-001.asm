; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00326fcc, declared_size=252, range_size=252, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZN17UnderlaySceneNode15AddUnderlayNodeEPN6glitch5scene10ISceneNodeE
; demangled: UnderlaySceneNode::AddUnderlayNode(glitch::scene::ISceneNode*)
; decoder-mode: arm
00326fcc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00326fd0  30 31 90 e5                                      ldr r3, [r0, #0x130]
00326fd4  34 81 90 e5                                      ldr r8, [r0, #0x134]
00326fd8  00 50 a0 e1                                      mov r5, r0
00326fdc  01 40 a0 e1                                      mov r4, r1
00326fe0  08 00 53 e1                                      cmp r3, r8
00326fe4  0a 00 00 0a                                      beq #0x327014
00326fe8  00 20 93 e5                                      ldr r2, [r3]
00326fec  01 00 52 e1                                      cmp r2, r1
00326ff0  03 20 a0 11                                      movne r2, r3
00326ff4  03 00 00 1a                                      bne #0x327008
00326ff8  12 00 00 ea                                      b #0x327048
00326ffc  00 10 92 e5                                      ldr r1, [r2]
00327000  04 00 51 e1                                      cmp r1, r4
00327004  0f 00 00 0a                                      beq #0x327048
00327008  04 20 82 e2                                      add r2, r2, #4
0032700c  08 00 52 e1                                      cmp r2, r8
00327010  f9 ff ff 1a                                      bne #0x326ffc
00327014  38 21 95 e5                                      ldr r2, [r5, #0x138]
00327018  08 00 52 e1                                      cmp r2, r8
0032701c  0a 00 00 0a                                      beq #0x32704c
00327020  00 40 88 e5                                      str r4, [r8]
00327024  34 31 95 e5                                      ldr r3, [r5, #0x134]
00327028  04 30 83 e2                                      add r3, r3, #4
0032702c  34 31 85 e5                                      str r3, [r5, #0x134]
00327030  04 00 a0 e1                                      mov r0, r4
00327034  00 30 94 e5                                      ldr r3, [r4]
00327038  00 10 a0 e3                                      mov r1, #0
0032703c  0f e0 a0 e1                                      mov lr, pc
00327040  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00327044  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00327048  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0032704c  08 30 63 e0                                      rsb r3, r3, r8
00327050  43 31 a0 e1                                      asr r3, r3, #2
00327054  01 00 53 e3                                      cmp r3, #1
00327058  03 70 83 20                                      addhs r7, r3, r3
0032705c  01 70 83 32                                      addlo r7, r3, #1
00327060  07 01 77 e3                                      cmn r7, #0xc0000001
00327064  15 00 00 8a                                      bhi #0x3270c0
00327068  07 00 53 e1                                      cmp r3, r7
0032706c  07 71 a0 91                                      lslls r7, r7, #2
00327070  12 00 00 8a                                      bhi #0x3270c0
00327074  00 10 a0 e3                                      mov r1, #0
00327078  07 00 a0 e1                                      mov r0, r7
0032707c  39 a5 ff eb                                      bl #0x310568
00327080  30 11 95 e5                                      ldr r1, [r5, #0x130]
00327084  00 60 a0 e1                                      mov r6, r0
00327088  01 80 58 e0                                      subs r8, r8, r1
0032708c  00 80 a0 01                                      moveq r8, r0
00327090  02 00 00 0a                                      beq #0x3270a0
00327094  08 20 a0 e1                                      mov r2, r8
00327098  a6 9b ff eb                                      bl #0x30df38
0032709c  08 80 80 e0                                      add r8, r0, r8
003270a0  04 40 88 e4                                      str r4, [r8], #4
003270a4  30 01 95 e5                                      ldr r0, [r5, #0x130]
003270a8  07 70 86 e0                                      add r7, r6, r7
003270ac  e7 a4 ff eb                                      bl #0x310450
003270b0  38 71 85 e5                                      str r7, [r5, #0x138]
003270b4  34 81 85 e5                                      str r8, [r5, #0x134]
003270b8  30 61 85 e5                                      str r6, [r5, #0x130]
003270bc  db ff ff ea                                      b #0x327030
003270c0  03 70 e0 e3                                      mvn r7, #3
003270c4  ea ff ff ea                                      b #0x327074

; FUNCTION 0x00381ad4, declared_size=96, range_size=96, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZN17UnderlaySceneNodeD1Ev
; demangled: UnderlaySceneNode::~UnderlaySceneNode()
; decoder-mode: arm
00381ad4  70 40 2d e9                                      push {r4, r5, r6, lr}
00381ad8  48 50 9f e5                                      ldr r5, [pc, #0x48]
00381adc  48 30 9f e5                                      ldr r3, [pc, #0x48]
00381ae0  00 40 a0 e1                                      mov r4, r0
00381ae4  05 50 8f e0                                      add r5, pc, r5
00381ae8  30 01 90 e5                                      ldr r0, [r0, #0x130]
00381aec  03 30 95 e7                                      ldr r3, [r5, r3]
00381af0  00 00 50 e3                                      cmp r0, #0
00381af4  12 2e 83 e2                                      add r2, r3, #0x120
00381af8  1c 30 83 e2                                      add r3, r3, #0x1c
00381afc  00 30 84 e5                                      str r3, [r4]
00381b00  3c 21 84 e5                                      str r2, [r4, #0x13c]
00381b04  00 00 00 0a                                      beq #0x381b0c
00381b08  50 3a fe eb                                      bl #0x310450
00381b0c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00381b10  04 00 a0 e1                                      mov r0, r4
00381b14  01 10 95 e7                                      ldr r1, [r5, r1]
00381b18  04 10 81 e2                                      add r1, r1, #4
00381b1c  66 5c 08 eb                                      bl #0x598cbc
00381b20  04 00 a0 e1                                      mov r0, r4
00381b24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00381b28  ac 2f 61 00 b0 3e 00 00 b8 1c 00 00              .byte 0xac, 0x2f, 0x61, 0x00, 0xb0, 0x3e, 0x00, 0x00, 0xb8, 0x1c, 0x00, 0x00

; FUNCTION 0x00381b34, declared_size=16, range_size=16, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZTv0_n24_N17UnderlaySceneNodeD1Ev
; demangled: virtual thunk to UnderlaySceneNode::~UnderlaySceneNode()
; decoder-mode: arm
00381b34  00 30 90 e5                                      ldr r3, [r0]
00381b38  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00381b3c  03 00 80 e0                                      add r0, r0, r3
00381b40  e3 ff ff ea                                      b #0x381ad4

; FUNCTION 0x00381b44, declared_size=16, range_size=16, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZTv0_n12_N17UnderlaySceneNodeD1Ev
; demangled: virtual thunk to UnderlaySceneNode::~UnderlaySceneNode()
; decoder-mode: arm
00381b44  00 30 90 e5                                      ldr r3, [r0]
00381b48  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00381b4c  03 00 80 e0                                      add r0, r0, r3
00381b50  df ff ff ea                                      b #0x381ad4

; FUNCTION 0x00381b54, declared_size=28, range_size=28, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZN17UnderlaySceneNodeD0Ev
; demangled: UnderlaySceneNode::~UnderlaySceneNode()
; decoder-mode: arm
00381b54  10 40 2d e9                                      push {r4, lr}
00381b58  00 40 a0 e1                                      mov r4, r0
00381b5c  dc ff ff eb                                      bl #0x381ad4
00381b60  04 00 a0 e1                                      mov r0, r4
00381b64  35 3a fe eb                                      bl #0x310440
00381b68  04 00 a0 e1                                      mov r0, r4
00381b6c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00381b70, declared_size=16, range_size=16, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZTv0_n24_N17UnderlaySceneNodeD0Ev
; demangled: virtual thunk to UnderlaySceneNode::~UnderlaySceneNode()
; decoder-mode: arm
00381b70  00 30 90 e5                                      ldr r3, [r0]
00381b74  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00381b78  03 00 80 e0                                      add r0, r0, r3
00381b7c  f4 ff ff ea                                      b #0x381b54

; FUNCTION 0x00381b80, declared_size=16, range_size=16, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZTv0_n12_N17UnderlaySceneNodeD0Ev
; demangled: virtual thunk to UnderlaySceneNode::~UnderlaySceneNode()
; decoder-mode: arm
00381b80  00 30 90 e5                                      ldr r3, [r0]
00381b84  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00381b88  03 00 80 e0                                      add r0, r0, r3
00381b8c  f0 ff ff ea                                      b #0x381b54

; FUNCTION 0x00381b90, declared_size=352, range_size=352, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZN17UnderlaySceneNode6renderEPv
; demangled: UnderlaySceneNode::render(void*)
; decoder-mode: arm
00381b90  50 31 9f e5                                      ldr r3, [pc, #0x150]
00381b94  50 21 9f e5                                      ldr r2, [pc, #0x150]
00381b98  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00381b9c  03 30 8f e0                                      add r3, pc, r3
00381ba0  00 40 a0 e1                                      mov r4, r0
00381ba4  02 00 93 e7                                      ldr r0, [r3, r2]
00381ba8  79 76 fe eb                                      bl #0x31f594
00381bac  00 00 50 e3                                      cmp r0, #0
00381bb0  4b 00 00 0a                                      beq #0x381ce4
00381bb4  28 31 90 e5                                      ldr r3, [r0, #0x128]
00381bb8  00 00 53 e3                                      cmp r3, #0
00381bbc  48 00 00 0a                                      beq #0x381ce4
00381bc0  08 50 93 e5                                      ldr r5, [r3, #8]
00381bc4  10 21 94 e5                                      ldr r2, [r4, #0x110]
00381bc8  00 30 95 e5                                      ldr r3, [r5]
00381bcc  05 00 a0 e1                                      mov r0, r5
00381bd0  14 60 92 e5                                      ldr r6, [r2, #0x14]
00381bd4  0f e0 a0 e1                                      mov lr, pc
00381bd8  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00381bdc  00 30 95 e5                                      ldr r3, [r5]
00381be0  00 80 a0 e1                                      mov r8, r0
00381be4  05 00 a0 e1                                      mov r0, r5
00381be8  0f e0 a0 e1                                      mov lr, pc
00381bec  20 f1 93 e5                                      ldr pc, [r3, #0x120]
00381bf0  42 14 a0 e3                                      mov r1, #0x42000000
00381bf4  12 17 81 e2                                      add r1, r1, #0x480000
00381bf8  00 30 95 e5                                      ldr r3, [r5]
00381bfc  00 70 a0 e1                                      mov r7, r0
00381c00  05 00 a0 e1                                      mov r0, r5
00381c04  0f e0 a0 e1                                      mov lr, pc
00381c08  30 f1 93 e5                                      ldr pc, [r3, #0x130]
00381c0c  00 10 05 e3                                      movw r1, #0x5000
00381c10  05 00 a0 e1                                      mov r0, r5
00381c14  43 17 44 e3                                      movt r1, #0x4743
00381c18  00 30 95 e5                                      ldr r3, [r5]
00381c1c  0f e0 a0 e1                                      mov lr, pc
00381c20  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00381c24  05 00 a0 e1                                      mov r0, r5
00381c28  00 10 a0 e3                                      mov r1, #0
00381c2c  00 30 95 e5                                      ldr r3, [r5]
00381c30  0f e0 a0 e1                                      mov lr, pc
00381c34  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00381c38  cd 1c 0c e3                                      movw r1, #0xcccd
00381c3c  00 30 96 e5                                      ldr r3, [r6]
00381c40  fe 25 a0 e3                                      mov r2, #0x3f800000
00381c44  06 00 a0 e1                                      mov r0, r6
00381c48  4c 1f 43 e3                                      movt r1, #0x3f4c
00381c4c  0f e0 a0 e1                                      mov lr, pc
00381c50  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00381c54  30 31 94 e5                                      ldr r3, [r4, #0x130]
00381c58  34 21 94 e5                                      ldr r2, [r4, #0x134]
00381c5c  02 20 63 e0                                      rsb r2, r3, r2
00381c60  22 21 b0 e1                                      lsrs r2, r2, #2
00381c64  08 00 00 0a                                      beq #0x381c8c
00381c68  00 a0 a0 e3                                      mov sl, #0
00381c6c  0a 01 93 e7                                      ldr r0, [r3, sl, lsl #2]
00381c70  66 ff ff eb                                      bl #0x381a10
00381c74  30 31 94 e5                                      ldr r3, [r4, #0x130]
00381c78  34 21 94 e5                                      ldr r2, [r4, #0x134]
00381c7c  01 a0 8a e2                                      add sl, sl, #1
00381c80  02 20 63 e0                                      rsb r2, r3, r2
00381c84  42 01 5a e1                                      cmp sl, r2, asr #2
00381c88  f7 ff ff 3a                                      blo #0x381c6c
00381c8c  08 10 a0 e1                                      mov r1, r8
00381c90  05 00 a0 e1                                      mov r0, r5
00381c94  00 30 95 e5                                      ldr r3, [r5]
00381c98  0f e0 a0 e1                                      mov lr, pc
00381c9c  30 f1 93 e5                                      ldr pc, [r3, #0x130]
00381ca0  07 10 a0 e1                                      mov r1, r7
00381ca4  05 00 a0 e1                                      mov r0, r5
00381ca8  00 30 95 e5                                      ldr r3, [r5]
00381cac  0f e0 a0 e1                                      mov lr, pc
00381cb0  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00381cb4  05 00 a0 e1                                      mov r0, r5
00381cb8  00 10 a0 e3                                      mov r1, #0
00381cbc  00 30 95 e5                                      ldr r3, [r5]
00381cc0  0f e0 a0 e1                                      mov lr, pc
00381cc4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00381cc8  cd 2c 0c e3                                      movw r2, #0xcccd
00381ccc  06 00 a0 e1                                      mov r0, r6
00381cd0  00 30 96 e5                                      ldr r3, [r6]
00381cd4  00 10 a0 e3                                      mov r1, #0
00381cd8  4c 2f 43 e3                                      movt r2, #0x3f4c
00381cdc  0f e0 a0 e1                                      mov lr, pc
00381ce0  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00381ce4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00381ce8  f4 2e 61 00 f4 37 00 00                          .byte 0xf4, 0x2e, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00381cf0, declared_size=344, range_size=344, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZN17UnderlaySceneNode19onRegisterSceneNodeEv
; demangled: UnderlaySceneNode::onRegisterSceneNode()
; decoder-mode: arm
00381cf0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00381cf4  38 41 9f e5                                      ldr r4, [pc, #0x138]
00381cf8  38 61 9f e5                                      ldr r6, [pc, #0x138]
00381cfc  38 21 9f e5                                      ldr r2, [pc, #0x138]
00381d00  04 40 8f e0                                      add r4, pc, r4
00381d04  06 30 94 e7                                      ldr r3, [r4, r6]
00381d08  02 70 94 e7                                      ldr r7, [r4, r2]
00381d0c  54 d0 4d e2                                      sub sp, sp, #0x54
00381d10  00 30 93 e5                                      ldr r3, [r3]
00381d14  00 80 a0 e1                                      mov r8, r0
00381d18  07 00 a0 e1                                      mov r0, r7
00381d1c  4c 30 8d e5                                      str r3, [sp, #0x4c]
00381d20  d8 d6 fe eb                                      bl #0x337888
00381d24  14 11 9f e5                                      ldr r1, [pc, #0x114]
00381d28  34 50 8d e2                                      add r5, sp, #0x34
00381d2c  18 20 8d e2                                      add r2, sp, #0x18
00381d30  01 10 8f e0                                      add r1, pc, r1
00381d34  05 00 a0 e1                                      mov r0, r5
00381d38  eb 48 fe eb                                      bl #0x3140ec
00381d3c  07 00 a0 e1                                      mov r0, r7
00381d40  05 10 a0 e1                                      mov r1, r5
00381d44  4f d7 fe eb                                      bl #0x337a88
00381d48  00 90 50 e2                                      subs sb, r0, #0
00381d4c  09 00 00 0a                                      beq #0x381d78
00381d50  05 00 a0 e1                                      mov r0, r5
00381d54  14 47 fe eb                                      bl #0x3139ac
00381d58  00 00 a0 e3                                      mov r0, #0
00381d5c  06 30 94 e7                                      ldr r3, [r4, r6]
00381d60  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
00381d64  00 30 93 e5                                      ldr r3, [r3]
00381d68  03 00 52 e1                                      cmp r2, r3
00381d6c  2f 00 00 1a                                      bne #0x381e30
00381d70  54 d0 8d e2                                      add sp, sp, #0x54
00381d74  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00381d78  07 00 a0 e1                                      mov r0, r7
00381d7c  c1 d6 fe eb                                      bl #0x337888
00381d80  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00381d84  1c a0 8d e2                                      add sl, sp, #0x1c
00381d88  14 20 8d e2                                      add r2, sp, #0x14
00381d8c  01 10 8f e0                                      add r1, pc, r1
00381d90  0a 00 a0 e1                                      mov r0, sl
00381d94  d4 48 fe eb                                      bl #0x3140ec
00381d98  07 00 a0 e1                                      mov r0, r7
00381d9c  0a 10 a0 e1                                      mov r1, sl
00381da0  38 d7 fe eb                                      bl #0x337a88
00381da4  00 70 50 e2                                      subs r7, r0, #0
00381da8  1a 00 00 1a                                      bne #0x381e18
00381dac  30 b1 98 e5                                      ldr fp, [r8, #0x130]
00381db0  34 91 98 e5                                      ldr sb, [r8, #0x134]
00381db4  0a 00 a0 e1                                      mov r0, sl
00381db8  fb 46 fe eb                                      bl #0x3139ac
00381dbc  05 00 a0 e1                                      mov r0, r5
00381dc0  f9 46 fe eb                                      bl #0x3139ac
00381dc4  09 00 5b e1                                      cmp fp, sb
00381dc8  07 00 a0 01                                      moveq r0, r7
00381dcc  e2 ff ff 0a                                      beq #0x381d5c
00381dd0  10 01 98 e5                                      ldr r0, [r8, #0x110]
00381dd4  50 50 8d e2                                      add r5, sp, #0x50
00381dd8  08 10 a0 e1                                      mov r1, r8
00381ddc  00 30 90 e5                                      ldr r3, [r0]
00381de0  24 c0 93 e5                                      ldr ip, [r3, #0x24]
00381de4  04 30 a0 e3                                      mov r3, #4
00381de8  40 70 25 e5                                      str r7, [r5, #-0x40]!
00381dec  00 30 8d e5                                      str r3, [sp]
00381df0  02 31 e0 e3                                      mvn r3, #0x80000000
00381df4  08 30 8d e5                                      str r3, [sp, #8]
00381df8  05 20 a0 e1                                      mov r2, r5
00381dfc  07 30 a0 e1                                      mov r3, r7
00381e00  04 70 8d e5                                      str r7, [sp, #4]
00381e04  3c ff 2f e1                                      blx ip
00381e08  05 00 a0 e1                                      mov r0, r5
00381e0c  75 3b fe eb                                      bl #0x310be8
00381e10  01 00 a0 e3                                      mov r0, #1
00381e14  d0 ff ff ea                                      b #0x381d5c
00381e18  0a 00 a0 e1                                      mov r0, sl
00381e1c  e2 46 fe eb                                      bl #0x3139ac
00381e20  05 00 a0 e1                                      mov r0, r5
00381e24  e0 46 fe eb                                      bl #0x3139ac
00381e28  09 00 a0 e1                                      mov r0, sb
00381e2c  ca ff ff ea                                      b #0x381d5c
00381e30  36 31 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00381e34  90 2d 61 00 ac 40 00 00 84 08 00 00 18 d2 53 00  .byte 0x90, 0x2d, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x18, 0xd2, 0x53, 0x00
00381e44  dc d1 53 00                                      .byte 0xdc, 0xd1, 0x53, 0x00

; FUNCTION 0x00381e48, declared_size=140, range_size=140, mode=arm
; class-group: UnderlaySceneNode
; alias: _ZNK17UnderlaySceneNode14getBoundingBoxEv
; demangled: UnderlaySceneNode::getBoundingBox() const
; decoder-mode: arm
00381e48  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00381e4c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00381e50  04 e0 2d e5                                      str lr, [sp, #-4]!
00381e54  03 30 8f e0                                      add r3, pc, r3
00381e58  02 20 93 e7                                      ldr r2, [r3, r2]
00381e5c  0c d0 4d e2                                      sub sp, sp, #0xc
00381e60  00 20 92 e5                                      ldr r2, [r2]
00381e64  02 00 52 e3                                      cmp r2, #2
00381e68  00 30 a0 03                                      moveq r3, #0
00381e6c  00 30 83 05                                      streq r3, [r3]
00381e70  01 00 00 0a                                      beq #0x381e7c
00381e74  01 00 52 e3                                      cmp r2, #1
00381e78  02 00 00 0a                                      beq #0x381e88
00381e7c  00 00 a0 e3                                      mov r0, #0
00381e80  0c d0 8d e2                                      add sp, sp, #0xc
00381e84  00 80 bd e8                                      ldm sp!, {pc}
00381e88  34 00 9f e5                                      ldr r0, [pc, #0x34]
00381e8c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00381e90  34 20 9f e5                                      ldr r2, [pc, #0x34]
00381e94  00 00 93 e7                                      ldr r0, [r3, r0]
00381e98  30 30 9f e5                                      ldr r3, [pc, #0x30]
00381e9c  27 c0 a0 e3                                      mov ip, #0x27
00381ea0  01 10 8f e0                                      add r1, pc, r1
00381ea4  02 20 8f e0                                      add r2, pc, r2
00381ea8  03 30 8f e0                                      add r3, pc, r3
00381eac  a8 00 80 e2                                      add r0, r0, #0xa8
00381eb0  00 c0 8d e5                                      str ip, [sp]
00381eb4  52 30 fe eb                                      bl #0x30e004
00381eb8  ef ff ff ea                                      b #0x381e7c
; mapping-symbol data/literal pool
00381ebc  3c 2c 61 00 c0 39 00 00 c0 19 00 00 38 c5 53 00  .byte 0x3c, 0x2c, 0x61, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x38, 0xc5, 0x53, 0x00
00381ecc  5c fe 53 00 70 fe 53 00                          .byte 0x5c, 0xfe, 0x53, 0x00, 0x70, 0xfe, 0x53, 0x00
