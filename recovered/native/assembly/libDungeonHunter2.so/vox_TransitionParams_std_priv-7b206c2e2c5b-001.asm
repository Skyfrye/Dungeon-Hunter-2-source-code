; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00872704, declared_size=84, range_size=84, mode=arm
; class-group: vox::TransitionParams* std::priv
; alias: _ZNSt4priv6__copyIPKN3vox16TransitionParamsEPS2_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: vox::TransitionParams* std::priv::__copy<vox::TransitionParams const*, vox::TransitionParams*, int>(vox::TransitionParams const*, vox::TransitionParams const*, vox::TransitionParams*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00872704  01 10 60 e0                                      rsb r1, r0, r1
00872708  c1 11 a0 e1                                      asr r1, r1, #3
0087270c  00 00 51 e3                                      cmp r1, #0
00872710  30 00 2d e9                                      push {r4, r5}
00872714  00 30 a0 e1                                      mov r3, r0
00872718  0b 00 00 da                                      ble #0x87274c
0087271c  01 40 a0 e1                                      mov r4, r1
00872720  00 c0 a0 e3                                      mov ip, #0
00872724  0c 50 93 e7                                      ldr r5, [r3, ip]
00872728  0c 00 83 e0                                      add r0, r3, ip
0087272c  01 40 54 e2                                      subs r4, r4, #1
00872730  0c 50 82 e7                                      str r5, [r2, ip]
00872734  04 50 d0 e5                                      ldrb r5, [r0, #4]
00872738  0c 00 82 e0                                      add r0, r2, ip
0087273c  08 c0 8c e2                                      add ip, ip, #8
00872740  04 50 c0 e5                                      strb r5, [r0, #4]
00872744  f6 ff ff 1a                                      bne #0x872724
00872748  81 21 82 e0                                      add r2, r2, r1, lsl #3
0087274c  02 00 a0 e1                                      mov r0, r2
00872750  30 00 bd e8                                      pop {r4, r5}
00872754  1e ff 2f e1                                      bx lr
