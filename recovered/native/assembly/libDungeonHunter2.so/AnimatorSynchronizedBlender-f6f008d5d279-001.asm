; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00367b68, declared_size=4, range_size=4, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender7_CBAnimEPN6glitch5scene19ITimelineControllerEPv
; demangled: AnimatorSynchronizedBlender::_CBAnim(glitch::scene::ITimelineController*, void*)
; decoder-mode: arm
00367b68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00367b6c, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZNK27AnimatorSynchronizedBlender7getTypeEv
; demangled: AnimatorSynchronizedBlender::getType() const
; decoder-mode: arm
00367b6c  0e 00 a0 e3                                      mov r0, #0xe
00367b70  1e ff 2f e1                                      bx lr

; FUNCTION 0x00367b74, declared_size=196, range_size=196, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender12SetCallbacksEPFvPN6glitch5scene19ITimelineControllerEPvES4_PFvRKNS0_7collada15STriggeredEventES4_ES4_
; demangled: AnimatorSynchronizedBlender::SetCallbacks(void (*)(glitch::scene::ITimelineController*, void*), void*, void (*)(glitch::collada::STriggeredEvent const&, void*), void*)
; decoder-mode: arm
00367b74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00367b78  00 40 a0 e1                                      mov r4, r0
00367b7c  34 60 94 e5                                      ldr r6, [r4, #0x34]
00367b80  30 00 90 e5                                      ldr r0, [r0, #0x30]
00367b84  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
00367b88  0c d0 4d e2                                      sub sp, sp, #0xc
00367b8c  06 60 60 e0                                      rsb r6, r0, r6
00367b90  46 61 b0 e1                                      asrs r6, r6, #2
00367b94  05 50 8f e0                                      add r5, pc, r5
00367b98  01 70 a0 e1                                      mov r7, r1
00367b9c  02 80 a0 e1                                      mov r8, r2
00367ba0  03 90 a0 e1                                      mov sb, r3
00367ba4  30 b0 9d e5                                      ldr fp, [sp, #0x30]
00367ba8  1c 00 00 0a                                      beq #0x367c20
00367bac  80 20 9f e5                                      ldr r2, [pc, #0x80]
00367bb0  00 a0 a0 e3                                      mov sl, #0
00367bb4  04 20 8d e5                                      str r2, [sp, #4]
00367bb8  00 00 00 ea                                      b #0x367bc0
00367bbc  30 00 94 e5                                      ldr r0, [r4, #0x30]
00367bc0  0a 31 90 e7                                      ldr r3, [r0, sl, lsl #2]
00367bc4  0a 11 a0 e1                                      lsl r1, sl, #2
00367bc8  01 a0 8a e2                                      add sl, sl, #1
00367bcc  04 30 93 e5                                      ldr r3, [r3, #4]
00367bd0  18 20 93 e5                                      ldr r2, [r3, #0x18]
00367bd4  1c 90 83 e5                                      str sb, [r3, #0x1c]
00367bd8  20 b0 83 e5                                      str fp, [r3, #0x20]
00367bdc  00 00 52 e3                                      cmp r2, #0
00367be0  0c b0 82 15                                      strne fp, [r2, #0xc]
00367be4  08 90 82 15                                      strne sb, [r2, #8]
00367be8  30 30 94 e5                                      ldr r3, [r4, #0x30]
00367bec  01 30 93 e7                                      ldr r3, [r3, r1]
00367bf0  04 30 93 e5                                      ldr r3, [r3, #4]
00367bf4  03 00 a0 e1                                      mov r0, r3
00367bf8  00 30 93 e5                                      ldr r3, [r3]
00367bfc  0f e0 a0 e1                                      mov lr, pc
00367c00  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00367c04  00 00 50 e3                                      cmp r0, #0
00367c08  04 20 9d 15                                      ldrne r2, [sp, #4]
00367c0c  0c 40 80 15                                      strne r4, [r0, #0xc]
00367c10  02 30 95 17                                      ldrne r3, [r5, r2]
00367c14  08 30 80 15                                      strne r3, [r0, #8]
00367c18  06 00 5a e1                                      cmp sl, r6
00367c1c  e6 ff ff 1a                                      bne #0x367bbc
00367c20  d4 80 84 e5                                      str r8, [r4, #0xd4]
00367c24  d0 70 84 e5                                      str r7, [r4, #0xd0]
00367c28  0c d0 8d e2                                      add sp, sp, #0xc
00367c2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00367c30  fc ce 62 00 24 0b 00 00                          .byte 0xfc, 0xce, 0x62, 0x00, 0x24, 0x0b, 0x00, 0x00

; FUNCTION 0x00367c38, declared_size=108, range_size=108, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender8SetScaleEf
; demangled: AnimatorSynchronizedBlender::SetScale(float)
; decoder-mode: arm
00367c38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00367c3c  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367c40  34 60 90 e5                                      ldr r6, [r0, #0x34]
00367c44  00 50 a0 e1                                      mov r5, r0
00367c48  01 70 a0 e1                                      mov r7, r1
00367c4c  06 60 63 e0                                      rsb r6, r3, r6
00367c50  46 61 b0 e1                                      asrs r6, r6, #2
00367c54  11 00 00 0a                                      beq #0x367ca0
00367c58  00 40 a0 e3                                      mov r4, #0
00367c5c  00 00 00 ea                                      b #0x367c64
00367c60  30 30 95 e5                                      ldr r3, [r5, #0x30]
00367c64  04 31 93 e7                                      ldr r3, [r3, r4, lsl #2]
00367c68  01 40 84 e2                                      add r4, r4, #1
00367c6c  04 30 93 e5                                      ldr r3, [r3, #4]
00367c70  03 00 a0 e1                                      mov r0, r3
00367c74  00 30 93 e5                                      ldr r3, [r3]
00367c78  0f e0 a0 e1                                      mov lr, pc
00367c7c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00367c80  00 30 50 e2                                      subs r3, r0, #0
00367c84  07 10 a0 e1                                      mov r1, r7
00367c88  02 00 00 0a                                      beq #0x367c98
00367c8c  00 30 93 e5                                      ldr r3, [r3]
00367c90  0f e0 a0 e1                                      mov lr, pc
00367c94  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00367c98  06 00 54 e1                                      cmp r4, r6
00367c9c  ef ff ff 1a                                      bne #0x367c60
00367ca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00367ca4, declared_size=136, range_size=136, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender9BlendPostEv
; demangled: AnimatorSynchronizedBlender::BlendPost()
; decoder-mode: arm
00367ca4  70 40 2d e9                                      push {r4, r5, r6, lr}
00367ca8  b4 20 90 e5                                      ldr r2, [r0, #0xb4]
00367cac  30 30 90 e5                                      ldr r3, [r0, #0x30]
00367cb0  00 40 a0 e1                                      mov r4, r0
00367cb4  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00367cb8  04 30 93 e5                                      ldr r3, [r3, #4]
00367cbc  03 00 a0 e1                                      mov r0, r3
00367cc0  00 30 93 e5                                      ldr r3, [r3]
00367cc4  0f e0 a0 e1                                      mov lr, pc
00367cc8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00367ccc  00 50 50 e2                                      subs r5, r0, #0
00367cd0  0f 00 00 0a                                      beq #0x367d14
00367cd4  00 30 95 e5                                      ldr r3, [r5]
00367cd8  0f e0 a0 e1                                      mov lr, pc
00367cdc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00367ce0  00 10 a0 e1                                      mov r1, r0
00367ce4  cc 00 94 e5                                      ldr r0, [r4, #0xcc]
00367ce8  00 00 51 e1                                      cmp r1, r0
00367cec  0b 00 00 da                                      ble #0x367d20
00367cf0  00 30 95 e5                                      ldr r3, [r5]
00367cf4  05 00 a0 e1                                      mov r0, r5
00367cf8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00367cfc  0f e0 a0 e1                                      mov lr, pc
00367d00  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00367d04  cc 10 94 e5                                      ldr r1, [r4, #0xcc]
00367d08  01 10 80 e0                                      add r1, r0, r1
00367d0c  05 00 a0 e1                                      mov r0, r5
00367d10  36 ff 2f e1                                      blx r6
00367d14  00 30 a0 e3                                      mov r3, #0
00367d18  cc 30 84 e5                                      str r3, [r4, #0xcc]
00367d1c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00367d20  f7 9a fe eb                                      bl #0x30e904
00367d24  cc 10 84 e5                                      str r1, [r4, #0xcc]
00367d28  f0 ff ff ea                                      b #0x367cf0

; FUNCTION 0x0036820c, declared_size=432, range_size=432, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender11animateNodeEPN6glitch5scene10ISceneNodeEj
; demangled: AnimatorSynchronizedBlender::animateNode(glitch::scene::ISceneNode*, unsigned int)
; decoder-mode: arm
0036820c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00368210  00 40 a0 e1                                      mov r4, r0
00368214  c0 00 90 e5                                      ldr r0, [r0, #0xc0]
00368218  c8 60 94 e5                                      ldr r6, [r4, #0xc8]
0036821c  02 50 a0 e1                                      mov r5, r2
00368220  00 00 50 e3                                      cmp r0, #0
00368224  02 60 66 e0                                      rsb r6, r6, r2
00368228  1f 00 00 ba                                      blt #0x3682ac
0036822c  00 00 66 e0                                      rsb r0, r6, r0
00368230  00 00 50 e3                                      cmp r0, #0
00368234  c0 00 84 e5                                      str r0, [r4, #0xc0]
00368238  45 00 00 da                                      ble #0x368354
0036823c  c8 99 fe eb                                      bl #0x30e964
00368240  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00368244  c8 9a fe eb                                      bl #0x30ed6c
00368248  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
0036824c  b8 a0 94 e5                                      ldr sl, [r4, #0xb8]
00368250  00 70 a0 e1                                      mov r7, r0
00368254  0a 11 98 e7                                      ldr r1, [r8, sl, lsl #2]
00368258  4b 97 fe eb                                      bl #0x30df8c
0036825c  00 00 50 e3                                      cmp r0, #0
00368260  01 30 a0 03                                      moveq r3, #1
00368264  b1 30 c4 05                                      strbeq r3, [r4, #0xb1]
00368268  00 30 a0 03                                      moveq r3, #0
0036826c  b2 30 c4 05                                      strbeq r3, [r4, #0xb2]
00368270  07 10 a0 e1                                      mov r1, r7
00368274  0a 71 88 e7                                      str r7, [r8, sl, lsl #2]
00368278  fe 05 a0 e3                                      mov r0, #0x3f800000
0036827c  4a 98 fe eb                                      bl #0x30e3ac
00368280  b4 80 94 e5                                      ldr r8, [r4, #0xb4]
00368284  3c 70 94 e5                                      ldr r7, [r4, #0x3c]
00368288  00 a0 a0 e1                                      mov sl, r0
0036828c  08 11 97 e7                                      ldr r1, [r7, r8, lsl #2]
00368290  3d 97 fe eb                                      bl #0x30df8c
00368294  00 00 50 e3                                      cmp r0, #0
00368298  01 30 a0 03                                      moveq r3, #1
0036829c  b1 30 c4 05                                      strbeq r3, [r4, #0xb1]
003682a0  00 30 a0 03                                      moveq r3, #0
003682a4  b2 30 c4 05                                      strbeq r3, [r4, #0xb2]
003682a8  08 a1 87 e7                                      str sl, [r7, r8, lsl #2]
003682ac  d0 30 94 e5                                      ldr r3, [r4, #0xd0]
003682b0  00 00 53 e3                                      cmp r3, #0
003682b4  12 00 00 0a                                      beq #0x368304
003682b8  b4 20 94 e5                                      ldr r2, [r4, #0xb4]
003682bc  30 30 94 e5                                      ldr r3, [r4, #0x30]
003682c0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
003682c4  04 30 93 e5                                      ldr r3, [r3, #4]
003682c8  03 00 a0 e1                                      mov r0, r3
003682cc  00 30 93 e5                                      ldr r3, [r3]
003682d0  0f e0 a0 e1                                      mov lr, pc
003682d4  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003682d8  00 70 50 e2                                      subs r7, r0, #0
003682dc  08 00 00 0a                                      beq #0x368304
003682e0  04 10 97 e5                                      ldr r1, [r7, #4]
003682e4  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
003682e8  00 30 97 e5                                      ldr r3, [r7]
003682ec  02 20 81 e0                                      add r2, r1, r2
003682f0  06 60 82 e0                                      add r6, r2, r6
003682f4  0f e0 a0 e1                                      mov lr, pc
003682f8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003682fc  00 00 56 e1                                      cmp r6, r0
00368300  04 00 00 aa                                      bge #0x368318
00368304  d8 00 84 e2                                      add r0, r4, #0xd8
00368308  05 10 a0 e1                                      mov r1, r5
0036830c  ed fe ff eb                                      bl #0x367ec8
00368310  c8 50 84 e5                                      str r5, [r4, #0xc8]
00368314  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00368318  00 30 97 e5                                      ldr r3, [r7]
0036831c  07 00 a0 e1                                      mov r0, r7
00368320  0f e0 a0 e1                                      mov lr, pc
00368324  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00368328  06 60 60 e0                                      rsb r6, r0, r6
0036832c  05 10 a0 e1                                      mov r1, r5
00368330  d8 00 84 e2                                      add r0, r4, #0xd8
00368334  cc 60 84 e5                                      str r6, [r4, #0xcc]
00368338  e2 fe ff eb                                      bl #0x367ec8
0036833c  c8 50 84 e5                                      str r5, [r4, #0xc8]
00368340  07 00 a0 e1                                      mov r0, r7
00368344  d4 10 94 e5                                      ldr r1, [r4, #0xd4]
00368348  0f e0 a0 e1                                      mov lr, pc
0036834c  d0 f0 94 e5                                      ldr pc, [r4, #0xd0]
00368350  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00368354  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
00368358  b8 70 94 e5                                      ldr r7, [r4, #0xb8]
0036835c  00 10 a0 e3                                      mov r1, #0
00368360  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
00368364  07 71 83 e0                                      add r7, r3, r7, lsl #2
00368368  07 97 fe eb                                      bl #0x30df8c
0036836c  00 00 50 e3                                      cmp r0, #0
00368370  01 30 a0 03                                      moveq r3, #1
00368374  b1 30 c4 05                                      strbeq r3, [r4, #0xb1]
00368378  00 30 a0 03                                      moveq r3, #0
0036837c  b2 30 c4 05                                      strbeq r3, [r4, #0xb2]
00368380  00 30 a0 e3                                      mov r3, #0
00368384  00 30 87 e5                                      str r3, [r7]
00368388  b4 80 94 e5                                      ldr r8, [r4, #0xb4]
0036838c  3c 70 94 e5                                      ldr r7, [r4, #0x3c]
00368390  fe 15 a0 e3                                      mov r1, #0x3f800000
00368394  08 01 97 e7                                      ldr r0, [r7, r8, lsl #2]
00368398  fb 96 fe eb                                      bl #0x30df8c
0036839c  00 00 50 e3                                      cmp r0, #0
003683a0  01 30 a0 03                                      moveq r3, #1
003683a4  b1 30 c4 05                                      strbeq r3, [r4, #0xb1]
003683a8  00 30 a0 03                                      moveq r3, #0
003683ac  b2 30 c4 05                                      strbeq r3, [r4, #0xb2]
003683b0  fe 35 a0 e3                                      mov r3, #0x3f800000
003683b4  08 31 87 e7                                      str r3, [r7, r8, lsl #2]
003683b8  bb ff ff ea                                      b #0x3682ac

; FUNCTION 0x003684d8, declared_size=244, range_size=244, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender5BlendEi
; demangled: AnimatorSynchronizedBlender::Blend(int)
; decoder-mode: arm
003684d8  70 40 2d e9                                      push {r4, r5, r6, lr}
003684dc  34 50 90 e5                                      ldr r5, [r0, #0x34]
003684e0  30 20 90 e5                                      ldr r2, [r0, #0x30]
003684e4  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003684e8  08 d0 4d e2                                      sub sp, sp, #8
003684ec  05 50 62 e0                                      rsb r5, r2, r5
003684f0  45 51 a0 e1                                      asr r5, r5, #2
003684f4  02 00 55 e3                                      cmp r5, #2
003684f8  00 40 a0 e1                                      mov r4, r0
003684fc  01 60 a0 e1                                      mov r6, r1
00368500  03 30 8f e0                                      add r3, pc, r3
00368504  08 00 00 0a                                      beq #0x36852c
00368508  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
0036850c  02 20 93 e7                                      ldr r2, [r3, r2]
00368510  00 20 92 e5                                      ldr r2, [r2]
00368514  02 00 52 e3                                      cmp r2, #2
00368518  00 30 a0 03                                      moveq r3, #0
0036851c  00 30 83 05                                      streq r3, [r3]
00368520  01 00 00 0a                                      beq #0x36852c
00368524  01 00 52 e3                                      cmp r2, #1
00368528  14 00 00 0a                                      beq #0x368580
0036852c  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
00368530  05 10 a0 e1                                      mov r1, r5
00368534  b8 00 84 e5                                      str r0, [r4, #0xb8]
00368538  01 00 80 e2                                      add r0, r0, #1
0036853c  7a 99 fe eb                                      bl #0x30eb2c
00368540  d8 00 84 e2                                      add r0, r4, #0xd8
00368544  b4 10 84 e5                                      str r1, [r4, #0xb4]
00368548  9b ff ff eb                                      bl #0x3683bc
0036854c  bc 00 94 e5                                      ldr r0, [r4, #0xbc]
00368550  00 00 50 e3                                      cmp r0, #0
00368554  c0 00 84 e5                                      str r0, [r4, #0xc0]
00368558  04 00 00 da                                      ble #0x368570
0036855c  00 99 fe eb                                      bl #0x30e964
00368560  00 10 a0 e1                                      mov r1, r0
00368564  fe 05 a0 e3                                      mov r0, #0x3f800000
00368568  c9 99 fe eb                                      bl #0x30ec94
0036856c  c4 00 84 e5                                      str r0, [r4, #0xc4]
00368570  c6 6f c6 e1                                      bic r6, r6, r6, asr #31
00368574  bc 60 84 e5                                      str r6, [r4, #0xbc]
00368578  08 d0 8d e2                                      add sp, sp, #8
0036857c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00368580  34 00 9f e5                                      ldr r0, [pc, #0x34]
00368584  34 10 9f e5                                      ldr r1, [pc, #0x34]
00368588  34 20 9f e5                                      ldr r2, [pc, #0x34]
0036858c  00 00 93 e7                                      ldr r0, [r3, r0]
00368590  30 30 9f e5                                      ldr r3, [pc, #0x30]
00368594  59 c0 a0 e3                                      mov ip, #0x59
00368598  01 10 8f e0                                      add r1, pc, r1
0036859c  02 20 8f e0                                      add r2, pc, r2
003685a0  03 30 8f e0                                      add r3, pc, r3
003685a4  a8 00 80 e2                                      add r0, r0, #0xa8
003685a8  00 c0 8d e5                                      str ip, [sp]
003685ac  94 96 fe eb                                      bl #0x30e004
003685b0  dd ff ff ea                                      b #0x36852c
; mapping-symbol data/literal pool
003685b4  90 c5 62 00 c0 39 00 00 c0 19 00 00 40 5e 55 00  .byte 0x90, 0xc5, 0x62, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x40, 0x5e, 0x55, 0x00
003685c4  44 88 55 00 f0 88 55 00                          .byte 0x44, 0x88, 0x55, 0x00, 0xf0, 0x88, 0x55, 0x00

; FUNCTION 0x003688f0, declared_size=220, range_size=220, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlenderC1Ev
; demangled: AnimatorSynchronizedBlender::AnimatorSynchronizedBlender()
; decoder-mode: arm
003688f0  70 40 2d e9                                      push {r4, r5, r6, lr}
003688f4  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
003688f8  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003688fc  bc 10 9f e5                                      ldr r1, [pc, #0xbc]
00368900  06 60 8f e0                                      add r6, pc, r6
00368904  03 30 96 e7                                      ldr r3, [r6, r3]
00368908  01 10 96 e7                                      ldr r1, [r6, r1]
0036890c  01 20 a0 e3                                      mov r2, #1
00368910  08 30 83 e2                                      add r3, r3, #8
00368914  2c 21 80 e5                                      str r2, [r0, #0x12c]
00368918  28 31 80 e5                                      str r3, [r0, #0x128]
0036891c  04 10 81 e2                                      add r1, r1, #4
00368920  00 40 a0 e1                                      mov r4, r0
00368924  d3 e4 0b eb                                      bl #0x661c78
00368928  94 30 9f e5                                      ldr r3, [pc, #0x94]
0036892c  00 20 a0 e3                                      mov r2, #0
00368930  00 50 a0 e3                                      mov r5, #0
00368934  03 30 96 e7                                      ldr r3, [r6, r3]
00368938  c4 20 84 e5                                      str r2, [r4, #0xc4]
0036893c  b4 50 84 e5                                      str r5, [r4, #0xb4]
00368940  f0 20 83 e2                                      add r2, r3, #0xf0
00368944  0c 00 83 e2                                      add r0, r3, #0xc
00368948  51 1f 83 e2                                      add r1, r3, #0x144
0036894c  dc 30 83 e2                                      add r3, r3, #0xdc
00368950  00 00 84 e5                                      str r0, [r4]
00368954  28 11 84 e5                                      str r1, [r4, #0x128]
00368958  04 30 84 e5                                      str r3, [r4, #4]
0036895c  24 20 84 e5                                      str r2, [r4, #0x24]
00368960  b8 50 84 e5                                      str r5, [r4, #0xb8]
00368964  bc 50 84 e5                                      str r5, [r4, #0xbc]
00368968  c0 50 84 e5                                      str r5, [r4, #0xc0]
0036896c  c8 50 84 e5                                      str r5, [r4, #0xc8]
00368970  cc 50 84 e5                                      str r5, [r4, #0xcc]
00368974  d0 50 84 e5                                      str r5, [r4, #0xd0]
00368978  d4 50 84 e5                                      str r5, [r4, #0xd4]
0036897c  d8 00 84 e2                                      add r0, r4, #0xd8
00368980  04 10 a0 e1                                      mov r1, r4
00368984  69 ee ff eb                                      bl #0x364330
00368988  38 30 9f e5                                      ldr r3, [pc, #0x38]
0036898c  00 20 e0 e3                                      mvn r2, #0
00368990  20 51 84 e5                                      str r5, [r4, #0x120]
00368994  03 30 96 e7                                      ldr r3, [r6, r3]
00368998  24 21 84 e5                                      str r2, [r4, #0x124]
0036899c  14 41 84 e5                                      str r4, [r4, #0x114]
003689a0  08 30 83 e2                                      add r3, r3, #8
003689a4  d8 30 84 e5                                      str r3, [r4, #0xd8]
003689a8  18 51 84 e5                                      str r5, [r4, #0x118]
003689ac  1c 51 84 e5                                      str r5, [r4, #0x11c]
003689b0  04 00 a0 e1                                      mov r0, r4
003689b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003689b8  90 c1 62 00 44 2b 00 00 70 0b 00 00 6c 48 00 00  .byte 0x90, 0xc1, 0x62, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x70, 0x0b, 0x00, 0x00, 0x6c, 0x48, 0x00, 0x00
003689c8  78 32 00 00                                      .byte 0x78, 0x32, 0x00, 0x00

; FUNCTION 0x003689cc, declared_size=188, range_size=188, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlenderC2Ev
; demangled: AnimatorSynchronizedBlender::AnimatorSynchronizedBlender()
; decoder-mode: arm
003689cc  70 40 2d e9                                      push {r4, r5, r6, lr}
003689d0  01 50 a0 e1                                      mov r5, r1
003689d4  a0 60 9f e5                                      ldr r6, [pc, #0xa0]
003689d8  04 10 81 e2                                      add r1, r1, #4
003689dc  00 40 a0 e1                                      mov r4, r0
003689e0  a4 e4 0b eb                                      bl #0x661c78
003689e4  00 20 95 e5                                      ldr r2, [r5]
003689e8  90 30 9f e5                                      ldr r3, [pc, #0x90]
003689ec  06 60 8f e0                                      add r6, pc, r6
003689f0  00 20 84 e5                                      str r2, [r4]
003689f4  03 30 96 e7                                      ldr r3, [r6, r3]
003689f8  0c 10 12 e5                                      ldr r1, [r2, #-0xc]
003689fc  24 00 95 e5                                      ldr r0, [r5, #0x24]
00368a00  f0 20 83 e2                                      add r2, r3, #0xf0
00368a04  dc 30 83 e2                                      add r3, r3, #0xdc
00368a08  01 00 84 e7                                      str r0, [r4, r1]
00368a0c  00 50 a0 e3                                      mov r5, #0
00368a10  04 30 84 e5                                      str r3, [r4, #4]
00368a14  00 30 a0 e3                                      mov r3, #0
00368a18  24 20 84 e5                                      str r2, [r4, #0x24]
00368a1c  c4 30 84 e5                                      str r3, [r4, #0xc4]
00368a20  b4 50 84 e5                                      str r5, [r4, #0xb4]
00368a24  b8 50 84 e5                                      str r5, [r4, #0xb8]
00368a28  bc 50 84 e5                                      str r5, [r4, #0xbc]
00368a2c  c0 50 84 e5                                      str r5, [r4, #0xc0]
00368a30  c8 50 84 e5                                      str r5, [r4, #0xc8]
00368a34  cc 50 84 e5                                      str r5, [r4, #0xcc]
00368a38  d0 50 84 e5                                      str r5, [r4, #0xd0]
00368a3c  d4 50 84 e5                                      str r5, [r4, #0xd4]
00368a40  d8 00 84 e2                                      add r0, r4, #0xd8
00368a44  04 10 a0 e1                                      mov r1, r4
00368a48  38 ee ff eb                                      bl #0x364330
00368a4c  30 30 9f e5                                      ldr r3, [pc, #0x30]
00368a50  00 20 e0 e3                                      mvn r2, #0
00368a54  20 51 84 e5                                      str r5, [r4, #0x120]
00368a58  03 30 96 e7                                      ldr r3, [r6, r3]
00368a5c  24 21 84 e5                                      str r2, [r4, #0x124]
00368a60  14 41 84 e5                                      str r4, [r4, #0x114]
00368a64  08 30 83 e2                                      add r3, r3, #8
00368a68  d8 30 84 e5                                      str r3, [r4, #0xd8]
00368a6c  18 51 84 e5                                      str r5, [r4, #0x118]
00368a70  1c 51 84 e5                                      str r5, [r4, #0x11c]
00368a74  04 00 a0 e1                                      mov r0, r4
00368a78  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00368a7c  a4 c0 62 00 6c 48 00 00 78 32 00 00              .byte 0xa4, 0xc0, 0x62, 0x00, 0x6c, 0x48, 0x00, 0x00, 0x78, 0x32, 0x00, 0x00

; FUNCTION 0x00368ba4, declared_size=64, range_size=64, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlender7compileEPSt6vectorIhN6glitch4core10SAllocatorIhLNS1_6memory13E_MEMORY_HINTE0EEEE
; demangled: AnimatorSynchronizedBlender::compile(std::vector<unsigned char, glitch::core::SAllocator<unsigned char, (glitch::memory::E_MEMORY_HINT)0> >*)
; decoder-mode: arm
00368ba4  10 40 2d e9                                      push {r4, lr}
00368ba8  00 40 a0 e1                                      mov r4, r0
00368bac  08 d0 4d e2                                      sub sp, sp, #8
00368bb0  07 e6 0b eb                                      bl #0x6623d4
00368bb4  14 11 94 e5                                      ldr r1, [r4, #0x114]
00368bb8  08 20 8d e2                                      add r2, sp, #8
00368bbc  00 00 a0 e3                                      mov r0, #0
00368bc0  3c 30 91 e5                                      ldr r3, [r1, #0x3c]
00368bc4  40 10 91 e5                                      ldr r1, [r1, #0x40]
00368bc8  04 00 22 e5                                      str r0, [r2, #-4]!
00368bcc  46 0f 84 e2                                      add r0, r4, #0x118
00368bd0  01 10 63 e0                                      rsb r1, r3, r1
00368bd4  41 11 a0 e1                                      asr r1, r1, #2
00368bd8  e0 ff ff eb                                      bl #0x368b60
00368bdc  08 d0 8d e2                                      add sp, sp, #8
00368be0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368be4, declared_size=140, range_size=140, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlenderD2Ev
; demangled: AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368be4  70 40 2d e9                                      push {r4, r5, r6, lr}
00368be8  00 30 91 e5                                      ldr r3, [r1]
00368bec  00 40 a0 e1                                      mov r4, r0
00368bf0  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00368bf4  00 30 80 e5                                      str r3, [r0]
00368bf8  0c 00 13 e5                                      ldr r0, [r3, #-0xc]
00368bfc  24 c0 91 e5                                      ldr ip, [r1, #0x24]
00368c00  01 50 a0 e1                                      mov r5, r1
00368c04  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00368c08  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
00368c0c  00 c0 84 e7                                      str ip, [r4, r0]
00368c10  02 20 8f e0                                      add r2, pc, r2
00368c14  03 30 92 e7                                      ldr r3, [r2, r3]
00368c18  01 10 92 e7                                      ldr r1, [r2, r1]
00368c1c  18 01 94 e5                                      ldr r0, [r4, #0x118]
00368c20  f0 c0 83 e2                                      add ip, r3, #0xf0
00368c24  08 10 81 e2                                      add r1, r1, #8
00368c28  dc 30 83 e2                                      add r3, r3, #0xdc
00368c2c  00 00 50 e3                                      cmp r0, #0
00368c30  04 30 84 e5                                      str r3, [r4, #4]
00368c34  24 c0 84 e5                                      str ip, [r4, #0x24]
00368c38  d8 10 84 e5                                      str r1, [r4, #0xd8]
00368c3c  d8 60 84 e2                                      add r6, r4, #0xd8
00368c40  00 00 00 0a                                      beq #0x368c48
00368c44  01 9e fe eb                                      bl #0x310450
00368c48  06 00 a0 e1                                      mov r0, r6
00368c4c  07 ef ff eb                                      bl #0x364870
00368c50  04 00 a0 e1                                      mov r0, r4
00368c54  04 10 85 e2                                      add r1, r5, #4
00368c58  6a e3 0b eb                                      bl #0x661a08
00368c5c  04 00 a0 e1                                      mov r0, r4
00368c60  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00368c64  80 be 62 00 6c 48 00 00 78 32 00 00              .byte 0x80, 0xbe, 0x62, 0x00, 0x6c, 0x48, 0x00, 0x00, 0x78, 0x32, 0x00, 0x00

; FUNCTION 0x00368cc0, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZThn36_N27AnimatorSynchronizedBlenderD1Ev
; demangled: non-virtual thunk to AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368cc0  24 00 40 e2                                      sub r0, r0, #0x24
00368cc4  01 00 00 ea                                      b #0x368cd0

; FUNCTION 0x00368cc8, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZThn4_N27AnimatorSynchronizedBlenderD1Ev
; demangled: non-virtual thunk to AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368cc8  04 00 40 e2                                      sub r0, r0, #4
00368ccc  ff ff ff ea                                      b #0x368cd0

; FUNCTION 0x00368cd0, declared_size=144, range_size=144, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlenderD1Ev
; demangled: AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368cd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00368cd4  74 50 9f e5                                      ldr r5, [pc, #0x74]
00368cd8  74 30 9f e5                                      ldr r3, [pc, #0x74]
00368cdc  74 20 9f e5                                      ldr r2, [pc, #0x74]
00368ce0  05 50 8f e0                                      add r5, pc, r5
00368ce4  00 40 a0 e1                                      mov r4, r0
00368ce8  03 30 95 e7                                      ldr r3, [r5, r3]
00368cec  18 01 90 e5                                      ldr r0, [r0, #0x118]
00368cf0  02 20 95 e7                                      ldr r2, [r5, r2]
00368cf4  f0 10 83 e2                                      add r1, r3, #0xf0
00368cf8  0c e0 83 e2                                      add lr, r3, #0xc
00368cfc  51 cf 83 e2                                      add ip, r3, #0x144
00368d00  08 20 82 e2                                      add r2, r2, #8
00368d04  dc 30 83 e2                                      add r3, r3, #0xdc
00368d08  00 00 50 e3                                      cmp r0, #0
00368d0c  00 e0 84 e5                                      str lr, [r4]
00368d10  28 c1 84 e5                                      str ip, [r4, #0x128]
00368d14  04 30 84 e5                                      str r3, [r4, #4]
00368d18  24 10 84 e5                                      str r1, [r4, #0x24]
00368d1c  d8 20 84 e5                                      str r2, [r4, #0xd8]
00368d20  d8 60 84 e2                                      add r6, r4, #0xd8
00368d24  00 00 00 0a                                      beq #0x368d2c
00368d28  c8 9d fe eb                                      bl #0x310450
00368d2c  06 00 a0 e1                                      mov r0, r6
00368d30  ce ee ff eb                                      bl #0x364870
00368d34  20 10 9f e5                                      ldr r1, [pc, #0x20]
00368d38  04 00 a0 e1                                      mov r0, r4
00368d3c  01 10 95 e7                                      ldr r1, [r5, r1]
00368d40  04 10 81 e2                                      add r1, r1, #4
00368d44  2f e3 0b eb                                      bl #0x661a08
00368d48  04 00 a0 e1                                      mov r0, r4
00368d4c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00368d50  b0 bd 62 00 6c 48 00 00 78 32 00 00 70 0b 00 00  .byte 0xb0, 0xbd, 0x62, 0x00, 0x6c, 0x48, 0x00, 0x00, 0x78, 0x32, 0x00, 0x00, 0x70, 0x0b, 0x00, 0x00

; FUNCTION 0x00368d60, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZThn36_N27AnimatorSynchronizedBlenderD0Ev
; demangled: non-virtual thunk to AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368d60  24 00 40 e2                                      sub r0, r0, #0x24
00368d64  01 00 00 ea                                      b #0x368d70

; FUNCTION 0x00368d68, declared_size=8, range_size=8, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZThn4_N27AnimatorSynchronizedBlenderD0Ev
; demangled: non-virtual thunk to AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368d68  04 00 40 e2                                      sub r0, r0, #4
00368d6c  ff ff ff ea                                      b #0x368d70

; FUNCTION 0x00368d70, declared_size=28, range_size=28, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZN27AnimatorSynchronizedBlenderD0Ev
; demangled: AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368d70  10 40 2d e9                                      push {r4, lr}
00368d74  00 40 a0 e1                                      mov r4, r0
00368d78  d4 ff ff eb                                      bl #0x368cd0
00368d7c  04 00 a0 e1                                      mov r0, r4
00368d80  ae 9d fe eb                                      bl #0x310440
00368d84  04 00 a0 e1                                      mov r0, r4
00368d88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00368d8c, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZTv0_n12_N27AnimatorSynchronizedBlenderD0Ev
; demangled: virtual thunk to AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368d8c  00 30 90 e5                                      ldr r3, [r0]
00368d90  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00368d94  03 00 80 e0                                      add r0, r0, r3
00368d98  f4 ff ff ea                                      b #0x368d70

; FUNCTION 0x00368d9c, declared_size=16, range_size=16, mode=arm
; class-group: AnimatorSynchronizedBlender
; alias: _ZTv0_n12_N27AnimatorSynchronizedBlenderD1Ev
; demangled: virtual thunk to AnimatorSynchronizedBlender::~AnimatorSynchronizedBlender()
; decoder-mode: arm
00368d9c  00 30 90 e5                                      ldr r3, [r0]
00368da0  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00368da4  03 00 80 e0                                      add r0, r0, r3
00368da8  c8 ff ff ea                                      b #0x368cd0
