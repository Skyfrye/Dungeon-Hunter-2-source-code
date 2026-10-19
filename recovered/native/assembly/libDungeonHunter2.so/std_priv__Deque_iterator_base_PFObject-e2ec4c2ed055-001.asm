; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00522400, declared_size=68, range_size=68, mode=arm
; class-group: std::priv::_Deque_iterator_base<PFObject*>
; alias: _ZNKSt4priv20_Deque_iterator_baseIP8PFObjectE11_M_subtractERKS3_
; demangled: std::priv::_Deque_iterator_base<PFObject*>::_M_subtract(std::priv::_Deque_iterator_base<PFObject*> const&) const
; decoder-mode: arm
00522400  30 00 2d e9                                      push {r4, r5}
00522404  0c c0 91 e5                                      ldr ip, [r1, #0xc]
00522408  00 50 90 e5                                      ldr r5, [r0]
0052240c  04 20 90 e5                                      ldr r2, [r0, #4]
00522410  0c 40 90 e5                                      ldr r4, [r0, #0xc]
00522414  08 30 91 e5                                      ldr r3, [r1, #8]
00522418  00 10 91 e5                                      ldr r1, [r1]
0052241c  05 20 62 e0                                      rsb r2, r2, r5
00522420  04 00 6c e0                                      rsb r0, ip, r4
00522424  03 30 61 e0                                      rsb r3, r1, r3
00522428  42 21 a0 e1                                      asr r2, r2, #2
0052242c  40 01 a0 e1                                      asr r0, r0, #2
00522430  43 31 82 e0                                      add r3, r2, r3, asr #2
00522434  01 00 40 e2                                      sub r0, r0, #1
00522438  80 02 83 e0                                      add r0, r3, r0, lsl #5
0052243c  30 00 bd e8                                      pop {r4, r5}
00522440  1e ff 2f e1                                      bx lr

; FUNCTION 0x00526828, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<PFObject*>
; alias: _ZNSt4priv20_Deque_iterator_baseIP8PFObjectE10_M_advanceEi
; demangled: std::priv::_Deque_iterator_base<PFObject*>::_M_advance(int)
; decoder-mode: arm
00526828  00 30 90 e5                                      ldr r3, [r0]
0052682c  04 20 90 e5                                      ldr r2, [r0, #4]
00526830  04 40 2d e5                                      str r4, [sp, #-4]!
00526834  03 20 62 e0                                      rsb r2, r2, r3
00526838  42 21 81 e0                                      add r2, r1, r2, asr #2
0052683c  02 c0 e0 e1                                      mvn ip, r2
00526840  ac 4f a0 e1                                      lsr r4, ip, #0x1f
00526844  1f 00 52 e3                                      cmp r2, #0x1f
00526848  00 40 a0 c3                                      movgt r4, #0
0052684c  01 40 04 d2                                      andle r4, r4, #1
00526850  00 00 54 e3                                      cmp r4, #0
00526854  01 31 83 10                                      addne r3, r3, r1, lsl #2
00526858  00 30 80 15                                      strne r3, [r0]
0052685c  0c 00 00 1a                                      bne #0x526894
00526860  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00526864  00 00 52 e3                                      cmp r2, #0
00526868  a2 32 a0 c1                                      lsrgt r3, r2, #5
0052686c  ac 32 e0 d1                                      mvnle r3, ip, lsr #5
00526870  03 c1 81 e0                                      add ip, r1, r3, lsl #2
00526874  0c c0 80 e5                                      str ip, [r0, #0xc]
00526878  83 22 42 e0                                      sub r2, r2, r3, lsl #5
0052687c  03 31 91 e7                                      ldr r3, [r1, r3, lsl #2]
00526880  02 21 83 e0                                      add r2, r3, r2, lsl #2
00526884  80 10 83 e2                                      add r1, r3, #0x80
00526888  00 20 80 e5                                      str r2, [r0]
0052688c  08 10 80 e5                                      str r1, [r0, #8]
00526890  04 30 80 e5                                      str r3, [r0, #4]
00526894  10 00 bd e8                                      ldm sp!, {r4}
00526898  1e ff 2f e1                                      bx lr
