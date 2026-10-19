; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003bcf8c, declared_size=116, range_size=116, mode=arm
; class-group: std::priv::_Deque_iterator_base<StatusMsg>
; alias: _ZNKSt4priv20_Deque_iterator_baseI9StatusMsgE11_M_subtractERKS2_
; demangled: std::priv::_Deque_iterator_base<StatusMsg>::_M_subtract(std::priv::_Deque_iterator_base<StatusMsg> const&) const
; decoder-mode: arm
003bcf8c  30 00 2d e9                                      push {r4, r5}
003bcf90  00 40 90 e5                                      ldr r4, [r0]
003bcf94  04 20 90 e5                                      ldr r2, [r0, #4]
003bcf98  08 c0 91 e5                                      ldr ip, [r1, #8]
003bcf9c  00 30 91 e5                                      ldr r3, [r1]
003bcfa0  04 20 62 e0                                      rsb r2, r2, r4
003bcfa4  42 21 a0 e1                                      asr r2, r2, #2
003bcfa8  0c 30 63 e0                                      rsb r3, r3, ip
003bcfac  43 31 a0 e1                                      asr r3, r3, #2
003bcfb0  82 41 82 e0                                      add r4, r2, r2, lsl #3
003bcfb4  83 c1 83 e0                                      add ip, r3, r3, lsl #3
003bcfb8  04 43 84 e0                                      add r4, r4, r4, lsl #6
003bcfbc  0c c3 8c e0                                      add ip, ip, ip, lsl #6
003bcfc0  84 41 82 e0                                      add r4, r2, r4, lsl #3
003bcfc4  0c 50 90 e5                                      ldr r5, [r0, #0xc]
003bcfc8  8c c1 83 e0                                      add ip, r3, ip, lsl #3
003bcfcc  0c 10 91 e5                                      ldr r1, [r1, #0xc]
003bcfd0  84 47 84 e0                                      add r4, r4, r4, lsl #15
003bcfd4  8c c7 8c e0                                      add ip, ip, ip, lsl #15
003bcfd8  84 21 82 e0                                      add r2, r2, r4, lsl #3
003bcfdc  05 10 61 e0                                      rsb r1, r1, r5
003bcfe0  8c 31 83 e0                                      add r3, r3, ip, lsl #3
003bcfe4  00 00 62 e2                                      rsb r0, r2, #0
003bcfe8  03 10 c1 e3                                      bic r1, r1, #3
003bcfec  00 00 63 e0                                      rsb r0, r3, r0
003bcff0  04 10 41 e2                                      sub r1, r1, #4
003bcff4  01 00 80 e0                                      add r0, r0, r1
003bcff8  30 00 bd e8                                      pop {r4, r5}
003bcffc  1e ff 2f e1                                      bx lr
