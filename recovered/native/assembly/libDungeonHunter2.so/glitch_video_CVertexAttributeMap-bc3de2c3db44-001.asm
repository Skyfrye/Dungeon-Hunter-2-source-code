; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a0708, declared_size=128, range_size=128, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMap3setERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
; demangled: glitch::video::CVertexAttributeMap::set(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned int, unsigned char const*, bool)
; decoder-mode: arm
005a0708  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a070c  82 70 83 e0                                      add r7, r3, r2, lsl #1
005a0710  07 00 53 e1                                      cmp r3, r7
005a0714  00 a0 a0 e1                                      mov sl, r0
005a0718  03 40 a0 e1                                      mov r4, r3
005a071c  01 60 a0 e1                                      mov r6, r1
005a0720  20 80 dd e5                                      ldrb r8, [sp, #0x20]
005a0724  00 00 91 e5                                      ldr r0, [r1]
005a0728  15 00 00 0a                                      beq #0x5a0784
005a072c  14 50 80 e2                                      add r5, r0, #0x14
005a0730  00 00 00 ea                                      b #0x5a0738
005a0734  00 00 96 e5                                      ldr r0, [r6]
005a0738  05 20 a0 e1                                      mov r2, r5
005a073c  10 30 90 e5                                      ldr r3, [r0, #0x10]
005a0740  01 10 d4 e5                                      ldrb r1, [r4, #1]
005a0744  d8 00 00 eb                                      bl #0x5a0aac
005a0748  00 30 96 e5                                      ldr r3, [r6]
005a074c  10 20 93 e5                                      ldr r2, [r3, #0x10]
005a0750  14 30 83 e2                                      add r3, r3, #0x14
005a0754  00 30 63 e0                                      rsb r3, r3, r0
005a0758  02 00 50 e1                                      cmp r0, r2
005a075c  05 00 00 0a                                      beq #0x5a0778
005a0760  00 20 d4 e5                                      ldrb r2, [r4]
005a0764  43 32 a0 e1                                      asr r3, r3, #4
005a0768  00 00 58 e3                                      cmp r8, #0
005a076c  02 20 8a e0                                      add r2, sl, r2
005a0770  00 50 a0 11                                      movne r5, r0
005a0774  04 30 c2 e5                                      strb r3, [r2, #4]
005a0778  02 40 84 e2                                      add r4, r4, #2
005a077c  04 00 57 e1                                      cmp r7, r4
005a0780  eb ff ff 1a                                      bne #0x5a0734
005a0784  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005a0788, declared_size=52, range_size=52, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapaSERKS1_
; demangled: glitch::video::CVertexAttributeMap::operator=(glitch::video::CVertexAttributeMap const&)
; decoder-mode: arm
005a0788  70 00 2d e9                                      push {r4, r5, r6}
005a078c  04 40 80 e2                                      add r4, r0, #4
005a0790  04 c0 a0 e1                                      mov ip, r4
005a0794  04 50 81 e2                                      add r5, r1, #4
005a0798  00 60 a0 e1                                      mov r6, r0
005a079c  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
005a07a0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005a07a4  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
005a07a8  07 00 ac e8                                      stm ip!, {r0, r1, r2}
005a07ac  06 00 a0 e1                                      mov r0, r6
005a07b0  b0 30 cc e1                                      strh r3, [ip]
005a07b4  70 00 bd e8                                      pop {r4, r5, r6}
005a07b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a07bc, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC1ERKS1_
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(glitch::video::CVertexAttributeMap const&)
; decoder-mode: arm
005a07bc  00 30 a0 e3                                      mov r3, #0
005a07c0  10 40 2d e9                                      push {r4, lr}
005a07c4  00 40 a0 e1                                      mov r4, r0
005a07c8  00 30 80 e5                                      str r3, [r0]
005a07cc  ed ff ff eb                                      bl #0x5a0788
005a07d0  04 00 a0 e1                                      mov r0, r4
005a07d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a07d8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC2ERKS1_
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(glitch::video::CVertexAttributeMap const&)
; decoder-mode: arm
005a07d8  00 30 a0 e3                                      mov r3, #0
005a07dc  10 40 2d e9                                      push {r4, lr}
005a07e0  00 40 a0 e1                                      mov r4, r0
005a07e4  00 30 80 e5                                      str r3, [r0]
005a07e8  e6 ff ff eb                                      bl #0x5a0788
005a07ec  04 00 a0 e1                                      mov r0, r4
005a07f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a07f4, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC1EPKh
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(unsigned char const*)
; decoder-mode: arm
005a07f4  00 30 a0 e3                                      mov r3, #0
005a07f8  10 40 2d e9                                      push {r4, lr}
005a07fc  1e 20 a0 e3                                      mov r2, #0x1e
005a0800  00 40 a0 e1                                      mov r4, r0
005a0804  04 30 80 e4                                      str r3, [r0], #4
005a0808  16 b8 f5 eb                                      bl #0x30e868
005a080c  04 00 a0 e1                                      mov r0, r4
005a0810  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a0814, declared_size=32, range_size=32, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC2EPKh
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(unsigned char const*)
; decoder-mode: arm
005a0814  00 30 a0 e3                                      mov r3, #0
005a0818  10 40 2d e9                                      push {r4, lr}
005a081c  1e 20 a0 e3                                      mov r2, #0x1e
005a0820  00 40 a0 e1                                      mov r4, r0
005a0824  04 30 80 e4                                      str r3, [r0], #4
005a0828  0e b8 f5 eb                                      bl #0x30e868
005a082c  04 00 a0 e1                                      mov r0, r4
005a0830  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a0834, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned int, unsigned char const*, bool)
; decoder-mode: arm
005a0834  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a0838  00 c0 a0 e3                                      mov ip, #0
005a083c  08 d0 4d e2                                      sub sp, sp, #8
005a0840  00 40 a0 e1                                      mov r4, r0
005a0844  01 50 a0 e1                                      mov r5, r1
005a0848  04 c0 80 e4                                      str ip, [r0], #4
005a084c  02 70 a0 e1                                      mov r7, r2
005a0850  ff 10 a0 e3                                      mov r1, #0xff
005a0854  1e 20 a0 e3                                      mov r2, #0x1e
005a0858  03 80 a0 e1                                      mov r8, r3
005a085c  20 60 dd e5                                      ldrb r6, [sp, #0x20]
005a0860  fe b6 f5 eb                                      bl #0x30e460
005a0864  00 30 95 e5                                      ldr r3, [r5]
005a0868  00 00 53 e3                                      cmp r3, #0
005a086c  05 00 00 0a                                      beq #0x5a0888
005a0870  05 10 a0 e1                                      mov r1, r5
005a0874  07 20 a0 e1                                      mov r2, r7
005a0878  08 30 a0 e1                                      mov r3, r8
005a087c  04 00 a0 e1                                      mov r0, r4
005a0880  00 60 8d e5                                      str r6, [sp]
005a0884  9f ff ff eb                                      bl #0x5a0708
005a0888  04 00 a0 e1                                      mov r0, r4
005a088c  08 d0 8d e2                                      add sp, sp, #8
005a0890  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a0894, declared_size=96, range_size=96, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC2ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEEjPKhb
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, unsigned int, unsigned char const*, bool)
; decoder-mode: arm
005a0894  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005a0898  00 c0 a0 e3                                      mov ip, #0
005a089c  08 d0 4d e2                                      sub sp, sp, #8
005a08a0  00 40 a0 e1                                      mov r4, r0
005a08a4  01 50 a0 e1                                      mov r5, r1
005a08a8  04 c0 80 e4                                      str ip, [r0], #4
005a08ac  02 70 a0 e1                                      mov r7, r2
005a08b0  ff 10 a0 e3                                      mov r1, #0xff
005a08b4  1e 20 a0 e3                                      mov r2, #0x1e
005a08b8  03 80 a0 e1                                      mov r8, r3
005a08bc  20 60 dd e5                                      ldrb r6, [sp, #0x20]
005a08c0  e6 b6 f5 eb                                      bl #0x30e460
005a08c4  00 30 95 e5                                      ldr r3, [r5]
005a08c8  00 00 53 e3                                      cmp r3, #0
005a08cc  05 00 00 0a                                      beq #0x5a08e8
005a08d0  05 10 a0 e1                                      mov r1, r5
005a08d4  07 20 a0 e1                                      mov r2, r7
005a08d8  08 30 a0 e1                                      mov r3, r8
005a08dc  04 00 a0 e1                                      mov r0, r4
005a08e0  00 60 8d e5                                      str r6, [sp]
005a08e4  87 ff ff eb                                      bl #0x5a0708
005a08e8  04 00 a0 e1                                      mov r0, r4
005a08ec  08 d0 8d e2                                      add sp, sp, #8
005a08f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005a0958, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC1ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; decoder-mode: arm
005a0958  10 40 2d e9                                      push {r4, lr}
005a095c  00 30 a0 e3                                      mov r3, #0
005a0960  00 30 80 e5                                      str r3, [r0]
005a0964  00 40 a0 e1                                      mov r4, r0
005a0968  00 00 91 e5                                      ldr r0, [r1]
005a096c  03 00 50 e1                                      cmp r0, r3
005a0970  03 00 00 0a                                      beq #0x5a0984
005a0974  04 10 84 e2                                      add r1, r4, #4
005a0978  dd ff ff eb                                      bl #0x5a08f4
005a097c  04 00 a0 e1                                      mov r0, r4
005a0980  10 80 bd e8                                      pop {r4, pc}
005a0984  04 00 84 e2                                      add r0, r4, #4
005a0988  ff 10 a0 e3                                      mov r1, #0xff
005a098c  1e 20 a0 e3                                      mov r2, #0x1e
005a0990  b2 b6 f5 eb                                      bl #0x30e460
005a0994  04 00 a0 e1                                      mov r0, r4
005a0998  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005a099c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::video::CVertexAttributeMap
; alias: _ZN6glitch5video19CVertexAttributeMapC2ERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEE
; demangled: glitch::video::CVertexAttributeMap::CVertexAttributeMap(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; decoder-mode: arm
005a099c  10 40 2d e9                                      push {r4, lr}
005a09a0  00 30 a0 e3                                      mov r3, #0
005a09a4  00 30 80 e5                                      str r3, [r0]
005a09a8  00 40 a0 e1                                      mov r4, r0
005a09ac  00 00 91 e5                                      ldr r0, [r1]
005a09b0  03 00 50 e1                                      cmp r0, r3
005a09b4  03 00 00 0a                                      beq #0x5a09c8
005a09b8  04 10 84 e2                                      add r1, r4, #4
005a09bc  cc ff ff eb                                      bl #0x5a08f4
005a09c0  04 00 a0 e1                                      mov r0, r4
005a09c4  10 80 bd e8                                      pop {r4, pc}
005a09c8  04 00 84 e2                                      add r0, r4, #4
005a09cc  ff 10 a0 e3                                      mov r1, #0xff
005a09d0  1e 20 a0 e3                                      mov r2, #0x1e
005a09d4  a1 b6 f5 eb                                      bl #0x30e460
005a09d8  04 00 a0 e1                                      mov r0, r4
005a09dc  10 80 bd e8                                      pop {r4, pc}
