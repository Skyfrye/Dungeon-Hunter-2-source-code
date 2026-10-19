; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00863228, declared_size=240, range_size=240, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj20ProcessNonNativeDataEf
; demangled: vox::EmitterObj::ProcessNonNativeData(float)
; decoder-mode: arm
00863228  10 40 2d e9                                      push {r4, lr}
0086322c  10 31 90 e5                                      ldr r3, [r0, #0x110]
00863230  00 40 a0 e1                                      mov r4, r0
00863234  03 00 a0 e1                                      mov r0, r3
00863238  00 30 93 e5                                      ldr r3, [r3]
0086323c  0f e0 a0 e1                                      mov lr, pc
00863240  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00863244  00 00 50 e3                                      cmp r0, #0
00863248  00 00 00 1a                                      bne #0x863250
0086324c  10 80 bd e8                                      pop {r4, pc}
00863250  14 31 94 e5                                      ldr r3, [r4, #0x114]
00863254  03 00 a0 e1                                      mov r0, r3
00863258  00 30 93 e5                                      ldr r3, [r3]
0086325c  0f e0 a0 e1                                      mov lr, pc
00863260  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00863264  00 00 50 e3                                      cmp r0, #0
00863268  f7 ff ff 0a                                      beq #0x86324c
0086326c  00 21 94 e5                                      ldr r2, [r4, #0x100]
00863270  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00863274  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
00863278  02 21 83 e0                                      add r2, r3, r2, lsl #2
0086327c  00 00 50 e3                                      cmp r0, #0
00863280  17 00 00 0a                                      beq #0x8632e4
00863284  14 31 94 e5                                      ldr r3, [r4, #0x114]
00863288  02 10 a0 e1                                      mov r1, r2
0086328c  08 21 94 e5                                      ldr r2, [r4, #0x108]
00863290  03 00 a0 e1                                      mov r0, r3
00863294  00 30 93 e5                                      ldr r3, [r3]
00863298  0f e0 a0 e1                                      mov lr, pc
0086329c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
008632a0  00 20 50 e2                                      subs r2, r0, #0
008632a4  e8 ff ff da                                      ble #0x86324c
008632a8  10 31 94 e5                                      ldr r3, [r4, #0x110]
008632ac  00 c1 94 e5                                      ldr ip, [r4, #0x100]
008632b0  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
008632b4  03 00 a0 e1                                      mov r0, r3
008632b8  00 30 93 e5                                      ldr r3, [r3]
008632bc  0c 11 91 e7                                      ldr r1, [r1, ip, lsl #2]
008632c0  0f e0 a0 e1                                      mov lr, pc
008632c4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008632c8  00 01 94 e5                                      ldr r0, [r4, #0x100]
008632cc  04 11 94 e5                                      ldr r1, [r4, #0x104]
008632d0  01 00 80 e2                                      add r0, r0, #1
008632d4  00 01 84 e5                                      str r0, [r4, #0x100]
008632d8  89 ad ea eb                                      bl #0x30e904
008632dc  00 11 84 e5                                      str r1, [r4, #0x100]
008632e0  10 80 bd e8                                      pop {r4, pc}
008632e4  14 31 94 e5                                      ldr r3, [r4, #0x114]
008632e8  03 00 a0 e1                                      mov r0, r3
008632ec  00 30 93 e5                                      ldr r3, [r3]
008632f0  0f e0 a0 e1                                      mov lr, pc
008632f4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
008632f8  00 00 50 e3                                      cmp r0, #0
008632fc  00 30 e0 03                                      mvneq r3, #0
00863300  94 30 84 05                                      streq r3, [r4, #0x94]
00863304  d0 ff ff 0a                                      beq #0x86324c
00863308  00 21 94 e5                                      ldr r2, [r4, #0x100]
0086330c  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00863310  02 21 83 e0                                      add r2, r3, r2, lsl #2
00863314  da ff ff ea                                      b #0x863284

; FUNCTION 0x00863318, declared_size=528, range_size=528, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8Update3DEv
; demangled: vox::EmitterObj::Update3D()
; decoder-mode: arm
00863318  10 40 2d e9                                      push {r4, lr}
0086331c  e0 30 d0 e5                                      ldrb r3, [r0, #0xe0]
00863320  00 40 a0 e1                                      mov r4, r0
00863324  00 00 53 e3                                      cmp r3, #0
00863328  74 00 00 1a                                      bne #0x863500
0086332c  e1 30 d4 e5                                      ldrb r3, [r4, #0xe1]
00863330  00 00 53 e3                                      cmp r3, #0
00863334  67 00 00 1a                                      bne #0x8634d8
00863338  e2 30 d4 e5                                      ldrb r3, [r4, #0xe2]
0086333c  00 00 53 e3                                      cmp r3, #0
00863340  5a 00 00 1a                                      bne #0x8634b0
00863344  e3 30 d4 e5                                      ldrb r3, [r4, #0xe3]
00863348  00 00 53 e3                                      cmp r3, #0
0086334c  4d 00 00 1a                                      bne #0x863488
00863350  e4 30 d4 e5                                      ldrb r3, [r4, #0xe4]
00863354  00 00 53 e3                                      cmp r3, #0
00863358  40 00 00 1a                                      bne #0x863460
0086335c  e5 30 d4 e5                                      ldrb r3, [r4, #0xe5]
00863360  00 00 53 e3                                      cmp r3, #0
00863364  33 00 00 1a                                      bne #0x863438
00863368  e6 30 d4 e5                                      ldrb r3, [r4, #0xe6]
0086336c  00 00 53 e3                                      cmp r3, #0
00863370  26 00 00 1a                                      bne #0x863410
00863374  e8 30 d4 e5                                      ldrb r3, [r4, #0xe8]
00863378  00 00 53 e3                                      cmp r3, #0
0086337c  19 00 00 1a                                      bne #0x8633e8
00863380  e9 30 d4 e5                                      ldrb r3, [r4, #0xe9]
00863384  00 00 53 e3                                      cmp r3, #0
00863388  0c 00 00 1a                                      bne #0x8633c0
0086338c  ea 30 d4 e5                                      ldrb r3, [r4, #0xea]
00863390  00 00 53 e3                                      cmp r3, #0
00863394  08 00 00 0a                                      beq #0x8633bc
00863398  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086339c  0a 10 a0 e3                                      mov r1, #0xa
008633a0  a8 20 84 e2                                      add r2, r4, #0xa8
008633a4  03 00 a0 e1                                      mov r0, r3
008633a8  00 30 93 e5                                      ldr r3, [r3]
008633ac  0f e0 a0 e1                                      mov lr, pc
008633b0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008633b4  00 30 a0 e3                                      mov r3, #0
008633b8  ea 30 c4 e5                                      strb r3, [r4, #0xea]
008633bc  10 80 bd e8                                      pop {r4, pc}
008633c0  10 31 94 e5                                      ldr r3, [r4, #0x110]
008633c4  09 10 a0 e3                                      mov r1, #9
008633c8  b4 20 84 e2                                      add r2, r4, #0xb4
008633cc  03 00 a0 e1                                      mov r0, r3
008633d0  00 30 93 e5                                      ldr r3, [r3]
008633d4  0f e0 a0 e1                                      mov lr, pc
008633d8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008633dc  00 30 a0 e3                                      mov r3, #0
008633e0  e9 30 c4 e5                                      strb r3, [r4, #0xe9]
008633e4  e8 ff ff ea                                      b #0x86338c
008633e8  10 31 94 e5                                      ldr r3, [r4, #0x110]
008633ec  08 10 a0 e3                                      mov r1, #8
008633f0  9c 20 84 e2                                      add r2, r4, #0x9c
008633f4  03 00 a0 e1                                      mov r0, r3
008633f8  00 30 93 e5                                      ldr r3, [r3]
008633fc  0f e0 a0 e1                                      mov lr, pc
00863400  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00863404  00 30 a0 e3                                      mov r3, #0
00863408  e8 30 c4 e5                                      strb r3, [r4, #0xe8]
0086340c  db ff ff ea                                      b #0x863380
00863410  10 31 94 e5                                      ldr r3, [r4, #0x110]
00863414  06 10 a0 e3                                      mov r1, #6
00863418  d8 20 84 e2                                      add r2, r4, #0xd8
0086341c  03 00 a0 e1                                      mov r0, r3
00863420  00 30 93 e5                                      ldr r3, [r3]
00863424  0f e0 a0 e1                                      mov lr, pc
00863428  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0086342c  00 30 a0 e3                                      mov r3, #0
00863430  e6 30 c4 e5                                      strb r3, [r4, #0xe6]
00863434  ce ff ff ea                                      b #0x863374
00863438  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086343c  05 10 a0 e3                                      mov r1, #5
00863440  d4 20 84 e2                                      add r2, r4, #0xd4
00863444  03 00 a0 e1                                      mov r0, r3
00863448  00 30 93 e5                                      ldr r3, [r3]
0086344c  0f e0 a0 e1                                      mov lr, pc
00863450  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00863454  00 30 a0 e3                                      mov r3, #0
00863458  e5 30 c4 e5                                      strb r3, [r4, #0xe5]
0086345c  c1 ff ff ea                                      b #0x863368
00863460  10 31 94 e5                                      ldr r3, [r4, #0x110]
00863464  04 10 a0 e3                                      mov r1, #4
00863468  d0 20 84 e2                                      add r2, r4, #0xd0
0086346c  03 00 a0 e1                                      mov r0, r3
00863470  00 30 93 e5                                      ldr r3, [r3]
00863474  0f e0 a0 e1                                      mov lr, pc
00863478  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0086347c  00 30 a0 e3                                      mov r3, #0
00863480  e4 30 c4 e5                                      strb r3, [r4, #0xe4]
00863484  b4 ff ff ea                                      b #0x86335c
00863488  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086348c  03 10 a0 e3                                      mov r1, #3
00863490  cc 20 84 e2                                      add r2, r4, #0xcc
00863494  03 00 a0 e1                                      mov r0, r3
00863498  00 30 93 e5                                      ldr r3, [r3]
0086349c  0f e0 a0 e1                                      mov lr, pc
008634a0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008634a4  00 30 a0 e3                                      mov r3, #0
008634a8  e3 30 c4 e5                                      strb r3, [r4, #0xe3]
008634ac  a7 ff ff ea                                      b #0x863350
008634b0  10 31 94 e5                                      ldr r3, [r4, #0x110]
008634b4  02 10 a0 e3                                      mov r1, #2
008634b8  c8 20 84 e2                                      add r2, r4, #0xc8
008634bc  03 00 a0 e1                                      mov r0, r3
008634c0  00 30 93 e5                                      ldr r3, [r3]
008634c4  0f e0 a0 e1                                      mov lr, pc
008634c8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008634cc  00 30 a0 e3                                      mov r3, #0
008634d0  e2 30 c4 e5                                      strb r3, [r4, #0xe2]
008634d4  9a ff ff ea                                      b #0x863344
008634d8  10 31 94 e5                                      ldr r3, [r4, #0x110]
008634dc  01 10 a0 e3                                      mov r1, #1
008634e0  c4 20 84 e2                                      add r2, r4, #0xc4
008634e4  03 00 a0 e1                                      mov r0, r3
008634e8  00 30 93 e5                                      ldr r3, [r3]
008634ec  0f e0 a0 e1                                      mov lr, pc
008634f0  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
008634f4  00 30 a0 e3                                      mov r3, #0
008634f8  e1 30 c4 e5                                      strb r3, [r4, #0xe1]
008634fc  8d ff ff ea                                      b #0x863338
00863500  10 31 90 e5                                      ldr r3, [r0, #0x110]
00863504  c0 20 80 e2                                      add r2, r0, #0xc0
00863508  00 10 a0 e3                                      mov r1, #0
0086350c  03 00 a0 e1                                      mov r0, r3
00863510  00 30 93 e5                                      ldr r3, [r3]
00863514  0f e0 a0 e1                                      mov lr, pc
00863518  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
0086351c  00 30 a0 e3                                      mov r3, #0
00863520  e0 30 c4 e5                                      strb r3, [r4, #0xe0]
00863524  80 ff ff ea                                      b #0x86332c

; FUNCTION 0x00863528, declared_size=8, range_size=8, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj15SetGainModifierEf
; demangled: vox::EmitterObj::SetGainModifier(float)
; decoder-mode: arm
00863528  44 10 80 e5                                      str r1, [r0, #0x44]
0086352c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00863530, declared_size=12, range_size=12, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7IsReadyEv
; demangled: vox::EmitterObj::IsReady()
; decoder-mode: arm
00863530  1c 00 d0 e5                                      ldrb r0, [r0, #0x1c]
00863534  01 00 20 e2                                      eor r0, r0, #1
00863538  1e ff 2f e1                                      bx lr

; FUNCTION 0x0086353c, declared_size=60, range_size=60, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7_IsDoneEv
; demangled: vox::EmitterObj::_IsDone()
; decoder-mode: arm
0086353c  90 30 90 e5                                      ldr r3, [r0, #0x90]
00863540  03 00 53 e3                                      cmp r3, #3
00863544  06 00 00 0a                                      beq #0x863564
00863548  00 00 53 e3                                      cmp r3, #0
0086354c  00 00 a0 13                                      movne r0, #0
00863550  1e ff 2f 11                                      bxne lr
00863554  94 00 90 e5                                      ldr r0, [r0, #0x94]
00863558  01 00 70 e2                                      rsbs r0, r0, #1
0086355c  00 00 a0 33                                      movlo r0, #0
00863560  1e ff 2f e1                                      bx lr
00863564  94 00 90 e5                                      ldr r0, [r0, #0x94]
00863568  03 00 50 e3                                      cmp r0, #3
0086356c  00 00 a0 13                                      movne r0, #0
00863570  01 00 a0 03                                      moveq r0, #1
00863574  1e ff 2f e1                                      bx lr

; FUNCTION 0x008638e4, declared_size=112, range_size=112, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj9UpdateDSPEf
; demangled: vox::EmitterObj::UpdateDSP(float)
; decoder-mode: arm
008638e4  70 40 2d e9                                      push {r4, r5, r6, lr}
008638e8  f0 30 90 e5                                      ldr r3, [r0, #0xf0]
008638ec  00 40 a0 e1                                      mov r4, r0
008638f0  01 50 a0 e1                                      mov r5, r1
008638f4  00 00 53 e3                                      cmp r3, #0
008638f8  0c 00 00 0a                                      beq #0x863930
008638fc  ec 00 90 e5                                      ldr r0, [r0, #0xec]
00863900  cf b2 ea eb                                      bl #0x310444
00863904  10 31 94 e5                                      ldr r3, [r4, #0x110]
00863908  f0 20 94 e5                                      ldr r2, [r4, #0xf0]
0086390c  00 10 a0 e3                                      mov r1, #0
00863910  01 00 53 e1                                      cmp r3, r1
00863914  ec 20 84 e5                                      str r2, [r4, #0xec]
00863918  f0 10 84 e5                                      str r1, [r4, #0xf0]
0086391c  0b 00 00 0a                                      beq #0x863950
00863920  03 00 a0 e1                                      mov r0, r3
00863924  00 30 93 e5                                      ldr r3, [r3]
00863928  0f e0 a0 e1                                      mov lr, pc
0086392c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00863930  10 31 94 e5                                      ldr r3, [r4, #0x110]
00863934  00 00 53 e3                                      cmp r3, #0
00863938  04 00 00 0a                                      beq #0x863950
0086393c  03 00 a0 e1                                      mov r0, r3
00863940  05 10 a0 e1                                      mov r1, r5
00863944  00 30 93 e5                                      ldr r3, [r3]
00863948  0f e0 a0 e1                                      mov lr, pc
0086394c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00863950  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00863954, declared_size=132, range_size=132, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7CleanUpEv
; demangled: vox::EmitterObj::CleanUp()
; decoder-mode: arm
00863954  70 40 2d e9                                      push {r4, r5, r6, lr}
00863958  14 31 90 e5                                      ldr r3, [r0, #0x114]
0086395c  00 50 a0 e1                                      mov r5, r0
00863960  00 00 53 e3                                      cmp r3, #0
00863964  11 00 00 0a                                      beq #0x8639b0
00863968  03 00 a0 e1                                      mov r0, r3
0086396c  00 30 93 e5                                      ldr r3, [r3]
00863970  0f e0 a0 e1                                      mov lr, pc
00863974  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00863978  00 40 50 e2                                      subs r4, r0, #0
0086397c  0b 00 00 1a                                      bne #0x8639b0
00863980  04 21 95 e5                                      ldr r2, [r5, #0x104]
00863984  00 00 52 e3                                      cmp r2, #0
00863988  08 00 00 da                                      ble #0x8639b0
0086398c  f4 30 95 e5                                      ldr r3, [r5, #0xf4]
00863990  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00863994  01 40 84 e2                                      add r4, r4, #1
00863998  00 00 50 e3                                      cmp r0, #0
0086399c  01 00 00 0a                                      beq #0x8639a8
008639a0  a7 b2 ea eb                                      bl #0x310444
008639a4  04 21 95 e5                                      ldr r2, [r5, #0x104]
008639a8  04 00 52 e1                                      cmp r2, r4
008639ac  f6 ff ff ca                                      bgt #0x86398c
008639b0  ec 00 95 e5                                      ldr r0, [r5, #0xec]
008639b4  00 00 50 e3                                      cmp r0, #0
008639b8  00 00 00 0a                                      beq #0x8639c0
008639bc  a0 b2 ea eb                                      bl #0x310444
008639c0  f0 00 95 e5                                      ldr r0, [r5, #0xf0]
008639c4  00 00 50 e3                                      cmp r0, #0
008639c8  01 00 00 0a                                      beq #0x8639d4
008639cc  70 40 bd e8                                      pop {r4, r5, r6, lr}
008639d0  9b b2 ea ea                                      b #0x310444
008639d4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00864b5c, declared_size=144, range_size=144, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj9GetStatusEv
; demangled: vox::EmitterObj::GetStatus()
; decoder-mode: arm
00864b5c  70 40 2d e9                                      push {r4, r5, r6, lr}
00864b60  18 50 80 e2                                      add r5, r0, #0x18
00864b64  00 40 a0 e1                                      mov r4, r0
00864b68  05 00 a0 e1                                      mov r0, r5
00864b6c  42 ba 00 eb                                      bl #0x89347c
00864b70  90 30 94 e5                                      ldr r3, [r4, #0x90]
00864b74  01 00 53 e3                                      cmp r3, #1
00864b78  10 00 00 0a                                      beq #0x864bc0
00864b7c  02 00 53 e3                                      cmp r3, #2
00864b80  09 00 00 0a                                      beq #0x864bac
00864b84  00 00 53 e3                                      cmp r3, #0
00864b88  03 00 53 13                                      cmpne r3, #3
00864b8c  00 30 a0 13                                      movne r3, #0
00864b90  01 30 a0 03                                      moveq r3, #1
00864b94  03 40 a0 11                                      movne r4, r3
00864b98  04 40 a0 03                                      moveq r4, #4
00864b9c  05 00 a0 e1                                      mov r0, r5
00864ba0  34 ba 00 eb                                      bl #0x893478
00864ba4  04 00 a0 e1                                      mov r0, r4
00864ba8  70 80 bd e8                                      pop {r4, r5, r6, pc}
00864bac  03 40 a0 e1                                      mov r4, r3
00864bb0  05 00 a0 e1                                      mov r0, r5
00864bb4  2f ba 00 eb                                      bl #0x893478
00864bb8  04 00 a0 e1                                      mov r0, r4
00864bbc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00864bc0  6c 20 d4 e5                                      ldrb r2, [r4, #0x6c]
00864bc4  00 00 52 e3                                      cmp r2, #0
00864bc8  f7 ff ff 1a                                      bne #0x864bac
00864bcc  94 40 94 e5                                      ldr r4, [r4, #0x94]
00864bd0  05 00 a0 e1                                      mov r0, r5
00864bd4  01 00 54 e3                                      cmp r4, #1
00864bd8  11 40 a0 03                                      moveq r4, #0x11
00864bdc  21 40 a0 13                                      movne r4, #0x21
00864be0  24 ba 00 eb                                      bl #0x893478
00864be4  04 00 a0 e1                                      mov r0, r4
00864be8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00864bec, declared_size=200, range_size=200, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj30NeedToSendStateChangedCallbackERPFvRNS_13EmitterHandleEPvNS_18EmitterExternStateEERS3_RS4_
; demangled: vox::EmitterObj::NeedToSendStateChangedCallback(void (*&)(vox::EmitterHandle&, void*, vox::EmitterExternState), void*&, vox::EmitterExternState&)
; decoder-mode: arm
00864bec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864bf0  18 50 80 e2                                      add r5, r0, #0x18
00864bf4  00 40 a0 e1                                      mov r4, r0
00864bf8  05 00 a0 e1                                      mov r0, r5
00864bfc  03 80 a0 e1                                      mov r8, r3
00864c00  01 60 a0 e1                                      mov r6, r1
00864c04  02 70 a0 e1                                      mov r7, r2
00864c08  1b ba 00 eb                                      bl #0x89347c
00864c0c  98 30 d4 e5                                      ldrb r3, [r4, #0x98]
00864c10  00 00 53 e3                                      cmp r3, #0
00864c14  0f 00 00 0a                                      beq #0x864c58
00864c18  38 31 94 e5                                      ldr r3, [r4, #0x138]
00864c1c  00 00 53 e3                                      cmp r3, #0
00864c20  0c 00 00 0a                                      beq #0x864c58
00864c24  00 20 a0 e3                                      mov r2, #0
00864c28  98 20 c4 e5                                      strb r2, [r4, #0x98]
00864c2c  00 30 86 e5                                      str r3, [r6]
00864c30  3c 31 94 e5                                      ldr r3, [r4, #0x13c]
00864c34  00 30 87 e5                                      str r3, [r7]
00864c38  90 30 94 e5                                      ldr r3, [r4, #0x90]
00864c3c  03 00 53 e3                                      cmp r3, #3
00864c40  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00864c44  0f 00 00 ea                                      b #0x864c88
00864c48  07 00 00 ea                                      b #0x864c6c
00864c4c  15 00 00 ea                                      b #0x864ca8
00864c50  10 00 00 ea                                      b #0x864c98
00864c54  04 00 00 ea                                      b #0x864c6c
00864c58  00 40 a0 e3                                      mov r4, #0
00864c5c  05 00 a0 e1                                      mov r0, r5
00864c60  04 ba 00 eb                                      bl #0x893478
00864c64  04 00 a0 e1                                      mov r0, r4
00864c68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00864c6c  04 30 a0 e3                                      mov r3, #4
00864c70  05 00 a0 e1                                      mov r0, r5
00864c74  00 30 88 e5                                      str r3, [r8]
00864c78  01 40 a0 e3                                      mov r4, #1
00864c7c  fd b9 00 eb                                      bl #0x893478
00864c80  04 00 a0 e1                                      mov r0, r4
00864c84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00864c88  00 30 a0 e3                                      mov r3, #0
00864c8c  00 30 88 e5                                      str r3, [r8]
00864c90  01 40 a0 e3                                      mov r4, #1
00864c94  f0 ff ff ea                                      b #0x864c5c
00864c98  02 30 a0 e3                                      mov r3, #2
00864c9c  00 30 88 e5                                      str r3, [r8]
00864ca0  01 40 a0 e3                                      mov r4, #1
00864ca4  ec ff ff ea                                      b #0x864c5c
00864ca8  01 40 a0 e3                                      mov r4, #1
00864cac  00 40 88 e5                                      str r4, [r8]
00864cb0  e9 ff ff ea                                      b #0x864c5c

; FUNCTION 0x00864cb4, declared_size=44, range_size=44, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj30UnregisterStateChangedCallbackEv
; demangled: vox::EmitterObj::UnregisterStateChangedCallback()
; decoder-mode: arm
00864cb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00864cb8  18 50 80 e2                                      add r5, r0, #0x18
00864cbc  00 40 a0 e1                                      mov r4, r0
00864cc0  05 00 a0 e1                                      mov r0, r5
00864cc4  ec b9 00 eb                                      bl #0x89347c
00864cc8  00 30 a0 e3                                      mov r3, #0
00864ccc  05 00 a0 e1                                      mov r0, r5
00864cd0  3c 31 84 e5                                      str r3, [r4, #0x13c]
00864cd4  38 31 84 e5                                      str r3, [r4, #0x138]
00864cd8  70 40 bd e8                                      pop {r4, r5, r6, lr}
00864cdc  e5 b9 00 ea                                      b #0x893478

; FUNCTION 0x00864ce0, declared_size=48, range_size=48, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj28RegisterStateChangedCallbackEPFvRNS_13EmitterHandleEPvNS_18EmitterExternStateEES3_
; demangled: vox::EmitterObj::RegisterStateChangedCallback(void (*)(vox::EmitterHandle&, void*, vox::EmitterExternState), void*)
; decoder-mode: arm
00864ce0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864ce4  18 50 80 e2                                      add r5, r0, #0x18
00864ce8  00 40 a0 e1                                      mov r4, r0
00864cec  05 00 a0 e1                                      mov r0, r5
00864cf0  01 60 a0 e1                                      mov r6, r1
00864cf4  02 70 a0 e1                                      mov r7, r2
00864cf8  df b9 00 eb                                      bl #0x89347c
00864cfc  05 00 a0 e1                                      mov r0, r5
00864d00  3c 71 84 e5                                      str r7, [r4, #0x13c]
00864d04  38 61 84 e5                                      str r6, [r4, #0x138]
00864d08  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00864d0c  d9 b9 00 ea                                      b #0x893478

; FUNCTION 0x00864e28, declared_size=60, range_size=60, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj10PrintDebugEv
; demangled: vox::EmitterObj::PrintDebug()
; decoder-mode: arm
00864e28  70 40 2d e9                                      push {r4, r5, r6, lr}
00864e2c  18 40 80 e2                                      add r4, r0, #0x18
00864e30  00 50 a0 e1                                      mov r5, r0
00864e34  04 00 a0 e1                                      mov r0, r4
00864e38  8f b9 00 eb                                      bl #0x89347c
00864e3c  10 31 95 e5                                      ldr r3, [r5, #0x110]
00864e40  00 00 53 e3                                      cmp r3, #0
00864e44  03 00 00 0a                                      beq #0x864e58
00864e48  03 00 a0 e1                                      mov r0, r3
00864e4c  00 30 93 e5                                      ldr r3, [r3]
00864e50  0f e0 a0 e1                                      mov lr, pc
00864e54  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00864e58  04 00 a0 e1                                      mov r0, r4
00864e5c  70 40 bd e8                                      pop {r4, r5, r6, lr}
00864e60  84 b9 00 ea                                      b #0x893478

; FUNCTION 0x00864e64, declared_size=160, range_size=160, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj16Get3DParameterfvEiRNS_11VoxVector3fE
; demangled: vox::EmitterObj::Get3DParameterfv(int, vox::VoxVector3f&)
; decoder-mode: arm
00864e64  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864e68  18 50 80 e2                                      add r5, r0, #0x18
00864e6c  01 60 a0 e1                                      mov r6, r1
00864e70  00 40 a0 e1                                      mov r4, r0
00864e74  05 00 a0 e1                                      mov r0, r5
00864e78  02 70 a0 e1                                      mov r7, r2
00864e7c  7e b9 00 eb                                      bl #0x89347c
00864e80  09 00 56 e3                                      cmp r6, #9
00864e84  16 00 00 0a                                      beq #0x864ee4
00864e88  0a 00 56 e3                                      cmp r6, #0xa
00864e8c  0c 00 00 0a                                      beq #0x864ec4
00864e90  08 00 56 e3                                      cmp r6, #8
00864e94  02 00 00 0a                                      beq #0x864ea4
00864e98  05 00 a0 e1                                      mov r0, r5
00864e9c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00864ea0  74 b9 00 ea                                      b #0x893478
00864ea4  9c 20 94 e5                                      ldr r2, [r4, #0x9c]
00864ea8  07 30 a0 e1                                      mov r3, r7
00864eac  04 20 83 e4                                      str r2, [r3], #4
00864eb0  a0 20 94 e5                                      ldr r2, [r4, #0xa0]
00864eb4  04 20 87 e5                                      str r2, [r7, #4]
00864eb8  a4 20 94 e5                                      ldr r2, [r4, #0xa4]
00864ebc  04 20 83 e5                                      str r2, [r3, #4]
00864ec0  f4 ff ff ea                                      b #0x864e98
00864ec4  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
00864ec8  07 30 a0 e1                                      mov r3, r7
00864ecc  04 20 83 e4                                      str r2, [r3], #4
00864ed0  ac 20 94 e5                                      ldr r2, [r4, #0xac]
00864ed4  04 20 87 e5                                      str r2, [r7, #4]
00864ed8  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
00864edc  04 20 83 e5                                      str r2, [r3, #4]
00864ee0  ec ff ff ea                                      b #0x864e98
00864ee4  b4 20 94 e5                                      ldr r2, [r4, #0xb4]
00864ee8  07 30 a0 e1                                      mov r3, r7
00864eec  04 20 83 e4                                      str r2, [r3], #4
00864ef0  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
00864ef4  04 20 87 e5                                      str r2, [r7, #4]
00864ef8  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
00864efc  04 20 83 e5                                      str r2, [r3, #4]
00864f00  e4 ff ff ea                                      b #0x864e98

; FUNCTION 0x00864f04, declared_size=156, range_size=156, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj16Get3DParameter3fEiRfS1_S1_
; demangled: vox::EmitterObj::Get3DParameter3f(int, float&, float&, float&)
; decoder-mode: arm
00864f04  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00864f08  18 50 80 e2                                      add r5, r0, #0x18
00864f0c  01 60 a0 e1                                      mov r6, r1
00864f10  00 40 a0 e1                                      mov r4, r0
00864f14  05 00 a0 e1                                      mov r0, r5
00864f18  02 70 a0 e1                                      mov r7, r2
00864f1c  03 a0 a0 e1                                      mov sl, r3
00864f20  20 80 9d e5                                      ldr r8, [sp, #0x20]
00864f24  54 b9 00 eb                                      bl #0x89347c
00864f28  09 00 56 e3                                      cmp r6, #9
00864f2c  14 00 00 0a                                      beq #0x864f84
00864f30  0a 00 56 e3                                      cmp r6, #0xa
00864f34  0b 00 00 0a                                      beq #0x864f68
00864f38  08 00 56 e3                                      cmp r6, #8
00864f3c  02 00 00 0a                                      beq #0x864f4c
00864f40  05 00 a0 e1                                      mov r0, r5
00864f44  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00864f48  4a b9 00 ea                                      b #0x893478
00864f4c  9c 30 94 e5                                      ldr r3, [r4, #0x9c]
00864f50  00 30 87 e5                                      str r3, [r7]
00864f54  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00864f58  00 30 8a e5                                      str r3, [sl]
00864f5c  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
00864f60  00 30 88 e5                                      str r3, [r8]
00864f64  f5 ff ff ea                                      b #0x864f40
00864f68  a8 30 94 e5                                      ldr r3, [r4, #0xa8]
00864f6c  00 30 87 e5                                      str r3, [r7]
00864f70  ac 30 94 e5                                      ldr r3, [r4, #0xac]
00864f74  00 30 8a e5                                      str r3, [sl]
00864f78  b0 30 94 e5                                      ldr r3, [r4, #0xb0]
00864f7c  00 30 88 e5                                      str r3, [r8]
00864f80  ee ff ff ea                                      b #0x864f40
00864f84  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
00864f88  00 30 87 e5                                      str r3, [r7]
00864f8c  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
00864f90  00 30 8a e5                                      str r3, [sl]
00864f94  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
00864f98  00 30 88 e5                                      str r3, [r8]
00864f9c  e7 ff ff ea                                      b #0x864f40

; FUNCTION 0x00864fa0, declared_size=164, range_size=164, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj15Get3DParameterfEiRf
; demangled: vox::EmitterObj::Get3DParameterf(int, float&)
; decoder-mode: arm
00864fa0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00864fa4  01 60 a0 e1                                      mov r6, r1
00864fa8  18 40 80 e2                                      add r4, r0, #0x18
00864fac  00 50 a0 e1                                      mov r5, r0
00864fb0  01 60 46 e2                                      sub r6, r6, #1
00864fb4  04 00 a0 e1                                      mov r0, r4
00864fb8  02 70 a0 e1                                      mov r7, r2
00864fbc  2e b9 00 eb                                      bl #0x89347c
00864fc0  06 00 56 e3                                      cmp r6, #6
00864fc4  06 f1 8f 90                                      addls pc, pc, r6, lsl #2
00864fc8  08 00 00 ea                                      b #0x864ff0
00864fcc  05 00 00 ea                                      b #0x864fe8
00864fd0  0f 00 00 ea                                      b #0x865014
00864fd4  11 00 00 ea                                      b #0x865020
00864fd8  13 00 00 ea                                      b #0x86502c
00864fdc  15 00 00 ea                                      b #0x865038
00864fe0  05 00 00 ea                                      b #0x864ffc
00864fe4  07 00 00 ea                                      b #0x865008
00864fe8  c4 30 95 e5                                      ldr r3, [r5, #0xc4]
00864fec  00 30 87 e5                                      str r3, [r7]
00864ff0  04 00 a0 e1                                      mov r0, r4
00864ff4  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00864ff8  1e b9 00 ea                                      b #0x893478
00864ffc  d8 30 95 e5                                      ldr r3, [r5, #0xd8]
00865000  00 30 87 e5                                      str r3, [r7]
00865004  f9 ff ff ea                                      b #0x864ff0
00865008  dc 30 95 e5                                      ldr r3, [r5, #0xdc]
0086500c  00 30 87 e5                                      str r3, [r7]
00865010  f6 ff ff ea                                      b #0x864ff0
00865014  c8 30 95 e5                                      ldr r3, [r5, #0xc8]
00865018  00 30 87 e5                                      str r3, [r7]
0086501c  f3 ff ff ea                                      b #0x864ff0
00865020  cc 30 95 e5                                      ldr r3, [r5, #0xcc]
00865024  00 30 87 e5                                      str r3, [r7]
00865028  f0 ff ff ea                                      b #0x864ff0
0086502c  d0 30 95 e5                                      ldr r3, [r5, #0xd0]
00865030  00 30 87 e5                                      str r3, [r7]
00865034  ed ff ff ea                                      b #0x864ff0
00865038  d4 30 95 e5                                      ldr r3, [r5, #0xd4]
0086503c  00 30 87 e5                                      str r3, [r7]
00865040  ea ff ff ea                                      b #0x864ff0

; FUNCTION 0x00865044, declared_size=52, range_size=52, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj15Get3DParameteriEiRi
; demangled: vox::EmitterObj::Get3DParameteri(int, int&)
; decoder-mode: arm
00865044  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865048  18 40 80 e2                                      add r4, r0, #0x18
0086504c  00 50 a0 e1                                      mov r5, r0
00865050  04 00 a0 e1                                      mov r0, r4
00865054  01 60 a0 e1                                      mov r6, r1
00865058  02 70 a0 e1                                      mov r7, r2
0086505c  06 b9 00 eb                                      bl #0x89347c
00865060  00 00 56 e3                                      cmp r6, #0
00865064  c0 30 95 05                                      ldreq r3, [r5, #0xc0]
00865068  04 00 a0 e1                                      mov r0, r4
0086506c  00 30 87 05                                      streq r3, [r7]
00865070  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00865074  ff b8 00 ea                                      b #0x893478

; FUNCTION 0x00865078, declared_size=184, range_size=184, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj16Set3DParameterfvEiRKNS_11VoxVector3fE
; demangled: vox::EmitterObj::Set3DParameterfv(int, vox::VoxVector3f const&)
; decoder-mode: arm
00865078  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086507c  18 50 80 e2                                      add r5, r0, #0x18
00865080  01 60 a0 e1                                      mov r6, r1
00865084  00 40 a0 e1                                      mov r4, r0
00865088  05 00 a0 e1                                      mov r0, r5
0086508c  02 70 a0 e1                                      mov r7, r2
00865090  f9 b8 00 eb                                      bl #0x89347c
00865094  09 00 56 e3                                      cmp r6, #9
00865098  1a 00 00 0a                                      beq #0x865108
0086509c  0a 00 56 e3                                      cmp r6, #0xa
008650a0  0e 00 00 0a                                      beq #0x8650e0
008650a4  08 00 56 e3                                      cmp r6, #8
008650a8  02 00 00 0a                                      beq #0x8650b8
008650ac  05 00 a0 e1                                      mov r0, r5
008650b0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008650b4  ef b8 00 ea                                      b #0x893478
008650b8  07 30 a0 e1                                      mov r3, r7
008650bc  04 20 93 e4                                      ldr r2, [r3], #4
008650c0  9c 20 84 e5                                      str r2, [r4, #0x9c]
008650c4  04 20 97 e5                                      ldr r2, [r7, #4]
008650c8  a0 20 84 e5                                      str r2, [r4, #0xa0]
008650cc  04 30 93 e5                                      ldr r3, [r3, #4]
008650d0  01 20 a0 e3                                      mov r2, #1
008650d4  e8 20 c4 e5                                      strb r2, [r4, #0xe8]
008650d8  a4 30 84 e5                                      str r3, [r4, #0xa4]
008650dc  f2 ff ff ea                                      b #0x8650ac
008650e0  07 30 a0 e1                                      mov r3, r7
008650e4  04 20 93 e4                                      ldr r2, [r3], #4
008650e8  a8 20 84 e5                                      str r2, [r4, #0xa8]
008650ec  04 20 97 e5                                      ldr r2, [r7, #4]
008650f0  ac 20 84 e5                                      str r2, [r4, #0xac]
008650f4  04 30 93 e5                                      ldr r3, [r3, #4]
008650f8  01 20 a0 e3                                      mov r2, #1
008650fc  ea 20 c4 e5                                      strb r2, [r4, #0xea]
00865100  b0 30 84 e5                                      str r3, [r4, #0xb0]
00865104  e8 ff ff ea                                      b #0x8650ac
00865108  07 30 a0 e1                                      mov r3, r7
0086510c  04 20 93 e4                                      ldr r2, [r3], #4
00865110  b4 20 84 e5                                      str r2, [r4, #0xb4]
00865114  04 20 97 e5                                      ldr r2, [r7, #4]
00865118  b8 20 84 e5                                      str r2, [r4, #0xb8]
0086511c  04 30 93 e5                                      ldr r3, [r3, #4]
00865120  01 20 a0 e3                                      mov r2, #1
00865124  e9 20 c4 e5                                      strb r2, [r4, #0xe9]
00865128  bc 30 84 e5                                      str r3, [r4, #0xbc]
0086512c  de ff ff ea                                      b #0x8650ac

; FUNCTION 0x00865130, declared_size=144, range_size=144, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj16Set3DParameter3fEifff
; demangled: vox::EmitterObj::Set3DParameter3f(int, float, float, float)
; decoder-mode: arm
00865130  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00865134  18 50 80 e2                                      add r5, r0, #0x18
00865138  01 60 a0 e1                                      mov r6, r1
0086513c  00 40 a0 e1                                      mov r4, r0
00865140  05 00 a0 e1                                      mov r0, r5
00865144  02 70 a0 e1                                      mov r7, r2
00865148  03 a0 a0 e1                                      mov sl, r3
0086514c  20 80 9d e5                                      ldr r8, [sp, #0x20]
00865150  c9 b8 00 eb                                      bl #0x89347c
00865154  09 00 56 e3                                      cmp r6, #9
00865158  12 00 00 0a                                      beq #0x8651a8
0086515c  0a 00 56 e3                                      cmp r6, #0xa
00865160  0a 00 00 0a                                      beq #0x865190
00865164  08 00 56 e3                                      cmp r6, #8
00865168  02 00 00 0a                                      beq #0x865178
0086516c  05 00 a0 e1                                      mov r0, r5
00865170  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
00865174  bf b8 00 ea                                      b #0x893478
00865178  01 30 a0 e3                                      mov r3, #1
0086517c  e8 30 c4 e5                                      strb r3, [r4, #0xe8]
00865180  9c 70 84 e5                                      str r7, [r4, #0x9c]
00865184  a0 a0 84 e5                                      str sl, [r4, #0xa0]
00865188  a4 80 84 e5                                      str r8, [r4, #0xa4]
0086518c  f6 ff ff ea                                      b #0x86516c
00865190  01 30 a0 e3                                      mov r3, #1
00865194  ea 30 c4 e5                                      strb r3, [r4, #0xea]
00865198  a8 70 84 e5                                      str r7, [r4, #0xa8]
0086519c  ac a0 84 e5                                      str sl, [r4, #0xac]
008651a0  b0 80 84 e5                                      str r8, [r4, #0xb0]
008651a4  f0 ff ff ea                                      b #0x86516c
008651a8  01 30 a0 e3                                      mov r3, #1
008651ac  e9 30 c4 e5                                      strb r3, [r4, #0xe9]
008651b0  b4 70 84 e5                                      str r7, [r4, #0xb4]
008651b4  b8 a0 84 e5                                      str sl, [r4, #0xb8]
008651b8  bc 80 84 e5                                      str r8, [r4, #0xbc]
008651bc  ea ff ff ea                                      b #0x86516c

; FUNCTION 0x008651c0, declared_size=192, range_size=192, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj15Set3DParameterfEif
; demangled: vox::EmitterObj::Set3DParameterf(int, float)
; decoder-mode: arm
008651c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008651c4  01 60 a0 e1                                      mov r6, r1
008651c8  18 50 80 e2                                      add r5, r0, #0x18
008651cc  00 40 a0 e1                                      mov r4, r0
008651d0  01 60 46 e2                                      sub r6, r6, #1
008651d4  05 00 a0 e1                                      mov r0, r5
008651d8  02 70 a0 e1                                      mov r7, r2
008651dc  a6 b8 00 eb                                      bl #0x89347c
008651e0  06 00 56 e3                                      cmp r6, #6
008651e4  06 f1 8f 90                                      addls pc, pc, r6, lsl #2
008651e8  09 00 00 ea                                      b #0x865214
008651ec  05 00 00 ea                                      b #0x865208
008651f0  12 00 00 ea                                      b #0x865240
008651f4  15 00 00 ea                                      b #0x865250
008651f8  18 00 00 ea                                      b #0x865260
008651fc  1b 00 00 ea                                      b #0x865270
00865200  06 00 00 ea                                      b #0x865220
00865204  09 00 00 ea                                      b #0x865230
00865208  01 30 a0 e3                                      mov r3, #1
0086520c  e1 30 c4 e5                                      strb r3, [r4, #0xe1]
00865210  c4 70 84 e5                                      str r7, [r4, #0xc4]
00865214  05 00 a0 e1                                      mov r0, r5
00865218  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0086521c  95 b8 00 ea                                      b #0x893478
00865220  01 30 a0 e3                                      mov r3, #1
00865224  e6 30 c4 e5                                      strb r3, [r4, #0xe6]
00865228  d8 70 84 e5                                      str r7, [r4, #0xd8]
0086522c  f8 ff ff ea                                      b #0x865214
00865230  01 30 a0 e3                                      mov r3, #1
00865234  e7 30 c4 e5                                      strb r3, [r4, #0xe7]
00865238  dc 70 84 e5                                      str r7, [r4, #0xdc]
0086523c  f4 ff ff ea                                      b #0x865214
00865240  01 30 a0 e3                                      mov r3, #1
00865244  e2 30 c4 e5                                      strb r3, [r4, #0xe2]
00865248  c8 70 84 e5                                      str r7, [r4, #0xc8]
0086524c  f0 ff ff ea                                      b #0x865214
00865250  01 30 a0 e3                                      mov r3, #1
00865254  e3 30 c4 e5                                      strb r3, [r4, #0xe3]
00865258  cc 70 84 e5                                      str r7, [r4, #0xcc]
0086525c  ec ff ff ea                                      b #0x865214
00865260  01 30 a0 e3                                      mov r3, #1
00865264  e4 30 c4 e5                                      strb r3, [r4, #0xe4]
00865268  d0 70 84 e5                                      str r7, [r4, #0xd0]
0086526c  e8 ff ff ea                                      b #0x865214
00865270  01 30 a0 e3                                      mov r3, #1
00865274  e5 30 c4 e5                                      strb r3, [r4, #0xe5]
00865278  d4 70 84 e5                                      str r7, [r4, #0xd4]
0086527c  e4 ff ff ea                                      b #0x865214

; FUNCTION 0x00865280, declared_size=56, range_size=56, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj15Set3DParameteriEii
; demangled: vox::EmitterObj::Set3DParameteri(int, int)
; decoder-mode: arm
00865280  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00865284  18 50 80 e2                                      add r5, r0, #0x18
00865288  00 40 a0 e1                                      mov r4, r0
0086528c  05 00 a0 e1                                      mov r0, r5
00865290  01 60 a0 e1                                      mov r6, r1
00865294  02 70 a0 e1                                      mov r7, r2
00865298  77 b8 00 eb                                      bl #0x89347c
0086529c  00 00 56 e3                                      cmp r6, #0
008652a0  01 30 a0 03                                      moveq r3, #1
008652a4  05 00 a0 e1                                      mov r0, r5
008652a8  e0 30 c4 05                                      strbeq r3, [r4, #0xe0]
008652ac  c0 70 84 05                                      streq r7, [r4, #0xc0]
008652b0  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
008652b4  6f b8 00 ea                                      b #0x893478

; FUNCTION 0x008652b8, declared_size=224, range_size=224, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj20SetDefaultParametersEv
; demangled: vox::EmitterObj::SetDefaultParameters()
; decoder-mode: arm
008652b8  00 10 a0 e3                                      mov r1, #0
008652bc  70 40 2d e9                                      push {r4, r5, r6, lr}
008652c0  01 20 a0 e1                                      mov r2, r1
008652c4  00 40 a0 e1                                      mov r4, r0
008652c8  ec ff ff eb                                      bl #0x865280
008652cc  02 21 e0 e3                                      mvn r2, #0x80000000
008652d0  04 00 a0 e1                                      mov r0, r4
008652d4  01 10 a0 e3                                      mov r1, #1
008652d8  02 25 42 e2                                      sub r2, r2, #0x800000
008652dc  b7 ff ff eb                                      bl #0x8651c0
008652e0  42 24 a0 e3                                      mov r2, #0x42000000
008652e4  04 00 a0 e1                                      mov r0, r4
008652e8  02 10 a0 e3                                      mov r1, #2
008652ec  32 27 82 e2                                      add r2, r2, #0xc80000
008652f0  43 64 a0 e3                                      mov r6, #0x43000000
008652f4  b1 ff ff eb                                      bl #0x8651c0
008652f8  2d 67 86 e2                                      add r6, r6, #0xb40000
008652fc  04 00 a0 e1                                      mov r0, r4
00865300  03 10 a0 e3                                      mov r1, #3
00865304  fe 25 a0 e3                                      mov r2, #0x3f800000
00865308  ac ff ff eb                                      bl #0x8651c0
0086530c  06 20 a0 e1                                      mov r2, r6
00865310  04 00 a0 e1                                      mov r0, r4
00865314  04 10 a0 e3                                      mov r1, #4
00865318  00 50 a0 e3                                      mov r5, #0
0086531c  a7 ff ff eb                                      bl #0x8651c0
00865320  04 00 a0 e1                                      mov r0, r4
00865324  06 20 a0 e1                                      mov r2, r6
00865328  05 10 a0 e3                                      mov r1, #5
0086532c  a3 ff ff eb                                      bl #0x8651c0
00865330  04 00 a0 e1                                      mov r0, r4
00865334  05 20 a0 e1                                      mov r2, r5
00865338  06 10 a0 e3                                      mov r1, #6
0086533c  9f ff ff eb                                      bl #0x8651c0
00865340  04 20 a0 e1                                      mov r2, r4
00865344  a4 50 84 e5                                      str r5, [r4, #0xa4]
00865348  a0 50 84 e5                                      str r5, [r4, #0xa0]
0086534c  04 00 a0 e1                                      mov r0, r4
00865350  9c 50 a2 e5                                      str r5, [r2, #0x9c]!
00865354  08 10 a0 e3                                      mov r1, #8
00865358  46 ff ff eb                                      bl #0x865078
0086535c  04 20 a0 e1                                      mov r2, r4
00865360  bc 50 84 e5                                      str r5, [r4, #0xbc]
00865364  b8 50 84 e5                                      str r5, [r4, #0xb8]
00865368  04 00 a0 e1                                      mov r0, r4
0086536c  b4 50 a2 e5                                      str r5, [r2, #0xb4]!
00865370  09 10 a0 e3                                      mov r1, #9
00865374  3f ff ff eb                                      bl #0x865078
00865378  04 20 a0 e1                                      mov r2, r4
0086537c  b0 50 84 e5                                      str r5, [r4, #0xb0]
00865380  ac 50 84 e5                                      str r5, [r4, #0xac]
00865384  04 00 a0 e1                                      mov r0, r4
00865388  a8 50 a2 e5                                      str r5, [r2, #0xa8]!
0086538c  0a 10 a0 e3                                      mov r1, #0xa
00865390  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865394  37 ff ff ea                                      b #0x865078

; FUNCTION 0x00865398, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj11GetUserDataEv
; demangled: vox::EmitterObj::GetUserData()
; decoder-mode: arm
00865398  70 40 2d e9                                      push {r4, r5, r6, lr}
0086539c  18 40 80 e2                                      add r4, r0, #0x18
008653a0  00 50 a0 e1                                      mov r5, r0
008653a4  04 00 a0 e1                                      mov r0, r4
008653a8  33 b8 00 eb                                      bl #0x89347c
008653ac  34 51 95 e5                                      ldr r5, [r5, #0x134]
008653b0  04 00 a0 e1                                      mov r0, r4
008653b4  2f b8 00 eb                                      bl #0x893478
008653b8  05 00 a0 e1                                      mov r0, r5
008653bc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008653c0, declared_size=44, range_size=44, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj11SetUserDataERNS_21EmitterHandleUserDataE
; demangled: vox::EmitterObj::SetUserData(vox::EmitterHandleUserData&)
; decoder-mode: arm
008653c0  70 40 2d e9                                      push {r4, r5, r6, lr}
008653c4  18 50 80 e2                                      add r5, r0, #0x18
008653c8  00 40 a0 e1                                      mov r4, r0
008653cc  05 00 a0 e1                                      mov r0, r5
008653d0  01 60 a0 e1                                      mov r6, r1
008653d4  28 b8 00 eb                                      bl #0x89347c
008653d8  00 30 96 e5                                      ldr r3, [r6]
008653dc  05 00 a0 e1                                      mov r0, r5
008653e0  34 31 84 e5                                      str r3, [r4, #0x134]
008653e4  70 40 bd e8                                      pop {r4, r5, r6, lr}
008653e8  22 b8 00 ea                                      b #0x893478

; FUNCTION 0x008653ec, declared_size=268, range_size=268, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj13SetPlayCursorEf
; demangled: vox::EmitterObj::SetPlayCursor(float)
; decoder-mode: arm
008653ec  70 40 2d e9                                      push {r4, r5, r6, lr}
008653f0  18 50 80 e2                                      add r5, r0, #0x18
008653f4  00 40 a0 e1                                      mov r4, r0
008653f8  05 00 a0 e1                                      mov r0, r5
008653fc  01 60 a0 e1                                      mov r6, r1
00865400  1d b8 00 eb                                      bl #0x89347c
00865404  10 31 94 e5                                      ldr r3, [r4, #0x110]
00865408  00 00 53 e3                                      cmp r3, #0
0086540c  36 00 00 0a                                      beq #0x8654ec
00865410  14 31 94 e5                                      ldr r3, [r4, #0x114]
00865414  00 00 53 e3                                      cmp r3, #0
00865418  33 00 00 0a                                      beq #0x8654ec
0086541c  10 30 93 e5                                      ldr r3, [r3, #0x10]
00865420  00 00 53 e3                                      cmp r3, #0
00865424  30 00 00 da                                      ble #0x8654ec
00865428  18 31 94 e5                                      ldr r3, [r4, #0x118]
0086542c  50 20 93 e5                                      ldr r2, [r3, #0x50]
00865430  00 00 52 e3                                      cmp r2, #0
00865434  3c 30 93 05                                      ldreq r3, [r3, #0x3c]
00865438  00 30 a0 13                                      movne r3, #0
0086543c  03 00 a0 e1                                      mov r0, r3
00865440  00 30 93 e5                                      ldr r3, [r3]
00865444  0f e0 a0 e1                                      mov lr, pc
00865448  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086544c  04 00 50 e3                                      cmp r0, #4
00865450  25 00 00 0a                                      beq #0x8654ec
00865454  06 00 a0 e1                                      mov r0, r6
00865458  00 10 a0 e3                                      mov r1, #0
0086545c  aa a4 ea eb                                      bl #0x30e70c
00865460  14 31 94 e5                                      ldr r3, [r4, #0x114]
00865464  00 00 50 e3                                      cmp r0, #0
00865468  00 60 a0 13                                      movne r6, #0
0086546c  08 00 93 e5                                      ldr r0, [r3, #8]
00865470  3b a5 ea eb                                      bl #0x30e964
00865474  06 10 a0 e1                                      mov r1, r6
00865478  3b a6 ea eb                                      bl #0x30ed6c
0086547c  87 63 01 eb                                      bl #0x8be2a0
00865480  10 31 94 e5                                      ldr r3, [r4, #0x110]
00865484  00 60 a0 e1                                      mov r6, r0
00865488  03 00 a0 e1                                      mov r0, r3
0086548c  00 30 93 e5                                      ldr r3, [r3]
00865490  0f e0 a0 e1                                      mov lr, pc
00865494  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00865498  14 21 94 e5                                      ldr r2, [r4, #0x114]
0086549c  10 31 94 e5                                      ldr r3, [r4, #0x110]
008654a0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
008654a4  04 20 92 e5                                      ldr r2, [r2, #4]
008654a8  03 00 a0 e1                                      mov r0, r3
008654ac  c1 11 a0 e1                                      asr r1, r1, #3
008654b0  92 01 01 e0                                      mul r1, r2, r1
008654b4  00 30 93 e5                                      ldr r3, [r3]
008654b8  91 06 01 e0                                      mul r1, r1, r6
008654bc  0f e0 a0 e1                                      mov lr, pc
008654c0  20 f0 93 e5                                      ldr pc, [r3, #0x20]
008654c4  14 31 94 e5                                      ldr r3, [r4, #0x114]
008654c8  06 10 a0 e1                                      mov r1, r6
008654cc  03 00 a0 e1                                      mov r0, r3
008654d0  00 30 93 e5                                      ldr r3, [r3]
008654d4  0f e0 a0 e1                                      mov lr, pc
008654d8  28 f0 93 e5                                      ldr pc, [r3, #0x28]
008654dc  94 30 94 e5                                      ldr r3, [r4, #0x94]
008654e0  02 00 53 e3                                      cmp r3, #2
008654e4  03 30 a0 03                                      moveq r3, #3
008654e8  94 30 84 05                                      streq r3, [r4, #0x94]
008654ec  05 00 a0 e1                                      mov r0, r5
008654f0  70 40 bd e8                                      pop {r4, r5, r6, lr}
008654f4  df b7 00 ea                                      b #0x893478

; FUNCTION 0x008654f8, declared_size=116, range_size=116, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj13GetPlayCursorEv
; demangled: vox::EmitterObj::GetPlayCursor()
; decoder-mode: arm
008654f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008654fc  18 50 80 e2                                      add r5, r0, #0x18
00865500  00 40 a0 e1                                      mov r4, r0
00865504  05 00 a0 e1                                      mov r0, r5
00865508  db b7 00 eb                                      bl #0x89347c
0086550c  24 30 94 e5                                      ldr r3, [r4, #0x24]
00865510  00 00 53 e3                                      cmp r3, #0
00865514  00 40 a0 d3                                      movle r4, #0
00865518  11 00 00 da                                      ble #0x865564
0086551c  10 31 94 e5                                      ldr r3, [r4, #0x110]
00865520  03 00 a0 e1                                      mov r0, r3
00865524  00 30 93 e5                                      ldr r3, [r3]
00865528  0f e0 a0 e1                                      mov lr, pc
0086552c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00865530  24 10 94 e5                                      ldr r1, [r4, #0x24]
00865534  f2 a4 ea eb                                      bl #0x30e904
00865538  01 00 a0 e1                                      mov r0, r1
0086553c  08 a5 ea eb                                      bl #0x30e964
00865540  00 60 a0 e1                                      mov r6, r0
00865544  20 00 94 e5                                      ldr r0, [r4, #0x20]
00865548  05 a5 ea eb                                      bl #0x30e964
0086554c  00 10 a0 e1                                      mov r1, r0
00865550  06 00 a0 e1                                      mov r0, r6
00865554  ce a5 ea eb                                      bl #0x30ec94
00865558  00 40 a0 e1                                      mov r4, r0
0086555c  05 00 a0 e1                                      mov r0, r5
00865560  c4 b7 00 eb                                      bl #0x893478
00865564  04 00 a0 e1                                      mov r0, r4
00865568  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086556c, declared_size=48, range_size=48, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj6IsDoneEv
; demangled: vox::EmitterObj::IsDone()
; decoder-mode: arm
0086556c  70 40 2d e9                                      push {r4, r5, r6, lr}
00865570  18 40 80 e2                                      add r4, r0, #0x18
00865574  00 50 a0 e1                                      mov r5, r0
00865578  04 00 a0 e1                                      mov r0, r4
0086557c  be b7 00 eb                                      bl #0x89347c
00865580  05 00 a0 e1                                      mov r0, r5
00865584  ec f7 ff eb                                      bl #0x86353c
00865588  00 50 a0 e1                                      mov r5, r0
0086558c  04 00 a0 e1                                      mov r0, r4
00865590  b8 b7 00 eb                                      bl #0x893478
00865594  05 00 a0 e1                                      mov r0, r5
00865598  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0086559c, declared_size=68, range_size=68, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj9IsPlayingEv
; demangled: vox::EmitterObj::IsPlaying()
; decoder-mode: arm
0086559c  70 40 2d e9                                      push {r4, r5, r6, lr}
008655a0  18 50 80 e2                                      add r5, r0, #0x18
008655a4  00 40 a0 e1                                      mov r4, r0
008655a8  05 00 a0 e1                                      mov r0, r5
008655ac  b2 b7 00 eb                                      bl #0x89347c
008655b0  90 30 94 e5                                      ldr r3, [r4, #0x90]
008655b4  01 00 53 e3                                      cmp r3, #1
008655b8  03 40 a0 01                                      moveq r4, r3
008655bc  03 00 00 0a                                      beq #0x8655d0
008655c0  94 40 94 e5                                      ldr r4, [r4, #0x94]
008655c4  01 00 54 e3                                      cmp r4, #1
008655c8  00 40 a0 13                                      movne r4, #0
008655cc  01 40 a0 03                                      moveq r4, #1
008655d0  05 00 a0 e1                                      mov r0, r5
008655d4  a7 b7 00 eb                                      bl #0x893478
008655d8  04 00 a0 e1                                      mov r0, r4
008655dc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008655e0, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj5ResetEv
; demangled: vox::EmitterObj::Reset()
; decoder-mode: arm
008655e0  70 40 2d e9                                      push {r4, r5, r6, lr}
008655e4  18 40 80 e2                                      add r4, r0, #0x18
008655e8  00 50 a0 e1                                      mov r5, r0
008655ec  04 00 a0 e1                                      mov r0, r4
008655f0  a1 b7 00 eb                                      bl #0x89347c
008655f4  01 30 a0 e3                                      mov r3, #1
008655f8  04 00 a0 e1                                      mov r0, r4
008655fc  99 30 c5 e5                                      strb r3, [r5, #0x99]
00865600  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865604  9b b7 00 ea                                      b #0x893478

; FUNCTION 0x00865608, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7SetLoopEb
; demangled: vox::EmitterObj::SetLoop(bool)
; decoder-mode: arm
00865608  70 40 2d e9                                      push {r4, r5, r6, lr}
0086560c  18 40 80 e2                                      add r4, r0, #0x18
00865610  00 50 a0 e1                                      mov r5, r0
00865614  04 00 a0 e1                                      mov r0, r4
00865618  01 60 a0 e1                                      mov r6, r1
0086561c  96 b7 00 eb                                      bl #0x89347c
00865620  04 00 a0 e1                                      mov r0, r4
00865624  8d 60 c5 e5                                      strb r6, [r5, #0x8d]
00865628  70 40 bd e8                                      pop {r4, r5, r6, lr}
0086562c  91 b7 00 ea                                      b #0x893478

; FUNCTION 0x00865630, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7GetLoopEv
; demangled: vox::EmitterObj::GetLoop()
; decoder-mode: arm
00865630  70 40 2d e9                                      push {r4, r5, r6, lr}
00865634  18 40 80 e2                                      add r4, r0, #0x18
00865638  00 50 a0 e1                                      mov r5, r0
0086563c  04 00 a0 e1                                      mov r0, r4
00865640  8d b7 00 eb                                      bl #0x89347c
00865644  8c 50 d5 e5                                      ldrb r5, [r5, #0x8c]
00865648  04 00 a0 e1                                      mov r0, r4
0086564c  89 b7 00 eb                                      bl #0x893478
00865650  05 00 a0 e1                                      mov r0, r5
00865654  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865658, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8SetStateEi
; demangled: vox::EmitterObj::SetState(int)
; decoder-mode: arm
00865658  70 40 2d e9                                      push {r4, r5, r6, lr}
0086565c  18 40 80 e2                                      add r4, r0, #0x18
00865660  00 50 a0 e1                                      mov r5, r0
00865664  04 00 a0 e1                                      mov r0, r4
00865668  01 60 a0 e1                                      mov r6, r1
0086566c  82 b7 00 eb                                      bl #0x89347c
00865670  04 00 a0 e1                                      mov r0, r4
00865674  94 60 85 e5                                      str r6, [r5, #0x94]
00865678  70 40 bd e8                                      pop {r4, r5, r6, lr}
0086567c  7d b7 00 ea                                      b #0x893478

; FUNCTION 0x00865680, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8GetStateEv
; demangled: vox::EmitterObj::GetState()
; decoder-mode: arm
00865680  70 40 2d e9                                      push {r4, r5, r6, lr}
00865684  18 40 80 e2                                      add r4, r0, #0x18
00865688  00 50 a0 e1                                      mov r5, r0
0086568c  04 00 a0 e1                                      mov r0, r4
00865690  79 b7 00 eb                                      bl #0x89347c
00865694  90 50 95 e5                                      ldr r5, [r5, #0x90]
00865698  04 00 a0 e1                                      mov r0, r4
0086569c  75 b7 00 eb                                      bl #0x893478
008656a0  05 00 a0 e1                                      mov r0, r5
008656a4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008656a8, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8GetPitchEv
; demangled: vox::EmitterObj::GetPitch()
; decoder-mode: arm
008656a8  70 40 2d e9                                      push {r4, r5, r6, lr}
008656ac  18 40 80 e2                                      add r4, r0, #0x18
008656b0  00 50 a0 e1                                      mov r5, r0
008656b4  04 00 a0 e1                                      mov r0, r4
008656b8  6f b7 00 eb                                      bl #0x89347c
008656bc  74 50 95 e5                                      ldr r5, [r5, #0x74]
008656c0  04 00 a0 e1                                      mov r0, r4
008656c4  6b b7 00 eb                                      bl #0x893478
008656c8  05 00 a0 e1                                      mov r0, r5
008656cc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008656d0, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7GetGainEv
; demangled: vox::EmitterObj::GetGain()
; decoder-mode: arm
008656d0  70 40 2d e9                                      push {r4, r5, r6, lr}
008656d4  18 40 80 e2                                      add r4, r0, #0x18
008656d8  00 50 a0 e1                                      mov r5, r0
008656dc  04 00 a0 e1                                      mov r0, r4
008656e0  65 b7 00 eb                                      bl #0x89347c
008656e4  3c 50 95 e5                                      ldr r5, [r5, #0x3c]
008656e8  04 00 a0 e1                                      mov r0, r4
008656ec  61 b7 00 eb                                      bl #0x893478
008656f0  05 00 a0 e1                                      mov r0, r5
008656f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008656f8, declared_size=60, range_size=60, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7IsGroupEj
; demangled: vox::EmitterObj::IsGroup(unsigned int)
; decoder-mode: arm
008656f8  70 40 2d e9                                      push {r4, r5, r6, lr}
008656fc  18 40 80 e2                                      add r4, r0, #0x18
00865700  00 50 a0 e1                                      mov r5, r0
00865704  04 00 a0 e1                                      mov r0, r4
00865708  01 60 a0 e1                                      mov r6, r1
0086570c  5a b7 00 eb                                      bl #0x89347c
00865710  28 30 95 e5                                      ldr r3, [r5, #0x28]
00865714  01 20 a0 e3                                      mov r2, #1
00865718  04 00 a0 e1                                      mov r0, r4
0086571c  12 33 16 e0                                      ands r3, r6, r2, lsl r3
00865720  00 40 a0 03                                      moveq r4, #0
00865724  01 40 a0 13                                      movne r4, #1
00865728  52 b7 00 eb                                      bl #0x893478
0086572c  04 00 a0 e1                                      mov r0, r4
00865730  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865734, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8SetGroupEi
; demangled: vox::EmitterObj::SetGroup(int)
; decoder-mode: arm
00865734  70 40 2d e9                                      push {r4, r5, r6, lr}
00865738  18 40 80 e2                                      add r4, r0, #0x18
0086573c  00 50 a0 e1                                      mov r5, r0
00865740  04 00 a0 e1                                      mov r0, r4
00865744  01 60 a0 e1                                      mov r6, r1
00865748  4b b7 00 eb                                      bl #0x89347c
0086574c  04 00 a0 e1                                      mov r0, r4
00865750  28 60 85 e5                                      str r6, [r5, #0x28]
00865754  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865758  46 b7 00 ea                                      b #0x893478

; FUNCTION 0x0086575c, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8GetGroupEv
; demangled: vox::EmitterObj::GetGroup()
; decoder-mode: arm
0086575c  70 40 2d e9                                      push {r4, r5, r6, lr}
00865760  18 40 80 e2                                      add r4, r0, #0x18
00865764  00 50 a0 e1                                      mov r5, r0
00865768  04 00 a0 e1                                      mov r0, r4
0086576c  42 b7 00 eb                                      bl #0x89347c
00865770  28 50 95 e5                                      ldr r5, [r5, #0x28]
00865774  04 00 a0 e1                                      mov r0, r4
00865778  3e b7 00 eb                                      bl #0x893478
0086577c  05 00 a0 e1                                      mov r0, r5
00865780  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865784, declared_size=112, range_size=112, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj9ShouldDieEv
; demangled: vox::EmitterObj::ShouldDie()
; decoder-mode: arm
00865784  70 40 2d e9                                      push {r4, r5, r6, lr}
00865788  18 50 80 e2                                      add r5, r0, #0x18
0086578c  00 40 a0 e1                                      mov r4, r0
00865790  05 00 a0 e1                                      mov r0, r5
00865794  38 b7 00 eb                                      bl #0x89347c
00865798  04 00 a0 e1                                      mov r0, r4
0086579c  66 f7 ff eb                                      bl #0x86353c
008657a0  00 00 50 e3                                      cmp r0, #0
008657a4  02 00 00 0a                                      beq #0x8657b4
008657a8  10 30 94 e5                                      ldr r3, [r4, #0x10]
008657ac  00 00 53 e3                                      cmp r3, #0
008657b0  0a 00 00 0a                                      beq #0x8657e0
008657b4  1c 31 d4 e5                                      ldrb r3, [r4, #0x11c]
008657b8  00 00 53 e3                                      cmp r3, #0
008657bc  07 00 00 1a                                      bne #0x8657e0
008657c0  90 40 94 e5                                      ldr r4, [r4, #0x90]
008657c4  05 00 a0 e1                                      mov r0, r5
008657c8  2a b7 00 eb                                      bl #0x893478
008657cc  01 00 74 e3                                      cmn r4, #1
008657d0  00 40 a0 13                                      movne r4, #0
008657d4  01 40 a0 03                                      moveq r4, #1
008657d8  04 00 a0 e1                                      mov r0, r4
008657dc  70 80 bd e8                                      pop {r4, r5, r6, pc}
008657e0  05 00 a0 e1                                      mov r0, r5
008657e4  01 40 a0 e3                                      mov r4, #1
008657e8  22 b7 00 eb                                      bl #0x893478
008657ec  04 00 a0 e1                                      mov r0, r4
008657f0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008657f4, declared_size=52, range_size=52, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7IsAliveEv
; demangled: vox::EmitterObj::IsAlive()
; decoder-mode: arm
008657f4  70 40 2d e9                                      push {r4, r5, r6, lr}
008657f8  18 40 80 e2                                      add r4, r0, #0x18
008657fc  00 50 a0 e1                                      mov r5, r0
00865800  04 00 a0 e1                                      mov r0, r4
00865804  1c b7 00 eb                                      bl #0x89347c
00865808  05 00 a0 e1                                      mov r0, r5
0086580c  dc ff ff eb                                      bl #0x865784
00865810  00 50 a0 e1                                      mov r5, r0
00865814  04 00 a0 e1                                      mov r0, r4
00865818  16 b7 00 eb                                      bl #0x893478
0086581c  01 00 25 e2                                      eor r0, r5, #1
00865820  70 00 ef e6                                      uxtb r0, r0
00865824  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00865828, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj9NeedToDieEv
; demangled: vox::EmitterObj::NeedToDie()
; decoder-mode: arm
00865828  70 40 2d e9                                      push {r4, r5, r6, lr}
0086582c  18 40 80 e2                                      add r4, r0, #0x18
00865830  00 50 a0 e1                                      mov r5, r0
00865834  04 00 a0 e1                                      mov r0, r4
00865838  0f b7 00 eb                                      bl #0x89347c
0086583c  01 30 a0 e3                                      mov r3, #1
00865840  04 00 a0 e1                                      mov r0, r4
00865844  1c 31 c5 e5                                      strb r3, [r5, #0x11c]
00865848  70 40 bd e8                                      pop {r4, r5, r6, lr}
0086584c  09 b7 00 ea                                      b #0x893478

; FUNCTION 0x00865850, declared_size=40, range_size=40, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj20SetAutoKillAfterDoneEb
; demangled: vox::EmitterObj::SetAutoKillAfterDone(bool)
; decoder-mode: arm
00865850  70 40 2d e9                                      push {r4, r5, r6, lr}
00865854  18 40 80 e2                                      add r4, r0, #0x18
00865858  00 50 a0 e1                                      mov r5, r0
0086585c  04 00 a0 e1                                      mov r0, r4
00865860  01 60 a0 e1                                      mov r6, r1
00865864  04 b7 00 eb                                      bl #0x89347c
00865868  04 00 a0 e1                                      mov r0, r4
0086586c  1d 61 c5 e5                                      strb r6, [r5, #0x11d]
00865870  70 40 bd e8                                      pop {r4, r5, r6, lr}
00865874  ff b6 00 ea                                      b #0x893478

; FUNCTION 0x00866380, declared_size=588, range_size=588, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjC1ExiiPNS_21DriverSourceInterfaceEPNS_7DataObjE
; demangled: vox::EmitterObj::EmitterObj(long long, int, int, vox::DriverSourceInterface*, vox::DataObj*)
; decoder-mode: arm
00866380  70 40 2d e9                                      push {r4, r5, r6, lr}
00866384  34 62 9f e5                                      ldr r6, [pc, #0x234]
00866388  34 12 9f e5                                      ldr r1, [pc, #0x234]
0086638c  00 50 a0 e3                                      mov r5, #0
00866390  06 60 8f e0                                      add r6, pc, r6
00866394  01 10 96 e7                                      ldr r1, [r6, r1]
00866398  00 40 a0 e1                                      mov r4, r0
0086639c  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
008663a0  08 10 81 e2                                      add r1, r1, #8
008663a4  00 10 80 e5                                      str r1, [r0]
008663a8  10 50 80 e5                                      str r5, [r0, #0x10]
008663ac  18 00 80 e2                                      add r0, r0, #0x18
008663b0  86 b4 00 eb                                      bl #0x8935d0
008663b4  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
008663b8  02 e1 e0 e3                                      mvn lr, #0x80000000
008663bc  43 c4 a0 e3                                      mov ip, #0x43000000
008663c0  03 30 96 e7                                      ldr r3, [r6, r3]
008663c4  00 20 a0 e3                                      mov r2, #0
008663c8  fe 15 a0 e3                                      mov r1, #0x3f800000
008663cc  08 60 83 e2                                      add r6, r3, #8
008663d0  00 60 84 e5                                      str r6, [r4]
008663d4  10 60 9d e5                                      ldr r6, [sp, #0x10]
008663d8  01 00 a0 e3                                      mov r0, #1
008663dc  02 e5 4e e2                                      sub lr, lr, #0x800000
008663e0  2c 60 84 e5                                      str r6, [r4, #0x2c]
008663e4  14 60 9d e5                                      ldr r6, [sp, #0x14]
008663e8  2d c7 8c e2                                      add ip, ip, #0xb40000
008663ec  1c 00 c4 e5                                      strb r0, [r4, #0x1c]
008663f0  30 60 84 e5                                      str r6, [r4, #0x30]
008663f4  42 64 a0 e3                                      mov r6, #0x42000000
008663f8  32 67 86 e2                                      add r6, r6, #0xc80000
008663fc  20 00 84 e5                                      str r0, [r4, #0x20]
00866400  48 20 84 e5                                      str r2, [r4, #0x48]
00866404  50 20 84 e5                                      str r2, [r4, #0x50]
00866408  54 20 84 e5                                      str r2, [r4, #0x54]
0086640c  58 00 c4 e5                                      strb r0, [r4, #0x58]
00866410  5c 20 84 e5                                      str r2, [r4, #0x5c]
00866414  64 20 84 e5                                      str r2, [r4, #0x64]
00866418  68 20 84 e5                                      str r2, [r4, #0x68]
0086641c  6c 00 c4 e5                                      strb r0, [r4, #0x6c]
00866420  78 20 84 e5                                      str r2, [r4, #0x78]
00866424  80 20 84 e5                                      str r2, [r4, #0x80]
00866428  84 20 84 e5                                      str r2, [r4, #0x84]
0086642c  88 00 c4 e5                                      strb r0, [r4, #0x88]
00866430  28 50 84 e5                                      str r5, [r4, #0x28]
00866434  34 50 c4 e5                                      strb r5, [r4, #0x34]
00866438  38 10 84 e5                                      str r1, [r4, #0x38]
0086643c  3c 10 84 e5                                      str r1, [r4, #0x3c]
00866440  40 10 84 e5                                      str r1, [r4, #0x40]
00866444  44 10 84 e5                                      str r1, [r4, #0x44]
00866448  4c 10 84 e5                                      str r1, [r4, #0x4c]
0086644c  60 10 84 e5                                      str r1, [r4, #0x60]
00866450  70 10 84 e5                                      str r1, [r4, #0x70]
00866454  74 10 84 e5                                      str r1, [r4, #0x74]
00866458  7c 10 84 e5                                      str r1, [r4, #0x7c]
0086645c  8c 50 c4 e5                                      strb r5, [r4, #0x8c]
00866460  8d 50 c4 e5                                      strb r5, [r4, #0x8d]
00866464  90 50 84 e5                                      str r5, [r4, #0x90]
00866468  94 50 84 e5                                      str r5, [r4, #0x94]
0086646c  98 50 c4 e5                                      strb r5, [r4, #0x98]
00866470  c8 60 84 e5                                      str r6, [r4, #0xc8]
00866474  d4 c0 84 e5                                      str ip, [r4, #0xd4]
00866478  dc e0 84 e5                                      str lr, [r4, #0xdc]
0086647c  18 60 9d e5                                      ldr r6, [sp, #0x18]
00866480  05 30 a0 e1                                      mov r3, r5
00866484  10 61 84 e5                                      str r6, [r4, #0x110]
00866488  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
0086648c  9c 20 84 e5                                      str r2, [r4, #0x9c]
00866490  a0 20 84 e5                                      str r2, [r4, #0xa0]
00866494  a4 20 84 e5                                      str r2, [r4, #0xa4]
00866498  a8 20 84 e5                                      str r2, [r4, #0xa8]
0086649c  ac 20 84 e5                                      str r2, [r4, #0xac]
008664a0  b0 20 84 e5                                      str r2, [r4, #0xb0]
008664a4  b4 20 84 e5                                      str r2, [r4, #0xb4]
008664a8  b8 20 84 e5                                      str r2, [r4, #0xb8]
008664ac  bc 20 84 e5                                      str r2, [r4, #0xbc]
008664b0  d8 20 84 e5                                      str r2, [r4, #0xd8]
008664b4  18 61 84 e5                                      str r6, [r4, #0x118]
008664b8  24 11 84 e5                                      str r1, [r4, #0x124]
008664bc  99 50 c4 e5                                      strb r5, [r4, #0x99]
008664c0  c0 50 84 e5                                      str r5, [r4, #0xc0]
008664c4  c4 e0 84 e5                                      str lr, [r4, #0xc4]
008664c8  cc 10 84 e5                                      str r1, [r4, #0xcc]
008664cc  d0 c0 84 e5                                      str ip, [r4, #0xd0]
008664d0  ec 50 84 e5                                      str r5, [r4, #0xec]
008664d4  f0 50 84 e5                                      str r5, [r4, #0xf0]
008664d8  f4 50 84 e5                                      str r5, [r4, #0xf4]
008664dc  f8 50 84 e5                                      str r5, [r4, #0xf8]
008664e0  fc 50 84 e5                                      str r5, [r4, #0xfc]
008664e4  08 51 84 e5                                      str r5, [r4, #0x108]
008664e8  0c 51 84 e5                                      str r5, [r4, #0x10c]
008664ec  14 51 84 e5                                      str r5, [r4, #0x114]
008664f0  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
008664f4  20 21 84 e5                                      str r2, [r4, #0x120]
008664f8  28 21 84 e5                                      str r2, [r4, #0x128]
008664fc  2c 21 84 e5                                      str r2, [r4, #0x12c]
00866500  00 20 e0 e3                                      mvn r2, #0
00866504  30 01 c4 e5                                      strb r0, [r4, #0x130]
00866508  34 21 84 e5                                      str r2, [r4, #0x134]
0086650c  1d 51 c4 e5                                      strb r5, [r4, #0x11d]
00866510  38 51 84 e5                                      str r5, [r4, #0x138]
00866514  3c 51 84 e5                                      str r5, [r4, #0x13c]
00866518  04 20 a0 e1                                      mov r2, r4
0086651c  05 00 a0 e1                                      mov r0, r5
00866520  01 30 83 e2                                      add r3, r3, #1
00866524  0b 00 53 e3                                      cmp r3, #0xb
00866528  e0 00 c2 e5                                      strb r0, [r2, #0xe0]
0086652c  00 10 a0 e3                                      mov r1, #0
00866530  01 20 82 e2                                      add r2, r2, #1
00866534  f9 ff ff 1a                                      bne #0x866520
00866538  18 31 94 e5                                      ldr r3, [r4, #0x118]
0086653c  04 11 84 e5                                      str r1, [r4, #0x104]
00866540  00 11 84 e5                                      str r1, [r4, #0x100]
00866544  01 00 53 e1                                      cmp r3, r1
00866548  09 00 00 0a                                      beq #0x866574
0086654c  30 20 93 e5                                      ldr r2, [r3, #0x30]
00866550  28 10 93 e5                                      ldr r1, [r3, #0x28]
00866554  34 00 93 e5                                      ldr r0, [r3, #0x34]
00866558  c2 21 a0 e1                                      asr r2, r2, #3
0086655c  91 02 02 e0                                      mul r2, r1, r2
00866560  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
00866564  90 02 03 e0                                      mul r3, r0, r2
00866568  91 02 02 e0                                      mul r2, r1, r2
0086656c  24 30 84 e5                                      str r3, [r4, #0x24]
00866570  20 20 84 e5                                      str r2, [r4, #0x20]
00866574  04 00 a0 e1                                      mov r0, r4
00866578  4e fb ff eb                                      bl #0x8652b8
0086657c  18 31 94 e5                                      ldr r3, [r4, #0x118]
00866580  50 20 93 e5                                      ldr r2, [r3, #0x50]
00866584  00 00 52 e3                                      cmp r2, #0
00866588  3c 30 93 05                                      ldreq r3, [r3, #0x3c]
0086658c  00 30 a0 13                                      movne r3, #0
00866590  03 00 a0 e1                                      mov r0, r3
00866594  00 30 93 e5                                      ldr r3, [r3]
00866598  0f e0 a0 e1                                      mov lr, pc
0086659c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008665a0  00 30 a0 e3                                      mov r3, #0
008665a4  01 20 a0 e3                                      mov r2, #1
008665a8  40 01 84 e5                                      str r0, [r4, #0x140]
008665ac  45 21 c4 e5                                      strb r2, [r4, #0x145]
008665b0  46 31 c4 e5                                      strb r3, [r4, #0x146]
008665b4  44 31 c4 e5                                      strb r3, [r4, #0x144]
008665b8  04 00 a0 e1                                      mov r0, r4
008665bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
008665c0  00 e7 12 00 34 47 00 00 fc 2c 00 00              .byte 0x00, 0xe7, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xfc, 0x2c, 0x00, 0x00

; FUNCTION 0x008665cc, declared_size=588, range_size=588, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjC2ExiiPNS_21DriverSourceInterfaceEPNS_7DataObjE
; demangled: vox::EmitterObj::EmitterObj(long long, int, int, vox::DriverSourceInterface*, vox::DataObj*)
; decoder-mode: arm
008665cc  70 40 2d e9                                      push {r4, r5, r6, lr}
008665d0  34 62 9f e5                                      ldr r6, [pc, #0x234]
008665d4  34 12 9f e5                                      ldr r1, [pc, #0x234]
008665d8  00 50 a0 e3                                      mov r5, #0
008665dc  06 60 8f e0                                      add r6, pc, r6
008665e0  01 10 96 e7                                      ldr r1, [r6, r1]
008665e4  00 40 a0 e1                                      mov r4, r0
008665e8  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
008665ec  08 10 81 e2                                      add r1, r1, #8
008665f0  00 10 80 e5                                      str r1, [r0]
008665f4  10 50 80 e5                                      str r5, [r0, #0x10]
008665f8  18 00 80 e2                                      add r0, r0, #0x18
008665fc  f3 b3 00 eb                                      bl #0x8935d0
00866600  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
00866604  02 e1 e0 e3                                      mvn lr, #0x80000000
00866608  43 c4 a0 e3                                      mov ip, #0x43000000
0086660c  03 30 96 e7                                      ldr r3, [r6, r3]
00866610  00 20 a0 e3                                      mov r2, #0
00866614  fe 15 a0 e3                                      mov r1, #0x3f800000
00866618  08 60 83 e2                                      add r6, r3, #8
0086661c  00 60 84 e5                                      str r6, [r4]
00866620  10 60 9d e5                                      ldr r6, [sp, #0x10]
00866624  01 00 a0 e3                                      mov r0, #1
00866628  02 e5 4e e2                                      sub lr, lr, #0x800000
0086662c  2c 60 84 e5                                      str r6, [r4, #0x2c]
00866630  14 60 9d e5                                      ldr r6, [sp, #0x14]
00866634  2d c7 8c e2                                      add ip, ip, #0xb40000
00866638  1c 00 c4 e5                                      strb r0, [r4, #0x1c]
0086663c  30 60 84 e5                                      str r6, [r4, #0x30]
00866640  42 64 a0 e3                                      mov r6, #0x42000000
00866644  32 67 86 e2                                      add r6, r6, #0xc80000
00866648  20 00 84 e5                                      str r0, [r4, #0x20]
0086664c  48 20 84 e5                                      str r2, [r4, #0x48]
00866650  50 20 84 e5                                      str r2, [r4, #0x50]
00866654  54 20 84 e5                                      str r2, [r4, #0x54]
00866658  58 00 c4 e5                                      strb r0, [r4, #0x58]
0086665c  5c 20 84 e5                                      str r2, [r4, #0x5c]
00866660  64 20 84 e5                                      str r2, [r4, #0x64]
00866664  68 20 84 e5                                      str r2, [r4, #0x68]
00866668  6c 00 c4 e5                                      strb r0, [r4, #0x6c]
0086666c  78 20 84 e5                                      str r2, [r4, #0x78]
00866670  80 20 84 e5                                      str r2, [r4, #0x80]
00866674  84 20 84 e5                                      str r2, [r4, #0x84]
00866678  88 00 c4 e5                                      strb r0, [r4, #0x88]
0086667c  28 50 84 e5                                      str r5, [r4, #0x28]
00866680  34 50 c4 e5                                      strb r5, [r4, #0x34]
00866684  38 10 84 e5                                      str r1, [r4, #0x38]
00866688  3c 10 84 e5                                      str r1, [r4, #0x3c]
0086668c  40 10 84 e5                                      str r1, [r4, #0x40]
00866690  44 10 84 e5                                      str r1, [r4, #0x44]
00866694  4c 10 84 e5                                      str r1, [r4, #0x4c]
00866698  60 10 84 e5                                      str r1, [r4, #0x60]
0086669c  70 10 84 e5                                      str r1, [r4, #0x70]
008666a0  74 10 84 e5                                      str r1, [r4, #0x74]
008666a4  7c 10 84 e5                                      str r1, [r4, #0x7c]
008666a8  8c 50 c4 e5                                      strb r5, [r4, #0x8c]
008666ac  8d 50 c4 e5                                      strb r5, [r4, #0x8d]
008666b0  90 50 84 e5                                      str r5, [r4, #0x90]
008666b4  94 50 84 e5                                      str r5, [r4, #0x94]
008666b8  98 50 c4 e5                                      strb r5, [r4, #0x98]
008666bc  c8 60 84 e5                                      str r6, [r4, #0xc8]
008666c0  d4 c0 84 e5                                      str ip, [r4, #0xd4]
008666c4  dc e0 84 e5                                      str lr, [r4, #0xdc]
008666c8  18 60 9d e5                                      ldr r6, [sp, #0x18]
008666cc  05 30 a0 e1                                      mov r3, r5
008666d0  10 61 84 e5                                      str r6, [r4, #0x110]
008666d4  1c 60 9d e5                                      ldr r6, [sp, #0x1c]
008666d8  9c 20 84 e5                                      str r2, [r4, #0x9c]
008666dc  a0 20 84 e5                                      str r2, [r4, #0xa0]
008666e0  a4 20 84 e5                                      str r2, [r4, #0xa4]
008666e4  a8 20 84 e5                                      str r2, [r4, #0xa8]
008666e8  ac 20 84 e5                                      str r2, [r4, #0xac]
008666ec  b0 20 84 e5                                      str r2, [r4, #0xb0]
008666f0  b4 20 84 e5                                      str r2, [r4, #0xb4]
008666f4  b8 20 84 e5                                      str r2, [r4, #0xb8]
008666f8  bc 20 84 e5                                      str r2, [r4, #0xbc]
008666fc  d8 20 84 e5                                      str r2, [r4, #0xd8]
00866700  18 61 84 e5                                      str r6, [r4, #0x118]
00866704  24 11 84 e5                                      str r1, [r4, #0x124]
00866708  99 50 c4 e5                                      strb r5, [r4, #0x99]
0086670c  c0 50 84 e5                                      str r5, [r4, #0xc0]
00866710  c4 e0 84 e5                                      str lr, [r4, #0xc4]
00866714  cc 10 84 e5                                      str r1, [r4, #0xcc]
00866718  d0 c0 84 e5                                      str ip, [r4, #0xd0]
0086671c  ec 50 84 e5                                      str r5, [r4, #0xec]
00866720  f0 50 84 e5                                      str r5, [r4, #0xf0]
00866724  f4 50 84 e5                                      str r5, [r4, #0xf4]
00866728  f8 50 84 e5                                      str r5, [r4, #0xf8]
0086672c  fc 50 84 e5                                      str r5, [r4, #0xfc]
00866730  08 51 84 e5                                      str r5, [r4, #0x108]
00866734  0c 51 84 e5                                      str r5, [r4, #0x10c]
00866738  14 51 84 e5                                      str r5, [r4, #0x114]
0086673c  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
00866740  20 21 84 e5                                      str r2, [r4, #0x120]
00866744  28 21 84 e5                                      str r2, [r4, #0x128]
00866748  2c 21 84 e5                                      str r2, [r4, #0x12c]
0086674c  00 20 e0 e3                                      mvn r2, #0
00866750  30 01 c4 e5                                      strb r0, [r4, #0x130]
00866754  34 21 84 e5                                      str r2, [r4, #0x134]
00866758  1d 51 c4 e5                                      strb r5, [r4, #0x11d]
0086675c  38 51 84 e5                                      str r5, [r4, #0x138]
00866760  3c 51 84 e5                                      str r5, [r4, #0x13c]
00866764  04 20 a0 e1                                      mov r2, r4
00866768  05 00 a0 e1                                      mov r0, r5
0086676c  01 30 83 e2                                      add r3, r3, #1
00866770  0b 00 53 e3                                      cmp r3, #0xb
00866774  e0 00 c2 e5                                      strb r0, [r2, #0xe0]
00866778  00 10 a0 e3                                      mov r1, #0
0086677c  01 20 82 e2                                      add r2, r2, #1
00866780  f9 ff ff 1a                                      bne #0x86676c
00866784  18 31 94 e5                                      ldr r3, [r4, #0x118]
00866788  04 11 84 e5                                      str r1, [r4, #0x104]
0086678c  00 11 84 e5                                      str r1, [r4, #0x100]
00866790  01 00 53 e1                                      cmp r3, r1
00866794  09 00 00 0a                                      beq #0x8667c0
00866798  30 20 93 e5                                      ldr r2, [r3, #0x30]
0086679c  28 10 93 e5                                      ldr r1, [r3, #0x28]
008667a0  34 00 93 e5                                      ldr r0, [r3, #0x34]
008667a4  c2 21 a0 e1                                      asr r2, r2, #3
008667a8  91 02 02 e0                                      mul r2, r1, r2
008667ac  2c 10 93 e5                                      ldr r1, [r3, #0x2c]
008667b0  90 02 03 e0                                      mul r3, r0, r2
008667b4  91 02 02 e0                                      mul r2, r1, r2
008667b8  24 30 84 e5                                      str r3, [r4, #0x24]
008667bc  20 20 84 e5                                      str r2, [r4, #0x20]
008667c0  04 00 a0 e1                                      mov r0, r4
008667c4  bb fa ff eb                                      bl #0x8652b8
008667c8  18 31 94 e5                                      ldr r3, [r4, #0x118]
008667cc  50 20 93 e5                                      ldr r2, [r3, #0x50]
008667d0  00 00 52 e3                                      cmp r2, #0
008667d4  3c 30 93 05                                      ldreq r3, [r3, #0x3c]
008667d8  00 30 a0 13                                      movne r3, #0
008667dc  03 00 a0 e1                                      mov r0, r3
008667e0  00 30 93 e5                                      ldr r3, [r3]
008667e4  0f e0 a0 e1                                      mov lr, pc
008667e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008667ec  00 30 a0 e3                                      mov r3, #0
008667f0  01 20 a0 e3                                      mov r2, #1
008667f4  40 01 84 e5                                      str r0, [r4, #0x140]
008667f8  45 21 c4 e5                                      strb r2, [r4, #0x145]
008667fc  46 31 c4 e5                                      strb r3, [r4, #0x146]
00866800  44 31 c4 e5                                      strb r3, [r4, #0x144]
00866804  04 00 a0 e1                                      mov r0, r4
00866808  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0086680c  b4 e4 12 00 34 47 00 00 fc 2c 00 00              .byte 0xb4, 0xe4, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xfc, 0x2c, 0x00, 0x00

; FUNCTION 0x00866818, declared_size=268, range_size=268, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj12GetDebugInfoERNS_18DebugChunk_emitterE
; demangled: vox::EmitterObj::GetDebugInfo(vox::DebugChunk_emitter&)
; decoder-mode: arm
00866818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086681c  18 60 80 e2                                      add r6, r0, #0x18
00866820  00 40 a0 e1                                      mov r4, r0
00866824  01 50 a0 e1                                      mov r5, r1
00866828  06 00 a0 e1                                      mov r0, r6
0086682c  12 b3 00 eb                                      bl #0x89347c
00866830  d8 20 c4 e1                                      ldrd r2, r3, [r4, #8]
00866834  f0 20 c5 e1                                      strd r2, r3, [r5]
00866838  18 31 94 e5                                      ldr r3, [r4, #0x118]
0086683c  54 70 85 e2                                      add r7, r5, #0x54
00866840  c0 80 84 e2                                      add r8, r4, #0xc0
00866844  d8 20 c3 e1                                      ldrd r2, r3, [r3, #8]
00866848  f8 20 c5 e1                                      strd r2, r3, [r5, #8]
0086684c  38 30 94 e5                                      ldr r3, [r4, #0x38]
00866850  20 30 85 e5                                      str r3, [r5, #0x20]
00866854  60 10 94 e5                                      ldr r1, [r4, #0x60]
00866858  44 00 94 e5                                      ldr r0, [r4, #0x44]
0086685c  42 a1 ea eb                                      bl #0x30ed6c
00866860  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
00866864  40 a1 ea eb                                      bl #0x30ed6c
00866868  24 00 85 e5                                      str r0, [r5, #0x24]
0086686c  70 30 94 e5                                      ldr r3, [r4, #0x70]
00866870  10 10 85 e2                                      add r1, r5, #0x10
00866874  3c 20 85 e2                                      add r2, r5, #0x3c
00866878  28 30 85 e5                                      str r3, [r5, #0x28]
0086687c  74 00 94 e5                                      ldr r0, [r4, #0x74]
00866880  48 30 85 e2                                      add r3, r5, #0x48
00866884  07 c0 a0 e1                                      mov ip, r7
00866888  2c 00 85 e5                                      str r0, [r5, #0x2c]
0086688c  94 00 94 e5                                      ldr r0, [r4, #0x94]
00866890  1c 00 85 e5                                      str r0, [r5, #0x1c]
00866894  9c 00 94 e5                                      ldr r0, [r4, #0x9c]
00866898  10 00 85 e5                                      str r0, [r5, #0x10]
0086689c  a0 00 94 e5                                      ldr r0, [r4, #0xa0]
008668a0  04 00 81 e5                                      str r0, [r1, #4]
008668a4  a4 00 94 e5                                      ldr r0, [r4, #0xa4]
008668a8  08 00 81 e5                                      str r0, [r1, #8]
008668ac  b4 10 94 e5                                      ldr r1, [r4, #0xb4]
008668b0  3c 10 85 e5                                      str r1, [r5, #0x3c]
008668b4  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
008668b8  04 10 82 e5                                      str r1, [r2, #4]
008668bc  bc 10 94 e5                                      ldr r1, [r4, #0xbc]
008668c0  08 10 82 e5                                      str r1, [r2, #8]
008668c4  a8 20 94 e5                                      ldr r2, [r4, #0xa8]
008668c8  48 20 85 e5                                      str r2, [r5, #0x48]
008668cc  ac 20 94 e5                                      ldr r2, [r4, #0xac]
008668d0  04 20 83 e5                                      str r2, [r3, #4]
008668d4  b0 20 94 e5                                      ldr r2, [r4, #0xb0]
008668d8  08 20 83 e5                                      str r2, [r3, #8]
008668dc  8c 30 d4 e5                                      ldrb r3, [r4, #0x8c]
008668e0  30 30 85 e5                                      str r3, [r5, #0x30]
008668e4  28 30 94 e5                                      ldr r3, [r4, #0x28]
008668e8  38 30 85 e5                                      str r3, [r5, #0x38]
008668ec  10 30 94 e5                                      ldr r3, [r4, #0x10]
008668f0  34 30 85 e5                                      str r3, [r5, #0x34]
008668f4  0f 00 b8 e8                                      ldm r8!, {r0, r1, r2, r3}
008668f8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
008668fc  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
00866900  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00866904  14 31 94 e5                                      ldr r3, [r4, #0x114]
00866908  06 00 a0 e1                                      mov r0, r6
0086690c  04 30 93 e5                                      ldr r3, [r3, #4]
00866910  01 00 53 e3                                      cmp r3, #1
00866914  00 30 e0 c3                                      mvngt r3, #0
00866918  54 30 85 c5                                      strgt r3, [r5, #0x54]
0086691c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00866920  d4 b2 00 ea                                      b #0x893478

; FUNCTION 0x00866abc, declared_size=16, range_size=16, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj30SetInteractiveMusicStateChangeEPKc
; demangled: vox::EmitterObj::SetInteractiveMusicStateChange(char const*)
; decoder-mode: arm
00866abc  01 30 a0 e3                                      mov r3, #1
00866ac0  44 31 e0 e5                                      strb r3, [r0, #0x144]!
00866ac4  02 00 80 e2                                      add r0, r0, #2
00866ac8  94 9e ea ea                                      b #0x30e520

; FUNCTION 0x00866acc, declared_size=100, range_size=100, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj15SetDSPParameterEiPv
; demangled: vox::EmitterObj::SetDSPParameter(int, void*)
; decoder-mode: arm
00866acc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00866ad0  18 40 80 e2                                      add r4, r0, #0x18
00866ad4  01 60 a0 e1                                      mov r6, r1
00866ad8  00 50 a0 e1                                      mov r5, r0
00866adc  04 00 a0 e1                                      mov r0, r4
00866ae0  02 70 a0 e1                                      mov r7, r2
00866ae4  64 b2 00 eb                                      bl #0x89347c
00866ae8  00 00 56 e3                                      cmp r6, #0
00866aec  0c 00 00 1a                                      bne #0x866b24
00866af0  07 00 a0 e1                                      mov r0, r7
00866af4  d6 9c ea eb                                      bl #0x30de54
00866af8  00 60 50 e2                                      subs r6, r0, #0
00866afc  08 00 00 da                                      ble #0x866b24
00866b00  f0 00 95 e5                                      ldr r0, [r5, #0xf0]
00866b04  4e a6 ea eb                                      bl #0x310444
00866b08  01 00 86 e2                                      add r0, r6, #1
00866b0c  79 a6 ea eb                                      bl #0x3104f8
00866b10  00 00 50 e3                                      cmp r0, #0
00866b14  f0 00 85 e5                                      str r0, [r5, #0xf0]
00866b18  01 00 00 0a                                      beq #0x866b24
00866b1c  07 10 a0 e1                                      mov r1, r7
00866b20  7e 9e ea eb                                      bl #0x30e520
00866b24  04 00 a0 e1                                      mov r0, r4
00866b28  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00866b2c  51 b2 00 ea                                      b #0x893478

; FUNCTION 0x00866b30, declared_size=624, range_size=624, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj17ProcessNativeDataEf
; demangled: vox::EmitterObj::ProcessNativeData(float)
; decoder-mode: arm
00866b30  30 40 2d e9                                      push {r4, r5, lr}
00866b34  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
00866b38  0c d0 4d e2                                      sub sp, sp, #0xc
00866b3c  00 40 a0 e1                                      mov r4, r0
00866b40  00 00 53 e3                                      cmp r3, #0
00866b44  08 00 00 1a                                      bne #0x866b6c
00866b48  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866b4c  03 00 a0 e1                                      mov r0, r3
00866b50  00 30 93 e5                                      ldr r3, [r3]
00866b54  0f e0 a0 e1                                      mov lr, pc
00866b58  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00866b5c  00 00 50 e3                                      cmp r0, #0
00866b60  1e 00 00 1a                                      bne #0x866be0
00866b64  0c d0 8d e2                                      add sp, sp, #0xc
00866b68  30 80 bd e8                                      pop {r4, r5, pc}
00866b6c  45 21 d0 e5                                      ldrb r2, [r0, #0x145]
00866b70  00 00 52 e3                                      cmp r2, #0
00866b74  3f 00 00 0a                                      beq #0x866c78
00866b78  14 31 90 e5                                      ldr r3, [r0, #0x114]
00866b7c  03 00 a0 e1                                      mov r0, r3
00866b80  00 30 93 e5                                      ldr r3, [r3]
00866b84  0f e0 a0 e1                                      mov lr, pc
00866b88  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00866b8c  51 1f 84 e2                                      add r1, r4, #0x144
00866b90  02 10 81 e2                                      add r1, r1, #2
00866b94  14 01 94 e5                                      ldr r0, [r4, #0x114]
00866b98  69 31 00 eb                                      bl #0x873144
00866b9c  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866ba0  03 00 a0 e1                                      mov r0, r3
00866ba4  00 30 93 e5                                      ldr r3, [r3]
00866ba8  0f e0 a0 e1                                      mov lr, pc
00866bac  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00866bb0  00 30 a0 e3                                      mov r3, #0
00866bb4  0c 31 84 e5                                      str r3, [r4, #0x10c]
00866bb8  00 31 84 e5                                      str r3, [r4, #0x100]
00866bbc  00 30 a0 e3                                      mov r3, #0
00866bc0  44 31 c4 e5                                      strb r3, [r4, #0x144]
00866bc4  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866bc8  03 00 a0 e1                                      mov r0, r3
00866bcc  00 30 93 e5                                      ldr r3, [r3]
00866bd0  0f e0 a0 e1                                      mov lr, pc
00866bd4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00866bd8  00 00 50 e3                                      cmp r0, #0
00866bdc  e0 ff ff 0a                                      beq #0x866b64
00866be0  14 31 94 e5                                      ldr r3, [r4, #0x114]
00866be4  03 00 a0 e1                                      mov r0, r3
00866be8  00 30 93 e5                                      ldr r3, [r3]
00866bec  0f e0 a0 e1                                      mov lr, pc
00866bf0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00866bf4  00 00 50 e3                                      cmp r0, #0
00866bf8  d9 ff ff 0a                                      beq #0x866b64
00866bfc  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00866c00  00 11 94 e5                                      ldr r1, [r4, #0x100]
00866c04  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
00866c08  01 11 83 e0                                      add r1, r3, r1, lsl #2
00866c0c  00 00 52 e3                                      cmp r2, #0
00866c10  00 30 e0 03                                      mvneq r3, #0
00866c14  94 30 84 05                                      streq r3, [r4, #0x94]
00866c18  d1 ff ff 0a                                      beq #0x866b64
00866c1c  14 31 94 e5                                      ldr r3, [r4, #0x114]
00866c20  08 21 94 e5                                      ldr r2, [r4, #0x108]
00866c24  03 00 a0 e1                                      mov r0, r3
00866c28  00 30 93 e5                                      ldr r3, [r3]
00866c2c  0f e0 a0 e1                                      mov lr, pc
00866c30  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00866c34  00 20 50 e2                                      subs r2, r0, #0
00866c38  c9 ff ff da                                      ble #0x866b64
00866c3c  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866c40  00 c1 94 e5                                      ldr ip, [r4, #0x100]
00866c44  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
00866c48  03 00 a0 e1                                      mov r0, r3
00866c4c  00 30 93 e5                                      ldr r3, [r3]
00866c50  0c 11 91 e7                                      ldr r1, [r1, ip, lsl #2]
00866c54  0f e0 a0 e1                                      mov lr, pc
00866c58  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00866c5c  00 01 94 e5                                      ldr r0, [r4, #0x100]
00866c60  04 11 94 e5                                      ldr r1, [r4, #0x104]
00866c64  01 00 80 e2                                      add r0, r0, #1
00866c68  00 01 84 e5                                      str r0, [r4, #0x100]
00866c6c  24 9f ea eb                                      bl #0x30e904
00866c70  00 11 84 e5                                      str r1, [r4, #0x100]
00866c74  ba ff ff ea                                      b #0x866b64
00866c78  14 31 90 e5                                      ldr r3, [r0, #0x114]
00866c7c  08 50 8d e2                                      add r5, sp, #8
00866c80  08 20 25 e5                                      str r2, [r5, #-8]!
00866c84  04 20 8d e5                                      str r2, [sp, #4]
00866c88  03 00 a0 e1                                      mov r0, r3
00866c8c  00 30 93 e5                                      ldr r3, [r3]
00866c90  0f e0 a0 e1                                      mov lr, pc
00866c94  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00866c98  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866c9c  00 10 a0 e1                                      mov r1, r0
00866ca0  0d 20 a0 e1                                      mov r2, sp
00866ca4  03 00 a0 e1                                      mov r0, r3
00866ca8  00 c0 93 e5                                      ldr ip, [r3]
00866cac  04 30 8d e2                                      add r3, sp, #4
00866cb0  0f e0 a0 e1                                      mov lr, pc
00866cb4  4c f0 9c e5                                      ldr pc, [ip, #0x4c]
00866cb8  04 10 9d e5                                      ldr r1, [sp, #4]
00866cbc  00 00 51 e3                                      cmp r1, #0
00866cc0  bd ff ff da                                      ble #0x866bbc
00866cc4  00 21 94 e5                                      ldr r2, [r4, #0x100]
00866cc8  00 30 9d e5                                      ldr r3, [sp]
00866ccc  03 00 52 e1                                      cmp r2, r3
00866cd0  04 01 94 b5                                      ldrlt r0, [r4, #0x104]
00866cd4  00 20 82 b0                                      addlt r2, r2, r0
00866cd8  02 30 63 e0                                      rsb r3, r3, r2
00866cdc  00 31 84 e5                                      str r3, [r4, #0x100]
00866ce0  14 31 94 e5                                      ldr r3, [r4, #0x114]
00866ce4  03 00 a0 e1                                      mov r0, r3
00866ce8  00 30 93 e5                                      ldr r3, [r3]
00866cec  0f e0 a0 e1                                      mov lr, pc
00866cf0  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00866cf4  00 21 94 e5                                      ldr r2, [r4, #0x100]
00866cf8  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
00866cfc  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00866d00  00 00 53 e3                                      cmp r3, #0
00866d04  06 00 00 0a                                      beq #0x866d24
00866d08  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866d0c  03 00 a0 e1                                      mov r0, r3
00866d10  00 30 93 e5                                      ldr r3, [r3]
00866d14  0f e0 a0 e1                                      mov lr, pc
00866d18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00866d1c  00 00 50 e3                                      cmp r0, #0
00866d20  02 00 00 1a                                      bne #0x866d30
00866d24  00 30 a0 e3                                      mov r3, #0
00866d28  44 31 c4 e5                                      strb r3, [r4, #0x144]
00866d2c  8c ff ff ea                                      b #0x866b64
00866d30  14 31 94 e5                                      ldr r3, [r4, #0x114]
00866d34  f4 20 94 e5                                      ldr r2, [r4, #0xf4]
00866d38  00 11 94 e5                                      ldr r1, [r4, #0x100]
00866d3c  03 00 a0 e1                                      mov r0, r3
00866d40  00 30 93 e5                                      ldr r3, [r3]
00866d44  01 11 92 e7                                      ldr r1, [r2, r1, lsl #2]
00866d48  08 21 94 e5                                      ldr r2, [r4, #0x108]
00866d4c  0f e0 a0 e1                                      mov lr, pc
00866d50  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00866d54  00 20 50 e2                                      subs r2, r0, #0
00866d58  f1 ff ff da                                      ble #0x866d24
00866d5c  10 31 94 e5                                      ldr r3, [r4, #0x110]
00866d60  00 c1 94 e5                                      ldr ip, [r4, #0x100]
00866d64  f4 10 94 e5                                      ldr r1, [r4, #0xf4]
00866d68  03 00 a0 e1                                      mov r0, r3
00866d6c  00 30 93 e5                                      ldr r3, [r3]
00866d70  0c 11 91 e7                                      ldr r1, [r1, ip, lsl #2]
00866d74  0f e0 a0 e1                                      mov lr, pc
00866d78  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00866d7c  00 01 94 e5                                      ldr r0, [r4, #0x100]
00866d80  00 30 a0 e3                                      mov r3, #0
00866d84  0c 31 84 e5                                      str r3, [r4, #0x10c]
00866d88  01 00 80 e2                                      add r0, r0, #1
00866d8c  00 01 84 e5                                      str r0, [r4, #0x100]
00866d90  04 11 94 e5                                      ldr r1, [r4, #0x104]
00866d94  da 9e ea eb                                      bl #0x30e904
00866d98  00 11 84 e5                                      str r1, [r4, #0x100]
00866d9c  e0 ff ff ea                                      b #0x866d24

; FUNCTION 0x008699c0, declared_size=92, range_size=92, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjD1Ev
; demangled: vox::EmitterObj::~EmitterObj()
; decoder-mode: arm
008699c0  70 40 2d e9                                      push {r4, r5, r6, lr}
008699c4  44 40 9f e5                                      ldr r4, [pc, #0x44]
008699c8  44 30 9f e5                                      ldr r3, [pc, #0x44]
008699cc  00 50 a0 e1                                      mov r5, r0
008699d0  04 40 8f e0                                      add r4, pc, r4
008699d4  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
008699d8  03 30 94 e7                                      ldr r3, [r4, r3]
008699dc  00 00 50 e3                                      cmp r0, #0
008699e0  08 30 83 e2                                      add r3, r3, #8
008699e4  00 30 85 e5                                      str r3, [r5]
008699e8  00 00 00 0a                                      beq #0x8699f0
008699ec  94 9a ea eb                                      bl #0x310444
008699f0  20 30 9f e5                                      ldr r3, [pc, #0x20]
008699f4  05 00 a0 e1                                      mov r0, r5
008699f8  03 30 94 e7                                      ldr r3, [r4, r3]
008699fc  08 30 83 e2                                      add r3, r3, #8
00869a00  18 30 80 e4                                      str r3, [r0], #0x18
00869a04  e7 a6 00 eb                                      bl #0x8935a8
00869a08  05 00 a0 e1                                      mov r0, r5
00869a0c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00869a10  c0 b0 12 00 fc 2c 00 00 34 47 00 00              .byte 0xc0, 0xb0, 0x12, 0x00, 0xfc, 0x2c, 0x00, 0x00, 0x34, 0x47, 0x00, 0x00

; FUNCTION 0x00869a1c, declared_size=28, range_size=28, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjD0Ev
; demangled: vox::EmitterObj::~EmitterObj()
; decoder-mode: arm
00869a1c  10 40 2d e9                                      push {r4, lr}
00869a20  00 40 a0 e1                                      mov r4, r0
00869a24  e5 ff ff eb                                      bl #0x8699c0
00869a28  04 00 a0 e1                                      mov r0, r4
00869a2c  1f 92 ea eb                                      bl #0x30e2b0
00869a30  04 00 a0 e1                                      mov r0, r4
00869a34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00869a38, declared_size=92, range_size=92, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjD2Ev
; demangled: vox::EmitterObj::~EmitterObj()
; decoder-mode: arm
00869a38  70 40 2d e9                                      push {r4, r5, r6, lr}
00869a3c  44 40 9f e5                                      ldr r4, [pc, #0x44]
00869a40  44 30 9f e5                                      ldr r3, [pc, #0x44]
00869a44  00 50 a0 e1                                      mov r5, r0
00869a48  04 40 8f e0                                      add r4, pc, r4
00869a4c  f4 00 90 e5                                      ldr r0, [r0, #0xf4]
00869a50  03 30 94 e7                                      ldr r3, [r4, r3]
00869a54  00 00 50 e3                                      cmp r0, #0
00869a58  08 30 83 e2                                      add r3, r3, #8
00869a5c  00 30 85 e5                                      str r3, [r5]
00869a60  00 00 00 0a                                      beq #0x869a68
00869a64  76 9a ea eb                                      bl #0x310444
00869a68  20 30 9f e5                                      ldr r3, [pc, #0x20]
00869a6c  05 00 a0 e1                                      mov r0, r5
00869a70  03 30 94 e7                                      ldr r3, [r4, r3]
00869a74  08 30 83 e2                                      add r3, r3, #8
00869a78  18 30 80 e4                                      str r3, [r0], #0x18
00869a7c  c9 a6 00 eb                                      bl #0x8935a8
00869a80  05 00 a0 e1                                      mov r0, r5
00869a84  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00869a88  48 b0 12 00 fc 2c 00 00 34 47 00 00              .byte 0x48, 0xb0, 0x12, 0x00, 0xfc, 0x2c, 0x00, 0x00, 0x34, 0x47, 0x00, 0x00

; FUNCTION 0x0086bb24, declared_size=208, range_size=208, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj7SetGainEff
; demangled: vox::EmitterObj::SetGain(float, float)
; decoder-mode: arm
0086bb24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086bb28  18 50 80 e2                                      add r5, r0, #0x18
0086bb2c  00 60 a0 e1                                      mov r6, r0
0086bb30  1c d0 4d e2                                      sub sp, sp, #0x1c
0086bb34  05 00 a0 e1                                      mov r0, r5
0086bb38  01 70 a0 e1                                      mov r7, r1
0086bb3c  02 90 a0 e1                                      mov sb, r2
0086bb40  4d 9e 00 eb                                      bl #0x89347c
0086bb44  50 a0 96 e5                                      ldr sl, [r6, #0x50]
0086bb48  54 80 96 e5                                      ldr r8, [r6, #0x54]
0086bb4c  40 70 86 e5                                      str r7, [r6, #0x40]
0086bb50  0a 00 a0 e1                                      mov r0, sl
0086bb54  08 10 a0 e1                                      mov r1, r8
0086bb58  eb 8a ea eb                                      bl #0x30e70c
0086bb5c  00 00 50 e3                                      cmp r0, #0
0086bb60  48 40 86 e2                                      add r4, r6, #0x48
0086bb64  4c 00 96 05                                      ldreq r0, [r6, #0x4c]
0086bb68  11 00 00 0a                                      beq #0x86bbb4
0086bb6c  08 00 a0 e1                                      mov r0, r8
0086bb70  00 10 a0 e3                                      mov r1, #0
0086bb74  df 89 ea eb                                      bl #0x30e2f8
0086bb78  00 00 50 e3                                      cmp r0, #0
0086bb7c  48 00 96 05                                      ldreq r0, [r6, #0x48]
0086bb80  0b 00 00 0a                                      beq #0x86bbb4
0086bb84  48 b0 96 e5                                      ldr fp, [r6, #0x48]
0086bb88  4c 00 96 e5                                      ldr r0, [r6, #0x4c]
0086bb8c  0b 10 a0 e1                                      mov r1, fp
0086bb90  05 8a ea eb                                      bl #0x30e3ac
0086bb94  00 10 a0 e1                                      mov r1, r0
0086bb98  0a 00 a0 e1                                      mov r0, sl
0086bb9c  72 8c ea eb                                      bl #0x30ed6c
0086bba0  08 10 a0 e1                                      mov r1, r8
0086bba4  3a 8c ea eb                                      bl #0x30ec94
0086bba8  00 10 a0 e1                                      mov r1, r0
0086bbac  0b 00 a0 e1                                      mov r0, fp
0086bbb0  fb 8b ea eb                                      bl #0x30eba4
0086bbb4  00 30 a0 e3                                      mov r3, #0
0086bbb8  04 00 8d e5                                      str r0, [sp, #4]
0086bbbc  08 70 8d e5                                      str r7, [sp, #8]
0086bbc0  0c 30 8d e5                                      str r3, [sp, #0xc]
0086bbc4  10 90 8d e5                                      str sb, [sp, #0x10]
0086bbc8  04 c0 8d e2                                      add ip, sp, #4
0086bbcc  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086bbd0  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
0086bbd4  00 20 a0 e3                                      mov r2, #0
0086bbd8  14 20 cd e5                                      strb r2, [sp, #0x14]
0086bbdc  00 20 9c e5                                      ldr r2, [ip]
0086bbe0  05 00 a0 e1                                      mov r0, r5
0086bbe4  00 20 c4 e5                                      strb r2, [r4]
0086bbe8  22 9e 00 eb                                      bl #0x893478
0086bbec  1c d0 8d e2                                      add sp, sp, #0x1c
0086bbf0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0086bc40, declared_size=208, range_size=208, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj8SetPitchEff
; demangled: vox::EmitterObj::SetPitch(float, float)
; decoder-mode: arm
0086bc40  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086bc44  18 50 80 e2                                      add r5, r0, #0x18
0086bc48  00 60 a0 e1                                      mov r6, r0
0086bc4c  1c d0 4d e2                                      sub sp, sp, #0x1c
0086bc50  05 00 a0 e1                                      mov r0, r5
0086bc54  01 70 a0 e1                                      mov r7, r1
0086bc58  02 90 a0 e1                                      mov sb, r2
0086bc5c  06 9e 00 eb                                      bl #0x89347c
0086bc60  80 a0 96 e5                                      ldr sl, [r6, #0x80]
0086bc64  84 80 96 e5                                      ldr r8, [r6, #0x84]
0086bc68  74 70 86 e5                                      str r7, [r6, #0x74]
0086bc6c  0a 00 a0 e1                                      mov r0, sl
0086bc70  08 10 a0 e1                                      mov r1, r8
0086bc74  a4 8a ea eb                                      bl #0x30e70c
0086bc78  00 00 50 e3                                      cmp r0, #0
0086bc7c  78 40 86 e2                                      add r4, r6, #0x78
0086bc80  7c 00 96 05                                      ldreq r0, [r6, #0x7c]
0086bc84  11 00 00 0a                                      beq #0x86bcd0
0086bc88  08 00 a0 e1                                      mov r0, r8
0086bc8c  00 10 a0 e3                                      mov r1, #0
0086bc90  98 89 ea eb                                      bl #0x30e2f8
0086bc94  00 00 50 e3                                      cmp r0, #0
0086bc98  78 00 96 05                                      ldreq r0, [r6, #0x78]
0086bc9c  0b 00 00 0a                                      beq #0x86bcd0
0086bca0  78 b0 96 e5                                      ldr fp, [r6, #0x78]
0086bca4  7c 00 96 e5                                      ldr r0, [r6, #0x7c]
0086bca8  0b 10 a0 e1                                      mov r1, fp
0086bcac  be 89 ea eb                                      bl #0x30e3ac
0086bcb0  00 10 a0 e1                                      mov r1, r0
0086bcb4  0a 00 a0 e1                                      mov r0, sl
0086bcb8  2b 8c ea eb                                      bl #0x30ed6c
0086bcbc  08 10 a0 e1                                      mov r1, r8
0086bcc0  f3 8b ea eb                                      bl #0x30ec94
0086bcc4  00 10 a0 e1                                      mov r1, r0
0086bcc8  0b 00 a0 e1                                      mov r0, fp
0086bccc  b4 8b ea eb                                      bl #0x30eba4
0086bcd0  00 30 a0 e3                                      mov r3, #0
0086bcd4  04 00 8d e5                                      str r0, [sp, #4]
0086bcd8  08 70 8d e5                                      str r7, [sp, #8]
0086bcdc  0c 30 8d e5                                      str r3, [sp, #0xc]
0086bce0  10 90 8d e5                                      str sb, [sp, #0x10]
0086bce4  04 c0 8d e2                                      add ip, sp, #4
0086bce8  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086bcec  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
0086bcf0  00 20 a0 e3                                      mov r2, #0
0086bcf4  14 20 cd e5                                      strb r2, [sp, #0x14]
0086bcf8  00 20 9c e5                                      ldr r2, [ip]
0086bcfc  05 00 a0 e1                                      mov r0, r5
0086bd00  00 20 c4 e5                                      strb r2, [r4]
0086bd04  db 9d 00 eb                                      bl #0x893478
0086bd08  1c d0 8d e2                                      add sp, sp, #0x1c
0086bd0c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0086c1d4, declared_size=248, range_size=248, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj6ResumeEf
; demangled: vox::EmitterObj::Resume(float)
; decoder-mode: arm
0086c1d4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086c1d8  18 40 80 e2                                      add r4, r0, #0x18
0086c1dc  00 60 a0 e1                                      mov r6, r0
0086c1e0  18 d0 4d e2                                      sub sp, sp, #0x18
0086c1e4  04 00 a0 e1                                      mov r0, r4
0086c1e8  01 70 a0 e1                                      mov r7, r1
0086c1ec  a2 9c 00 eb                                      bl #0x89347c
0086c1f0  94 30 96 e5                                      ldr r3, [r6, #0x94]
0086c1f4  02 00 53 e3                                      cmp r3, #2
0086c1f8  08 00 00 0a                                      beq #0x86c220
0086c1fc  90 20 96 e5                                      ldr r2, [r6, #0x90]
0086c200  02 00 52 e3                                      cmp r2, #2
0086c204  03 00 00 0a                                      beq #0x86c218
0086c208  04 00 a0 e1                                      mov r0, r4
0086c20c  99 9c 00 eb                                      bl #0x893478
0086c210  18 d0 8d e2                                      add sp, sp, #0x18
0086c214  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086c218  03 00 53 e3                                      cmp r3, #3
0086c21c  f9 ff ff 0a                                      beq #0x86c208
0086c220  64 a0 96 e5                                      ldr sl, [r6, #0x64]
0086c224  68 80 96 e5                                      ldr r8, [r6, #0x68]
0086c228  01 30 a0 e3                                      mov r3, #1
0086c22c  94 30 86 e5                                      str r3, [r6, #0x94]
0086c230  0a 00 a0 e1                                      mov r0, sl
0086c234  08 10 a0 e1                                      mov r1, r8
0086c238  33 89 ea eb                                      bl #0x30e70c
0086c23c  00 00 50 e3                                      cmp r0, #0
0086c240  5c 50 86 e2                                      add r5, r6, #0x5c
0086c244  60 00 96 05                                      ldreq r0, [r6, #0x60]
0086c248  11 00 00 0a                                      beq #0x86c294
0086c24c  08 00 a0 e1                                      mov r0, r8
0086c250  00 10 a0 e3                                      mov r1, #0
0086c254  27 88 ea eb                                      bl #0x30e2f8
0086c258  00 00 50 e3                                      cmp r0, #0
0086c25c  5c 00 96 05                                      ldreq r0, [r6, #0x5c]
0086c260  0b 00 00 0a                                      beq #0x86c294
0086c264  5c 90 96 e5                                      ldr sb, [r6, #0x5c]
0086c268  60 00 96 e5                                      ldr r0, [r6, #0x60]
0086c26c  09 10 a0 e1                                      mov r1, sb
0086c270  4d 88 ea eb                                      bl #0x30e3ac
0086c274  00 10 a0 e1                                      mov r1, r0
0086c278  0a 00 a0 e1                                      mov r0, sl
0086c27c  ba 8a ea eb                                      bl #0x30ed6c
0086c280  08 10 a0 e1                                      mov r1, r8
0086c284  82 8a ea eb                                      bl #0x30ec94
0086c288  00 10 a0 e1                                      mov r1, r0
0086c28c  09 00 a0 e1                                      mov r0, sb
0086c290  43 8a ea eb                                      bl #0x30eba4
0086c294  fe 35 a0 e3                                      mov r3, #0x3f800000
0086c298  08 30 8d e5                                      str r3, [sp, #8]
0086c29c  00 30 a0 e3                                      mov r3, #0
0086c2a0  04 00 8d e5                                      str r0, [sp, #4]
0086c2a4  0c 30 8d e5                                      str r3, [sp, #0xc]
0086c2a8  10 70 8d e5                                      str r7, [sp, #0x10]
0086c2ac  04 c0 8d e2                                      add ip, sp, #4
0086c2b0  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086c2b4  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0086c2b8  00 20 a0 e3                                      mov r2, #0
0086c2bc  14 20 cd e5                                      strb r2, [sp, #0x14]
0086c2c0  00 20 9c e5                                      ldr r2, [ip]
0086c2c4  00 20 c5 e5                                      strb r2, [r5]
0086c2c8  ce ff ff ea                                      b #0x86c208

; FUNCTION 0x0086c5ec, declared_size=1052, range_size=1052, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjC1ExiiiPNS_21DriverSourceInterfaceEPNS_22DecoderCursorInterfaceEPNS_7DataObjE
; demangled: vox::EmitterObj::EmitterObj(long long, int, int, int, vox::DriverSourceInterface*, vox::DecoderCursorInterface*, vox::DataObj*)
; decoder-mode: arm
0086c5ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086c5f0  04 64 9f e5                                      ldr r6, [pc, #0x404]
0086c5f4  04 14 9f e5                                      ldr r1, [pc, #0x404]
0086c5f8  00 50 a0 e3                                      mov r5, #0
0086c5fc  06 60 8f e0                                      add r6, pc, r6
0086c600  01 10 96 e7                                      ldr r1, [r6, r1]
0086c604  00 40 a0 e1                                      mov r4, r0
0086c608  20 d0 4d e2                                      sub sp, sp, #0x20
0086c60c  08 10 81 e2                                      add r1, r1, #8
0086c610  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
0086c614  00 10 80 e5                                      str r1, [r0]
0086c618  10 50 80 e5                                      str r5, [r0, #0x10]
0086c61c  18 00 80 e2                                      add r0, r0, #0x18
0086c620  48 70 9d e5                                      ldr r7, [sp, #0x48]
0086c624  e9 9b 00 eb                                      bl #0x8935d0
0086c628  d4 33 9f e5                                      ldr r3, [pc, #0x3d4]
0086c62c  02 e1 e0 e3                                      mvn lr, #0x80000000
0086c630  43 c4 a0 e3                                      mov ip, #0x43000000
0086c634  03 30 96 e7                                      ldr r3, [r6, r3]
0086c638  00 20 a0 e3                                      mov r2, #0
0086c63c  fe 15 a0 e3                                      mov r1, #0x3f800000
0086c640  08 60 83 e2                                      add r6, r3, #8
0086c644  00 60 84 e5                                      str r6, [r4]
0086c648  38 60 9d e5                                      ldr r6, [sp, #0x38]
0086c64c  01 00 a0 e3                                      mov r0, #1
0086c650  02 e5 4e e2                                      sub lr, lr, #0x800000
0086c654  2c 60 84 e5                                      str r6, [r4, #0x2c]
0086c658  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
0086c65c  2d c7 8c e2                                      add ip, ip, #0xb40000
0086c660  20 00 84 e5                                      str r0, [r4, #0x20]
0086c664  30 60 84 e5                                      str r6, [r4, #0x30]
0086c668  42 64 a0 e3                                      mov r6, #0x42000000
0086c66c  32 67 86 e2                                      add r6, r6, #0xc80000
0086c670  48 20 84 e5                                      str r2, [r4, #0x48]
0086c674  50 20 84 e5                                      str r2, [r4, #0x50]
0086c678  54 20 84 e5                                      str r2, [r4, #0x54]
0086c67c  58 00 c4 e5                                      strb r0, [r4, #0x58]
0086c680  5c 20 84 e5                                      str r2, [r4, #0x5c]
0086c684  64 20 84 e5                                      str r2, [r4, #0x64]
0086c688  68 20 84 e5                                      str r2, [r4, #0x68]
0086c68c  6c 00 c4 e5                                      strb r0, [r4, #0x6c]
0086c690  78 20 84 e5                                      str r2, [r4, #0x78]
0086c694  80 20 84 e5                                      str r2, [r4, #0x80]
0086c698  84 20 84 e5                                      str r2, [r4, #0x84]
0086c69c  88 00 c4 e5                                      strb r0, [r4, #0x88]
0086c6a0  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
0086c6a4  28 50 84 e5                                      str r5, [r4, #0x28]
0086c6a8  34 50 c4 e5                                      strb r5, [r4, #0x34]
0086c6ac  38 10 84 e5                                      str r1, [r4, #0x38]
0086c6b0  3c 10 84 e5                                      str r1, [r4, #0x3c]
0086c6b4  40 10 84 e5                                      str r1, [r4, #0x40]
0086c6b8  44 10 84 e5                                      str r1, [r4, #0x44]
0086c6bc  4c 10 84 e5                                      str r1, [r4, #0x4c]
0086c6c0  60 10 84 e5                                      str r1, [r4, #0x60]
0086c6c4  70 10 84 e5                                      str r1, [r4, #0x70]
0086c6c8  74 10 84 e5                                      str r1, [r4, #0x74]
0086c6cc  7c 10 84 e5                                      str r1, [r4, #0x7c]
0086c6d0  8c 50 c4 e5                                      strb r5, [r4, #0x8c]
0086c6d4  8d 50 c4 e5                                      strb r5, [r4, #0x8d]
0086c6d8  90 50 84 e5                                      str r5, [r4, #0x90]
0086c6dc  94 50 84 e5                                      str r5, [r4, #0x94]
0086c6e0  98 50 c4 e5                                      strb r5, [r4, #0x98]
0086c6e4  c8 60 84 e5                                      str r6, [r4, #0xc8]
0086c6e8  d4 c0 84 e5                                      str ip, [r4, #0xd4]
0086c6ec  dc e0 84 e5                                      str lr, [r4, #0xdc]
0086c6f0  40 60 9d e5                                      ldr r6, [sp, #0x40]
0086c6f4  05 30 a0 e1                                      mov r3, r5
0086c6f8  08 61 84 e5                                      str r6, [r4, #0x108]
0086c6fc  44 60 9d e5                                      ldr r6, [sp, #0x44]
0086c700  10 61 84 e5                                      str r6, [r4, #0x110]
0086c704  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
0086c708  9c 20 84 e5                                      str r2, [r4, #0x9c]
0086c70c  a0 20 84 e5                                      str r2, [r4, #0xa0]
0086c710  a4 20 84 e5                                      str r2, [r4, #0xa4]
0086c714  a8 20 84 e5                                      str r2, [r4, #0xa8]
0086c718  ac 20 84 e5                                      str r2, [r4, #0xac]
0086c71c  b0 20 84 e5                                      str r2, [r4, #0xb0]
0086c720  b4 20 84 e5                                      str r2, [r4, #0xb4]
0086c724  b8 20 84 e5                                      str r2, [r4, #0xb8]
0086c728  bc 20 84 e5                                      str r2, [r4, #0xbc]
0086c72c  d8 20 84 e5                                      str r2, [r4, #0xd8]
0086c730  18 61 84 e5                                      str r6, [r4, #0x118]
0086c734  24 11 84 e5                                      str r1, [r4, #0x124]
0086c738  99 50 c4 e5                                      strb r5, [r4, #0x99]
0086c73c  c0 50 84 e5                                      str r5, [r4, #0xc0]
0086c740  c4 e0 84 e5                                      str lr, [r4, #0xc4]
0086c744  cc 10 84 e5                                      str r1, [r4, #0xcc]
0086c748  d0 c0 84 e5                                      str ip, [r4, #0xd0]
0086c74c  ec 50 84 e5                                      str r5, [r4, #0xec]
0086c750  f0 50 84 e5                                      str r5, [r4, #0xf0]
0086c754  f4 50 84 e5                                      str r5, [r4, #0xf4]
0086c758  f8 50 84 e5                                      str r5, [r4, #0xf8]
0086c75c  fc 50 84 e5                                      str r5, [r4, #0xfc]
0086c760  0c 51 84 e5                                      str r5, [r4, #0x10c]
0086c764  14 71 84 e5                                      str r7, [r4, #0x114]
0086c768  20 21 84 e5                                      str r2, [r4, #0x120]
0086c76c  28 21 84 e5                                      str r2, [r4, #0x128]
0086c770  2c 21 84 e5                                      str r2, [r4, #0x12c]
0086c774  00 20 e0 e3                                      mvn r2, #0
0086c778  30 01 c4 e5                                      strb r0, [r4, #0x130]
0086c77c  34 21 84 e5                                      str r2, [r4, #0x134]
0086c780  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
0086c784  1d 51 c4 e5                                      strb r5, [r4, #0x11d]
0086c788  38 51 84 e5                                      str r5, [r4, #0x138]
0086c78c  3c 51 84 e5                                      str r5, [r4, #0x13c]
0086c790  04 20 a0 e1                                      mov r2, r4
0086c794  05 00 a0 e1                                      mov r0, r5
0086c798  01 30 83 e2                                      add r3, r3, #1
0086c79c  0b 00 53 e3                                      cmp r3, #0xb
0086c7a0  e0 00 c2 e5                                      strb r0, [r2, #0xe0]
0086c7a4  00 10 a0 e3                                      mov r1, #0
0086c7a8  01 20 82 e2                                      add r2, r2, #1
0086c7ac  f9 ff ff 1a                                      bne #0x86c798
0086c7b0  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086c7b4  04 11 84 e5                                      str r1, [r4, #0x104]
0086c7b8  00 11 84 e5                                      str r1, [r4, #0x100]
0086c7bc  01 00 57 e1                                      cmp r7, r1
0086c7c0  01 00 53 11                                      cmpne r3, r1
0086c7c4  01 30 a0 03                                      moveq r3, #1
0086c7c8  1c 31 c4 05                                      strbeq r3, [r4, #0x11c]
0086c7cc  11 00 00 1a                                      bne #0x86c818
0086c7d0  18 31 94 e5                                      ldr r3, [r4, #0x118]
0086c7d4  50 20 93 e5                                      ldr r2, [r3, #0x50]
0086c7d8  00 00 52 e3                                      cmp r2, #0
0086c7dc  3c 30 93 05                                      ldreq r3, [r3, #0x3c]
0086c7e0  00 30 a0 13                                      movne r3, #0
0086c7e4  03 00 a0 e1                                      mov r0, r3
0086c7e8  00 30 93 e5                                      ldr r3, [r3]
0086c7ec  0f e0 a0 e1                                      mov lr, pc
0086c7f0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086c7f4  00 30 a0 e3                                      mov r3, #0
0086c7f8  01 20 a0 e3                                      mov r2, #1
0086c7fc  40 01 84 e5                                      str r0, [r4, #0x140]
0086c800  45 21 c4 e5                                      strb r2, [r4, #0x145]
0086c804  46 31 c4 e5                                      strb r3, [r4, #0x146]
0086c808  44 31 c4 e5                                      strb r3, [r4, #0x144]
0086c80c  04 00 a0 e1                                      mov r0, r4
0086c810  20 d0 8d e2                                      add sp, sp, #0x20
0086c814  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086c818  14 21 94 e5                                      ldr r2, [r4, #0x114]
0086c81c  03 00 a0 e1                                      mov r0, r3
0086c820  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0086c824  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0086c828  04 c0 92 e5                                      ldr ip, [r2, #4]
0086c82c  c1 11 a0 e1                                      asr r1, r1, #3
0086c830  9e 01 01 e0                                      mul r1, lr, r1
0086c834  9c 01 01 e0                                      mul r1, ip, r1
0086c838  24 10 84 e5                                      str r1, [r4, #0x24]
0086c83c  08 10 92 e5                                      ldr r1, [r2, #8]
0086c840  04 c0 92 e5                                      ldr ip, [r2, #4]
0086c844  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0086c848  9c 01 01 e0                                      mul r1, ip, r1
0086c84c  c2 21 a0 e1                                      asr r2, r2, #3
0086c850  92 01 02 e0                                      mul r2, r2, r1
0086c854  20 20 84 e5                                      str r2, [r4, #0x20]
0086c858  00 30 93 e5                                      ldr r3, [r3]
0086c85c  0f e0 a0 e1                                      mov lr, pc
0086c860  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086c864  00 00 50 e3                                      cmp r0, #0
0086c868  1b 00 00 1a                                      bne #0x86c8dc
0086c86c  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086c870  01 60 a0 e3                                      mov r6, #1
0086c874  04 61 84 e5                                      str r6, [r4, #0x104]
0086c878  03 00 a0 e1                                      mov r0, r3
0086c87c  00 30 93 e5                                      ldr r3, [r3]
0086c880  0f e0 a0 e1                                      mov lr, pc
0086c884  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086c888  00 00 50 e3                                      cmp r0, #0
0086c88c  2d 00 00 0a                                      beq #0x86c948
0086c890  06 10 a0 e1                                      mov r1, r6
0086c894  0d 00 a0 e1                                      mov r0, sp
0086c898  40 e9 ff eb                                      bl #0x866da0
0086c89c  0d 10 a0 e1                                      mov r1, sp
0086c8a0  f4 00 84 e2                                      add r0, r4, #0xf4
0086c8a4  82 f6 ff eb                                      bl #0x86a2b4
0086c8a8  00 00 9d e5                                      ldr r0, [sp]
0086c8ac  0d 50 a0 e1                                      mov r5, sp
0086c8b0  00 00 50 e3                                      cmp r0, #0
0086c8b4  21 00 00 0a                                      beq #0x86c940
0086c8b8  e1 8e ea eb                                      bl #0x310444
0086c8bc  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086c8c0  00 00 53 e3                                      cmp r3, #0
0086c8c4  01 00 00 1a                                      bne #0x86c8d0
0086c8c8  01 30 a0 e3                                      mov r3, #1
0086c8cc  1c 31 c4 e5                                      strb r3, [r4, #0x11c]
0086c8d0  04 00 a0 e1                                      mov r0, r4
0086c8d4  77 e2 ff eb                                      bl #0x8652b8
0086c8d8  bc ff ff ea                                      b #0x86c7d0
0086c8dc  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086c8e0  03 00 a0 e1                                      mov r0, r3
0086c8e4  00 30 93 e5                                      ldr r3, [r3]
0086c8e8  0f e0 a0 e1                                      mov lr, pc
0086c8ec  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0086c8f0  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086c8f4  00 60 a0 e1                                      mov r6, r0
0086c8f8  03 00 a0 e1                                      mov r0, r3
0086c8fc  00 30 93 e5                                      ldr r3, [r3]
0086c900  0f e0 a0 e1                                      mov lr, pc
0086c904  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086c908  00 50 50 e2                                      subs r5, r0, #0
0086c90c  19 00 00 0a                                      beq #0x86c978
0086c910  01 30 a0 e3                                      mov r3, #1
0086c914  0c 50 8d e2                                      add r5, sp, #0xc
0086c918  03 10 a0 e1                                      mov r1, r3
0086c91c  04 31 84 e5                                      str r3, [r4, #0x104]
0086c920  05 00 a0 e1                                      mov r0, r5
0086c924  1d e9 ff eb                                      bl #0x866da0
0086c928  05 10 a0 e1                                      mov r1, r5
0086c92c  f4 00 84 e2                                      add r0, r4, #0xf4
0086c930  5f f6 ff eb                                      bl #0x86a2b4
0086c934  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0086c938  00 00 50 e3                                      cmp r0, #0
0086c93c  dd ff ff 1a                                      bne #0x86c8b8
0086c940  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086c944  dd ff ff ea                                      b #0x86c8c0
0086c948  08 01 94 e5                                      ldr r0, [r4, #0x108]
0086c94c  e9 8e ea eb                                      bl #0x3104f8
0086c950  20 10 8d e2                                      add r1, sp, #0x20
0086c954  08 00 21 e5                                      str r0, [r1, #-8]!
0086c958  f4 00 84 e2                                      add r0, r4, #0xf4
0086c95c  12 ff ff eb                                      bl #0x86c5ac
0086c960  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0086c964  00 30 93 e5                                      ldr r3, [r3]
0086c968  00 00 53 e3                                      cmp r3, #0
0086c96c  f3 ff ff 1a                                      bne #0x86c940
0086c970  04 31 84 e5                                      str r3, [r4, #0x104]
0086c974  d3 ff ff ea                                      b #0x86c8c8
0086c978  f4 70 84 e2                                      add r7, r4, #0xf4
0086c97c  07 00 a0 e1                                      mov r0, r7
0086c980  01 10 86 e2                                      add r1, r6, #1
0086c984  f5 e7 ff eb                                      bl #0x866960
0086c988  00 00 56 e3                                      cmp r6, #0
0086c98c  1c 80 8d a2                                      addge r8, sp, #0x1c
0086c990  0e 00 00 aa                                      bge #0x86c9d0
0086c994  e9 ff ff ea                                      b #0x86c940
0086c998  00 00 81 e5                                      str r0, [r1]
0086c99c  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
0086c9a0  04 30 83 e2                                      add r3, r3, #4
0086c9a4  f8 30 84 e5                                      str r3, [r4, #0xf8]
0086c9a8  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0086c9ac  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0086c9b0  01 50 85 e2                                      add r5, r5, #1
0086c9b4  00 00 53 e3                                      cmp r3, #0
0086c9b8  e0 ff ff 0a                                      beq #0x86c940
0086c9bc  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086c9c0  05 00 56 e1                                      cmp r6, r5
0086c9c4  01 30 83 e2                                      add r3, r3, #1
0086c9c8  04 31 84 e5                                      str r3, [r4, #0x104]
0086c9cc  bb ff ff ba                                      blt #0x86c8c0
0086c9d0  08 01 94 e5                                      ldr r0, [r4, #0x108]
0086c9d4  c7 8e ea eb                                      bl #0x3104f8
0086c9d8  f8 10 94 e5                                      ldr r1, [r4, #0xf8]
0086c9dc  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
0086c9e0  1c 00 8d e5                                      str r0, [sp, #0x1c]
0086c9e4  03 00 51 e1                                      cmp r1, r3
0086c9e8  ea ff ff 1a                                      bne #0x86c998
0086c9ec  07 00 a0 e1                                      mov r0, r7
0086c9f0  08 20 a0 e1                                      mov r2, r8
0086c9f4  c8 fe ff eb                                      bl #0x86c51c
0086c9f8  ea ff ff ea                                      b #0x86c9a8
; mapping-symbol data/literal pool
0086c9fc  94 84 12 00 34 47 00 00 fc 2c 00 00              .byte 0x94, 0x84, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xfc, 0x2c, 0x00, 0x00

; FUNCTION 0x0086ce1c, declared_size=1052, range_size=1052, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObjC2ExiiiPNS_21DriverSourceInterfaceEPNS_22DecoderCursorInterfaceEPNS_7DataObjE
; demangled: vox::EmitterObj::EmitterObj(long long, int, int, int, vox::DriverSourceInterface*, vox::DecoderCursorInterface*, vox::DataObj*)
; decoder-mode: arm
0086ce1c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086ce20  04 64 9f e5                                      ldr r6, [pc, #0x404]
0086ce24  04 14 9f e5                                      ldr r1, [pc, #0x404]
0086ce28  00 50 a0 e3                                      mov r5, #0
0086ce2c  06 60 8f e0                                      add r6, pc, r6
0086ce30  01 10 96 e7                                      ldr r1, [r6, r1]
0086ce34  00 40 a0 e1                                      mov r4, r0
0086ce38  20 d0 4d e2                                      sub sp, sp, #0x20
0086ce3c  08 10 81 e2                                      add r1, r1, #8
0086ce40  f8 20 c0 e1                                      strd r2, r3, [r0, #8]
0086ce44  00 10 80 e5                                      str r1, [r0]
0086ce48  10 50 80 e5                                      str r5, [r0, #0x10]
0086ce4c  18 00 80 e2                                      add r0, r0, #0x18
0086ce50  48 70 9d e5                                      ldr r7, [sp, #0x48]
0086ce54  dd 99 00 eb                                      bl #0x8935d0
0086ce58  d4 33 9f e5                                      ldr r3, [pc, #0x3d4]
0086ce5c  02 e1 e0 e3                                      mvn lr, #0x80000000
0086ce60  43 c4 a0 e3                                      mov ip, #0x43000000
0086ce64  03 30 96 e7                                      ldr r3, [r6, r3]
0086ce68  00 20 a0 e3                                      mov r2, #0
0086ce6c  fe 15 a0 e3                                      mov r1, #0x3f800000
0086ce70  08 60 83 e2                                      add r6, r3, #8
0086ce74  00 60 84 e5                                      str r6, [r4]
0086ce78  38 60 9d e5                                      ldr r6, [sp, #0x38]
0086ce7c  01 00 a0 e3                                      mov r0, #1
0086ce80  02 e5 4e e2                                      sub lr, lr, #0x800000
0086ce84  2c 60 84 e5                                      str r6, [r4, #0x2c]
0086ce88  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
0086ce8c  2d c7 8c e2                                      add ip, ip, #0xb40000
0086ce90  20 00 84 e5                                      str r0, [r4, #0x20]
0086ce94  30 60 84 e5                                      str r6, [r4, #0x30]
0086ce98  42 64 a0 e3                                      mov r6, #0x42000000
0086ce9c  32 67 86 e2                                      add r6, r6, #0xc80000
0086cea0  48 20 84 e5                                      str r2, [r4, #0x48]
0086cea4  50 20 84 e5                                      str r2, [r4, #0x50]
0086cea8  54 20 84 e5                                      str r2, [r4, #0x54]
0086ceac  58 00 c4 e5                                      strb r0, [r4, #0x58]
0086ceb0  5c 20 84 e5                                      str r2, [r4, #0x5c]
0086ceb4  64 20 84 e5                                      str r2, [r4, #0x64]
0086ceb8  68 20 84 e5                                      str r2, [r4, #0x68]
0086cebc  6c 00 c4 e5                                      strb r0, [r4, #0x6c]
0086cec0  78 20 84 e5                                      str r2, [r4, #0x78]
0086cec4  80 20 84 e5                                      str r2, [r4, #0x80]
0086cec8  84 20 84 e5                                      str r2, [r4, #0x84]
0086cecc  88 00 c4 e5                                      strb r0, [r4, #0x88]
0086ced0  1c 50 c4 e5                                      strb r5, [r4, #0x1c]
0086ced4  28 50 84 e5                                      str r5, [r4, #0x28]
0086ced8  34 50 c4 e5                                      strb r5, [r4, #0x34]
0086cedc  38 10 84 e5                                      str r1, [r4, #0x38]
0086cee0  3c 10 84 e5                                      str r1, [r4, #0x3c]
0086cee4  40 10 84 e5                                      str r1, [r4, #0x40]
0086cee8  44 10 84 e5                                      str r1, [r4, #0x44]
0086ceec  4c 10 84 e5                                      str r1, [r4, #0x4c]
0086cef0  60 10 84 e5                                      str r1, [r4, #0x60]
0086cef4  70 10 84 e5                                      str r1, [r4, #0x70]
0086cef8  74 10 84 e5                                      str r1, [r4, #0x74]
0086cefc  7c 10 84 e5                                      str r1, [r4, #0x7c]
0086cf00  8c 50 c4 e5                                      strb r5, [r4, #0x8c]
0086cf04  8d 50 c4 e5                                      strb r5, [r4, #0x8d]
0086cf08  90 50 84 e5                                      str r5, [r4, #0x90]
0086cf0c  94 50 84 e5                                      str r5, [r4, #0x94]
0086cf10  98 50 c4 e5                                      strb r5, [r4, #0x98]
0086cf14  c8 60 84 e5                                      str r6, [r4, #0xc8]
0086cf18  d4 c0 84 e5                                      str ip, [r4, #0xd4]
0086cf1c  dc e0 84 e5                                      str lr, [r4, #0xdc]
0086cf20  40 60 9d e5                                      ldr r6, [sp, #0x40]
0086cf24  05 30 a0 e1                                      mov r3, r5
0086cf28  08 61 84 e5                                      str r6, [r4, #0x108]
0086cf2c  44 60 9d e5                                      ldr r6, [sp, #0x44]
0086cf30  10 61 84 e5                                      str r6, [r4, #0x110]
0086cf34  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
0086cf38  9c 20 84 e5                                      str r2, [r4, #0x9c]
0086cf3c  a0 20 84 e5                                      str r2, [r4, #0xa0]
0086cf40  a4 20 84 e5                                      str r2, [r4, #0xa4]
0086cf44  a8 20 84 e5                                      str r2, [r4, #0xa8]
0086cf48  ac 20 84 e5                                      str r2, [r4, #0xac]
0086cf4c  b0 20 84 e5                                      str r2, [r4, #0xb0]
0086cf50  b4 20 84 e5                                      str r2, [r4, #0xb4]
0086cf54  b8 20 84 e5                                      str r2, [r4, #0xb8]
0086cf58  bc 20 84 e5                                      str r2, [r4, #0xbc]
0086cf5c  d8 20 84 e5                                      str r2, [r4, #0xd8]
0086cf60  18 61 84 e5                                      str r6, [r4, #0x118]
0086cf64  24 11 84 e5                                      str r1, [r4, #0x124]
0086cf68  99 50 c4 e5                                      strb r5, [r4, #0x99]
0086cf6c  c0 50 84 e5                                      str r5, [r4, #0xc0]
0086cf70  c4 e0 84 e5                                      str lr, [r4, #0xc4]
0086cf74  cc 10 84 e5                                      str r1, [r4, #0xcc]
0086cf78  d0 c0 84 e5                                      str ip, [r4, #0xd0]
0086cf7c  ec 50 84 e5                                      str r5, [r4, #0xec]
0086cf80  f0 50 84 e5                                      str r5, [r4, #0xf0]
0086cf84  f4 50 84 e5                                      str r5, [r4, #0xf4]
0086cf88  f8 50 84 e5                                      str r5, [r4, #0xf8]
0086cf8c  fc 50 84 e5                                      str r5, [r4, #0xfc]
0086cf90  0c 51 84 e5                                      str r5, [r4, #0x10c]
0086cf94  14 71 84 e5                                      str r7, [r4, #0x114]
0086cf98  20 21 84 e5                                      str r2, [r4, #0x120]
0086cf9c  28 21 84 e5                                      str r2, [r4, #0x128]
0086cfa0  2c 21 84 e5                                      str r2, [r4, #0x12c]
0086cfa4  00 20 e0 e3                                      mvn r2, #0
0086cfa8  30 01 c4 e5                                      strb r0, [r4, #0x130]
0086cfac  34 21 84 e5                                      str r2, [r4, #0x134]
0086cfb0  1c 51 c4 e5                                      strb r5, [r4, #0x11c]
0086cfb4  1d 51 c4 e5                                      strb r5, [r4, #0x11d]
0086cfb8  38 51 84 e5                                      str r5, [r4, #0x138]
0086cfbc  3c 51 84 e5                                      str r5, [r4, #0x13c]
0086cfc0  04 20 a0 e1                                      mov r2, r4
0086cfc4  05 00 a0 e1                                      mov r0, r5
0086cfc8  01 30 83 e2                                      add r3, r3, #1
0086cfcc  0b 00 53 e3                                      cmp r3, #0xb
0086cfd0  e0 00 c2 e5                                      strb r0, [r2, #0xe0]
0086cfd4  00 10 a0 e3                                      mov r1, #0
0086cfd8  01 20 82 e2                                      add r2, r2, #1
0086cfdc  f9 ff ff 1a                                      bne #0x86cfc8
0086cfe0  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086cfe4  04 11 84 e5                                      str r1, [r4, #0x104]
0086cfe8  00 11 84 e5                                      str r1, [r4, #0x100]
0086cfec  01 00 57 e1                                      cmp r7, r1
0086cff0  01 00 53 11                                      cmpne r3, r1
0086cff4  01 30 a0 03                                      moveq r3, #1
0086cff8  1c 31 c4 05                                      strbeq r3, [r4, #0x11c]
0086cffc  11 00 00 1a                                      bne #0x86d048
0086d000  18 31 94 e5                                      ldr r3, [r4, #0x118]
0086d004  50 20 93 e5                                      ldr r2, [r3, #0x50]
0086d008  00 00 52 e3                                      cmp r2, #0
0086d00c  3c 30 93 05                                      ldreq r3, [r3, #0x3c]
0086d010  00 30 a0 13                                      movne r3, #0
0086d014  03 00 a0 e1                                      mov r0, r3
0086d018  00 30 93 e5                                      ldr r3, [r3]
0086d01c  0f e0 a0 e1                                      mov lr, pc
0086d020  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086d024  00 30 a0 e3                                      mov r3, #0
0086d028  01 20 a0 e3                                      mov r2, #1
0086d02c  40 01 84 e5                                      str r0, [r4, #0x140]
0086d030  45 21 c4 e5                                      strb r2, [r4, #0x145]
0086d034  46 31 c4 e5                                      strb r3, [r4, #0x146]
0086d038  44 31 c4 e5                                      strb r3, [r4, #0x144]
0086d03c  04 00 a0 e1                                      mov r0, r4
0086d040  20 d0 8d e2                                      add sp, sp, #0x20
0086d044  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0086d048  14 21 94 e5                                      ldr r2, [r4, #0x114]
0086d04c  03 00 a0 e1                                      mov r0, r3
0086d050  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0086d054  10 e0 92 e5                                      ldr lr, [r2, #0x10]
0086d058  04 c0 92 e5                                      ldr ip, [r2, #4]
0086d05c  c1 11 a0 e1                                      asr r1, r1, #3
0086d060  9e 01 01 e0                                      mul r1, lr, r1
0086d064  9c 01 01 e0                                      mul r1, ip, r1
0086d068  24 10 84 e5                                      str r1, [r4, #0x24]
0086d06c  08 10 92 e5                                      ldr r1, [r2, #8]
0086d070  04 c0 92 e5                                      ldr ip, [r2, #4]
0086d074  0c 20 92 e5                                      ldr r2, [r2, #0xc]
0086d078  9c 01 01 e0                                      mul r1, ip, r1
0086d07c  c2 21 a0 e1                                      asr r2, r2, #3
0086d080  92 01 02 e0                                      mul r2, r2, r1
0086d084  20 20 84 e5                                      str r2, [r4, #0x20]
0086d088  00 30 93 e5                                      ldr r3, [r3]
0086d08c  0f e0 a0 e1                                      mov lr, pc
0086d090  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086d094  00 00 50 e3                                      cmp r0, #0
0086d098  1b 00 00 1a                                      bne #0x86d10c
0086d09c  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d0a0  01 60 a0 e3                                      mov r6, #1
0086d0a4  04 61 84 e5                                      str r6, [r4, #0x104]
0086d0a8  03 00 a0 e1                                      mov r0, r3
0086d0ac  00 30 93 e5                                      ldr r3, [r3]
0086d0b0  0f e0 a0 e1                                      mov lr, pc
0086d0b4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086d0b8  00 00 50 e3                                      cmp r0, #0
0086d0bc  2d 00 00 0a                                      beq #0x86d178
0086d0c0  06 10 a0 e1                                      mov r1, r6
0086d0c4  0d 00 a0 e1                                      mov r0, sp
0086d0c8  34 e7 ff eb                                      bl #0x866da0
0086d0cc  0d 10 a0 e1                                      mov r1, sp
0086d0d0  f4 00 84 e2                                      add r0, r4, #0xf4
0086d0d4  76 f4 ff eb                                      bl #0x86a2b4
0086d0d8  00 00 9d e5                                      ldr r0, [sp]
0086d0dc  0d 50 a0 e1                                      mov r5, sp
0086d0e0  00 00 50 e3                                      cmp r0, #0
0086d0e4  21 00 00 0a                                      beq #0x86d170
0086d0e8  d5 8c ea eb                                      bl #0x310444
0086d0ec  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d0f0  00 00 53 e3                                      cmp r3, #0
0086d0f4  01 00 00 1a                                      bne #0x86d100
0086d0f8  01 30 a0 e3                                      mov r3, #1
0086d0fc  1c 31 c4 e5                                      strb r3, [r4, #0x11c]
0086d100  04 00 a0 e1                                      mov r0, r4
0086d104  6b e0 ff eb                                      bl #0x8652b8
0086d108  bc ff ff ea                                      b #0x86d000
0086d10c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d110  03 00 a0 e1                                      mov r0, r3
0086d114  00 30 93 e5                                      ldr r3, [r3]
0086d118  0f e0 a0 e1                                      mov lr, pc
0086d11c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0086d120  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d124  00 60 a0 e1                                      mov r6, r0
0086d128  03 00 a0 e1                                      mov r0, r3
0086d12c  00 30 93 e5                                      ldr r3, [r3]
0086d130  0f e0 a0 e1                                      mov lr, pc
0086d134  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086d138  00 50 50 e2                                      subs r5, r0, #0
0086d13c  19 00 00 0a                                      beq #0x86d1a8
0086d140  01 30 a0 e3                                      mov r3, #1
0086d144  0c 50 8d e2                                      add r5, sp, #0xc
0086d148  03 10 a0 e1                                      mov r1, r3
0086d14c  04 31 84 e5                                      str r3, [r4, #0x104]
0086d150  05 00 a0 e1                                      mov r0, r5
0086d154  11 e7 ff eb                                      bl #0x866da0
0086d158  05 10 a0 e1                                      mov r1, r5
0086d15c  f4 00 84 e2                                      add r0, r4, #0xf4
0086d160  53 f4 ff eb                                      bl #0x86a2b4
0086d164  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0086d168  00 00 50 e3                                      cmp r0, #0
0086d16c  dd ff ff 1a                                      bne #0x86d0e8
0086d170  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d174  dd ff ff ea                                      b #0x86d0f0
0086d178  08 01 94 e5                                      ldr r0, [r4, #0x108]
0086d17c  dd 8c ea eb                                      bl #0x3104f8
0086d180  20 10 8d e2                                      add r1, sp, #0x20
0086d184  08 00 21 e5                                      str r0, [r1, #-8]!
0086d188  f4 00 84 e2                                      add r0, r4, #0xf4
0086d18c  06 fd ff eb                                      bl #0x86c5ac
0086d190  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0086d194  00 30 93 e5                                      ldr r3, [r3]
0086d198  00 00 53 e3                                      cmp r3, #0
0086d19c  f3 ff ff 1a                                      bne #0x86d170
0086d1a0  04 31 84 e5                                      str r3, [r4, #0x104]
0086d1a4  d3 ff ff ea                                      b #0x86d0f8
0086d1a8  f4 70 84 e2                                      add r7, r4, #0xf4
0086d1ac  07 00 a0 e1                                      mov r0, r7
0086d1b0  01 10 86 e2                                      add r1, r6, #1
0086d1b4  e9 e5 ff eb                                      bl #0x866960
0086d1b8  00 00 56 e3                                      cmp r6, #0
0086d1bc  1c 80 8d a2                                      addge r8, sp, #0x1c
0086d1c0  0e 00 00 aa                                      bge #0x86d200
0086d1c4  e9 ff ff ea                                      b #0x86d170
0086d1c8  00 00 81 e5                                      str r0, [r1]
0086d1cc  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
0086d1d0  04 30 83 e2                                      add r3, r3, #4
0086d1d4  f8 30 84 e5                                      str r3, [r4, #0xf8]
0086d1d8  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0086d1dc  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0086d1e0  01 50 85 e2                                      add r5, r5, #1
0086d1e4  00 00 53 e3                                      cmp r3, #0
0086d1e8  e0 ff ff 0a                                      beq #0x86d170
0086d1ec  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d1f0  05 00 56 e1                                      cmp r6, r5
0086d1f4  01 30 83 e2                                      add r3, r3, #1
0086d1f8  04 31 84 e5                                      str r3, [r4, #0x104]
0086d1fc  bb ff ff ba                                      blt #0x86d0f0
0086d200  08 01 94 e5                                      ldr r0, [r4, #0x108]
0086d204  bb 8c ea eb                                      bl #0x3104f8
0086d208  f8 10 94 e5                                      ldr r1, [r4, #0xf8]
0086d20c  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
0086d210  1c 00 8d e5                                      str r0, [sp, #0x1c]
0086d214  03 00 51 e1                                      cmp r1, r3
0086d218  ea ff ff 1a                                      bne #0x86d1c8
0086d21c  07 00 a0 e1                                      mov r0, r7
0086d220  08 20 a0 e1                                      mov r2, r8
0086d224  bc fc ff eb                                      bl #0x86c51c
0086d228  ea ff ff ea                                      b #0x86d1d8
; mapping-symbol data/literal pool
0086d22c  64 7c 12 00 34 47 00 00 fc 2c 00 00              .byte 0x64, 0x7c, 0x12, 0x00, 0x34, 0x47, 0x00, 0x00, 0xfc, 0x2c, 0x00, 0x00

; FUNCTION 0x0086d238, declared_size=896, range_size=896, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj9LoadAsyncEv
; demangled: vox::EmitterObj::LoadAsync()
; decoder-mode: arm
0086d238  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0086d23c  18 31 90 e5                                      ldr r3, [r0, #0x118]
0086d240  24 d0 4d e2                                      sub sp, sp, #0x24
0086d244  00 40 a0 e1                                      mov r4, r0
0086d248  00 00 53 e3                                      cmp r3, #0
0086d24c  05 00 00 0a                                      beq #0x86d268
0086d250  10 21 90 e5                                      ldr r2, [r0, #0x110]
0086d254  00 00 52 e3                                      cmp r2, #0
0086d258  02 00 00 0a                                      beq #0x86d268
0086d25c  50 20 93 e5                                      ldr r2, [r3, #0x50]
0086d260  00 00 52 e3                                      cmp r2, #0
0086d264  06 00 00 0a                                      beq #0x86d284
0086d268  01 30 a0 e3                                      mov r3, #1
0086d26c  1c 31 c4 e5                                      strb r3, [r4, #0x11c]
0086d270  00 30 e0 e3                                      mvn r3, #0
0086d274  90 30 84 e5                                      str r3, [r4, #0x90]
0086d278  00 00 a0 e3                                      mov r0, #0
0086d27c  24 d0 8d e2                                      add sp, sp, #0x24
0086d280  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0086d284  3c 60 93 e5                                      ldr r6, [r3, #0x3c]
0086d288  38 50 93 e5                                      ldr r5, [r3, #0x38]
0086d28c  00 00 55 e3                                      cmp r5, #0
0086d290  00 00 56 13                                      cmpne r6, #0
0086d294  f3 ff ff 0a                                      beq #0x86d268
0086d298  00 30 95 e5                                      ldr r3, [r5]
0086d29c  05 00 a0 e1                                      mov r0, r5
0086d2a0  0f e0 a0 e1                                      mov lr, pc
0086d2a4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086d2a8  00 a0 50 e2                                      subs sl, r0, #0
0086d2ac  8d 00 00 0a                                      beq #0x86d4e8
0086d2b0  00 30 96 e5                                      ldr r3, [r6]
0086d2b4  06 00 a0 e1                                      mov r0, r6
0086d2b8  0a 10 a0 e1                                      mov r1, sl
0086d2bc  0f e0 a0 e1                                      mov lr, pc
0086d2c0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086d2c4  00 70 50 e2                                      subs r7, r0, #0
0086d2c8  93 00 00 0a                                      beq #0x86d51c
0086d2cc  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d2d0  14 71 84 e5                                      str r7, [r4, #0x114]
0086d2d4  03 00 a0 e1                                      mov r0, r3
0086d2d8  00 30 93 e5                                      ldr r3, [r3]
0086d2dc  0f e0 a0 e1                                      mov lr, pc
0086d2e0  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086d2e4  00 00 50 e3                                      cmp r0, #0
0086d2e8  51 00 00 1a                                      bne #0x86d434
0086d2ec  14 71 94 e5                                      ldr r7, [r4, #0x114]
0086d2f0  d3 3d 04 e3                                      movw r3, #0x4dd3
0086d2f4  62 30 41 e3                                      movt r3, #0x1062
0086d2f8  07 00 97 e9                                      ldmib r7, {r0, r1, r2}
0086d2fc  90 02 02 e0                                      mul r2, r0, r2
0086d300  96 00 a0 e3                                      mov r0, #0x96
0086d304  90 01 01 e0                                      mul r1, r0, r1
0086d308  00 00 52 e3                                      cmp r2, #0
0086d30c  07 00 82 e2                                      add r0, r2, #7
0086d310  00 20 a0 b1                                      movlt r2, r0
0086d314  c2 21 a0 e1                                      asr r2, r2, #3
0086d318  92 01 02 e0                                      mul r2, r2, r1
0086d31c  93 12 c8 e0                                      smull r1, r8, r3, r2
0086d320  c2 2f a0 e1                                      asr r2, r2, #0x1f
0086d324  48 83 62 e0                                      rsb r8, r2, r8, asr #6
0086d328  08 81 84 e5                                      str r8, [r4, #0x108]
0086d32c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
0086d330  04 10 97 e5                                      ldr r1, [r7, #4]
0086d334  08 00 a0 e1                                      mov r0, r8
0086d338  91 03 01 e0                                      mul r1, r1, r3
0086d33c  07 30 81 e2                                      add r3, r1, #7
0086d340  00 00 51 e3                                      cmp r1, #0
0086d344  03 10 a0 b1                                      movlt r1, r3
0086d348  c1 11 a0 e1                                      asr r1, r1, #3
0086d34c  6c 85 ea eb                                      bl #0x30e904
0086d350  08 10 61 e0                                      rsb r1, r1, r8
0086d354  08 11 84 e5                                      str r1, [r4, #0x108]
0086d358  00 00 51 e3                                      cmp r1, #0
0086d35c  67 00 00 da                                      ble #0x86d500
0086d360  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d364  03 00 a0 e1                                      mov r0, r3
0086d368  00 30 93 e5                                      ldr r3, [r3]
0086d36c  0f e0 a0 e1                                      mov lr, pc
0086d370  48 f0 93 e5                                      ldr pc, [r3, #0x48]
0086d374  00 00 50 e3                                      cmp r0, #0
0086d378  3e 00 00 0a                                      beq #0x86d478
0086d37c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d380  03 00 a0 e1                                      mov r0, r3
0086d384  00 30 93 e5                                      ldr r3, [r3]
0086d388  0f e0 a0 e1                                      mov lr, pc
0086d38c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
0086d390  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d394  00 60 a0 e1                                      mov r6, r0
0086d398  03 00 a0 e1                                      mov r0, r3
0086d39c  00 30 93 e5                                      ldr r3, [r3]
0086d3a0  0f e0 a0 e1                                      mov lr, pc
0086d3a4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086d3a8  00 50 50 e2                                      subs r5, r0, #0
0086d3ac  71 00 00 1a                                      bne #0x86d578
0086d3b0  f4 70 84 e2                                      add r7, r4, #0xf4
0086d3b4  07 00 a0 e1                                      mov r0, r7
0086d3b8  01 10 86 e2                                      add r1, r6, #1
0086d3bc  67 e5 ff eb                                      bl #0x866960
0086d3c0  00 00 56 e3                                      cmp r6, #0
0086d3c4  1c 80 8d a2                                      addge r8, sp, #0x1c
0086d3c8  0e 00 00 aa                                      bge #0x86d408
0086d3cc  67 00 00 ea                                      b #0x86d570
0086d3d0  00 00 81 e5                                      str r0, [r1]
0086d3d4  f8 30 94 e5                                      ldr r3, [r4, #0xf8]
0086d3d8  04 30 83 e2                                      add r3, r3, #4
0086d3dc  f8 30 84 e5                                      str r3, [r4, #0xf8]
0086d3e0  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0086d3e4  05 31 93 e7                                      ldr r3, [r3, r5, lsl #2]
0086d3e8  01 50 85 e2                                      add r5, r5, #1
0086d3ec  00 00 53 e3                                      cmp r3, #0
0086d3f0  5e 00 00 0a                                      beq #0x86d570
0086d3f4  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d3f8  05 00 56 e1                                      cmp r6, r5
0086d3fc  01 30 83 e2                                      add r3, r3, #1
0086d400  04 31 84 e5                                      str r3, [r4, #0x104]
0086d404  30 00 00 ba                                      blt #0x86d4cc
0086d408  08 01 94 e5                                      ldr r0, [r4, #0x108]
0086d40c  39 8c ea eb                                      bl #0x3104f8
0086d410  f8 10 94 e5                                      ldr r1, [r4, #0xf8]
0086d414  fc 30 94 e5                                      ldr r3, [r4, #0xfc]
0086d418  1c 00 8d e5                                      str r0, [sp, #0x1c]
0086d41c  03 00 51 e1                                      cmp r1, r3
0086d420  ea ff ff 1a                                      bne #0x86d3d0
0086d424  07 00 a0 e1                                      mov r0, r7
0086d428  08 20 a0 e1                                      mov r2, r8
0086d42c  3a fc ff eb                                      bl #0x86c51c
0086d430  ea ff ff ea                                      b #0x86d3e0
0086d434  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d438  03 00 a0 e1                                      mov r0, r3
0086d43c  00 30 93 e5                                      ldr r3, [r3]
0086d440  0f e0 a0 e1                                      mov lr, pc
0086d444  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086d448  00 00 50 e3                                      cmp r0, #0
0086d44c  a6 ff ff 0a                                      beq #0x86d2ec
0086d450  14 71 94 e5                                      ldr r7, [r4, #0x114]
0086d454  10 30 97 e5                                      ldr r3, [r7, #0x10]
0086d458  0c 10 97 e5                                      ldr r1, [r7, #0xc]
0086d45c  91 03 01 e0                                      mul r1, r1, r3
0086d460  07 30 81 e2                                      add r3, r1, #7
0086d464  00 00 51 e3                                      cmp r1, #0
0086d468  03 10 a0 b1                                      movlt r1, r3
0086d46c  c1 11 a0 e1                                      asr r1, r1, #3
0086d470  08 11 84 e5                                      str r1, [r4, #0x108]
0086d474  b7 ff ff ea                                      b #0x86d358
0086d478  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d47c  01 60 a0 e3                                      mov r6, #1
0086d480  04 61 84 e5                                      str r6, [r4, #0x104]
0086d484  03 00 a0 e1                                      mov r0, r3
0086d488  00 30 93 e5                                      ldr r3, [r3]
0086d48c  0f e0 a0 e1                                      mov lr, pc
0086d490  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086d494  00 00 50 e3                                      cmp r0, #0
0086d498  2a 00 00 0a                                      beq #0x86d548
0086d49c  06 10 a0 e1                                      mov r1, r6
0086d4a0  0d 00 a0 e1                                      mov r0, sp
0086d4a4  3d e6 ff eb                                      bl #0x866da0
0086d4a8  0d 10 a0 e1                                      mov r1, sp
0086d4ac  f4 00 84 e2                                      add r0, r4, #0xf4
0086d4b0  7f f3 ff eb                                      bl #0x86a2b4
0086d4b4  00 00 9d e5                                      ldr r0, [sp]
0086d4b8  0d 50 a0 e1                                      mov r5, sp
0086d4bc  00 00 50 e3                                      cmp r0, #0
0086d4c0  2a 00 00 0a                                      beq #0x86d570
0086d4c4  de 8b ea eb                                      bl #0x310444
0086d4c8  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d4cc  00 00 53 e3                                      cmp r3, #0
0086d4d0  01 00 a0 13                                      movne r0, #1
0086d4d4  68 ff ff 1a                                      bne #0x86d27c
0086d4d8  01 30 a0 e3                                      mov r3, #1
0086d4dc  1c 31 c4 e5                                      strb r3, [r4, #0x11c]
0086d4e0  00 00 a0 e3                                      mov r0, #0
0086d4e4  64 ff ff ea                                      b #0x86d27c
0086d4e8  01 30 a0 e3                                      mov r3, #1
0086d4ec  1c 31 c4 e5                                      strb r3, [r4, #0x11c]
0086d4f0  00 30 e0 e3                                      mvn r3, #0
0086d4f4  90 30 84 e5                                      str r3, [r4, #0x90]
0086d4f8  0a 00 a0 e1                                      mov r0, sl
0086d4fc  5e ff ff ea                                      b #0x86d27c
0086d500  07 10 a0 e1                                      mov r1, r7
0086d504  06 00 a0 e1                                      mov r0, r6
0086d508  00 70 a0 e3                                      mov r7, #0
0086d50c  00 30 96 e5                                      ldr r3, [r6]
0086d510  0f e0 a0 e1                                      mov lr, pc
0086d514  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086d518  14 71 84 e5                                      str r7, [r4, #0x114]
0086d51c  05 00 a0 e1                                      mov r0, r5
0086d520  00 30 95 e5                                      ldr r3, [r5]
0086d524  0a 10 a0 e1                                      mov r1, sl
0086d528  0f e0 a0 e1                                      mov lr, pc
0086d52c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086d530  01 30 a0 e3                                      mov r3, #1
0086d534  1c 31 c4 e5                                      strb r3, [r4, #0x11c]
0086d538  00 30 e0 e3                                      mvn r3, #0
0086d53c  90 30 84 e5                                      str r3, [r4, #0x90]
0086d540  07 00 a0 e1                                      mov r0, r7
0086d544  4c ff ff ea                                      b #0x86d27c
0086d548  08 01 94 e5                                      ldr r0, [r4, #0x108]
0086d54c  e9 8b ea eb                                      bl #0x3104f8
0086d550  20 10 8d e2                                      add r1, sp, #0x20
0086d554  08 00 21 e5                                      str r0, [r1, #-8]!
0086d558  f4 00 84 e2                                      add r0, r4, #0xf4
0086d55c  12 fc ff eb                                      bl #0x86c5ac
0086d560  f4 30 94 e5                                      ldr r3, [r4, #0xf4]
0086d564  00 30 93 e5                                      ldr r3, [r3]
0086d568  00 00 53 e3                                      cmp r3, #0
0086d56c  0f 00 00 0a                                      beq #0x86d5b0
0086d570  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d574  d4 ff ff ea                                      b #0x86d4cc
0086d578  01 30 a0 e3                                      mov r3, #1
0086d57c  0c 50 8d e2                                      add r5, sp, #0xc
0086d580  03 10 a0 e1                                      mov r1, r3
0086d584  04 31 84 e5                                      str r3, [r4, #0x104]
0086d588  05 00 a0 e1                                      mov r0, r5
0086d58c  03 e6 ff eb                                      bl #0x866da0
0086d590  05 10 a0 e1                                      mov r1, r5
0086d594  f4 00 84 e2                                      add r0, r4, #0xf4
0086d598  45 f3 ff eb                                      bl #0x86a2b4
0086d59c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0086d5a0  00 00 50 e3                                      cmp r0, #0
0086d5a4  c6 ff ff 1a                                      bne #0x86d4c4
0086d5a8  04 31 94 e5                                      ldr r3, [r4, #0x104]
0086d5ac  c6 ff ff ea                                      b #0x86d4cc
0086d5b0  04 31 84 e5                                      str r3, [r4, #0x104]
0086d5b4  c7 ff ff ea                                      b #0x86d4d8

; FUNCTION 0x0086d5b8, declared_size=1416, range_size=1416, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj6UpdateEf
; demangled: vox::EmitterObj::Update(float)
; decoder-mode: arm
0086d5b8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086d5bc  18 70 80 e2                                      add r7, r0, #0x18
0086d5c0  00 40 a0 e1                                      mov r4, r0
0086d5c4  0c d0 4d e2                                      sub sp, sp, #0xc
0086d5c8  07 00 a0 e1                                      mov r0, r7
0086d5cc  01 50 a0 e1                                      mov r5, r1
0086d5d0  a9 97 00 eb                                      bl #0x89347c
0086d5d4  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
0086d5d8  90 90 94 e5                                      ldr sb, [r4, #0x90]
0086d5dc  00 00 53 e3                                      cmp r3, #0
0086d5e0  07 00 00 0a                                      beq #0x86d604
0086d5e4  01 00 79 e3                                      cmn sb, #1
0086d5e8  05 00 00 0a                                      beq #0x86d604
0086d5ec  04 00 a0 e1                                      mov r0, r4
0086d5f0  10 ff ff eb                                      bl #0x86d238
0086d5f4  00 00 50 e3                                      cmp r0, #0
0086d5f8  00 30 a0 13                                      movne r3, #0
0086d5fc  1c 30 c4 15                                      strbne r3, [r4, #0x1c]
0086d600  c5 00 00 0a                                      beq #0x86d91c
0086d604  99 30 d4 e5                                      ldrb r3, [r4, #0x99]
0086d608  00 00 53 e3                                      cmp r3, #0
0086d60c  d9 00 00 1a                                      bne #0x86d978
0086d610  8d 10 d4 e5                                      ldrb r1, [r4, #0x8d]
0086d614  8c 30 d4 e5                                      ldrb r3, [r4, #0x8c]
0086d618  01 00 53 e1                                      cmp r3, r1
0086d61c  06 00 00 0a                                      beq #0x86d63c
0086d620  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d624  03 00 a0 e1                                      mov r0, r3
0086d628  00 30 93 e5                                      ldr r3, [r3]
0086d62c  0f e0 a0 e1                                      mov lr, pc
0086d630  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0086d634  8d 30 d4 e5                                      ldrb r3, [r4, #0x8d]
0086d638  8c 30 c4 e5                                      strb r3, [r4, #0x8c]
0086d63c  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d640  04 30 93 e5                                      ldr r3, [r3, #4]
0086d644  01 00 53 e3                                      cmp r3, #1
0086d648  39 01 00 0a                                      beq #0x86db34
0086d64c  04 00 a0 e1                                      mov r0, r4
0086d650  05 10 a0 e1                                      mov r1, r5
0086d654  a2 d8 ff eb                                      bl #0x8638e4
0086d658  50 60 94 e5                                      ldr r6, [r4, #0x50]
0086d65c  54 10 94 e5                                      ldr r1, [r4, #0x54]
0086d660  06 00 a0 e1                                      mov r0, r6
0086d664  28 84 ea eb                                      bl #0x30e70c
0086d668  00 00 50 e3                                      cmp r0, #0
0086d66c  01 30 a0 03                                      moveq r3, #1
0086d670  58 30 c4 05                                      strbeq r3, [r4, #0x58]
0086d674  04 00 00 0a                                      beq #0x86d68c
0086d678  06 10 a0 e1                                      mov r1, r6
0086d67c  05 00 a0 e1                                      mov r0, r5
0086d680  47 85 ea eb                                      bl #0x30eba4
0086d684  50 00 84 e5                                      str r0, [r4, #0x50]
0086d688  00 60 a0 e1                                      mov r6, r0
0086d68c  64 a0 94 e5                                      ldr sl, [r4, #0x64]
0086d690  68 10 94 e5                                      ldr r1, [r4, #0x68]
0086d694  0a 00 a0 e1                                      mov r0, sl
0086d698  1b 84 ea eb                                      bl #0x30e70c
0086d69c  00 00 50 e3                                      cmp r0, #0
0086d6a0  01 30 a0 03                                      moveq r3, #1
0086d6a4  6c 30 c4 05                                      strbeq r3, [r4, #0x6c]
0086d6a8  04 00 00 0a                                      beq #0x86d6c0
0086d6ac  0a 10 a0 e1                                      mov r1, sl
0086d6b0  05 00 a0 e1                                      mov r0, r5
0086d6b4  3a 85 ea eb                                      bl #0x30eba4
0086d6b8  00 a0 a0 e1                                      mov sl, r0
0086d6bc  64 00 84 e5                                      str r0, [r4, #0x64]
0086d6c0  68 80 94 e5                                      ldr r8, [r4, #0x68]
0086d6c4  0a 10 a0 e1                                      mov r1, sl
0086d6c8  44 b0 94 e5                                      ldr fp, [r4, #0x44]
0086d6cc  08 00 a0 e1                                      mov r0, r8
0086d6d0  08 83 ea eb                                      bl #0x30e2f8
0086d6d4  00 00 50 e3                                      cmp r0, #0
0086d6d8  60 10 94 05                                      ldreq r1, [r4, #0x60]
0086d6dc  13 00 00 0a                                      beq #0x86d730
0086d6e0  00 10 a0 e3                                      mov r1, #0
0086d6e4  08 00 a0 e1                                      mov r0, r8
0086d6e8  02 83 ea eb                                      bl #0x30e2f8
0086d6ec  00 00 50 e3                                      cmp r0, #0
0086d6f0  5c 10 94 05                                      ldreq r1, [r4, #0x5c]
0086d6f4  0d 00 00 0a                                      beq #0x86d730
0086d6f8  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0086d6fc  60 00 94 e5                                      ldr r0, [r4, #0x60]
0086d700  03 10 a0 e1                                      mov r1, r3
0086d704  04 30 8d e5                                      str r3, [sp, #4]
0086d708  27 83 ea eb                                      bl #0x30e3ac
0086d70c  0a 10 a0 e1                                      mov r1, sl
0086d710  95 85 ea eb                                      bl #0x30ed6c
0086d714  08 10 a0 e1                                      mov r1, r8
0086d718  5d 85 ea eb                                      bl #0x30ec94
0086d71c  04 30 9d e5                                      ldr r3, [sp, #4]
0086d720  00 10 a0 e1                                      mov r1, r0
0086d724  03 00 a0 e1                                      mov r0, r3
0086d728  1d 85 ea eb                                      bl #0x30eba4
0086d72c  00 10 a0 e1                                      mov r1, r0
0086d730  0b 00 a0 e1                                      mov r0, fp
0086d734  8c 85 ea eb                                      bl #0x30ed6c
0086d738  54 80 94 e5                                      ldr r8, [r4, #0x54]
0086d73c  00 a0 a0 e1                                      mov sl, r0
0086d740  06 00 a0 e1                                      mov r0, r6
0086d744  08 10 a0 e1                                      mov r1, r8
0086d748  ef 83 ea eb                                      bl #0x30e70c
0086d74c  00 00 50 e3                                      cmp r0, #0
0086d750  4c 10 94 05                                      ldreq r1, [r4, #0x4c]
0086d754  12 00 00 0a                                      beq #0x86d7a4
0086d758  00 10 a0 e3                                      mov r1, #0
0086d75c  08 00 a0 e1                                      mov r0, r8
0086d760  e4 82 ea eb                                      bl #0x30e2f8
0086d764  00 00 50 e3                                      cmp r0, #0
0086d768  48 10 94 05                                      ldreq r1, [r4, #0x48]
0086d76c  0c 00 00 0a                                      beq #0x86d7a4
0086d770  48 b0 94 e5                                      ldr fp, [r4, #0x48]
0086d774  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
0086d778  0b 10 a0 e1                                      mov r1, fp
0086d77c  0a 83 ea eb                                      bl #0x30e3ac
0086d780  00 10 a0 e1                                      mov r1, r0
0086d784  06 00 a0 e1                                      mov r0, r6
0086d788  77 85 ea eb                                      bl #0x30ed6c
0086d78c  08 10 a0 e1                                      mov r1, r8
0086d790  3f 85 ea eb                                      bl #0x30ec94
0086d794  00 10 a0 e1                                      mov r1, r0
0086d798  0b 00 a0 e1                                      mov r0, fp
0086d79c  00 85 ea eb                                      bl #0x30eba4
0086d7a0  00 10 a0 e1                                      mov r1, r0
0086d7a4  0a 00 a0 e1                                      mov r0, sl
0086d7a8  6f 85 ea eb                                      bl #0x30ed6c
0086d7ac  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d7b0  3c 00 84 e5                                      str r0, [r4, #0x3c]
0086d7b4  03 00 a0 e1                                      mov r0, r3
0086d7b8  00 30 93 e5                                      ldr r3, [r3]
0086d7bc  0f e0 a0 e1                                      mov lr, pc
0086d7c0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0086d7c4  3c 60 94 e5                                      ldr r6, [r4, #0x3c]
0086d7c8  38 00 84 e5                                      str r0, [r4, #0x38]
0086d7cc  06 10 a0 e1                                      mov r1, r6
0086d7d0  ed 81 ea eb                                      bl #0x30df8c
0086d7d4  00 00 50 e3                                      cmp r0, #0
0086d7d8  87 00 00 0a                                      beq #0x86d9fc
0086d7dc  80 60 94 e5                                      ldr r6, [r4, #0x80]
0086d7e0  84 10 94 e5                                      ldr r1, [r4, #0x84]
0086d7e4  06 00 a0 e1                                      mov r0, r6
0086d7e8  c7 83 ea eb                                      bl #0x30e70c
0086d7ec  00 00 50 e3                                      cmp r0, #0
0086d7f0  01 30 a0 03                                      moveq r3, #1
0086d7f4  88 30 c4 05                                      strbeq r3, [r4, #0x88]
0086d7f8  04 00 00 0a                                      beq #0x86d810
0086d7fc  06 10 a0 e1                                      mov r1, r6
0086d800  05 00 a0 e1                                      mov r0, r5
0086d804  e6 84 ea eb                                      bl #0x30eba4
0086d808  00 60 a0 e1                                      mov r6, r0
0086d80c  80 00 84 e5                                      str r0, [r4, #0x80]
0086d810  84 80 94 e5                                      ldr r8, [r4, #0x84]
0086d814  06 00 a0 e1                                      mov r0, r6
0086d818  08 10 a0 e1                                      mov r1, r8
0086d81c  ba 83 ea eb                                      bl #0x30e70c
0086d820  00 00 50 e3                                      cmp r0, #0
0086d824  7c 00 94 05                                      ldreq r0, [r4, #0x7c]
0086d828  3f 00 00 1a                                      bne #0x86d92c
0086d82c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d830  74 00 84 e5                                      str r0, [r4, #0x74]
0086d834  03 00 a0 e1                                      mov r0, r3
0086d838  00 30 93 e5                                      ldr r3, [r3]
0086d83c  0f e0 a0 e1                                      mov lr, pc
0086d840  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0086d844  74 60 94 e5                                      ldr r6, [r4, #0x74]
0086d848  70 00 84 e5                                      str r0, [r4, #0x70]
0086d84c  06 10 a0 e1                                      mov r1, r6
0086d850  cd 81 ea eb                                      bl #0x30df8c
0086d854  00 00 50 e3                                      cmp r0, #0
0086d858  5e 00 00 0a                                      beq #0x86d9d8
0086d85c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d860  03 00 a0 e1                                      mov r0, r3
0086d864  00 30 93 e5                                      ldr r3, [r3]
0086d868  0f e0 a0 e1                                      mov lr, pc
0086d86c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086d870  03 00 50 e3                                      cmp r0, #3
0086d874  00 60 a0 e1                                      mov r6, r0
0086d878  90 00 84 e5                                      str r0, [r4, #0x90]
0086d87c  67 00 00 0a                                      beq #0x86da20
0086d880  01 00 76 e3                                      cmn r6, #1
0086d884  79 00 00 0a                                      beq #0x86da70
0086d888  40 31 94 e5                                      ldr r3, [r4, #0x140]
0086d88c  04 00 53 e3                                      cmp r3, #4
0086d890  72 00 00 0a                                      beq #0x86da60
0086d894  05 10 a0 e1                                      mov r1, r5
0086d898  04 00 a0 e1                                      mov r0, r4
0086d89c  61 d6 ff eb                                      bl #0x863228
0086d8a0  90 30 94 e5                                      ldr r3, [r4, #0x90]
0086d8a4  94 20 94 e5                                      ldr r2, [r4, #0x94]
0086d8a8  03 00 a0 e1                                      mov r0, r3
0086d8ac  03 00 52 e1                                      cmp r2, r3
0086d8b0  13 00 00 0a                                      beq #0x86d904
0086d8b4  03 00 52 e3                                      cmp r2, #3
0086d8b8  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
0086d8bc  89 00 00 ea                                      b #0x86dae8
0086d8c0  6d 00 00 ea                                      b #0x86da7c
0086d8c4  01 00 00 ea                                      b #0x86d8d0
0086d8c8  8a 00 00 ea                                      b #0x86daf8
0086d8cc  6d 00 00 ea                                      b #0x86da88
0086d8d0  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d8d4  00 20 a0 e3                                      mov r2, #0
0086d8d8  45 21 c4 e5                                      strb r2, [r4, #0x145]
0086d8dc  03 00 a0 e1                                      mov r0, r3
0086d8e0  00 30 93 e5                                      ldr r3, [r3]
0086d8e4  0f e0 a0 e1                                      mov lr, pc
0086d8e8  08 f0 93 e5                                      ldr pc, [r3, #8]
0086d8ec  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d8f0  03 00 a0 e1                                      mov r0, r3
0086d8f4  00 30 93 e5                                      ldr r3, [r3]
0086d8f8  0f e0 a0 e1                                      mov lr, pc
0086d8fc  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086d900  90 00 84 e5                                      str r0, [r4, #0x90]
0086d904  00 00 59 e1                                      cmp sb, r0
0086d908  03 00 00 0a                                      beq #0x86d91c
0086d90c  00 00 50 e3                                      cmp r0, #0
0086d910  01 00 00 0a                                      beq #0x86d91c
0086d914  01 30 a0 e3                                      mov r3, #1
0086d918  98 30 c4 e5                                      strb r3, [r4, #0x98]
0086d91c  07 00 a0 e1                                      mov r0, r7
0086d920  0c d0 8d e2                                      add sp, sp, #0xc
0086d924  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086d928  d2 96 00 ea                                      b #0x893478
0086d92c  08 00 a0 e1                                      mov r0, r8
0086d930  00 10 a0 e3                                      mov r1, #0
0086d934  6f 82 ea eb                                      bl #0x30e2f8
0086d938  00 00 50 e3                                      cmp r0, #0
0086d93c  78 00 94 05                                      ldreq r0, [r4, #0x78]
0086d940  b9 ff ff 0a                                      beq #0x86d82c
0086d944  78 a0 94 e5                                      ldr sl, [r4, #0x78]
0086d948  7c 00 94 e5                                      ldr r0, [r4, #0x7c]
0086d94c  0a 10 a0 e1                                      mov r1, sl
0086d950  95 82 ea eb                                      bl #0x30e3ac
0086d954  00 10 a0 e1                                      mov r1, r0
0086d958  06 00 a0 e1                                      mov r0, r6
0086d95c  02 85 ea eb                                      bl #0x30ed6c
0086d960  08 10 a0 e1                                      mov r1, r8
0086d964  ca 84 ea eb                                      bl #0x30ec94
0086d968  00 10 a0 e1                                      mov r1, r0
0086d96c  0a 00 a0 e1                                      mov r0, sl
0086d970  8b 84 ea eb                                      bl #0x30eba4
0086d974  ac ff ff ea                                      b #0x86d82c
0086d978  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086d97c  00 20 a0 e3                                      mov r2, #0
0086d980  99 20 c4 e5                                      strb r2, [r4, #0x99]
0086d984  03 00 a0 e1                                      mov r0, r3
0086d988  00 30 93 e5                                      ldr r3, [r3]
0086d98c  0f e0 a0 e1                                      mov lr, pc
0086d990  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0086d994  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d998  03 00 a0 e1                                      mov r0, r3
0086d99c  00 30 93 e5                                      ldr r3, [r3]
0086d9a0  0f e0 a0 e1                                      mov lr, pc
0086d9a4  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086d9a8  00 00 50 e3                                      cmp r0, #0
0086d9ac  90 00 84 e5                                      str r0, [r4, #0x90]
0086d9b0  16 ff ff 0a                                      beq #0x86d610
0086d9b4  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d9b8  03 00 a0 e1                                      mov r0, r3
0086d9bc  00 30 93 e5                                      ldr r3, [r3]
0086d9c0  0f e0 a0 e1                                      mov lr, pc
0086d9c4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0086d9c8  07 00 a0 e1                                      mov r0, r7
0086d9cc  0c d0 8d e2                                      add sp, sp, #0xc
0086d9d0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0086d9d4  a7 96 00 ea                                      b #0x893478
0086d9d8  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086d9dc  06 10 a0 e1                                      mov r1, r6
0086d9e0  03 00 a0 e1                                      mov r0, r3
0086d9e4  00 30 93 e5                                      ldr r3, [r3]
0086d9e8  0f e0 a0 e1                                      mov lr, pc
0086d9ec  30 f0 93 e5                                      ldr pc, [r3, #0x30]
0086d9f0  74 30 94 e5                                      ldr r3, [r4, #0x74]
0086d9f4  70 30 84 e5                                      str r3, [r4, #0x70]
0086d9f8  97 ff ff ea                                      b #0x86d85c
0086d9fc  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086da00  06 10 a0 e1                                      mov r1, r6
0086da04  03 00 a0 e1                                      mov r0, r3
0086da08  00 30 93 e5                                      ldr r3, [r3]
0086da0c  0f e0 a0 e1                                      mov lr, pc
0086da10  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0086da14  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0086da18  38 30 84 e5                                      str r3, [r4, #0x38]
0086da1c  6e ff ff ea                                      b #0x86d7dc
0086da20  94 30 94 e5                                      ldr r3, [r4, #0x94]
0086da24  03 00 53 e3                                      cmp r3, #3
0086da28  96 ff ff 0a                                      beq #0x86d888
0086da2c  14 31 94 e5                                      ldr r3, [r4, #0x114]
0086da30  03 00 a0 e1                                      mov r0, r3
0086da34  00 30 93 e5                                      ldr r3, [r3]
0086da38  0f e0 a0 e1                                      mov lr, pc
0086da3c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086da40  00 00 50 e3                                      cmp r0, #0
0086da44  90 60 94 15                                      ldrne r6, [r4, #0x90]
0086da48  8c ff ff 1a                                      bne #0x86d880
0086da4c  01 30 a0 e3                                      mov r3, #1
0086da50  94 60 84 e5                                      str r6, [r4, #0x94]
0086da54  99 30 c4 e5                                      strb r3, [r4, #0x99]
0086da58  45 31 c4 e5                                      strb r3, [r4, #0x145]
0086da5c  89 ff ff ea                                      b #0x86d888
0086da60  05 10 a0 e1                                      mov r1, r5
0086da64  04 00 a0 e1                                      mov r0, r4
0086da68  30 e4 ff eb                                      bl #0x866b30
0086da6c  8b ff ff ea                                      b #0x86d8a0
0086da70  01 00 79 e3                                      cmn sb, #1
0086da74  a6 ff ff 1a                                      bne #0x86d914
0086da78  a7 ff ff ea                                      b #0x86d91c
0086da7c  94 30 84 e5                                      str r3, [r4, #0x94]
0086da80  03 00 a0 e1                                      mov r0, r3
0086da84  9e ff ff ea                                      b #0x86d904
0086da88  00 00 53 e3                                      cmp r3, #0
0086da8c  fa ff ff 0a                                      beq #0x86da7c
0086da90  6c 30 d4 e5                                      ldrb r3, [r4, #0x6c]
0086da94  00 00 53 e3                                      cmp r3, #0
0086da98  99 ff ff 0a                                      beq #0x86d904
0086da9c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086daa0  03 00 a0 e1                                      mov r0, r3
0086daa4  00 30 93 e5                                      ldr r3, [r3]
0086daa8  0f e0 a0 e1                                      mov lr, pc
0086daac  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0086dab0  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086dab4  03 00 a0 e1                                      mov r0, r3
0086dab8  00 30 93 e5                                      ldr r3, [r3]
0086dabc  0f e0 a0 e1                                      mov lr, pc
0086dac0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0086dac4  00 00 50 e3                                      cmp r0, #0
0086dac8  03 30 a0 03                                      moveq r3, #3
0086dacc  90 00 84 e5                                      str r0, [r4, #0x90]
0086dad0  90 30 84 05                                      streq r3, [r4, #0x90]
0086dad4  01 30 a0 e3                                      mov r3, #1
0086dad8  45 31 c4 e5                                      strb r3, [r4, #0x145]
0086dadc  99 30 c4 e5                                      strb r3, [r4, #0x99]
0086dae0  90 00 94 e5                                      ldr r0, [r4, #0x90]
0086dae4  86 ff ff ea                                      b #0x86d904
0086dae8  00 00 e0 e3                                      mvn r0, #0
0086daec  90 00 84 e5                                      str r0, [r4, #0x90]
0086daf0  94 00 84 e5                                      str r0, [r4, #0x94]
0086daf4  82 ff ff ea                                      b #0x86d904
0086daf8  6c 30 d4 e5                                      ldrb r3, [r4, #0x6c]
0086dafc  00 00 53 e3                                      cmp r3, #0
0086db00  7f ff ff 0a                                      beq #0x86d904
0086db04  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086db08  00 10 a0 e3                                      mov r1, #0
0086db0c  03 00 a0 e1                                      mov r0, r3
0086db10  00 30 93 e5                                      ldr r3, [r3]
0086db14  0f e0 a0 e1                                      mov lr, pc
0086db18  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0086db1c  10 31 94 e5                                      ldr r3, [r4, #0x110]
0086db20  03 00 a0 e1                                      mov r0, r3
0086db24  00 30 93 e5                                      ldr r3, [r3]
0086db28  0f e0 a0 e1                                      mov lr, pc
0086db2c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0086db30  6d ff ff ea                                      b #0x86d8ec
0086db34  04 00 a0 e1                                      mov r0, r4
0086db38  f6 d5 ff eb                                      bl #0x863318
0086db3c  c2 fe ff ea                                      b #0x86d64c

; FUNCTION 0x0086e304, declared_size=292, range_size=292, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj4PlayEf
; demangled: vox::EmitterObj::Play(float)
; decoder-mode: arm
0086e304  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086e308  18 50 80 e2                                      add r5, r0, #0x18
0086e30c  00 40 a0 e1                                      mov r4, r0
0086e310  28 d0 4d e2                                      sub sp, sp, #0x28
0086e314  05 00 a0 e1                                      mov r0, r5
0086e318  01 70 a0 e1                                      mov r7, r1
0086e31c  56 94 00 eb                                      bl #0x89347c
0086e320  94 30 94 e5                                      ldr r3, [r4, #0x94]
0086e324  02 00 53 e3                                      cmp r3, #2
0086e328  13 00 00 0a                                      beq #0x86e37c
0086e32c  00 30 a0 e3                                      mov r3, #0
0086e330  fe 25 a0 e3                                      mov r2, #0x3f800000
0086e334  20 70 8d e5                                      str r7, [sp, #0x20]
0086e338  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086e33c  18 20 8d e5                                      str r2, [sp, #0x18]
0086e340  14 30 8d e5                                      str r3, [sp, #0x14]
0086e344  5c c0 84 e2                                      add ip, r4, #0x5c
0086e348  14 e0 8d e2                                      add lr, sp, #0x14
0086e34c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0086e350  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0086e354  00 20 a0 e3                                      mov r2, #0
0086e358  24 20 cd e5                                      strb r2, [sp, #0x24]
0086e35c  00 20 9e e5                                      ldr r2, [lr]
0086e360  01 30 a0 e3                                      mov r3, #1
0086e364  00 20 cc e5                                      strb r2, [ip]
0086e368  94 30 84 e5                                      str r3, [r4, #0x94]
0086e36c  05 00 a0 e1                                      mov r0, r5
0086e370  40 94 00 eb                                      bl #0x893478
0086e374  28 d0 8d e2                                      add sp, sp, #0x28
0086e378  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086e37c  64 a0 94 e5                                      ldr sl, [r4, #0x64]
0086e380  68 80 94 e5                                      ldr r8, [r4, #0x68]
0086e384  5c 60 84 e2                                      add r6, r4, #0x5c
0086e388  0a 00 a0 e1                                      mov r0, sl
0086e38c  08 10 a0 e1                                      mov r1, r8
0086e390  dd 80 ea eb                                      bl #0x30e70c
0086e394  00 00 50 e3                                      cmp r0, #0
0086e398  60 00 94 05                                      ldreq r0, [r4, #0x60]
0086e39c  11 00 00 0a                                      beq #0x86e3e8
0086e3a0  08 00 a0 e1                                      mov r0, r8
0086e3a4  00 10 a0 e3                                      mov r1, #0
0086e3a8  d2 7f ea eb                                      bl #0x30e2f8
0086e3ac  00 00 50 e3                                      cmp r0, #0
0086e3b0  5c 00 94 05                                      ldreq r0, [r4, #0x5c]
0086e3b4  0b 00 00 0a                                      beq #0x86e3e8
0086e3b8  5c 90 94 e5                                      ldr sb, [r4, #0x5c]
0086e3bc  60 00 94 e5                                      ldr r0, [r4, #0x60]
0086e3c0  09 10 a0 e1                                      mov r1, sb
0086e3c4  f8 7f ea eb                                      bl #0x30e3ac
0086e3c8  00 10 a0 e1                                      mov r1, r0
0086e3cc  0a 00 a0 e1                                      mov r0, sl
0086e3d0  65 82 ea eb                                      bl #0x30ed6c
0086e3d4  08 10 a0 e1                                      mov r1, r8
0086e3d8  2d 82 ea eb                                      bl #0x30ec94
0086e3dc  00 10 a0 e1                                      mov r1, r0
0086e3e0  09 00 a0 e1                                      mov r0, sb
0086e3e4  ee 81 ea eb                                      bl #0x30eba4
0086e3e8  fe 35 a0 e3                                      mov r3, #0x3f800000
0086e3ec  04 30 8d e5                                      str r3, [sp, #4]
0086e3f0  00 30 a0 e3                                      mov r3, #0
0086e3f4  00 00 8d e5                                      str r0, [sp]
0086e3f8  08 30 8d e5                                      str r3, [sp, #8]
0086e3fc  0c 70 8d e5                                      str r7, [sp, #0xc]
0086e400  0d c0 a0 e1                                      mov ip, sp
0086e404  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086e408  0f 00 a6 e8                                      stm r6!, {r0, r1, r2, r3}
0086e40c  00 20 a0 e3                                      mov r2, #0
0086e410  10 20 cd e5                                      strb r2, [sp, #0x10]
0086e414  00 20 9c e5                                      ldr r2, [ip]
0086e418  01 30 a0 e3                                      mov r3, #1
0086e41c  00 20 c6 e5                                      strb r2, [r6]
0086e420  94 30 84 e5                                      str r3, [r4, #0x94]
0086e424  d0 ff ff ea                                      b #0x86e36c

; FUNCTION 0x0086e428, declared_size=496, range_size=496, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj5PauseEf
; demangled: vox::EmitterObj::Pause(float)
; decoder-mode: arm
0086e428  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086e42c  18 40 80 e2                                      add r4, r0, #0x18
0086e430  00 60 a0 e1                                      mov r6, r0
0086e434  40 d0 4d e2                                      sub sp, sp, #0x40
0086e438  04 00 a0 e1                                      mov r0, r4
0086e43c  01 70 a0 e1                                      mov r7, r1
0086e440  0d 94 00 eb                                      bl #0x89347c
0086e444  94 c0 96 e5                                      ldr ip, [r6, #0x94]
0086e448  02 30 4c e2                                      sub r3, ip, #2
0086e44c  01 00 53 e3                                      cmp r3, #1
0086e450  18 00 00 9a                                      bls #0x86e4b8
0086e454  01 00 5c e3                                      cmp ip, #1
0086e458  03 00 00 0a                                      beq #0x86e46c
0086e45c  04 00 a0 e1                                      mov r0, r4
0086e460  04 94 00 eb                                      bl #0x893478
0086e464  40 d0 8d e2                                      add sp, sp, #0x40
0086e468  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086e46c  90 30 96 e5                                      ldr r3, [r6, #0x90]
0086e470  02 20 a0 e3                                      mov r2, #2
0086e474  94 20 86 e5                                      str r2, [r6, #0x94]
0086e478  01 00 53 e3                                      cmp r3, #1
0086e47c  3d 00 00 0a                                      beq #0x86e578
0086e480  00 30 a0 e3                                      mov r3, #0
0086e484  fe 25 a0 e3                                      mov r2, #0x3f800000
0086e488  10 30 8d e5                                      str r3, [sp, #0x10]
0086e48c  08 20 8d e5                                      str r2, [sp, #8]
0086e490  04 30 8d e5                                      str r3, [sp, #4]
0086e494  0c 30 8d e5                                      str r3, [sp, #0xc]
0086e498  5c e0 86 e2                                      add lr, r6, #0x5c
0086e49c  04 50 8d e2                                      add r5, sp, #4
0086e4a0  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
0086e4a4  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
0086e4a8  14 c0 cd e5                                      strb ip, [sp, #0x14]
0086e4ac  00 20 95 e5                                      ldr r2, [r5]
0086e4b0  00 20 ce e5                                      strb r2, [lr]
0086e4b4  e8 ff ff ea                                      b #0x86e45c
0086e4b8  68 80 96 e5                                      ldr r8, [r6, #0x68]
0086e4bc  64 a0 96 e5                                      ldr sl, [r6, #0x64]
0086e4c0  08 00 a0 e1                                      mov r0, r8
0086e4c4  0a 10 a0 e1                                      mov r1, sl
0086e4c8  b7 7f ea eb                                      bl #0x30e3ac
0086e4cc  00 10 a0 e1                                      mov r1, r0
0086e4d0  07 00 a0 e1                                      mov r0, r7
0086e4d4  8c 80 ea eb                                      bl #0x30e70c
0086e4d8  00 00 50 e3                                      cmp r0, #0
0086e4dc  de ff ff 0a                                      beq #0x86e45c
0086e4e0  08 00 a0 e1                                      mov r0, r8
0086e4e4  0a 10 a0 e1                                      mov r1, sl
0086e4e8  82 7f ea eb                                      bl #0x30e2f8
0086e4ec  00 00 50 e3                                      cmp r0, #0
0086e4f0  5c 50 86 e2                                      add r5, r6, #0x5c
0086e4f4  60 00 96 05                                      ldreq r0, [r6, #0x60]
0086e4f8  11 00 00 0a                                      beq #0x86e544
0086e4fc  08 00 a0 e1                                      mov r0, r8
0086e500  00 10 a0 e3                                      mov r1, #0
0086e504  7b 7f ea eb                                      bl #0x30e2f8
0086e508  00 00 50 e3                                      cmp r0, #0
0086e50c  5c 00 96 05                                      ldreq r0, [r6, #0x5c]
0086e510  0b 00 00 0a                                      beq #0x86e544
0086e514  5c 90 96 e5                                      ldr sb, [r6, #0x5c]
0086e518  60 00 96 e5                                      ldr r0, [r6, #0x60]
0086e51c  09 10 a0 e1                                      mov r1, sb
0086e520  a1 7f ea eb                                      bl #0x30e3ac
0086e524  00 10 a0 e1                                      mov r1, r0
0086e528  0a 00 a0 e1                                      mov r0, sl
0086e52c  0e 82 ea eb                                      bl #0x30ed6c
0086e530  08 10 a0 e1                                      mov r1, r8
0086e534  d6 81 ea eb                                      bl #0x30ec94
0086e538  00 10 a0 e1                                      mov r1, r0
0086e53c  09 00 a0 e1                                      mov r0, sb
0086e540  97 81 ea eb                                      bl #0x30eba4
0086e544  00 30 a0 e3                                      mov r3, #0
0086e548  2c 00 8d e5                                      str r0, [sp, #0x2c]
0086e54c  38 70 8d e5                                      str r7, [sp, #0x38]
0086e550  34 30 8d e5                                      str r3, [sp, #0x34]
0086e554  30 30 8d e5                                      str r3, [sp, #0x30]
0086e558  2c c0 8d e2                                      add ip, sp, #0x2c
0086e55c  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086e560  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0086e564  00 20 a0 e3                                      mov r2, #0
0086e568  3c 20 cd e5                                      strb r2, [sp, #0x3c]
0086e56c  00 20 9c e5                                      ldr r2, [ip]
0086e570  00 20 c5 e5                                      strb r2, [r5]
0086e574  b8 ff ff ea                                      b #0x86e45c
0086e578  64 a0 96 e5                                      ldr sl, [r6, #0x64]
0086e57c  68 80 96 e5                                      ldr r8, [r6, #0x68]
0086e580  5c 50 86 e2                                      add r5, r6, #0x5c
0086e584  0a 00 a0 e1                                      mov r0, sl
0086e588  08 10 a0 e1                                      mov r1, r8
0086e58c  5e 80 ea eb                                      bl #0x30e70c
0086e590  00 00 50 e3                                      cmp r0, #0
0086e594  60 00 96 05                                      ldreq r0, [r6, #0x60]
0086e598  11 00 00 0a                                      beq #0x86e5e4
0086e59c  08 00 a0 e1                                      mov r0, r8
0086e5a0  00 10 a0 e3                                      mov r1, #0
0086e5a4  53 7f ea eb                                      bl #0x30e2f8
0086e5a8  00 00 50 e3                                      cmp r0, #0
0086e5ac  5c 00 96 05                                      ldreq r0, [r6, #0x5c]
0086e5b0  0b 00 00 0a                                      beq #0x86e5e4
0086e5b4  5c 90 96 e5                                      ldr sb, [r6, #0x5c]
0086e5b8  60 00 96 e5                                      ldr r0, [r6, #0x60]
0086e5bc  09 10 a0 e1                                      mov r1, sb
0086e5c0  79 7f ea eb                                      bl #0x30e3ac
0086e5c4  00 10 a0 e1                                      mov r1, r0
0086e5c8  0a 00 a0 e1                                      mov r0, sl
0086e5cc  e6 81 ea eb                                      bl #0x30ed6c
0086e5d0  08 10 a0 e1                                      mov r1, r8
0086e5d4  ae 81 ea eb                                      bl #0x30ec94
0086e5d8  00 10 a0 e1                                      mov r1, r0
0086e5dc  09 00 a0 e1                                      mov r0, sb
0086e5e0  6f 81 ea eb                                      bl #0x30eba4
0086e5e4  00 30 a0 e3                                      mov r3, #0
0086e5e8  18 00 8d e5                                      str r0, [sp, #0x18]
0086e5ec  24 70 8d e5                                      str r7, [sp, #0x24]
0086e5f0  20 30 8d e5                                      str r3, [sp, #0x20]
0086e5f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086e5f8  18 c0 8d e2                                      add ip, sp, #0x18
0086e5fc  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086e600  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0086e604  00 20 a0 e3                                      mov r2, #0
0086e608  28 20 cd e5                                      strb r2, [sp, #0x28]
0086e60c  00 20 9c e5                                      ldr r2, [ip]
0086e610  00 20 c5 e5                                      strb r2, [r5]
0086e614  90 ff ff ea                                      b #0x86e45c

; FUNCTION 0x0086e868, declared_size=492, range_size=492, mode=arm
; class-group: vox::EmitterObj
; alias: _ZN3vox10EmitterObj4StopEf
; demangled: vox::EmitterObj::Stop(float)
; decoder-mode: arm
0086e868  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0086e86c  18 40 80 e2                                      add r4, r0, #0x18
0086e870  00 60 a0 e1                                      mov r6, r0
0086e874  40 d0 4d e2                                      sub sp, sp, #0x40
0086e878  04 00 a0 e1                                      mov r0, r4
0086e87c  01 70 a0 e1                                      mov r7, r1
0086e880  fd 92 00 eb                                      bl #0x89347c
0086e884  90 30 96 e5                                      ldr r3, [r6, #0x90]
0086e888  01 00 53 e3                                      cmp r3, #1
0086e88c  13 00 00 0a                                      beq #0x86e8e0
0086e890  00 30 a0 e3                                      mov r3, #0
0086e894  38 30 8d e5                                      str r3, [sp, #0x38]
0086e898  2c 30 8d e5                                      str r3, [sp, #0x2c]
0086e89c  34 30 8d e5                                      str r3, [sp, #0x34]
0086e8a0  fe 25 a0 e3                                      mov r2, #0x3f800000
0086e8a4  03 30 a0 e3                                      mov r3, #3
0086e8a8  30 20 8d e5                                      str r2, [sp, #0x30]
0086e8ac  5c c0 86 e2                                      add ip, r6, #0x5c
0086e8b0  94 30 86 e5                                      str r3, [r6, #0x94]
0086e8b4  2c e0 8d e2                                      add lr, sp, #0x2c
0086e8b8  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0086e8bc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0086e8c0  01 20 a0 e3                                      mov r2, #1
0086e8c4  3c 20 cd e5                                      strb r2, [sp, #0x3c]
0086e8c8  00 20 9e e5                                      ldr r2, [lr]
0086e8cc  00 20 cc e5                                      strb r2, [ip]
0086e8d0  04 00 a0 e1                                      mov r0, r4
0086e8d4  e7 92 00 eb                                      bl #0x893478
0086e8d8  40 d0 8d e2                                      add sp, sp, #0x40
0086e8dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0086e8e0  94 30 96 e5                                      ldr r3, [r6, #0x94]
0086e8e4  03 00 53 e3                                      cmp r3, #3
0086e8e8  29 00 00 0a                                      beq #0x86e994
0086e8ec  64 a0 96 e5                                      ldr sl, [r6, #0x64]
0086e8f0  68 80 96 e5                                      ldr r8, [r6, #0x68]
0086e8f4  03 30 a0 e3                                      mov r3, #3
0086e8f8  94 30 86 e5                                      str r3, [r6, #0x94]
0086e8fc  0a 00 a0 e1                                      mov r0, sl
0086e900  08 10 a0 e1                                      mov r1, r8
0086e904  80 7f ea eb                                      bl #0x30e70c
0086e908  00 00 50 e3                                      cmp r0, #0
0086e90c  5c 50 86 e2                                      add r5, r6, #0x5c
0086e910  60 00 96 05                                      ldreq r0, [r6, #0x60]
0086e914  11 00 00 0a                                      beq #0x86e960
0086e918  08 00 a0 e1                                      mov r0, r8
0086e91c  00 10 a0 e3                                      mov r1, #0
0086e920  74 7e ea eb                                      bl #0x30e2f8
0086e924  00 00 50 e3                                      cmp r0, #0
0086e928  5c 00 96 05                                      ldreq r0, [r6, #0x5c]
0086e92c  0b 00 00 0a                                      beq #0x86e960
0086e930  5c 90 96 e5                                      ldr sb, [r6, #0x5c]
0086e934  60 00 96 e5                                      ldr r0, [r6, #0x60]
0086e938  09 10 a0 e1                                      mov r1, sb
0086e93c  9a 7e ea eb                                      bl #0x30e3ac
0086e940  00 10 a0 e1                                      mov r1, r0
0086e944  0a 00 a0 e1                                      mov r0, sl
0086e948  07 81 ea eb                                      bl #0x30ed6c
0086e94c  08 10 a0 e1                                      mov r1, r8
0086e950  cf 80 ea eb                                      bl #0x30ec94
0086e954  00 10 a0 e1                                      mov r1, r0
0086e958  09 00 a0 e1                                      mov r0, sb
0086e95c  90 80 ea eb                                      bl #0x30eba4
0086e960  00 30 a0 e3                                      mov r3, #0
0086e964  18 00 8d e5                                      str r0, [sp, #0x18]
0086e968  24 70 8d e5                                      str r7, [sp, #0x24]
0086e96c  20 30 8d e5                                      str r3, [sp, #0x20]
0086e970  1c 30 8d e5                                      str r3, [sp, #0x1c]
0086e974  18 c0 8d e2                                      add ip, sp, #0x18
0086e978  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086e97c  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0086e980  00 20 a0 e3                                      mov r2, #0
0086e984  28 20 cd e5                                      strb r2, [sp, #0x28]
0086e988  00 20 9c e5                                      ldr r2, [ip]
0086e98c  00 20 c5 e5                                      strb r2, [r5]
0086e990  ce ff ff ea                                      b #0x86e8d0
0086e994  68 80 96 e5                                      ldr r8, [r6, #0x68]
0086e998  64 a0 96 e5                                      ldr sl, [r6, #0x64]
0086e99c  08 00 a0 e1                                      mov r0, r8
0086e9a0  0a 10 a0 e1                                      mov r1, sl
0086e9a4  80 7e ea eb                                      bl #0x30e3ac
0086e9a8  00 10 a0 e1                                      mov r1, r0
0086e9ac  07 00 a0 e1                                      mov r0, r7
0086e9b0  55 7f ea eb                                      bl #0x30e70c
0086e9b4  00 00 50 e3                                      cmp r0, #0
0086e9b8  c4 ff ff 0a                                      beq #0x86e8d0
0086e9bc  08 00 a0 e1                                      mov r0, r8
0086e9c0  0a 10 a0 e1                                      mov r1, sl
0086e9c4  4b 7e ea eb                                      bl #0x30e2f8
0086e9c8  00 00 50 e3                                      cmp r0, #0
0086e9cc  5c 50 86 e2                                      add r5, r6, #0x5c
0086e9d0  60 00 96 05                                      ldreq r0, [r6, #0x60]
0086e9d4  11 00 00 0a                                      beq #0x86ea20
0086e9d8  08 00 a0 e1                                      mov r0, r8
0086e9dc  00 10 a0 e3                                      mov r1, #0
0086e9e0  44 7e ea eb                                      bl #0x30e2f8
0086e9e4  00 00 50 e3                                      cmp r0, #0
0086e9e8  5c 00 96 05                                      ldreq r0, [r6, #0x5c]
0086e9ec  0b 00 00 0a                                      beq #0x86ea20
0086e9f0  5c 90 96 e5                                      ldr sb, [r6, #0x5c]
0086e9f4  60 00 96 e5                                      ldr r0, [r6, #0x60]
0086e9f8  09 10 a0 e1                                      mov r1, sb
0086e9fc  6a 7e ea eb                                      bl #0x30e3ac
0086ea00  00 10 a0 e1                                      mov r1, r0
0086ea04  0a 00 a0 e1                                      mov r0, sl
0086ea08  d7 80 ea eb                                      bl #0x30ed6c
0086ea0c  08 10 a0 e1                                      mov r1, r8
0086ea10  9f 80 ea eb                                      bl #0x30ec94
0086ea14  00 10 a0 e1                                      mov r1, r0
0086ea18  09 00 a0 e1                                      mov r0, sb
0086ea1c  60 80 ea eb                                      bl #0x30eba4
0086ea20  00 30 a0 e3                                      mov r3, #0
0086ea24  04 00 8d e5                                      str r0, [sp, #4]
0086ea28  10 70 8d e5                                      str r7, [sp, #0x10]
0086ea2c  0c 30 8d e5                                      str r3, [sp, #0xc]
0086ea30  08 30 8d e5                                      str r3, [sp, #8]
0086ea34  04 c0 8d e2                                      add ip, sp, #4
0086ea38  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
0086ea3c  0f 00 a5 e8                                      stm r5!, {r0, r1, r2, r3}
0086ea40  00 20 a0 e3                                      mov r2, #0
0086ea44  14 20 cd e5                                      strb r2, [sp, #0x14]
0086ea48  00 20 9c e5                                      ldr r2, [ip]
0086ea4c  00 20 c5 e5                                      strb r2, [r5]
0086ea50  9e ff ff ea                                      b #0x86e8d0
