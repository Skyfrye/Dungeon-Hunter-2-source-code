; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0035dc98, declared_size=28, range_size=28, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZNK26ShadowSkinnedMeshSceneNode14getBoundingBoxEv
; demangled: ShadowSkinnedMeshSceneNode::getBoundingBox() const
; decoder-mode: arm
0035dc98  10 40 2d e9                                      push {r4, lr}
0035dc9c  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0035dca0  03 00 a0 e1                                      mov r0, r3
0035dca4  00 30 93 e5                                      ldr r3, [r3]
0035dca8  0f e0 a0 e1                                      mov lr, pc
0035dcac  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0035dcb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035dcb4, declared_size=28, range_size=28, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZNK26ShadowSkinnedMeshSceneNode25getTransformedBoundingBoxEv
; demangled: ShadowSkinnedMeshSceneNode::getTransformedBoundingBox() const
; decoder-mode: arm
0035dcb4  10 40 2d e9                                      push {r4, lr}
0035dcb8  a0 31 90 e5                                      ldr r3, [r0, #0x1a0]
0035dcbc  03 00 a0 e1                                      mov r0, r3
0035dcc0  00 30 93 e5                                      ldr r3, [r3]
0035dcc4  0f e0 a0 e1                                      mov lr, pc
0035dcc8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0035dccc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0035f780, declared_size=488, range_size=488, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNode12UpdateShadowEv
; demangled: ShadowSkinnedMeshSceneNode::UpdateShadow()
; decoder-mode: arm
0035f780  d8 31 9f e5                                      ldr r3, [pc, #0x1d8]
0035f784  d8 21 9f e5                                      ldr r2, [pc, #0x1d8]
0035f788  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035f78c  03 30 8f e0                                      add r3, pc, r3
0035f790  02 20 93 e7                                      ldr r2, [r3, r2]
0035f794  85 df 4d e2                                      sub sp, sp, #0x214
0035f798  00 50 a0 e3                                      mov r5, #0
0035f79c  10 10 92 e5                                      ldr r1, [r2, #0x10]
0035f7a0  1a 7e 8d e2                                      add r7, sp, #0x1a0
0035f7a4  40 80 a0 e3                                      mov r8, #0x40
0035f7a8  00 60 a0 e1                                      mov r6, r0
0035f7ac  08 20 a0 e1                                      mov r2, r8
0035f7b0  1c a0 91 e5                                      ldr sl, [r1, #0x1c]
0035f7b4  07 00 a0 e1                                      mov r0, r7
0035f7b8  05 10 a0 e1                                      mov r1, r5
0035f7bc  27 bb fe eb                                      bl #0x30e460
0035f7c0  01 20 a0 e3                                      mov r2, #1
0035f7c4  fe 45 a0 e3                                      mov r4, #0x3f800000
0035f7c8  00 30 a0 e3                                      mov r3, #0
0035f7cc  07 00 a0 e1                                      mov r0, r7
0035f7d0  7d 1f 8d e2                                      add r1, sp, #0x1f4
0035f7d4  e0 21 cd e5                                      strb r2, [sp, #0x1e0]
0035f7d8  02 21 a0 e3                                      mov r2, #0x80000000
0035f7dc  f8 31 8d e5                                      str r3, [sp, #0x1f8]
0035f7e0  00 22 8d e5                                      str r2, [sp, #0x200]
0035f7e4  a0 41 8d e5                                      str r4, [sp, #0x1a0]
0035f7e8  b4 41 8d e5                                      str r4, [sp, #0x1b4]
0035f7ec  c8 41 8d e5                                      str r4, [sp, #0x1c8]
0035f7f0  dc 41 8d e5                                      str r4, [sp, #0x1dc]
0035f7f4  f4 31 8d e5                                      str r3, [sp, #0x1f4]
0035f7f8  fc 41 8d e5                                      str r4, [sp, #0x1fc]
0035f7fc  41 f9 ff eb                                      bl #0x35dd08
0035f800  f4 31 9d e5                                      ldr r3, [sp, #0x1f4]
0035f804  57 9f 8d e2                                      add sb, sp, #0x15c
0035f808  01 ab 8a e2                                      add sl, sl, #0x400
0035f80c  e4 31 8d e5                                      str r3, [sp, #0x1e4]
0035f810  f8 31 9d e5                                      ldr r3, [sp, #0x1f8]
0035f814  79 2f 8d e2                                      add r2, sp, #0x1e4
0035f818  0a 10 a0 e1                                      mov r1, sl
0035f81c  e8 31 8d e5                                      str r3, [sp, #0x1e8]
0035f820  fc 31 9d e5                                      ldr r3, [sp, #0x1fc]
0035f824  09 00 a0 e1                                      mov r0, sb
0035f828  46 bf 8d e2                                      add fp, sp, #0x118
0035f82c  ec 31 8d e5                                      str r3, [sp, #0x1ec]
0035f830  00 32 9d e5                                      ldr r3, [sp, #0x200]
0035f834  d4 a0 8d e2                                      add sl, sp, #0xd4
0035f838  f0 31 8d e5                                      str r3, [sp, #0x1f0]
0035f83c  51 fe ff eb                                      bl #0x35f188
0035f840  81 0f 8d e2                                      add r0, sp, #0x204
0035f844  a0 11 96 e5                                      ldr r1, [r6, #0x1a0]
0035f848  4c de 08 eb                                      bl #0x597180
0035f84c  05 10 a0 e1                                      mov r1, r5
0035f850  08 20 a0 e1                                      mov r2, r8
0035f854  0b 00 a0 e1                                      mov r0, fp
0035f858  00 bb fe eb                                      bl #0x30e460
0035f85c  04 c2 9d e5                                      ldr ip, [sp, #0x204]
0035f860  08 e2 9d e5                                      ldr lr, [sp, #0x208]
0035f864  0c 32 9d e5                                      ldr r3, [sp, #0x20c]
0035f868  08 20 a0 e1                                      mov r2, r8
0035f86c  02 e1 8e e2                                      add lr, lr, #0x80000000
0035f870  02 c1 8c e2                                      add ip, ip, #0x80000000
0035f874  02 31 83 e2                                      add r3, r3, #0x80000000
0035f878  05 10 a0 e1                                      mov r1, r5
0035f87c  0a 00 a0 e1                                      mov r0, sl
0035f880  4c e1 8d e5                                      str lr, [sp, #0x14c]
0035f884  48 c1 8d e5                                      str ip, [sp, #0x148]
0035f888  50 31 8d e5                                      str r3, [sp, #0x150]
0035f88c  18 41 8d e5                                      str r4, [sp, #0x118]
0035f890  2c 41 8d e5                                      str r4, [sp, #0x12c]
0035f894  40 41 8d e5                                      str r4, [sp, #0x140]
0035f898  54 41 8d e5                                      str r4, [sp, #0x154]
0035f89c  58 51 cd e5                                      strb r5, [sp, #0x158]
0035f8a0  ee ba fe eb                                      bl #0x30e460
0035f8a4  41 14 a0 e3                                      mov r1, #0x41000000
0035f8a8  04 02 9d e5                                      ldr r0, [sp, #0x204]
0035f8ac  02 16 81 e2                                      add r1, r1, #0x200000
0035f8b0  10 41 8d e5                                      str r4, [sp, #0x110]
0035f8b4  d4 40 8d e5                                      str r4, [sp, #0xd4]
0035f8b8  e8 40 8d e5                                      str r4, [sp, #0xe8]
0035f8bc  fc 40 8d e5                                      str r4, [sp, #0xfc]
0035f8c0  b7 bc fe eb                                      bl #0x30eba4
0035f8c4  c1 14 a0 e3                                      mov r1, #0xc1000000
0035f8c8  00 30 a0 e1                                      mov r3, r0
0035f8cc  02 16 81 e2                                      add r1, r1, #0x200000
0035f8d0  08 02 9d e5                                      ldr r0, [sp, #0x208]
0035f8d4  00 30 8d e5                                      str r3, [sp]
0035f8d8  b1 bc fe eb                                      bl #0x30eba4
0035f8dc  41 14 a0 e3                                      mov r1, #0x41000000
0035f8e0  00 c0 a0 e1                                      mov ip, r0
0035f8e4  02 16 81 e2                                      add r1, r1, #0x200000
0035f8e8  0c 02 9d e5                                      ldr r0, [sp, #0x20c]
0035f8ec  04 c0 8d e5                                      str ip, [sp, #4]
0035f8f0  ab bc fe eb                                      bl #0x30eba4
0035f8f4  08 10 9d e8                                      ldm sp, {r3, ip}
0035f8f8  4c 40 8d e2                                      add r4, sp, #0x4c
0035f8fc  0c 01 8d e5                                      str r0, [sp, #0x10c]
0035f900  0a 10 a0 e1                                      mov r1, sl
0035f904  09 20 a0 e1                                      mov r2, sb
0035f908  04 00 a0 e1                                      mov r0, r4
0035f90c  08 80 8d e2                                      add r8, sp, #8
0035f910  04 31 8d e5                                      str r3, [sp, #0x104]
0035f914  08 c1 8d e5                                      str ip, [sp, #0x108]
0035f918  14 51 cd e5                                      strb r5, [sp, #0x114]
0035f91c  1d fc ff eb                                      bl #0x35e998
0035f920  04 10 a0 e1                                      mov r1, r4
0035f924  07 20 a0 e1                                      mov r2, r7
0035f928  08 00 a0 e1                                      mov r0, r8
0035f92c  90 40 8d e2                                      add r4, sp, #0x90
0035f930  18 fc ff eb                                      bl #0x35e998
0035f934  08 10 a0 e1                                      mov r1, r8
0035f938  04 00 a0 e1                                      mov r0, r4
0035f93c  0b 20 a0 e1                                      mov r2, fp
0035f940  14 fc ff eb                                      bl #0x35e998
0035f944  06 00 a0 e1                                      mov r0, r6
0035f948  04 10 a0 e1                                      mov r1, r4
0035f94c  00 30 96 e5                                      ldr r3, [r6]
0035f950  0f e0 a0 e1                                      mov lr, pc
0035f954  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0035f958  85 df 8d e2                                      add sp, sp, #0x214
0035f95c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0035f960  04 53 63 00 f4 37 00 00                          .byte 0x04, 0x53, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0035ffb8, declared_size=580, range_size=580, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNode19onRegisterSceneNodeEv
; demangled: ShadowSkinnedMeshSceneNode::onRegisterSceneNode()
; decoder-mode: arm
0035ffb8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0035ffbc  24 62 9f e5                                      ldr r6, [pc, #0x224]
0035ffc0  24 22 9f e5                                      ldr r2, [pc, #0x224]
0035ffc4  24 32 9f e5                                      ldr r3, [pc, #0x224]
0035ffc8  06 60 8f e0                                      add r6, pc, r6
0035ffcc  44 d0 4d e2                                      sub sp, sp, #0x44
0035ffd0  14 20 8d e5                                      str r2, [sp, #0x14]
0035ffd4  02 20 96 e7                                      ldr r2, [r6, r2]
0035ffd8  03 30 96 e7                                      ldr r3, [r6, r3]
0035ffdc  00 50 a0 e1                                      mov r5, r0
0035ffe0  00 10 92 e5                                      ldr r1, [r2]
0035ffe4  10 30 93 e5                                      ldr r3, [r3, #0x10]
0035ffe8  34 21 90 e5                                      ldr r2, [r0, #0x134]
0035ffec  3c 10 8d e5                                      str r1, [sp, #0x3c]
0035fff0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0035fff4  00 00 52 e3                                      cmp r2, #0
0035fff8  18 84 93 e5                                      ldr r8, [r3, #0x418]
0035fffc  67 00 00 0a                                      beq #0x3601a0
00360000  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
00360004  24 40 8d e2                                      add r4, sp, #0x24
00360008  03 70 96 e7                                      ldr r7, [r6, r3]
0036000c  07 00 a0 e1                                      mov r0, r7
00360010  1c 5e ff eb                                      bl #0x337888
00360014  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
00360018  04 00 a0 e1                                      mov r0, r4
0036001c  34 40 8d e5                                      str r4, [sp, #0x34]
00360020  01 10 8f e0                                      add r1, pc, r1
00360024  20 10 81 e2                                      add r1, r1, #0x20
00360028  38 40 8d e5                                      str r4, [sp, #0x38]
0036002c  88 fb ff eb                                      bl #0x35ee54
00360030  07 00 a0 e1                                      mov r0, r7
00360034  04 10 a0 e1                                      mov r1, r4
00360038  92 5e ff eb                                      bl #0x337a88
0036003c  00 70 50 e2                                      subs r7, r0, #0
00360040  06 00 00 0a                                      beq #0x360060
00360044  08 00 a0 e1                                      mov r0, r8
00360048  00 10 a0 e3                                      mov r1, #0
0036004c  a9 b8 fe eb                                      bl #0x30e2f8
00360050  00 00 50 e3                                      cmp r0, #0
00360054  00 70 a0 e3                                      mov r7, #0
00360058  01 70 a0 13                                      movne r7, #1
0036005c  77 70 ef e6                                      uxtb r7, r7
00360060  38 00 9d e5                                      ldr r0, [sp, #0x38]
00360064  04 00 50 e1                                      cmp r0, r4
00360068  06 00 00 0a                                      beq #0x360088
0036006c  00 00 50 e3                                      cmp r0, #0
00360070  04 00 00 0a                                      beq #0x360088
00360074  24 10 9d e5                                      ldr r1, [sp, #0x24]
00360078  01 10 60 e0                                      rsb r1, r0, r1
0036007c  80 00 51 e3                                      cmp r1, #0x80
00360080  55 00 00 8a                                      bhi #0x3601dc
00360084  9d a3 0e eb                                      bl #0x708f00
00360088  00 00 57 e3                                      cmp r7, #0
0036008c  43 00 00 0a                                      beq #0x3601a0
00360090  10 31 95 e5                                      ldr r3, [r5, #0x110]
00360094  14 a0 93 e5                                      ldr sl, [r3, #0x14]
00360098  00 00 5a e3                                      cmp sl, #0
0036009c  3f 00 00 0a                                      beq #0x3601a0
003600a0  34 31 95 e5                                      ldr r3, [r5, #0x134]
003600a4  03 00 a0 e1                                      mov r0, r3
003600a8  00 30 93 e5                                      ldr r3, [r3]
003600ac  0f e0 a0 e1                                      mov lr, pc
003600b0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003600b4  00 90 50 e2                                      subs sb, r0, #0
003600b8  38 00 00 0a                                      beq #0x3601a0
003600bc  01 40 a0 e3                                      mov r4, #1
003600c0  20 b0 8d e2                                      add fp, sp, #0x20
003600c4  1c 70 8d e2                                      add r7, sp, #0x1c
003600c8  06 80 a0 e1                                      mov r8, r6
003600cc  06 00 00 ea                                      b #0x3600ec
003600d0  05 00 50 e3                                      cmp r0, #5
003600d4  3a 00 00 0a                                      beq #0x3601c4
003600d8  07 00 a0 e1                                      mov r0, r7
003600dc  c1 c2 fe eb                                      bl #0x310be8
003600e0  04 00 59 e1                                      cmp sb, r4
003600e4  01 40 84 e2                                      add r4, r4, #1
003600e8  2b 00 00 9a                                      bls #0x36019c
003600ec  34 31 95 e5                                      ldr r3, [r5, #0x134]
003600f0  01 60 44 e2                                      sub r6, r4, #1
003600f4  0b 00 a0 e1                                      mov r0, fp
003600f8  03 10 a0 e1                                      mov r1, r3
003600fc  06 20 a0 e1                                      mov r2, r6
00360100  00 30 93 e5                                      ldr r3, [r3]
00360104  0f e0 a0 e1                                      mov lr, pc
00360108  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0036010c  20 00 9d e5                                      ldr r0, [sp, #0x20]
00360110  00 00 50 e3                                      cmp r0, #0
00360114  f1 ff ff 0a                                      beq #0x3600e0
00360118  19 f5 fe eb                                      bl #0x31d584
0036011c  98 31 95 e5                                      ldr r3, [r5, #0x198]
00360120  00 10 a0 e3                                      mov r1, #0
00360124  00 00 53 e3                                      cmp r3, #0
00360128  1c 30 8d e5                                      str r3, [sp, #0x1c]
0036012c  00 20 93 15                                      ldrne r2, [r3]
00360130  01 20 82 12                                      addne r2, r2, #1
00360134  00 20 83 15                                      strne r2, [r3]
00360138  34 21 95 e5                                      ldr r2, [r5, #0x134]
0036013c  06 30 a0 e1                                      mov r3, r6
00360140  02 00 a0 e1                                      mov r0, r2
00360144  00 c0 92 e5                                      ldr ip, [r2]
00360148  0a 20 a0 e1                                      mov r2, sl
0036014c  0f e0 a0 e1                                      mov lr, pc
00360150  38 f0 9c e5                                      ldr pc, [ip, #0x38]
00360154  04 00 50 e3                                      cmp r0, #4
00360158  10 00 50 13                                      cmpne r0, #0x10
0036015c  db ff ff 1a                                      bne #0x3600d0
00360160  10 31 95 e5                                      ldr r3, [r5, #0x110]
00360164  05 10 a0 e1                                      mov r1, r5
00360168  07 20 a0 e1                                      mov r2, r7
0036016c  00 c0 93 e5                                      ldr ip, [r3]
00360170  03 00 a0 e1                                      mov r0, r3
00360174  06 30 a0 e3                                      mov r3, #6
00360178  00 30 8d e5                                      str r3, [sp]
0036017c  00 30 a0 e3                                      mov r3, #0
00360180  04 30 8d e5                                      str r3, [sp, #4]
00360184  02 31 e0 e3                                      mvn r3, #0x80000000
00360188  08 30 8d e5                                      str r3, [sp, #8]
0036018c  04 30 a0 e1                                      mov r3, r4
00360190  0f e0 a0 e1                                      mov lr, pc
00360194  24 f0 9c e5                                      ldr pc, [ip, #0x24]
00360198  ce ff ff ea                                      b #0x3600d8
0036019c  08 60 a0 e1                                      mov r6, r8
003601a0  14 20 9d e5                                      ldr r2, [sp, #0x14]
003601a4  01 00 a0 e3                                      mov r0, #1
003601a8  02 30 96 e7                                      ldr r3, [r6, r2]
003601ac  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003601b0  00 30 93 e5                                      ldr r3, [r3]
003601b4  03 00 52 e1                                      cmp r2, r3
003601b8  09 00 00 1a                                      bne #0x3601e4
003601bc  44 d0 8d e2                                      add sp, sp, #0x44
003601c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003601c4  34 31 95 e5                                      ldr r3, [r5, #0x134]
003601c8  03 00 a0 e1                                      mov r0, r3
003601cc  00 30 93 e5                                      ldr r3, [r3]
003601d0  0f e0 a0 e1                                      mov lr, pc
003601d4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003601d8  be ff ff ea                                      b #0x3600d8
003601dc  97 c0 fe eb                                      bl #0x310440
003601e0  a8 ff ff ea                                      b #0x360088
003601e4  49 b8 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003601e8  c8 4a 63 00 ac 40 00 00 f4 37 00 00 84 08 00 00  .byte 0xc8, 0x4a, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
003601f8  30 fa 55 00                                      .byte 0x30, 0xfa, 0x55, 0x00

; FUNCTION 0x003607a0, declared_size=424, range_size=424, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNode10renderMeshEPv
; demangled: ShadowSkinnedMeshSceneNode::renderMesh(void*)
; decoder-mode: arm
003607a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003607a4  34 31 90 e5                                      ldr r3, [r0, #0x134]
003607a8  10 21 90 e5                                      ldr r2, [r0, #0x110]
003607ac  10 d0 4d e2                                      sub sp, sp, #0x10
003607b0  00 00 53 e3                                      cmp r3, #0
003607b4  00 40 a0 e1                                      mov r4, r0
003607b8  14 50 92 e5                                      ldr r5, [r2, #0x14]
003607bc  4a 00 00 0a                                      beq #0x3608ec
003607c0  00 00 55 e3                                      cmp r5, #0
003607c4  48 00 00 0a                                      beq #0x3608ec
003607c8  00 00 51 e3                                      cmp r1, #0
003607cc  46 00 00 0a                                      beq #0x3608ec
003607d0  01 60 41 e2                                      sub r6, r1, #1
003607d4  0c 00 8d e2                                      add r0, sp, #0xc
003607d8  03 10 a0 e1                                      mov r1, r3
003607dc  06 20 a0 e1                                      mov r2, r6
003607e0  00 30 93 e5                                      ldr r3, [r3]
003607e4  0f e0 a0 e1                                      mov lr, pc
003607e8  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003607ec  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003607f0  00 00 53 e3                                      cmp r3, #0
003607f4  3c 00 00 0a                                      beq #0x3608ec
003607f8  34 31 94 e5                                      ldr r3, [r4, #0x134]
003607fc  1f 00 06 e2                                      and r0, r6, #0x1f
00360800  01 10 a0 e3                                      mov r1, #1
00360804  14 20 93 e5                                      ldr r2, [r3, #0x14]
00360808  11 20 12 e0                                      ands r2, r2, r1, lsl r0
0036080c  00 80 a0 13                                      movne r8, #0
00360810  44 00 00 0a                                      beq #0x360928
00360814  98 31 94 e5                                      ldr r3, [r4, #0x198]
00360818  05 00 a0 e1                                      mov r0, r5
0036081c  01 10 a0 e3                                      mov r1, #1
00360820  08 30 8d e5                                      str r3, [sp, #8]
00360824  00 00 53 e3                                      cmp r3, #0
00360828  00 20 93 15                                      ldrne r2, [r3]
0036082c  08 70 8d e2                                      add r7, sp, #8
00360830  01 20 82 12                                      addne r2, r2, #1
00360834  00 20 83 15                                      strne r2, [r3]
00360838  9c 31 94 e5                                      ldr r3, [r4, #0x19c]
0036083c  00 00 53 e3                                      cmp r3, #0
00360840  04 30 8d e5                                      str r3, [sp, #4]
00360844  00 20 93 15                                      ldrne r2, [r3]
00360848  01 20 82 12                                      addne r2, r2, #1
0036084c  00 20 83 15                                      strne r2, [r3]
00360850  00 30 95 e5                                      ldr r3, [r5]
00360854  24 20 84 e2                                      add r2, r4, #0x24
00360858  0f e0 a0 e1                                      mov lr, pc
0036085c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00360860  04 20 8d e2                                      add r2, sp, #4
00360864  05 00 a0 e1                                      mov r0, r5
00360868  07 10 a0 e1                                      mov r1, r7
0036086c  a7 f8 ff eb                                      bl #0x35eb10
00360870  00 30 a0 e3                                      mov r3, #0
00360874  e8 30 85 e5                                      str r3, [r5, #0xe8]
00360878  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0036087c  05 00 a0 e1                                      mov r0, r5
00360880  0d 10 a0 e1                                      mov r1, sp
00360884  00 00 53 e3                                      cmp r3, #0
00360888  00 30 8d e5                                      str r3, [sp]
0036088c  04 20 93 15                                      ldrne r2, [r3, #4]
00360890  01 20 82 12                                      addne r2, r2, #1
00360894  04 20 83 15                                      strne r2, [r3, #4]
00360898  cc f8 ff eb                                      bl #0x35ebd0
0036089c  00 00 9d e5                                      ldr r0, [sp]
003608a0  00 00 50 e3                                      cmp r0, #0
003608a4  00 00 00 0a                                      beq #0x3608ac
003608a8  35 f3 fe eb                                      bl #0x31d584
003608ac  00 00 58 e3                                      cmp r8, #0
003608b0  14 00 00 1a                                      bne #0x360908
003608b4  04 40 9d e5                                      ldr r4, [sp, #4]
003608b8  00 00 54 e3                                      cmp r4, #0
003608bc  04 00 00 0a                                      beq #0x3608d4
003608c0  00 30 94 e5                                      ldr r3, [r4]
003608c4  01 30 43 e2                                      sub r3, r3, #1
003608c8  00 00 53 e3                                      cmp r3, #0
003608cc  00 30 84 e5                                      str r3, [r4]
003608d0  07 00 00 0a                                      beq #0x3608f4
003608d4  07 00 a0 e1                                      mov r0, r7
003608d8  c2 c0 fe eb                                      bl #0x310be8
003608dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003608e0  00 00 50 e3                                      cmp r0, #0
003608e4  00 00 00 0a                                      beq #0x3608ec
003608e8  25 f3 fe eb                                      bl #0x31d584
003608ec  10 d0 8d e2                                      add sp, sp, #0x10
003608f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003608f4  04 00 a0 e1                                      mov r0, r4
003608f8  95 fb 09 eb                                      bl #0x5df754
003608fc  04 00 a0 e1                                      mov r0, r4
00360900  ce be fe eb                                      bl #0x310440
00360904  f2 ff ff ea                                      b #0x3608d4
00360908  34 31 94 e5                                      ldr r3, [r4, #0x134]
0036090c  05 10 a0 e1                                      mov r1, r5
00360910  06 20 a0 e1                                      mov r2, r6
00360914  03 00 a0 e1                                      mov r0, r3
00360918  00 30 93 e5                                      ldr r3, [r3]
0036091c  0f e0 a0 e1                                      mov lr, pc
00360920  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00360924  e2 ff ff ea                                      b #0x3608b4
00360928  03 00 a0 e1                                      mov r0, r3
0036092c  00 c0 93 e5                                      ldr ip, [r3]
00360930  05 20 a0 e1                                      mov r2, r5
00360934  06 30 a0 e1                                      mov r3, r6
00360938  0f e0 a0 e1                                      mov lr, pc
0036093c  38 f0 9c e5                                      ldr pc, [ip, #0x38]
00360940  04 80 00 e2                                      and r8, r0, #4
00360944  b2 ff ff ea                                      b #0x360814

; FUNCTION 0x00360948, declared_size=352, range_size=352, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNode6renderEPv
; demangled: ShadowSkinnedMeshSceneNode::render(void*)
; decoder-mode: arm
00360948  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0036094c  40 41 9f e5                                      ldr r4, [pc, #0x140]
00360950  40 51 9f e5                                      ldr r5, [pc, #0x140]
00360954  40 21 9f e5                                      ldr r2, [pc, #0x140]
00360958  04 40 8f e0                                      add r4, pc, r4
0036095c  05 30 94 e7                                      ldr r3, [r4, r5]
00360960  02 a0 94 e7                                      ldr sl, [r4, r2]
00360964  24 d0 4d e2                                      sub sp, sp, #0x24
00360968  00 30 93 e5                                      ldr r3, [r3]
0036096c  00 60 a0 e1                                      mov r6, r0
00360970  0a 00 a0 e1                                      mov r0, sl
00360974  1c 30 8d e5                                      str r3, [sp, #0x1c]
00360978  01 70 a0 e1                                      mov r7, r1
0036097c  c1 5b ff eb                                      bl #0x337888
00360980  18 11 9f e5                                      ldr r1, [pc, #0x118]
00360984  04 80 8d e2                                      add r8, sp, #4
00360988  08 00 a0 e1                                      mov r0, r8
0036098c  01 10 8f e0                                      add r1, pc, r1
00360990  20 10 81 e2                                      add r1, r1, #0x20
00360994  14 80 8d e5                                      str r8, [sp, #0x14]
00360998  18 80 8d e5                                      str r8, [sp, #0x18]
0036099c  2c f9 ff eb                                      bl #0x35ee54
003609a0  0a 00 a0 e1                                      mov r0, sl
003609a4  08 10 a0 e1                                      mov r1, r8
003609a8  36 5c ff eb                                      bl #0x337a88
003609ac  00 a0 a0 e1                                      mov sl, r0
003609b0  18 00 9d e5                                      ldr r0, [sp, #0x18]
003609b4  08 00 50 e1                                      cmp r0, r8
003609b8  06 00 00 0a                                      beq #0x3609d8
003609bc  00 00 50 e3                                      cmp r0, #0
003609c0  04 00 00 0a                                      beq #0x3609d8
003609c4  04 10 9d e5                                      ldr r1, [sp, #4]
003609c8  01 10 60 e0                                      rsb r1, r0, r1
003609cc  80 00 51 e3                                      cmp r1, #0x80
003609d0  2c 00 00 8a                                      bhi #0x360a88
003609d4  49 a1 0e eb                                      bl #0x708f00
003609d8  00 00 5a e3                                      cmp sl, #0
003609dc  0c 00 00 0a                                      beq #0x360a14
003609e0  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003609e4  03 30 94 e7                                      ldr r3, [r4, r3]
003609e8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003609ec  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
003609f0  18 04 93 e5                                      ldr r0, [r3, #0x418]
003609f4  aa b7 fe eb                                      bl #0x30e8a4
003609f8  2d 23 04 e3                                      movw r2, #0x432d
003609fc  e2 36 03 e3                                      movw r3, #0x36e2
00360a00  1c 2b 4e e3                                      movt r2, #0xeb1c
00360a04  1a 3f 43 e3                                      movt r3, #0x3f1a
00360a08  54 b7 fe eb                                      bl #0x30e760
00360a0c  00 80 50 e2                                      subs r8, r0, #0
00360a10  06 00 00 0a                                      beq #0x360a30
00360a14  05 30 94 e7                                      ldr r3, [r4, r5]
00360a18  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00360a1c  00 30 93 e5                                      ldr r3, [r3]
00360a20  03 00 52 e1                                      cmp r2, r3
00360a24  19 00 00 1a                                      bne #0x360a90
00360a28  24 d0 8d e2                                      add sp, sp, #0x24
00360a2c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00360a30  06 00 a0 e1                                      mov r0, r6
00360a34  51 fb ff eb                                      bl #0x35f780
00360a38  34 11 96 e5                                      ldr r1, [r6, #0x134]
00360a3c  66 2f 86 e2                                      add r2, r6, #0x198
00360a40  67 3f 86 e2                                      add r3, r6, #0x19c
00360a44  00 c0 91 e5                                      ldr ip, [r1]
00360a48  01 00 a0 e1                                      mov r0, r1
00360a4c  08 10 a0 e1                                      mov r1, r8
00360a50  0f e0 a0 e1                                      mov lr, pc
00360a54  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00360a58  06 00 a0 e1                                      mov r0, r6
00360a5c  07 10 a0 e1                                      mov r1, r7
00360a60  4e ff ff eb                                      bl #0x3607a0
00360a64  34 21 96 e5                                      ldr r2, [r6, #0x134]
00360a68  08 10 a0 e1                                      mov r1, r8
00360a6c  8c 31 96 e5                                      ldr r3, [r6, #0x18c]
00360a70  02 00 a0 e1                                      mov r0, r2
00360a74  00 c0 92 e5                                      ldr ip, [r2]
00360a78  80 21 96 e5                                      ldr r2, [r6, #0x180]
00360a7c  0f e0 a0 e1                                      mov lr, pc
00360a80  20 f0 9c e5                                      ldr pc, [ip, #0x20]
00360a84  e2 ff ff ea                                      b #0x360a14
00360a88  6c be fe eb                                      bl #0x310440
00360a8c  d1 ff ff ea                                      b #0x3609d8
00360a90  1e b6 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00360a94  38 41 63 00 ac 40 00 00 84 08 00 00 c4 f0 55 00  .byte 0x38, 0x41, 0x63, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc4, 0xf0, 0x55, 0x00
00360aa4  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00360b7c, declared_size=228, range_size=228, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNodeD1Ev
; demangled: ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
00360b7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00360b80  cc 50 9f e5                                      ldr r5, [pc, #0xcc]
00360b84  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
00360b88  9c 61 90 e5                                      ldr r6, [r0, #0x19c]
00360b8c  05 50 8f e0                                      add r5, pc, r5
00360b90  03 30 95 e7                                      ldr r3, [r5, r3]
00360b94  00 00 56 e3                                      cmp r6, #0
00360b98  00 40 a0 e1                                      mov r4, r0
00360b9c  4a 2f 83 e2                                      add r2, r3, #0x128
00360ba0  1c 30 83 e2                                      add r3, r3, #0x1c
00360ba4  00 30 80 e5                                      str r3, [r0]
00360ba8  a4 21 80 e5                                      str r2, [r0, #0x1a4]
00360bac  04 00 00 0a                                      beq #0x360bc4
00360bb0  00 30 96 e5                                      ldr r3, [r6]
00360bb4  01 30 43 e2                                      sub r3, r3, #1
00360bb8  00 00 53 e3                                      cmp r3, #0
00360bbc  00 30 86 e5                                      str r3, [r6]
00360bc0  1e 00 00 0a                                      beq #0x360c40
00360bc4  66 0f 84 e2                                      add r0, r4, #0x198
00360bc8  06 c0 fe eb                                      bl #0x310be8
00360bcc  63 0f 84 e2                                      add r0, r4, #0x18c
00360bd0  7e fb ff eb                                      bl #0x35f9d0
00360bd4  06 0d 84 e2                                      add r0, r4, #0x180
00360bd8  9f fb ff eb                                      bl #0x35fa5c
00360bdc  78 30 9f e5                                      ldr r3, [pc, #0x78]
00360be0  04 00 a0 e1                                      mov r0, r4
00360be4  03 10 95 e7                                      ldr r1, [r5, r3]
00360be8  04 20 91 e5                                      ldr r2, [r1, #4]
00360bec  38 e0 91 e5                                      ldr lr, [r1, #0x38]
00360bf0  08 30 91 e5                                      ldr r3, [r1, #8]
00360bf4  00 20 84 e5                                      str r2, [r4]
00360bf8  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00360bfc  3c 50 91 e5                                      ldr r5, [r1, #0x3c]
00360c00  30 c0 91 e5                                      ldr ip, [r1, #0x30]
00360c04  02 e0 84 e7                                      str lr, [r4, r2]
00360c08  00 e0 94 e5                                      ldr lr, [r4]
00360c0c  34 20 91 e5                                      ldr r2, [r1, #0x34]
00360c10  0c 10 81 e2                                      add r1, r1, #0xc
00360c14  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00360c18  0e 50 84 e7                                      str r5, [r4, lr]
00360c1c  00 30 84 e5                                      str r3, [r4]
00360c20  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00360c24  03 c0 84 e7                                      str ip, [r4, r3]
00360c28  00 30 94 e5                                      ldr r3, [r4]
00360c2c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00360c30  03 20 84 e7                                      str r2, [r4, r3]
00360c34  a9 95 0b eb                                      bl #0x6462e0
00360c38  04 00 a0 e1                                      mov r0, r4
00360c3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00360c40  06 00 a0 e1                                      mov r0, r6
00360c44  c2 fa 09 eb                                      bl #0x5df754
00360c48  06 00 a0 e1                                      mov r0, r6
00360c4c  fb bd fe eb                                      bl #0x310440
00360c50  db ff ff ea                                      b #0x360bc4
; mapping-symbol data/literal pool
00360c54  04 3f 63 00 44 21 00 00 48 1d 00 00              .byte 0x04, 0x3f, 0x63, 0x00, 0x44, 0x21, 0x00, 0x00, 0x48, 0x1d, 0x00, 0x00

; FUNCTION 0x00360c60, declared_size=28, range_size=28, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNodeD0Ev
; demangled: ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
00360c60  10 40 2d e9                                      push {r4, lr}
00360c64  00 40 a0 e1                                      mov r4, r0
00360c68  c3 ff ff eb                                      bl #0x360b7c
00360c6c  04 00 a0 e1                                      mov r0, r4
00360c70  f2 bd fe eb                                      bl #0x310440
00360c74  04 00 a0 e1                                      mov r0, r4
00360c78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00360c7c, declared_size=224, range_size=224, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNodeD2Ev
; demangled: ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
00360c7c  70 40 2d e9                                      push {r4, r5, r6, lr}
00360c80  00 30 91 e5                                      ldr r3, [r1]
00360c84  01 50 a0 e1                                      mov r5, r1
00360c88  00 40 a0 e1                                      mov r4, r0
00360c8c  00 30 80 e5                                      str r3, [r0]
00360c90  1c 30 13 e5                                      ldr r3, [r3, #-0x1c]
00360c94  40 20 91 e5                                      ldr r2, [r1, #0x40]
00360c98  03 20 80 e7                                      str r2, [r0, r3]
00360c9c  00 30 90 e5                                      ldr r3, [r0]
00360ca0  44 20 91 e5                                      ldr r2, [r1, #0x44]
00360ca4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00360ca8  03 20 80 e7                                      str r2, [r0, r3]
00360cac  9c 61 90 e5                                      ldr r6, [r0, #0x19c]
00360cb0  00 00 56 e3                                      cmp r6, #0
00360cb4  04 00 00 0a                                      beq #0x360ccc
00360cb8  00 30 96 e5                                      ldr r3, [r6]
00360cbc  01 30 43 e2                                      sub r3, r3, #1
00360cc0  00 00 53 e3                                      cmp r3, #0
00360cc4  00 30 86 e5                                      str r3, [r6]
00360cc8  1e 00 00 0a                                      beq #0x360d48
00360ccc  66 0f 84 e2                                      add r0, r4, #0x198
00360cd0  c4 bf fe eb                                      bl #0x310be8
00360cd4  63 0f 84 e2                                      add r0, r4, #0x18c
00360cd8  3c fb ff eb                                      bl #0x35f9d0
00360cdc  06 0d 84 e2                                      add r0, r4, #0x180
00360ce0  5d fb ff eb                                      bl #0x35fa5c
00360ce4  04 20 95 e5                                      ldr r2, [r5, #4]
00360ce8  04 50 85 e2                                      add r5, r5, #4
00360cec  04 30 85 e2                                      add r3, r5, #4
00360cf0  00 20 84 e5                                      str r2, [r4]
00360cf4  34 c0 95 e5                                      ldr ip, [r5, #0x34]
00360cf8  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00360cfc  04 10 83 e2                                      add r1, r3, #4
00360d00  04 00 a0 e1                                      mov r0, r4
00360d04  02 c0 84 e7                                      str ip, [r4, r2]
00360d08  00 20 94 e5                                      ldr r2, [r4]
00360d0c  38 c0 95 e5                                      ldr ip, [r5, #0x38]
00360d10  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00360d14  02 c0 84 e7                                      str ip, [r4, r2]
00360d18  04 20 95 e5                                      ldr r2, [r5, #4]
00360d1c  00 20 84 e5                                      str r2, [r4]
00360d20  28 c0 93 e5                                      ldr ip, [r3, #0x28]
00360d24  1c 20 12 e5                                      ldr r2, [r2, #-0x1c]
00360d28  02 c0 84 e7                                      str ip, [r4, r2]
00360d2c  00 c0 94 e5                                      ldr ip, [r4]
00360d30  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00360d34  0c 30 1c e5                                      ldr r3, [ip, #-0xc]
00360d38  03 20 84 e7                                      str r2, [r4, r3]
00360d3c  67 95 0b eb                                      bl #0x6462e0
00360d40  04 00 a0 e1                                      mov r0, r4
00360d44  70 80 bd e8                                      pop {r4, r5, r6, pc}
00360d48  06 00 a0 e1                                      mov r0, r6
00360d4c  80 fa 09 eb                                      bl #0x5df754
00360d50  06 00 a0 e1                                      mov r0, r6
00360d54  b9 bd fe eb                                      bl #0x310440
00360d58  db ff ff ea                                      b #0x360ccc

; FUNCTION 0x00361b54, declared_size=976, range_size=976, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNodeC1EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeE
; demangled: ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>, glitch::scene::ISceneNode const*)
; decoder-mode: arm
00361b54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00361b58  a0 53 9f e5                                      ldr r5, [pc, #0x3a0]
00361b5c  a0 33 9f e5                                      ldr r3, [pc, #0x3a0]
00361b60  a0 c3 9f e5                                      ldr ip, [pc, #0x3a0]
00361b64  05 50 8f e0                                      add r5, pc, r5
00361b68  03 30 95 e7                                      ldr r3, [r5, r3]
00361b6c  0c c0 95 e7                                      ldr ip, [r5, ip]
00361b70  01 60 a0 e3                                      mov r6, #1
00361b74  48 e0 93 e5                                      ldr lr, [r3, #0x48]
00361b78  08 c0 8c e2                                      add ip, ip, #8
00361b7c  a8 61 80 e5                                      str r6, [r0, #0x1a8]
00361b80  a4 c1 80 e5                                      str ip, [r0, #0x1a4]
00361b84  00 e0 80 e5                                      str lr, [r0]
00361b88  0c e0 1e e5                                      ldr lr, [lr, #-0xc]
00361b8c  4c 60 93 e5                                      ldr r6, [r3, #0x4c]
00361b90  01 c0 a0 e1                                      mov ip, r1
00361b94  3c d0 4d e2                                      sub sp, sp, #0x3c
00361b98  0e 60 80 e7                                      str r6, [r0, lr]
00361b9c  02 70 a0 e1                                      mov r7, r2
00361ba0  04 10 83 e2                                      add r1, r3, #4
00361ba4  0c 20 a0 e1                                      mov r2, ip
00361ba8  00 40 a0 e1                                      mov r4, r0
00361bac  12 e5 ff eb                                      bl #0x35affc
00361bb0  54 33 9f e5                                      ldr r3, [pc, #0x354]
00361bb4  54 23 9f e5                                      ldr r2, [pc, #0x354]
00361bb8  00 60 a0 e3                                      mov r6, #0
00361bbc  03 30 95 e7                                      ldr r3, [r5, r3]
00361bc0  02 20 95 e7                                      ldr r2, [r5, r2]
00361bc4  a0 71 84 e5                                      str r7, [r4, #0x1a0]
00361bc8  4a 1f 83 e2                                      add r1, r3, #0x128
00361bcc  1c 30 83 e2                                      add r3, r3, #0x1c
00361bd0  a4 11 84 e5                                      str r1, [r4, #0x1a4]
00361bd4  80 61 84 e5                                      str r6, [r4, #0x180]
00361bd8  84 61 84 e5                                      str r6, [r4, #0x184]
00361bdc  88 61 84 e5                                      str r6, [r4, #0x188]
00361be0  8c 61 84 e5                                      str r6, [r4, #0x18c]
00361be4  90 61 84 e5                                      str r6, [r4, #0x190]
00361be8  94 61 84 e5                                      str r6, [r4, #0x194]
00361bec  98 61 84 e5                                      str r6, [r4, #0x198]
00361bf0  9c 61 84 e5                                      str r6, [r4, #0x19c]
00361bf4  00 30 84 e5                                      str r3, [r4]
00361bf8  10 30 92 e5                                      ldr r3, [r2, #0x10]
00361bfc  10 13 9f e5                                      ldr r1, [pc, #0x310]
00361c00  10 23 9f e5                                      ldr r2, [pc, #0x310]
00361c04  0c b0 8d e2                                      add fp, sp, #0xc
00361c08  01 10 8f e0                                      add r1, pc, r1
00361c0c  02 20 95 e7                                      ldr r2, [r5, r2]
00361c10  0b 00 a0 e1                                      mov r0, fp
00361c14  10 50 93 e5                                      ldr r5, [r3, #0x10]
00361c18  8f b5 0a eb                                      bl #0x60f25c
00361c1c  f8 32 9f e5                                      ldr r3, [pc, #0x2f8]
00361c20  34 90 8d e2                                      add sb, sp, #0x34
00361c24  05 20 a0 e1                                      mov r2, r5
00361c28  0b 10 a0 e1                                      mov r1, fp
00361c2c  03 30 8f e0                                      add r3, pc, r3
00361c30  09 00 a0 e1                                      mov r0, sb
00361c34  00 60 8d e5                                      str r6, [sp]
00361c38  33 e5 0a eb                                      bl #0x61b10c
00361c3c  34 31 94 e5                                      ldr r3, [r4, #0x134]
00361c40  30 70 8d e2                                      add r7, sp, #0x30
00361c44  03 00 a0 e1                                      mov r0, r3
00361c48  00 30 93 e5                                      ldr r3, [r3]
00361c4c  0f e0 a0 e1                                      mov lr, pc
00361c50  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00361c54  c4 22 9f e5                                      ldr r2, [pc, #0x2c4]
00361c58  09 10 a0 e1                                      mov r1, sb
00361c5c  06 30 a0 e1                                      mov r3, r6
00361c60  02 20 8f e0                                      add r2, pc, r2
00361c64  00 50 a0 e1                                      mov r5, r0
00361c68  07 00 a0 e1                                      mov r0, r7
00361c6c  0b a9 09 eb                                      bl #0x5cc0a0
00361c70  30 30 9d e5                                      ldr r3, [sp, #0x30]
00361c74  38 00 8d e2                                      add r0, sp, #0x38
00361c78  06 00 53 e1                                      cmp r3, r6
00361c7c  18 30 8d e5                                      str r3, [sp, #0x18]
00361c80  00 20 93 15                                      ldrne r2, [r3]
00361c84  01 20 82 12                                      addne r2, r2, #1
00361c88  00 20 83 15                                      strne r2, [r3]
00361c8c  18 30 9d 15                                      ldrne r3, [sp, #0x18]
00361c90  98 21 94 e5                                      ldr r2, [r4, #0x198]
00361c94  98 31 84 e5                                      str r3, [r4, #0x198]
00361c98  20 20 20 e5                                      str r2, [r0, #-0x20]!
00361c9c  d1 bb fe eb                                      bl #0x310be8
00361ca0  07 00 a0 e1                                      mov r0, r7
00361ca4  cf bb fe eb                                      bl #0x310be8
00361ca8  98 31 94 e5                                      ldr r3, [r4, #0x198]
00361cac  00 20 a0 e3                                      mov r2, #0
00361cb0  2c 00 8d e2                                      add r0, sp, #0x2c
00361cb4  08 20 c3 e5                                      strb r2, [r3, #8]
00361cb8  98 11 94 e5                                      ldr r1, [r4, #0x198]
00361cbc  04 10 81 e2                                      add r1, r1, #4
00361cc0  9d f5 09 eb                                      bl #0x5df33c
00361cc4  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
00361cc8  00 00 53 e3                                      cmp r3, #0
00361ccc  00 20 93 15                                      ldrne r2, [r3]
00361cd0  01 20 82 12                                      addne r2, r2, #1
00361cd4  00 20 83 15                                      strne r2, [r3]
00361cd8  9c 61 94 e5                                      ldr r6, [r4, #0x19c]
00361cdc  9c 31 84 e5                                      str r3, [r4, #0x19c]
00361ce0  00 00 56 e3                                      cmp r6, #0
00361ce4  04 00 00 0a                                      beq #0x361cfc
00361ce8  00 30 96 e5                                      ldr r3, [r6]
00361cec  01 30 43 e2                                      sub r3, r3, #1
00361cf0  00 00 53 e3                                      cmp r3, #0
00361cf4  00 30 86 e5                                      str r3, [r6]
00361cf8  7b 00 00 0a                                      beq #0x361eec
00361cfc  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
00361d00  00 00 56 e3                                      cmp r6, #0
00361d04  04 00 00 0a                                      beq #0x361d1c
00361d08  00 30 96 e5                                      ldr r3, [r6]
00361d0c  01 30 43 e2                                      sub r3, r3, #1
00361d10  00 00 53 e3                                      cmp r3, #0
00361d14  00 30 86 e5                                      str r3, [r6]
00361d18  6e 00 00 0a                                      beq #0x361ed8
00361d1c  38 70 8d e2                                      add r7, sp, #0x38
00361d20  00 60 a0 e3                                      mov r6, #0
00361d24  10 60 27 e5                                      str r6, [r7, #-0x10]!
00361d28  05 10 a0 e1                                      mov r1, r5
00361d2c  07 20 a0 e1                                      mov r2, r7
00361d30  06 0d 84 e2                                      add r0, r4, #0x180
00361d34  d8 f7 ff eb                                      bl #0x35fc9c
00361d38  07 00 a0 e1                                      mov r0, r7
00361d3c  a9 bb fe eb                                      bl #0x310be8
00361d40  06 00 55 e1                                      cmp r5, r6
00361d44  1b 00 00 0a                                      beq #0x361db8
00361d48  24 80 8d e2                                      add r8, sp, #0x24
00361d4c  14 a0 8d e2                                      add sl, sp, #0x14
00361d50  34 31 94 e5                                      ldr r3, [r4, #0x134]
00361d54  06 20 a0 e1                                      mov r2, r6
00361d58  08 00 a0 e1                                      mov r0, r8
00361d5c  03 10 a0 e1                                      mov r1, r3
00361d60  00 30 93 e5                                      ldr r3, [r3]
00361d64  80 71 94 e5                                      ldr r7, [r4, #0x180]
00361d68  0f e0 a0 e1                                      mov lr, pc
00361d6c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00361d70  24 10 9d e5                                      ldr r1, [sp, #0x24]
00361d74  06 31 a0 e1                                      lsl r3, r6, #2
00361d78  0a 00 a0 e1                                      mov r0, sl
00361d7c  14 10 8d e5                                      str r1, [sp, #0x14]
00361d80  00 00 51 e3                                      cmp r1, #0
00361d84  00 20 91 15                                      ldrne r2, [r1]
00361d88  01 60 86 e2                                      add r6, r6, #1
00361d8c  01 20 82 12                                      addne r2, r2, #1
00361d90  00 20 81 15                                      strne r2, [r1]
00361d94  14 10 9d 15                                      ldrne r1, [sp, #0x14]
00361d98  03 20 97 e7                                      ldr r2, [r7, r3]
00361d9c  14 20 8d e5                                      str r2, [sp, #0x14]
00361da0  03 10 87 e7                                      str r1, [r7, r3]
00361da4  8f bb fe eb                                      bl #0x310be8
00361da8  08 00 a0 e1                                      mov r0, r8
00361dac  8d bb fe eb                                      bl #0x310be8
00361db0  05 00 56 e1                                      cmp r6, r5
00361db4  e5 ff ff 1a                                      bne #0x361d50
00361db8  38 20 8d e2                                      add r2, sp, #0x38
00361dbc  00 30 a0 e3                                      mov r3, #0
00361dc0  18 30 22 e5                                      str r3, [r2, #-0x18]!
00361dc4  63 0f 84 e2                                      add r0, r4, #0x18c
00361dc8  05 10 a0 e1                                      mov r1, r5
00361dcc  1d fd ff eb                                      bl #0x361248
00361dd0  20 60 9d e5                                      ldr r6, [sp, #0x20]
00361dd4  00 00 56 e3                                      cmp r6, #0
00361dd8  04 00 00 0a                                      beq #0x361df0
00361ddc  00 30 96 e5                                      ldr r3, [r6]
00361de0  01 30 43 e2                                      sub r3, r3, #1
00361de4  00 00 53 e3                                      cmp r3, #0
00361de8  00 30 86 e5                                      str r3, [r6]
00361dec  34 00 00 0a                                      beq #0x361ec4
00361df0  00 00 55 e3                                      cmp r5, #0
00361df4  2b 00 00 0a                                      beq #0x361ea8
00361df8  00 60 a0 e3                                      mov r6, #0
00361dfc  1c 80 8d e2                                      add r8, sp, #0x1c
00361e00  34 31 94 e5                                      ldr r3, [r4, #0x134]
00361e04  06 20 a0 e1                                      mov r2, r6
00361e08  08 00 a0 e1                                      mov r0, r8
00361e0c  03 10 a0 e1                                      mov r1, r3
00361e10  00 30 93 e5                                      ldr r3, [r3]
00361e14  8c 71 94 e5                                      ldr r7, [r4, #0x18c]
00361e18  0f e0 a0 e1                                      mov lr, pc
00361e1c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00361e20  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00361e24  06 21 a0 e1                                      lsl r2, r6, #2
00361e28  01 60 86 e2                                      add r6, r6, #1
00361e2c  00 00 53 e3                                      cmp r3, #0
00361e30  00 10 93 15                                      ldrne r1, [r3]
00361e34  01 10 81 12                                      addne r1, r1, #1
00361e38  00 10 83 15                                      strne r1, [r3]
00361e3c  02 a0 97 e7                                      ldr sl, [r7, r2]
00361e40  02 30 87 e7                                      str r3, [r7, r2]
00361e44  00 00 5a e3                                      cmp sl, #0
00361e48  08 00 00 0a                                      beq #0x361e70
00361e4c  00 30 9a e5                                      ldr r3, [sl]
00361e50  01 30 43 e2                                      sub r3, r3, #1
00361e54  00 00 53 e3                                      cmp r3, #0
00361e58  00 30 8a e5                                      str r3, [sl]
00361e5c  03 00 00 1a                                      bne #0x361e70
00361e60  0a 00 a0 e1                                      mov r0, sl
00361e64  3a f6 09 eb                                      bl #0x5df754
00361e68  0a 00 a0 e1                                      mov r0, sl
00361e6c  73 b9 fe eb                                      bl #0x310440
00361e70  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00361e74  00 00 57 e3                                      cmp r7, #0
00361e78  08 00 00 0a                                      beq #0x361ea0
00361e7c  00 30 97 e5                                      ldr r3, [r7]
00361e80  01 30 43 e2                                      sub r3, r3, #1
00361e84  00 00 53 e3                                      cmp r3, #0
00361e88  00 30 87 e5                                      str r3, [r7]
00361e8c  03 00 00 1a                                      bne #0x361ea0
00361e90  07 00 a0 e1                                      mov r0, r7
00361e94  2e f6 09 eb                                      bl #0x5df754
00361e98  07 00 a0 e1                                      mov r0, r7
00361e9c  67 b9 fe eb                                      bl #0x310440
00361ea0  05 00 56 e1                                      cmp r6, r5
00361ea4  d5 ff ff 1a                                      bne #0x361e00
00361ea8  09 00 a0 e1                                      mov r0, sb
00361eac  01 c1 ff eb                                      bl #0x3522b8
00361eb0  0b 00 a0 e1                                      mov r0, fp
00361eb4  6e dd 0a eb                                      bl #0x619474
00361eb8  04 00 a0 e1                                      mov r0, r4
00361ebc  3c d0 8d e2                                      add sp, sp, #0x3c
00361ec0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00361ec4  06 00 a0 e1                                      mov r0, r6
00361ec8  21 f6 09 eb                                      bl #0x5df754
00361ecc  06 00 a0 e1                                      mov r0, r6
00361ed0  5a b9 fe eb                                      bl #0x310440
00361ed4  c5 ff ff ea                                      b #0x361df0
00361ed8  06 00 a0 e1                                      mov r0, r6
00361edc  1c f6 09 eb                                      bl #0x5df754
00361ee0  06 00 a0 e1                                      mov r0, r6
00361ee4  55 b9 fe eb                                      bl #0x310440
00361ee8  8b ff ff ea                                      b #0x361d1c
00361eec  06 00 a0 e1                                      mov r0, r6
00361ef0  17 f6 09 eb                                      bl #0x5df754
00361ef4  06 00 a0 e1                                      mov r0, r6
00361ef8  50 b9 fe eb                                      bl #0x310440
00361efc  7e ff ff ea                                      b #0x361cfc
; mapping-symbol data/literal pool
00361f00  2c 2f 63 00 48 1d 00 00 44 2b 00 00 44 21 00 00  .byte 0x2c, 0x2f, 0x63, 0x00, 0x48, 0x1d, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x44, 0x21, 0x00, 0x00
00361f10  f4 37 00 00 10 f1 55 00 10 47 00 00 0c f1 55 00  .byte 0xf4, 0x37, 0x00, 0x00, 0x10, 0xf1, 0x55, 0x00, 0x10, 0x47, 0x00, 0x00, 0x0c, 0xf1, 0x55, 0x00
00361f20  10 f1 55 00                                      .byte 0x10, 0xf1, 0x55, 0x00

; FUNCTION 0x00361f24, declared_size=920, range_size=920, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZN26ShadowSkinnedMeshSceneNodeC2EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeE
; demangled: ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh>, glitch::scene::ISceneNode const*)
; decoder-mode: arm
00361f24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00361f28  01 50 a0 e1                                      mov r5, r1
00361f2c  3c d0 4d e2                                      sub sp, sp, #0x3c
00361f30  04 10 81 e2                                      add r1, r1, #4
00361f34  00 40 a0 e1                                      mov r4, r0
00361f38  03 80 a0 e1                                      mov r8, r3
00361f3c  2e e4 ff eb                                      bl #0x35affc
00361f40  00 30 95 e5                                      ldr r3, [r5]
00361f44  58 73 9f e5                                      ldr r7, [pc, #0x358]
00361f48  00 60 a0 e3                                      mov r6, #0
00361f4c  00 30 84 e5                                      str r3, [r4]
00361f50  1c 20 13 e5                                      ldr r2, [r3, #-0x1c]
00361f54  40 10 95 e5                                      ldr r1, [r5, #0x40]
00361f58  48 33 9f e5                                      ldr r3, [pc, #0x348]
00361f5c  07 70 8f e0                                      add r7, pc, r7
00361f60  02 10 84 e7                                      str r1, [r4, r2]
00361f64  00 20 94 e5                                      ldr r2, [r4]
00361f68  44 10 95 e5                                      ldr r1, [r5, #0x44]
00361f6c  03 30 97 e7                                      ldr r3, [r7, r3]
00361f70  0c 20 12 e5                                      ldr r2, [r2, #-0xc]
00361f74  0c b0 8d e2                                      add fp, sp, #0xc
00361f78  0b 00 a0 e1                                      mov r0, fp
00361f7c  02 10 84 e7                                      str r1, [r4, r2]
00361f80  80 61 84 e5                                      str r6, [r4, #0x180]
00361f84  84 61 84 e5                                      str r6, [r4, #0x184]
00361f88  88 61 84 e5                                      str r6, [r4, #0x188]
00361f8c  8c 61 84 e5                                      str r6, [r4, #0x18c]
00361f90  90 61 84 e5                                      str r6, [r4, #0x190]
00361f94  94 61 84 e5                                      str r6, [r4, #0x194]
00361f98  98 61 84 e5                                      str r6, [r4, #0x198]
00361f9c  9c 61 84 e5                                      str r6, [r4, #0x19c]
00361fa0  a0 81 84 e5                                      str r8, [r4, #0x1a0]
00361fa4  00 23 9f e5                                      ldr r2, [pc, #0x300]
00361fa8  00 13 9f e5                                      ldr r1, [pc, #0x300]
00361fac  10 30 93 e5                                      ldr r3, [r3, #0x10]
00361fb0  02 20 97 e7                                      ldr r2, [r7, r2]
00361fb4  01 10 8f e0                                      add r1, pc, r1
00361fb8  10 50 93 e5                                      ldr r5, [r3, #0x10]
00361fbc  a6 b4 0a eb                                      bl #0x60f25c
00361fc0  ec 32 9f e5                                      ldr r3, [pc, #0x2ec]
00361fc4  34 90 8d e2                                      add sb, sp, #0x34
00361fc8  05 20 a0 e1                                      mov r2, r5
00361fcc  0b 10 a0 e1                                      mov r1, fp
00361fd0  03 30 8f e0                                      add r3, pc, r3
00361fd4  09 00 a0 e1                                      mov r0, sb
00361fd8  00 60 8d e5                                      str r6, [sp]
00361fdc  4a e4 0a eb                                      bl #0x61b10c
00361fe0  34 31 94 e5                                      ldr r3, [r4, #0x134]
00361fe4  30 70 8d e2                                      add r7, sp, #0x30
00361fe8  03 00 a0 e1                                      mov r0, r3
00361fec  00 30 93 e5                                      ldr r3, [r3]
00361ff0  0f e0 a0 e1                                      mov lr, pc
00361ff4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00361ff8  b8 22 9f e5                                      ldr r2, [pc, #0x2b8]
00361ffc  09 10 a0 e1                                      mov r1, sb
00362000  06 30 a0 e1                                      mov r3, r6
00362004  02 20 8f e0                                      add r2, pc, r2
00362008  00 50 a0 e1                                      mov r5, r0
0036200c  07 00 a0 e1                                      mov r0, r7
00362010  22 a8 09 eb                                      bl #0x5cc0a0
00362014  30 30 9d e5                                      ldr r3, [sp, #0x30]
00362018  38 00 8d e2                                      add r0, sp, #0x38
0036201c  06 00 53 e1                                      cmp r3, r6
00362020  18 30 8d e5                                      str r3, [sp, #0x18]
00362024  00 20 93 15                                      ldrne r2, [r3]
00362028  01 20 82 12                                      addne r2, r2, #1
0036202c  00 20 83 15                                      strne r2, [r3]
00362030  18 30 9d 15                                      ldrne r3, [sp, #0x18]
00362034  98 21 94 e5                                      ldr r2, [r4, #0x198]
00362038  98 31 84 e5                                      str r3, [r4, #0x198]
0036203c  20 20 20 e5                                      str r2, [r0, #-0x20]!
00362040  e8 ba fe eb                                      bl #0x310be8
00362044  07 00 a0 e1                                      mov r0, r7
00362048  e6 ba fe eb                                      bl #0x310be8
0036204c  98 31 94 e5                                      ldr r3, [r4, #0x198]
00362050  00 20 a0 e3                                      mov r2, #0
00362054  2c 00 8d e2                                      add r0, sp, #0x2c
00362058  08 20 c3 e5                                      strb r2, [r3, #8]
0036205c  98 11 94 e5                                      ldr r1, [r4, #0x198]
00362060  04 10 81 e2                                      add r1, r1, #4
00362064  b4 f4 09 eb                                      bl #0x5df33c
00362068  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
0036206c  00 00 53 e3                                      cmp r3, #0
00362070  00 20 93 15                                      ldrne r2, [r3]
00362074  01 20 82 12                                      addne r2, r2, #1
00362078  00 20 83 15                                      strne r2, [r3]
0036207c  9c 61 94 e5                                      ldr r6, [r4, #0x19c]
00362080  9c 31 84 e5                                      str r3, [r4, #0x19c]
00362084  00 00 56 e3                                      cmp r6, #0
00362088  04 00 00 0a                                      beq #0x3620a0
0036208c  00 30 96 e5                                      ldr r3, [r6]
00362090  01 30 43 e2                                      sub r3, r3, #1
00362094  00 00 53 e3                                      cmp r3, #0
00362098  00 30 86 e5                                      str r3, [r6]
0036209c  7b 00 00 0a                                      beq #0x362290
003620a0  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
003620a4  00 00 56 e3                                      cmp r6, #0
003620a8  04 00 00 0a                                      beq #0x3620c0
003620ac  00 30 96 e5                                      ldr r3, [r6]
003620b0  01 30 43 e2                                      sub r3, r3, #1
003620b4  00 00 53 e3                                      cmp r3, #0
003620b8  00 30 86 e5                                      str r3, [r6]
003620bc  6e 00 00 0a                                      beq #0x36227c
003620c0  38 70 8d e2                                      add r7, sp, #0x38
003620c4  00 60 a0 e3                                      mov r6, #0
003620c8  10 60 27 e5                                      str r6, [r7, #-0x10]!
003620cc  05 10 a0 e1                                      mov r1, r5
003620d0  07 20 a0 e1                                      mov r2, r7
003620d4  06 0d 84 e2                                      add r0, r4, #0x180
003620d8  ef f6 ff eb                                      bl #0x35fc9c
003620dc  07 00 a0 e1                                      mov r0, r7
003620e0  c0 ba fe eb                                      bl #0x310be8
003620e4  06 00 55 e1                                      cmp r5, r6
003620e8  1b 00 00 0a                                      beq #0x36215c
003620ec  24 80 8d e2                                      add r8, sp, #0x24
003620f0  14 a0 8d e2                                      add sl, sp, #0x14
003620f4  34 31 94 e5                                      ldr r3, [r4, #0x134]
003620f8  06 20 a0 e1                                      mov r2, r6
003620fc  08 00 a0 e1                                      mov r0, r8
00362100  03 10 a0 e1                                      mov r1, r3
00362104  00 30 93 e5                                      ldr r3, [r3]
00362108  80 71 94 e5                                      ldr r7, [r4, #0x180]
0036210c  0f e0 a0 e1                                      mov lr, pc
00362110  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00362114  24 10 9d e5                                      ldr r1, [sp, #0x24]
00362118  06 31 a0 e1                                      lsl r3, r6, #2
0036211c  0a 00 a0 e1                                      mov r0, sl
00362120  14 10 8d e5                                      str r1, [sp, #0x14]
00362124  00 00 51 e3                                      cmp r1, #0
00362128  00 20 91 15                                      ldrne r2, [r1]
0036212c  01 60 86 e2                                      add r6, r6, #1
00362130  01 20 82 12                                      addne r2, r2, #1
00362134  00 20 81 15                                      strne r2, [r1]
00362138  14 10 9d 15                                      ldrne r1, [sp, #0x14]
0036213c  03 20 97 e7                                      ldr r2, [r7, r3]
00362140  14 20 8d e5                                      str r2, [sp, #0x14]
00362144  03 10 87 e7                                      str r1, [r7, r3]
00362148  a6 ba fe eb                                      bl #0x310be8
0036214c  08 00 a0 e1                                      mov r0, r8
00362150  a4 ba fe eb                                      bl #0x310be8
00362154  05 00 56 e1                                      cmp r6, r5
00362158  e5 ff ff 1a                                      bne #0x3620f4
0036215c  38 20 8d e2                                      add r2, sp, #0x38
00362160  00 30 a0 e3                                      mov r3, #0
00362164  18 30 22 e5                                      str r3, [r2, #-0x18]!
00362168  63 0f 84 e2                                      add r0, r4, #0x18c
0036216c  05 10 a0 e1                                      mov r1, r5
00362170  34 fc ff eb                                      bl #0x361248
00362174  20 60 9d e5                                      ldr r6, [sp, #0x20]
00362178  00 00 56 e3                                      cmp r6, #0
0036217c  04 00 00 0a                                      beq #0x362194
00362180  00 30 96 e5                                      ldr r3, [r6]
00362184  01 30 43 e2                                      sub r3, r3, #1
00362188  00 00 53 e3                                      cmp r3, #0
0036218c  00 30 86 e5                                      str r3, [r6]
00362190  34 00 00 0a                                      beq #0x362268
00362194  00 00 55 e3                                      cmp r5, #0
00362198  2b 00 00 0a                                      beq #0x36224c
0036219c  00 60 a0 e3                                      mov r6, #0
003621a0  1c 80 8d e2                                      add r8, sp, #0x1c
003621a4  34 31 94 e5                                      ldr r3, [r4, #0x134]
003621a8  06 20 a0 e1                                      mov r2, r6
003621ac  08 00 a0 e1                                      mov r0, r8
003621b0  03 10 a0 e1                                      mov r1, r3
003621b4  00 30 93 e5                                      ldr r3, [r3]
003621b8  8c 71 94 e5                                      ldr r7, [r4, #0x18c]
003621bc  0f e0 a0 e1                                      mov lr, pc
003621c0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003621c4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
003621c8  06 21 a0 e1                                      lsl r2, r6, #2
003621cc  01 60 86 e2                                      add r6, r6, #1
003621d0  00 00 53 e3                                      cmp r3, #0
003621d4  00 10 93 15                                      ldrne r1, [r3]
003621d8  01 10 81 12                                      addne r1, r1, #1
003621dc  00 10 83 15                                      strne r1, [r3]
003621e0  02 a0 97 e7                                      ldr sl, [r7, r2]
003621e4  02 30 87 e7                                      str r3, [r7, r2]
003621e8  00 00 5a e3                                      cmp sl, #0
003621ec  08 00 00 0a                                      beq #0x362214
003621f0  00 30 9a e5                                      ldr r3, [sl]
003621f4  01 30 43 e2                                      sub r3, r3, #1
003621f8  00 00 53 e3                                      cmp r3, #0
003621fc  00 30 8a e5                                      str r3, [sl]
00362200  03 00 00 1a                                      bne #0x362214
00362204  0a 00 a0 e1                                      mov r0, sl
00362208  51 f5 09 eb                                      bl #0x5df754
0036220c  0a 00 a0 e1                                      mov r0, sl
00362210  8a b8 fe eb                                      bl #0x310440
00362214  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
00362218  00 00 57 e3                                      cmp r7, #0
0036221c  08 00 00 0a                                      beq #0x362244
00362220  00 30 97 e5                                      ldr r3, [r7]
00362224  01 30 43 e2                                      sub r3, r3, #1
00362228  00 00 53 e3                                      cmp r3, #0
0036222c  00 30 87 e5                                      str r3, [r7]
00362230  03 00 00 1a                                      bne #0x362244
00362234  07 00 a0 e1                                      mov r0, r7
00362238  45 f5 09 eb                                      bl #0x5df754
0036223c  07 00 a0 e1                                      mov r0, r7
00362240  7e b8 fe eb                                      bl #0x310440
00362244  05 00 56 e1                                      cmp r6, r5
00362248  d5 ff ff 1a                                      bne #0x3621a4
0036224c  09 00 a0 e1                                      mov r0, sb
00362250  18 c0 ff eb                                      bl #0x3522b8
00362254  0b 00 a0 e1                                      mov r0, fp
00362258  85 dc 0a eb                                      bl #0x619474
0036225c  04 00 a0 e1                                      mov r0, r4
00362260  3c d0 8d e2                                      add sp, sp, #0x3c
00362264  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00362268  06 00 a0 e1                                      mov r0, r6
0036226c  38 f5 09 eb                                      bl #0x5df754
00362270  06 00 a0 e1                                      mov r0, r6
00362274  71 b8 fe eb                                      bl #0x310440
00362278  c5 ff ff ea                                      b #0x362194
0036227c  06 00 a0 e1                                      mov r0, r6
00362280  33 f5 09 eb                                      bl #0x5df754
00362284  06 00 a0 e1                                      mov r0, r6
00362288  6c b8 fe eb                                      bl #0x310440
0036228c  8b ff ff ea                                      b #0x3620c0
00362290  06 00 a0 e1                                      mov r0, r6
00362294  2e f5 09 eb                                      bl #0x5df754
00362298  06 00 a0 e1                                      mov r0, r6
0036229c  67 b8 fe eb                                      bl #0x310440
003622a0  7e ff ff ea                                      b #0x3620a0
; mapping-symbol data/literal pool
003622a4  34 2b 63 00 f4 37 00 00 10 47 00 00 64 ed 55 00  .byte 0x34, 0x2b, 0x63, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00, 0x64, 0xed, 0x55, 0x00
003622b4  68 ed 55 00 6c ed 55 00                          .byte 0x68, 0xed, 0x55, 0x00, 0x6c, 0xed, 0x55, 0x00

; FUNCTION 0x003622bc, declared_size=16, range_size=16, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZTv0_n24_N26ShadowSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
003622bc  00 30 90 e5                                      ldr r3, [r0]
003622c0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
003622c4  03 00 80 e0                                      add r0, r0, r3
003622c8  64 fa ff ea                                      b #0x360c60

; FUNCTION 0x003622cc, declared_size=16, range_size=16, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZTv0_n12_N26ShadowSkinnedMeshSceneNodeD0Ev
; demangled: virtual thunk to ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
003622cc  00 30 90 e5                                      ldr r3, [r0]
003622d0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003622d4  03 00 80 e0                                      add r0, r0, r3
003622d8  60 fa ff ea                                      b #0x360c60

; FUNCTION 0x003622dc, declared_size=16, range_size=16, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZTv0_n24_N26ShadowSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
003622dc  00 30 90 e5                                      ldr r3, [r0]
003622e0  18 30 13 e5                                      ldr r3, [r3, #-0x18]
003622e4  03 00 80 e0                                      add r0, r0, r3
003622e8  23 fa ff ea                                      b #0x360b7c

; FUNCTION 0x003622ec, declared_size=16, range_size=16, mode=arm
; class-group: ShadowSkinnedMeshSceneNode
; alias: _ZTv0_n12_N26ShadowSkinnedMeshSceneNodeD1Ev
; demangled: virtual thunk to ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode()
; decoder-mode: arm
003622ec  00 30 90 e5                                      ldr r3, [r0]
003622f0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
003622f4  03 00 80 e0                                      add r0, r0, r3
003622f8  1f fa ff ea                                      b #0x360b7c
