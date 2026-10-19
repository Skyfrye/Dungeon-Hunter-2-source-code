; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00824904, declared_size=8, range_size=8, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserver6UpdateEv
; demangled: CSignInGLLiveObserver::Update()
; decoder-mode: arm
00824904  00 00 a0 e3                                      mov r0, #0
00824908  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082490c, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver22IsErrorInvalidNicknameEv
; demangled: CSignInGLLiveObserver::IsErrorInvalidNickname() const
; decoder-mode: arm
0082490c  88 00 90 e5                                      ldr r0, [r0, #0x88]
00824910  71 00 50 e3                                      cmp r0, #0x71
00824914  00 00 a0 13                                      movne r0, #0
00824918  01 00 a0 03                                      moveq r0, #1
0082491c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824920, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver19IsErrorNicknameUsedEv
; demangled: CSignInGLLiveObserver::IsErrorNicknameUsed() const
; decoder-mode: arm
00824920  88 00 90 e5                                      ldr r0, [r0, #0x88]
00824924  6e 00 50 e3                                      cmp r0, #0x6e
00824928  00 00 a0 13                                      movne r0, #0
0082492c  01 00 a0 03                                      moveq r0, #1
00824930  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824934, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver32IsErrorLoginAuthenticationFailedEv
; demangled: CSignInGLLiveObserver::IsErrorLoginAuthenticationFailed() const
; decoder-mode: arm
00824934  88 00 90 e5                                      ldr r0, [r0, #0x88]
00824938  61 00 50 e3                                      cmp r0, #0x61
0082493c  00 00 a0 13                                      movne r0, #0
00824940  01 00 a0 03                                      moveq r0, #1
00824944  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824948, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver24IsErrorUsernameNotExistsEv
; demangled: CSignInGLLiveObserver::IsErrorUsernameNotExists() const
; decoder-mode: arm
00824948  88 00 90 e5                                      ldr r0, [r0, #0x88]
0082494c  43 00 50 e3                                      cmp r0, #0x43
00824950  00 00 a0 13                                      movne r0, #0
00824954  01 00 a0 03                                      moveq r0, #1
00824958  1e ff 2f e1                                      bx lr

; FUNCTION 0x0082495c, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver32IsErrorInvalidUsernameOrPasswordEv
; demangled: CSignInGLLiveObserver::IsErrorInvalidUsernameOrPassword() const
; decoder-mode: arm
0082495c  88 00 90 e5                                      ldr r0, [r0, #0x88]
00824960  31 00 50 e3                                      cmp r0, #0x31
00824964  00 00 a0 13                                      movne r0, #0
00824968  01 00 a0 03                                      moveq r0, #1
0082496c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824970, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver17IsErrorNoUsernameEv
; demangled: CSignInGLLiveObserver::IsErrorNoUsername() const
; decoder-mode: arm
00824970  88 00 90 e5                                      ldr r0, [r0, #0x88]
00824974  01 00 50 e3                                      cmp r0, #1
00824978  00 00 a0 13                                      movne r0, #0
0082497c  01 00 a0 03                                      moveq r0, #1
00824980  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824984, declared_size=20, range_size=20, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZNK21CSignInGLLiveObserver19IsErrorNoConnectionEv
; demangled: CSignInGLLiveObserver::IsErrorNoConnection() const
; decoder-mode: arm
00824984  88 00 90 e5                                      ldr r0, [r0, #0x88]
00824988  02 00 70 e3                                      cmn r0, #2
0082498c  00 00 a0 13                                      movne r0, #0
00824990  01 00 a0 03                                      moveq r0, #1
00824994  1e ff 2f e1                                      bx lr

; FUNCTION 0x00824998, declared_size=28, range_size=28, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserver9TerminateEv
; demangled: CSignInGLLiveObserver::Terminate()
; decoder-mode: arm
00824998  00 10 a0 e3                                      mov r1, #0
0082499c  04 10 c0 e5                                      strb r1, [r0, #4]
008249a0  05 10 c0 e5                                      strb r1, [r0, #5]
008249a4  88 10 80 e5                                      str r1, [r0, #0x88]
008249a8  80 20 a0 e3                                      mov r2, #0x80
008249ac  06 00 80 e2                                      add r0, r0, #6
008249b0  aa a6 eb ea                                      b #0x30e460

; FUNCTION 0x008249b4, declared_size=52, range_size=52, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserverD1Ev
; demangled: CSignInGLLiveObserver::~CSignInGLLiveObserver()
; decoder-mode: arm
008249b4  24 30 9f e5                                      ldr r3, [pc, #0x24]
008249b8  24 20 9f e5                                      ldr r2, [pc, #0x24]
008249bc  10 40 2d e9                                      push {r4, lr}
008249c0  03 30 8f e0                                      add r3, pc, r3
008249c4  02 20 93 e7                                      ldr r2, [r3, r2]
008249c8  00 40 a0 e1                                      mov r4, r0
008249cc  08 20 82 e2                                      add r2, r2, #8
008249d0  00 20 80 e5                                      str r2, [r0]
008249d4  ef ff ff eb                                      bl #0x824998
008249d8  04 00 a0 e1                                      mov r0, r4
008249dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008249e0  d0 00 17 00 20 13 00 00                          .byte 0xd0, 0x00, 0x17, 0x00, 0x20, 0x13, 0x00, 0x00

; FUNCTION 0x008249e8, declared_size=52, range_size=52, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserverD2Ev
; demangled: CSignInGLLiveObserver::~CSignInGLLiveObserver()
; decoder-mode: arm
008249e8  24 30 9f e5                                      ldr r3, [pc, #0x24]
008249ec  24 20 9f e5                                      ldr r2, [pc, #0x24]
008249f0  10 40 2d e9                                      push {r4, lr}
008249f4  03 30 8f e0                                      add r3, pc, r3
008249f8  02 20 93 e7                                      ldr r2, [r3, r2]
008249fc  00 40 a0 e1                                      mov r4, r0
00824a00  08 20 82 e2                                      add r2, r2, #8
00824a04  00 20 80 e5                                      str r2, [r0]
00824a08  e2 ff ff eb                                      bl #0x824998
00824a0c  04 00 a0 e1                                      mov r0, r4
00824a10  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824a14  9c 00 17 00 20 13 00 00                          .byte 0x9c, 0x00, 0x17, 0x00, 0x20, 0x13, 0x00, 0x00

; FUNCTION 0x00824a1c, declared_size=76, range_size=76, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserverC1Ev
; demangled: CSignInGLLiveObserver::CSignInGLLiveObserver()
; decoder-mode: arm
00824a1c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00824a20  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00824a24  00 10 a0 e3                                      mov r1, #0
00824a28  03 30 8f e0                                      add r3, pc, r3
00824a2c  02 20 93 e7                                      ldr r2, [r3, r2]
00824a30  10 40 2d e9                                      push {r4, lr}
00824a34  08 20 82 e2                                      add r2, r2, #8
00824a38  00 40 a0 e1                                      mov r4, r0
00824a3c  04 10 c0 e5                                      strb r1, [r0, #4]
00824a40  00 20 80 e5                                      str r2, [r0]
00824a44  05 10 c0 e5                                      strb r1, [r0, #5]
00824a48  88 10 80 e5                                      str r1, [r0, #0x88]
00824a4c  80 20 a0 e3                                      mov r2, #0x80
00824a50  06 00 80 e2                                      add r0, r0, #6
00824a54  81 a6 eb eb                                      bl #0x30e460
00824a58  04 00 a0 e1                                      mov r0, r4
00824a5c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824a60  68 00 17 00 20 13 00 00                          .byte 0x68, 0x00, 0x17, 0x00, 0x20, 0x13, 0x00, 0x00

; FUNCTION 0x00824a68, declared_size=76, range_size=76, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserverC2Ev
; demangled: CSignInGLLiveObserver::CSignInGLLiveObserver()
; decoder-mode: arm
00824a68  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
00824a6c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00824a70  00 10 a0 e3                                      mov r1, #0
00824a74  03 30 8f e0                                      add r3, pc, r3
00824a78  02 20 93 e7                                      ldr r2, [r3, r2]
00824a7c  10 40 2d e9                                      push {r4, lr}
00824a80  08 20 82 e2                                      add r2, r2, #8
00824a84  00 40 a0 e1                                      mov r4, r0
00824a88  04 10 c0 e5                                      strb r1, [r0, #4]
00824a8c  00 20 80 e5                                      str r2, [r0]
00824a90  05 10 c0 e5                                      strb r1, [r0, #5]
00824a94  88 10 80 e5                                      str r1, [r0, #0x88]
00824a98  80 20 a0 e3                                      mov r2, #0x80
00824a9c  06 00 80 e2                                      add r0, r0, #6
00824aa0  6e a6 eb eb                                      bl #0x30e460
00824aa4  04 00 a0 e1                                      mov r0, r4
00824aa8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00824aac  1c 00 17 00 20 13 00 00                          .byte 0x1c, 0x00, 0x17, 0x00, 0x20, 0x13, 0x00, 0x00

; FUNCTION 0x00824ab4, declared_size=152, range_size=152, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserver16OnRequestFailureEii
; demangled: CSignInGLLiveObserver::OnRequestFailure(int, int)
; decoder-mode: arm
00824ab4  0f 00 51 e3                                      cmp r1, #0xf
00824ab8  70 40 2d e9                                      push {r4, r5, r6, lr}
00824abc  00 40 a0 e1                                      mov r4, r0
00824ac0  02 50 a0 e1                                      mov r5, r2
00824ac4  01 00 00 0a                                      beq #0x824ad0
00824ac8  88 50 84 e5                                      str r5, [r4, #0x88]
00824acc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00824ad0  88 20 84 e5                                      str r2, [r4, #0x88]
00824ad4  f4 d6 ff eb                                      bl #0x81a6ac
00824ad8  00 30 90 e5                                      ldr r3, [r0]
00824adc  0f e0 a0 e1                                      mov lr, pc
00824ae0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00824ae4  04 00 a0 e1                                      mov r0, r4
00824ae8  96 ff ff eb                                      bl #0x824948
00824aec  00 00 50 e3                                      cmp r0, #0
00824af0  06 00 00 0a                                      beq #0x824b10
00824af4  ec d6 ff eb                                      bl #0x81a6ac
00824af8  00 20 a0 e3                                      mov r2, #0
00824afc  14 00 80 e2                                      add r0, r0, #0x14
00824b00  05 10 a0 e3                                      mov r1, #5
00824b04  02 30 a0 e1                                      mov r3, r2
00824b08  bd 65 ff eb                                      bl #0x7fe204
00824b0c  ed ff ff ea                                      b #0x824ac8
00824b10  04 00 a0 e1                                      mov r0, r4
00824b14  95 ff ff eb                                      bl #0x824970
00824b18  00 60 50 e2                                      subs r6, r0, #0
00824b1c  f4 ff ff 1a                                      bne #0x824af4
00824b20  04 00 a0 e1                                      mov r0, r4
00824b24  8c ff ff eb                                      bl #0x82495c
00824b28  00 00 50 e3                                      cmp r0, #0
00824b2c  e5 ff ff 0a                                      beq #0x824ac8
00824b30  dd d6 ff eb                                      bl #0x81a6ac
00824b34  06 20 a0 e1                                      mov r2, r6
00824b38  14 00 80 e2                                      add r0, r0, #0x14
00824b3c  06 10 a0 e3                                      mov r1, #6
00824b40  06 30 a0 e1                                      mov r3, r6
00824b44  ae 65 ff eb                                      bl #0x7fe204
00824b48  de ff ff ea                                      b #0x824ac8

; FUNCTION 0x00824b4c, declared_size=56, range_size=56, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserver16OnRequestTimeoutEi
; demangled: CSignInGLLiveObserver::OnRequestTimeout(int)
; decoder-mode: arm
00824b4c  29 30 a0 e3                                      mov r3, #0x29
00824b50  10 40 2d e9                                      push {r4, lr}
00824b54  88 30 80 e5                                      str r3, [r0, #0x88]
00824b58  d3 d6 ff eb                                      bl #0x81a6ac
00824b5c  00 30 90 e5                                      ldr r3, [r0]
00824b60  0f e0 a0 e1                                      mov lr, pc
00824b64  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00824b68  cf d6 ff eb                                      bl #0x81a6ac
00824b6c  00 20 a0 e3                                      mov r2, #0
00824b70  14 00 80 e2                                      add r0, r0, #0x14
00824b74  08 10 a0 e3                                      mov r1, #8
00824b78  02 30 a0 e1                                      mov r3, r2
00824b7c  10 40 bd e8                                      pop {r4, lr}
00824b80  9f 65 ff ea                                      b #0x7fe204

; FUNCTION 0x00824b84, declared_size=56, range_size=56, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserver14OnNetworkErrorEv
; demangled: CSignInGLLiveObserver::OnNetworkError()
; decoder-mode: arm
00824b84  01 30 e0 e3                                      mvn r3, #1
00824b88  10 40 2d e9                                      push {r4, lr}
00824b8c  88 30 80 e5                                      str r3, [r0, #0x88]
00824b90  c5 d6 ff eb                                      bl #0x81a6ac
00824b94  00 30 90 e5                                      ldr r3, [r0]
00824b98  0f e0 a0 e1                                      mov lr, pc
00824b9c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00824ba0  c1 d6 ff eb                                      bl #0x81a6ac
00824ba4  00 20 a0 e3                                      mov r2, #0
00824ba8  14 00 80 e2                                      add r0, r0, #0x14
00824bac  07 10 a0 e3                                      mov r1, #7
00824bb0  02 30 a0 e1                                      mov r3, r2
00824bb4  10 40 bd e8                                      pop {r4, lr}
00824bb8  91 65 ff ea                                      b #0x7fe204

; FUNCTION 0x00824bbc, declared_size=196, range_size=196, mode=arm
; class-group: CSignInGLLiveObserver
; alias: _ZN21CSignInGLLiveObserver16OnRequestSuccessEiPci
; demangled: CSignInGLLiveObserver::OnRequestSuccess(int, char*, int)
; decoder-mode: arm
00824bbc  70 40 2d e9                                      push {r4, r5, r6, lr}
00824bc0  0f 00 51 e3                                      cmp r1, #0xf
00824bc4  03 60 a0 e1                                      mov r6, r3
00824bc8  01 30 a0 03                                      moveq r3, #1
00824bcc  08 d0 4d e2                                      sub sp, sp, #8
00824bd0  01 50 a0 e1                                      mov r5, r1
00824bd4  00 40 a0 e1                                      mov r4, r0
00824bd8  05 30 c0 05                                      strbeq r3, [r0, #5]
00824bdc  06 00 00 0a                                      beq #0x824bfc
00824be0  09 00 00 da                                      ble #0x824c0c
00824be4  11 00 51 e3                                      cmp r1, #0x11
00824be8  00 30 a0 03                                      moveq r3, #0
00824bec  05 30 c0 05                                      strbeq r3, [r0, #5]
00824bf0  01 00 00 0a                                      beq #0x824bfc
00824bf4  6b 00 51 e3                                      cmp r1, #0x6b
00824bf8  0b 00 00 0a                                      beq #0x824c2c
00824bfc  00 30 a0 e3                                      mov r3, #0
00824c00  88 30 84 e5                                      str r3, [r4, #0x88]
00824c04  08 d0 8d e2                                      add sp, sp, #8
00824c08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00824c0c  01 00 51 e3                                      cmp r1, #1
00824c10  f9 ff ff 1a                                      bne #0x824bfc
00824c14  dc 28 00 eb                                      bl #0x82ef8c
00824c18  04 50 c4 e5                                      strb r5, [r4, #4]
00824c1c  da 70 ff eb                                      bl #0x800f8c
00824c20  05 10 a0 e1                                      mov r1, r5
00824c24  53 e9 ff eb                                      bl #0x81f178
00824c28  f3 ff ff ea                                      b #0x824bfc
00824c2c  04 20 8d e5                                      str r2, [sp, #4]
00824c30  d5 70 ff eb                                      bl #0x800f8c
00824c34  ed 37 06 e3                                      movw r3, #0x67ed
00824c38  03 50 d0 e7                                      ldrb r5, [r0, r3]
00824c3c  04 20 9d e5                                      ldr r2, [sp, #4]
00824c40  00 00 55 e3                                      cmp r5, #0
00824c44  05 00 00 0a                                      beq #0x824c60
00824c48  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00824c4c  06 00 84 e2                                      add r0, r4, #6
00824c50  1a 20 a0 e3                                      mov r2, #0x1a
00824c54  01 10 8f e0                                      add r1, pc, r1
00824c58  02 a7 eb eb                                      bl #0x30e868
00824c5c  e6 ff ff ea                                      b #0x824bfc
00824c60  02 10 a0 e1                                      mov r1, r2
00824c64  06 00 84 e2                                      add r0, r4, #6
00824c68  06 20 a0 e1                                      mov r2, r6
00824c6c  06 60 84 e0                                      add r6, r4, r6
00824c70  6b a4 eb eb                                      bl #0x30de24
00824c74  06 50 c6 e5                                      strb r5, [r6, #6]
00824c78  df ff ff ea                                      b #0x824bfc
; mapping-symbol data/literal pool
00824c7c  14 77 0e 00                                      .byte 0x14, 0x77, 0x0e, 0x00
