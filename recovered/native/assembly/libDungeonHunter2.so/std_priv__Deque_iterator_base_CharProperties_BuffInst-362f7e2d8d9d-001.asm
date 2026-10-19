; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003de870, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<CharProperties::BuffInst*>
; alias: _ZNKSt4priv20_Deque_iterator_baseIPN14CharProperties8BuffInstEE11_M_subtractERKS4_
; demangled: std::priv::_Deque_iterator_base<CharProperties::BuffInst*>::_M_subtract(std::priv::_Deque_iterator_base<CharProperties::BuffInst*> const&) const
; decoder-mode: arm
003de870  30 00 2d e9                                      push {r4, r5}
003de874  0c c0 91 e5                                      ldr ip, [r1, #0xc]
003de878  00 50 90 e5                                      ldr r5, [r0]
003de87c  04 20 90 e5                                      ldr r2, [r0, #4]
003de880  0c 40 90 e5                                      ldr r4, [r0, #0xc]
003de884  08 30 91 e5                                      ldr r3, [r1, #8]
003de888  00 10 91 e5                                      ldr r1, [r1]
003de88c  05 20 62 e0                                      rsb r2, r2, r5
003de890  04 00 6c e0                                      rsb r0, ip, r4
003de894  03 30 61 e0                                      rsb r3, r1, r3
003de898  42 21 a0 e1                                      asr r2, r2, #2
003de89c  40 01 a0 e1                                      asr r0, r0, #2
003de8a0  43 31 82 e0                                      add r3, r2, r3, asr #2
003de8a4  01 00 40 e2                                      sub r0, r0, #1
003de8a8  80 02 83 e0                                      add r0, r3, r0, lsl #5
003de8ac  30 00 bd e8                                      pop {r4, r5}
003de8b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003de8b4, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<CharProperties::BuffInst*>
; alias: _ZNSt4priv20_Deque_iterator_baseIPN14CharProperties8BuffInstEE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<CharProperties::BuffInst*>::_M_advance(int)
; decoder-mode: arm
003de8b4  00 30 90 e5                                      ldr r3, [r0]
003de8b8  04 20 90 e5                                      ldr r2, [r0, #4]
003de8bc  04 40 2d e5                                      str r4, [sp, #-4]!
003de8c0  03 20 62 e0                                      rsb r2, r2, r3
003de8c4  42 21 81 e0                                      add r2, r1, r2, asr #2
003de8c8  02 c0 e0 e1                                      mvn ip, r2
003de8cc  ac 4f a0 e1                                      lsr r4, ip, #0x1f
003de8d0  1f 00 52 e3                                      cmp r2, #0x1f
003de8d4  00 40 a0 c3                                      movgt r4, #0
003de8d8  01 40 04 d2                                      andle r4, r4, #1
003de8dc  00 00 54 e3                                      cmp r4, #0
003de8e0  01 31 83 10                                      addne r3, r3, r1, lsl #2
003de8e4  00 30 80 15                                      strne r3, [r0]
003de8e8  0c 00 00 1a                                      bne #0x3de920
003de8ec  0c 10 90 e5                                      ldr r1, [r0, #0xc]
003de8f0  00 00 52 e3                                      cmp r2, #0
003de8f4  a2 32 a0 c1                                      lsrgt r3, r2, #5
003de8f8  ac 32 e0 d1                                      mvnle r3, ip, lsr #5
003de8fc  03 c1 81 e0                                      add ip, r1, r3, lsl #2
003de900  0c c0 80 e5                                      str ip, [r0, #0xc]
003de904  83 22 42 e0                                      sub r2, r2, r3, lsl #5
003de908  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
003de90c  02 21 83 e0                                      add r2, r3, r2, lsl #2
003de910  80 10 83 e2                                      add r1, r3, #0x80
003de914  00 20 80 e5                                      str r2, [r0]
003de918  08 10 80 e5                                      str r1, [r0, #8]
003de91c  04 30 80 e5                                      str r3, [r0, #4]
003de920  10 00 bd e8                                      ldm sp!, {r4}
003de924  1e ff 2f e1                                      bx lr

; FUNCTION 0x0043c440, declared_size=96, range_size=96, mode=arm
; class-group: std::priv::_Deque_iterator_base<CharProperties::BuffInst*>
; alias: _ZNSt4priv20_Deque_iterator_baseIPN14CharProperties8BuffInstEE10_M_advanceEi.clone.22
; demangled: std::priv::_Deque_iterator_base<CharProperties::BuffInst*>::_M_advance(int) [clone .clone.22]
; decoder-mode: arm
0043c440  0c 00 90 e8                                      ldm r0, {r2, r3}
0043c444  02 30 63 e0                                      rsb r3, r3, r2
0043c448  43 31 a0 e1                                      asr r3, r3, #2
0043c44c  03 20 e0 e1                                      mvn r2, r3
0043c450  a2 1f a0 e1                                      lsr r1, r2, #0x1f
0043c454  1f 00 53 e3                                      cmp r3, #0x1f
0043c458  00 10 a0 c3                                      movgt r1, #0
0043c45c  01 10 01 d2                                      andle r1, r1, #1
0043c460  00 00 51 e3                                      cmp r1, #0
0043c464  1e ff 2f 11                                      bxne lr
0043c468  0c 10 90 e5                                      ldr r1, [r0, #0xc]
0043c46c  00 00 53 e3                                      cmp r3, #0
0043c470  a3 22 a0 c1                                      lsrgt r2, r3, #5
0043c474  a2 22 e0 d1                                      mvnle r2, r2, lsr #5
0043c478  02 c1 81 e0                                      add ip, r1, r2, lsl #2
0043c47c  0c c0 80 e5                                      str ip, [r0, #0xc]
0043c480  82 32 43 e0                                      sub r3, r3, r2, lsl #5
0043c484  02 21 91 e7                                      ldr r2, [r1, r2, lsl #2]
0043c488  03 31 82 e0                                      add r3, r2, r3, lsl #2
0043c48c  80 10 82 e2                                      add r1, r2, #0x80
0043c490  00 30 80 e5                                      str r3, [r0]
0043c494  08 10 80 e5                                      str r1, [r0, #8]
0043c498  04 20 80 e5                                      str r2, [r0, #4]
0043c49c  1e ff 2f e1                                      bx lr
