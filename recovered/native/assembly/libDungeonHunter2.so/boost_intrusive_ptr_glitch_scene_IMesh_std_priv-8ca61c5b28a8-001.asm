; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0059a2e4, declared_size=100, range_size=100, mode=arm
; class-group: boost::intrusive_ptr<glitch::scene::IMesh>* std::priv
; alias: _ZNSt4priv6__copyIPKN5boost13intrusive_ptrIN6glitch5scene5IMeshEEEPS6_iEET0_T_SB_SA_RKSt26random_access_iterator_tagPT1_
; demangled: boost::intrusive_ptr<glitch::scene::IMesh>* std::priv::__copy<boost::intrusive_ptr<glitch::scene::IMesh> const*, boost::intrusive_ptr<glitch::scene::IMesh>*, int>(boost::intrusive_ptr<glitch::scene::IMesh> const*, boost::intrusive_ptr<glitch::scene::IMesh> const*, boost::intrusive_ptr<glitch::scene::IMesh>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
0059a2e4  01 10 60 e0                                      rsb r1, r0, r1
0059a2e8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0059a2ec  41 51 a0 e1                                      asr r5, r1, #2
0059a2f0  00 00 55 e3                                      cmp r5, #0
0059a2f4  00 40 a0 e1                                      mov r4, r0
0059a2f8  02 80 a0 e1                                      mov r8, r2
0059a2fc  0f 00 00 da                                      ble #0x59a340
0059a300  05 70 a0 e1                                      mov r7, r5
0059a304  00 60 a0 e3                                      mov r6, #0
0059a308  06 30 94 e7                                      ldr r3, [r4, r6]
0059a30c  00 00 53 e3                                      cmp r3, #0
0059a310  04 20 93 15                                      ldrne r2, [r3, #4]
0059a314  01 20 82 12                                      addne r2, r2, #1
0059a318  04 20 83 15                                      strne r2, [r3, #4]
0059a31c  06 00 98 e7                                      ldr r0, [r8, r6]
0059a320  06 30 88 e7                                      str r3, [r8, r6]
0059a324  04 60 86 e2                                      add r6, r6, #4
0059a328  00 00 50 e3                                      cmp r0, #0
0059a32c  00 00 00 0a                                      beq #0x59a334
0059a330  93 0c f6 eb                                      bl #0x31d584
0059a334  01 70 57 e2                                      subs r7, r7, #1
0059a338  f2 ff ff 1a                                      bne #0x59a308
0059a33c  05 81 88 e0                                      add r8, r8, r5, lsl #2
0059a340  08 00 a0 e1                                      mov r0, r8
0059a344  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
