; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a3b38, declared_size=188, range_size=188, mode=arm
; class-group: std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> > >
; alias: _ZNSt6vectorISt4pairIN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEEENS4_16CPrimitiveStreamEESaIS9_EE19_M_clear_after_moveEv
; demangled: std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> > >::_M_clear_after_move()
; decoder-mode: arm
005a3b38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a3b3c  00 70 a0 e1                                      mov r7, r0
005a3b40  00 60 97 e5                                      ldr r6, [r7]
005a3b44  04 00 90 e5                                      ldr r0, [r0, #4]
005a3b48  06 00 50 e1                                      cmp r0, r6
005a3b4c  14 00 00 0a                                      beq #0x5a3ba4
005a3b50  00 40 a0 e1                                      mov r4, r0
005a3b54  18 00 14 e5                                      ldr r0, [r4, #-0x18]
005a3b58  00 00 50 e3                                      cmp r0, #0
005a3b5c  00 00 00 0a                                      beq #0x5a3b64
005a3b60  87 e6 f5 eb                                      bl #0x31d584
005a3b64  1c 50 14 e5                                      ldr r5, [r4, #-0x1c]
005a3b68  1c 40 44 e2                                      sub r4, r4, #0x1c
005a3b6c  00 00 55 e3                                      cmp r5, #0
005a3b70  08 00 00 0a                                      beq #0x5a3b98
005a3b74  00 30 95 e5                                      ldr r3, [r5]
005a3b78  01 30 43 e2                                      sub r3, r3, #1
005a3b7c  00 00 53 e3                                      cmp r3, #0
005a3b80  00 30 85 e5                                      str r3, [r5]
005a3b84  03 00 00 1a                                      bne #0x5a3b98
005a3b88  05 00 a0 e1                                      mov r0, r5
005a3b8c  a2 f3 ff eb                                      bl #0x5a0a1c
005a3b90  05 00 a0 e1                                      mov r0, r5
005a3b94  c5 a9 f5 eb                                      bl #0x30e2b0
005a3b98  04 00 56 e1                                      cmp r6, r4
005a3b9c  ec ff ff 1a                                      bne #0x5a3b54
005a3ba0  00 00 97 e5                                      ldr r0, [r7]
005a3ba4  00 00 50 e3                                      cmp r0, #0
005a3ba8  08 30 97 e5                                      ldr r3, [r7, #8]
005a3bac  0f 00 00 0a                                      beq #0x5a3bf0
005a3bb0  03 30 60 e0                                      rsb r3, r0, r3
005a3bb4  43 31 a0 e1                                      asr r3, r3, #2
005a3bb8  1c 10 a0 e3                                      mov r1, #0x1c
005a3bbc  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a3bc0  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a3bc4  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a3bc8  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a3bcc  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a3bd0  00 30 63 e2                                      rsb r3, r3, #0
005a3bd4  91 03 01 e0                                      mul r1, r1, r3
005a3bd8  80 00 51 e3                                      cmp r1, #0x80
005a3bdc  01 00 00 8a                                      bhi #0x5a3be8
005a3be0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005a3be4  c5 94 05 ea                                      b #0x708f00
005a3be8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005a3bec  af a9 f5 ea                                      b #0x30e2b0
005a3bf0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a3c54, declared_size=188, range_size=188, mode=arm
; class-group: std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> > >
; alias: _ZNSt6vectorISt4pairIN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEEENS4_16CPrimitiveStreamEESaIS9_EED1Ev
; demangled: std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> > >::~vector()
; decoder-mode: arm
005a3c54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a3c58  04 50 90 e5                                      ldr r5, [r0, #4]
005a3c5c  00 70 90 e5                                      ldr r7, [r0]
005a3c60  00 40 a0 e1                                      mov r4, r0
005a3c64  07 00 55 e1                                      cmp r5, r7
005a3c68  12 00 00 0a                                      beq #0x5a3cb8
005a3c6c  18 00 15 e5                                      ldr r0, [r5, #-0x18]
005a3c70  00 00 50 e3                                      cmp r0, #0
005a3c74  00 00 00 0a                                      beq #0x5a3c7c
005a3c78  41 e6 f5 eb                                      bl #0x31d584
005a3c7c  1c 60 15 e5                                      ldr r6, [r5, #-0x1c]
005a3c80  1c 50 45 e2                                      sub r5, r5, #0x1c
005a3c84  00 00 56 e3                                      cmp r6, #0
005a3c88  08 00 00 0a                                      beq #0x5a3cb0
005a3c8c  00 30 96 e5                                      ldr r3, [r6]
005a3c90  01 30 43 e2                                      sub r3, r3, #1
005a3c94  00 00 53 e3                                      cmp r3, #0
005a3c98  00 30 86 e5                                      str r3, [r6]
005a3c9c  03 00 00 1a                                      bne #0x5a3cb0
005a3ca0  06 00 a0 e1                                      mov r0, r6
005a3ca4  5c f3 ff eb                                      bl #0x5a0a1c
005a3ca8  06 00 a0 e1                                      mov r0, r6
005a3cac  7f a9 f5 eb                                      bl #0x30e2b0
005a3cb0  05 00 57 e1                                      cmp r7, r5
005a3cb4  ec ff ff 1a                                      bne #0x5a3c6c
005a3cb8  00 00 94 e5                                      ldr r0, [r4]
005a3cbc  00 00 50 e3                                      cmp r0, #0
005a3cc0  0d 00 00 0a                                      beq #0x5a3cfc
005a3cc4  08 30 94 e5                                      ldr r3, [r4, #8]
005a3cc8  1c 10 a0 e3                                      mov r1, #0x1c
005a3ccc  03 30 60 e0                                      rsb r3, r0, r3
005a3cd0  43 31 a0 e1                                      asr r3, r3, #2
005a3cd4  83 21 83 e0                                      add r2, r3, r3, lsl #3
005a3cd8  02 23 82 e0                                      add r2, r2, r2, lsl #6
005a3cdc  82 21 83 e0                                      add r2, r3, r2, lsl #3
005a3ce0  82 27 82 e0                                      add r2, r2, r2, lsl #15
005a3ce4  82 31 83 e0                                      add r3, r3, r2, lsl #3
005a3ce8  00 30 63 e2                                      rsb r3, r3, #0
005a3cec  91 03 01 e0                                      mul r1, r1, r3
005a3cf0  80 00 51 e3                                      cmp r1, #0x80
005a3cf4  02 00 00 8a                                      bhi #0x5a3d04
005a3cf8  80 94 05 eb                                      bl #0x708f00
005a3cfc  04 00 a0 e1                                      mov r0, r4
005a3d00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005a3d04  69 a9 f5 eb                                      bl #0x30e2b0
005a3d08  04 00 a0 e1                                      mov r0, r4
005a3d0c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a475c, declared_size=420, range_size=420, mode=arm
; class-group: std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> > >
; alias: _ZNSt6vectorISt4pairIN5boost13intrusive_ptrIKN6glitch5video14CVertexStreamsEEENS4_16CPrimitiveStreamEESaIS9_EE9push_backERKS9_
; demangled: std::vector<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream>, std::allocator<std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> > >::push_back(std::pair<boost::intrusive_ptr<glitch::video::CVertexStreams const>, glitch::video::CPrimitiveStream> const&)
; decoder-mode: arm
005a475c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a4760  04 70 90 e5                                      ldr r7, [r0, #4]
005a4764  08 30 90 e5                                      ldr r3, [r0, #8]
005a4768  14 d0 4d e2                                      sub sp, sp, #0x14
005a476c  00 50 a0 e1                                      mov r5, r0
005a4770  03 00 57 e1                                      cmp r7, r3
005a4774  01 40 a0 e1                                      mov r4, r1
005a4778  1c 00 00 0a                                      beq #0x5a47f0
005a477c  00 30 91 e5                                      ldr r3, [r1]
005a4780  00 30 87 e5                                      str r3, [r7]
005a4784  00 00 53 e3                                      cmp r3, #0
005a4788  00 20 93 15                                      ldrne r2, [r3]
005a478c  01 20 82 12                                      addne r2, r2, #1
005a4790  00 20 83 15                                      strne r2, [r3]
005a4794  04 30 91 e5                                      ldr r3, [r1, #4]
005a4798  04 30 87 e5                                      str r3, [r7, #4]
005a479c  00 00 53 e3                                      cmp r3, #0
005a47a0  04 20 93 15                                      ldrne r2, [r3, #4]
005a47a4  01 20 82 12                                      addne r2, r2, #1
005a47a8  04 20 83 15                                      strne r2, [r3, #4]
005a47ac  08 30 91 e5                                      ldr r3, [r1, #8]
005a47b0  08 30 87 e5                                      str r3, [r7, #8]
005a47b4  0c 30 91 e5                                      ldr r3, [r1, #0xc]
005a47b8  0c 30 87 e5                                      str r3, [r7, #0xc]
005a47bc  10 30 91 e5                                      ldr r3, [r1, #0x10]
005a47c0  10 30 87 e5                                      str r3, [r7, #0x10]
005a47c4  14 30 91 e5                                      ldr r3, [r1, #0x14]
005a47c8  14 30 87 e5                                      str r3, [r7, #0x14]
005a47cc  b8 31 d1 e1                                      ldrh r3, [r1, #0x18]
005a47d0  b8 31 c7 e1                                      strh r3, [r7, #0x18]
005a47d4  ba 41 d1 e1                                      ldrh r4, [r1, #0x1a]
005a47d8  ba 41 c7 e1                                      strh r4, [r7, #0x1a]
005a47dc  04 30 90 e5                                      ldr r3, [r0, #4]
005a47e0  1c 30 83 e2                                      add r3, r3, #0x1c
005a47e4  04 30 80 e5                                      str r3, [r0, #4]
005a47e8  14 d0 8d e2                                      add sp, sp, #0x14
005a47ec  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a47f0  00 20 90 e5                                      ldr r2, [r0]
005a47f4  49 32 09 e3                                      movw r3, #0x9249
005a47f8  03 36 83 e1                                      orr r3, r3, r3, lsl #12
005a47fc  07 20 62 e0                                      rsb r2, r2, r7
005a4800  42 21 a0 e1                                      asr r2, r2, #2
005a4804  82 11 82 e0                                      add r1, r2, r2, lsl #3
005a4808  01 13 81 e0                                      add r1, r1, r1, lsl #6
005a480c  81 11 82 e0                                      add r1, r2, r1, lsl #3
005a4810  81 17 81 e0                                      add r1, r1, r1, lsl #15
005a4814  81 21 82 e0                                      add r2, r2, r1, lsl #3
005a4818  00 20 62 e2                                      rsb r2, r2, #0
005a481c  01 00 52 e3                                      cmp r2, #1
005a4820  02 10 82 20                                      addhs r1, r2, r2
005a4824  01 10 82 32                                      addlo r1, r2, #1
005a4828  03 00 51 e1                                      cmp r1, r3
005a482c  30 00 00 9a                                      bls #0x5a48f4
005a4830  49 12 09 e3                                      movw r1, #0x9249
005a4834  01 16 81 e1                                      orr r1, r1, r1, lsl #12
005a4838  10 20 8d e2                                      add r2, sp, #0x10
005a483c  08 10 22 e5                                      str r1, [r2, #-8]!
005a4840  08 00 85 e2                                      add r0, r5, #8
005a4844  a2 ff ff eb                                      bl #0x5a46d4
005a4848  00 60 a0 e1                                      mov r6, r0
005a484c  06 20 a0 e1                                      mov r2, r6
005a4850  07 10 a0 e1                                      mov r1, r7
005a4854  00 c0 a0 e3                                      mov ip, #0
005a4858  00 00 95 e5                                      ldr r0, [r5]
005a485c  0c 30 8d e2                                      add r3, sp, #0xc
005a4860  00 c0 8d e5                                      str ip, [sp]
005a4864  5d f7 ff eb                                      bl #0x5a25e0
005a4868  00 30 94 e5                                      ldr r3, [r4]
005a486c  00 70 a0 e1                                      mov r7, r0
005a4870  00 30 80 e5                                      str r3, [r0]
005a4874  00 00 53 e3                                      cmp r3, #0
005a4878  00 20 93 15                                      ldrne r2, [r3]
005a487c  01 20 82 12                                      addne r2, r2, #1
005a4880  00 20 83 15                                      strne r2, [r3]
005a4884  04 30 94 e5                                      ldr r3, [r4, #4]
005a4888  04 30 80 e5                                      str r3, [r0, #4]
005a488c  00 00 53 e3                                      cmp r3, #0
005a4890  04 20 93 15                                      ldrne r2, [r3, #4]
005a4894  05 00 a0 e1                                      mov r0, r5
005a4898  01 20 82 12                                      addne r2, r2, #1
005a489c  04 20 83 15                                      strne r2, [r3, #4]
005a48a0  08 30 94 e5                                      ldr r3, [r4, #8]
005a48a4  08 30 87 e5                                      str r3, [r7, #8]
005a48a8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005a48ac  0c 30 87 e5                                      str r3, [r7, #0xc]
005a48b0  10 30 94 e5                                      ldr r3, [r4, #0x10]
005a48b4  10 30 87 e5                                      str r3, [r7, #0x10]
005a48b8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005a48bc  14 30 87 e5                                      str r3, [r7, #0x14]
005a48c0  b8 31 d4 e1                                      ldrh r3, [r4, #0x18]
005a48c4  b8 31 c7 e1                                      strh r3, [r7, #0x18]
005a48c8  ba 41 d4 e1                                      ldrh r4, [r4, #0x1a]
005a48cc  ba 41 c7 e1                                      strh r4, [r7, #0x1a]
005a48d0  98 fc ff eb                                      bl #0x5a3b38
005a48d4  08 30 9d e5                                      ldr r3, [sp, #8]
005a48d8  1c 20 a0 e3                                      mov r2, #0x1c
005a48dc  1c 70 87 e2                                      add r7, r7, #0x1c
005a48e0  92 63 23 e0                                      mla r3, r2, r3, r6
005a48e4  00 60 85 e5                                      str r6, [r5]
005a48e8  08 30 85 e5                                      str r3, [r5, #8]
005a48ec  04 70 85 e5                                      str r7, [r5, #4]
005a48f0  bc ff ff ea                                      b #0x5a47e8
005a48f4  01 00 52 e1                                      cmp r2, r1
005a48f8  ce ff ff 9a                                      bls #0x5a4838
005a48fc  cb ff ff ea                                      b #0x5a4830
