; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0079b328, declared_size=24, range_size=24, mode=arm
; class-group: gameswf::as_listener
; alias: _ZNK7gameswf11as_listener2isEi
; demangled: gameswf::as_listener::is(int) const
; decoder-mode: arm
0079b328  1e 00 51 e3                                      cmp r1, #0x1e
0079b32c  01 00 a0 03                                      moveq r0, #1
0079b330  1e ff 2f 01                                      bxeq lr
0079b334  01 00 71 e2                                      rsbs r0, r1, #1
0079b338  00 00 a0 33                                      movlo r0, #0
0079b33c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0079b47c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listener9enumerateEPNS_14as_environmentE
; demangled: gameswf::as_listener::enumerate(gameswf::as_environment*)
; decoder-mode: arm
0079b47c  38 00 80 e2                                      add r0, r0, #0x38
0079b480  57 15 ff ea                                      b #0x7609e4

; FUNCTION 0x0079b484, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_listener
; alias: _ZNK7gameswf11as_listener4sizeEv
; demangled: gameswf::as_listener::size() const
; decoder-mode: arm
0079b484  38 00 80 e2                                      add r0, r0, #0x38
0079b488  05 15 ff ea                                      b #0x7608a4

; FUNCTION 0x0079b48c, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listener6removeEPNS_9as_objectE
; demangled: gameswf::as_listener::remove(gameswf::as_object*)
; decoder-mode: arm
0079b48c  38 00 80 e2                                      add r0, r0, #0x38
0079b490  6b 16 ff ea                                      b #0x760e44

; FUNCTION 0x0079b494, declared_size=8, range_size=8, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listener3addEPNS_9as_objectE
; demangled: gameswf::as_listener::add(gameswf::as_object*)
; decoder-mode: arm
0079b494  38 00 80 e2                                      add r0, r0, #0x38
0079b498  ab 16 ff ea                                      b #0x760f4c

; FUNCTION 0x0079b49c, declared_size=124, range_size=124, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listener10get_memberERKNS_10tu_stringiEPNS_8as_valueE
; demangled: gameswf::as_listener::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
; decoder-mode: arm
0079b49c  70 40 2d e9                                      push {r4, r5, r6, lr}
0079b4a0  d0 30 d1 e1                                      ldrsb r3, [r1]
0079b4a4  00 50 a0 e1                                      mov r5, r0
0079b4a8  01 40 a0 e1                                      mov r4, r1
0079b4ac  01 00 73 e3                                      cmn r3, #1
0079b4b0  01 00 81 12                                      addne r0, r1, #1
0079b4b4  0c 00 91 05                                      ldreq r0, [r1, #0xc]
0079b4b8  54 10 9f e5                                      ldr r1, [pc, #0x54]
0079b4bc  02 60 a0 e1                                      mov r6, r2
0079b4c0  01 10 8f e0                                      add r1, pc, r1
0079b4c4  11 da fe eb                                      bl #0x751d10
0079b4c8  00 00 50 e3                                      cmp r0, #0
0079b4cc  07 00 00 0a                                      beq #0x79b4f0
0079b4d0  04 10 a0 e1                                      mov r1, r4
0079b4d4  38 00 85 e2                                      add r0, r5, #0x38
0079b4d8  19 17 ff eb                                      bl #0x761144
0079b4dc  00 10 a0 e1                                      mov r1, r0
0079b4e0  06 00 a0 e1                                      mov r0, r6
0079b4e4  59 ef ff eb                                      bl #0x797250
0079b4e8  01 00 a0 e3                                      mov r0, #1
0079b4ec  70 80 bd e8                                      pop {r4, r5, r6, pc}
0079b4f0  38 00 85 e2                                      add r0, r5, #0x38
0079b4f4  ea 14 ff eb                                      bl #0x7608a4
0079b4f8  0c ce ed eb                                      bl #0x30ed30
0079b4fc  00 20 a0 e1                                      mov r2, r0
0079b500  01 30 a0 e1                                      mov r3, r1
0079b504  06 00 a0 e1                                      mov r0, r6
0079b508  de ef ff eb                                      bl #0x797488
0079b50c  01 00 a0 e3                                      mov r0, #1
0079b510  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0079b514  18 ea 14 00                                      .byte 0x18, 0xea, 0x14, 0x00

; FUNCTION 0x0079b518, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listenerC1EPNS_6playerE
; demangled: gameswf::as_listener::as_listener(gameswf::player*)
; decoder-mode: arm
0079b518  70 40 2d e9                                      push {r4, r5, r6, lr}
0079b51c  44 50 9f e5                                      ldr r5, [pc, #0x44]
0079b520  00 40 a0 e1                                      mov r4, r0
0079b524  ed 41 ff eb                                      bl #0x76bce0
0079b528  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0079b52c  05 50 8f e0                                      add r5, pc, r5
0079b530  00 30 a0 e3                                      mov r3, #0
0079b534  02 20 95 e7                                      ldr r2, [r5, r2]
0079b538  50 30 84 e5                                      str r3, [r4, #0x50]
0079b53c  38 30 84 e5                                      str r3, [r4, #0x38]
0079b540  08 20 82 e2                                      add r2, r2, #8
0079b544  00 20 84 e5                                      str r2, [r4]
0079b548  3c 30 84 e5                                      str r3, [r4, #0x3c]
0079b54c  40 30 84 e5                                      str r3, [r4, #0x40]
0079b550  44 30 c4 e5                                      strb r3, [r4, #0x44]
0079b554  48 30 c4 e5                                      strb r3, [r4, #0x48]
0079b558  54 30 84 e5                                      str r3, [r4, #0x54]
0079b55c  4c 30 84 e5                                      str r3, [r4, #0x4c]
0079b560  04 00 a0 e1                                      mov r0, r4
0079b564  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0079b568  64 95 1f 00 dc 05 00 00                          .byte 0x64, 0x95, 0x1f, 0x00, 0xdc, 0x05, 0x00, 0x00

; FUNCTION 0x0079b570, declared_size=88, range_size=88, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listenerC2EPNS_6playerE
; demangled: gameswf::as_listener::as_listener(gameswf::player*)
; decoder-mode: arm
0079b570  70 40 2d e9                                      push {r4, r5, r6, lr}
0079b574  44 50 9f e5                                      ldr r5, [pc, #0x44]
0079b578  00 40 a0 e1                                      mov r4, r0
0079b57c  d7 41 ff eb                                      bl #0x76bce0
0079b580  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0079b584  05 50 8f e0                                      add r5, pc, r5
0079b588  00 30 a0 e3                                      mov r3, #0
0079b58c  02 20 95 e7                                      ldr r2, [r5, r2]
0079b590  50 30 84 e5                                      str r3, [r4, #0x50]
0079b594  38 30 84 e5                                      str r3, [r4, #0x38]
0079b598  08 20 82 e2                                      add r2, r2, #8
0079b59c  00 20 84 e5                                      str r2, [r4]
0079b5a0  3c 30 84 e5                                      str r3, [r4, #0x3c]
0079b5a4  40 30 84 e5                                      str r3, [r4, #0x40]
0079b5a8  44 30 c4 e5                                      strb r3, [r4, #0x44]
0079b5ac  48 30 c4 e5                                      strb r3, [r4, #0x48]
0079b5b0  54 30 84 e5                                      str r3, [r4, #0x54]
0079b5b4  4c 30 84 e5                                      str r3, [r4, #0x4c]
0079b5b8  04 00 a0 e1                                      mov r0, r4
0079b5bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0079b5c0  0c 95 1f 00 dc 05 00 00                          .byte 0x0c, 0x95, 0x1f, 0x00, 0xdc, 0x05, 0x00, 0x00

; FUNCTION 0x0079b5c8, declared_size=236, range_size=236, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listenerD1Ev
; demangled: gameswf::as_listener::~as_listener()
; decoder-mode: arm
0079b5c8  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
0079b5cc  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
0079b5d0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0079b5d4  03 30 8f e0                                      add r3, pc, r3
0079b5d8  02 20 93 e7                                      ldr r2, [r3, r2]
0079b5dc  00 40 a0 e1                                      mov r4, r0
0079b5e0  00 70 a0 e1                                      mov r7, r0
0079b5e4  08 20 82 e2                                      add r2, r2, #8
0079b5e8  4c 20 84 e4                                      str r2, [r4], #0x4c
0079b5ec  54 30 90 e5                                      ldr r3, [r0, #0x54]
0079b5f0  00 00 53 e3                                      cmp r3, #0
0079b5f4  04 00 00 0a                                      beq #0x79b60c
0079b5f8  04 00 a0 e1                                      mov r0, r4
0079b5fc  5c ff ff eb                                      bl #0x79b374
0079b600  54 30 97 e5                                      ldr r3, [r7, #0x54]
0079b604  00 00 53 e3                                      cmp r3, #0
0079b608  fa ff ff 1a                                      bne #0x79b5f8
0079b60c  3c 40 97 e5                                      ldr r4, [r7, #0x3c]
0079b610  38 60 87 e2                                      add r6, r7, #0x38
0079b614  00 00 54 e3                                      cmp r4, #0
0079b618  18 00 00 da                                      ble #0x79b680
0079b61c  00 50 a0 e3                                      mov r5, #0
0079b620  00 30 96 e5                                      ldr r3, [r6]
0079b624  85 31 93 e7                                      ldr r3, [r3, r5, lsl #3]
0079b628  01 50 85 e2                                      add r5, r5, #1
0079b62c  00 00 53 e3                                      cmp r3, #0
0079b630  03 00 a0 e1                                      mov r0, r3
0079b634  06 00 00 0a                                      beq #0x79b654
0079b638  00 20 93 e5                                      ldr r2, [r3]
0079b63c  01 20 42 e2                                      sub r2, r2, #1
0079b640  00 00 52 e3                                      cmp r2, #0
0079b644  02 10 a0 e1                                      mov r1, r2
0079b648  00 20 83 e5                                      str r2, [r3]
0079b64c  00 00 00 1a                                      bne #0x79b654
0079b650  38 dd fe eb                                      bl #0x752b38
0079b654  04 00 55 e1                                      cmp r5, r4
0079b658  f0 ff ff 1a                                      bne #0x79b620
0079b65c  00 30 a0 e3                                      mov r3, #0
0079b660  03 10 a0 e1                                      mov r1, r3
0079b664  3c 30 87 e5                                      str r3, [r7, #0x3c]
0079b668  06 00 a0 e1                                      mov r0, r6
0079b66c  bb 13 ff eb                                      bl #0x760560
0079b670  07 00 a0 e1                                      mov r0, r7
0079b674  08 39 ff eb                                      bl #0x769a9c
0079b678  07 00 a0 e1                                      mov r0, r7
0079b67c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0079b680  f5 ff ff aa                                      bge #0x79b65c
0079b684  84 31 a0 e1                                      lsl r3, r4, #3
0079b688  00 10 a0 e3                                      mov r1, #0
0079b68c  00 20 96 e5                                      ldr r2, [r6]
0079b690  01 40 94 e2                                      adds r4, r4, #1
0079b694  03 00 82 e0                                      add r0, r2, r3
0079b698  03 10 82 e7                                      str r1, [r2, r3]
0079b69c  04 10 80 e5                                      str r1, [r0, #4]
0079b6a0  08 30 83 e2                                      add r3, r3, #8
0079b6a4  f8 ff ff 1a                                      bne #0x79b68c
0079b6a8  eb ff ff ea                                      b #0x79b65c
; mapping-symbol data/literal pool
0079b6ac  bc 94 1f 00 dc 05 00 00                          .byte 0xbc, 0x94, 0x1f, 0x00, 0xdc, 0x05, 0x00, 0x00

; FUNCTION 0x0079b6b4, declared_size=28, range_size=28, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listenerD0Ev
; demangled: gameswf::as_listener::~as_listener()
; decoder-mode: arm
0079b6b4  10 40 2d e9                                      push {r4, lr}
0079b6b8  00 40 a0 e1                                      mov r4, r0
0079b6bc  c1 ff ff eb                                      bl #0x79b5c8
0079b6c0  04 00 a0 e1                                      mov r0, r4
0079b6c4  f9 ca ed eb                                      bl #0x30e2b0
0079b6c8  04 00 a0 e1                                      mov r0, r4
0079b6cc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0079bc48, declared_size=808, range_size=808, mode=arm
; class-group: gameswf::as_listener
; alias: _ZN7gameswf11as_listener9broadcastERKNS_7fn_callE
; demangled: gameswf::as_listener::broadcast(gameswf::fn_call const&)
; decoder-mode: arm
0079bc48  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0079bc4c  14 23 9f e5                                      ldr r2, [pc, #0x314]
0079bc50  14 33 9f e5                                      ldr r3, [pc, #0x314]
0079bc54  b4 d0 4d e2                                      sub sp, sp, #0xb4
0079bc58  02 20 8f e0                                      add r2, pc, r2
0079bc5c  04 20 8d e5                                      str r2, [sp, #4]
0079bc60  03 20 92 e7                                      ldr r2, [r2, r3]
0079bc64  14 30 8d e5                                      str r3, [sp, #0x14]
0079bc68  48 30 d0 e5                                      ldrb r3, [r0, #0x48]
0079bc6c  00 20 92 e5                                      ldr r2, [r2]
0079bc70  00 60 a0 e1                                      mov r6, r0
0079bc74  00 00 53 e3                                      cmp r3, #0
0079bc78  01 40 a0 e1                                      mov r4, r1
0079bc7c  ac 20 8d e5                                      str r2, [sp, #0xac]
0079bc80  27 00 00 0a                                      beq #0x79bd24
0079bc84  10 30 91 e5                                      ldr r3, [r1, #0x10]
0079bc88  00 50 a0 e3                                      mov r5, #0
0079bc8c  5c 50 8d e5                                      str r5, [sp, #0x5c]
0079bc90  05 00 53 e1                                      cmp r3, r5
0079bc94  60 50 8d e5                                      str r5, [sp, #0x60]
0079bc98  64 50 8d e5                                      str r5, [sp, #0x64]
0079bc9c  68 50 cd e5                                      strb r5, [sp, #0x68]
0079bca0  5c 70 8d d2                                      addle r7, sp, #0x5c
0079bca4  0c 00 00 da                                      ble #0x79bcdc
0079bca8  5c 70 8d e2                                      add r7, sp, #0x5c
0079bcac  0c 80 a0 e3                                      mov r8, #0xc
0079bcb0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0079bcb4  14 10 94 e5                                      ldr r1, [r4, #0x14]
0079bcb8  07 00 a0 e1                                      mov r0, r7
0079bcbc  00 30 93 e5                                      ldr r3, [r3]
0079bcc0  01 10 65 e0                                      rsb r1, r5, r1
0079bcc4  01 50 85 e2                                      add r5, r5, #1
0079bcc8  98 31 21 e0                                      mla r1, r8, r1, r3
0079bccc  f1 34 ff eb                                      bl #0x769098
0079bcd0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0079bcd4  05 00 53 e1                                      cmp r3, r5
0079bcd8  f4 ff ff ca                                      bgt #0x79bcb0
0079bcdc  4c 00 86 e2                                      add r0, r6, #0x4c
0079bce0  07 10 a0 e1                                      mov r1, r7
0079bce4  b8 fd ff eb                                      bl #0x79b3cc
0079bce8  07 00 a0 e1                                      mov r0, r7
0079bcec  00 10 a0 e3                                      mov r1, #0
0079bcf0  ab 8b ff eb                                      bl #0x77eba4
0079bcf4  07 00 a0 e1                                      mov r0, r7
0079bcf8  00 10 a0 e3                                      mov r1, #0
0079bcfc  c2 f9 fe eb                                      bl #0x75a40c
0079bd00  04 10 9d e5                                      ldr r1, [sp, #4]
0079bd04  14 00 9d e5                                      ldr r0, [sp, #0x14]
0079bd08  ac 20 9d e5                                      ldr r2, [sp, #0xac]
0079bd0c  00 30 91 e7                                      ldr r3, [r1, r0]
0079bd10  00 30 93 e5                                      ldr r3, [r3]
0079bd14  03 00 52 e1                                      cmp r2, r3
0079bd18  91 00 00 1a                                      bne #0x79bf64
0079bd1c  b4 d0 8d e2                                      add sp, sp, #0xb4
0079bd20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0079bd24  01 30 a0 e3                                      mov r3, #1
0079bd28  48 30 c0 e5                                      strb r3, [r0, #0x48]
0079bd2c  0c 30 91 e5                                      ldr r3, [r1, #0xc]
0079bd30  14 00 91 e5                                      ldr r0, [r1, #0x14]
0079bd34  0c 80 a0 e3                                      mov r8, #0xc
0079bd38  00 30 93 e5                                      ldr r3, [r3]
0079bd3c  98 50 8d e2                                      add r5, sp, #0x98
0079bd40  98 30 20 e0                                      mla r0, r8, r0, r3
0079bd44  4e 13 f2 eb                                      bl #0x420a84
0079bd48  00 10 a0 e1                                      mov r1, r0
0079bd4c  05 00 a0 e1                                      mov r0, r5
0079bd50  b5 dc fe eb                                      bl #0x75302c
0079bd54  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0079bd58  01 70 4c e2                                      sub r7, ip, #1
0079bd5c  00 00 57 e3                                      cmp r7, #0
0079bd60  08 00 00 da                                      ble #0x79bd88
0079bd64  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0079bd68  14 10 94 e5                                      ldr r1, [r4, #0x14]
0079bd6c  00 30 90 e5                                      ldr r3, [r0]
0079bd70  01 10 67 e0                                      rsb r1, r7, r1
0079bd74  98 31 21 e0                                      mla r1, r8, r1, r3
0079bd78  c6 34 ff eb                                      bl #0x769098
0079bd7c  01 70 57 e2                                      subs r7, r7, #1
0079bd80  f7 ff ff 1a                                      bne #0x79bd64
0079bd84  10 c0 94 e5                                      ldr ip, [r4, #0x10]
0079bd88  00 20 a0 e3                                      mov r2, #0
0079bd8c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0079bd90  7c 20 8d e5                                      str r2, [sp, #0x7c]
0079bd94  78 20 cd e5                                      strb r2, [sp, #0x78]
0079bd98  d8 29 dd e1                                      ldrsb r2, [sp, #0x98]
0079bd9c  05 10 a0 e3                                      mov r1, #5
0079bda0  79 10 cd e5                                      strb r1, [sp, #0x79]
0079bda4  04 e0 93 e5                                      ldr lr, [r3, #4]
0079bda8  01 00 72 e3                                      cmn r2, #1
0079bdac  a4 70 9d 05                                      ldreq r7, [sp, #0xa4]
0079bdb0  38 80 86 e2                                      add r8, r6, #0x38
0079bdb4  08 80 8d e5                                      str r8, [sp, #8]
0079bdb8  01 70 85 12                                      addne r7, r5, #1
0079bdbc  01 c0 4c e2                                      sub ip, ip, #1
0079bdc0  01 e0 4e e2                                      sub lr, lr, #1
0079bdc4  05 10 a0 e1                                      mov r1, r5
0079bdc8  40 20 8d e2                                      add r2, sp, #0x40
0079bdcc  00 50 a0 e3                                      mov r5, #0
0079bdd0  08 00 9d e5                                      ldr r0, [sp, #8]
0079bdd4  78 80 8d e2                                      add r8, sp, #0x78
0079bdd8  4c 30 8d e5                                      str r3, [sp, #0x4c]
0079bddc  50 c0 8d e5                                      str ip, [sp, #0x50]
0079bde0  54 e0 8d e5                                      str lr, [sp, #0x54]
0079bde4  58 70 8d e5                                      str r7, [sp, #0x58]
0079bde8  1c 80 8d e5                                      str r8, [sp, #0x1c]
0079bdec  40 50 8d e5                                      str r5, [sp, #0x40]
0079bdf0  48 80 8d e5                                      str r8, [sp, #0x48]
0079bdf4  44 50 8d e5                                      str r5, [sp, #0x44]
0079bdf8  3b 13 ff eb                                      bl #0x760aec
0079bdfc  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0079be00  10 30 94 e5                                      ldr r3, [r4, #0x10]
0079be04  84 70 8d e2                                      add r7, sp, #0x84
0079be08  04 10 90 e5                                      ldr r1, [r0, #4]
0079be0c  6c a0 8d e2                                      add sl, sp, #0x6c
0079be10  01 10 81 e2                                      add r1, r1, #1
0079be14  01 10 63 e0                                      rsb r1, r3, r1
0079be18  61 8b ff eb                                      bl #0x77eba4
0079be1c  4c 00 86 e2                                      add r0, r6, #0x4c
0079be20  01 10 87 e2                                      add r1, r7, #1
0079be24  24 20 8d e2                                      add r2, sp, #0x24
0079be28  0c 00 8d e5                                      str r0, [sp, #0xc]
0079be2c  18 10 8d e5                                      str r1, [sp, #0x18]
0079be30  10 20 8d e5                                      str r2, [sp, #0x10]
0079be34  54 30 96 e5                                      ldr r3, [r6, #0x54]
0079be38  00 00 53 e3                                      cmp r3, #0
0079be3c  3e 00 00 0a                                      beq #0x79bf3c
0079be40  50 90 96 e5                                      ldr sb, [r6, #0x50]
0079be44  00 00 99 e5                                      ldr r0, [sb]
0079be48  0d 13 f2 eb                                      bl #0x420a84
0079be4c  00 10 a0 e1                                      mov r1, r0
0079be50  07 00 a0 e1                                      mov r0, r7
0079be54  74 dc fe eb                                      bl #0x75302c
0079be58  04 80 99 e5                                      ldr r8, [sb, #4]
0079be5c  01 b0 48 e2                                      sub fp, r8, #1
0079be60  00 00 5b e3                                      cmp fp, #0
0079be64  09 00 00 da                                      ble #0x79be90
0079be68  0c 30 a0 e3                                      mov r3, #0xc
0079be6c  93 0b 0b e0                                      mul fp, r3, fp
0079be70  00 10 99 e5                                      ldr r1, [sb]
0079be74  01 80 48 e2                                      sub r8, r8, #1
0079be78  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0079be7c  0b 10 81 e0                                      add r1, r1, fp
0079be80  84 34 ff eb                                      bl #0x769098
0079be84  01 00 58 e3                                      cmp r8, #1
0079be88  0c b0 4b e2                                      sub fp, fp, #0xc
0079be8c  f7 ff ff 1a                                      bne #0x79be70
0079be90  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0079be94  d4 28 dd e1                                      ldrsb r2, [sp, #0x84]
0079be98  05 80 a0 e3                                      mov r8, #5
0079be9c  6d 80 cd e5                                      strb r8, [sp, #0x6d]
0079bea0  6c 50 cd e5                                      strb r5, [sp, #0x6c]
0079bea4  70 50 8d e5                                      str r5, [sp, #0x70]
0079bea8  04 c0 93 e5                                      ldr ip, [r3, #4]
0079beac  04 e0 99 e5                                      ldr lr, [sb, #4]
0079beb0  01 00 72 e3                                      cmn r2, #1
0079beb4  18 80 9d 15                                      ldrne r8, [sp, #0x18]
0079beb8  90 80 9d 05                                      ldreq r8, [sp, #0x90]
0079bebc  01 e0 4e e2                                      sub lr, lr, #1
0079bec0  01 c0 4c e2                                      sub ip, ip, #1
0079bec4  10 20 9d e5                                      ldr r2, [sp, #0x10]
0079bec8  08 00 9d e5                                      ldr r0, [sp, #8]
0079becc  07 10 a0 e1                                      mov r1, r7
0079bed0  34 e0 8d e5                                      str lr, [sp, #0x34]
0079bed4  38 c0 8d e5                                      str ip, [sp, #0x38]
0079bed8  30 30 8d e5                                      str r3, [sp, #0x30]
0079bedc  3c 80 8d e5                                      str r8, [sp, #0x3c]
0079bee0  24 50 8d e5                                      str r5, [sp, #0x24]
0079bee4  2c a0 8d e5                                      str sl, [sp, #0x2c]
0079bee8  28 50 8d e5                                      str r5, [sp, #0x28]
0079beec  fe 12 ff eb                                      bl #0x760aec
0079bef0  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0079bef4  10 30 94 e5                                      ldr r3, [r4, #0x10]
0079bef8  04 10 90 e5                                      ldr r1, [r0, #4]
0079befc  01 10 81 e2                                      add r1, r1, #1
0079bf00  01 10 63 e0                                      rsb r1, r3, r1
0079bf04  26 8b ff eb                                      bl #0x77eba4
0079bf08  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0079bf0c  18 fd ff eb                                      bl #0x79b374
0079bf10  0a 00 a0 e1                                      mov r0, sl
0079bf14  82 ec ff eb                                      bl #0x797124
0079bf18  d4 38 dd e1                                      ldrsb r3, [sp, #0x84]
0079bf1c  01 00 73 e3                                      cmn r3, #1
0079bf20  c3 ff ff 1a                                      bne #0x79be34
0079bf24  90 00 9d e5                                      ldr r0, [sp, #0x90]
0079bf28  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
0079bf2c  01 db fe eb                                      bl #0x752b38
0079bf30  54 30 96 e5                                      ldr r3, [r6, #0x54]
0079bf34  00 00 53 e3                                      cmp r3, #0
0079bf38  c0 ff ff 1a                                      bne #0x79be40
0079bf3c  48 30 c6 e5                                      strb r3, [r6, #0x48]
0079bf40  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0079bf44  76 ec ff eb                                      bl #0x797124
0079bf48  d8 39 dd e1                                      ldrsb r3, [sp, #0x98]
0079bf4c  01 00 73 e3                                      cmn r3, #1
0079bf50  6a ff ff 1a                                      bne #0x79bd00
0079bf54  a4 00 9d e5                                      ldr r0, [sp, #0xa4]
0079bf58  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
0079bf5c  f5 da fe eb                                      bl #0x752b38
0079bf60  66 ff ff ea                                      b #0x79bd00
0079bf64  e9 c8 ed eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0079bf68  38 8e 1f 00 ac 40 00 00                          .byte 0x38, 0x8e, 0x1f, 0x00, 0xac, 0x40, 0x00, 0x00
