; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005abc34, declared_size=104, range_size=104, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video
; alias: _ZN6glitch5video20releaseProcessBufferINS0_6detail33SProcessBufferHeapBufferAllocatorEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjRKNS5_INS0_14CVertexStreamsEEET_
; demangled: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video::releaseProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::detail::SProcessBufferHeapBufferAllocator)
; decoder-mode: arm
005abc34  30 40 2d e9                                      push {r4, r5, lr}
005abc38  00 c0 52 e2                                      subs ip, r2, #0
005abc3c  0c d0 4d e2                                      sub sp, sp, #0xc
005abc40  00 40 a0 e1                                      mov r4, r0
005abc44  00 c0 80 05                                      streq ip, [r0]
005abc48  02 00 00 1a                                      bne #0x5abc58
005abc4c  04 00 a0 e1                                      mov r0, r4
005abc50  0c d0 8d e2                                      add sp, sp, #0xc
005abc54  30 80 bd e8                                      pop {r4, r5, pc}
005abc58  04 50 8d e2                                      add r5, sp, #4
005abc5c  05 00 a0 e1                                      mov r0, r5
005abc60  26 c3 04 eb                                      bl #0x6dc900
005abc64  18 00 9d e5                                      ldr r0, [sp, #0x18]
005abc68  05 10 a0 e1                                      mov r1, r5
005abc6c  8d ff ff eb                                      bl #0x5abaa8
005abc70  04 00 9d e5                                      ldr r0, [sp, #4]
005abc74  00 00 50 e3                                      cmp r0, #0
005abc78  00 00 84 e5                                      str r0, [r4]
005abc7c  04 30 90 15                                      ldrne r3, [r0, #4]
005abc80  01 30 83 12                                      addne r3, r3, #1
005abc84  04 30 80 15                                      strne r3, [r0, #4]
005abc88  04 00 9d 15                                      ldrne r0, [sp, #4]
005abc8c  00 00 50 e3                                      cmp r0, #0
005abc90  ed ff ff 0a                                      beq #0x5abc4c
005abc94  3a c6 f5 eb                                      bl #0x31d584
005abc98  eb ff ff ea                                      b #0x5abc4c

; FUNCTION 0x005abc9c, declared_size=108, range_size=108, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video
; alias: _ZN6glitch5video20releaseProcessBufferINS0_6detail19SNewBufferAllocatorINS0_12IVideoDriverEEEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjRKNS7_INS0_14CVertexStreamsEEET_
; demangled: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video::releaseProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver> >(unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>)
; decoder-mode: arm
005abc9c  10 40 2d e9                                      push {r4, lr}
005abca0  00 c0 52 e2                                      subs ip, r2, #0
005abca4  08 d0 4d e2                                      sub sp, sp, #8
005abca8  00 40 a0 e1                                      mov r4, r0
005abcac  00 c0 80 05                                      streq ip, [r0]
005abcb0  02 00 00 1a                                      bne #0x5abcc0
005abcb4  04 00 a0 e1                                      mov r0, r4
005abcb8  08 d0 8d e2                                      add sp, sp, #8
005abcbc  10 80 bd e8                                      pop {r4, pc}
005abcc0  04 00 8d e2                                      add r0, sp, #4
005abcc4  0d c3 04 eb                                      bl #0x6dc900
005abcc8  00 10 a0 e3                                      mov r1, #0
005abccc  01 30 a0 e3                                      mov r3, #1
005abcd0  04 00 9d e5                                      ldr r0, [sp, #4]
005abcd4  01 20 a0 e1                                      mov r2, r1
005abcd8  f5 d7 ff eb                                      bl #0x5a1cb4
005abcdc  04 00 9d e5                                      ldr r0, [sp, #4]
005abce0  00 00 50 e3                                      cmp r0, #0
005abce4  00 00 84 e5                                      str r0, [r4]
005abce8  04 30 90 15                                      ldrne r3, [r0, #4]
005abcec  01 30 83 12                                      addne r3, r3, #1
005abcf0  04 30 80 15                                      strne r3, [r0, #4]
005abcf4  04 00 9d 15                                      ldrne r0, [sp, #4]
005abcf8  00 00 50 e3                                      cmp r0, #0
005abcfc  ec ff ff 0a                                      beq #0x5abcb4
005abd00  1f c6 f5 eb                                      bl #0x31d584
005abd04  ea ff ff ea                                      b #0x5abcb4

; FUNCTION 0x005abd08, declared_size=200, range_size=200, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video
; alias: _ZN6glitch5video21allocateProcessBufferINS0_6detail19SNewBufferAllocatorINS0_12IVideoDriverEEEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjjRKNS7_INS0_14CVertexStreamsEEET_Rt
; demangled: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video::allocateProcessBuffer<glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver> >(unsigned int, unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::detail::SNewBufferAllocator<glitch::video::IVideoDriver>, unsigned short&)
; decoder-mode: arm
005abd08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005abd0c  01 00 52 e1                                      cmp r2, r1
005abd10  00 00 53 13                                      cmpne r3, #0
005abd14  10 d0 4d e2                                      sub sp, sp, #0x10
005abd18  03 70 a0 e1                                      mov r7, r3
005abd1c  00 30 a0 03                                      moveq r3, #0
005abd20  30 60 9d e5                                      ldr r6, [sp, #0x30]
005abd24  38 a0 9d e5                                      ldr sl, [sp, #0x38]
005abd28  01 50 a0 e1                                      mov r5, r1
005abd2c  02 80 a0 e1                                      mov r8, r2
005abd30  00 40 a0 e1                                      mov r4, r0
005abd34  00 30 80 05                                      streq r3, [r0]
005abd38  02 00 00 1a                                      bne #0x5abd48
005abd3c  04 00 a0 e1                                      mov r0, r4
005abd40  10 d0 8d e2                                      add sp, sp, #0x10
005abd44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005abd48  06 10 a0 e1                                      mov r1, r6
005abd4c  07 00 a0 e1                                      mov r0, r7
005abd50  4c c2 04 eb                                      bl #0x6dc688
005abd54  70 00 ff e6                                      uxth r0, r0
005abd58  b0 00 ca e1                                      strh r0, [sl]
005abd5c  08 20 65 e0                                      rsb r2, r5, r8
005abd60  0c 90 8d e2                                      add sb, sp, #0xc
005abd64  92 00 02 e0                                      mul r2, r2, r0
005abd68  34 10 9d e5                                      ldr r1, [sp, #0x34]
005abd6c  09 00 a0 e1                                      mov r0, sb
005abd70  b7 f9 ff eb                                      bl #0x5aa454
005abd74  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005abd78  00 00 50 e3                                      cmp r0, #0
005abd7c  11 00 00 0a                                      beq #0x5abdc8
005abd80  b0 10 da e1                                      ldrh r1, [sl]
005abd84  07 30 a0 e1                                      mov r3, r7
005abd88  09 00 a0 e1                                      mov r0, sb
005abd8c  95 01 02 e0                                      mul r2, r5, r1
005abd90  00 60 8d e5                                      str r6, [sp]
005abd94  00 20 62 e2                                      rsb r2, r2, #0
005abd98  ba c2 04 eb                                      bl #0x6dc888
005abd9c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005abda0  00 00 50 e3                                      cmp r0, #0
005abda4  00 00 84 e5                                      str r0, [r4]
005abda8  04 30 90 15                                      ldrne r3, [r0, #4]
005abdac  01 30 83 12                                      addne r3, r3, #1
005abdb0  04 30 80 15                                      strne r3, [r0, #4]
005abdb4  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
005abdb8  00 00 50 e3                                      cmp r0, #0
005abdbc  de ff ff 0a                                      beq #0x5abd3c
005abdc0  ef c5 f5 eb                                      bl #0x31d584
005abdc4  dc ff ff ea                                      b #0x5abd3c
005abdc8  00 00 84 e5                                      str r0, [r4]
005abdcc  da ff ff ea                                      b #0x5abd3c

; FUNCTION 0x005abdd0, declared_size=204, range_size=204, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video
; alias: _ZN6glitch5video21allocateProcessBufferINS0_6detail21SReuseBufferAllocatorEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjjRKNS5_INS0_14CVertexStreamsEEET_Rt
; demangled: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video::allocateProcessBuffer<glitch::video::detail::SReuseBufferAllocator>(unsigned int, unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::detail::SReuseBufferAllocator, unsigned short&)
; decoder-mode: arm
005abdd0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005abdd4  01 00 52 e1                                      cmp r2, r1
005abdd8  00 00 53 13                                      cmpne r3, #0
005abddc  10 d0 4d e2                                      sub sp, sp, #0x10
005abde0  03 70 a0 e1                                      mov r7, r3
005abde4  00 30 a0 03                                      moveq r3, #0
005abde8  28 60 9d e5                                      ldr r6, [sp, #0x28]
005abdec  30 80 9d e5                                      ldr r8, [sp, #0x30]
005abdf0  01 50 a0 e1                                      mov r5, r1
005abdf4  00 40 a0 e1                                      mov r4, r0
005abdf8  00 30 80 05                                      streq r3, [r0]
005abdfc  02 00 00 1a                                      bne #0x5abe0c
005abe00  04 00 a0 e1                                      mov r0, r4
005abe04  10 d0 8d e2                                      add sp, sp, #0x10
005abe08  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005abe0c  07 00 a0 e1                                      mov r0, r7
005abe10  06 10 a0 e1                                      mov r1, r6
005abe14  1b c2 04 eb                                      bl #0x6dc688
005abe18  b0 00 c8 e1                                      strh r0, [r8]
005abe1c  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
005abe20  00 00 93 e5                                      ldr r0, [r3]
005abe24  00 00 50 e3                                      cmp r0, #0
005abe28  0c 00 8d e5                                      str r0, [sp, #0xc]
005abe2c  17 00 00 0a                                      beq #0x5abe90
005abe30  04 30 90 e5                                      ldr r3, [r0, #4]
005abe34  01 30 83 e2                                      add r3, r3, #1
005abe38  04 30 80 e5                                      str r3, [r0, #4]
005abe3c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005abe40  00 00 50 e3                                      cmp r0, #0
005abe44  11 00 00 0a                                      beq #0x5abe90
005abe48  b0 10 d8 e1                                      ldrh r1, [r8]
005abe4c  07 30 a0 e1                                      mov r3, r7
005abe50  0c 00 8d e2                                      add r0, sp, #0xc
005abe54  95 01 02 e0                                      mul r2, r5, r1
005abe58  00 60 8d e5                                      str r6, [sp]
005abe5c  00 20 62 e2                                      rsb r2, r2, #0
005abe60  88 c2 04 eb                                      bl #0x6dc888
005abe64  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005abe68  00 00 50 e3                                      cmp r0, #0
005abe6c  00 00 84 e5                                      str r0, [r4]
005abe70  04 30 90 15                                      ldrne r3, [r0, #4]
005abe74  01 30 83 12                                      addne r3, r3, #1
005abe78  04 30 80 15                                      strne r3, [r0, #4]
005abe7c  0c 00 9d 15                                      ldrne r0, [sp, #0xc]
005abe80  00 00 50 e3                                      cmp r0, #0
005abe84  dd ff ff 0a                                      beq #0x5abe00
005abe88  bd c5 f5 eb                                      bl #0x31d584
005abe8c  db ff ff ea                                      b #0x5abe00
005abe90  00 30 a0 e3                                      mov r3, #0
005abe94  00 30 84 e5                                      str r3, [r4]
005abe98  f8 ff ff ea                                      b #0x5abe80

; FUNCTION 0x005abe9c, declared_size=268, range_size=268, mode=arm
; class-group: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video
; alias: _ZN6glitch5video21allocateProcessBufferINS0_6detail33SProcessBufferHeapBufferAllocatorEEEN5boost13intrusive_ptrINS0_7IBufferEEEjjjRKNS5_INS0_14CVertexStreamsEEET_Rt
; demangled: boost::intrusive_ptr<glitch::video::IBuffer> glitch::video::allocateProcessBuffer<glitch::video::detail::SProcessBufferHeapBufferAllocator>(unsigned int, unsigned int, unsigned int, boost::intrusive_ptr<glitch::video::CVertexStreams> const&, glitch::video::detail::SProcessBufferHeapBufferAllocator, unsigned short&)
; decoder-mode: arm
005abe9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005abea0  01 00 52 e1                                      cmp r2, r1
005abea4  00 00 53 13                                      cmpne r3, #0
005abea8  1c d0 4d e2                                      sub sp, sp, #0x1c
005abeac  03 50 a0 e1                                      mov r5, r3
005abeb0  00 30 a0 03                                      moveq r3, #0
005abeb4  40 b0 9d e5                                      ldr fp, [sp, #0x40]
005abeb8  44 70 9d e5                                      ldr r7, [sp, #0x44]
005abebc  48 90 9d e5                                      ldr sb, [sp, #0x48]
005abec0  01 40 a0 e1                                      mov r4, r1
005abec4  02 80 a0 e1                                      mov r8, r2
005abec8  00 a0 a0 13                                      movne sl, #0
005abecc  01 a0 a0 03                                      moveq sl, #1
005abed0  00 60 a0 e1                                      mov r6, r0
005abed4  00 30 80 05                                      streq r3, [r0]
005abed8  02 00 00 1a                                      bne #0x5abee8
005abedc  06 00 a0 e1                                      mov r0, r6
005abee0  1c d0 8d e2                                      add sp, sp, #0x1c
005abee4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005abee8  0b 10 a0 e1                                      mov r1, fp
005abeec  05 00 a0 e1                                      mov r0, r5
005abef0  e4 c1 04 eb                                      bl #0x6dc688
005abef4  08 80 64 e0                                      rsb r8, r4, r8
005abef8  70 00 ff e6                                      uxth r0, r0
005abefc  b0 00 c9 e1                                      strh r0, [sb]
005abf00  98 00 08 e0                                      mul r8, r8, r0
005abf04  00 30 97 e5                                      ldr r3, [r7]
005abf08  08 00 a0 e1                                      mov r0, r8
005abf0c  0c 30 8d e5                                      str r3, [sp, #0xc]
005abf10  b7 21 fe eb                                      bl #0x5345f4
005abf14  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005abf18  00 20 a0 e1                                      mov r2, r0
005abf1c  08 10 a0 e1                                      mov r1, r8
005abf20  03 00 a0 e1                                      mov r0, r3
005abf24  0a 30 a0 e1                                      mov r3, sl
005abf28  61 d7 ff eb                                      bl #0x5a1cb4
005abf2c  00 00 97 e5                                      ldr r0, [r7]
005abf30  00 00 50 e3                                      cmp r0, #0
005abf34  14 00 8d e5                                      str r0, [sp, #0x14]
005abf38  17 00 00 0a                                      beq #0x5abf9c
005abf3c  04 30 90 e5                                      ldr r3, [r0, #4]
005abf40  01 30 83 e2                                      add r3, r3, #1
005abf44  04 30 80 e5                                      str r3, [r0, #4]
005abf48  14 00 9d e5                                      ldr r0, [sp, #0x14]
005abf4c  00 00 50 e3                                      cmp r0, #0
005abf50  11 00 00 0a                                      beq #0x5abf9c
005abf54  b0 10 d9 e1                                      ldrh r1, [sb]
005abf58  05 30 a0 e1                                      mov r3, r5
005abf5c  14 00 8d e2                                      add r0, sp, #0x14
005abf60  94 01 02 e0                                      mul r2, r4, r1
005abf64  00 b0 8d e5                                      str fp, [sp]
005abf68  00 20 62 e2                                      rsb r2, r2, #0
005abf6c  45 c2 04 eb                                      bl #0x6dc888
005abf70  14 00 9d e5                                      ldr r0, [sp, #0x14]
005abf74  00 00 50 e3                                      cmp r0, #0
005abf78  00 00 86 e5                                      str r0, [r6]
005abf7c  04 30 90 15                                      ldrne r3, [r0, #4]
005abf80  01 30 83 12                                      addne r3, r3, #1
005abf84  04 30 80 15                                      strne r3, [r0, #4]
005abf88  14 00 9d 15                                      ldrne r0, [sp, #0x14]
005abf8c  00 00 50 e3                                      cmp r0, #0
005abf90  d1 ff ff 0a                                      beq #0x5abedc
005abf94  7a c5 f5 eb                                      bl #0x31d584
005abf98  cf ff ff ea                                      b #0x5abedc
005abf9c  00 30 a0 e3                                      mov r3, #0
005abfa0  00 30 86 e5                                      str r3, [r6]
005abfa4  f8 ff ff ea                                      b #0x5abf8c
