; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005898cc, declared_size=100, range_size=100, mode=arm
; class-group: boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>* std::priv
; alias: _ZNSt4priv6__copyIPN5boost13intrusive_ptrIN6glitch5scene17CAppendMeshBufferEEES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>* std::priv::__copy<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, int>(boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005898cc  01 10 60 e0                                      rsb r1, r0, r1
005898d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005898d4  41 51 a0 e1                                      asr r5, r1, #2
005898d8  00 00 55 e3                                      cmp r5, #0
005898dc  00 40 a0 e1                                      mov r4, r0
005898e0  02 80 a0 e1                                      mov r8, r2
005898e4  0f 00 00 da                                      ble #0x589928
005898e8  05 70 a0 e1                                      mov r7, r5
005898ec  00 60 a0 e3                                      mov r6, #0
005898f0  06 30 94 e7                                      ldr r3, [r4, r6]
005898f4  00 00 53 e3                                      cmp r3, #0
005898f8  04 20 93 15                                      ldrne r2, [r3, #4]
005898fc  01 20 82 12                                      addne r2, r2, #1
00589900  04 20 83 15                                      strne r2, [r3, #4]
00589904  06 00 98 e7                                      ldr r0, [r8, r6]
00589908  06 30 88 e7                                      str r3, [r8, r6]
0058990c  04 60 86 e2                                      add r6, r6, #4
00589910  00 00 50 e3                                      cmp r0, #0
00589914  00 00 00 0a                                      beq #0x58991c
00589918  19 4f f6 eb                                      bl #0x31d584
0058991c  01 70 57 e2                                      subs r7, r7, #1
00589920  f2 ff ff 1a                                      bne #0x5898f0
00589924  05 81 88 e0                                      add r8, r8, r5, lsl #2
00589928  08 00 a0 e1                                      mov r0, r8
0058992c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
