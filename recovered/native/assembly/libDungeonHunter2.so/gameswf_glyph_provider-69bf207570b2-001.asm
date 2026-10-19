; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x007d043c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider12get_char_defEtPKcbbiPNS_4rectEPf
; demangled: gameswf::glyph_provider::get_char_def(unsigned short, char const*, bool, bool, int, gameswf::rect*, float*)
; decoder-mode: arm
007d043c  00 00 a0 e3                                      mov r0, #0
007d0440  1e ff 2f e1                                      bx lr

; FUNCTION 0x007d0470, declared_size=272, range_size=272, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider17cubic_to_callbackEP10FT_Vector_S2_S2_Pv
; demangled: gameswf::glyph_provider::cubic_to_callback(FT_Vector_*, FT_Vector_*, FT_Vector_*, void*)
; decoder-mode: arm
007d0470  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007d0474  00 70 90 e5                                      ldr r7, [r0]
007d0478  14 d0 4d e2                                      sub sp, sp, #0x14
007d047c  00 c0 a0 e1                                      mov ip, r0
007d0480  07 00 a0 e1                                      mov r0, r7
007d0484  04 50 9c e5                                      ldr r5, [ip, #4]
007d0488  04 40 93 e5                                      ldr r4, [r3, #4]
007d048c  20 a0 93 e5                                      ldr sl, [r3, #0x20]
007d0490  02 80 a0 e1                                      mov r8, r2
007d0494  01 60 a0 e1                                      mov r6, r1
007d0498  24 fa ec eb                                      bl #0x30ed30
007d049c  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007d04a0  00 00 96 e5                                      ldr r0, [r6]
007d04a4  00 00 67 e0                                      rsb r0, r7, r0
007d04a8  20 fa ec eb                                      bl #0x30ed30
007d04ac  ff 35 a0 e3                                      mov r3, #0x3fc00000
007d04b0  00 20 a0 e3                                      mov r2, #0
007d04b4  02 36 83 e2                                      add r3, r3, #0x200000
007d04b8  7d f9 ec eb                                      bl #0x30eab4
007d04bc  00 20 a0 e1                                      mov r2, r0
007d04c0  01 30 a0 e1                                      mov r3, r1
007d04c4  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007d04c8  9d f9 ec eb                                      bl #0x30eb44
007d04cc  73 f8 ec eb                                      bl #0x30e6a0
007d04d0  00 10 a0 e1                                      mov r1, r0
007d04d4  04 00 a0 e1                                      mov r0, r4
007d04d8  23 fa ec eb                                      bl #0x30ed6c
007d04dc  00 70 a0 e1                                      mov r7, r0
007d04e0  05 00 a0 e1                                      mov r0, r5
007d04e4  11 fa ec eb                                      bl #0x30ed30
007d04e8  f8 00 cd e1                                      strd r0, r1, [sp, #8]
007d04ec  04 00 96 e5                                      ldr r0, [r6, #4]
007d04f0  00 00 65 e0                                      rsb r0, r5, r0
007d04f4  0d fa ec eb                                      bl #0x30ed30
007d04f8  ff 35 a0 e3                                      mov r3, #0x3fc00000
007d04fc  00 20 a0 e3                                      mov r2, #0
007d0500  02 36 83 e2                                      add r3, r3, #0x200000
007d0504  6a f9 ec eb                                      bl #0x30eab4
007d0508  00 20 a0 e1                                      mov r2, r0
007d050c  01 30 a0 e1                                      mov r3, r1
007d0510  d8 00 cd e1                                      ldrd r0, r1, [sp, #8]
007d0514  8a f9 ec eb                                      bl #0x30eb44
007d0518  60 f8 ec eb                                      bl #0x30e6a0
007d051c  02 11 80 e2                                      add r1, r0, #0x80000000
007d0520  04 00 a0 e1                                      mov r0, r4
007d0524  10 fa ec eb                                      bl #0x30ed6c
007d0528  00 60 a0 e1                                      mov r6, r0
007d052c  00 00 98 e5                                      ldr r0, [r8]
007d0530  0b f9 ec eb                                      bl #0x30e964
007d0534  00 10 a0 e1                                      mov r1, r0
007d0538  04 00 a0 e1                                      mov r0, r4
007d053c  0a fa ec eb                                      bl #0x30ed6c
007d0540  00 50 a0 e1                                      mov r5, r0
007d0544  04 00 98 e5                                      ldr r0, [r8, #4]
007d0548  00 00 60 e2                                      rsb r0, r0, #0
007d054c  04 f9 ec eb                                      bl #0x30e964
007d0550  00 10 a0 e1                                      mov r1, r0
007d0554  04 00 a0 e1                                      mov r0, r4
007d0558  03 fa ec eb                                      bl #0x30ed6c
007d055c  07 10 a0 e1                                      mov r1, r7
007d0560  00 00 8d e5                                      str r0, [sp]
007d0564  06 20 a0 e1                                      mov r2, r6
007d0568  0a 00 a0 e1                                      mov r0, sl
007d056c  05 30 a0 e1                                      mov r3, r5
007d0570  c9 e1 ff eb                                      bl #0x7c8c9c
007d0574  00 00 a0 e3                                      mov r0, #0
007d0578  14 d0 8d e2                                      add sp, sp, #0x14
007d057c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007d0580, declared_size=156, range_size=156, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider17conic_to_callbackEP10FT_Vector_S2_Pv
; demangled: gameswf::glyph_provider::conic_to_callback(FT_Vector_*, FT_Vector_*, void*)
; decoder-mode: arm
007d0580  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
007d0584  04 50 92 e5                                      ldr r5, [r2, #4]
007d0588  0c d0 4d e2                                      sub sp, sp, #0xc
007d058c  00 40 a0 e1                                      mov r4, r0
007d0590  00 00 90 e5                                      ldr r0, [r0]
007d0594  20 80 92 e5                                      ldr r8, [r2, #0x20]
007d0598  01 60 a0 e1                                      mov r6, r1
007d059c  f0 f8 ec eb                                      bl #0x30e964
007d05a0  05 10 a0 e1                                      mov r1, r5
007d05a4  f0 f9 ec eb                                      bl #0x30ed6c
007d05a8  00 a0 a0 e1                                      mov sl, r0
007d05ac  04 00 94 e5                                      ldr r0, [r4, #4]
007d05b0  00 00 60 e2                                      rsb r0, r0, #0
007d05b4  ea f8 ec eb                                      bl #0x30e964
007d05b8  00 10 a0 e1                                      mov r1, r0
007d05bc  05 00 a0 e1                                      mov r0, r5
007d05c0  e9 f9 ec eb                                      bl #0x30ed6c
007d05c4  00 70 a0 e1                                      mov r7, r0
007d05c8  00 00 96 e5                                      ldr r0, [r6]
007d05cc  e4 f8 ec eb                                      bl #0x30e964
007d05d0  00 10 a0 e1                                      mov r1, r0
007d05d4  05 00 a0 e1                                      mov r0, r5
007d05d8  e3 f9 ec eb                                      bl #0x30ed6c
007d05dc  00 40 a0 e1                                      mov r4, r0
007d05e0  04 00 96 e5                                      ldr r0, [r6, #4]
007d05e4  00 00 60 e2                                      rsb r0, r0, #0
007d05e8  dd f8 ec eb                                      bl #0x30e964
007d05ec  00 10 a0 e1                                      mov r1, r0
007d05f0  05 00 a0 e1                                      mov r0, r5
007d05f4  dc f9 ec eb                                      bl #0x30ed6c
007d05f8  0a 10 a0 e1                                      mov r1, sl
007d05fc  00 00 8d e5                                      str r0, [sp]
007d0600  07 20 a0 e1                                      mov r2, r7
007d0604  08 00 a0 e1                                      mov r0, r8
007d0608  04 30 a0 e1                                      mov r3, r4
007d060c  a2 e1 ff eb                                      bl #0x7c8c9c
007d0610  00 00 a0 e3                                      mov r0, #0
007d0614  0c d0 8d e2                                      add sp, sp, #0xc
007d0618  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}

; FUNCTION 0x007d061c, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider16line_to_callbackEP10FT_Vector_Pv
; demangled: gameswf::glyph_provider::line_to_callback(FT_Vector_*, void*)
; decoder-mode: arm
007d061c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d0620  04 40 91 e5                                      ldr r4, [r1, #4]
007d0624  00 50 a0 e1                                      mov r5, r0
007d0628  00 00 90 e5                                      ldr r0, [r0]
007d062c  20 70 91 e5                                      ldr r7, [r1, #0x20]
007d0630  cb f8 ec eb                                      bl #0x30e964
007d0634  04 10 a0 e1                                      mov r1, r4
007d0638  cb f9 ec eb                                      bl #0x30ed6c
007d063c  00 60 a0 e1                                      mov r6, r0
007d0640  04 00 95 e5                                      ldr r0, [r5, #4]
007d0644  00 00 60 e2                                      rsb r0, r0, #0
007d0648  c5 f8 ec eb                                      bl #0x30e964
007d064c  00 10 a0 e1                                      mov r1, r0
007d0650  04 00 a0 e1                                      mov r0, r4
007d0654  c4 f9 ec eb                                      bl #0x30ed6c
007d0658  06 10 a0 e1                                      mov r1, r6
007d065c  00 20 a0 e1                                      mov r2, r0
007d0660  07 00 a0 e1                                      mov r0, r7
007d0664  62 e1 ff eb                                      bl #0x7c8bf4
007d0668  00 00 a0 e3                                      mov r0, #0
007d066c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d0670, declared_size=84, range_size=84, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider16move_to_callbackEP10FT_Vector_Pv
; demangled: gameswf::glyph_provider::move_to_callback(FT_Vector_*, void*)
; decoder-mode: arm
007d0670  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d0674  04 40 91 e5                                      ldr r4, [r1, #4]
007d0678  00 50 a0 e1                                      mov r5, r0
007d067c  00 00 90 e5                                      ldr r0, [r0]
007d0680  20 70 91 e5                                      ldr r7, [r1, #0x20]
007d0684  b6 f8 ec eb                                      bl #0x30e964
007d0688  04 10 a0 e1                                      mov r1, r4
007d068c  b6 f9 ec eb                                      bl #0x30ed6c
007d0690  00 60 a0 e1                                      mov r6, r0
007d0694  04 00 95 e5                                      ldr r0, [r5, #4]
007d0698  00 00 60 e2                                      rsb r0, r0, #0
007d069c  b0 f8 ec eb                                      bl #0x30e964
007d06a0  00 10 a0 e1                                      mov r1, r0
007d06a4  04 00 a0 e1                                      mov r0, r4
007d06a8  af f9 ec eb                                      bl #0x30ed6c
007d06ac  06 10 a0 e1                                      mov r1, r6
007d06b0  00 20 a0 e1                                      mov r2, r0
007d06b4  07 00 a0 e1                                      mov r0, r7
007d06b8  a8 e0 ff eb                                      bl #0x7c8960
007d06bc  00 00 a0 e3                                      mov r0, #0
007d06c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d06c4, declared_size=208, range_size=208, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider11draw_bitmapERK10FT_Bitmap_
; demangled: gameswf::glyph_provider::draw_bitmap(FT_Bitmap_ const&)
; decoder-mode: arm
007d06c4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d06c8  08 30 91 e5                                      ldr r3, [r1, #8]
007d06cc  01 40 a0 e1                                      mov r4, r1
007d06d0  01 00 a0 e3                                      mov r0, #1
007d06d4  80 00 a0 e1                                      lsl r0, r0, #1
007d06d8  03 00 50 e1                                      cmp r0, r3
007d06dc  03 00 50 a3                                      cmpge r0, #3
007d06e0  fb ff ff da                                      ble #0x7d06d4
007d06e4  00 30 94 e5                                      ldr r3, [r4]
007d06e8  01 00 53 e3                                      cmp r3, #1
007d06ec  01 10 a0 d3                                      movle r1, #1
007d06f0  03 00 00 da                                      ble #0x7d0704
007d06f4  01 10 a0 e3                                      mov r1, #1
007d06f8  81 10 a0 e1                                      lsl r1, r1, #1
007d06fc  03 00 51 e1                                      cmp r1, r3
007d0700  fc ff ff ba                                      blt #0x7d06f8
007d0704  5e 95 ff eb                                      bl #0x7b5c84
007d0708  10 30 90 e5                                      ldr r3, [r0, #0x10]
007d070c  0c 20 90 e5                                      ldr r2, [r0, #0xc]
007d0710  00 50 a0 e1                                      mov r5, r0
007d0714  00 10 a0 e3                                      mov r1, #0
007d0718  92 03 02 e0                                      mul r2, r2, r3
007d071c  08 00 90 e5                                      ldr r0, [r0, #8]
007d0720  4e f7 ec eb                                      bl #0x30e460
007d0724  00 30 94 e5                                      ldr r3, [r4]
007d0728  00 00 53 e3                                      cmp r3, #0
007d072c  16 00 00 da                                      ble #0x7d078c
007d0730  08 70 94 e5                                      ldr r7, [r4, #8]
007d0734  14 00 95 e5                                      ldr r0, [r5, #0x14]
007d0738  00 60 a0 e3                                      mov r6, #0
007d073c  04 10 94 e5                                      ldr r1, [r4, #4]
007d0740  0c c0 94 e5                                      ldr ip, [r4, #0xc]
007d0744  08 20 95 e5                                      ldr r2, [r5, #8]
007d0748  00 00 51 e3                                      cmp r1, #0
007d074c  08 00 00 da                                      ble #0x7d0774
007d0750  96 c7 2c e0                                      mla ip, r6, r7, ip
007d0754  96 20 20 e0                                      mla r0, r6, r0, r2
007d0758  00 30 a0 e3                                      mov r3, #0
007d075c  03 20 dc e7                                      ldrb r2, [ip, r3]
007d0760  03 20 c0 e7                                      strb r2, [r0, r3]
007d0764  01 30 83 e2                                      add r3, r3, #1
007d0768  01 00 53 e1                                      cmp r3, r1
007d076c  fa ff ff 1a                                      bne #0x7d075c
007d0770  00 30 94 e5                                      ldr r3, [r4]
007d0774  01 60 86 e2                                      add r6, r6, #1
007d0778  06 00 53 e1                                      cmp r3, r6
007d077c  02 00 00 da                                      ble #0x7d078c
007d0780  08 70 94 e5                                      ldr r7, [r4, #8]
007d0784  14 00 95 e5                                      ldr r0, [r5, #0x14]
007d0788  eb ff ff ea                                      b #0x7d073c
007d078c  05 00 a0 e1                                      mov r0, r5
007d0790  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x007d0dfc, declared_size=244, range_size=244, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_providerC1Eiibf
; demangled: gameswf::glyph_provider::glyph_provider(int, int, bool, float)
; decoder-mode: arm
007d0dfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d0e00  1c e0 90 e5                                      ldr lr, [r0, #0x1c]
007d0e04  08 d0 4d e2                                      sub sp, sp, #8
007d0e08  00 c0 e0 e3                                      mvn ip, #0
007d0e0c  20 70 9d e5                                      ldr r7, [sp, #0x20]
007d0e10  1c e0 d7 e7                                      bfi lr, ip, #0, #0x18
007d0e14  2e 5c a0 e1                                      lsr r5, lr, #0x18
007d0e18  00 c0 a0 e3                                      mov ip, #0
007d0e1c  1c 50 c0 e7                                      bfi r5, ip, #0, #1
007d0e20  01 60 a0 e3                                      mov r6, #1
007d0e24  04 70 80 e5                                      str r7, [r0, #4]
007d0e28  08 30 c0 e5                                      strb r3, [r0, #8]
007d0e2c  1c e0 80 e5                                      str lr, [r0, #0x1c]
007d0e30  28 c0 80 e5                                      str ip, [r0, #0x28]
007d0e34  1f 50 c0 e5                                      strb r5, [r0, #0x1f]
007d0e38  00 c0 80 e5                                      str ip, [r0]
007d0e3c  0c 60 c0 e5                                      strb r6, [r0, #0xc]
007d0e40  0d c0 c0 e5                                      strb ip, [r0, #0xd]
007d0e44  20 c0 80 e5                                      str ip, [r0, #0x20]
007d0e48  24 c0 80 e5                                      str ip, [r0, #0x24]
007d0e4c  00 40 a0 e1                                      mov r4, r0
007d0e50  01 70 a0 e1                                      mov r7, r1
007d0e54  02 80 a0 e1                                      mov r8, r2
007d0e58  2a f2 fc eb                                      bl #0x70d708
007d0e5c  80 30 9f e5                                      ldr r3, [pc, #0x80]
007d0e60  00 50 50 e2                                      subs r5, r0, #0
007d0e64  03 30 8f e0                                      add r3, pc, r3
007d0e68  14 00 00 1a                                      bne #0x7d0ec0
007d0e6c  00 00 58 e3                                      cmp r8, #0
007d0e70  00 00 57 c3                                      cmpgt r7, #0
007d0e74  0e 00 00 da                                      ble #0x7d0eb4
007d0e78  05 10 a0 e1                                      mov r1, r5
007d0e7c  58 00 a0 e3                                      mov r0, #0x58
007d0e80  48 07 fe eb                                      bl #0x752ba8
007d0e84  07 10 a0 e1                                      mov r1, r7
007d0e88  00 60 a0 e1                                      mov r6, r0
007d0e8c  08 20 a0 e1                                      mov r2, r8
007d0e90  04 30 a0 e3                                      mov r3, #4
007d0e94  00 50 8d e5                                      str r5, [sp]
007d0e98  c8 0c ff eb                                      bl #0x7941c0
007d0e9c  4c 50 c6 e5                                      strb r5, [r6, #0x4c]
007d0ea0  40 50 86 e5                                      str r5, [r6, #0x40]
007d0ea4  44 50 86 e5                                      str r5, [r6, #0x44]
007d0ea8  48 50 86 e5                                      str r5, [r6, #0x48]
007d0eac  50 40 86 e5                                      str r4, [r6, #0x50]
007d0eb0  28 60 84 e5                                      str r6, [r4, #0x28]
007d0eb4  04 00 a0 e1                                      mov r0, r4
007d0eb8  08 d0 8d e2                                      add sp, sp, #8
007d0ebc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d0ec0  20 00 9f e5                                      ldr r0, [pc, #0x20]
007d0ec4  20 10 9f e5                                      ldr r1, [pc, #0x20]
007d0ec8  05 20 a0 e1                                      mov r2, r5
007d0ecc  00 00 93 e7                                      ldr r0, [r3, r0]
007d0ed0  01 10 8f e0                                      add r1, pc, r1
007d0ed4  a8 00 80 e2                                      add r0, r0, #0xa8
007d0ed8  49 f4 ec eb                                      bl #0x30e004
007d0edc  06 00 a0 e1                                      mov r0, r6
007d0ee0  d8 f3 ec eb                                      bl #0x30de48
; mapping-symbol data/literal pool
007d0ee4  2c 3c 1c 00 c0 19 00 00 b8 b0 13 00              .byte 0x2c, 0x3c, 0x1c, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb8, 0xb0, 0x13, 0x00

; FUNCTION 0x007d0ef0, declared_size=244, range_size=244, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_providerC2Eiibf
; demangled: gameswf::glyph_provider::glyph_provider(int, int, bool, float)
; decoder-mode: arm
007d0ef0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d0ef4  1c e0 90 e5                                      ldr lr, [r0, #0x1c]
007d0ef8  08 d0 4d e2                                      sub sp, sp, #8
007d0efc  00 c0 e0 e3                                      mvn ip, #0
007d0f00  20 70 9d e5                                      ldr r7, [sp, #0x20]
007d0f04  1c e0 d7 e7                                      bfi lr, ip, #0, #0x18
007d0f08  2e 5c a0 e1                                      lsr r5, lr, #0x18
007d0f0c  00 c0 a0 e3                                      mov ip, #0
007d0f10  1c 50 c0 e7                                      bfi r5, ip, #0, #1
007d0f14  01 60 a0 e3                                      mov r6, #1
007d0f18  04 70 80 e5                                      str r7, [r0, #4]
007d0f1c  08 30 c0 e5                                      strb r3, [r0, #8]
007d0f20  1c e0 80 e5                                      str lr, [r0, #0x1c]
007d0f24  28 c0 80 e5                                      str ip, [r0, #0x28]
007d0f28  1f 50 c0 e5                                      strb r5, [r0, #0x1f]
007d0f2c  00 c0 80 e5                                      str ip, [r0]
007d0f30  0c 60 c0 e5                                      strb r6, [r0, #0xc]
007d0f34  0d c0 c0 e5                                      strb ip, [r0, #0xd]
007d0f38  20 c0 80 e5                                      str ip, [r0, #0x20]
007d0f3c  24 c0 80 e5                                      str ip, [r0, #0x24]
007d0f40  00 40 a0 e1                                      mov r4, r0
007d0f44  01 70 a0 e1                                      mov r7, r1
007d0f48  02 80 a0 e1                                      mov r8, r2
007d0f4c  ed f1 fc eb                                      bl #0x70d708
007d0f50  80 30 9f e5                                      ldr r3, [pc, #0x80]
007d0f54  00 50 50 e2                                      subs r5, r0, #0
007d0f58  03 30 8f e0                                      add r3, pc, r3
007d0f5c  14 00 00 1a                                      bne #0x7d0fb4
007d0f60  00 00 58 e3                                      cmp r8, #0
007d0f64  00 00 57 c3                                      cmpgt r7, #0
007d0f68  0e 00 00 da                                      ble #0x7d0fa8
007d0f6c  05 10 a0 e1                                      mov r1, r5
007d0f70  58 00 a0 e3                                      mov r0, #0x58
007d0f74  0b 07 fe eb                                      bl #0x752ba8
007d0f78  07 10 a0 e1                                      mov r1, r7
007d0f7c  00 60 a0 e1                                      mov r6, r0
007d0f80  08 20 a0 e1                                      mov r2, r8
007d0f84  04 30 a0 e3                                      mov r3, #4
007d0f88  00 50 8d e5                                      str r5, [sp]
007d0f8c  8b 0c ff eb                                      bl #0x7941c0
007d0f90  4c 50 c6 e5                                      strb r5, [r6, #0x4c]
007d0f94  40 50 86 e5                                      str r5, [r6, #0x40]
007d0f98  44 50 86 e5                                      str r5, [r6, #0x44]
007d0f9c  48 50 86 e5                                      str r5, [r6, #0x48]
007d0fa0  50 40 86 e5                                      str r4, [r6, #0x50]
007d0fa4  28 60 84 e5                                      str r6, [r4, #0x28]
007d0fa8  04 00 a0 e1                                      mov r0, r4
007d0fac  08 d0 8d e2                                      add sp, sp, #8
007d0fb0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d0fb4  20 00 9f e5                                      ldr r0, [pc, #0x20]
007d0fb8  20 10 9f e5                                      ldr r1, [pc, #0x20]
007d0fbc  05 20 a0 e1                                      mov r2, r5
007d0fc0  00 00 93 e7                                      ldr r0, [r3, r0]
007d0fc4  01 10 8f e0                                      add r1, pc, r1
007d0fc8  a8 00 80 e2                                      add r0, r0, #0xa8
007d0fcc  0c f4 ec eb                                      bl #0x30e004
007d0fd0  06 00 a0 e1                                      mov r0, r6
007d0fd4  9b f3 ec eb                                      bl #0x30de48
; mapping-symbol data/literal pool
007d0fd8  38 3b 1c 00 c0 19 00 00 c4 af 13 00              .byte 0x38, 0x3b, 0x1c, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc4, 0xaf, 0x13, 0x00

; FUNCTION 0x007d113c, declared_size=1240, range_size=1240, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider15get_face_entityERKNS_9tu_stringEbb
; demangled: gameswf::glyph_provider::get_face_entity(gameswf::tu_string const&, bool, bool)
; decoder-mode: arm
007d113c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d1140  b0 44 9f e5                                      ldr r4, [pc, #0x4b0]
007d1144  b0 c4 9f e5                                      ldr ip, [pc, #0x4b0]
007d1148  6c d0 4d e2                                      sub sp, sp, #0x6c
007d114c  04 40 8f e0                                      add r4, pc, r4
007d1150  08 00 8d e5                                      str r0, [sp, #8]
007d1154  0c 00 94 e7                                      ldr r0, [r4, ip]
007d1158  10 c0 8d e5                                      str ip, [sp, #0x10]
007d115c  08 c0 9d e5                                      ldr ip, [sp, #8]
007d1160  02 70 a0 e1                                      mov r7, r2
007d1164  00 20 90 e5                                      ldr r2, [r0]
007d1168  0c 60 8c e2                                      add r6, ip, #0xc
007d116c  06 00 a0 e1                                      mov r0, r6
007d1170  03 a0 a0 e1                                      mov sl, r3
007d1174  64 20 8d e5                                      str r2, [sp, #0x64]
007d1178  01 80 a0 e1                                      mov r8, r1
007d117c  73 07 fe eb                                      bl #0x752f50
007d1180  00 00 57 e3                                      cmp r7, #0
007d1184  b6 00 00 1a                                      bne #0x7d1464
007d1188  00 00 5a e3                                      cmp sl, #0
007d118c  af 00 00 1a                                      bne #0x7d1450
007d1190  08 20 9d e5                                      ldr r2, [sp, #8]
007d1194  68 50 8d e2                                      add r5, sp, #0x68
007d1198  00 30 a0 e3                                      mov r3, #0
007d119c  24 20 82 e2                                      add r2, r2, #0x24
007d11a0  1c 30 25 e5                                      str r3, [r5, #-0x1c]!
007d11a4  14 20 8d e5                                      str r2, [sp, #0x14]
007d11a8  02 00 a0 e1                                      mov r0, r2
007d11ac  06 10 a0 e1                                      mov r1, r6
007d11b0  05 20 a0 e1                                      mov r2, r5
007d11b4  bc fe ff eb                                      bl #0x7d0cac
007d11b8  00 00 50 e3                                      cmp r0, #0
007d11bc  0d 00 00 0a                                      beq #0x7d11f8
007d11c0  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
007d11c4  08 00 a0 e1                                      mov r0, r8
007d11c8  00 00 50 e3                                      cmp r0, #0
007d11cc  00 00 00 0a                                      beq #0x7d11d4
007d11d0  1a 24 fe eb                                      bl #0x75a240
007d11d4  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d11d8  64 20 9d e5                                      ldr r2, [sp, #0x64]
007d11dc  08 00 a0 e1                                      mov r0, r8
007d11e0  0c 30 94 e7                                      ldr r3, [r4, ip]
007d11e4  00 30 93 e5                                      ldr r3, [r3]
007d11e8  03 00 52 e1                                      cmp r2, r3
007d11ec  00 01 00 1a                                      bne #0x7d15f4
007d11f0  6c d0 8d e2                                      add sp, sp, #0x6c
007d11f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d11f8  60 30 9d e5                                      ldr r3, [sp, #0x60]
007d11fc  d0 10 d8 e1                                      ldrsb r1, [r8]
007d1200  00 20 e0 e3                                      mvn r2, #0
007d1204  12 30 d7 e7                                      bfi r3, r2, #0, #0x18
007d1208  23 2c a0 e1                                      lsr r2, r3, #0x18
007d120c  10 20 c0 e7                                      bfi r2, r0, #0, #1
007d1210  01 00 71 e3                                      cmn r1, #1
007d1214  01 10 a0 e3                                      mov r1, #1
007d1218  60 30 8d e5                                      str r3, [sp, #0x60]
007d121c  50 10 cd e5                                      strb r1, [sp, #0x50]
007d1220  63 20 cd e5                                      strb r2, [sp, #0x63]
007d1224  51 00 cd e5                                      strb r0, [sp, #0x51]
007d1228  50 30 8d e2                                      add r3, sp, #0x50
007d122c  0c 00 98 05                                      ldreq r0, [r8, #0xc]
007d1230  0c 30 8d e5                                      str r3, [sp, #0xc]
007d1234  01 00 88 10                                      addne r0, r8, r1
007d1238  07 20 a0 e1                                      mov r2, r7
007d123c  0a 30 a0 e1                                      mov r3, sl
007d1240  0c 10 9d e5                                      ldr r1, [sp, #0xc]
007d1244  66 ff ff eb                                      bl #0x7d0fe4
007d1248  00 00 50 e3                                      cmp r0, #0
007d124c  57 00 00 0a                                      beq #0x7d13b0
007d1250  08 c0 9d e5                                      ldr ip, [sp, #8]
007d1254  24 a0 9c e5                                      ldr sl, [ip, #0x24]
007d1258  00 00 5a e3                                      cmp sl, #0
007d125c  08 00 00 0a                                      beq #0x7d1284
007d1260  04 30 9a e5                                      ldr r3, [sl, #4]
007d1264  00 00 53 e3                                      cmp r3, #0
007d1268  00 70 a0 b3                                      movlt r7, #0
007d126c  69 00 00 aa                                      bge #0x7d1418
007d1270  14 20 9d e5                                      ldr r2, [sp, #0x14]
007d1274  00 00 52 e3                                      cmp r2, #0
007d1278  01 00 00 0a                                      beq #0x7d1284
007d127c  00 00 5a e3                                      cmp sl, #0
007d1280  a7 00 00 1a                                      bne #0x7d1524
007d1284  08 c0 9d e5                                      ldr ip, [sp, #8]
007d1288  00 20 a0 e3                                      mov r2, #0
007d128c  08 30 dc e5                                      ldrb r3, [ip, #8]
007d1290  40 20 8d e5                                      str r2, [sp, #0x40]
007d1294  02 00 53 e1                                      cmp r3, r2
007d1298  76 00 00 0a                                      beq #0x7d1478
007d129c  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007d12a0  18 80 8d e2                                      add r8, sp, #0x18
007d12a4  08 00 a0 e1                                      mov r0, r8
007d12a8  01 00 73 e3                                      cmn r3, #1
007d12ac  0c 20 9d 15                                      ldrne r2, [sp, #0xc]
007d12b0  5c 10 9d 05                                      ldreq r1, [sp, #0x5c]
007d12b4  01 10 82 12                                      addne r1, r2, #1
007d12b8  40 23 9f e5                                      ldr r2, [pc, #0x340]
007d12bc  02 20 8f e0                                      add r2, pc, r2
007d12c0  80 95 ff eb                                      bl #0x7b68c8
007d12c4  18 00 9d e5                                      ldr r0, [sp, #0x18]
007d12c8  00 00 50 e3                                      cmp r0, #0
007d12cc  88 00 00 0a                                      beq #0x7d14f4
007d12d0  0f e0 a0 e1                                      mov lr, pc
007d12d4  2c f0 9d e5                                      ldr pc, [sp, #0x2c]
007d12d8  18 00 9d e5                                      ldr r0, [sp, #0x18]
007d12dc  0f e0 a0 e1                                      mov lr, pc
007d12e0  30 f0 9d e5                                      ldr pc, [sp, #0x30]
007d12e4  18 10 9d e5                                      ldr r1, [sp, #0x18]
007d12e8  00 a0 a0 e1                                      mov sl, r0
007d12ec  00 00 a0 e3                                      mov r0, #0
007d12f0  0f e0 a0 e1                                      mov lr, pc
007d12f4  28 f0 9d e5                                      ldr pc, [sp, #0x28]
007d12f8  00 10 a0 e3                                      mov r1, #0
007d12fc  10 00 a0 e3                                      mov r0, #0x10
007d1300  28 06 fe eb                                      bl #0x752ba8
007d1304  00 70 a0 e1                                      mov r7, r0
007d1308  df 93 ff eb                                      bl #0x7b628c
007d130c  0a 10 a0 e1                                      mov r1, sl
007d1310  07 00 a0 e1                                      mov r0, r7
007d1314  d0 26 fe eb                                      bl #0x75ae5c
007d1318  08 00 a0 e1                                      mov r0, r8
007d131c  07 10 a0 e1                                      mov r1, r7
007d1320  00 20 e0 e3                                      mvn r2, #0
007d1324  d5 95 ff eb                                      bl #0x7b6a80
007d1328  08 30 9d e5                                      ldr r3, [sp, #8]
007d132c  08 10 97 e5                                      ldr r1, [r7, #8]
007d1330  0a 20 a0 e1                                      mov r2, sl
007d1334  00 00 93 e5                                      ldr r0, [r3]
007d1338  40 c0 8d e2                                      add ip, sp, #0x40
007d133c  00 30 a0 e3                                      mov r3, #0
007d1340  00 c0 8d e5                                      str ip, [sp]
007d1344  51 ed fc eb                                      bl #0x70c890
007d1348  40 a0 9d e5                                      ldr sl, [sp, #0x40]
007d134c  00 00 5a e3                                      cmp sl, #0
007d1350  62 00 00 0a                                      beq #0x7d14e0
007d1354  00 10 a0 e3                                      mov r1, #0
007d1358  2c 00 a0 e3                                      mov r0, #0x2c
007d135c  11 06 fe eb                                      bl #0x752ba8
007d1360  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d1364  07 20 a0 e1                                      mov r2, r7
007d1368  00 a0 a0 e1                                      mov sl, r0
007d136c  40 10 9d e5                                      ldr r1, [sp, #0x40]
007d1370  60 fe ff eb                                      bl #0x7d0cf8
007d1374  05 00 a0 e1                                      mov r0, r5
007d1378  0a 10 a0 e1                                      mov r1, sl
007d137c  16 fd ff eb                                      bl #0x7d07dc
007d1380  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d1384  06 10 a0 e1                                      mov r1, r6
007d1388  05 20 a0 e1                                      mov r2, r5
007d138c  42 fd ff eb                                      bl #0x7d089c
007d1390  08 00 a0 e1                                      mov r0, r8
007d1394  93 95 ff eb                                      bl #0x7b69e8
007d1398  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
007d139c  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007d13a0  01 00 73 e3                                      cmn r3, #1
007d13a4  16 00 00 0a                                      beq #0x7d1404
007d13a8  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007d13ac  85 ff ff ea                                      b #0x7d11c8
007d13b0  d0 30 d8 e1                                      ldrsb r3, [r8]
007d13b4  48 02 9f e5                                      ldr r0, [pc, #0x248]
007d13b8  01 00 73 e3                                      cmn r3, #1
007d13bc  01 10 88 12                                      addne r1, r8, #1
007d13c0  0c 10 98 05                                      ldreq r1, [r8, #0xc]
007d13c4  00 00 8f e0                                      add r0, pc, r0
007d13c8  6d 3f fe eb                                      bl #0x761184
007d13cc  00 80 a0 e3                                      mov r8, #0
007d13d0  68 20 8d e2                                      add r2, sp, #0x68
007d13d4  20 80 22 e5                                      str r8, [r2, #-0x20]!
007d13d8  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d13dc  06 10 a0 e1                                      mov r1, r6
007d13e0  2d fd ff eb                                      bl #0x7d089c
007d13e4  48 00 9d e5                                      ldr r0, [sp, #0x48]
007d13e8  08 00 50 e1                                      cmp r0, r8
007d13ec  00 80 a0 01                                      moveq r8, r0
007d13f0  00 00 00 0a                                      beq #0x7d13f8
007d13f4  91 23 fe eb                                      bl #0x75a240
007d13f8  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007d13fc  01 00 73 e3                                      cmn r3, #1
007d1400  e8 ff ff 1a                                      bne #0x7d13a8
007d1404  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
007d1408  58 10 9d e5                                      ldr r1, [sp, #0x58]
007d140c  c9 05 fe eb                                      bl #0x752b38
007d1410  4c 00 9d e5                                      ldr r0, [sp, #0x4c]
007d1414  6b ff ff ea                                      b #0x7d11c8
007d1418  08 20 a0 e3                                      mov r2, #8
007d141c  00 70 a0 e3                                      mov r7, #0
007d1420  02 10 9a e7                                      ldr r1, [sl, r2]
007d1424  02 00 8a e0                                      add r0, sl, r2
007d1428  02 00 71 e3                                      cmn r1, #2
007d142c  02 00 00 0a                                      beq #0x7d143c
007d1430  04 10 90 e5                                      ldr r1, [r0, #4]
007d1434  01 00 71 e3                                      cmn r1, #1
007d1438  8c ff ff 1a                                      bne #0x7d1270
007d143c  01 70 87 e2                                      add r7, r7, #1
007d1440  03 00 57 e1                                      cmp r7, r3
007d1444  20 20 82 e2                                      add r2, r2, #0x20
007d1448  f4 ff ff da                                      ble #0x7d1420
007d144c  87 ff ff ea                                      b #0x7d1270
007d1450  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
007d1454  06 00 a0 e1                                      mov r0, r6
007d1458  01 10 8f e0                                      add r1, pc, r1
007d145c  5a 03 fe eb                                      bl #0x7521cc
007d1460  4a ff ff ea                                      b #0x7d1190
007d1464  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
007d1468  06 00 a0 e1                                      mov r0, r6
007d146c  01 10 8f e0                                      add r1, pc, r1
007d1470  55 03 fe eb                                      bl #0x7521cc
007d1474  43 ff ff ea                                      b #0x7d1188
007d1478  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007d147c  08 20 9d e5                                      ldr r2, [sp, #8]
007d1480  01 00 73 e3                                      cmn r3, #1
007d1484  0c 30 9d 15                                      ldrne r3, [sp, #0xc]
007d1488  5c 10 9d 05                                      ldreq r1, [sp, #0x5c]
007d148c  00 00 92 e5                                      ldr r0, [r2]
007d1490  01 10 83 12                                      addne r1, r3, #1
007d1494  00 20 a0 e3                                      mov r2, #0
007d1498  40 30 8d e2                                      add r3, sp, #0x40
007d149c  0a ed fc eb                                      bl #0x70c8cc
007d14a0  00 10 a0 e3                                      mov r1, #0
007d14a4  2c 00 a0 e3                                      mov r0, #0x2c
007d14a8  be 05 fe eb                                      bl #0x752ba8
007d14ac  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007d14b0  00 70 a0 e1                                      mov r7, r0
007d14b4  40 10 9d e5                                      ldr r1, [sp, #0x40]
007d14b8  2f fe ff eb                                      bl #0x7d0d7c
007d14bc  05 00 a0 e1                                      mov r0, r5
007d14c0  07 10 a0 e1                                      mov r1, r7
007d14c4  c4 fc ff eb                                      bl #0x7d07dc
007d14c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d14cc  06 10 a0 e1                                      mov r1, r6
007d14d0  05 20 a0 e1                                      mov r2, r5
007d14d4  f0 fc ff eb                                      bl #0x7d089c
007d14d8  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
007d14dc  ae ff ff ea                                      b #0x7d139c
007d14e0  07 00 a0 e1                                      mov r0, r7
007d14e4  17 94 ff eb                                      bl #0x7b6548
007d14e8  07 00 a0 e1                                      mov r0, r7
007d14ec  0a 10 a0 e1                                      mov r1, sl
007d14f0  90 05 fe eb                                      bl #0x752b38
007d14f4  08 00 a0 e1                                      mov r0, r8
007d14f8  3a 95 ff eb                                      bl #0x7b69e8
007d14fc  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007d1500  01 00 73 e3                                      cmn r3, #1
007d1504  5c 10 9d 05                                      ldreq r1, [sp, #0x5c]
007d1508  0c c0 9d 15                                      ldrne ip, [sp, #0xc]
007d150c  01 10 8c 12                                      addne r1, ip, #1
007d1510  f8 00 9f e5                                      ldr r0, [pc, #0xf8]
007d1514  00 00 8f e0                                      add r0, pc, r0
007d1518  19 3f fe eb                                      bl #0x761184
007d151c  4c 80 9d e5                                      ldr r8, [sp, #0x4c]
007d1520  9d ff ff ea                                      b #0x7d139c
007d1524  0c 30 9d e5                                      ldr r3, [sp, #0xc]
007d1528  04 90 9a e5                                      ldr sb, [sl, #4]
007d152c  01 b0 83 e2                                      add fp, r3, #1
007d1530  07 00 59 e1                                      cmp sb, r7
007d1534  52 ff ff ba                                      blt #0x7d1284
007d1538  87 32 8a e0                                      add r3, sl, r7, lsl #5
007d153c  24 80 93 e5                                      ldr r8, [r3, #0x24]
007d1540  0c 20 9d e5                                      ldr r2, [sp, #0xc]
007d1544  0c 30 88 e2                                      add r3, r8, #0xc
007d1548  03 00 52 e1                                      cmp r2, r3
007d154c  1b 00 00 0a                                      beq #0x7d15c0
007d1550  dc 30 d8 e1                                      ldrsb r3, [r8, #0xc]
007d1554  01 00 73 e3                                      cmn r3, #1
007d1558  d0 35 dd e1                                      ldrsb r3, [sp, #0x50]
007d155c  0d 00 88 12                                      addne r0, r8, #0xd
007d1560  18 00 98 05                                      ldreq r0, [r8, #0x18]
007d1564  01 00 73 e3                                      cmn r3, #1
007d1568  0b 10 a0 11                                      movne r1, fp
007d156c  5c 10 9d 05                                      ldreq r1, [sp, #0x5c]
007d1570  69 f3 ec eb                                      bl #0x30e31c
007d1574  00 00 50 e3                                      cmp r0, #0
007d1578  10 00 00 0a                                      beq #0x7d15c0
007d157c  01 70 87 e2                                      add r7, r7, #1
007d1580  09 00 57 e1                                      cmp r7, sb
007d1584  e9 ff ff ca                                      bgt #0x7d1530
007d1588  87 32 a0 e1                                      lsl r3, r7, #5
007d158c  08 30 83 e2                                      add r3, r3, #8
007d1590  03 20 9a e7                                      ldr r2, [sl, r3]
007d1594  03 10 8a e0                                      add r1, sl, r3
007d1598  02 00 72 e3                                      cmn r2, #2
007d159c  02 00 00 0a                                      beq #0x7d15ac
007d15a0  04 20 91 e5                                      ldr r2, [r1, #4]
007d15a4  01 00 72 e3                                      cmn r2, #1
007d15a8  e0 ff ff 1a                                      bne #0x7d1530
007d15ac  01 70 87 e2                                      add r7, r7, #1
007d15b0  09 00 57 e1                                      cmp r7, sb
007d15b4  20 30 83 e2                                      add r3, r3, #0x20
007d15b8  f4 ff ff da                                      ble #0x7d1590
007d15bc  db ff ff ea                                      b #0x7d1530
007d15c0  00 00 58 e3                                      cmp r8, #0
007d15c4  44 80 8d e5                                      str r8, [sp, #0x44]
007d15c8  01 00 00 0a                                      beq #0x7d15d4
007d15cc  08 00 a0 e1                                      mov r0, r8
007d15d0  a3 21 fe eb                                      bl #0x759c64
007d15d4  14 00 9d e5                                      ldr r0, [sp, #0x14]
007d15d8  06 10 a0 e1                                      mov r1, r6
007d15dc  44 20 8d e2                                      add r2, sp, #0x44
007d15e0  ad fc ff eb                                      bl #0x7d089c
007d15e4  44 00 9d e5                                      ldr r0, [sp, #0x44]
007d15e8  00 00 50 e3                                      cmp r0, #0
007d15ec  80 ff ff 1a                                      bne #0x7d13f4
007d15f0  80 ff ff ea                                      b #0x7d13f8
007d15f4  45 f3 ec eb                                      bl #0x30e310
; mapping-symbol data/literal pool
007d15f8  44 39 1c 00 ac 40 00 00 e4 f4 0e 00 14 ac 13 00  .byte 0x44, 0x39, 0x1c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0xf4, 0x0e, 0x00, 0x14, 0xac, 0x13, 0x00
007d1608  a0 9c 13 00 c4 29 12 00 e4 aa 13 00              .byte 0xa0, 0x9c, 0x13, 0x00, 0xc4, 0x29, 0x12, 0x00, 0xe4, 0xaa, 0x13, 0x00

; FUNCTION 0x007d1614, declared_size=1044, range_size=1044, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_provider14get_char_imageEtRKNS_9tu_stringEbbiPNS_4rectEPf
; demangled: gameswf::glyph_provider::get_char_image(unsigned short, gameswf::tu_string const&, bool, bool, int, gameswf::rect*, float*)
; decoder-mode: arm
007d1614  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
007d1618  1c d0 4d e2                                      sub sp, sp, #0x1c
007d161c  01 50 a0 e1                                      mov r5, r1
007d1620  02 10 a0 e1                                      mov r1, r2
007d1624  03 20 a0 e1                                      mov r2, r3
007d1628  40 30 dd e5                                      ldrb r3, [sp, #0x40]
007d162c  00 40 a0 e1                                      mov r4, r0
007d1630  44 90 9d e5                                      ldr sb, [sp, #0x44]
007d1634  48 b0 9d e5                                      ldr fp, [sp, #0x48]
007d1638  bf fe ff eb                                      bl #0x7d113c
007d163c  00 60 50 e2                                      subs r6, r0, #0
007d1640  1b 00 00 0a                                      beq #0x7d16b4
007d1644  28 80 86 e2                                      add r8, r6, #0x28
007d1648  14 a0 8d e2                                      add sl, sp, #0x14
007d164c  09 38 85 e1                                      orr r3, r5, sb, lsl #16
007d1650  00 70 a0 e3                                      mov r7, #0
007d1654  08 00 a0 e1                                      mov r0, r8
007d1658  0a 10 a0 e1                                      mov r1, sl
007d165c  14 30 8d e5                                      str r3, [sp, #0x14]
007d1660  10 70 8d e5                                      str r7, [sp, #0x10]
007d1664  6b cb ff eb                                      bl #0x7c4418
007d1668  00 00 50 e3                                      cmp r0, #0
007d166c  12 00 00 ba                                      blt #0x7d16bc
007d1670  28 30 96 e5                                      ldr r3, [r6, #0x28]
007d1674  00 02 83 e0                                      add r0, r3, r0, lsl #4
007d1678  14 30 90 e5                                      ldr r3, [r0, #0x14]
007d167c  10 30 8d e5                                      str r3, [sp, #0x10]
007d1680  03 c0 a0 e1                                      mov ip, r3
007d1684  08 30 83 e2                                      add r3, r3, #8
007d1688  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
007d168c  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
007d1690  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
007d1694  04 20 9c e5                                      ldr r2, [ip, #4]
007d1698  00 20 83 e5                                      str r2, [r3]
007d169c  28 30 94 e5                                      ldr r3, [r4, #0x28]
007d16a0  00 00 53 e3                                      cmp r3, #0
007d16a4  00 00 9c 05                                      ldreq r0, [ip]
007d16a8  34 00 93 15                                      ldrne r0, [r3, #0x34]
007d16ac  1c d0 8d e2                                      add sp, sp, #0x1c
007d16b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
007d16b4  00 00 a0 e3                                      mov r0, #0
007d16b8  fb ff ff ea                                      b #0x7d16ac
007d16bc  09 00 a0 e1                                      mov r0, sb
007d16c0  a7 f4 ec eb                                      bl #0x30e964
007d16c4  04 10 94 e5                                      ldr r1, [r4, #4]
007d16c8  00 90 a0 e1                                      mov sb, r0
007d16cc  a6 f5 ec eb                                      bl #0x30ed6c
007d16d0  7d f3 ec eb                                      bl #0x30e4cc
007d16d4  07 10 a0 e1                                      mov r1, r7
007d16d8  00 20 a0 e1                                      mov r2, r0
007d16dc  24 00 96 e5                                      ldr r0, [r6, #0x24]
007d16e0  45 e4 fc eb                                      bl #0x70a7fc
007d16e4  28 30 94 e5                                      ldr r3, [r4, #0x28]
007d16e8  00 00 53 e3                                      cmp r3, #0
007d16ec  8a 00 00 0a                                      beq #0x7d191c
007d16f0  05 10 a0 e1                                      mov r1, r5
007d16f4  07 20 a0 e1                                      mov r2, r7
007d16f8  24 00 96 e5                                      ldr r0, [r6, #0x24]
007d16fc  d7 df fc eb                                      bl #0x709660
007d1700  00 50 50 e2                                      subs r5, r0, #0
007d1704  ea ff ff 1a                                      bne #0x7d16b4
007d1708  05 10 a0 e1                                      mov r1, r5
007d170c  18 00 a0 e3                                      mov r0, #0x18
007d1710  24 05 fe eb                                      bl #0x752ba8
007d1714  00 30 a0 e3                                      mov r3, #0
007d1718  00 50 80 e5                                      str r5, [r0]
007d171c  14 30 80 e5                                      str r3, [r0, #0x14]
007d1720  04 30 80 e5                                      str r3, [r0, #4]
007d1724  08 30 80 e5                                      str r3, [r0, #8]
007d1728  0c 30 80 e5                                      str r3, [r0, #0xc]
007d172c  10 30 80 e5                                      str r3, [r0, #0x10]
007d1730  10 00 8d e5                                      str r0, [sp, #0x10]
007d1734  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d1738  08 10 8d e2                                      add r1, sp, #8
007d173c  0c 00 8d e2                                      add r0, sp, #0xc
007d1740  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d1744  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d1748  3f 20 83 e2                                      add r2, r3, #0x3f
007d174c  00 00 53 e3                                      cmp r3, #0
007d1750  02 30 a0 b1                                      movlt r3, r2
007d1754  43 33 a0 e1                                      asr r3, r3, #6
007d1758  01 30 83 e2                                      add r3, r3, #1
007d175c  0c 30 8d e5                                      str r3, [sp, #0xc]
007d1760  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d1764  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d1768  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
007d176c  3f 20 83 e2                                      add r2, r3, #0x3f
007d1770  00 00 53 e3                                      cmp r3, #0
007d1774  02 30 a0 b1                                      movlt r3, r2
007d1778  43 33 a0 e1                                      asr r3, r3, #6
007d177c  01 30 83 e2                                      add r3, r3, #1
007d1780  08 30 8d e5                                      str r3, [sp, #8]
007d1784  75 07 ff eb                                      bl #0x793560
007d1788  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d178c  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d1790  18 30 93 e5                                      ldr r3, [r3, #0x18]
007d1794  3f 20 83 e2                                      add r2, r3, #0x3f
007d1798  00 00 53 e3                                      cmp r3, #0
007d179c  02 30 a0 b1                                      movlt r3, r2
007d17a0  43 03 a0 e1                                      asr r0, r3, #6
007d17a4  6e f4 ec eb                                      bl #0x30e964
007d17a8  00 50 a0 e1                                      mov r5, r0
007d17ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
007d17b0  6b f4 ec eb                                      bl #0x30e964
007d17b4  00 10 a0 e1                                      mov r1, r0
007d17b8  05 00 a0 e1                                      mov r0, r5
007d17bc  34 f5 ec eb                                      bl #0x30ec94
007d17c0  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d17c4  0c 00 83 e5                                      str r0, [r3, #0xc]
007d17c8  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d17cc  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d17d0  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
007d17d4  3f 20 83 e2                                      add r2, r3, #0x3f
007d17d8  00 00 53 e3                                      cmp r3, #0
007d17dc  02 30 a0 b1                                      movlt r3, r2
007d17e0  43 03 a0 e1                                      asr r0, r3, #6
007d17e4  5e f4 ec eb                                      bl #0x30e964
007d17e8  00 50 a0 e1                                      mov r5, r0
007d17ec  08 00 9d e5                                      ldr r0, [sp, #8]
007d17f0  5b f4 ec eb                                      bl #0x30e964
007d17f4  00 10 a0 e1                                      mov r1, r0
007d17f8  05 00 a0 e1                                      mov r0, r5
007d17fc  24 f5 ec eb                                      bl #0x30ec94
007d1800  10 30 9d e5                                      ldr r3, [sp, #0x10]
007d1804  14 00 83 e5                                      str r0, [r3, #0x14]
007d1808  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d180c  10 50 9d e5                                      ldr r5, [sp, #0x10]
007d1810  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d1814  18 70 93 e5                                      ldr r7, [r3, #0x18]
007d1818  00 00 57 e3                                      cmp r7, #0
007d181c  00 00 a0 d3                                      movle r0, #0
007d1820  09 00 00 da                                      ble #0x7d184c
007d1824  20 00 93 e5                                      ldr r0, [r3, #0x20]
007d1828  4d f4 ec eb                                      bl #0x30e964
007d182c  00 30 a0 e1                                      mov r3, r0
007d1830  07 00 a0 e1                                      mov r0, r7
007d1834  04 30 8d e5                                      str r3, [sp, #4]
007d1838  49 f4 ec eb                                      bl #0x30e964
007d183c  04 30 9d e5                                      ldr r3, [sp, #4]
007d1840  00 10 a0 e1                                      mov r1, r0
007d1844  03 00 a0 e1                                      mov r0, r3
007d1848  11 f5 ec eb                                      bl #0x30ec94
007d184c  08 00 85 e5                                      str r0, [r5, #8]
007d1850  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d1854  10 50 9d e5                                      ldr r5, [sp, #0x10]
007d1858  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d185c  1c 70 93 e5                                      ldr r7, [r3, #0x1c]
007d1860  00 00 57 e3                                      cmp r7, #0
007d1864  00 00 a0 d3                                      movle r0, #0
007d1868  09 00 00 da                                      ble #0x7d1894
007d186c  24 00 93 e5                                      ldr r0, [r3, #0x24]
007d1870  3b f4 ec eb                                      bl #0x30e964
007d1874  00 30 a0 e1                                      mov r3, r0
007d1878  07 00 a0 e1                                      mov r0, r7
007d187c  04 30 8d e5                                      str r3, [sp, #4]
007d1880  37 f4 ec eb                                      bl #0x30e964
007d1884  04 30 9d e5                                      ldr r3, [sp, #4]
007d1888  00 10 a0 e1                                      mov r1, r0
007d188c  03 00 a0 e1                                      mov r0, r3
007d1890  ff f4 ec eb                                      bl #0x30ec94
007d1894  10 00 85 e5                                      str r0, [r5, #0x10]
007d1898  10 70 9d e5                                      ldr r7, [sp, #0x10]
007d189c  18 50 8d e2                                      add r5, sp, #0x18
007d18a0  0c 10 97 e5                                      ldr r1, [r7, #0xc]
007d18a4  08 00 97 e5                                      ldr r0, [r7, #8]
007d18a8  02 11 81 e2                                      add r1, r1, #0x80000000
007d18ac  2e f5 ec eb                                      bl #0x30ed6c
007d18b0  08 00 87 e5                                      str r0, [r7, #8]
007d18b4  10 70 9d e5                                      ldr r7, [sp, #0x10]
007d18b8  14 10 97 e5                                      ldr r1, [r7, #0x14]
007d18bc  10 00 97 e5                                      ldr r0, [r7, #0x10]
007d18c0  29 f5 ec eb                                      bl #0x30ed6c
007d18c4  10 00 87 e5                                      str r0, [r7, #0x10]
007d18c8  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d18cc  08 60 35 e5                                      ldr r6, [r5, #-8]!
007d18d0  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d18d4  28 00 93 e5                                      ldr r0, [r3, #0x28]
007d18d8  21 f4 ec eb                                      bl #0x30e964
007d18dc  00 70 a0 e1                                      mov r7, r0
007d18e0  41 04 a0 e3                                      mov r0, #0x41000000
007d18e4  09 10 a0 e1                                      mov r1, sb
007d18e8  02 05 80 e2                                      add r0, r0, #0x800000
007d18ec  e8 f4 ec eb                                      bl #0x30ec94
007d18f0  00 10 a0 e1                                      mov r1, r0
007d18f4  07 00 a0 e1                                      mov r0, r7
007d18f8  1b f5 ec eb                                      bl #0x30ed6c
007d18fc  0a 10 a0 e1                                      mov r1, sl
007d1900  04 00 86 e5                                      str r0, [r6, #4]
007d1904  05 20 a0 e1                                      mov r2, r5
007d1908  08 00 a0 e1                                      mov r0, r8
007d190c  d9 cf ff eb                                      bl #0x7c5878
007d1910  10 c0 9d e5                                      ldr ip, [sp, #0x10]
007d1914  0c 30 a0 e1                                      mov r3, ip
007d1918  59 ff ff ea                                      b #0x7d1684
007d191c  05 10 a0 e1                                      mov r1, r5
007d1920  24 00 96 e5                                      ldr r0, [r6, #0x24]
007d1924  04 20 a0 e3                                      mov r2, #4
007d1928  4c df fc eb                                      bl #0x709660
007d192c  00 50 50 e2                                      subs r5, r0, #0
007d1930  5f ff ff 1a                                      bne #0x7d16b4
007d1934  05 10 a0 e1                                      mov r1, r5
007d1938  18 00 a0 e3                                      mov r0, #0x18
007d193c  99 04 fe eb                                      bl #0x752ba8
007d1940  00 20 a0 e3                                      mov r2, #0
007d1944  00 30 a0 e1                                      mov r3, r0
007d1948  00 50 80 e5                                      str r5, [r0]
007d194c  14 20 83 e5                                      str r2, [r3, #0x14]
007d1950  04 20 83 e5                                      str r2, [r3, #4]
007d1954  08 20 83 e5                                      str r2, [r3, #8]
007d1958  0c 20 83 e5                                      str r2, [r3, #0xc]
007d195c  10 20 83 e5                                      str r2, [r3, #0x10]
007d1960  10 30 8d e5                                      str r3, [sp, #0x10]
007d1964  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d1968  04 00 a0 e1                                      mov r0, r4
007d196c  54 10 93 e5                                      ldr r1, [r3, #0x54]
007d1970  4c 10 81 e2                                      add r1, r1, #0x4c
007d1974  52 fb ff eb                                      bl #0x7d06c4
007d1978  00 50 a0 e1                                      mov r5, r0
007d197c  08 20 90 e5                                      ldr r2, [r0, #8]
007d1980  10 10 95 e5                                      ldr r1, [r5, #0x10]
007d1984  0c 00 90 e5                                      ldr r0, [r0, #0xc]
007d1988  10 70 9d e5                                      ldr r7, [sp, #0x10]
007d198c  86 88 fe eb                                      bl #0x773bac
007d1990  00 10 a0 e1                                      mov r1, r0
007d1994  07 00 a0 e1                                      mov r0, r7
007d1998  68 a3 fe eb                                      bl #0x77a740
007d199c  05 00 a0 e1                                      mov r0, r5
007d19a0  a7 fa ff eb                                      bl #0x7d0444
007d19a4  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d19a8  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d19ac  50 00 93 e5                                      ldr r0, [r3, #0x50]
007d19b0  eb f3 ec eb                                      bl #0x30e964
007d19b4  10 50 9d e5                                      ldr r5, [sp, #0x10]
007d19b8  00 70 a0 e1                                      mov r7, r0
007d19bc  00 30 95 e5                                      ldr r3, [r5]
007d19c0  03 00 a0 e1                                      mov r0, r3
007d19c4  00 30 93 e5                                      ldr r3, [r3]
007d19c8  0f e0 a0 e1                                      mov lr, pc
007d19cc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
007d19d0  e3 f3 ec eb                                      bl #0x30e964
007d19d4  00 10 a0 e1                                      mov r1, r0
007d19d8  07 00 a0 e1                                      mov r0, r7
007d19dc  ac f4 ec eb                                      bl #0x30ec94
007d19e0  0c 00 85 e5                                      str r0, [r5, #0xc]
007d19e4  24 30 96 e5                                      ldr r3, [r6, #0x24]
007d19e8  54 30 93 e5                                      ldr r3, [r3, #0x54]
007d19ec  4c 00 93 e5                                      ldr r0, [r3, #0x4c]
007d19f0  db f3 ec eb                                      bl #0x30e964
007d19f4  10 50 9d e5                                      ldr r5, [sp, #0x10]
007d19f8  00 70 a0 e1                                      mov r7, r0
007d19fc  00 30 95 e5                                      ldr r3, [r5]
007d1a00  03 00 a0 e1                                      mov r0, r3
007d1a04  00 30 93 e5                                      ldr r3, [r3]
007d1a08  0f e0 a0 e1                                      mov lr, pc
007d1a0c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
007d1a10  d3 f3 ec eb                                      bl #0x30e964
007d1a14  00 10 a0 e1                                      mov r1, r0
007d1a18  07 00 a0 e1                                      mov r0, r7
007d1a1c  9c f4 ec eb                                      bl #0x30ec94
007d1a20  14 00 85 e5                                      str r0, [r5, #0x14]
007d1a24  77 ff ff ea                                      b #0x7d1808

; FUNCTION 0x007d1a7c, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_providerD2Ev
; demangled: gameswf::glyph_provider::~glyph_provider()
; decoder-mode: arm
007d1a7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d1a80  24 60 80 e2                                      add r6, r0, #0x24
007d1a84  00 40 a0 e1                                      mov r4, r0
007d1a88  06 00 a0 e1                                      mov r0, r6
007d1a8c  3f 63 ff eb                                      bl #0x7aa790
007d1a90  28 00 94 e5                                      ldr r0, [r4, #0x28]
007d1a94  98 50 9f e5                                      ldr r5, [pc, #0x98]
007d1a98  00 00 50 e3                                      cmp r0, #0
007d1a9c  05 50 8f e0                                      add r5, pc, r5
007d1aa0  08 00 00 0a                                      beq #0x7d1ac8
007d1aa4  0b 09 ff eb                                      bl #0x793ed8
007d1aa8  28 70 94 e5                                      ldr r7, [r4, #0x28]
007d1aac  00 00 57 e3                                      cmp r7, #0
007d1ab0  04 00 00 0a                                      beq #0x7d1ac8
007d1ab4  07 00 a0 e1                                      mov r0, r7
007d1ab8  da ff ff eb                                      bl #0x7d1a28
007d1abc  07 00 a0 e1                                      mov r0, r7
007d1ac0  00 10 a0 e3                                      mov r1, #0
007d1ac4  1b 04 fe eb                                      bl #0x752b38
007d1ac8  00 00 94 e5                                      ldr r0, [r4]
007d1acc  e6 ee fc eb                                      bl #0x70d66c
007d1ad0  00 20 50 e2                                      subs r2, r0, #0
007d1ad4  0a 00 00 1a                                      bne #0x7d1b04
007d1ad8  06 00 a0 e1                                      mov r0, r6
007d1adc  2b 63 ff eb                                      bl #0x7aa790
007d1ae0  20 00 94 e5                                      ldr r0, [r4, #0x20]
007d1ae4  00 00 50 e3                                      cmp r0, #0
007d1ae8  00 00 00 0a                                      beq #0x7d1af0
007d1aec  d3 21 fe eb                                      bl #0x75a240
007d1af0  dc 30 d4 e1                                      ldrsb r3, [r4, #0xc]
007d1af4  01 00 73 e3                                      cmn r3, #1
007d1af8  08 00 00 0a                                      beq #0x7d1b20
007d1afc  04 00 a0 e1                                      mov r0, r4
007d1b00  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d1b04  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007d1b08  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
007d1b0c  03 30 95 e7                                      ldr r3, [r5, r3]
007d1b10  01 10 8f e0                                      add r1, pc, r1
007d1b14  a8 00 83 e2                                      add r0, r3, #0xa8
007d1b18  39 f1 ec eb                                      bl #0x30e004
007d1b1c  ed ff ff ea                                      b #0x7d1ad8
007d1b20  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d1b24  14 10 94 e5                                      ldr r1, [r4, #0x14]
007d1b28  02 04 fe eb                                      bl #0x752b38
007d1b2c  04 00 a0 e1                                      mov r0, r4
007d1b30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d1b34  f4 2f 1c 00 c0 19 00 00 08 a5 13 00              .byte 0xf4, 0x2f, 0x1c, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x08, 0xa5, 0x13, 0x00

; FUNCTION 0x007d1b40, declared_size=196, range_size=196, mode=arm
; class-group: gameswf::glyph_provider
; alias: _ZN7gameswf14glyph_providerD1Ev
; demangled: gameswf::glyph_provider::~glyph_provider()
; decoder-mode: arm
007d1b40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
007d1b44  24 60 80 e2                                      add r6, r0, #0x24
007d1b48  00 40 a0 e1                                      mov r4, r0
007d1b4c  06 00 a0 e1                                      mov r0, r6
007d1b50  0e 63 ff eb                                      bl #0x7aa790
007d1b54  28 00 94 e5                                      ldr r0, [r4, #0x28]
007d1b58  98 50 9f e5                                      ldr r5, [pc, #0x98]
007d1b5c  00 00 50 e3                                      cmp r0, #0
007d1b60  05 50 8f e0                                      add r5, pc, r5
007d1b64  08 00 00 0a                                      beq #0x7d1b8c
007d1b68  da 08 ff eb                                      bl #0x793ed8
007d1b6c  28 70 94 e5                                      ldr r7, [r4, #0x28]
007d1b70  00 00 57 e3                                      cmp r7, #0
007d1b74  04 00 00 0a                                      beq #0x7d1b8c
007d1b78  07 00 a0 e1                                      mov r0, r7
007d1b7c  a9 ff ff eb                                      bl #0x7d1a28
007d1b80  07 00 a0 e1                                      mov r0, r7
007d1b84  00 10 a0 e3                                      mov r1, #0
007d1b88  ea 03 fe eb                                      bl #0x752b38
007d1b8c  00 00 94 e5                                      ldr r0, [r4]
007d1b90  b5 ee fc eb                                      bl #0x70d66c
007d1b94  00 20 50 e2                                      subs r2, r0, #0
007d1b98  0a 00 00 1a                                      bne #0x7d1bc8
007d1b9c  06 00 a0 e1                                      mov r0, r6
007d1ba0  fa 62 ff eb                                      bl #0x7aa790
007d1ba4  20 00 94 e5                                      ldr r0, [r4, #0x20]
007d1ba8  00 00 50 e3                                      cmp r0, #0
007d1bac  00 00 00 0a                                      beq #0x7d1bb4
007d1bb0  a2 21 fe eb                                      bl #0x75a240
007d1bb4  dc 30 d4 e1                                      ldrsb r3, [r4, #0xc]
007d1bb8  01 00 73 e3                                      cmn r3, #1
007d1bbc  08 00 00 0a                                      beq #0x7d1be4
007d1bc0  04 00 a0 e1                                      mov r0, r4
007d1bc4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
007d1bc8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
007d1bcc  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
007d1bd0  03 30 95 e7                                      ldr r3, [r5, r3]
007d1bd4  01 10 8f e0                                      add r1, pc, r1
007d1bd8  a8 00 83 e2                                      add r0, r3, #0xa8
007d1bdc  08 f1 ec eb                                      bl #0x30e004
007d1be0  ed ff ff ea                                      b #0x7d1b9c
007d1be4  18 00 94 e5                                      ldr r0, [r4, #0x18]
007d1be8  14 10 94 e5                                      ldr r1, [r4, #0x14]
007d1bec  d1 03 fe eb                                      bl #0x752b38
007d1bf0  04 00 a0 e1                                      mov r0, r4
007d1bf4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
007d1bf8  30 2f 1c 00 c0 19 00 00 44 a4 13 00              .byte 0x30, 0x2f, 0x1c, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x44, 0xa4, 0x13, 0x00
