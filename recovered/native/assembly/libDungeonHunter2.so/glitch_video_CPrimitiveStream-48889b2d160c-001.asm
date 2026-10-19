; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a0300, declared_size=172, range_size=172, mode=arm
; class-group: glitch::video::CPrimitiveStream
; alias: _ZNK6glitch5video16CPrimitiveStream17getPrimitiveCountEv
; demangled: glitch::video::CPrimitiveStream::getPrimitiveCount() const
; decoder-mode: arm
005a0300  b6 31 d0 e1                                      ldrh r3, [r0, #0x16]
005a0304  08 00 53 e3                                      cmp r3, #8
005a0308  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
005a030c  1a 00 00 ea                                      b #0x5a037c
005a0310  0b 00 00 ea                                      b #0x5a0344
005a0314  1d 00 00 ea                                      b #0x5a0390
005a0318  09 00 00 ea                                      b #0x5a0344
005a031c  1f 00 00 ea                                      b #0x5a03a0
005a0320  03 00 00 ea                                      b #0x5a0334
005a0324  02 00 00 ea                                      b #0x5a0334
005a0328  0d 00 00 ea                                      b #0x5a0364
005a032c  06 00 00 ea                                      b #0x5a034c
005a0330  13 00 00 ea                                      b #0x5a0384
005a0334  08 00 90 e5                                      ldr r0, [r0, #8]
005a0338  02 00 40 e2                                      sub r0, r0, #2
005a033c  c0 0f c0 e1                                      bic r0, r0, r0, asr #31
005a0340  1e ff 2f e1                                      bx lr
005a0344  08 00 90 e5                                      ldr r0, [r0, #8]
005a0348  1e ff 2f e1                                      bx lr
005a034c  08 00 90 e5                                      ldr r0, [r0, #8]
005a0350  02 00 40 e2                                      sub r0, r0, #2
005a0354  a0 0f 80 e0                                      add r0, r0, r0, lsr #31
005a0358  c0 00 a0 e1                                      asr r0, r0, #1
005a035c  c0 0f c0 e1                                      bic r0, r0, r0, asr #31
005a0360  1e ff 2f e1                                      bx lr
005a0364  08 00 90 e5                                      ldr r0, [r0, #8]
005a0368  ab 3a 0a e3                                      movw r3, #0xaaab
005a036c  aa 3a 4a e3                                      movt r3, #0xaaaa
005a0370  93 20 80 e0                                      umull r2, r0, r3, r0
005a0374  a0 00 a0 e1                                      lsr r0, r0, #1
005a0378  1e ff 2f e1                                      bx lr
005a037c  00 00 a0 e3                                      mov r0, #0
005a0380  1e ff 2f e1                                      bx lr
005a0384  08 00 90 e5                                      ldr r0, [r0, #8]
005a0388  20 01 a0 e1                                      lsr r0, r0, #2
005a038c  1e ff 2f e1                                      bx lr
005a0390  08 00 90 e5                                      ldr r0, [r0, #8]
005a0394  01 00 40 e2                                      sub r0, r0, #1
005a0398  c0 0f c0 e1                                      bic r0, r0, r0, asr #31
005a039c  1e ff 2f e1                                      bx lr
005a03a0  08 00 90 e5                                      ldr r0, [r0, #8]
005a03a4  a0 00 a0 e1                                      lsr r0, r0, #1
005a03a8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005a03fc, declared_size=296, range_size=296, mode=arm
; class-group: glitch::video::CPrimitiveStream
; alias: _ZN6glitch5video16CPrimitiveStream21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CPrimitiveStream::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
005a03fc  70 40 2d e9                                      push {r4, r5, r6, lr}
005a0400  00 30 91 e5                                      ldr r3, [r1]
005a0404  00 50 a0 e1                                      mov r5, r0
005a0408  00 00 a0 e3                                      mov r0, #0
005a040c  01 40 a0 e1                                      mov r4, r1
005a0410  00 61 93 e5                                      ldr r6, [r3, #0x100]
005a0414  2f 05 00 eb                                      bl #0x5a18d8
005a0418  ec 10 9f e5                                      ldr r1, [pc, #0xec]
005a041c  00 20 a0 e1                                      mov r2, r0
005a0420  04 00 a0 e1                                      mov r0, r4
005a0424  01 10 8f e0                                      add r1, pc, r1
005a0428  36 ff 2f e1                                      blx r6
005a042c  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
005a0430  b6 01 c5 e1                                      strh r0, [r5, #0x16]
005a0434  00 30 94 e5                                      ldr r3, [r4]
005a0438  01 10 8f e0                                      add r1, pc, r1
005a043c  04 00 a0 e1                                      mov r0, r4
005a0440  0f e0 a0 e1                                      mov lr, pc
005a0444  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005a0448  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
005a044c  08 00 85 e5                                      str r0, [r5, #8]
005a0450  00 30 94 e5                                      ldr r3, [r4]
005a0454  01 10 8f e0                                      add r1, pc, r1
005a0458  04 00 a0 e1                                      mov r0, r4
005a045c  0f e0 a0 e1                                      mov lr, pc
005a0460  58 f0 93 e5                                      ldr pc, [r3, #0x58]
005a0464  00 30 95 e5                                      ldr r3, [r5]
005a0468  0c 00 85 e5                                      str r0, [r5, #0xc]
005a046c  00 00 53 e3                                      cmp r3, #0
005a0470  24 00 00 0a                                      beq #0x5a0508
005a0474  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
005a0478  00 30 94 e5                                      ldr r3, [r4]
005a047c  04 00 a0 e1                                      mov r0, r4
005a0480  01 10 8f e0                                      add r1, pc, r1
005a0484  0f e0 a0 e1                                      mov lr, pc
005a0488  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005a048c  00 10 50 e2                                      subs r1, r0, #0
005a0490  02 00 00 ba                                      blt #0x5a04a0
005a0494  04 00 a0 e1                                      mov r0, r4
005a0498  cb ff ff eb                                      bl #0x5a03cc
005a049c  b4 01 c5 e1                                      strh r0, [r5, #0x14]
005a04a0  74 10 9f e5                                      ldr r1, [pc, #0x74]
005a04a4  00 30 94 e5                                      ldr r3, [r4]
005a04a8  04 00 a0 e1                                      mov r0, r4
005a04ac  01 10 8f e0                                      add r1, pc, r1
005a04b0  0f e0 a0 e1                                      mov lr, pc
005a04b4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005a04b8  00 10 50 e2                                      subs r1, r0, #0
005a04bc  04 00 00 ba                                      blt #0x5a04d4
005a04c0  00 30 94 e5                                      ldr r3, [r4]
005a04c4  04 00 a0 e1                                      mov r0, r4
005a04c8  0f e0 a0 e1                                      mov lr, pc
005a04cc  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005a04d0  04 00 85 e5                                      str r0, [r5, #4]
005a04d4  44 10 9f e5                                      ldr r1, [pc, #0x44]
005a04d8  00 30 94 e5                                      ldr r3, [r4]
005a04dc  04 00 a0 e1                                      mov r0, r4
005a04e0  01 10 8f e0                                      add r1, pc, r1
005a04e4  0f e0 a0 e1                                      mov lr, pc
005a04e8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005a04ec  00 10 50 e2                                      subs r1, r0, #0
005a04f0  04 00 00 ba                                      blt #0x5a0508
005a04f4  04 00 a0 e1                                      mov r0, r4
005a04f8  00 30 94 e5                                      ldr r3, [r4]
005a04fc  0f e0 a0 e1                                      mov lr, pc
005a0500  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005a0504  10 00 85 e5                                      str r0, [r5, #0x10]
005a0508  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005a050c  ec f7 33 00 e8 f7 33 00 dc f7 33 00 c0 f7 33 00  .byte 0xec, 0xf7, 0x33, 0x00, 0xe8, 0xf7, 0x33, 0x00, 0xdc, 0xf7, 0x33, 0x00, 0xc0, 0xf7, 0x33, 0x00
005a051c  94 77 32 00 70 f7 33 00                          .byte 0x94, 0x77, 0x32, 0x00, 0x70, 0xf7, 0x33, 0x00

; FUNCTION 0x005a0524, declared_size=452, range_size=452, mode=arm
; class-group: glitch::video::CPrimitiveStream
; alias: _ZNK6glitch5video16CPrimitiveStream19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::video::CPrimitiveStream::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
005a0524  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005a0528  00 50 a0 e1                                      mov r5, r0
005a052c  0c d0 4d e2                                      sub sp, sp, #0xc
005a0530  00 00 a0 e3                                      mov r0, #0
005a0534  01 40 a0 e1                                      mov r4, r1
005a0538  b6 71 d5 e1                                      ldrh r7, [r5, #0x16]
005a053c  e5 04 00 eb                                      bl #0x5a18d8
005a0540  78 11 9f e5                                      ldr r1, [pc, #0x178]
005a0544  00 60 a0 e3                                      mov r6, #0
005a0548  00 60 8d e5                                      str r6, [sp]
005a054c  00 30 a0 e1                                      mov r3, r0
005a0550  07 20 a0 e1                                      mov r2, r7
005a0554  01 10 8f e0                                      add r1, pc, r1
005a0558  00 c0 94 e5                                      ldr ip, [r4]
005a055c  04 00 a0 e1                                      mov r0, r4
005a0560  0f e0 a0 e1                                      mov lr, pc
005a0564  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005a0568  00 70 95 e5                                      ldr r7, [r5]
005a056c  06 00 57 e1                                      cmp r7, r6
005a0570  37 00 00 0a                                      beq #0x5a0654
005a0574  06 00 a0 e1                                      mov r0, r6
005a0578  b4 71 d5 e1                                      ldrh r7, [r5, #0x14]
005a057c  bd 04 00 eb                                      bl #0x5a1878
005a0580  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
005a0584  00 60 8d e5                                      str r6, [sp]
005a0588  00 30 a0 e1                                      mov r3, r0
005a058c  07 20 a0 e1                                      mov r2, r7
005a0590  01 10 8f e0                                      add r1, pc, r1
005a0594  04 00 a0 e1                                      mov r0, r4
005a0598  00 c0 94 e5                                      ldr ip, [r4]
005a059c  0f e0 a0 e1                                      mov lr, pc
005a05a0  f4 f0 9c e5                                      ldr pc, [ip, #0xf4]
005a05a4  1c 11 9f e5                                      ldr r1, [pc, #0x11c]
005a05a8  04 00 a0 e1                                      mov r0, r4
005a05ac  04 20 95 e5                                      ldr r2, [r5, #4]
005a05b0  01 10 8f e0                                      add r1, pc, r1
005a05b4  06 30 a0 e1                                      mov r3, r6
005a05b8  00 c0 94 e5                                      ldr ip, [r4]
005a05bc  0f e0 a0 e1                                      mov lr, pc
005a05c0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005a05c4  00 11 9f e5                                      ldr r1, [pc, #0x100]
005a05c8  00 c0 94 e5                                      ldr ip, [r4]
005a05cc  08 20 95 e5                                      ldr r2, [r5, #8]
005a05d0  01 10 8f e0                                      add r1, pc, r1
005a05d4  06 30 a0 e1                                      mov r3, r6
005a05d8  04 00 a0 e1                                      mov r0, r4
005a05dc  0f e0 a0 e1                                      mov lr, pc
005a05e0  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005a05e4  00 30 94 e5                                      ldr r3, [r4]
005a05e8  05 00 a0 e1                                      mov r0, r5
005a05ec  4c 70 93 e5                                      ldr r7, [r3, #0x4c]
005a05f0  42 ff ff eb                                      bl #0x5a0300
005a05f4  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
005a05f8  00 20 a0 e1                                      mov r2, r0
005a05fc  01 30 a0 e3                                      mov r3, #1
005a0600  04 00 a0 e1                                      mov r0, r4
005a0604  01 10 8f e0                                      add r1, pc, r1
005a0608  37 ff 2f e1                                      blx r7
005a060c  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
005a0610  04 00 a0 e1                                      mov r0, r4
005a0614  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005a0618  01 10 8f e0                                      add r1, pc, r1
005a061c  06 30 a0 e1                                      mov r3, r6
005a0620  00 c0 94 e5                                      ldr ip, [r4]
005a0624  0f e0 a0 e1                                      mov lr, pc
005a0628  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005a062c  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
005a0630  04 00 a0 e1                                      mov r0, r4
005a0634  10 20 95 e5                                      ldr r2, [r5, #0x10]
005a0638  01 10 8f e0                                      add r1, pc, r1
005a063c  06 30 a0 e1                                      mov r3, r6
005a0640  00 c0 94 e5                                      ldr ip, [r4]
005a0644  0f e0 a0 e1                                      mov lr, pc
005a0648  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005a064c  0c d0 8d e2                                      add sp, sp, #0xc
005a0650  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005a0654  80 10 9f e5                                      ldr r1, [pc, #0x80]
005a0658  04 00 a0 e1                                      mov r0, r4
005a065c  0c 20 95 e5                                      ldr r2, [r5, #0xc]
005a0660  07 30 a0 e1                                      mov r3, r7
005a0664  00 c0 94 e5                                      ldr ip, [r4]
005a0668  01 10 8f e0                                      add r1, pc, r1
005a066c  0f e0 a0 e1                                      mov lr, pc
005a0670  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005a0674  64 10 9f e5                                      ldr r1, [pc, #0x64]
005a0678  08 20 95 e5                                      ldr r2, [r5, #8]
005a067c  07 30 a0 e1                                      mov r3, r7
005a0680  01 10 8f e0                                      add r1, pc, r1
005a0684  04 00 a0 e1                                      mov r0, r4
005a0688  00 c0 94 e5                                      ldr ip, [r4]
005a068c  0f e0 a0 e1                                      mov lr, pc
005a0690  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
005a0694  00 30 94 e5                                      ldr r3, [r4]
005a0698  05 00 a0 e1                                      mov r0, r5
005a069c  4c 50 93 e5                                      ldr r5, [r3, #0x4c]
005a06a0  16 ff ff eb                                      bl #0x5a0300
005a06a4  38 10 9f e5                                      ldr r1, [pc, #0x38]
005a06a8  00 20 a0 e1                                      mov r2, r0
005a06ac  01 30 a0 e3                                      mov r3, #1
005a06b0  04 00 a0 e1                                      mov r0, r4
005a06b4  01 10 8f e0                                      add r1, pc, r1
005a06b8  35 ff 2f e1                                      blx r5
005a06bc  e2 ff ff ea                                      b #0x5a064c
; mapping-symbol data/literal pool
005a06c0  bc f6 33 00 b0 f6 33 00 90 76 32 00 50 f6 33 00  .byte 0xbc, 0xf6, 0x33, 0x00, 0xb0, 0xf6, 0x33, 0x00, 0x90, 0x76, 0x32, 0x00, 0x50, 0xf6, 0x33, 0x00
005a06d0  5c f6 33 00 18 f6 33 00 18 f6 33 00 c8 f5 33 00  .byte 0x5c, 0xf6, 0x33, 0x00, 0x18, 0xf6, 0x33, 0x00, 0x18, 0xf6, 0x33, 0x00, 0xc8, 0xf5, 0x33, 0x00
005a06e0  a0 f5 33 00 ac f5 33 00                          .byte 0xa0, 0xf5, 0x33, 0x00, 0xac, 0xf5, 0x33, 0x00
