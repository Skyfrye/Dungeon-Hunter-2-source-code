; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cb49c, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<CharAI*>
; alias: _ZNKSt4priv20_Deque_iterator_baseIP6CharAIE11_M_subtractERKS3_
; demangled: std::priv::_Deque_iterator_base<CharAI*>::_M_subtract(std::priv::_Deque_iterator_base<CharAI*> const&) const
; decoder-mode: arm
003cb49c  30 00 2d e9                                      push {r4, r5}
003cb4a0  0c c0 91 e5                                      ldr ip, [r1, #0xc]
003cb4a4  00 50 90 e5                                      ldr r5, [r0]
003cb4a8  04 20 90 e5                                      ldr r2, [r0, #4]
003cb4ac  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003cb4b0  08 30 91 e5                                      ldr r3, [r1, #8]
003cb4b4  00 10 91 e5                                      ldr r1, [r1]
003cb4b8  05 20 62 e0                                      rsb r2, r2, r5
003cb4bc  04 00 6c e0                                      rsb r0, ip, r4
003cb4c0  03 30 61 e0                                      rsb r3, r1, r3
003cb4c4  42 21 a0 e1                                      asr r2, r2, #2
003cb4c8  40 01 a0 e1                                      asr r0, r0, #2
003cb4cc  43 31 82 e0                                      add r3, r2, r3, asr #2
003cb4d0  01 00 40 e2                                      sub r0, r0, #1
003cb4d4  80 02 83 e0                                      add r0, r3, r0, lsl #5
003cb4d8  30 00 bd e8                                      pop {r4, r5}
003cb4dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003cb6d4, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<CharAI*>
; alias: _ZNSt4priv20_Deque_iterator_baseIP6CharAIE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<CharAI*>::_M_advance(int)
; decoder-mode: arm
003cb6d4  00 30 90 e5                                      ldr r3, [r0]
003cb6d8  04 20 90 e5                                      ldr r2, [r0, #4]
003cb6dc  04 40 2d e5                                      str r4, [sp, #-4]!
003cb6e0  03 20 62 e0                                      rsb r2, r2, r3
003cb6e4  42 21 81 e0                                      add r2, r1, r2, asr #2
003cb6e8  02 c0 e0 e1                                      mvn ip, r2
003cb6ec  ac 4f a0 e1                                      lsr r4, ip, #0x1f
003cb6f0  1f 00 52 e3                                      cmp r2, #0x1f
003cb6f4  00 40 a0 c3                                      movgt r4, #0
003cb6f8  01 40 04 d2                                      andle r4, r4, #1
003cb6fc  00 00 54 e3                                      cmp r4, #0
003cb700  01 31 83 10                                      addne r3, r3, r1, lsl #2
003cb704  00 30 80 15                                      strne r3, [r0]
003cb708  0c 00 00 1a                                      bne #0x3cb740
003cb70c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003cb710  00 00 52 e3                                      cmp r2, #0
003cb714  a2 32 a0 c1                                      lsrgt r3, r2, #5
003cb718  ac 32 e0 d1                                      mvnle r3, ip, lsr #5
003cb71c  03 c1 81 e0                                      add ip, r1, r3, lsl #2
003cb720  0c c0 80 e5                                      str ip, [r0, #0xc]
003cb724  83 22 42 e0                                      sub r2, r2, r3, lsl #5
003cb728  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
003cb72c  02 21 83 e0                                      add r2, r3, r2, lsl #2
003cb730  80 10 83 e2                                      add r1, r3, #0x80
003cb734  00 20 80 e5                                      str r2, [r0]
003cb738  08 10 80 e5                                      str r1, [r0, #8]
003cb73c  04 30 80 e5                                      str r3, [r0, #4]
003cb740  10 00 bd e8                                      ldm sp!, {r4}
003cb744  1e ff 2f e1                                      bx lr
