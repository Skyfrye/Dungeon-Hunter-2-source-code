; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d8e78, declared_size=20, range_size=20, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript13CallStatePostEv
; demangled: CharAIScript::CallStatePost()
; decoder-mode: arm
003d8e78  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8e7c  00 00 53 e3                                      cmp r3, #0
003d8e80  1e ff 2f 01                                      bxeq lr
003d8e84  5c 10 93 e5                                      ldr r1, [r3, #0x5c]
003d8e88  a1 8d fe ea                                      b #0x37c514

; FUNCTION 0x003d8e8c, declared_size=20, range_size=20, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript13CallStateInitEv
; demangled: CharAIScript::CallStateInit()
; decoder-mode: arm
003d8e8c  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8e90  00 00 53 e3                                      cmp r3, #0
003d8e94  1e ff 2f 01                                      bxeq lr
003d8e98  44 10 93 e5                                      ldr r1, [r3, #0x44]
003d8e9c  9c 8d fe ea                                      b #0x37c514

; FUNCTION 0x003d8ea0, declared_size=20, range_size=20, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript19CallStateConditionsEv
; demangled: CharAIScript::CallStateConditions()
; decoder-mode: arm
003d8ea0  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8ea4  00 00 53 e3                                      cmp r3, #0
003d8ea8  1e ff 2f 01                                      bxeq lr
003d8eac  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
003d8eb0  97 8d fe ea                                      b #0x37c514

; FUNCTION 0x003d8eb4, declared_size=20, range_size=20, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript15CallStateUpdateEv
; demangled: CharAIScript::CallStateUpdate()
; decoder-mode: arm
003d8eb4  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8eb8  00 00 53 e3                                      cmp r3, #0
003d8ebc  1e ff 2f 01                                      bxeq lr
003d8ec0  14 10 93 e5                                      ldr r1, [r3, #0x14]
003d8ec4  92 8d fe ea                                      b #0x37c514

; FUNCTION 0x003d8ec8, declared_size=100, range_size=100, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript24CharAIScriptBindFunctionEv
; demangled: CharAIScript::CharAIScriptBindFunction()
; decoder-mode: arm
003d8ec8  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8ecc  44 40 9f e5                                      ldr r4, [pc, #0x44]
003d8ed0  44 30 9f e5                                      ldr r3, [pc, #0x44]
003d8ed4  44 10 9f e5                                      ldr r1, [pc, #0x44]
003d8ed8  00 50 a0 e1                                      mov r5, r0
003d8edc  04 40 8f e0                                      add r4, pc, r4
003d8ee0  10 60 80 e2                                      add r6, r0, #0x10
003d8ee4  03 20 94 e7                                      ldr r2, [r4, r3]
003d8ee8  06 00 a0 e1                                      mov r0, r6
003d8eec  05 30 a0 e1                                      mov r3, r5
003d8ef0  01 10 8f e0                                      add r1, pc, r1
003d8ef4  76 05 fd eb                                      bl #0x31a4d4
003d8ef8  24 30 9f e5                                      ldr r3, [pc, #0x24]
003d8efc  24 10 9f e5                                      ldr r1, [pc, #0x24]
003d8f00  06 00 a0 e1                                      mov r0, r6
003d8f04  03 20 94 e7                                      ldr r2, [r4, r3]
003d8f08  01 10 8f e0                                      add r1, pc, r1
003d8f0c  05 30 a0 e1                                      mov r3, r5
003d8f10  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d8f14  6e 05 fd ea                                      b #0x31a4d4
; mapping-symbol data/literal pool
003d8f18  b4 bb 5b 00 5c 46 00 00 e8 c8 4e 00 70 19 00 00  .byte 0xb4, 0xbb, 0x5b, 0x00, 0x5c, 0x46, 0x00, 0x00, 0xe8, 0xc8, 0x4e, 0x00, 0x70, 0x19, 0x00, 0x00
003d8f28  e0 c8 4e 00                                      .byte 0xe0, 0xc8, 0x4e, 0x00

; FUNCTION 0x003d8f2c, declared_size=24, range_size=24, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript12BindFunctionEv
; demangled: CharAIScript::BindFunction()
; decoder-mode: arm
003d8f2c  10 40 2d e9                                      push {r4, lr}
003d8f30  00 40 a0 e1                                      mov r4, r0
003d8f34  99 89 fe eb                                      bl #0x37b5a0
003d8f38  04 00 a0 e1                                      mov r0, r4
003d8f3c  10 40 bd e8                                      pop {r4, lr}
003d8f40  e0 ff ff ea                                      b #0x3d8ec8

; FUNCTION 0x003d8f44, declared_size=108, range_size=108, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScriptC1Eb
; demangled: CharAIScript::CharAIScript(bool)
; decoder-mode: arm
003d8f44  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8f48  58 50 9f e5                                      ldr r5, [pc, #0x58]
003d8f4c  00 40 a0 e1                                      mov r4, r0
003d8f50  01 60 a0 e1                                      mov r6, r1
003d8f54  c6 8d fe eb                                      bl #0x37c674
003d8f58  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003d8f5c  05 50 8f e0                                      add r5, pc, r5
003d8f60  00 30 a0 e3                                      mov r3, #0
003d8f64  01 10 95 e7                                      ldr r1, [r5, r1]
003d8f68  04 20 a0 e1                                      mov r2, r4
003d8f6c  98 30 84 e5                                      str r3, [r4, #0x98]
003d8f70  08 10 81 e2                                      add r1, r1, #8
003d8f74  00 10 84 e5                                      str r1, [r4]
003d8f78  a0 30 84 e5                                      str r3, [r4, #0xa0]
003d8f7c  03 00 56 e1                                      cmp r6, r3
003d8f80  9c 30 e2 e5                                      strb r3, [r2, #0x9c]!
003d8f84  a8 20 84 e5                                      str r2, [r4, #0xa8]
003d8f88  b4 30 84 e5                                      str r3, [r4, #0xb4]
003d8f8c  a4 20 84 e5                                      str r2, [r4, #0xa4]
003d8f90  ac 30 84 e5                                      str r3, [r4, #0xac]
003d8f94  01 00 00 1a                                      bne #0x3d8fa0
003d8f98  04 00 a0 e1                                      mov r0, r4
003d8f9c  c9 ff ff eb                                      bl #0x3d8ec8
003d8fa0  04 00 a0 e1                                      mov r0, r4
003d8fa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003d8fa8  34 bb 5b 00 9c 0b 00 00                          .byte 0x34, 0xbb, 0x5b, 0x00, 0x9c, 0x0b, 0x00, 0x00

; FUNCTION 0x003d8fb0, declared_size=108, range_size=108, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScriptC2Eb
; demangled: CharAIScript::CharAIScript(bool)
; decoder-mode: arm
003d8fb0  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8fb4  58 50 9f e5                                      ldr r5, [pc, #0x58]
003d8fb8  00 40 a0 e1                                      mov r4, r0
003d8fbc  01 60 a0 e1                                      mov r6, r1
003d8fc0  ab 8d fe eb                                      bl #0x37c674
003d8fc4  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003d8fc8  05 50 8f e0                                      add r5, pc, r5
003d8fcc  00 30 a0 e3                                      mov r3, #0
003d8fd0  01 10 95 e7                                      ldr r1, [r5, r1]
003d8fd4  04 20 a0 e1                                      mov r2, r4
003d8fd8  98 30 84 e5                                      str r3, [r4, #0x98]
003d8fdc  08 10 81 e2                                      add r1, r1, #8
003d8fe0  00 10 84 e5                                      str r1, [r4]
003d8fe4  a0 30 84 e5                                      str r3, [r4, #0xa0]
003d8fe8  03 00 56 e1                                      cmp r6, r3
003d8fec  9c 30 e2 e5                                      strb r3, [r2, #0x9c]!
003d8ff0  a8 20 84 e5                                      str r2, [r4, #0xa8]
003d8ff4  b4 30 84 e5                                      str r3, [r4, #0xb4]
003d8ff8  a4 20 84 e5                                      str r2, [r4, #0xa4]
003d8ffc  ac 30 84 e5                                      str r3, [r4, #0xac]
003d9000  01 00 00 1a                                      bne #0x3d900c
003d9004  04 00 a0 e1                                      mov r0, r4
003d9008  ae ff ff eb                                      bl #0x3d8ec8
003d900c  04 00 a0 e1                                      mov r0, r4
003d9010  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003d9014  c8 ba 5b 00 9c 0b 00 00                          .byte 0xc8, 0xba, 0x5b, 0x00, 0x9c, 0x0b, 0x00, 0x00

; FUNCTION 0x003d90f8, declared_size=192, range_size=192, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript12SetCharacterEP9Character
; demangled: CharAIScript::SetCharacter(Character*)
; decoder-mode: arm
003d90f8  30 40 2d e9                                      push {r4, r5, lr}
003d90fc  98 30 9f e5                                      ldr r3, [pc, #0x98]
003d9100  00 40 51 e2                                      subs r4, r1, #0
003d9104  0c d0 4d e2                                      sub sp, sp, #0xc
003d9108  00 50 a0 e1                                      mov r5, r0
003d910c  03 30 8f e0                                      add r3, pc, r3
003d9110  0c 00 00 0a                                      beq #0x3d9148
003d9114  98 40 85 e5                                      str r4, [r5, #0x98]
003d9118  04 00 a0 e1                                      mov r0, r4
003d911c  10 10 85 e2                                      add r1, r5, #0x10
003d9120  00 30 94 e5                                      ldr r3, [r4]
003d9124  0f e0 a0 e1                                      mov lr, pc
003d9128  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003d912c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d9130  68 00 85 e2                                      add r0, r5, #0x68
003d9134  01 10 8f e0                                      add r1, pc, r1
003d9138  10 20 81 e2                                      add r2, r1, #0x10
003d913c  0c d0 8d e2                                      add sp, sp, #0xc
003d9140  30 40 bd e8                                      pop {r4, r5, lr}
003d9144  25 de fc ea                                      b #0x3109e0
003d9148  54 20 9f e5                                      ldr r2, [pc, #0x54]
003d914c  02 20 93 e7                                      ldr r2, [r3, r2]
003d9150  00 20 92 e5                                      ldr r2, [r2]
003d9154  02 00 52 e3                                      cmp r2, #2
003d9158  00 40 84 05                                      streq r4, [r4]
003d915c  ec ff ff 0a                                      beq #0x3d9114
003d9160  01 00 52 e3                                      cmp r2, #1
003d9164  ea ff ff 1a                                      bne #0x3d9114
003d9168  38 00 9f e5                                      ldr r0, [pc, #0x38]
003d916c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003d9170  38 20 9f e5                                      ldr r2, [pc, #0x38]
003d9174  00 00 93 e7                                      ldr r0, [r3, r0]
003d9178  34 30 9f e5                                      ldr r3, [pc, #0x34]
003d917c  83 c0 a0 e3                                      mov ip, #0x83
003d9180  01 10 8f e0                                      add r1, pc, r1
003d9184  02 20 8f e0                                      add r2, pc, r2
003d9188  03 30 8f e0                                      add r3, pc, r3
003d918c  a8 00 80 e2                                      add r0, r0, #0xa8
003d9190  00 c0 8d e5                                      str ip, [sp]
003d9194  9a d3 fc eb                                      bl #0x30e004
003d9198  dd ff ff ea                                      b #0x3d9114
; mapping-symbol data/literal pool
003d919c  84 b9 5b 00 1c a5 4e 00 c0 39 00 00 c0 19 00 00  .byte 0x84, 0xb9, 0x5b, 0x00, 0x1c, 0xa5, 0x4e, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003d91ac  58 52 4e 00 04 8f 51 00 70 c6 4e 00              .byte 0x58, 0x52, 0x4e, 0x00, 0x04, 0x8f, 0x51, 0x00, 0x70, 0xc6, 0x4e, 0x00

; FUNCTION 0x003d926c, declared_size=104, range_size=104, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScriptD1Ev
; demangled: CharAIScript::~CharAIScript()
; decoder-mode: arm
003d926c  70 40 2d e9                                      push {r4, r5, r6, lr}
003d9270  54 30 9f e5                                      ldr r3, [pc, #0x54]
003d9274  54 20 9f e5                                      ldr r2, [pc, #0x54]
003d9278  ac 10 90 e5                                      ldr r1, [r0, #0xac]
003d927c  03 30 8f e0                                      add r3, pc, r3
003d9280  02 20 93 e7                                      ldr r2, [r3, r2]
003d9284  00 00 51 e3                                      cmp r1, #0
003d9288  00 40 a0 e1                                      mov r4, r0
003d928c  08 20 82 e2                                      add r2, r2, #8
003d9290  00 20 80 e5                                      str r2, [r0]
003d9294  08 00 00 0a                                      beq #0x3d92bc
003d9298  9c 50 80 e2                                      add r5, r0, #0x9c
003d929c  05 00 a0 e1                                      mov r0, r5
003d92a0  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
003d92a4  cf ff ff eb                                      bl #0x3d91e8
003d92a8  00 30 a0 e3                                      mov r3, #0
003d92ac  a8 50 84 e5                                      str r5, [r4, #0xa8]
003d92b0  ac 30 84 e5                                      str r3, [r4, #0xac]
003d92b4  a4 50 84 e5                                      str r5, [r4, #0xa4]
003d92b8  a0 30 84 e5                                      str r3, [r4, #0xa0]
003d92bc  04 00 a0 e1                                      mov r0, r4
003d92c0  fe 8a fe eb                                      bl #0x37bec0
003d92c4  04 00 a0 e1                                      mov r0, r4
003d92c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003d92cc  14 b8 5b 00 9c 0b 00 00                          .byte 0x14, 0xb8, 0x5b, 0x00, 0x9c, 0x0b, 0x00, 0x00

; FUNCTION 0x003d92d4, declared_size=28, range_size=28, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScriptD0Ev
; demangled: CharAIScript::~CharAIScript()
; decoder-mode: arm
003d92d4  10 40 2d e9                                      push {r4, lr}
003d92d8  00 40 a0 e1                                      mov r4, r0
003d92dc  e2 ff ff eb                                      bl #0x3d926c
003d92e0  04 00 a0 e1                                      mov r0, r4
003d92e4  55 dc fc eb                                      bl #0x310440
003d92e8  04 00 a0 e1                                      mov r0, r4
003d92ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d92f0, declared_size=104, range_size=104, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScriptD2Ev
; demangled: CharAIScript::~CharAIScript()
; decoder-mode: arm
003d92f0  70 40 2d e9                                      push {r4, r5, r6, lr}
003d92f4  54 30 9f e5                                      ldr r3, [pc, #0x54]
003d92f8  54 20 9f e5                                      ldr r2, [pc, #0x54]
003d92fc  ac 10 90 e5                                      ldr r1, [r0, #0xac]
003d9300  03 30 8f e0                                      add r3, pc, r3
003d9304  02 20 93 e7                                      ldr r2, [r3, r2]
003d9308  00 00 51 e3                                      cmp r1, #0
003d930c  00 40 a0 e1                                      mov r4, r0
003d9310  08 20 82 e2                                      add r2, r2, #8
003d9314  00 20 80 e5                                      str r2, [r0]
003d9318  08 00 00 0a                                      beq #0x3d9340
003d931c  9c 50 80 e2                                      add r5, r0, #0x9c
003d9320  05 00 a0 e1                                      mov r0, r5
003d9324  a0 10 94 e5                                      ldr r1, [r4, #0xa0]
003d9328  ae ff ff eb                                      bl #0x3d91e8
003d932c  00 30 a0 e3                                      mov r3, #0
003d9330  a8 50 84 e5                                      str r5, [r4, #0xa8]
003d9334  ac 30 84 e5                                      str r3, [r4, #0xac]
003d9338  a4 50 84 e5                                      str r5, [r4, #0xa4]
003d933c  a0 30 84 e5                                      str r3, [r4, #0xa0]
003d9340  04 00 a0 e1                                      mov r0, r4
003d9344  dd 8a fe eb                                      bl #0x37bec0
003d9348  04 00 a0 e1                                      mov r0, r4
003d934c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003d9350  90 b7 5b 00 9c 0b 00 00                          .byte 0x90, 0xb7, 0x5b, 0x00, 0x9c, 0x0b, 0x00, 0x00

; FUNCTION 0x003d9710, declared_size=128, range_size=128, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript12_ChangeStateERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: CharAIScript::_ChangeState(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003d9710  70 40 2d e9                                      push {r4, r5, r6, lr}
003d9714  04 30 90 e5                                      ldr r3, [r0, #4]
003d9718  02 40 a0 e1                                      mov r4, r2
003d971c  08 d0 4d e2                                      sub sp, sp, #8
003d9720  05 00 93 e8                                      ldm r3, {r0, r2}
003d9724  02 30 60 e0                                      rsb r3, r0, r2
003d9728  43 32 a0 e1                                      asr r3, r3, #4
003d972c  83 21 83 e0                                      add r2, r3, r3, lsl #3
003d9730  02 23 82 e0                                      add r2, r2, r2, lsl #6
003d9734  82 21 83 e0                                      add r2, r3, r2, lsl #3
003d9738  82 27 82 e0                                      add r2, r2, r2, lsl #15
003d973c  82 31 83 e0                                      add r3, r3, r2, lsl #3
003d9740  01 00 73 e3                                      cmn r3, #1
003d9744  01 00 00 0a                                      beq #0x3d9750
003d9748  08 d0 8d e2                                      add sp, sp, #8
003d974c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d9750  51 0b fd eb                                      bl #0x31c49c
003d9754  9c 50 84 e2                                      add r5, r4, #0x9c
003d9758  08 10 8d e2                                      add r1, sp, #8
003d975c  04 00 21 e5                                      str r0, [r1, #-4]!
003d9760  05 00 a0 e1                                      mov r0, r5
003d9764  fb fe ff eb                                      bl #0x3d9358
003d9768  05 00 50 e1                                      cmp r0, r5
003d976c  00 60 a0 e1                                      mov r6, r0
003d9770  f4 ff ff 0a                                      beq #0x3d9748
003d9774  04 00 a0 e1                                      mov r0, r4
003d9778  28 60 86 e2                                      add r6, r6, #0x28
003d977c  bd fd ff eb                                      bl #0x3d8e78
003d9780  b4 60 84 e5                                      str r6, [r4, #0xb4]
003d9784  04 00 a0 e1                                      mov r0, r4
003d9788  bf fd ff eb                                      bl #0x3d8e8c
003d978c  ed ff ff ea                                      b #0x3d9748

; FUNCTION 0x003da144, declared_size=652, range_size=652, mode=arm
; class-group: CharAIScript
; alias: _ZN12CharAIScript14_RegisterStateERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
; demangled: CharAIScript::_RegisterState(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
; decoder-mode: arm
003da144  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003da148  04 40 90 e5                                      ldr r4, [r0, #4]
003da14c  00 50 a0 e1                                      mov r5, r0
003da150  1c d0 4d e2                                      sub sp, sp, #0x1c
003da154  09 00 94 e8                                      ldm r4, {r0, r3}
003da158  03 30 60 e0                                      rsb r3, r0, r3
003da15c  43 32 a0 e1                                      asr r3, r3, #4
003da160  83 71 83 e0                                      add r7, r3, r3, lsl #3
003da164  07 73 87 e0                                      add r7, r7, r7, lsl #6
003da168  87 71 83 e0                                      add r7, r3, r7, lsl #3
003da16c  87 77 87 e0                                      add r7, r7, r7, lsl #15
003da170  87 71 83 e0                                      add r7, r3, r7, lsl #3
003da174  00 70 67 e2                                      rsb r7, r7, #0
003da178  01 00 57 e3                                      cmp r7, #1
003da17c  0c 00 00 9a                                      bls #0x3da1b4
003da180  05 00 57 e3                                      cmp r7, #5
003da184  0a 00 00 8a                                      bhi #0x3da1b4
003da188  00 30 a0 e3                                      mov r3, #0
003da18c  03 10 a0 e1                                      mov r1, r3
003da190  01 00 00 ea                                      b #0x3da19c
003da194  07 00 51 e1                                      cmp r1, r7
003da198  07 00 00 2a                                      bhs #0x3da1bc
003da19c  03 c0 80 e0                                      add ip, r0, r3
003da1a0  04 c0 9c e5                                      ldr ip, [ip, #4]
003da1a4  01 10 81 e2                                      add r1, r1, #1
003da1a8  70 30 83 e2                                      add r3, r3, #0x70
003da1ac  04 00 5c e3                                      cmp ip, #4
003da1b0  f7 ff ff 0a                                      beq #0x3da194
003da1b4  1c d0 8d e2                                      add sp, sp, #0x1c
003da1b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003da1bc  00 00 57 e3                                      cmp r7, #0
003da1c0  9c 60 82 e2                                      add r6, r2, #0x9c
003da1c4  77 00 00 0a                                      beq #0x3da3a8
003da1c8  b3 08 fd eb                                      bl #0x31c49c
003da1cc  18 10 8d e2                                      add r1, sp, #0x18
003da1d0  04 00 21 e5                                      str r0, [r1, #-4]!
003da1d4  06 00 a0 e1                                      mov r0, r6
003da1d8  7f ff ff eb                                      bl #0x3d9fdc
003da1dc  04 30 95 e5                                      ldr r3, [r5, #4]
003da1e0  00 60 a0 e1                                      mov r6, r0
003da1e4  03 00 93 e8                                      ldm r3, {r0, r1}
003da1e8  01 10 60 e0                                      rsb r1, r0, r1
003da1ec  41 12 a0 e1                                      asr r1, r1, #4
003da1f0  81 21 81 e0                                      add r2, r1, r1, lsl #3
003da1f4  02 23 82 e0                                      add r2, r2, r2, lsl #6
003da1f8  82 21 81 e0                                      add r2, r1, r2, lsl #3
003da1fc  82 27 82 e0                                      add r2, r2, r2, lsl #15
003da200  82 21 81 e0                                      add r2, r1, r2, lsl #3
003da204  00 20 62 e2                                      rsb r2, r2, #0
003da208  01 00 52 e3                                      cmp r2, #1
003da20c  e8 ff ff 9a                                      bls #0x3da1b4
003da210  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
003da214  a4 91 9f e5                                      ldr sb, [pc, #0x1a4]
003da218  a4 b1 9f e5                                      ldr fp, [pc, #0x1a4]
003da21c  01 10 8f e0                                      add r1, pc, r1
003da220  08 10 8d e5                                      str r1, [sp, #8]
003da224  9c 11 9f e5                                      ldr r1, [pc, #0x19c]
003da228  09 90 8f e0                                      add sb, pc, sb
003da22c  0b b0 8f e0                                      add fp, pc, fp
003da230  01 10 8f e0                                      add r1, pc, r1
003da234  0c 10 8d e5                                      str r1, [sp, #0xc]
003da238  18 a0 86 e2                                      add sl, r6, #0x18
003da23c  30 80 86 e2                                      add r8, r6, #0x30
003da240  48 70 86 e2                                      add r7, r6, #0x48
003da244  01 40 a0 e3                                      mov r4, #1
003da248  01 c0 44 e2                                      sub ip, r4, #1
003da24c  03 00 5c e3                                      cmp ip, #3
003da250  0c f1 8f 90                                      addls pc, pc, ip, lsl #2
003da254  13 00 00 ea                                      b #0x3da2a8
003da258  41 00 00 ea                                      b #0x3da364
003da25c  2f 00 00 ea                                      b #0x3da320
003da260  1d 00 00 ea                                      b #0x3da2dc
003da264  ff ff ff ea                                      b #0x3da268
003da268  04 00 52 e3                                      cmp r2, #4
003da26c  04 00 00 8a                                      bhi #0x3da284
003da270  09 00 a0 e1                                      mov r0, sb
003da274  04 30 8d e5                                      str r3, [sp, #4]
003da278  0c bb 0c eb                                      bl #0x708eb0
003da27c  04 30 9d e5                                      ldr r3, [sp, #4]
003da280  00 00 93 e5                                      ldr r0, [r3]
003da284  07 0d 80 e2                                      add r0, r0, #0x1c0
003da288  83 08 fd eb                                      bl #0x31c49c
003da28c  04 00 8d e5                                      str r0, [sp, #4]
003da290  ef ce fc eb                                      bl #0x30de54
003da294  04 10 9d e5                                      ldr r1, [sp, #4]
003da298  00 20 81 e0                                      add r2, r1, r0
003da29c  07 00 a0 e1                                      mov r0, r7
003da2a0  ce d9 fc eb                                      bl #0x3109e0
003da2a4  04 30 95 e5                                      ldr r3, [r5, #4]
003da2a8  05 00 93 e8                                      ldm r3, {r0, r2}
003da2ac  01 40 84 e2                                      add r4, r4, #1
003da2b0  02 20 60 e0                                      rsb r2, r0, r2
003da2b4  42 22 a0 e1                                      asr r2, r2, #4
003da2b8  82 11 82 e0                                      add r1, r2, r2, lsl #3
003da2bc  01 13 81 e0                                      add r1, r1, r1, lsl #6
003da2c0  81 11 82 e0                                      add r1, r2, r1, lsl #3
003da2c4  81 17 81 e0                                      add r1, r1, r1, lsl #15
003da2c8  81 21 82 e0                                      add r2, r2, r1, lsl #3
003da2cc  00 20 62 e2                                      rsb r2, r2, #0
003da2d0  02 00 54 e1                                      cmp r4, r2
003da2d4  db ff ff 3a                                      blo #0x3da248
003da2d8  b5 ff ff ea                                      b #0x3da1b4
003da2dc  03 00 52 e3                                      cmp r2, #3
003da2e0  04 00 00 8a                                      bhi #0x3da2f8
003da2e4  0b 00 a0 e1                                      mov r0, fp
003da2e8  04 30 8d e5                                      str r3, [sp, #4]
003da2ec  ef ba 0c eb                                      bl #0x708eb0
003da2f0  04 30 9d e5                                      ldr r3, [sp, #4]
003da2f4  00 00 93 e5                                      ldr r0, [r3]
003da2f8  15 0e 80 e2                                      add r0, r0, #0x150
003da2fc  66 08 fd eb                                      bl #0x31c49c
003da300  04 00 8d e5                                      str r0, [sp, #4]
003da304  d2 ce fc eb                                      bl #0x30de54
003da308  04 10 9d e5                                      ldr r1, [sp, #4]
003da30c  00 20 81 e0                                      add r2, r1, r0
003da310  08 00 a0 e1                                      mov r0, r8
003da314  b1 d9 fc eb                                      bl #0x3109e0
003da318  04 30 95 e5                                      ldr r3, [r5, #4]
003da31c  e1 ff ff ea                                      b #0x3da2a8
003da320  02 00 52 e3                                      cmp r2, #2
003da324  04 00 00 8a                                      bhi #0x3da33c
003da328  08 00 9d e5                                      ldr r0, [sp, #8]
003da32c  04 30 8d e5                                      str r3, [sp, #4]
003da330  de ba 0c eb                                      bl #0x708eb0
003da334  04 30 9d e5                                      ldr r3, [sp, #4]
003da338  00 00 93 e5                                      ldr r0, [r3]
003da33c  e0 00 80 e2                                      add r0, r0, #0xe0
003da340  55 08 fd eb                                      bl #0x31c49c
003da344  04 00 8d e5                                      str r0, [sp, #4]
003da348  c1 ce fc eb                                      bl #0x30de54
003da34c  04 10 9d e5                                      ldr r1, [sp, #4]
003da350  00 20 81 e0                                      add r2, r1, r0
003da354  0a 00 a0 e1                                      mov r0, sl
003da358  a0 d9 fc eb                                      bl #0x3109e0
003da35c  04 30 95 e5                                      ldr r3, [r5, #4]
003da360  d0 ff ff ea                                      b #0x3da2a8
003da364  01 00 52 e3                                      cmp r2, #1
003da368  04 00 00 8a                                      bhi #0x3da380
003da36c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003da370  04 30 8d e5                                      str r3, [sp, #4]
003da374  cd ba 0c eb                                      bl #0x708eb0
003da378  04 30 9d e5                                      ldr r3, [sp, #4]
003da37c  00 00 93 e5                                      ldr r0, [r3]
003da380  70 00 80 e2                                      add r0, r0, #0x70
003da384  44 08 fd eb                                      bl #0x31c49c
003da388  04 00 8d e5                                      str r0, [sp, #4]
003da38c  b0 ce fc eb                                      bl #0x30de54
003da390  04 10 9d e5                                      ldr r1, [sp, #4]
003da394  00 20 81 e0                                      add r2, r1, r0
003da398  06 00 a0 e1                                      mov r0, r6
003da39c  8f d9 fc eb                                      bl #0x3109e0
003da3a0  04 30 95 e5                                      ldr r3, [r5, #4]
003da3a4  bf ff ff ea                                      b #0x3da2a8
003da3a8  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
003da3ac  00 00 8f e0                                      add r0, pc, r0
003da3b0  be ba 0c eb                                      bl #0x708eb0
003da3b4  00 00 94 e5                                      ldr r0, [r4]
003da3b8  82 ff ff ea                                      b #0x3da1c8
; mapping-symbol data/literal pool
003da3bc  4c 42 4e 00 40 42 4e 00 3c 42 4e 00 38 42 4e 00  .byte 0x4c, 0x42, 0x4e, 0x00, 0x40, 0x42, 0x4e, 0x00, 0x3c, 0x42, 0x4e, 0x00, 0x38, 0x42, 0x4e, 0x00
003da3cc  bc 40 4e 00                                      .byte 0xbc, 0x40, 0x4e, 0x00
