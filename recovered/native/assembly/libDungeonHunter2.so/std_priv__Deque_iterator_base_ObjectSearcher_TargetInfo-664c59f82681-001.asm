; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038d610, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>
; alias: _ZNKSt4priv20_Deque_iterator_baseIN14ObjectSearcher10TargetInfoEE11_M_subtractERKS3_
; demangled: std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_subtract(std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo> const&) const
; decoder-mode: arm
0038d610  04 40 2d e5                                      str r4, [sp, #-4]!
0038d614  08 40 91 e5                                      ldr r4, [r1, #8]
0038d618  00 c0 90 e5                                      ldr ip, [r0]
0038d61c  00 20 91 e5                                      ldr r2, [r1]
0038d620  04 30 90 e5                                      ldr r3, [r0, #4]
0038d624  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0038d628  04 20 62 e0                                      rsb r2, r2, r4
0038d62c  0c 30 63 e0                                      rsb r3, r3, ip
0038d630  42 21 a0 e1                                      asr r2, r2, #2
0038d634  43 31 a0 e1                                      asr r3, r3, #2
0038d638  82 40 82 e0                                      add r4, r2, r2, lsl #1
0038d63c  83 c0 83 e0                                      add ip, r3, r3, lsl #1
0038d640  04 42 84 e0                                      add r4, r4, r4, lsl #4
0038d644  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0038d648  0c 00 90 e5                                      ldr r0, [r0, #0xc]
0038d64c  04 44 84 e0                                      add r4, r4, r4, lsl #8
0038d650  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0038d654  04 48 84 e0                                      add r4, r4, r4, lsl #16
0038d658  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0038d65c  00 10 61 e0                                      rsb r1, r1, r0
0038d660  04 21 82 e0                                      add r2, r2, r4, lsl #2
0038d664  0c 31 83 e0                                      add r3, r3, ip, lsl #2
0038d668  41 11 a0 e1                                      asr r1, r1, #2
0038d66c  03 30 82 e0                                      add r3, r2, r3
0038d670  06 00 a0 e3                                      mov r0, #6
0038d674  01 20 41 e2                                      sub r2, r1, #1
0038d678  90 32 20 e0                                      mla r0, r0, r2, r3
0038d67c  10 00 bd e8                                      ldm sp!, {r4}
0038d680  1e ff 2f e1                                      bx lr

; FUNCTION 0x0038d684, declared_size=172, range_size=172, mode=arm
; class-group: std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>
; alias: _ZNSt4priv20_Deque_iterator_baseIN14ObjectSearcher10TargetInfoEE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<ObjectSearcher::TargetInfo>::_M_advance(int)
; decoder-mode: arm
0038d684  00 30 90 e5                                      ldr r3, [r0]
0038d688  04 20 90 e5                                      ldr r2, [r0, #4]
0038d68c  04 40 2d e5                                      str r4, [sp, #-4]!
0038d690  03 20 62 e0                                      rsb r2, r2, r3
0038d694  42 21 a0 e1                                      asr r2, r2, #2
0038d698  82 c0 82 e0                                      add ip, r2, r2, lsl #1
0038d69c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0038d6a0  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0038d6a4  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0038d6a8  0c 21 82 e0                                      add r2, r2, ip, lsl #2
0038d6ac  02 20 81 e0                                      add r2, r1, r2
0038d6b0  02 c0 e0 e1                                      mvn ip, r2
0038d6b4  ac 4f a0 e1                                      lsr r4, ip, #0x1f
0038d6b8  05 00 52 e3                                      cmp r2, #5
0038d6bc  00 40 a0 c3                                      movgt r4, #0
0038d6c0  01 40 04 d2                                      andle r4, r4, #1
0038d6c4  00 00 54 e3                                      cmp r4, #0
0038d6c8  14 00 00 1a                                      bne #0x38d720
0038d6cc  ab 3a 0a e3                                      movw r3, #0xaaab
0038d6d0  aa 3a 4a e3                                      movt r3, #0xaaaa
0038d6d4  00 00 52 e3                                      cmp r2, #0
0038d6d8  93 1c 83 d0                                      umullle r1, r3, r3, ip
0038d6dc  93 12 83 c0                                      umullgt r1, r3, r3, r2
0038d6e0  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0038d6e4  23 31 a0 c1                                      lsrgt r3, r3, #2
0038d6e8  23 31 e0 d1                                      mvnle r3, r3, lsr #2
0038d6ec  06 c0 a0 e3                                      mov ip, #6
0038d6f0  9c 23 62 e0                                      mls r2, ip, r3, r2
0038d6f4  03 c1 81 e0                                      add ip, r1, r3, lsl #2
0038d6f8  0c c0 80 e5                                      str ip, [r0, #0xc]
0038d6fc  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
0038d700  14 10 a0 e3                                      mov r1, #0x14
0038d704  91 32 22 e0                                      mla r2, r1, r2, r3
0038d708  78 10 83 e2                                      add r1, r3, #0x78
0038d70c  00 20 80 e5                                      str r2, [r0]
0038d710  08 10 80 e5                                      str r1, [r0, #8]
0038d714  04 30 80 e5                                      str r3, [r0, #4]
0038d718  10 00 bd e8                                      ldm sp!, {r4}
0038d71c  1e ff 2f e1                                      bx lr
0038d720  14 20 a0 e3                                      mov r2, #0x14
0038d724  92 31 23 e0                                      mla r3, r2, r1, r3
0038d728  00 30 80 e5                                      str r3, [r0]
0038d72c  f9 ff ff ea                                      b #0x38d718
