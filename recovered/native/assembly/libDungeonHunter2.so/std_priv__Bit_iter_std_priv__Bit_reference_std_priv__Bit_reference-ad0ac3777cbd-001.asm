; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0040c968, declared_size=64, range_size=64, mode=arm
; class-group: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>
; alias: _ZNKSt4priv9_Bit_iterINS_14_Bit_referenceEPS1_EplEi
; demangled: std::priv::_Bit_iter<std::priv::_Bit_reference, std::priv::_Bit_reference*>::operator+(int) const
; decoder-mode: arm
0040c968  08 10 91 e8                                      ldm r1, {r3, ip}
0040c96c  0c c0 82 e0                                      add ip, r2, ip
0040c970  cc 2f a0 e1                                      asr r2, ip, #0x1f
0040c974  00 00 5c e3                                      cmp ip, #0
0040c978  1f 10 8c e2                                      add r1, ip, #0x1f
0040c97c  a2 2d a0 e1                                      lsr r2, r2, #0x1b
0040c980  0c 10 a0 a1                                      movge r1, ip
0040c984  c1 12 a0 e1                                      asr r1, r1, #5
0040c988  02 c0 8c e0                                      add ip, ip, r2
0040c98c  1f c0 0c e2                                      and ip, ip, #0x1f
0040c990  02 c0 5c e0                                      subs ip, ip, r2
0040c994  01 31 83 e0                                      add r3, r3, r1, lsl #2
0040c998  20 c0 8c 42                                      addmi ip, ip, #0x20
0040c99c  04 30 43 42                                      submi r3, r3, #4
0040c9a0  08 10 80 e8                                      stm r0, {r3, ip}
0040c9a4  1e ff 2f e1                                      bx lr
