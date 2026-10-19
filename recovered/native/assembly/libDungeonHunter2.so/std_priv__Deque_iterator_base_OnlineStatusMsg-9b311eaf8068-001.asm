; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0036d314, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<OnlineStatusMsg>
; alias: _ZNKSt4priv20_Deque_iterator_baseI15OnlineStatusMsgE11_M_subtractERKS2_
; demangled: std::priv::_Deque_iterator_base<OnlineStatusMsg>::_M_subtract(std::priv::_Deque_iterator_base<OnlineStatusMsg> const&) const
; decoder-mode: arm
0036d314  30 00 2d e9                                      push {r4, r5}
0036d318  00 40 90 e5                                      ldr r4, [r0]
0036d31c  04 20 90 e5                                      ldr r2, [r0, #4]
0036d320  08 c0 91 e5                                      ldr ip, [r1, #8]
0036d324  00 30 91 e5                                      ldr r3, [r1]
0036d328  04 20 62 e0                                      rsb r2, r2, r4
0036d32c  42 21 a0 e1                                      asr r2, r2, #2
0036d330  0c 30 63 e0                                      rsb r3, r3, ip
0036d334  43 31 a0 e1                                      asr r3, r3, #2
0036d338  82 41 82 e0                                      add r4, r2, r2, lsl #3
0036d33c  83 c1 83 e0                                      add ip, r3, r3, lsl #3
0036d340  04 43 84 e0                                      add r4, r4, r4, lsl #6
0036d344  0c c3 8c e0                                      add ip, ip, ip, lsl #6
0036d348  84 41 82 e0                                      add r4, r2, r4, lsl #3
0036d34c  0c 50 90 e5                                      ldr r5, [r0, #0xc]
0036d350  8c c1 83 e0                                      add ip, r3, ip, lsl #3
0036d354  0c 10 91 e5                                      ldr r1, [r1, #0xc]
0036d358  84 47 84 e0                                      add r4, r4, r4, lsl #15
0036d35c  8c c7 8c e0                                      add ip, ip, ip, lsl #15
0036d360  84 21 82 e0                                      add r2, r2, r4, lsl #3
0036d364  05 10 61 e0                                      rsb r1, r1, r5
0036d368  8c 31 83 e0                                      add r3, r3, ip, lsl #3
0036d36c  00 00 62 e2                                      rsb r0, r2, #0
0036d370  03 10 c1 e3                                      bic r1, r1, #3
0036d374  00 00 63 e0                                      rsb r0, r3, r0
0036d378  04 10 41 e2                                      sub r1, r1, #4
0036d37c  01 00 80 e0                                      add r0, r0, r1
0036d380  30 00 bd e8                                      pop {r4, r5}
0036d384  1e ff 2f e1                                      bx lr
