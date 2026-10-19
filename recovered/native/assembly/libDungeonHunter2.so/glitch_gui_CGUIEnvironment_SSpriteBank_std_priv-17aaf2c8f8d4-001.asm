; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00535fb4, declared_size=128, range_size=128, mode=arm
; class-group: glitch::gui::CGUIEnvironment::SSpriteBank* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch3gui15CGUIEnvironment11SSpriteBankES5_iEET0_T_S7_S6_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::gui::CGUIEnvironment::SSpriteBank* std::priv::__ucopy<glitch::gui::CGUIEnvironment::SSpriteBank*, glitch::gui::CGUIEnvironment::SSpriteBank*, int>(glitch::gui::CGUIEnvironment::SSpriteBank*, glitch::gui::CGUIEnvironment::SSpriteBank*, glitch::gui::CGUIEnvironment::SSpriteBank*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00535fb4  01 30 60 e0                                      rsb r3, r0, r1
00535fb8  43 31 a0 e1                                      asr r3, r3, #2
00535fbc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00535fc0  83 71 83 e0                                      add r7, r3, r3, lsl #3
00535fc4  00 50 a0 e1                                      mov r5, r0
00535fc8  07 73 87 e0                                      add r7, r7, r7, lsl #6
00535fcc  02 80 a0 e1                                      mov r8, r2
00535fd0  87 71 83 e0                                      add r7, r3, r7, lsl #3
00535fd4  87 77 87 e0                                      add r7, r7, r7, lsl #15
00535fd8  87 71 83 e0                                      add r7, r3, r7, lsl #3
00535fdc  00 70 67 e2                                      rsb r7, r7, #0
00535fe0  00 00 57 e3                                      cmp r7, #0
00535fe4  07 60 a0 c1                                      movgt r6, r7
00535fe8  02 40 a0 c1                                      movgt r4, r2
00535fec  0e 00 00 da                                      ble #0x53602c
00535ff0  10 40 84 e5                                      str r4, [r4, #0x10]
00535ff4  14 40 84 e5                                      str r4, [r4, #0x14]
00535ff8  04 00 a0 e1                                      mov r0, r4
00535ffc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00536000  10 20 95 e5                                      ldr r2, [r5, #0x10]
00536004  fa bf f7 eb                                      bl #0x325ff4
00536008  18 30 95 e5                                      ldr r3, [r5, #0x18]
0053600c  01 60 56 e2                                      subs r6, r6, #1
00536010  1c 50 85 e2                                      add r5, r5, #0x1c
00536014  18 30 84 e5                                      str r3, [r4, #0x18]
00536018  1c 40 84 e2                                      add r4, r4, #0x1c
0053601c  f3 ff ff 1a                                      bne #0x535ff0
00536020  1c 00 a0 e3                                      mov r0, #0x1c
00536024  90 87 20 e0                                      mla r0, r0, r7, r8
00536028  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0053602c  02 00 a0 e1                                      mov r0, r2
00536030  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
