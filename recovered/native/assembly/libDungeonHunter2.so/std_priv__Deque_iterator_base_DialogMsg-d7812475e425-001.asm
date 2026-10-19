; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00456230, declared_size=104, range_size=104, mode=arm
; class-group: std::priv::_Deque_iterator_base<DialogMsg>
; alias: _ZNKSt4priv20_Deque_iterator_baseI9DialogMsgE11_M_subtractERKS2_
; demangled: std::priv::_Deque_iterator_base<DialogMsg>::_M_subtract(std::priv::_Deque_iterator_base<DialogMsg> const&) const
; decoder-mode: arm
00456230  04 40 2d e5                                      str r4, [sp, #-4]!
00456234  0c 00 90 e8                                      ldm r0, {r2, r3}
00456238  00 c0 91 e5                                      ldr ip, [r1]
0045623c  08 40 91 e5                                      ldr r4, [r1, #8]
00456240  02 20 63 e0                                      rsb r2, r3, r2
00456244  42 21 a0 e1                                      asr r2, r2, #2
00456248  04 30 6c e0                                      rsb r3, ip, r4
0045624c  82 20 82 e0                                      add r2, r2, r2, lsl #1
00456250  43 31 a0 e1                                      asr r3, r3, #2
00456254  82 21 82 e0                                      add r2, r2, r2, lsl #3
00456258  83 30 83 e0                                      add r3, r3, r3, lsl #1
0045625c  0c 10 91 e5                                      ldr r1, [r1, #0xc]
00456260  0c 00 90 e5                                      ldr r0, [r0, #0xc]
00456264  83 31 83 e0                                      add r3, r3, r3, lsl #3
00456268  82 c4 a0 e1                                      lsl ip, r2, #9
0045626c  0c 20 62 e0                                      rsb r2, r2, ip
00456270  00 00 61 e0                                      rsb r0, r1, r0
00456274  02 29 82 e0                                      add r2, r2, r2, lsl #18
00456278  83 14 a0 e1                                      lsl r1, r3, #9
0045627c  40 01 62 e0                                      rsb r0, r2, r0, asr #2
00456280  01 30 63 e0                                      rsb r3, r3, r1
00456284  03 39 83 e0                                      add r3, r3, r3, lsl #18
00456288  01 00 40 e2                                      sub r0, r0, #1
0045628c  00 00 63 e0                                      rsb r0, r3, r0
00456290  10 00 bd e8                                      ldm sp!, {r4}
00456294  1e ff 2f e1                                      bx lr
