; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007fa5a8, declared_size=364, range_size=364, mode=arm
; class-group: b2DistanceJointDef
; alias: _ZN18b2DistanceJointDef10InitializeEP6b2BodyS1_RK6b2Vec2S4_
; demangled: b2DistanceJointDef::Initialize(b2Body*, b2Body*, b2Vec2 const&, b2Vec2 const&)
; decoder-mode: arm
007fa5a8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
007fa5ac  00 40 a0 e1                                      mov r4, r0
007fa5b0  0c 20 84 e5                                      str r2, [r4, #0xc]
007fa5b4  08 10 84 e5                                      str r1, [r4, #8]
007fa5b8  00 00 93 e5                                      ldr r0, [r3]
007fa5bc  01 60 a0 e1                                      mov r6, r1
007fa5c0  04 10 91 e5                                      ldr r1, [r1, #4]
007fa5c4  02 50 a0 e1                                      mov r5, r2
007fa5c8  03 70 a0 e1                                      mov r7, r3
007fa5cc  76 4f ec eb                                      bl #0x30e3ac
007fa5d0  08 10 96 e5                                      ldr r1, [r6, #8]
007fa5d4  00 a0 a0 e1                                      mov sl, r0
007fa5d8  04 00 97 e5                                      ldr r0, [r7, #4]
007fa5dc  72 4f ec eb                                      bl #0x30e3ac
007fa5e0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
007fa5e4  00 80 a0 e1                                      mov r8, r0
007fa5e8  0a 00 a0 e1                                      mov r0, sl
007fa5ec  de 51 ec eb                                      bl #0x30ed6c
007fa5f0  10 10 96 e5                                      ldr r1, [r6, #0x10]
007fa5f4  00 90 a0 e1                                      mov sb, r0
007fa5f8  08 00 a0 e1                                      mov r0, r8
007fa5fc  da 51 ec eb                                      bl #0x30ed6c
007fa600  00 10 a0 e1                                      mov r1, r0
007fa604  09 00 a0 e1                                      mov r0, sb
007fa608  65 51 ec eb                                      bl #0x30eba4
007fa60c  14 10 96 e5                                      ldr r1, [r6, #0x14]
007fa610  00 90 a0 e1                                      mov sb, r0
007fa614  0a 00 a0 e1                                      mov r0, sl
007fa618  d3 51 ec eb                                      bl #0x30ed6c
007fa61c  18 10 96 e5                                      ldr r1, [r6, #0x18]
007fa620  00 a0 a0 e1                                      mov sl, r0
007fa624  08 00 a0 e1                                      mov r0, r8
007fa628  cf 51 ec eb                                      bl #0x30ed6c
007fa62c  00 10 a0 e1                                      mov r1, r0
007fa630  0a 00 a0 e1                                      mov r0, sl
007fa634  5a 51 ec eb                                      bl #0x30eba4
007fa638  20 60 9d e5                                      ldr r6, [sp, #0x20]
007fa63c  14 90 84 e5                                      str sb, [r4, #0x14]
007fa640  18 00 84 e5                                      str r0, [r4, #0x18]
007fa644  04 10 95 e5                                      ldr r1, [r5, #4]
007fa648  00 00 96 e5                                      ldr r0, [r6]
007fa64c  56 4f ec eb                                      bl #0x30e3ac
007fa650  08 10 95 e5                                      ldr r1, [r5, #8]
007fa654  00 a0 a0 e1                                      mov sl, r0
007fa658  04 00 96 e5                                      ldr r0, [r6, #4]
007fa65c  52 4f ec eb                                      bl #0x30e3ac
007fa660  0c 10 95 e5                                      ldr r1, [r5, #0xc]
007fa664  00 80 a0 e1                                      mov r8, r0
007fa668  0a 00 a0 e1                                      mov r0, sl
007fa66c  be 51 ec eb                                      bl #0x30ed6c
007fa670  10 10 95 e5                                      ldr r1, [r5, #0x10]
007fa674  00 90 a0 e1                                      mov sb, r0
007fa678  08 00 a0 e1                                      mov r0, r8
007fa67c  ba 51 ec eb                                      bl #0x30ed6c
007fa680  00 10 a0 e1                                      mov r1, r0
007fa684  09 00 a0 e1                                      mov r0, sb
007fa688  45 51 ec eb                                      bl #0x30eba4
007fa68c  14 10 95 e5                                      ldr r1, [r5, #0x14]
007fa690  00 90 a0 e1                                      mov sb, r0
007fa694  0a 00 a0 e1                                      mov r0, sl
007fa698  b3 51 ec eb                                      bl #0x30ed6c
007fa69c  18 10 95 e5                                      ldr r1, [r5, #0x18]
007fa6a0  00 a0 a0 e1                                      mov sl, r0
007fa6a4  08 00 a0 e1                                      mov r0, r8
007fa6a8  af 51 ec eb                                      bl #0x30ed6c
007fa6ac  00 10 a0 e1                                      mov r1, r0
007fa6b0  0a 00 a0 e1                                      mov r0, sl
007fa6b4  3a 51 ec eb                                      bl #0x30eba4
007fa6b8  20 00 84 e5                                      str r0, [r4, #0x20]
007fa6bc  1c 90 84 e5                                      str sb, [r4, #0x1c]
007fa6c0  00 10 97 e5                                      ldr r1, [r7]
007fa6c4  00 00 96 e5                                      ldr r0, [r6]
007fa6c8  37 4f ec eb                                      bl #0x30e3ac
007fa6cc  04 10 97 e5                                      ldr r1, [r7, #4]
007fa6d0  00 50 a0 e1                                      mov r5, r0
007fa6d4  04 00 96 e5                                      ldr r0, [r6, #4]
007fa6d8  33 4f ec eb                                      bl #0x30e3ac
007fa6dc  05 10 a0 e1                                      mov r1, r5
007fa6e0  00 60 a0 e1                                      mov r6, r0
007fa6e4  05 00 a0 e1                                      mov r0, r5
007fa6e8  9f 51 ec eb                                      bl #0x30ed6c
007fa6ec  06 10 a0 e1                                      mov r1, r6
007fa6f0  00 50 a0 e1                                      mov r5, r0
007fa6f4  06 00 a0 e1                                      mov r0, r6
007fa6f8  9b 51 ec eb                                      bl #0x30ed6c
007fa6fc  00 10 a0 e1                                      mov r1, r0
007fa700  05 00 a0 e1                                      mov r0, r5
007fa704  26 51 ec eb                                      bl #0x30eba4
007fa708  85 4e ec eb                                      bl #0x30e124
007fa70c  24 00 84 e5                                      str r0, [r4, #0x24]
007fa710  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
