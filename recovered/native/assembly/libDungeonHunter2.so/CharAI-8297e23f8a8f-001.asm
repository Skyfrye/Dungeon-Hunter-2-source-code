; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003cb2f0, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI22StepResetAvailableStepEv
; demangled: CharAI::StepResetAvailableStep()
; decoder-mode: arm
003cb2f0  14 30 9f e5                                      ldr r3, [pc, #0x14]
003cb2f4  14 20 9f e5                                      ldr r2, [pc, #0x14]
003cb2f8  03 30 8f e0                                      add r3, pc, r3
003cb2fc  02 20 93 e7                                      ldr r2, [r3, r2]
003cb300  03 30 a0 e3                                      mov r3, #3
003cb304  00 30 82 e5                                      str r3, [r2]
003cb308  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003cb30c  98 97 5c 00 2c 4a 00 00                          .byte 0x98, 0x97, 0x5c, 0x00, 0x2c, 0x4a, 0x00, 0x00

; FUNCTION 0x003cb314, declared_size=56, range_size=56, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14StepInitScriptEv
; demangled: CharAI::StepInitScript()
; decoder-mode: arm
003cb314  10 40 2d e9                                      push {r4, lr}
003cb318  00 40 a0 e1                                      mov r4, r0
003cb31c  00 30 90 e5                                      ldr r3, [r0]
003cb320  0f e0 a0 e1                                      mov lr, pc
003cb324  08 f0 93 e5                                      ldr pc, [r3, #8]
003cb328  30 30 94 e5                                      ldr r3, [r4, #0x30]
003cb32c  00 00 53 e3                                      cmp r3, #0
003cb330  04 00 00 0a                                      beq #0x3cb348
003cb334  20 30 94 e5                                      ldr r3, [r4, #0x20]
003cb338  03 00 a0 e1                                      mov r0, r3
003cb33c  00 30 93 e5                                      ldr r3, [r3]
003cb340  0f e0 a0 e1                                      mov lr, pc
003cb344  cc f0 93 e5                                      ldr pc, [r3, #0xcc]
003cb348  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003cb34c, declared_size=264, range_size=264, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15_UpdatePointersEv
; demangled: CharAI::_UpdatePointers()
; decoder-mode: arm
003cb34c  04 40 2d e5                                      str r4, [sp, #-4]!
003cb350  40 30 90 e5                                      ldr r3, [r0, #0x40]
003cb354  00 00 53 e3                                      cmp r3, #0
003cb358  03 00 00 0a                                      beq #0x3cb36c
003cb35c  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
003cb360  00 00 53 e3                                      cmp r3, #0
003cb364  00 30 a0 13                                      movne r3, #0
003cb368  40 30 80 15                                      strne r3, [r0, #0x40]
003cb36c  50 30 90 e5                                      ldr r3, [r0, #0x50]
003cb370  00 00 53 e3                                      cmp r3, #0
003cb374  03 00 00 0a                                      beq #0x3cb388
003cb378  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
003cb37c  00 00 53 e3                                      cmp r3, #0
003cb380  00 30 a0 13                                      movne r3, #0
003cb384  50 30 80 15                                      strne r3, [r0, #0x50]
003cb388  58 30 90 e5                                      ldr r3, [r0, #0x58]
003cb38c  00 00 53 e3                                      cmp r3, #0
003cb390  03 00 00 0a                                      beq #0x3cb3a4
003cb394  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
003cb398  00 00 53 e3                                      cmp r3, #0
003cb39c  00 30 a0 13                                      movne r3, #0
003cb3a0  58 30 80 15                                      strne r3, [r0, #0x58]
003cb3a4  44 30 90 e5                                      ldr r3, [r0, #0x44]
003cb3a8  00 00 53 e3                                      cmp r3, #0
003cb3ac  03 00 00 0a                                      beq #0x3cb3c0
003cb3b0  81 30 d3 e5                                      ldrb r3, [r3, #0x81]
003cb3b4  00 00 53 e3                                      cmp r3, #0
003cb3b8  00 30 a0 13                                      movne r3, #0
003cb3bc  44 30 80 15                                      strne r3, [r0, #0x44]
003cb3c0  5c c0 80 e2                                      add ip, r0, #0x5c
003cb3c4  64 30 90 e5                                      ldr r3, [r0, #0x64]
003cb3c8  00 00 a0 e3                                      mov r0, #0
003cb3cc  03 00 5c e1                                      cmp ip, r3
003cb3d0  10 00 00 0a                                      beq #0x3cb418
003cb3d4  14 20 93 e5                                      ldr r2, [r3, #0x14]
003cb3d8  00 00 52 e3                                      cmp r2, #0
003cb3dc  02 00 00 0a                                      beq #0x3cb3ec
003cb3e0  81 20 d2 e5                                      ldrb r2, [r2, #0x81]
003cb3e4  00 00 52 e3                                      cmp r2, #0
003cb3e8  14 00 83 15                                      strne r0, [r3, #0x14]
003cb3ec  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003cb3f0  00 00 52 e3                                      cmp r2, #0
003cb3f4  01 00 00 1a                                      bne #0x3cb400
003cb3f8  08 00 00 ea                                      b #0x3cb420
003cb3fc  03 20 a0 e1                                      mov r2, r3
003cb400  08 30 92 e5                                      ldr r3, [r2, #8]
003cb404  00 00 53 e3                                      cmp r3, #0
003cb408  fb ff ff 1a                                      bne #0x3cb3fc
003cb40c  02 30 a0 e1                                      mov r3, r2
003cb410  03 00 5c e1                                      cmp ip, r3
003cb414  ee ff ff 1a                                      bne #0x3cb3d4
003cb418  10 00 bd e8                                      ldm sp!, {r4}
003cb41c  1e ff 2f e1                                      bx lr
003cb420  04 10 93 e5                                      ldr r1, [r3, #4]
003cb424  0c 40 91 e5                                      ldr r4, [r1, #0xc]
003cb428  04 00 53 e1                                      cmp r3, r4
003cb42c  05 00 00 1a                                      bne #0x3cb448
003cb430  01 30 a0 e1                                      mov r3, r1
003cb434  04 10 91 e5                                      ldr r1, [r1, #4]
003cb438  0c 20 91 e5                                      ldr r2, [r1, #0xc]
003cb43c  03 00 52 e1                                      cmp r2, r3
003cb440  fa ff ff 0a                                      beq #0x3cb430
003cb444  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003cb448  02 00 51 e1                                      cmp r1, r2
003cb44c  01 30 a0 11                                      movne r3, r1
003cb450  dd ff ff ea                                      b #0x3cb3cc

; FUNCTION 0x003cb454, declared_size=4, range_size=4, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14UpdatePointersEv
; demangled: CharAI::UpdatePointers()
; decoder-mode: arm
003cb454  bc ff ff ea                                      b #0x3cb34c

; FUNCTION 0x003cb458, declared_size=20, range_size=20, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI21IsScriptProcessLoadedEv
; demangled: CharAI::IsScriptProcessLoaded() const
; decoder-mode: arm
003cb458  28 00 90 e5                                      ldr r0, [r0, #0x28]
003cb45c  06 00 50 e3                                      cmp r0, #6
003cb460  00 00 a0 d3                                      movle r0, #0
003cb464  01 00 a0 c3                                      movgt r0, #1
003cb468  1e ff 2f e1                                      bx lr

; FUNCTION 0x003cb748, declared_size=52, range_size=52, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14AI_PauseUpdateEj
; demangled: CharAI::AI_PauseUpdate(unsigned int)
; decoder-mode: arm
003cb748  04 e0 2d e5                                      str lr, [sp, #-4]!
003cb74c  04 30 90 e5                                      ldr r3, [r0, #4]
003cb750  00 c0 a0 e3                                      mov ip, #0
003cb754  01 20 a0 e3                                      mov r2, #1
003cb758  18 20 c0 e5                                      strb r2, [r0, #0x18]
003cb75c  0c d0 4d e2                                      sub sp, sp, #0xc
003cb760  ed 0f 83 e2                                      add r0, r3, #0x3b4
003cb764  0c 20 a0 e1                                      mov r2, ip
003cb768  31 30 a0 e3                                      mov r3, #0x31
003cb76c  00 c0 8d e5                                      str ip, [sp]
003cb770  ab 41 00 eb                                      bl #0x3dbe24
003cb774  0c d0 8d e2                                      add sp, sp, #0xc
003cb778  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003cb77c, declared_size=68, range_size=68, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12_UpdateRegenEv
; demangled: CharAI::_UpdateRegen()
; decoder-mode: arm
003cb77c  10 40 2d e9                                      push {r4, lr}
003cb780  04 30 90 e5                                      ldr r3, [r0, #4]
003cb784  00 40 a0 e1                                      mov r4, r0
003cb788  03 00 a0 e1                                      mov r0, r3
003cb78c  00 30 93 e5                                      ldr r3, [r3]
003cb790  0f e0 a0 e1                                      mov lr, pc
003cb794  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003cb798  00 00 50 e3                                      cmp r0, #0
003cb79c  00 00 00 0a                                      beq #0x3cb7a4
003cb7a0  10 80 bd e8                                      pop {r4, pc}
003cb7a4  04 00 a0 e1                                      mov r0, r4
003cb7a8  04 40 94 e5                                      ldr r4, [r4, #4]
003cb7ac  04 25 00 eb                                      bl #0x3d4bc4
003cb7b0  00 10 a0 e1                                      mov r1, r0
003cb7b4  04 00 a0 e1                                      mov r0, r4
003cb7b8  10 40 bd e8                                      pop {r4, lr}
003cb7bc  73 c9 ff ea                                      b #0x3bdd90

; FUNCTION 0x003cb7c0, declared_size=148, range_size=148, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12SetCharacterEP9Character
; demangled: CharAI::SetCharacter(Character*)
; decoder-mode: arm
003cb7c0  30 40 2d e9                                      push {r4, r5, lr}
003cb7c4  70 30 9f e5                                      ldr r3, [pc, #0x70]
003cb7c8  00 40 51 e2                                      subs r4, r1, #0
003cb7cc  0c d0 4d e2                                      sub sp, sp, #0xc
003cb7d0  00 50 a0 e1                                      mov r5, r0
003cb7d4  03 30 8f e0                                      add r3, pc, r3
003cb7d8  02 00 00 0a                                      beq #0x3cb7e8
003cb7dc  04 40 85 e5                                      str r4, [r5, #4]
003cb7e0  0c d0 8d e2                                      add sp, sp, #0xc
003cb7e4  30 80 bd e8                                      pop {r4, r5, pc}
003cb7e8  50 20 9f e5                                      ldr r2, [pc, #0x50]
003cb7ec  02 20 93 e7                                      ldr r2, [r3, r2]
003cb7f0  00 20 92 e5                                      ldr r2, [r2]
003cb7f4  02 00 52 e3                                      cmp r2, #2
003cb7f8  00 40 84 05                                      streq r4, [r4]
003cb7fc  f6 ff ff 0a                                      beq #0x3cb7dc
003cb800  01 00 52 e3                                      cmp r2, #1
003cb804  f4 ff ff 1a                                      bne #0x3cb7dc
003cb808  34 00 9f e5                                      ldr r0, [pc, #0x34]
003cb80c  34 10 9f e5                                      ldr r1, [pc, #0x34]
003cb810  34 20 9f e5                                      ldr r2, [pc, #0x34]
003cb814  00 00 93 e7                                      ldr r0, [r3, r0]
003cb818  30 30 9f e5                                      ldr r3, [pc, #0x30]
003cb81c  c7 c1 00 e3                                      movw ip, #0x1c7
003cb820  01 10 8f e0                                      add r1, pc, r1
003cb824  02 20 8f e0                                      add r2, pc, r2
003cb828  03 30 8f e0                                      add r3, pc, r3
003cb82c  a8 00 80 e2                                      add r0, r0, #0xa8
003cb830  00 c0 8d e5                                      str ip, [sp]
003cb834  f2 09 fd eb                                      bl #0x30e004
003cb838  e7 ff ff ea                                      b #0x3cb7dc
; mapping-symbol data/literal pool
003cb83c  bc 92 5c 00 c0 39 00 00 c0 19 00 00 b8 2b 4f 00  .byte 0xbc, 0x92, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb8, 0x2b, 0x4f, 0x00
003cb84c  64 68 52 00 90 99 4f 00                          .byte 0x64, 0x68, 0x52, 0x00, 0x90, 0x99, 0x4f, 0x00

; FUNCTION 0x003cb854, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI22StepQueryAvailableStepEi
; demangled: CharAI::StepQueryAvailableStep(int)
; decoder-mode: arm
003cb854  30 40 2d e9                                      push {r4, r5, lr}
003cb858  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
003cb85c  00 50 51 e2                                      subs r5, r1, #0
003cb860  0c d0 4d e2                                      sub sp, sp, #0xc
003cb864  04 40 8f e0                                      add r4, pc, r4
003cb868  09 00 00 ba                                      blt #0x3cb894
003cb86c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003cb870  03 30 94 e7                                      ldr r3, [r4, r3]
003cb874  00 20 93 e5                                      ldr r2, [r3]
003cb878  02 00 55 e1                                      cmp r5, r2
003cb87c  05 00 a0 b1                                      movlt r0, r5
003cb880  02 00 a0 a1                                      movge r0, r2
003cb884  02 20 60 e0                                      rsb r2, r0, r2
003cb888  00 20 83 e5                                      str r2, [r3]
003cb88c  0c d0 8d e2                                      add sp, sp, #0xc
003cb890  30 80 bd e8                                      pop {r4, r5, pc}
003cb894  58 30 9f e5                                      ldr r3, [pc, #0x58]
003cb898  03 30 94 e7                                      ldr r3, [r4, r3]
003cb89c  00 30 93 e5                                      ldr r3, [r3]
003cb8a0  02 00 53 e3                                      cmp r3, #2
003cb8a4  00 30 a0 03                                      moveq r3, #0
003cb8a8  00 30 83 05                                      streq r3, [r3]
003cb8ac  ee ff ff 0a                                      beq #0x3cb86c
003cb8b0  01 00 53 e3                                      cmp r3, #1
003cb8b4  ec ff ff 1a                                      bne #0x3cb86c
003cb8b8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003cb8bc  38 10 9f e5                                      ldr r1, [pc, #0x38]
003cb8c0  38 20 9f e5                                      ldr r2, [pc, #0x38]
003cb8c4  00 00 94 e7                                      ldr r0, [r4, r0]
003cb8c8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003cb8cc  61 c1 00 e3                                      movw ip, #0x161
003cb8d0  01 10 8f e0                                      add r1, pc, r1
003cb8d4  02 20 8f e0                                      add r2, pc, r2
003cb8d8  03 30 8f e0                                      add r3, pc, r3
003cb8dc  a8 00 80 e2                                      add r0, r0, #0xa8
003cb8e0  00 c0 8d e5                                      str ip, [sp]
003cb8e4  c6 09 fd eb                                      bl #0x30e004
003cb8e8  df ff ff ea                                      b #0x3cb86c
; mapping-symbol data/literal pool
003cb8ec  2c 92 5c 00 2c 4a 00 00 c0 39 00 00 c0 19 00 00  .byte 0x2c, 0x92, 0x5c, 0x00, 0x2c, 0x4a, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003cb8fc  08 2b 4f 00 34 99 4f 00 e0 98 4f 00              .byte 0x08, 0x2b, 0x4f, 0x00, 0x34, 0x99, 0x4f, 0x00, 0xe0, 0x98, 0x4f, 0x00

; FUNCTION 0x003cb908, declared_size=556, range_size=556, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13_UpdateTargetEv
; demangled: CharAI::_UpdateTarget()
; decoder-mode: arm
003cb908  70 40 2d e9                                      push {r4, r5, r6, lr}
003cb90c  00 40 a0 e1                                      mov r4, r0
003cb910  04 00 90 e5                                      ldr r0, [r0, #4]
003cb914  4f 0e 80 e2                                      add r0, r0, #0x4f0
003cb918  0c 00 80 e2                                      add r0, r0, #0xc
003cb91c  43 d2 ff eb                                      bl #0x3c0230
003cb920  00 00 50 e3                                      cmp r0, #0
003cb924  00 00 00 0a                                      beq #0x3cb92c
003cb928  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cb92c  04 00 94 e5                                      ldr r0, [r4, #4]
003cb930  4f 0e 80 e2                                      add r0, r0, #0x4f0
003cb934  0c 00 80 e2                                      add r0, r0, #0xc
003cb938  20 d2 ff eb                                      bl #0x3c01c0
003cb93c  00 00 50 e3                                      cmp r0, #0
003cb940  f8 ff ff 1a                                      bne #0x3cb928
003cb944  40 30 94 e5                                      ldr r3, [r4, #0x40]
003cb948  00 00 53 e3                                      cmp r3, #0
003cb94c  f5 ff ff 0a                                      beq #0x3cb928
003cb950  03 00 a0 e1                                      mov r0, r3
003cb954  04 10 94 e5                                      ldr r1, [r4, #4]
003cb958  00 30 93 e5                                      ldr r3, [r3]
003cb95c  0f e0 a0 e1                                      mov lr, pc
003cb960  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003cb964  00 20 50 e2                                      subs r2, r0, #0
003cb968  4d 00 00 0a                                      beq #0x3cbaa4
003cb96c  40 30 94 e5                                      ldr r3, [r4, #0x40]
003cb970  00 00 53 e3                                      cmp r3, #0
003cb974  eb ff ff 0a                                      beq #0x3cb928
003cb978  04 00 94 e5                                      ldr r0, [r4, #4]
003cb97c  9a 5d ff eb                                      bl #0x3a2fec
003cb980  40 30 94 e5                                      ldr r3, [r4, #0x40]
003cb984  03 00 a0 e1                                      mov r0, r3
003cb988  00 30 93 e5                                      ldr r3, [r3]
003cb98c  0f e0 a0 e1                                      mov lr, pc
003cb990  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003cb994  48 30 d4 e5                                      ldrb r3, [r4, #0x48]
003cb998  01 00 20 e2                                      eor r0, r0, #1
003cb99c  70 50 ef e6                                      uxtb r5, r0
003cb9a0  00 00 53 e3                                      cmp r3, #0
003cb9a4  30 00 00 1a                                      bne #0x3cba6c
003cb9a8  00 00 55 e3                                      cmp r5, #0
003cb9ac  51 00 00 1a                                      bne #0x3cbaf8
003cb9b0  40 10 94 e5                                      ldr r1, [r4, #0x40]
003cb9b4  48 50 c4 e5                                      strb r5, [r4, #0x48]
003cb9b8  00 00 51 e3                                      cmp r1, #0
003cb9bc  d9 ff ff 0a                                      beq #0x3cb928
003cb9c0  04 00 a0 e1                                      mov r0, r4
003cb9c4  43 25 00 eb                                      bl #0x3d4ed8
003cb9c8  49 30 d4 e5                                      ldrb r3, [r4, #0x49]
003cb9cc  00 50 a0 e1                                      mov r5, r0
003cb9d0  00 00 53 e3                                      cmp r3, #0
003cb9d4  2b 00 00 1a                                      bne #0x3cba88
003cb9d8  00 00 50 e3                                      cmp r0, #0
003cb9dc  40 00 00 1a                                      bne #0x3cbae4
003cb9e0  40 30 94 e5                                      ldr r3, [r4, #0x40]
003cb9e4  49 50 c4 e5                                      strb r5, [r4, #0x49]
003cb9e8  00 00 53 e3                                      cmp r3, #0
003cb9ec  cd ff ff 0a                                      beq #0x3cb928
003cb9f0  00 00 55 e3                                      cmp r5, #0
003cb9f4  cb ff ff 0a                                      beq #0x3cb928
003cb9f8  03 00 a0 e1                                      mov r0, r3
003cb9fc  04 10 94 e5                                      ldr r1, [r4, #4]
003cba00  00 30 93 e5                                      ldr r3, [r3]
003cba04  0f e0 a0 e1                                      mov lr, pc
003cba08  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003cba0c  00 00 50 e3                                      cmp r0, #0
003cba10  c4 ff ff 0a                                      beq #0x3cb928
003cba14  04 30 94 e5                                      ldr r3, [r4, #4]
003cba18  03 00 a0 e1                                      mov r0, r3
003cba1c  00 30 93 e5                                      ldr r3, [r3]
003cba20  0f e0 a0 e1                                      mov lr, pc
003cba24  24 f1 93 e5                                      ldr pc, [r3, #0x124]
003cba28  00 00 50 e3                                      cmp r0, #0
003cba2c  22 00 00 0a                                      beq #0x3cbabc
003cba30  04 00 a0 e1                                      mov r0, r4
003cba34  40 10 94 e5                                      ldr r1, [r4, #0x40]
003cba38  66 2a 00 eb                                      bl #0x3d63d8
003cba3c  00 00 50 e3                                      cmp r0, #0
003cba40  31 00 00 1a                                      bne #0x3cbb0c
003cba44  04 00 a0 e1                                      mov r0, r4
003cba48  40 10 94 e5                                      ldr r1, [r4, #0x40]
003cba4c  ec 2a 00 eb                                      bl #0x3d6604
003cba50  00 00 50 e3                                      cmp r0, #0
003cba54  1d 00 00 0a                                      beq #0x3cbad0
003cba58  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cba5c  04 00 94 e5                                      ldr r0, [r4, #4]
003cba60  0f 10 a0 e3                                      mov r1, #0xf
003cba64  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cba68  bb 64 ff ea                                      b #0x3a4d5c
003cba6c  00 00 55 e3                                      cmp r5, #0
003cba70  ce ff ff 1a                                      bne #0x3cb9b0
003cba74  04 00 94 e5                                      ldr r0, [r4, #4]
003cba78  0a 10 a0 e3                                      mov r1, #0xa
003cba7c  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cba80  b5 64 ff eb                                      bl #0x3a4d5c
003cba84  c9 ff ff ea                                      b #0x3cb9b0
003cba88  00 00 50 e3                                      cmp r0, #0
003cba8c  d3 ff ff 1a                                      bne #0x3cb9e0
003cba90  04 00 94 e5                                      ldr r0, [r4, #4]
003cba94  0c 10 a0 e3                                      mov r1, #0xc
003cba98  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cba9c  ae 64 ff eb                                      bl #0x3a4d5c
003cbaa0  ce ff ff ea                                      b #0x3cb9e0
003cbaa4  04 00 94 e5                                      ldr r0, [r4, #4]
003cbaa8  0c 10 a0 e3                                      mov r1, #0xc
003cbaac  40 20 84 e5                                      str r2, [r4, #0x40]
003cbab0  44 20 84 e5                                      str r2, [r4, #0x44]
003cbab4  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cbab8  a7 64 ff ea                                      b #0x3a4d5c
003cbabc  04 00 a0 e1                                      mov r0, r4
003cbac0  40 10 94 e5                                      ldr r1, [r4, #0x40]
003cbac4  af 29 00 eb                                      bl #0x3d6188
003cbac8  00 00 50 e3                                      cmp r0, #0
003cbacc  13 00 00 1a                                      bne #0x3cbb20
003cbad0  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cbad4  04 00 94 e5                                      ldr r0, [r4, #4]
003cbad8  0e 10 a0 e3                                      mov r1, #0xe
003cbadc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cbae0  9d 64 ff ea                                      b #0x3a4d5c
003cbae4  04 00 94 e5                                      ldr r0, [r4, #4]
003cbae8  0d 10 a0 e3                                      mov r1, #0xd
003cbaec  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cbaf0  99 64 ff eb                                      bl #0x3a4d5c
003cbaf4  b9 ff ff ea                                      b #0x3cb9e0
003cbaf8  04 00 94 e5                                      ldr r0, [r4, #4]
003cbafc  0b 10 a0 e3                                      mov r1, #0xb
003cbb00  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cbb04  94 64 ff eb                                      bl #0x3a4d5c
003cbb08  a8 ff ff ea                                      b #0x3cb9b0
003cbb0c  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cbb10  04 00 94 e5                                      ldr r0, [r4, #4]
003cbb14  10 10 a0 e3                                      mov r1, #0x10
003cbb18  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cbb1c  8e 64 ff ea                                      b #0x3a4d5c
003cbb20  40 20 94 e5                                      ldr r2, [r4, #0x40]
003cbb24  04 00 94 e5                                      ldr r0, [r4, #4]
003cbb28  11 10 a0 e3                                      mov r1, #0x11
003cbb2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cbb30  89 64 ff ea                                      b #0x3a4d5c

; FUNCTION 0x003cbb34, declared_size=1764, range_size=1764, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12RaiseAIEventEiPv
; demangled: CharAI::RaiseAIEvent(int, void*)
; decoder-mode: arm
003cbb34  d4 36 9f e5                                      ldr r3, [pc, #0x6d4]
003cbb38  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003cbb3c  03 30 8f e0                                      add r3, pc, r3
003cbb40  01 40 a0 e1                                      mov r4, r1
003cbb44  00 50 a0 e1                                      mov r5, r0
003cbb48  02 60 a0 e1                                      mov r6, r2
003cbb4c  3f 00 51 e3                                      cmp r1, #0x3f
003cbb50  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
003cbb54  68 00 00 ea                                      b #0x3cbcfc
003cbb58  3e 00 00 ea                                      b #0x3cbc58
003cbb5c  cb 00 00 ea                                      b #0x3cbe90
003cbb60  cc 00 00 ea                                      b #0x3cbe98
003cbb64  b0 00 00 ea                                      b #0x3cbe2c
003cbb68  63 00 00 ea                                      b #0x3cbcfc
003cbb6c  62 00 00 ea                                      b #0x3cbcfc
003cbb70  61 00 00 ea                                      b #0x3cbcfc
003cbb74  60 00 00 ea                                      b #0x3cbcfc
003cbb78  5f 00 00 ea                                      b #0x3cbcfc
003cbb7c  5e 00 00 ea                                      b #0x3cbcfc
003cbb80  5d 00 00 ea                                      b #0x3cbcfc
003cbb84  5c 00 00 ea                                      b #0x3cbcfc
003cbb88  5b 00 00 ea                                      b #0x3cbcfc
003cbb8c  5a 00 00 ea                                      b #0x3cbcfc
003cbb90  59 00 00 ea                                      b #0x3cbcfc
003cbb94  58 00 00 ea                                      b #0x3cbcfc
003cbb98  57 00 00 ea                                      b #0x3cbcfc
003cbb9c  56 00 00 ea                                      b #0x3cbcfc
003cbba0  55 00 00 ea                                      b #0x3cbcfc
003cbba4  54 00 00 ea                                      b #0x3cbcfc
003cbba8  53 00 00 ea                                      b #0x3cbcfc
003cbbac  52 00 00 ea                                      b #0x3cbcfc
003cbbb0  51 00 00 ea                                      b #0x3cbcfc
003cbbb4  50 00 00 ea                                      b #0x3cbcfc
003cbbb8  4f 00 00 ea                                      b #0x3cbcfc
003cbbbc  4e 00 00 ea                                      b #0x3cbcfc
003cbbc0  4d 00 00 ea                                      b #0x3cbcfc
003cbbc4  4c 00 00 ea                                      b #0x3cbcfc
003cbbc8  4b 00 00 ea                                      b #0x3cbcfc
003cbbcc  4a 00 00 ea                                      b #0x3cbcfc
003cbbd0  49 00 00 ea                                      b #0x3cbcfc
003cbbd4  48 00 00 ea                                      b #0x3cbcfc
003cbbd8  47 00 00 ea                                      b #0x3cbcfc
003cbbdc  46 00 00 ea                                      b #0x3cbcfc
003cbbe0  96 00 00 ea                                      b #0x3cbe40
003cbbe4  9e 00 00 ea                                      b #0x3cbe64
003cbbe8  43 00 00 ea                                      b #0x3cbcfc
003cbbec  42 00 00 ea                                      b #0x3cbcfc
003cbbf0  41 00 00 ea                                      b #0x3cbcfc
003cbbf4  40 00 00 ea                                      b #0x3cbcfc
003cbbf8  a0 00 00 ea                                      b #0x3cbe80
003cbbfc  1d 00 00 ea                                      b #0x3cbc78
003cbc00  3d 00 00 ea                                      b #0x3cbcfc
003cbc04  3c 00 00 ea                                      b #0x3cbcfc
003cbc08  3b 00 00 ea                                      b #0x3cbcfc
003cbc0c  3a 00 00 ea                                      b #0x3cbcfc
003cbc10  39 00 00 ea                                      b #0x3cbcfc
003cbc14  38 00 00 ea                                      b #0x3cbcfc
003cbc18  0f 00 00 ea                                      b #0x3cbc5c
003cbc1c  1a 00 00 ea                                      b #0x3cbc8c
003cbc20  1c 00 00 ea                                      b #0x3cbc98
003cbc24  1e 00 00 ea                                      b #0x3cbca4
003cbc28  1f 00 00 ea                                      b #0x3cbcac
003cbc2c  22 00 00 ea                                      b #0x3cbcbc
003cbc30  31 00 00 ea                                      b #0x3cbcfc
003cbc34  30 00 00 ea                                      b #0x3cbcfc
003cbc38  2f 00 00 ea                                      b #0x3cbcfc
003cbc3c  2e 00 00 ea                                      b #0x3cbcfc
003cbc40  2d 00 00 ea                                      b #0x3cbcfc
003cbc44  2c 00 00 ea                                      b #0x3cbcfc
003cbc48  2b 00 00 ea                                      b #0x3cbcfc
003cbc4c  2a 00 00 ea                                      b #0x3cbcfc
003cbc50  29 00 00 ea                                      b #0x3cbcfc
003cbc54  25 00 00 ea                                      b #0x3cbcf0
003cbc58  51 43 0c e3                                      movw r4, #0xc351
003cbc5c  04 00 95 e5                                      ldr r0, [r5, #4]
003cbc60  4f 0e 80 e2                                      add r0, r0, #0x4f0
003cbc64  0c 00 80 e2                                      add r0, r0, #0xc
003cbc68  04 10 a0 e1                                      mov r1, r4
003cbc6c  06 20 a0 e1                                      mov r2, r6
003cbc70  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003cbc74  82 e6 ff ea                                      b #0x3c5684
003cbc78  00 30 90 e5                                      ldr r3, [r0]
003cbc7c  02 10 a0 e1                                      mov r1, r2
003cbc80  0f e0 a0 e1                                      mov lr, pc
003cbc84  80 f0 93 e5                                      ldr pc, [r3, #0x80]
003cbc88  f3 ff ff ea                                      b #0x3cbc5c
003cbc8c  00 30 a0 e3                                      mov r3, #0
003cbc90  18 30 c0 e5                                      strb r3, [r0, #0x18]
003cbc94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbc98  01 30 a0 e3                                      mov r3, #1
003cbc9c  4a 30 c0 e5                                      strb r3, [r0, #0x4a]
003cbca0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbca4  b4 fe ff eb                                      bl #0x3cb77c
003cbca8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbcac  04 00 90 e5                                      ldr r0, [r0, #4]
003cbcb0  56 0e 80 e2                                      add r0, r0, #0x560
003cbcb4  cd 4d 00 eb                                      bl #0x3df3f0
003cbcb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbcbc  00 30 90 e5                                      ldr r3, [r0]
003cbcc0  00 00 52 e3                                      cmp r2, #0
003cbcc4  00 10 e0 03                                      mvneq r1, #0
003cbcc8  90 40 93 e5                                      ldr r4, [r3, #0x90]
003cbccc  04 00 00 0a                                      beq #0x3cbce4
003cbcd0  02 00 a0 e1                                      mov r0, r2
003cbcd4  00 30 92 e5                                      ldr r3, [r2]
003cbcd8  0f e0 a0 e1                                      mov lr, pc
003cbcdc  00 f0 93 e5                                      ldr pc, [r3]
003cbce0  00 10 a0 e1                                      mov r1, r0
003cbce4  05 00 a0 e1                                      mov r0, r5
003cbce8  34 ff 2f e1                                      blx r4
003cbcec  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbcf0  04 00 90 e5                                      ldr r0, [r0, #4]
003cbcf4  50 23 ff eb                                      bl #0x394a3c
003cbcf8  d7 ff ff ea                                      b #0x3cbc5c
003cbcfc  04 00 90 e5                                      ldr r0, [r0, #4]
003cbd00  78 13 90 e5                                      ldr r1, [r0, #0x378]
003cbd04  09 20 d1 e5                                      ldrb r2, [r1, #9]
003cbd08  00 00 52 e3                                      cmp r2, #0
003cbd0c  07 00 00 1a                                      bne #0x3cbd30
003cbd10  fc 24 9f e5                                      ldr r2, [pc, #0x4fc]
003cbd14  02 30 93 e7                                      ldr r3, [r3, r2]
003cbd18  00 30 d3 e5                                      ldrb r3, [r3]
003cbd1c  00 00 53 e3                                      cmp r3, #0
003cbd20  cd ff ff 1a                                      bne #0x3cbc5c
003cbd24  08 30 d1 e5                                      ldrb r3, [r1, #8]
003cbd28  00 00 53 e3                                      cmp r3, #0
003cbd2c  ca ff ff 1a                                      bne #0x3cbc5c
003cbd30  04 30 44 e2                                      sub r3, r4, #4
003cbd34  3a 00 53 e3                                      cmp r3, #0x3a
003cbd38  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003cbd3c  c7 ff ff ea                                      b #0x3cbc60
003cbd40  2c 01 00 ea                                      b #0x3cc1f8
003cbd44  c5 ff ff ea                                      b #0x3cbc60
003cbd48  c4 ff ff ea                                      b #0x3cbc60
003cbd4c  23 01 00 ea                                      b #0x3cc1e0
003cbd50  1c 01 00 ea                                      b #0x3cc1c8
003cbd54  14 01 00 ea                                      b #0x3cc1ac
003cbd58  0e 01 00 ea                                      b #0x3cc198
003cbd5c  08 01 00 ea                                      b #0x3cc184
003cbd60  02 01 00 ea                                      b #0x3cc170
003cbd64  fc 00 00 ea                                      b #0x3cc15c
003cbd68  f6 00 00 ea                                      b #0x3cc148
003cbd6c  f0 00 00 ea                                      b #0x3cc134
003cbd70  ea 00 00 ea                                      b #0x3cc120
003cbd74  e4 00 00 ea                                      b #0x3cc10c
003cbd78  de 00 00 ea                                      b #0x3cc0f8
003cbd7c  d8 00 00 ea                                      b #0x3cc0e4
003cbd80  d2 00 00 ea                                      b #0x3cc0d0
003cbd84  cc 00 00 ea                                      b #0x3cc0bc
003cbd88  c6 00 00 ea                                      b #0x3cc0a8
003cbd8c  c0 00 00 ea                                      b #0x3cc094
003cbd90  ba 00 00 ea                                      b #0x3cc080
003cbd94  b4 00 00 ea                                      b #0x3cc06c
003cbd98  b0 ff ff ea                                      b #0x3cbc60
003cbd9c  af ff ff ea                                      b #0x3cbc60
003cbda0  ae ff ff ea                                      b #0x3cbc60
003cbda4  a6 00 00 ea                                      b #0x3cc044
003cbda8  a2 00 00 ea                                      b #0x3cc038
003cbdac  9e 00 00 ea                                      b #0x3cc02c
003cbdb0  9a 00 00 ea                                      b #0x3cc020
003cbdb4  96 00 00 ea                                      b #0x3cc014
003cbdb8  a8 ff ff ea                                      b #0x3cbc60
003cbdbc  a7 ff ff ea                                      b #0x3cbc60
003cbdc0  8f 00 00 ea                                      b #0x3cc004
003cbdc4  8a 00 00 ea                                      b #0x3cbff4
003cbdc8  85 00 00 ea                                      b #0x3cbfe4
003cbdcc  80 00 00 ea                                      b #0x3cbfd4
003cbdd0  a2 ff ff ea                                      b #0x3cbc60
003cbdd4  a1 ff ff ea                                      b #0x3cbc60
003cbdd8  77 00 00 ea                                      b #0x3cbfbc
003cbddc  70 00 00 ea                                      b #0x3cbfa4
003cbde0  69 00 00 ea                                      b #0x3cbf8c
003cbde4  9d ff ff ea                                      b #0x3cbc60
003cbde8  9c ff ff ea                                      b #0x3cbc60
003cbdec  9b ff ff ea                                      b #0x3cbc60
003cbdf0  9a ff ff ea                                      b #0x3cbc60
003cbdf4  99 ff ff ea                                      b #0x3cbc60
003cbdf8  98 ff ff ea                                      b #0x3cbc60
003cbdfc  97 ff ff ea                                      b #0x3cbc60
003cbe00  96 ff ff ea                                      b #0x3cbc60
003cbe04  95 ff ff ea                                      b #0x3cbc60
003cbe08  94 ff ff ea                                      b #0x3cbc60
003cbe0c  57 00 00 ea                                      b #0x3cbf70
003cbe10  4f 00 00 ea                                      b #0x3cbf54
003cbe14  47 00 00 ea                                      b #0x3cbf38
003cbe18  3f 00 00 ea                                      b #0x3cbf1c
003cbe1c  37 00 00 ea                                      b #0x3cbf00
003cbe20  2f 00 00 ea                                      b #0x3cbee4
003cbe24  27 00 00 ea                                      b #0x3cbec8
003cbe28  1f 00 00 ea                                      b #0x3cbeac
003cbe2c  02 10 a0 e1                                      mov r1, r2
003cbe30  00 30 95 e5                                      ldr r3, [r5]
003cbe34  0f e0 a0 e1                                      mov lr, pc
003cbe38  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003cbe3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbe40  29 1f 00 eb                                      bl #0x3d3aec
003cbe44  00 30 95 e5                                      ldr r3, [r5]
003cbe48  00 70 a0 e1                                      mov r7, r0
003cbe4c  05 00 a0 e1                                      mov r0, r5
003cbe50  0f e0 a0 e1                                      mov lr, pc
003cbe54  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003cbe58  00 00 57 e3                                      cmp r7, #0
003cbe5c  7e ff ff 1a                                      bne #0x3cbc5c
003cbe60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbe64  1e 1f 00 eb                                      bl #0x3d3ae4
003cbe68  00 30 95 e5                                      ldr r3, [r5]
003cbe6c  00 70 a0 e1                                      mov r7, r0
003cbe70  05 00 a0 e1                                      mov r0, r5
003cbe74  0f e0 a0 e1                                      mov lr, pc
003cbe78  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003cbe7c  f5 ff ff ea                                      b #0x3cbe58
003cbe80  02 10 a0 e1                                      mov r1, r2
003cbe84  6a 21 00 eb                                      bl #0x3d4434
003cbe88  00 70 a0 e1                                      mov r7, r0
003cbe8c  f1 ff ff ea                                      b #0x3cbe58
003cbe90  52 43 0c e3                                      movw r4, #0xc352
003cbe94  70 ff ff ea                                      b #0x3cbc5c
003cbe98  00 30 90 e5                                      ldr r3, [r0]
003cbe9c  02 10 a0 e1                                      mov r1, r2
003cbea0  0f e0 a0 e1                                      mov lr, pc
003cbea4  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003cbea8  6b ff ff ea                                      b #0x3cbc5c
003cbeac  05 00 a0 e1                                      mov r0, r5
003cbeb0  06 10 a0 e1                                      mov r1, r6
003cbeb4  00 30 95 e5                                      ldr r3, [r5]
003cbeb8  00 20 a0 e3                                      mov r2, #0
003cbebc  0f e0 a0 e1                                      mov lr, pc
003cbec0  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
003cbec4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbec8  05 00 a0 e1                                      mov r0, r5
003cbecc  06 10 a0 e1                                      mov r1, r6
003cbed0  00 30 95 e5                                      ldr r3, [r5]
003cbed4  01 20 a0 e3                                      mov r2, #1
003cbed8  0f e0 a0 e1                                      mov lr, pc
003cbedc  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
003cbee0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbee4  05 00 a0 e1                                      mov r0, r5
003cbee8  06 10 a0 e1                                      mov r1, r6
003cbeec  00 30 95 e5                                      ldr r3, [r5]
003cbef0  00 20 a0 e3                                      mov r2, #0
003cbef4  0f e0 a0 e1                                      mov lr, pc
003cbef8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003cbefc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbf00  05 00 a0 e1                                      mov r0, r5
003cbf04  06 10 a0 e1                                      mov r1, r6
003cbf08  00 30 95 e5                                      ldr r3, [r5]
003cbf0c  01 20 a0 e3                                      mov r2, #1
003cbf10  0f e0 a0 e1                                      mov lr, pc
003cbf14  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003cbf18  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbf1c  05 00 a0 e1                                      mov r0, r5
003cbf20  06 10 a0 e1                                      mov r1, r6
003cbf24  00 30 95 e5                                      ldr r3, [r5]
003cbf28  00 20 a0 e3                                      mov r2, #0
003cbf2c  0f e0 a0 e1                                      mov lr, pc
003cbf30  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
003cbf34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbf38  05 00 a0 e1                                      mov r0, r5
003cbf3c  06 10 a0 e1                                      mov r1, r6
003cbf40  00 30 95 e5                                      ldr r3, [r5]
003cbf44  01 20 a0 e3                                      mov r2, #1
003cbf48  0f e0 a0 e1                                      mov lr, pc
003cbf4c  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
003cbf50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbf54  05 00 a0 e1                                      mov r0, r5
003cbf58  06 10 a0 e1                                      mov r1, r6
003cbf5c  00 30 95 e5                                      ldr r3, [r5]
003cbf60  00 20 a0 e3                                      mov r2, #0
003cbf64  0f e0 a0 e1                                      mov lr, pc
003cbf68  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
003cbf6c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbf70  05 00 a0 e1                                      mov r0, r5
003cbf74  06 10 a0 e1                                      mov r1, r6
003cbf78  00 30 95 e5                                      ldr r3, [r5]
003cbf7c  01 20 a0 e3                                      mov r2, #1
003cbf80  0f e0 a0 e1                                      mov lr, pc
003cbf84  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
003cbf88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cbf8c  05 00 a0 e1                                      mov r0, r5
003cbf90  00 30 95 e5                                      ldr r3, [r5]
003cbf94  0f e0 a0 e1                                      mov lr, pc
003cbf98  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003cbf9c  04 00 95 e5                                      ldr r0, [r5, #4]
003cbfa0  2e ff ff ea                                      b #0x3cbc60
003cbfa4  05 00 a0 e1                                      mov r0, r5
003cbfa8  00 30 95 e5                                      ldr r3, [r5]
003cbfac  0f e0 a0 e1                                      mov lr, pc
003cbfb0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
003cbfb4  04 00 95 e5                                      ldr r0, [r5, #4]
003cbfb8  28 ff ff ea                                      b #0x3cbc60
003cbfbc  05 00 a0 e1                                      mov r0, r5
003cbfc0  00 30 95 e5                                      ldr r3, [r5]
003cbfc4  0f e0 a0 e1                                      mov lr, pc
003cbfc8  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
003cbfcc  04 00 95 e5                                      ldr r0, [r5, #4]
003cbfd0  22 ff ff ea                                      b #0x3cbc60
003cbfd4  05 00 a0 e1                                      mov r0, r5
003cbfd8  06 20 00 eb                                      bl #0x3d3ff8
003cbfdc  00 70 a0 e1                                      mov r7, r0
003cbfe0  9c ff ff ea                                      b #0x3cbe58
003cbfe4  05 00 a0 e1                                      mov r0, r5
003cbfe8  85 20 00 eb                                      bl #0x3d4204
003cbfec  00 70 a0 e1                                      mov r7, r0
003cbff0  98 ff ff ea                                      b #0x3cbe58
003cbff4  05 00 a0 e1                                      mov r0, r5
003cbff8  4c 1f 00 eb                                      bl #0x3d3d30
003cbffc  00 70 a0 e1                                      mov r7, r0
003cc000  94 ff ff ea                                      b #0x3cbe58
003cc004  05 00 a0 e1                                      mov r0, r5
003cc008  4f 1f 00 eb                                      bl #0x3d3d4c
003cc00c  00 70 a0 e1                                      mov r7, r0
003cc010  90 ff ff ea                                      b #0x3cbe58
003cc014  05 00 a0 e1                                      mov r0, r5
003cc018  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003cc01c  c1 32 00 ea                                      b #0x3d8b28
003cc020  05 00 a0 e1                                      mov r0, r5
003cc024  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003cc028  02 30 00 ea                                      b #0x3d8038
003cc02c  05 00 a0 e1                                      mov r0, r5
003cc030  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003cc034  d0 32 00 ea                                      b #0x3d8b7c
003cc038  05 00 a0 e1                                      mov r0, r5
003cc03c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003cc040  11 30 00 ea                                      b #0x3d808c
003cc044  00 30 95 e5                                      ldr r3, [r5]
003cc048  4f 0e 80 e2                                      add r0, r0, #0x4f0
003cc04c  0c 00 80 e2                                      add r0, r0, #0xc
003cc050  20 40 93 e5                                      ldr r4, [r3, #0x20]
003cc054  54 d0 ff eb                                      bl #0x3c01ac
003cc058  06 10 a0 e1                                      mov r1, r6
003cc05c  00 20 a0 e1                                      mov r2, r0
003cc060  05 00 a0 e1                                      mov r0, r5
003cc064  34 ff 2f e1                                      blx r4
003cc068  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc06c  05 00 a0 e1                                      mov r0, r5
003cc070  00 30 95 e5                                      ldr r3, [r5]
003cc074  0f e0 a0 e1                                      mov lr, pc
003cc078  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
003cc07c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc080  05 00 a0 e1                                      mov r0, r5
003cc084  00 30 95 e5                                      ldr r3, [r5]
003cc088  0f e0 a0 e1                                      mov lr, pc
003cc08c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
003cc090  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc094  05 00 a0 e1                                      mov r0, r5
003cc098  00 30 95 e5                                      ldr r3, [r5]
003cc09c  0f e0 a0 e1                                      mov lr, pc
003cc0a0  74 f0 93 e5                                      ldr pc, [r3, #0x74]
003cc0a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc0a8  05 00 a0 e1                                      mov r0, r5
003cc0ac  00 30 95 e5                                      ldr r3, [r5]
003cc0b0  0f e0 a0 e1                                      mov lr, pc
003cc0b4  70 f0 93 e5                                      ldr pc, [r3, #0x70]
003cc0b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc0bc  05 00 a0 e1                                      mov r0, r5
003cc0c0  00 30 95 e5                                      ldr r3, [r5]
003cc0c4  0f e0 a0 e1                                      mov lr, pc
003cc0c8  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
003cc0cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc0d0  05 00 a0 e1                                      mov r0, r5
003cc0d4  00 30 95 e5                                      ldr r3, [r5]
003cc0d8  0f e0 a0 e1                                      mov lr, pc
003cc0dc  68 f0 93 e5                                      ldr pc, [r3, #0x68]
003cc0e0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc0e4  05 00 a0 e1                                      mov r0, r5
003cc0e8  00 30 95 e5                                      ldr r3, [r5]
003cc0ec  0f e0 a0 e1                                      mov lr, pc
003cc0f0  64 f0 93 e5                                      ldr pc, [r3, #0x64]
003cc0f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc0f8  05 00 a0 e1                                      mov r0, r5
003cc0fc  00 30 95 e5                                      ldr r3, [r5]
003cc100  0f e0 a0 e1                                      mov lr, pc
003cc104  60 f0 93 e5                                      ldr pc, [r3, #0x60]
003cc108  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc10c  05 00 a0 e1                                      mov r0, r5
003cc110  00 30 95 e5                                      ldr r3, [r5]
003cc114  0f e0 a0 e1                                      mov lr, pc
003cc118  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003cc11c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc120  05 00 a0 e1                                      mov r0, r5
003cc124  00 30 95 e5                                      ldr r3, [r5]
003cc128  0f e0 a0 e1                                      mov lr, pc
003cc12c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
003cc130  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc134  05 00 a0 e1                                      mov r0, r5
003cc138  00 30 95 e5                                      ldr r3, [r5]
003cc13c  0f e0 a0 e1                                      mov lr, pc
003cc140  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003cc144  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc148  05 00 a0 e1                                      mov r0, r5
003cc14c  00 30 95 e5                                      ldr r3, [r5]
003cc150  0f e0 a0 e1                                      mov lr, pc
003cc154  50 f0 93 e5                                      ldr pc, [r3, #0x50]
003cc158  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc15c  05 00 a0 e1                                      mov r0, r5
003cc160  00 30 95 e5                                      ldr r3, [r5]
003cc164  0f e0 a0 e1                                      mov lr, pc
003cc168  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
003cc16c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc170  05 00 a0 e1                                      mov r0, r5
003cc174  00 30 95 e5                                      ldr r3, [r5]
003cc178  0f e0 a0 e1                                      mov lr, pc
003cc17c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003cc180  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc184  05 00 a0 e1                                      mov r0, r5
003cc188  00 30 95 e5                                      ldr r3, [r5]
003cc18c  0f e0 a0 e1                                      mov lr, pc
003cc190  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003cc194  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc198  05 00 a0 e1                                      mov r0, r5
003cc19c  00 30 95 e5                                      ldr r3, [r5]
003cc1a0  0f e0 a0 e1                                      mov lr, pc
003cc1a4  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003cc1a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc1ac  05 00 a0 e1                                      mov r0, r5
003cc1b0  00 30 95 e5                                      ldr r3, [r5]
003cc1b4  06 10 a0 e1                                      mov r1, r6
003cc1b8  0f e0 a0 e1                                      mov lr, pc
003cc1bc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003cc1c0  04 00 95 e5                                      ldr r0, [r5, #4]
003cc1c4  a5 fe ff ea                                      b #0x3cbc60
003cc1c8  05 00 a0 e1                                      mov r0, r5
003cc1cc  06 10 a0 e1                                      mov r1, r6
003cc1d0  00 30 95 e5                                      ldr r3, [r5]
003cc1d4  0f e0 a0 e1                                      mov lr, pc
003cc1d8  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003cc1dc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc1e0  05 00 a0 e1                                      mov r0, r5
003cc1e4  06 10 a0 e1                                      mov r1, r6
003cc1e8  00 30 95 e5                                      ldr r3, [r5]
003cc1ec  0f e0 a0 e1                                      mov lr, pc
003cc1f0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
003cc1f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc1f8  05 00 a0 e1                                      mov r0, r5
003cc1fc  06 10 a0 e1                                      mov r1, r6
003cc200  00 30 95 e5                                      ldr r3, [r5]
003cc204  0f e0 a0 e1                                      mov lr, pc
003cc208  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
003cc20c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003cc210  54 8f 5c 00 50 36 00 00                          .byte 0x54, 0x8f, 0x5c, 0x00, 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x003cc218, declared_size=32, range_size=32, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14StepLoadCommonEv
; demangled: CharAI::StepLoadCommon()
; decoder-mode: arm
003cc218  2c 30 d0 e5                                      ldrb r3, [r0, #0x2c]
003cc21c  00 00 53 e3                                      cmp r3, #0
003cc220  1e ff 2f 01                                      bxeq lr
003cc224  08 10 9f e5                                      ldr r1, [pc, #8]
003cc228  20 00 90 e5                                      ldr r0, [r0, #0x20]
003cc22c  01 10 8f e0                                      add r1, pc, r1
003cc230  cf bc fe ea                                      b #0x37b574
; mapping-symbol data/literal pool
003cc234  ec 8f 4f 00                                      .byte 0xec, 0x8f, 0x4f, 0x00

; FUNCTION 0x003cc26c, declared_size=12, range_size=12, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16StepSetCharacterEv
; demangled: CharAI::StepSetCharacter()
; decoder-mode: arm
003cc26c  04 10 90 e5                                      ldr r1, [r0, #4]
003cc270  20 00 90 e5                                      ldr r0, [r0, #0x20]
003cc274  9f 33 00 ea                                      b #0x3d90f8

; FUNCTION 0x003cc278, declared_size=8, range_size=8, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16StepBindFunctionEv
; demangled: CharAI::StepBindFunction()
; decoder-mode: arm
003cc278  20 00 90 e5                                      ldr r0, [r0, #0x20]
003cc27c  2a 33 00 ea                                      b #0x3d8f2c

; FUNCTION 0x003cc280, declared_size=456, range_size=456, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI17_HandleProjectileEP10ProjectilePv
; demangled: CharAI::_HandleProjectile(Projectile*, void*)
; decoder-mode: arm
003cc280  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003cc284  98 61 9f e5                                      ldr r6, [pc, #0x198]
003cc288  00 70 50 e2                                      subs r7, r0, #0
003cc28c  40 d0 4d e2                                      sub sp, sp, #0x40
003cc290  06 60 8f e0                                      add r6, pc, r6
003cc294  46 00 00 0a                                      beq #0x3cc3b4
003cc298  cc 53 97 e5                                      ldr r5, [r7, #0x3cc]
003cc29c  80 43 97 e5                                      ldr r4, [r7, #0x380]
003cc2a0  00 00 55 e3                                      cmp r5, #0
003cc2a4  05 80 a0 01                                      moveq r8, r5
003cc2a8  06 00 00 0a                                      beq #0x3cc2c8
003cc2ac  34 80 8d e2                                      add r8, sp, #0x34
003cc2b0  08 00 a0 e1                                      mov r0, r8
003cc2b4  05 10 a0 e1                                      mov r1, r5
003cc2b8  9b c6 fd eb                                      bl #0x33dd2c
003cc2bc  08 00 a0 e1                                      mov r0, r8
003cc2c0  23 cf fd eb                                      bl #0x33ff54
003cc2c4  00 80 a0 e1                                      mov r8, r0
003cc2c8  00 00 54 e3                                      cmp r4, #0
003cc2cc  23 00 00 0a                                      beq #0x3cc360
003cc2d0  c8 33 94 e5                                      ldr r3, [r4, #0x3c8]
003cc2d4  f2 0f 84 e2                                      add r0, r4, #0x3c8
003cc2d8  05 10 a0 e1                                      mov r1, r5
003cc2dc  0f e0 a0 e1                                      mov lr, pc
003cc2e0  ac f0 93 e5                                      ldr pc, [r3, #0xac]
003cc2e4  00 00 55 e3                                      cmp r5, #0
003cc2e8  1a 00 00 0a                                      beq #0x3cc358
003cc2ec  00 00 58 e3                                      cmp r8, #0
003cc2f0  11 00 00 0a                                      beq #0x3cc33c
003cc2f4  7c c3 d7 e5                                      ldrb ip, [r7, #0x37c]
003cc2f8  0c 50 8d e2                                      add r5, sp, #0xc
003cc2fc  00 30 a0 e3                                      mov r3, #0
003cc300  05 00 a0 e1                                      mov r0, r5
003cc304  04 10 a0 e1                                      mov r1, r4
003cc308  08 20 a0 e1                                      mov r2, r8
003cc30c  00 c0 8d e5                                      str ip, [sp]
003cc310  14 9c ff eb                                      bl #0x3b3368
003cc314  05 00 a0 e1                                      mov r0, r5
003cc318  04 10 a0 e1                                      mov r1, r4
003cc31c  08 20 a0 e1                                      mov r2, r8
003cc320  00 30 a0 e3                                      mov r3, #0
003cc324  62 93 ff eb                                      bl #0x3b10b4
003cc328  24 00 dd e5                                      ldrb r0, [sp, #0x24]
003cc32c  03 00 10 e2                                      ands r0, r0, #3
003cc330  01 00 a0 13                                      movne r0, #1
003cc334  40 d0 8d e2                                      add sp, sp, #0x40
003cc338  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cc33c  04 10 a0 e1                                      mov r1, r4
003cc340  00 30 95 e5                                      ldr r3, [r5]
003cc344  05 00 a0 e1                                      mov r0, r5
003cc348  0f e0 a0 e1                                      mov lr, pc
003cc34c  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003cc350  08 00 50 e3                                      cmp r0, #8
003cc354  2b 00 00 0a                                      beq #0x3cc408
003cc358  00 00 a0 e3                                      mov r0, #0
003cc35c  f4 ff ff ea                                      b #0x3cc334
003cc360  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003cc364  03 30 96 e7                                      ldr r3, [r6, r3]
003cc368  00 30 93 e5                                      ldr r3, [r3]
003cc36c  02 00 53 e3                                      cmp r3, #2
003cc370  00 40 84 05                                      streq r4, [r4]
003cc374  d5 ff ff 0a                                      beq #0x3cc2d0
003cc378  01 00 53 e3                                      cmp r3, #1
003cc37c  d3 ff ff 1a                                      bne #0x3cc2d0
003cc380  a4 00 9f e5                                      ldr r0, [pc, #0xa4]
003cc384  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003cc388  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003cc38c  00 00 96 e7                                      ldr r0, [r6, r0]
003cc390  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003cc394  f4 c0 a0 e3                                      mov ip, #0xf4
003cc398  01 10 8f e0                                      add r1, pc, r1
003cc39c  02 20 8f e0                                      add r2, pc, r2
003cc3a0  03 30 8f e0                                      add r3, pc, r3
003cc3a4  a8 00 80 e2                                      add r0, r0, #0xa8
003cc3a8  00 c0 8d e5                                      str ip, [sp]
003cc3ac  14 07 fd eb                                      bl #0x30e004
003cc3b0  c6 ff ff ea                                      b #0x3cc2d0
003cc3b4  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003cc3b8  03 30 96 e7                                      ldr r3, [r6, r3]
003cc3bc  00 30 93 e5                                      ldr r3, [r3]
003cc3c0  02 00 53 e3                                      cmp r3, #2
003cc3c4  00 70 87 05                                      streq r7, [r7]
003cc3c8  b2 ff ff 0a                                      beq #0x3cc298
003cc3cc  01 00 53 e3                                      cmp r3, #1
003cc3d0  b0 ff ff 1a                                      bne #0x3cc298
003cc3d4  50 00 9f e5                                      ldr r0, [pc, #0x50]
003cc3d8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003cc3dc  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003cc3e0  00 00 96 e7                                      ldr r0, [r6, r0]
003cc3e4  58 30 9f e5                                      ldr r3, [pc, #0x58]
003cc3e8  ee c0 a0 e3                                      mov ip, #0xee
003cc3ec  01 10 8f e0                                      add r1, pc, r1
003cc3f0  02 20 8f e0                                      add r2, pc, r2
003cc3f4  03 30 8f e0                                      add r3, pc, r3
003cc3f8  a8 00 80 e2                                      add r0, r0, #0xa8
003cc3fc  00 c0 8d e5                                      str ip, [sp]
003cc400  ff 06 fd eb                                      bl #0x30e004
003cc404  a3 ff ff ea                                      b #0x3cc298
003cc408  05 00 a0 e1                                      mov r0, r5
003cc40c  07 10 a0 e1                                      mov r1, r7
003cc410  00 30 95 e5                                      ldr r3, [r5]
003cc414  0f e0 a0 e1                                      mov lr, pc
003cc418  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003cc41c  08 00 a0 e1                                      mov r0, r8
003cc420  c3 ff ff ea                                      b #0x3cc334
; mapping-symbol data/literal pool
003cc424  00 88 5c 00 c0 39 00 00 c0 19 00 00 40 20 4f 00  .byte 0x00, 0x88, 0x5c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x40, 0x20, 0x4f, 0x00
003cc434  8c 8e 4f 00 18 8e 4f 00 ec 1f 4f 00 58 cd 4f 00  .byte 0x8c, 0x8e, 0x4f, 0x00, 0x18, 0x8e, 0x4f, 0x00, 0xec, 0x1f, 0x4f, 0x00, 0x58, 0xcd, 0x4f, 0x00
003cc444  c4 8d 4f 00                                      .byte 0xc4, 0x8d, 0x4f, 0x00

; FUNCTION 0x003cc484, declared_size=288, range_size=288, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI8IsMyTurnEPKS_
; demangled: CharAI::IsMyTurn(CharAI const*)
; decoder-mode: arm
003cc484  70 40 2d e9                                      push {r4, r5, r6, lr}
003cc488  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
003cc48c  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
003cc490  18 d0 4d e2                                      sub sp, sp, #0x18
003cc494  04 40 8f e0                                      add r4, pc, r4
003cc498  06 e0 94 e7                                      ldr lr, [r4, r6]
003cc49c  08 c0 8d e2                                      add ip, sp, #8
003cc4a0  00 50 a0 e1                                      mov r5, r0
003cc4a4  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
003cc4a8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cc4ac  10 00 8e e2                                      add r0, lr, #0x10
003cc4b0  0c 10 a0 e1                                      mov r1, ip
003cc4b4  f8 fb ff eb                                      bl #0x3cb49c
003cc4b8  00 00 50 e3                                      cmp r0, #0
003cc4bc  07 00 00 1a                                      bne #0x3cc4e0
003cc4c0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003cc4c4  03 30 94 e7                                      ldr r3, [r4, r3]
003cc4c8  00 30 93 e5                                      ldr r3, [r3]
003cc4cc  02 00 53 e3                                      cmp r3, #2
003cc4d0  00 00 80 05                                      streq r0, [r0]
003cc4d4  01 00 00 0a                                      beq #0x3cc4e0
003cc4d8  01 00 53 e3                                      cmp r3, #1
003cc4dc  1b 00 00 0a                                      beq #0x3cc550
003cc4e0  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
003cc4e4  03 30 94 e7                                      ldr r3, [r4, r3]
003cc4e8  00 30 93 e5                                      ldr r3, [r3]
003cc4ec  00 00 53 e3                                      cmp r3, #0
003cc4f0  10 00 00 da                                      ble #0x3cc538
003cc4f4  04 00 95 e5                                      ldr r0, [r5, #4]
003cc4f8  df 5a ff eb                                      bl #0x3a307c
003cc4fc  00 00 50 e3                                      cmp r0, #0
003cc500  02 00 00 0a                                      beq #0x3cc510
003cc504  01 00 a0 e3                                      mov r0, #1
003cc508  18 d0 8d e2                                      add sp, sp, #0x18
003cc50c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cc510  04 00 95 e5                                      ldr r0, [r5, #4]
003cc514  de 5a ff eb                                      bl #0x3a3094
003cc518  00 00 50 e3                                      cmp r0, #0
003cc51c  f8 ff ff 1a                                      bne #0x3cc504
003cc520  04 30 95 e5                                      ldr r3, [r5, #4]
003cc524  03 00 a0 e1                                      mov r0, r3
003cc528  00 30 93 e5                                      ldr r3, [r3]
003cc52c  0f e0 a0 e1                                      mov lr, pc
003cc530  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003cc534  f3 ff ff ea                                      b #0x3cc508
003cc538  06 30 94 e7                                      ldr r3, [r4, r6]
003cc53c  00 30 93 e5                                      ldr r3, [r3]
003cc540  00 30 93 e5                                      ldr r3, [r3]
003cc544  05 00 53 e1                                      cmp r3, r5
003cc548  e9 ff ff 1a                                      bne #0x3cc4f4
003cc54c  ec ff ff ea                                      b #0x3cc504
003cc550  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003cc554  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003cc558  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003cc55c  00 00 94 e7                                      ldr r0, [r4, r0]
003cc560  38 30 9f e5                                      ldr r3, [pc, #0x38]
003cc564  66 c0 a0 e3                                      mov ip, #0x66
003cc568  01 10 8f e0                                      add r1, pc, r1
003cc56c  02 20 8f e0                                      add r2, pc, r2
003cc570  03 30 8f e0                                      add r3, pc, r3
003cc574  a8 00 80 e2                                      add r0, r0, #0xa8
003cc578  00 c0 8d e5                                      str ip, [sp]
003cc57c  a0 06 fd eb                                      bl #0x30e004
003cc580  d6 ff ff ea                                      b #0x3cc4e0
; mapping-symbol data/literal pool
003cc584  fc 85 5c 00 ac 49 00 00 c0 39 00 00 e8 46 00 00  .byte 0xfc, 0x85, 0x5c, 0x00, 0xac, 0x49, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xe8, 0x46, 0x00, 0x00
003cc594  c0 19 00 00 70 1e 4f 00 c4 8c 4f 00 48 8c 4f 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x70, 0x1e, 0x4f, 0x00, 0xc4, 0x8c, 0x4f, 0x00, 0x48, 0x8c, 0x4f, 0x00

; FUNCTION 0x003cc5a4, declared_size=444, range_size=444, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13_UpdateMasterEv
; demangled: CharAI::_UpdateMaster()
; decoder-mode: arm
003cc5a4  70 40 2d e9                                      push {r4, r5, r6, lr}
003cc5a8  50 30 90 e5                                      ldr r3, [r0, #0x50]
003cc5ac  00 40 a0 e1                                      mov r4, r0
003cc5b0  00 00 53 e3                                      cmp r3, #0
003cc5b4  22 00 00 0a                                      beq #0x3cc644
003cc5b8  04 00 90 e5                                      ldr r0, [r0, #4]
003cc5bc  8a 5a ff eb                                      bl #0x3a2fec
003cc5c0  50 30 94 e5                                      ldr r3, [r4, #0x50]
003cc5c4  03 00 a0 e1                                      mov r0, r3
003cc5c8  00 30 93 e5                                      ldr r3, [r3]
003cc5cc  0f e0 a0 e1                                      mov lr, pc
003cc5d0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003cc5d4  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
003cc5d8  01 00 20 e2                                      eor r0, r0, #1
003cc5dc  70 50 ef e6                                      uxtb r5, r0
003cc5e0  00 00 53 e3                                      cmp r3, #0
003cc5e4  17 00 00 0a                                      beq #0x3cc648
003cc5e8  00 00 55 e3                                      cmp r5, #0
003cc5ec  42 00 00 0a                                      beq #0x3cc6fc
003cc5f0  50 10 94 e5                                      ldr r1, [r4, #0x50]
003cc5f4  54 50 c4 e5                                      strb r5, [r4, #0x54]
003cc5f8  00 00 51 e3                                      cmp r1, #0
003cc5fc  10 00 00 0a                                      beq #0x3cc644
003cc600  04 00 a0 e1                                      mov r0, r4
003cc604  33 22 00 eb                                      bl #0x3d4ed8
003cc608  55 30 d4 e5                                      ldrb r3, [r4, #0x55]
003cc60c  00 50 a0 e1                                      mov r5, r0
003cc610  00 00 53 e3                                      cmp r3, #0
003cc614  12 00 00 1a                                      bne #0x3cc664
003cc618  00 00 50 e3                                      cmp r0, #0
003cc61c  31 00 00 1a                                      bne #0x3cc6e8
003cc620  50 30 94 e5                                      ldr r3, [r4, #0x50]
003cc624  55 50 c4 e5                                      strb r5, [r4, #0x55]
003cc628  00 00 53 e3                                      cmp r3, #0
003cc62c  04 00 00 0a                                      beq #0x3cc644
003cc630  54 30 d4 e5                                      ldrb r3, [r4, #0x54]
003cc634  00 00 53 e3                                      cmp r3, #0
003cc638  01 00 00 0a                                      beq #0x3cc644
003cc63c  00 00 55 e3                                      cmp r5, #0
003cc640  0e 00 00 1a                                      bne #0x3cc680
003cc644  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cc648  00 00 55 e3                                      cmp r5, #0
003cc64c  e7 ff ff 0a                                      beq #0x3cc5f0
003cc650  04 00 94 e5                                      ldr r0, [r4, #4]
003cc654  13 10 a0 e3                                      mov r1, #0x13
003cc658  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc65c  be 61 ff eb                                      bl #0x3a4d5c
003cc660  e2 ff ff ea                                      b #0x3cc5f0
003cc664  00 00 50 e3                                      cmp r0, #0
003cc668  ec ff ff 1a                                      bne #0x3cc620
003cc66c  04 00 94 e5                                      ldr r0, [r4, #4]
003cc670  14 10 a0 e3                                      mov r1, #0x14
003cc674  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc678  b7 61 ff eb                                      bl #0x3a4d5c
003cc67c  e7 ff ff ea                                      b #0x3cc620
003cc680  04 00 a0 e1                                      mov r0, r4
003cc684  7e ff ff eb                                      bl #0x3cc484
003cc688  00 00 50 e3                                      cmp r0, #0
003cc68c  ec ff ff 0a                                      beq #0x3cc644
003cc690  04 30 94 e5                                      ldr r3, [r4, #4]
003cc694  03 00 a0 e1                                      mov r0, r3
003cc698  00 30 93 e5                                      ldr r3, [r3]
003cc69c  0f e0 a0 e1                                      mov lr, pc
003cc6a0  24 f1 93 e5                                      ldr pc, [r3, #0x124]
003cc6a4  00 00 50 e3                                      cmp r0, #0
003cc6a8  18 00 00 0a                                      beq #0x3cc710
003cc6ac  04 00 a0 e1                                      mov r0, r4
003cc6b0  50 10 94 e5                                      ldr r1, [r4, #0x50]
003cc6b4  47 27 00 eb                                      bl #0x3d63d8
003cc6b8  00 00 50 e3                                      cmp r0, #0
003cc6bc  1d 00 00 1a                                      bne #0x3cc738
003cc6c0  04 00 a0 e1                                      mov r0, r4
003cc6c4  50 10 94 e5                                      ldr r1, [r4, #0x50]
003cc6c8  cd 27 00 eb                                      bl #0x3d6604
003cc6cc  00 00 50 e3                                      cmp r0, #0
003cc6d0  13 00 00 0a                                      beq #0x3cc724
003cc6d4  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc6d8  04 00 94 e5                                      ldr r0, [r4, #4]
003cc6dc  17 10 a0 e3                                      mov r1, #0x17
003cc6e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cc6e4  9c 61 ff ea                                      b #0x3a4d5c
003cc6e8  04 00 94 e5                                      ldr r0, [r4, #4]
003cc6ec  15 10 a0 e3                                      mov r1, #0x15
003cc6f0  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc6f4  98 61 ff eb                                      bl #0x3a4d5c
003cc6f8  c8 ff ff ea                                      b #0x3cc620
003cc6fc  04 00 94 e5                                      ldr r0, [r4, #4]
003cc700  12 10 a0 e3                                      mov r1, #0x12
003cc704  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc708  93 61 ff eb                                      bl #0x3a4d5c
003cc70c  b7 ff ff ea                                      b #0x3cc5f0
003cc710  04 00 a0 e1                                      mov r0, r4
003cc714  50 10 94 e5                                      ldr r1, [r4, #0x50]
003cc718  9a 26 00 eb                                      bl #0x3d6188
003cc71c  00 00 50 e3                                      cmp r0, #0
003cc720  09 00 00 1a                                      bne #0x3cc74c
003cc724  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc728  04 00 94 e5                                      ldr r0, [r4, #4]
003cc72c  16 10 a0 e3                                      mov r1, #0x16
003cc730  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cc734  88 61 ff ea                                      b #0x3a4d5c
003cc738  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc73c  04 00 94 e5                                      ldr r0, [r4, #4]
003cc740  18 10 a0 e3                                      mov r1, #0x18
003cc744  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cc748  83 61 ff ea                                      b #0x3a4d5c
003cc74c  50 20 94 e5                                      ldr r2, [r4, #0x50]
003cc750  04 00 94 e5                                      ldr r0, [r4, #4]
003cc754  19 10 a0 e3                                      mov r1, #0x19
003cc758  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cc75c  7e 61 ff ea                                      b #0x3a4d5c

; FUNCTION 0x003cc9dc, declared_size=280, range_size=280, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21AIUnLoadScriptProcessEb
; demangled: CharAI::AIUnLoadScriptProcess(bool)
; decoder-mode: arm
003cc9dc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003cc9e0  20 30 90 e5                                      ldr r3, [r0, #0x20]
003cc9e4  00 00 51 e3                                      cmp r1, #0
003cc9e8  01 20 a0 13                                      movne r2, #1
003cc9ec  24 20 d0 05                                      ldrbeq r2, [r0, #0x24]
003cc9f0  00 00 53 e3                                      cmp r3, #0
003cc9f4  00 50 a0 e1                                      mov r5, r0
003cc9f8  01 00 00 0a                                      beq #0x3cca04
003cc9fc  00 00 52 e3                                      cmp r2, #0
003cca00  00 00 00 1a                                      bne #0x3cca08
003cca04  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003cca08  34 30 00 eb                                      bl #0x3d8ae0
003cca0c  05 00 a0 e1                                      mov r0, r5
003cca10  20 30 00 eb                                      bl #0x3d8a98
003cca14  b4 40 95 e5                                      ldr r4, [r5, #0xb4]
003cca18  b8 60 95 e5                                      ldr r6, [r5, #0xb8]
003cca1c  06 00 54 e1                                      cmp r4, r6
003cca20  0f 00 00 0a                                      beq #0x3cca64
003cca24  00 70 a0 e3                                      mov r7, #0
003cca28  00 30 94 e5                                      ldr r3, [r4]
003cca2c  00 00 53 e3                                      cmp r3, #0
003cca30  04 00 00 0a                                      beq #0x3cca48
003cca34  03 00 a0 e1                                      mov r0, r3
003cca38  00 30 93 e5                                      ldr r3, [r3]
003cca3c  0f e0 a0 e1                                      mov lr, pc
003cca40  04 f0 93 e5                                      ldr pc, [r3, #4]
003cca44  00 70 84 e5                                      str r7, [r4]
003cca48  04 40 84 e2                                      add r4, r4, #4
003cca4c  04 00 56 e1                                      cmp r6, r4
003cca50  f4 ff ff 1a                                      bne #0x3cca28
003cca54  b4 30 95 e5                                      ldr r3, [r5, #0xb4]
003cca58  b8 20 95 e5                                      ldr r2, [r5, #0xb8]
003cca5c  02 00 53 e1                                      cmp r3, r2
003cca60  b8 30 85 15                                      strne r3, [r5, #0xb8]
003cca64  c0 40 95 e5                                      ldr r4, [r5, #0xc0]
003cca68  c4 60 95 e5                                      ldr r6, [r5, #0xc4]
003cca6c  06 00 54 e1                                      cmp r4, r6
003cca70  0f 00 00 0a                                      beq #0x3ccab4
003cca74  00 70 a0 e3                                      mov r7, #0
003cca78  00 30 94 e5                                      ldr r3, [r4]
003cca7c  00 00 53 e3                                      cmp r3, #0
003cca80  04 00 00 0a                                      beq #0x3cca98
003cca84  03 00 a0 e1                                      mov r0, r3
003cca88  00 30 93 e5                                      ldr r3, [r3]
003cca8c  0f e0 a0 e1                                      mov lr, pc
003cca90  04 f0 93 e5                                      ldr pc, [r3, #4]
003cca94  00 70 84 e5                                      str r7, [r4]
003cca98  04 40 84 e2                                      add r4, r4, #4
003cca9c  04 00 56 e1                                      cmp r6, r4
003ccaa0  f4 ff ff 1a                                      bne #0x3cca78
003ccaa4  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
003ccaa8  c4 20 95 e5                                      ldr r2, [r5, #0xc4]
003ccaac  02 00 53 e1                                      cmp r3, r2
003ccab0  c4 30 85 15                                      strne r3, [r5, #0xc4]
003ccab4  20 30 95 e5                                      ldr r3, [r5, #0x20]
003ccab8  00 00 53 e3                                      cmp r3, #0
003ccabc  05 00 00 0a                                      beq #0x3ccad8
003ccac0  03 00 a0 e1                                      mov r0, r3
003ccac4  00 30 93 e5                                      ldr r3, [r3]
003ccac8  0f e0 a0 e1                                      mov lr, pc
003ccacc  04 f0 93 e5                                      ldr pc, [r3, #4]
003ccad0  00 30 a0 e3                                      mov r3, #0
003ccad4  20 30 85 e5                                      str r3, [r5, #0x20]
003ccad8  00 30 a0 e3                                      mov r3, #0
003ccadc  30 30 85 e5                                      str r3, [r5, #0x30]
003ccae0  20 30 85 e5                                      str r3, [r5, #0x20]
003ccae4  1c 30 85 e5                                      str r3, [r5, #0x1c]
003ccae8  28 30 85 e5                                      str r3, [r5, #0x28]
003ccaec  2c 30 c5 e5                                      strb r3, [r5, #0x2c]
003ccaf0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003cd384, declared_size=456, range_size=456, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13ClearAllAggroEv
; demangled: CharAI::ClearAllAggro()
; decoder-mode: arm
003cd384  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003cd388  b4 a1 9f e5                                      ldr sl, [pc, #0x1b4]
003cd38c  b4 91 9f e5                                      ldr sb, [pc, #0x1b4]
003cd390  2c d0 4d e2                                      sub sp, sp, #0x2c
003cd394  0a a0 8f e0                                      add sl, pc, sl
003cd398  09 30 9a e7                                      ldr r3, [sl, sb]
003cd39c  00 60 a0 e3                                      mov r6, #0
003cd3a0  38 80 93 e5                                      ldr r8, [r3, #0x38]
003cd3a4  60 50 b8 e5                                      ldr r5, [r8, #0x60]!
003cd3a8  05 00 58 e1                                      cmp r8, r5
003cd3ac  13 00 00 0a                                      beq #0x3cd400
003cd3b0  08 40 95 e5                                      ldr r4, [r5, #8]
003cd3b4  00 00 54 e3                                      cmp r4, #0
003cd3b8  f2 4f 84 12                                      addne r4, r4, #0x3c8
003cd3bc  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003cd3c0  00 00 53 e3                                      cmp r3, #0
003cd3c4  07 00 00 0a                                      beq #0x3cd3e8
003cd3c8  7c 70 84 e2                                      add r7, r4, #0x7c
003cd3cc  07 00 a0 e1                                      mov r0, r7
003cd3d0  80 10 94 e5                                      ldr r1, [r4, #0x80]
003cd3d4  dc ff ff eb                                      bl #0x3cd34c
003cd3d8  88 70 84 e5                                      str r7, [r4, #0x88]
003cd3dc  84 70 84 e5                                      str r7, [r4, #0x84]
003cd3e0  80 60 84 e5                                      str r6, [r4, #0x80]
003cd3e4  8c 60 84 e5                                      str r6, [r4, #0x8c]
003cd3e8  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
003cd3ec  00 00 53 e3                                      cmp r3, #0
003cd3f0  3d 00 00 1a                                      bne #0x3cd4ec
003cd3f4  00 50 95 e5                                      ldr r5, [r5]
003cd3f8  05 00 58 e1                                      cmp r8, r5
003cd3fc  eb ff ff 1a                                      bne #0x3cd3b0
003cd400  09 30 9a e7                                      ldr r3, [sl, sb]
003cd404  1c 60 8d e2                                      add r6, sp, #0x1c
003cd408  06 00 a0 e1                                      mov r0, r6
003cd40c  38 30 93 e5                                      ldr r3, [r3, #0x38]
003cd410  08 80 8d e2                                      add r8, sp, #8
003cd414  04 90 88 e2                                      add sb, r8, #4
003cd418  04 40 b3 e5                                      ldr r4, [r3, #4]!
003cd41c  04 b0 89 e2                                      add fp, sb, #4
003cd420  06 70 a0 e1                                      mov r7, r6
003cd424  04 30 8d e5                                      str r3, [sp, #4]
003cd428  37 c8 fd eb                                      bl #0x33f50c
003cd42c  04 30 9d e5                                      ldr r3, [sp, #4]
003cd430  08 00 a0 e1                                      mov r0, r8
003cd434  04 00 53 e1                                      cmp r3, r4
003cd438  29 00 00 0a                                      beq #0x3cd4e4
003cd43c  08 30 94 e5                                      ldr r3, [r4, #8]
003cd440  00 10 53 e2                                      subs r1, r3, #0
003cd444  21 00 00 0a                                      beq #0x3cd4d0
003cd448  37 c2 fd eb                                      bl #0x33dd2c
003cd44c  00 20 98 e5                                      ldr r2, [r8]
003cd450  06 30 a0 e1                                      mov r3, r6
003cd454  00 10 a0 e3                                      mov r1, #0
003cd458  04 20 83 e4                                      str r2, [r3], #4
003cd45c  00 20 99 e5                                      ldr r2, [sb]
003cd460  07 00 a0 e1                                      mov r0, r7
003cd464  04 20 86 e5                                      str r2, [r6, #4]
003cd468  00 20 9b e5                                      ldr r2, [fp]
003cd46c  07 60 a0 e1                                      mov r6, r7
003cd470  04 20 83 e5                                      str r2, [r3, #4]
003cd474  51 ca fd eb                                      bl #0x33fdc0
003cd478  00 00 50 e3                                      cmp r0, #0
003cd47c  07 00 a0 e1                                      mov r0, r7
003cd480  12 00 00 0a                                      beq #0x3cd4d0
003cd484  b2 ca fd eb                                      bl #0x33ff54
003cd488  00 50 50 e2                                      subs r5, r0, #0
003cd48c  0f 00 00 0a                                      beq #0x3cd4d0
003cd490  54 34 95 e5                                      ldr r3, [r5, #0x454]
003cd494  00 00 53 e3                                      cmp r3, #0
003cd498  09 00 00 0a                                      beq #0x3cd4c4
003cd49c  11 ad 85 e2                                      add sl, r5, #0x440
003cd4a0  04 a0 8a e2                                      add sl, sl, #4
003cd4a4  0a 00 a0 e1                                      mov r0, sl
003cd4a8  48 14 95 e5                                      ldr r1, [r5, #0x448]
003cd4ac  a6 ff ff eb                                      bl #0x3cd34c
003cd4b0  00 30 a0 e3                                      mov r3, #0
003cd4b4  50 a4 85 e5                                      str sl, [r5, #0x450]
003cd4b8  4c a4 85 e5                                      str sl, [r5, #0x44c]
003cd4bc  48 34 85 e5                                      str r3, [r5, #0x448]
003cd4c0  54 34 85 e5                                      str r3, [r5, #0x454]
003cd4c4  6c 34 95 e5                                      ldr r3, [r5, #0x46c]
003cd4c8  00 00 53 e3                                      cmp r3, #0
003cd4cc  10 00 00 1a                                      bne #0x3cd514
003cd4d0  00 40 94 e5                                      ldr r4, [r4]
003cd4d4  04 30 9d e5                                      ldr r3, [sp, #4]
003cd4d8  08 00 a0 e1                                      mov r0, r8
003cd4dc  04 00 53 e1                                      cmp r3, r4
003cd4e0  d5 ff ff 1a                                      bne #0x3cd43c
003cd4e4  2c d0 8d e2                                      add sp, sp, #0x2c
003cd4e8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003cd4ec  94 70 84 e2                                      add r7, r4, #0x94
003cd4f0  07 00 a0 e1                                      mov r0, r7
003cd4f4  98 10 94 e5                                      ldr r1, [r4, #0x98]
003cd4f8  93 ff ff eb                                      bl #0x3cd34c
003cd4fc  a0 70 84 e5                                      str r7, [r4, #0xa0]
003cd500  a4 60 84 e5                                      str r6, [r4, #0xa4]
003cd504  9c 70 84 e5                                      str r7, [r4, #0x9c]
003cd508  98 60 84 e5                                      str r6, [r4, #0x98]
003cd50c  00 50 95 e5                                      ldr r5, [r5]
003cd510  b8 ff ff ea                                      b #0x3cd3f8
003cd514  45 ae 85 e2                                      add sl, r5, #0x450
003cd518  0c a0 8a e2                                      add sl, sl, #0xc
003cd51c  0a 00 a0 e1                                      mov r0, sl
003cd520  60 14 95 e5                                      ldr r1, [r5, #0x460]
003cd524  88 ff ff eb                                      bl #0x3cd34c
003cd528  00 30 a0 e3                                      mov r3, #0
003cd52c  68 a4 85 e5                                      str sl, [r5, #0x468]
003cd530  6c 34 85 e5                                      str r3, [r5, #0x46c]
003cd534  64 a4 85 e5                                      str sl, [r5, #0x464]
003cd538  60 34 85 e5                                      str r3, [r5, #0x460]
003cd53c  00 40 94 e5                                      ldr r4, [r4]
003cd540  e3 ff ff ea                                      b #0x3cd4d4
; mapping-symbol data/literal pool
003cd544  fc 76 5c 00 f4 37 00 00                          .byte 0xfc, 0x76, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003cd964, declared_size=508, range_size=508, mode=arm
; class-group: CharAI
; alias: _ZN6CharAID2Ev
; demangled: CharAI::~CharAI()
; decoder-mode: arm
003cd964  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
003cd968  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
003cd96c  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
003cd970  03 30 8f e0                                      add r3, pc, r3
003cd974  70 40 2d e9                                      push {r4, r5, r6, lr}
003cd978  02 20 93 e7                                      ldr r2, [r3, r2]
003cd97c  01 10 93 e7                                      ldr r1, [r3, r1]
003cd980  00 40 a0 e1                                      mov r4, r0
003cd984  08 20 82 e2                                      add r2, r2, #8
003cd988  00 20 80 e5                                      str r2, [r0]
003cd98c  0c e0 91 e5                                      ldr lr, [r1, #0xc]
003cd990  04 c0 91 e5                                      ldr ip, [r1, #4]
003cd994  08 30 91 e5                                      ldr r3, [r1, #8]
003cd998  00 20 91 e5                                      ldr r2, [r1]
003cd99c  10 00 91 e5                                      ldr r0, [r1, #0x10]
003cd9a0  20 d0 4d e2                                      sub sp, sp, #0x20
003cd9a4  02 00 50 e1                                      cmp r0, r2
003cd9a8  17 00 00 0a                                      beq #0x3cda0c
003cd9ac  00 10 92 e5                                      ldr r1, [r2]
003cd9b0  01 00 54 e1                                      cmp r4, r1
003cd9b4  0e 00 00 0a                                      beq #0x3cd9f4
003cd9b8  04 20 82 e2                                      add r2, r2, #4
003cd9bc  03 00 52 e1                                      cmp r2, r3
003cd9c0  07 00 00 0a                                      beq #0x3cd9e4
003cd9c4  02 00 50 e1                                      cmp r0, r2
003cd9c8  0f 00 00 0a                                      beq #0x3cda0c
003cd9cc  00 10 92 e5                                      ldr r1, [r2]
003cd9d0  01 00 54 e1                                      cmp r4, r1
003cd9d4  06 00 00 0a                                      beq #0x3cd9f4
003cd9d8  04 20 82 e2                                      add r2, r2, #4
003cd9dc  02 00 53 e1                                      cmp r3, r2
003cd9e0  f7 ff ff 1a                                      bne #0x3cd9c4
003cd9e4  04 c0 be e5                                      ldr ip, [lr, #4]!
003cd9e8  80 30 8c e2                                      add r3, ip, #0x80
003cd9ec  0c 20 a0 e1                                      mov r2, ip
003cd9f0  eb ff ff ea                                      b #0x3cd9a4
003cd9f4  10 00 8d e2                                      add r0, sp, #0x10
003cd9f8  0d 10 a0 e1                                      mov r1, sp
003cd9fc  0c e0 8d e5                                      str lr, [sp, #0xc]
003cda00  08 30 8d e5                                      str r3, [sp, #8]
003cda04  04 10 8d e8                                      stm sp, {r2, ip}
003cda08  54 fb ff eb                                      bl #0x3cc760
003cda0c  04 00 a0 e1                                      mov r0, r4
003cda10  e9 0d 00 eb                                      bl #0x3d11bc
003cda14  04 00 a0 e1                                      mov r0, r4
003cda18  01 10 a0 e3                                      mov r1, #1
003cda1c  ee fb ff eb                                      bl #0x3cc9dc
003cda20  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
003cda24  c0 30 84 e2                                      add r3, r4, #0xc0
003cda28  00 00 50 e3                                      cmp r0, #0
003cda2c  05 00 00 0a                                      beq #0x3cda48
003cda30  08 10 93 e5                                      ldr r1, [r3, #8]
003cda34  01 10 60 e0                                      rsb r1, r0, r1
003cda38  03 10 c1 e3                                      bic r1, r1, #3
003cda3c  80 00 51 e3                                      cmp r1, #0x80
003cda40  41 00 00 8a                                      bhi #0x3cdb4c
003cda44  2d ed 0c eb                                      bl #0x708f00
003cda48  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
003cda4c  b4 30 84 e2                                      add r3, r4, #0xb4
003cda50  00 00 50 e3                                      cmp r0, #0
003cda54  05 00 00 0a                                      beq #0x3cda70
003cda58  08 10 93 e5                                      ldr r1, [r3, #8]
003cda5c  01 10 60 e0                                      rsb r1, r0, r1
003cda60  03 10 c1 e3                                      bic r1, r1, #3
003cda64  80 00 51 e3                                      cmp r1, #0x80
003cda68  35 00 00 8a                                      bhi #0x3cdb44
003cda6c  23 ed 0c eb                                      bl #0x708f00
003cda70  ac 00 94 e5                                      ldr r0, [r4, #0xac]
003cda74  ac 60 84 e2                                      add r6, r4, #0xac
003cda78  06 00 50 e1                                      cmp r0, r6
003cda7c  01 00 00 1a                                      bne #0x3cda88
003cda80  06 00 00 ea                                      b #0x3cdaa0
003cda84  05 00 a0 e1                                      mov r0, r5
003cda88  00 50 90 e5                                      ldr r5, [r0]
003cda8c  18 10 a0 e3                                      mov r1, #0x18
003cda90  1a ed 0c eb                                      bl #0x708f00
003cda94  06 00 55 e1                                      cmp r5, r6
003cda98  f9 ff ff 1a                                      bne #0x3cda84
003cda9c  06 00 a0 e1                                      mov r0, r6
003cdaa0  ac 00 84 e5                                      str r0, [r4, #0xac]
003cdaa4  04 00 86 e5                                      str r0, [r6, #4]
003cdaa8  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
003cdaac  00 00 53 e3                                      cmp r3, #0
003cdab0  08 00 00 0a                                      beq #0x3cdad8
003cdab4  94 50 84 e2                                      add r5, r4, #0x94
003cdab8  05 00 a0 e1                                      mov r0, r5
003cdabc  98 10 94 e5                                      ldr r1, [r4, #0x98]
003cdac0  21 fe ff eb                                      bl #0x3cd34c
003cdac4  00 30 a0 e3                                      mov r3, #0
003cdac8  a0 50 84 e5                                      str r5, [r4, #0xa0]
003cdacc  a4 30 84 e5                                      str r3, [r4, #0xa4]
003cdad0  9c 50 84 e5                                      str r5, [r4, #0x9c]
003cdad4  98 30 84 e5                                      str r3, [r4, #0x98]
003cdad8  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003cdadc  00 00 53 e3                                      cmp r3, #0
003cdae0  08 00 00 0a                                      beq #0x3cdb08
003cdae4  7c 50 84 e2                                      add r5, r4, #0x7c
003cdae8  05 00 a0 e1                                      mov r0, r5
003cdaec  80 10 94 e5                                      ldr r1, [r4, #0x80]
003cdaf0  15 fe ff eb                                      bl #0x3cd34c
003cdaf4  00 30 a0 e3                                      mov r3, #0
003cdaf8  88 50 84 e5                                      str r5, [r4, #0x88]
003cdafc  8c 30 84 e5                                      str r3, [r4, #0x8c]
003cdb00  84 50 84 e5                                      str r5, [r4, #0x84]
003cdb04  80 30 84 e5                                      str r3, [r4, #0x80]
003cdb08  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
003cdb0c  00 00 53 e3                                      cmp r3, #0
003cdb10  08 00 00 0a                                      beq #0x3cdb38
003cdb14  5c 50 84 e2                                      add r5, r4, #0x5c
003cdb18  05 00 a0 e1                                      mov r0, r5
003cdb1c  60 10 94 e5                                      ldr r1, [r4, #0x60]
003cdb20  89 fe ff eb                                      bl #0x3cd54c
003cdb24  00 30 a0 e3                                      mov r3, #0
003cdb28  68 50 84 e5                                      str r5, [r4, #0x68]
003cdb2c  6c 30 84 e5                                      str r3, [r4, #0x6c]
003cdb30  64 50 84 e5                                      str r5, [r4, #0x64]
003cdb34  60 30 84 e5                                      str r3, [r4, #0x60]
003cdb38  04 00 a0 e1                                      mov r0, r4
003cdb3c  20 d0 8d e2                                      add sp, sp, #0x20
003cdb40  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cdb44  3d 0a fd eb                                      bl #0x310440
003cdb48  c8 ff ff ea                                      b #0x3cda70
003cdb4c  3b 0a fd eb                                      bl #0x310440
003cdb50  bc ff ff ea                                      b #0x3cda48
; mapping-symbol data/literal pool
003cdb54  20 71 5c 00 4c 46 00 00 ac 49 00 00              .byte 0x20, 0x71, 0x5c, 0x00, 0x4c, 0x46, 0x00, 0x00, 0xac, 0x49, 0x00, 0x00

; FUNCTION 0x003cdb60, declared_size=508, range_size=508, mode=arm
; class-group: CharAI
; alias: _ZN6CharAID1Ev
; demangled: CharAI::~CharAI()
; decoder-mode: arm
003cdb60  e8 31 9f e5                                      ldr r3, [pc, #0x1e8]
003cdb64  e8 21 9f e5                                      ldr r2, [pc, #0x1e8]
003cdb68  e8 11 9f e5                                      ldr r1, [pc, #0x1e8]
003cdb6c  03 30 8f e0                                      add r3, pc, r3
003cdb70  70 40 2d e9                                      push {r4, r5, r6, lr}
003cdb74  02 20 93 e7                                      ldr r2, [r3, r2]
003cdb78  01 10 93 e7                                      ldr r1, [r3, r1]
003cdb7c  00 40 a0 e1                                      mov r4, r0
003cdb80  08 20 82 e2                                      add r2, r2, #8
003cdb84  00 20 80 e5                                      str r2, [r0]
003cdb88  0c e0 91 e5                                      ldr lr, [r1, #0xc]
003cdb8c  04 c0 91 e5                                      ldr ip, [r1, #4]
003cdb90  08 30 91 e5                                      ldr r3, [r1, #8]
003cdb94  00 20 91 e5                                      ldr r2, [r1]
003cdb98  10 00 91 e5                                      ldr r0, [r1, #0x10]
003cdb9c  20 d0 4d e2                                      sub sp, sp, #0x20
003cdba0  02 00 50 e1                                      cmp r0, r2
003cdba4  17 00 00 0a                                      beq #0x3cdc08
003cdba8  00 10 92 e5                                      ldr r1, [r2]
003cdbac  01 00 54 e1                                      cmp r4, r1
003cdbb0  0e 00 00 0a                                      beq #0x3cdbf0
003cdbb4  04 20 82 e2                                      add r2, r2, #4
003cdbb8  03 00 52 e1                                      cmp r2, r3
003cdbbc  07 00 00 0a                                      beq #0x3cdbe0
003cdbc0  02 00 50 e1                                      cmp r0, r2
003cdbc4  0f 00 00 0a                                      beq #0x3cdc08
003cdbc8  00 10 92 e5                                      ldr r1, [r2]
003cdbcc  01 00 54 e1                                      cmp r4, r1
003cdbd0  06 00 00 0a                                      beq #0x3cdbf0
003cdbd4  04 20 82 e2                                      add r2, r2, #4
003cdbd8  02 00 53 e1                                      cmp r3, r2
003cdbdc  f7 ff ff 1a                                      bne #0x3cdbc0
003cdbe0  04 c0 be e5                                      ldr ip, [lr, #4]!
003cdbe4  80 30 8c e2                                      add r3, ip, #0x80
003cdbe8  0c 20 a0 e1                                      mov r2, ip
003cdbec  eb ff ff ea                                      b #0x3cdba0
003cdbf0  10 00 8d e2                                      add r0, sp, #0x10
003cdbf4  0d 10 a0 e1                                      mov r1, sp
003cdbf8  0c e0 8d e5                                      str lr, [sp, #0xc]
003cdbfc  08 30 8d e5                                      str r3, [sp, #8]
003cdc00  04 10 8d e8                                      stm sp, {r2, ip}
003cdc04  d5 fa ff eb                                      bl #0x3cc760
003cdc08  04 00 a0 e1                                      mov r0, r4
003cdc0c  6a 0d 00 eb                                      bl #0x3d11bc
003cdc10  04 00 a0 e1                                      mov r0, r4
003cdc14  01 10 a0 e3                                      mov r1, #1
003cdc18  6f fb ff eb                                      bl #0x3cc9dc
003cdc1c  c0 00 94 e5                                      ldr r0, [r4, #0xc0]
003cdc20  c0 30 84 e2                                      add r3, r4, #0xc0
003cdc24  00 00 50 e3                                      cmp r0, #0
003cdc28  05 00 00 0a                                      beq #0x3cdc44
003cdc2c  08 10 93 e5                                      ldr r1, [r3, #8]
003cdc30  01 10 60 e0                                      rsb r1, r0, r1
003cdc34  03 10 c1 e3                                      bic r1, r1, #3
003cdc38  80 00 51 e3                                      cmp r1, #0x80
003cdc3c  41 00 00 8a                                      bhi #0x3cdd48
003cdc40  ae ec 0c eb                                      bl #0x708f00
003cdc44  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
003cdc48  b4 30 84 e2                                      add r3, r4, #0xb4
003cdc4c  00 00 50 e3                                      cmp r0, #0
003cdc50  05 00 00 0a                                      beq #0x3cdc6c
003cdc54  08 10 93 e5                                      ldr r1, [r3, #8]
003cdc58  01 10 60 e0                                      rsb r1, r0, r1
003cdc5c  03 10 c1 e3                                      bic r1, r1, #3
003cdc60  80 00 51 e3                                      cmp r1, #0x80
003cdc64  35 00 00 8a                                      bhi #0x3cdd40
003cdc68  a4 ec 0c eb                                      bl #0x708f00
003cdc6c  ac 00 94 e5                                      ldr r0, [r4, #0xac]
003cdc70  ac 60 84 e2                                      add r6, r4, #0xac
003cdc74  06 00 50 e1                                      cmp r0, r6
003cdc78  01 00 00 1a                                      bne #0x3cdc84
003cdc7c  06 00 00 ea                                      b #0x3cdc9c
003cdc80  05 00 a0 e1                                      mov r0, r5
003cdc84  00 50 90 e5                                      ldr r5, [r0]
003cdc88  18 10 a0 e3                                      mov r1, #0x18
003cdc8c  9b ec 0c eb                                      bl #0x708f00
003cdc90  06 00 55 e1                                      cmp r5, r6
003cdc94  f9 ff ff 1a                                      bne #0x3cdc80
003cdc98  06 00 a0 e1                                      mov r0, r6
003cdc9c  ac 00 84 e5                                      str r0, [r4, #0xac]
003cdca0  04 00 86 e5                                      str r0, [r6, #4]
003cdca4  a4 30 94 e5                                      ldr r3, [r4, #0xa4]
003cdca8  00 00 53 e3                                      cmp r3, #0
003cdcac  08 00 00 0a                                      beq #0x3cdcd4
003cdcb0  94 50 84 e2                                      add r5, r4, #0x94
003cdcb4  05 00 a0 e1                                      mov r0, r5
003cdcb8  98 10 94 e5                                      ldr r1, [r4, #0x98]
003cdcbc  a2 fd ff eb                                      bl #0x3cd34c
003cdcc0  00 30 a0 e3                                      mov r3, #0
003cdcc4  a0 50 84 e5                                      str r5, [r4, #0xa0]
003cdcc8  a4 30 84 e5                                      str r3, [r4, #0xa4]
003cdccc  9c 50 84 e5                                      str r5, [r4, #0x9c]
003cdcd0  98 30 84 e5                                      str r3, [r4, #0x98]
003cdcd4  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003cdcd8  00 00 53 e3                                      cmp r3, #0
003cdcdc  08 00 00 0a                                      beq #0x3cdd04
003cdce0  7c 50 84 e2                                      add r5, r4, #0x7c
003cdce4  05 00 a0 e1                                      mov r0, r5
003cdce8  80 10 94 e5                                      ldr r1, [r4, #0x80]
003cdcec  96 fd ff eb                                      bl #0x3cd34c
003cdcf0  00 30 a0 e3                                      mov r3, #0
003cdcf4  88 50 84 e5                                      str r5, [r4, #0x88]
003cdcf8  8c 30 84 e5                                      str r3, [r4, #0x8c]
003cdcfc  84 50 84 e5                                      str r5, [r4, #0x84]
003cdd00  80 30 84 e5                                      str r3, [r4, #0x80]
003cdd04  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
003cdd08  00 00 53 e3                                      cmp r3, #0
003cdd0c  08 00 00 0a                                      beq #0x3cdd34
003cdd10  5c 50 84 e2                                      add r5, r4, #0x5c
003cdd14  05 00 a0 e1                                      mov r0, r5
003cdd18  60 10 94 e5                                      ldr r1, [r4, #0x60]
003cdd1c  0a fe ff eb                                      bl #0x3cd54c
003cdd20  00 30 a0 e3                                      mov r3, #0
003cdd24  68 50 84 e5                                      str r5, [r4, #0x68]
003cdd28  6c 30 84 e5                                      str r3, [r4, #0x6c]
003cdd2c  64 50 84 e5                                      str r5, [r4, #0x64]
003cdd30  60 30 84 e5                                      str r3, [r4, #0x60]
003cdd34  04 00 a0 e1                                      mov r0, r4
003cdd38  20 d0 8d e2                                      add sp, sp, #0x20
003cdd3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cdd40  be 09 fd eb                                      bl #0x310440
003cdd44  c8 ff ff ea                                      b #0x3cdc6c
003cdd48  bc 09 fd eb                                      bl #0x310440
003cdd4c  bc ff ff ea                                      b #0x3cdc44
; mapping-symbol data/literal pool
003cdd50  24 6f 5c 00 4c 46 00 00 ac 49 00 00              .byte 0x24, 0x6f, 0x5c, 0x00, 0x4c, 0x46, 0x00, 0x00, 0xac, 0x49, 0x00, 0x00

; FUNCTION 0x003cdd5c, declared_size=28, range_size=28, mode=arm
; class-group: CharAI
; alias: _ZN6CharAID0Ev
; demangled: CharAI::~CharAI()
; decoder-mode: arm
003cdd5c  10 40 2d e9                                      push {r4, lr}
003cdd60  00 40 a0 e1                                      mov r4, r0
003cdd64  7d ff ff eb                                      bl #0x3cdb60
003cdd68  04 00 a0 e1                                      mov r0, r4
003cdd6c  b3 09 fd eb                                      bl #0x310440
003cdd70  04 00 a0 e1                                      mov r0, r4
003cdd74  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003cdf7c, declared_size=200, range_size=200, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14StepLoadScriptEv
; demangled: CharAI::StepLoadScript()
; decoder-mode: arm
003cdf7c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003cdf80  ac 40 9f e5                                      ldr r4, [pc, #0xac]
003cdf84  ac 60 9f e5                                      ldr r6, [pc, #0xac]
003cdf88  30 10 90 e5                                      ldr r1, [r0, #0x30]
003cdf8c  04 40 8f e0                                      add r4, pc, r4
003cdf90  06 30 94 e7                                      ldr r3, [r4, r6]
003cdf94  24 d0 4d e2                                      sub sp, sp, #0x24
003cdf98  00 00 51 e3                                      cmp r1, #0
003cdf9c  00 30 93 e5                                      ldr r3, [r3]
003cdfa0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003cdfa4  18 00 00 0a                                      beq #0x3ce00c
003cdfa8  20 00 90 e5                                      ldr r0, [r0, #0x20]
003cdfac  70 b5 fe eb                                      bl #0x37b574
003cdfb0  84 30 9f e5                                      ldr r3, [pc, #0x84]
003cdfb4  04 50 8d e2                                      add r5, sp, #4
003cdfb8  03 70 94 e7                                      ldr r7, [r4, r3]
003cdfbc  07 00 a0 e1                                      mov r0, r7
003cdfc0  30 a6 fd eb                                      bl #0x337888
003cdfc4  74 10 9f e5                                      ldr r1, [pc, #0x74]
003cdfc8  0d 20 a0 e1                                      mov r2, sp
003cdfcc  05 00 a0 e1                                      mov r0, r5
003cdfd0  01 10 8f e0                                      add r1, pc, r1
003cdfd4  44 18 fd eb                                      bl #0x3140ec
003cdfd8  07 00 a0 e1                                      mov r0, r7
003cdfdc  05 10 a0 e1                                      mov r1, r5
003cdfe0  a8 a6 fd eb                                      bl #0x337a88
003cdfe4  18 00 9d e5                                      ldr r0, [sp, #0x18]
003cdfe8  05 00 50 e1                                      cmp r0, r5
003cdfec  06 00 00 0a                                      beq #0x3ce00c
003cdff0  00 00 50 e3                                      cmp r0, #0
003cdff4  04 00 00 0a                                      beq #0x3ce00c
003cdff8  04 10 9d e5                                      ldr r1, [sp, #4]
003cdffc  01 10 60 e0                                      rsb r1, r0, r1
003ce000  80 00 51 e3                                      cmp r1, #0x80
003ce004  07 00 00 8a                                      bhi #0x3ce028
003ce008  bc eb 0c eb                                      bl #0x708f00
003ce00c  06 30 94 e7                                      ldr r3, [r4, r6]
003ce010  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003ce014  00 30 93 e5                                      ldr r3, [r3]
003ce018  03 00 52 e1                                      cmp r2, r3
003ce01c  03 00 00 1a                                      bne #0x3ce030
003ce020  24 d0 8d e2                                      add sp, sp, #0x24
003ce024  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003ce028  04 09 fd eb                                      bl #0x310440
003ce02c  f6 ff ff ea                                      b #0x3ce00c
003ce030  b6 00 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003ce034  04 6b 5c 00 ac 40 00 00 84 08 00 00 88 73 4f 00  .byte 0x04, 0x6b, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x88, 0x73, 0x4f, 0x00

; FUNCTION 0x003ce044, declared_size=1916, range_size=1916, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18SetSkillsAndSpellsEv
; demangled: CharAI::SetSkillsAndSpells()
; decoder-mode: arm
003ce044  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003ce048  14 67 9f e5                                      ldr r6, [pc, #0x714]
003ce04c  14 27 9f e5                                      ldr r2, [pc, #0x714]
003ce050  a4 d0 4d e2                                      sub sp, sp, #0xa4
003ce054  06 60 8f e0                                      add r6, pc, r6
003ce058  14 20 8d e5                                      str r2, [sp, #0x14]
003ce05c  02 20 96 e7                                      ldr r2, [r6, r2]
003ce060  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003ce064  00 40 a0 e1                                      mov r4, r0
003ce068  00 20 92 e5                                      ldr r2, [r2]
003ce06c  00 00 53 e3                                      cmp r3, #0
003ce070  9c 20 8d e5                                      str r2, [sp, #0x9c]
003ce074  8c 01 00 0a                                      beq #0x3ce6ac
003ce078  ec b6 9f e5                                      ldr fp, [pc, #0x6ec]
003ce07c  84 50 8d e2                                      add r5, sp, #0x84
003ce080  0b 70 96 e7                                      ldr r7, [r6, fp]
003ce084  07 00 a0 e1                                      mov r0, r7
003ce088  fe a5 fd eb                                      bl #0x337888
003ce08c  dc 16 9f e5                                      ldr r1, [pc, #0x6dc]
003ce090  50 20 8d e2                                      add r2, sp, #0x50
003ce094  05 00 a0 e1                                      mov r0, r5
003ce098  01 10 8f e0                                      add r1, pc, r1
003ce09c  12 18 fd eb                                      bl #0x3140ec
003ce0a0  07 00 a0 e1                                      mov r0, r7
003ce0a4  05 10 a0 e1                                      mov r1, r5
003ce0a8  76 a6 fd eb                                      bl #0x337a88
003ce0ac  98 00 9d e5                                      ldr r0, [sp, #0x98]
003ce0b0  05 00 50 e1                                      cmp r0, r5
003ce0b4  06 00 00 0a                                      beq #0x3ce0d4
003ce0b8  00 00 50 e3                                      cmp r0, #0
003ce0bc  04 00 00 0a                                      beq #0x3ce0d4
003ce0c0  84 10 9d e5                                      ldr r1, [sp, #0x84]
003ce0c4  01 10 60 e0                                      rsb r1, r0, r1
003ce0c8  80 00 51 e3                                      cmp r1, #0x80
003ce0cc  70 01 00 8a                                      bhi #0x3ce694
003ce0d0  8a eb 0c eb                                      bl #0x708f00
003ce0d4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003ce0d8  6c 80 8d e2                                      add r8, sp, #0x6c
003ce0dc  7c 80 8d e5                                      str r8, [sp, #0x7c]
003ce0e0  80 80 8d e5                                      str r8, [sp, #0x80]
003ce0e4  78 20 93 e5                                      ldr r2, [r3, #0x78]
003ce0e8  7c 10 93 e5                                      ldr r1, [r3, #0x7c]
003ce0ec  08 00 a0 e1                                      mov r0, r8
003ce0f0  7c 0d fd eb                                      bl #0x3116e8
003ce0f4  78 16 9f e5                                      ldr r1, [pc, #0x678]
003ce0f8  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce0fc  01 10 8f e0                                      add r1, pc, r1
003ce100  68 00 80 e2                                      add r0, r0, #0x68
003ce104  14 20 81 e2                                      add r2, r1, #0x14
003ce108  34 0a fd eb                                      bl #0x3109e0
003ce10c  b8 50 94 e5                                      ldr r5, [r4, #0xb8]
003ce110  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003ce114  05 50 63 e0                                      rsb r5, r3, r5
003ce118  45 51 b0 e1                                      asrs r5, r5, #2
003ce11c  c9 00 00 0a                                      beq #0x3ce448
003ce120  c4 50 94 e5                                      ldr r5, [r4, #0xc4]
003ce124  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003ce128  05 50 63 e0                                      rsb r5, r3, r5
003ce12c  45 51 b0 e1                                      asrs r5, r5, #2
003ce130  33 00 00 0a                                      beq #0x3ce204
003ce134  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce138  68 00 80 e2                                      add r0, r0, #0x68
003ce13c  08 00 50 e1                                      cmp r0, r8
003ce140  02 00 00 0a                                      beq #0x3ce150
003ce144  80 10 9d e5                                      ldr r1, [sp, #0x80]
003ce148  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003ce14c  23 0a fd eb                                      bl #0x3109e0
003ce150  0b 70 96 e7                                      ldr r7, [r6, fp]
003ce154  54 50 8d e2                                      add r5, sp, #0x54
003ce158  07 00 a0 e1                                      mov r0, r7
003ce15c  c9 a5 fd eb                                      bl #0x337888
003ce160  10 16 9f e5                                      ldr r1, [pc, #0x610]
003ce164  4c 20 8d e2                                      add r2, sp, #0x4c
003ce168  05 00 a0 e1                                      mov r0, r5
003ce16c  01 10 8f e0                                      add r1, pc, r1
003ce170  dd 17 fd eb                                      bl #0x3140ec
003ce174  07 00 a0 e1                                      mov r0, r7
003ce178  05 10 a0 e1                                      mov r1, r5
003ce17c  41 a6 fd eb                                      bl #0x337a88
003ce180  68 00 9d e5                                      ldr r0, [sp, #0x68]
003ce184  05 00 50 e1                                      cmp r0, r5
003ce188  06 00 00 0a                                      beq #0x3ce1a8
003ce18c  00 00 50 e3                                      cmp r0, #0
003ce190  04 00 00 0a                                      beq #0x3ce1a8
003ce194  54 10 9d e5                                      ldr r1, [sp, #0x54]
003ce198  01 10 60 e0                                      rsb r1, r0, r1
003ce19c  80 00 51 e3                                      cmp r1, #0x80
003ce1a0  3d 01 00 8a                                      bhi #0x3ce69c
003ce1a4  55 eb 0c eb                                      bl #0x708f00
003ce1a8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003ce1ac  03 00 a0 e1                                      mov r0, r3
003ce1b0  00 30 93 e5                                      ldr r3, [r3]
003ce1b4  0f e0 a0 e1                                      mov lr, pc
003ce1b8  cc f0 93 e5                                      ldr pc, [r3, #0xcc]
003ce1bc  80 00 9d e5                                      ldr r0, [sp, #0x80]
003ce1c0  08 00 50 e1                                      cmp r0, r8
003ce1c4  06 00 00 0a                                      beq #0x3ce1e4
003ce1c8  00 00 50 e3                                      cmp r0, #0
003ce1cc  04 00 00 0a                                      beq #0x3ce1e4
003ce1d0  6c 10 9d e5                                      ldr r1, [sp, #0x6c]
003ce1d4  01 10 60 e0                                      rsb r1, r0, r1
003ce1d8  80 00 51 e3                                      cmp r1, #0x80
003ce1dc  30 01 00 8a                                      bhi #0x3ce6a4
003ce1e0  46 eb 0c eb                                      bl #0x708f00
003ce1e4  14 20 9d e5                                      ldr r2, [sp, #0x14]
003ce1e8  02 30 96 e7                                      ldr r3, [r6, r2]
003ce1ec  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
003ce1f0  00 30 93 e5                                      ldr r3, [r3]
003ce1f4  03 00 52 e1                                      cmp r2, r3
003ce1f8  58 01 00 1a                                      bne #0x3ce760
003ce1fc  a4 d0 8d e2                                      add sp, sp, #0xa4
003ce200  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003ce204  c0 20 84 e2                                      add r2, r4, #0xc0
003ce208  04 00 94 e5                                      ldr r0, [r4, #4]
003ce20c  18 20 8d e5                                      str r2, [sp, #0x18]
003ce210  f1 80 ff eb                                      bl #0x3ae5dc
003ce214  2c 90 8d e2                                      add sb, sp, #0x2c
003ce218  04 10 90 e5                                      ldr r1, [r0, #4]
003ce21c  00 70 a0 e1                                      mov r7, r0
003ce220  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce224  d6 fc ff eb                                      bl #0x3cd584
003ce228  09 00 a0 e1                                      mov r0, sb
003ce22c  20 2c fd eb                                      bl #0x3192b4
003ce230  44 15 9f e5                                      ldr r1, [pc, #0x544]
003ce234  09 00 a0 e1                                      mov r0, sb
003ce238  01 10 8f e0                                      add r1, pc, r1
003ce23c  73 42 ff eb                                      bl #0x39ec10
003ce240  09 00 a0 e1                                      mov r0, sb
003ce244  00 10 e0 e3                                      mvn r1, #0
003ce248  ca fe ff eb                                      bl #0x3cdd78
003ce24c  04 30 97 e5                                      ldr r3, [r7, #4]
003ce250  00 00 53 e3                                      cmp r3, #0
003ce254  6e 00 00 0a                                      beq #0x3ce414
003ce258  20 35 9f e5                                      ldr r3, [pc, #0x520]
003ce25c  24 60 8d e5                                      str r6, [sp, #0x24]
003ce260  08 a0 a0 e1                                      mov sl, r8
003ce264  20 30 8d e5                                      str r3, [sp, #0x20]
003ce268  14 35 9f e5                                      ldr r3, [pc, #0x514]
003ce26c  03 30 8f e0                                      add r3, pc, r3
003ce270  08 30 8d e5                                      str r3, [sp, #8]
003ce274  0c 35 9f e5                                      ldr r3, [pc, #0x50c]
003ce278  03 30 8f e0                                      add r3, pc, r3
003ce27c  0c 30 8d e5                                      str r3, [sp, #0xc]
003ce280  04 35 9f e5                                      ldr r3, [pc, #0x504]
003ce284  03 30 8f e0                                      add r3, pc, r3
003ce288  10 30 8d e5                                      str r3, [sp, #0x10]
003ce28c  fc 34 9f e5                                      ldr r3, [pc, #0x4fc]
003ce290  03 30 8f e0                                      add r3, pc, r3
003ce294  1c 30 8d e5                                      str r3, [sp, #0x1c]
003ce298  47 00 00 ea                                      b #0x3ce3bc
003ce29c  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce2a0  08 10 9d e5                                      ldr r1, [sp, #8]
003ce2a4  b2 b4 fe eb                                      bl #0x37b574
003ce2a8  30 60 9d e5                                      ldr r6, [sp, #0x30]
003ce2ac  09 00 96 e8                                      ldm r6, {r0, r3}
003ce2b0  03 30 60 e0                                      rsb r3, r0, r3
003ce2b4  43 32 a0 e1                                      asr r3, r3, #4
003ce2b8  83 21 83 e0                                      add r2, r3, r3, lsl #3
003ce2bc  02 23 82 e0                                      add r2, r2, r2, lsl #6
003ce2c0  82 21 83 e0                                      add r2, r3, r2, lsl #3
003ce2c4  82 27 82 e0                                      add r2, r2, r2, lsl #15
003ce2c8  82 21 83 e0                                      add r2, r3, r2, lsl #3
003ce2cc  00 00 52 e3                                      cmp r2, #0
003ce2d0  03 00 00 1a                                      bne #0x3ce2e4
003ce2d4  20 20 9d e5                                      ldr r2, [sp, #0x20]
003ce2d8  02 00 8f e0                                      add r0, pc, r2
003ce2dc  f3 ea 0c eb                                      bl #0x708eb0
003ce2e0  00 00 96 e5                                      ldr r0, [r6]
003ce2e4  18 10 98 e5                                      ldr r1, [r8, #0x18]
003ce2e8  5f 38 fd eb                                      bl #0x31c46c
003ce2ec  30 60 9d e5                                      ldr r6, [sp, #0x30]
003ce2f0  09 00 96 e8                                      ldm r6, {r0, r3}
003ce2f4  03 30 60 e0                                      rsb r3, r0, r3
003ce2f8  43 32 a0 e1                                      asr r3, r3, #4
003ce2fc  83 21 83 e0                                      add r2, r3, r3, lsl #3
003ce300  02 23 82 e0                                      add r2, r2, r2, lsl #6
003ce304  82 21 83 e0                                      add r2, r3, r2, lsl #3
003ce308  82 27 82 e0                                      add r2, r2, r2, lsl #15
003ce30c  82 21 83 e0                                      add r2, r3, r2, lsl #3
003ce310  00 20 62 e2                                      rsb r2, r2, #0
003ce314  01 00 52 e3                                      cmp r2, #1
003ce318  02 00 00 8a                                      bhi #0x3ce328
003ce31c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003ce320  e2 ea 0c eb                                      bl #0x708eb0
003ce324  00 00 96 e5                                      ldr r0, [r6]
003ce328  bf 14 a0 e3                                      mov r1, #0xbf000000
003ce32c  70 00 80 e2                                      add r0, r0, #0x70
003ce330  02 15 81 e2                                      add r1, r1, #0x800000
003ce334  ab 34 fd eb                                      bl #0x31b5e8
003ce338  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce33c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003ce340  09 20 a0 e1                                      mov r2, sb
003ce344  34 b8 fe eb                                      bl #0x37c41c
003ce348  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce34c  18 10 98 e5                                      ldr r1, [r8, #0x18]
003ce350  87 b4 fe eb                                      bl #0x37b574
003ce354  00 00 50 e3                                      cmp r0, #0
003ce358  30 00 00 0a                                      beq #0x3ce420
003ce35c  00 10 a0 e3                                      mov r1, #0
003ce360  1c 00 a0 e3                                      mov r0, #0x1c
003ce364  81 08 fd eb                                      bl #0x310570
003ce368  04 10 94 e5                                      ldr r1, [r4, #4]
003ce36c  00 30 e0 e3                                      mvn r3, #0
003ce370  18 20 98 e5                                      ldr r2, [r8, #0x18]
003ce374  00 60 a0 e1                                      mov r6, r0
003ce378  ab fe ff eb                                      bl #0x3cde2c
003ce37c  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
003ce380  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
003ce384  3c 60 8d e5                                      str r6, [sp, #0x3c]
003ce388  03 00 51 e1                                      cmp r1, r3
003ce38c  e7 00 00 0a                                      beq #0x3ce730
003ce390  00 60 81 e5                                      str r6, [r1]
003ce394  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
003ce398  04 30 83 e2                                      add r3, r3, #4
003ce39c  c4 30 84 e5                                      str r3, [r4, #0xc4]
003ce3a0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce3a4  10 10 9d e5                                      ldr r1, [sp, #0x10]
003ce3a8  59 b8 fe eb                                      bl #0x37c514
003ce3ac  04 30 97 e5                                      ldr r3, [r7, #4]
003ce3b0  01 50 85 e2                                      add r5, r5, #1
003ce3b4  05 00 53 e1                                      cmp r3, r5
003ce3b8  13 00 00 9a                                      bls #0x3ce40c
003ce3bc  04 00 94 e5                                      ldr r0, [r4, #4]
003ce3c0  05 10 a0 e1                                      mov r1, r5
003ce3c4  bd 81 ff eb                                      bl #0x3aeac0
003ce3c8  14 30 90 e5                                      ldr r3, [r0, #0x14]
003ce3cc  00 80 a0 e1                                      mov r8, r0
003ce3d0  00 00 53 e3                                      cmp r3, #0
003ce3d4  b0 ff ff 1a                                      bne #0x3ce29c
003ce3d8  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
003ce3dc  c8 20 94 e5                                      ldr r2, [r4, #0xc8]
003ce3e0  34 30 8d e5                                      str r3, [sp, #0x34]
003ce3e4  02 00 51 e1                                      cmp r1, r2
003ce3e8  c4 00 00 0a                                      beq #0x3ce700
003ce3ec  00 30 81 e5                                      str r3, [r1]
003ce3f0  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
003ce3f4  01 50 85 e2                                      add r5, r5, #1
003ce3f8  04 30 83 e2                                      add r3, r3, #4
003ce3fc  c4 30 84 e5                                      str r3, [r4, #0xc4]
003ce400  04 30 97 e5                                      ldr r3, [r7, #4]
003ce404  05 00 53 e1                                      cmp r3, r5
003ce408  eb ff ff 8a                                      bhi #0x3ce3bc
003ce40c  24 60 9d e5                                      ldr r6, [sp, #0x24]
003ce410  0a 80 a0 e1                                      mov r8, sl
003ce414  09 00 a0 e1                                      mov r0, sb
003ce418  82 2b fd eb                                      bl #0x319228
003ce41c  44 ff ff ea                                      b #0x3ce134
003ce420  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
003ce424  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
003ce428  38 00 8d e5                                      str r0, [sp, #0x38]
003ce42c  03 00 51 e1                                      cmp r1, r3
003ce430  c6 00 00 0a                                      beq #0x3ce750
003ce434  00 00 81 e5                                      str r0, [r1]
003ce438  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
003ce43c  04 30 83 e2                                      add r3, r3, #4
003ce440  c4 30 84 e5                                      str r3, [r4, #0xc4]
003ce444  d5 ff ff ea                                      b #0x3ce3a0
003ce448  b4 30 84 e2                                      add r3, r4, #0xb4
003ce44c  04 00 94 e5                                      ldr r0, [r4, #4]
003ce450  18 30 8d e5                                      str r3, [sp, #0x18]
003ce454  68 b8 ff eb                                      bl #0x3bc5fc
003ce458  2c 90 8d e2                                      add sb, sp, #0x2c
003ce45c  04 10 90 e5                                      ldr r1, [r0, #4]
003ce460  00 70 a0 e1                                      mov r7, r0
003ce464  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce468  45 fc ff eb                                      bl #0x3cd584
003ce46c  09 00 a0 e1                                      mov r0, sb
003ce470  8f 2b fd eb                                      bl #0x3192b4
003ce474  18 13 9f e5                                      ldr r1, [pc, #0x318]
003ce478  09 00 a0 e1                                      mov r0, sb
003ce47c  01 10 8f e0                                      add r1, pc, r1
003ce480  e2 41 ff eb                                      bl #0x39ec10
003ce484  09 00 a0 e1                                      mov r0, sb
003ce488  00 10 e0 e3                                      mvn r1, #0
003ce48c  39 fe ff eb                                      bl #0x3cdd78
003ce490  04 30 97 e5                                      ldr r3, [r7, #4]
003ce494  00 00 53 e3                                      cmp r3, #0
003ce498  70 00 00 0a                                      beq #0x3ce660
003ce49c  f4 32 9f e5                                      ldr r3, [pc, #0x2f4]
003ce4a0  f4 22 9f e5                                      ldr r2, [pc, #0x2f4]
003ce4a4  24 60 8d e5                                      str r6, [sp, #0x24]
003ce4a8  03 30 8f e0                                      add r3, pc, r3
003ce4ac  08 30 8d e5                                      str r3, [sp, #8]
003ce4b0  e8 32 9f e5                                      ldr r3, [pc, #0x2e8]
003ce4b4  20 20 8d e5                                      str r2, [sp, #0x20]
003ce4b8  08 a0 a0 e1                                      mov sl, r8
003ce4bc  03 30 8f e0                                      add r3, pc, r3
003ce4c0  0c 30 8d e5                                      str r3, [sp, #0xc]
003ce4c4  d8 32 9f e5                                      ldr r3, [pc, #0x2d8]
003ce4c8  03 30 8f e0                                      add r3, pc, r3
003ce4cc  10 30 8d e5                                      str r3, [sp, #0x10]
003ce4d0  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
003ce4d4  03 30 8f e0                                      add r3, pc, r3
003ce4d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003ce4dc  49 00 00 ea                                      b #0x3ce608
003ce4e0  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce4e4  08 10 9d e5                                      ldr r1, [sp, #8]
003ce4e8  21 b4 fe eb                                      bl #0x37b574
003ce4ec  30 60 9d e5                                      ldr r6, [sp, #0x30]
003ce4f0  09 00 96 e8                                      ldm r6, {r0, r3}
003ce4f4  03 30 60 e0                                      rsb r3, r0, r3
003ce4f8  43 32 a0 e1                                      asr r3, r3, #4
003ce4fc  83 21 83 e0                                      add r2, r3, r3, lsl #3
003ce500  02 23 82 e0                                      add r2, r2, r2, lsl #6
003ce504  82 21 83 e0                                      add r2, r3, r2, lsl #3
003ce508  82 27 82 e0                                      add r2, r2, r2, lsl #15
003ce50c  82 21 83 e0                                      add r2, r3, r2, lsl #3
003ce510  00 00 52 e3                                      cmp r2, #0
003ce514  03 00 00 1a                                      bne #0x3ce528
003ce518  20 30 9d e5                                      ldr r3, [sp, #0x20]
003ce51c  03 00 8f e0                                      add r0, pc, r3
003ce520  62 ea 0c eb                                      bl #0x708eb0
003ce524  00 00 96 e5                                      ldr r0, [r6]
003ce528  28 10 98 e5                                      ldr r1, [r8, #0x28]
003ce52c  ce 37 fd eb                                      bl #0x31c46c
003ce530  30 60 9d e5                                      ldr r6, [sp, #0x30]
003ce534  0c 00 96 e8                                      ldm r6, {r2, r3}
003ce538  03 30 62 e0                                      rsb r3, r2, r3
003ce53c  43 32 a0 e1                                      asr r3, r3, #4
003ce540  83 11 83 e0                                      add r1, r3, r3, lsl #3
003ce544  01 13 81 e0                                      add r1, r1, r1, lsl #6
003ce548  81 11 83 e0                                      add r1, r3, r1, lsl #3
003ce54c  81 17 81 e0                                      add r1, r1, r1, lsl #15
003ce550  81 11 83 e0                                      add r1, r3, r1, lsl #3
003ce554  00 10 61 e2                                      rsb r1, r1, #0
003ce558  01 00 51 e3                                      cmp r1, #1
003ce55c  02 00 00 8a                                      bhi #0x3ce56c
003ce560  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
003ce564  51 ea 0c eb                                      bl #0x708eb0
003ce568  00 20 96 e5                                      ldr r2, [r6]
003ce56c  05 00 a0 e1                                      mov r0, r5
003ce570  70 60 82 e2                                      add r6, r2, #0x70
003ce574  fa 00 fd eb                                      bl #0x30e964
003ce578  00 10 a0 e1                                      mov r1, r0
003ce57c  06 00 a0 e1                                      mov r0, r6
003ce580  18 34 fd eb                                      bl #0x31b5e8
003ce584  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce588  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003ce58c  09 20 a0 e1                                      mov r2, sb
003ce590  a1 b7 fe eb                                      bl #0x37c41c
003ce594  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce598  28 10 98 e5                                      ldr r1, [r8, #0x28]
003ce59c  f4 b3 fe eb                                      bl #0x37b574
003ce5a0  00 00 50 e3                                      cmp r0, #0
003ce5a4  30 00 00 0a                                      beq #0x3ce66c
003ce5a8  00 10 a0 e3                                      mov r1, #0
003ce5ac  1c 00 a0 e3                                      mov r0, #0x1c
003ce5b0  ee 07 fd eb                                      bl #0x310570
003ce5b4  04 10 94 e5                                      ldr r1, [r4, #4]
003ce5b8  05 30 a0 e1                                      mov r3, r5
003ce5bc  28 20 98 e5                                      ldr r2, [r8, #0x28]
003ce5c0  00 60 a0 e1                                      mov r6, r0
003ce5c4  18 fe ff eb                                      bl #0x3cde2c
003ce5c8  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
003ce5cc  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
003ce5d0  48 60 8d e5                                      str r6, [sp, #0x48]
003ce5d4  03 00 51 e1                                      cmp r1, r3
003ce5d8  58 00 00 0a                                      beq #0x3ce740
003ce5dc  00 60 81 e5                                      str r6, [r1]
003ce5e0  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003ce5e4  04 30 83 e2                                      add r3, r3, #4
003ce5e8  b8 30 84 e5                                      str r3, [r4, #0xb8]
003ce5ec  1c 00 94 e5                                      ldr r0, [r4, #0x1c]
003ce5f0  10 10 9d e5                                      ldr r1, [sp, #0x10]
003ce5f4  c6 b7 fe eb                                      bl #0x37c514
003ce5f8  04 30 97 e5                                      ldr r3, [r7, #4]
003ce5fc  01 50 85 e2                                      add r5, r5, #1
003ce600  05 00 53 e1                                      cmp r3, r5
003ce604  13 00 00 9a                                      bls #0x3ce658
003ce608  04 00 94 e5                                      ldr r0, [r4, #4]
003ce60c  05 10 a0 e1                                      mov r1, r5
003ce610  5b b8 ff eb                                      bl #0x3bc784
003ce614  24 30 90 e5                                      ldr r3, [r0, #0x24]
003ce618  00 80 a0 e1                                      mov r8, r0
003ce61c  00 00 53 e3                                      cmp r3, #0
003ce620  ae ff ff 1a                                      bne #0x3ce4e0
003ce624  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
003ce628  bc 20 94 e5                                      ldr r2, [r4, #0xbc]
003ce62c  40 30 8d e5                                      str r3, [sp, #0x40]
003ce630  02 00 51 e1                                      cmp r1, r2
003ce634  35 00 00 0a                                      beq #0x3ce710
003ce638  00 30 81 e5                                      str r3, [r1]
003ce63c  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003ce640  01 50 85 e2                                      add r5, r5, #1
003ce644  04 30 83 e2                                      add r3, r3, #4
003ce648  b8 30 84 e5                                      str r3, [r4, #0xb8]
003ce64c  04 30 97 e5                                      ldr r3, [r7, #4]
003ce650  05 00 53 e1                                      cmp r3, r5
003ce654  eb ff ff 8a                                      bhi #0x3ce608
003ce658  24 60 9d e5                                      ldr r6, [sp, #0x24]
003ce65c  0a 80 a0 e1                                      mov r8, sl
003ce660  09 00 a0 e1                                      mov r0, sb
003ce664  ef 2a fd eb                                      bl #0x319228
003ce668  ac fe ff ea                                      b #0x3ce120
003ce66c  b8 10 94 e5                                      ldr r1, [r4, #0xb8]
003ce670  bc 30 94 e5                                      ldr r3, [r4, #0xbc]
003ce674  44 00 8d e5                                      str r0, [sp, #0x44]
003ce678  03 00 51 e1                                      cmp r1, r3
003ce67c  27 00 00 0a                                      beq #0x3ce720
003ce680  00 00 81 e5                                      str r0, [r1]
003ce684  b8 30 94 e5                                      ldr r3, [r4, #0xb8]
003ce688  04 30 83 e2                                      add r3, r3, #4
003ce68c  b8 30 84 e5                                      str r3, [r4, #0xb8]
003ce690  d5 ff ff ea                                      b #0x3ce5ec
003ce694  69 07 fd eb                                      bl #0x310440
003ce698  8d fe ff ea                                      b #0x3ce0d4
003ce69c  67 07 fd eb                                      bl #0x310440
003ce6a0  c0 fe ff ea                                      b #0x3ce1a8
003ce6a4  65 07 fd eb                                      bl #0x310440
003ce6a8  cd fe ff ea                                      b #0x3ce1e4
003ce6ac  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
003ce6b0  02 20 96 e7                                      ldr r2, [r6, r2]
003ce6b4  00 20 92 e5                                      ldr r2, [r2]
003ce6b8  02 00 52 e3                                      cmp r2, #2
003ce6bc  00 30 83 05                                      streq r3, [r3]
003ce6c0  6c fe ff 0a                                      beq #0x3ce078
003ce6c4  01 00 52 e3                                      cmp r2, #1
003ce6c8  6a fe ff 1a                                      bne #0x3ce078
003ce6cc  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
003ce6d0  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
003ce6d4  dc 20 9f e5                                      ldr r2, [pc, #0xdc]
003ce6d8  00 00 96 e7                                      ldr r0, [r6, r0]
003ce6dc  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003ce6e0  a5 cf a0 e3                                      mov ip, #0x294
003ce6e4  01 10 8f e0                                      add r1, pc, r1
003ce6e8  02 20 8f e0                                      add r2, pc, r2
003ce6ec  03 30 8f e0                                      add r3, pc, r3
003ce6f0  a8 00 80 e2                                      add r0, r0, #0xa8
003ce6f4  00 c0 8d e5                                      str ip, [sp]
003ce6f8  41 fe fc eb                                      bl #0x30e004
003ce6fc  5d fe ff ea                                      b #0x3ce078
003ce700  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce704  34 20 8d e2                                      add r2, sp, #0x34
003ce708  63 fc ff eb                                      bl #0x3cd89c
003ce70c  26 ff ff ea                                      b #0x3ce3ac
003ce710  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce714  40 20 8d e2                                      add r2, sp, #0x40
003ce718  5f fc ff eb                                      bl #0x3cd89c
003ce71c  b5 ff ff ea                                      b #0x3ce5f8
003ce720  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce724  44 20 8d e2                                      add r2, sp, #0x44
003ce728  5b fc ff eb                                      bl #0x3cd89c
003ce72c  ae ff ff ea                                      b #0x3ce5ec
003ce730  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce734  3c 20 8d e2                                      add r2, sp, #0x3c
003ce738  57 fc ff eb                                      bl #0x3cd89c
003ce73c  17 ff ff ea                                      b #0x3ce3a0
003ce740  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce744  48 20 8d e2                                      add r2, sp, #0x48
003ce748  53 fc ff eb                                      bl #0x3cd89c
003ce74c  a6 ff ff ea                                      b #0x3ce5ec
003ce750  18 00 9d e5                                      ldr r0, [sp, #0x18]
003ce754  38 20 8d e2                                      add r2, sp, #0x38
003ce758  4f fc ff eb                                      bl #0x3cd89c
003ce75c  0f ff ff ea                                      b #0x3ce3a0
003ce760  ea fe fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003ce764  3c 6a 5c 00 ac 40 00 00 84 08 00 00 c0 72 4f 00  .byte 0x3c, 0x6a, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x72, 0x4f, 0x00
003ce774  6c 55 4f 00 ec 71 4f 00 d0 d5 4f 00 90 01 4f 00  .byte 0x6c, 0x55, 0x4f, 0x00, 0xec, 0x71, 0x4f, 0x00, 0xd0, 0xd5, 0x4f, 0x00, 0x90, 0x01, 0x4f, 0x00
003ce784  ac 6f 4f 00 08 71 4f 00 fc 70 4f 00 d8 01 4f 00  .byte 0xac, 0x6f, 0x4f, 0x00, 0x08, 0x71, 0x4f, 0x00, 0xfc, 0x70, 0x4f, 0x00, 0xd8, 0x01, 0x4f, 0x00
003ce794  8c d3 4f 00 70 6d 4f 00 4c ff 4e 00 c4 6e 4f 00  .byte 0x8c, 0xd3, 0x4f, 0x00, 0x70, 0x6d, 0x4f, 0x00, 0x4c, 0xff, 0x4e, 0x00, 0xc4, 0x6e, 0x4f, 0x00
003ce7a4  b8 6e 4f 00 94 ff 4e 00 c0 39 00 00 c0 19 00 00  .byte 0xb8, 0x6e, 0x4f, 0x00, 0x94, 0xff, 0x4e, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003ce7b4  f4 fc 4e 00 88 6c 4f 00 cc 6a 4f 00              .byte 0xf4, 0xfc, 0x4e, 0x00, 0x88, 0x6c, 0x4f, 0x00, 0xcc, 0x6a, 0x4f, 0x00

; FUNCTION 0x003ce7c0, declared_size=80, range_size=80, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI17InitScriptProcessEb
; demangled: CharAI::InitScriptProcess(bool)
; decoder-mode: arm
003ce7c0  70 40 2d e9                                      push {r4, r5, r6, lr}
003ce7c4  00 40 a0 e1                                      mov r4, r0
003ce7c8  04 00 90 e5                                      ldr r0, [r0, #4]
003ce7cc  01 50 a0 e1                                      mov r5, r1
003ce7d0  a6 94 ff eb                                      bl #0x3b3a70
003ce7d4  04 00 a0 e1                                      mov r0, r4
003ce7d8  19 fe ff eb                                      bl #0x3ce044
003ce7dc  04 00 a0 e1                                      mov r0, r4
003ce7e0  2b 28 00 eb                                      bl #0x3d8894
003ce7e4  00 30 94 e5                                      ldr r3, [r4]
003ce7e8  04 00 a0 e1                                      mov r0, r4
003ce7ec  0f e0 a0 e1                                      mov lr, pc
003ce7f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003ce7f4  00 00 55 e3                                      cmp r5, #0
003ce7f8  03 00 00 0a                                      beq #0x3ce80c
003ce7fc  04 00 a0 e1                                      mov r0, r4
003ce800  00 30 94 e5                                      ldr r3, [r4]
003ce804  0f e0 a0 e1                                      mov lr, pc
003ce808  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003ce80c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003ce9b8, declared_size=568, range_size=568, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14IncUpdateQueueEv
; demangled: CharAI::IncUpdateQueue()
; decoder-mode: arm
003ce9b8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003ce9bc  18 42 9f e5                                      ldr r4, [pc, #0x218]
003ce9c0  18 32 9f e5                                      ldr r3, [pc, #0x218]
003ce9c4  20 d0 4d e2                                      sub sp, sp, #0x20
003ce9c8  04 40 8f e0                                      add r4, pc, r4
003ce9cc  03 70 94 e7                                      ldr r7, [r4, r3]
003ce9d0  00 50 97 e5                                      ldr r5, [r7]
003ce9d4  00 00 55 e3                                      cmp r5, #0
003ce9d8  06 00 00 da                                      ble #0x3ce9f8
003ce9dc  00 32 9f e5                                      ldr r3, [pc, #0x200]
003ce9e0  03 00 94 e7                                      ldr r0, [r4, r3]
003ce9e4  20 43 fd eb                                      bl #0x31f66c
003ce9e8  05 00 60 e0                                      rsb r0, r0, r5
003ce9ec  00 00 87 e5                                      str r0, [r7]
003ce9f0  20 d0 8d e2                                      add sp, sp, #0x20
003ce9f4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003ce9f8  e8 61 9f e5                                      ldr r6, [pc, #0x1e8]
003ce9fc  b4 30 a0 e3                                      mov r3, #0xb4
003cea00  10 c0 8d e2                                      add ip, sp, #0x10
003cea04  06 50 94 e7                                      ldr r5, [r4, r6]
003cea08  00 30 87 e5                                      str r3, [r7]
003cea0c  10 70 85 e2                                      add r7, r5, #0x10
003cea10  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003cea14  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cea18  0c 10 a0 e1                                      mov r1, ip
003cea1c  07 00 a0 e1                                      mov r0, r7
003cea20  9d f2 ff eb                                      bl #0x3cb49c
003cea24  01 00 50 e3                                      cmp r0, #1
003cea28  f0 ff ff 9a                                      bls #0x3ce9f0
003cea2c  0d c0 a0 e1                                      mov ip, sp
003cea30  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003cea34  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003cea38  07 00 a0 e1                                      mov r0, r7
003cea3c  0d 10 a0 e1                                      mov r1, sp
003cea40  95 f2 ff eb                                      bl #0x3cb49c
003cea44  a0 81 9f e5                                      ldr r8, [pc, #0x1a0]
003cea48  00 70 a0 e1                                      mov r7, r0
003cea4c  00 00 95 e5                                      ldr r0, [r5]
003cea50  18 20 95 e5                                      ldr r2, [r5, #0x18]
003cea54  10 30 95 e5                                      ldr r3, [r5, #0x10]
003cea58  04 20 42 e2                                      sub r2, r2, #4
003cea5c  02 00 53 e1                                      cmp r3, r2
003cea60  29 00 00 0a                                      beq #0x3ceb0c
003cea64  00 20 90 e5                                      ldr r2, [r0]
003cea68  00 20 83 e5                                      str r2, [r3]
003cea6c  10 30 95 e5                                      ldr r3, [r5, #0x10]
003cea70  04 30 83 e2                                      add r3, r3, #4
003cea74  10 30 85 e5                                      str r3, [r5, #0x10]
003cea78  06 30 94 e7                                      ldr r3, [r4, r6]
003cea7c  08 20 93 e5                                      ldr r2, [r3, #8]
003cea80  00 00 93 e5                                      ldr r0, [r3]
003cea84  04 20 42 e2                                      sub r2, r2, #4
003cea88  02 00 50 e1                                      cmp r0, r2
003cea8c  04 00 80 12                                      addne r0, r0, #4
003cea90  00 00 83 15                                      strne r0, [r3]
003cea94  25 00 00 0a                                      beq #0x3ceb30
003cea98  01 70 47 e2                                      sub r7, r7, #1
003cea9c  00 00 57 e3                                      cmp r7, #0
003ceaa0  00 a0 90 e5                                      ldr sl, [r0]
003ceaa4  d1 ff ff da                                      ble #0x3ce9f0
003ceaa8  04 30 9a e5                                      ldr r3, [sl, #4]
003ceaac  78 23 93 e5                                      ldr r2, [r3, #0x378]
003ceab0  09 10 d2 e5                                      ldrb r1, [r2, #9]
003ceab4  00 00 51 e3                                      cmp r1, #0
003ceab8  06 00 00 1a                                      bne #0x3cead8
003ceabc  08 10 94 e7                                      ldr r1, [r4, r8]
003ceac0  00 10 d1 e5                                      ldrb r1, [r1]
003ceac4  00 00 51 e3                                      cmp r1, #0
003ceac8  e0 ff ff 1a                                      bne #0x3cea50
003ceacc  08 20 d2 e5                                      ldrb r2, [r2, #8]
003cead0  00 00 52 e3                                      cmp r2, #0
003cead4  dd ff ff 1a                                      bne #0x3cea50
003cead8  03 00 a0 e1                                      mov r0, r3
003ceadc  00 30 93 e5                                      ldr r3, [r3]
003ceae0  0f e0 a0 e1                                      mov lr, pc
003ceae4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003ceae8  00 00 50 e3                                      cmp r0, #0
003ceaec  1e 00 00 0a                                      beq #0x3ceb6c
003ceaf0  06 30 94 e7                                      ldr r3, [r4, r6]
003ceaf4  18 20 95 e5                                      ldr r2, [r5, #0x18]
003ceaf8  00 00 93 e5                                      ldr r0, [r3]
003ceafc  10 30 95 e5                                      ldr r3, [r5, #0x10]
003ceb00  04 20 42 e2                                      sub r2, r2, #4
003ceb04  02 00 53 e1                                      cmp r3, r2
003ceb08  d5 ff ff 1a                                      bne #0x3cea64
003ceb0c  3f ff ff eb                                      bl #0x3ce810
003ceb10  06 30 94 e7                                      ldr r3, [r4, r6]
003ceb14  08 20 93 e5                                      ldr r2, [r3, #8]
003ceb18  00 00 93 e5                                      ldr r0, [r3]
003ceb1c  04 20 42 e2                                      sub r2, r2, #4
003ceb20  02 00 50 e1                                      cmp r0, r2
003ceb24  04 00 80 12                                      addne r0, r0, #4
003ceb28  00 00 83 15                                      strne r0, [r3]
003ceb2c  d9 ff ff 1a                                      bne #0x3cea98
003ceb30  04 00 93 e5                                      ldr r0, [r3, #4]
003ceb34  00 00 50 e3                                      cmp r0, #0
003ceb38  01 00 00 0a                                      beq #0x3ceb44
003ceb3c  80 10 a0 e3                                      mov r1, #0x80
003ceb40  ff 33 fd eb                                      bl #0x31bb44
003ceb44  06 30 94 e7                                      ldr r3, [r4, r6]
003ceb48  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003ceb4c  04 10 82 e2                                      add r1, r2, #4
003ceb50  0c 10 83 e5                                      str r1, [r3, #0xc]
003ceb54  04 00 92 e5                                      ldr r0, [r2, #4]
003ceb58  80 20 80 e2                                      add r2, r0, #0x80
003ceb5c  08 20 83 e5                                      str r2, [r3, #8]
003ceb60  00 00 83 e5                                      str r0, [r3]
003ceb64  04 00 83 e5                                      str r0, [r3, #4]
003ceb68  ca ff ff ea                                      b #0x3cea98
003ceb6c  04 30 9a e5                                      ldr r3, [sl, #4]
003ceb70  03 00 a0 e1                                      mov r0, r3
003ceb74  00 30 93 e5                                      ldr r3, [r3]
003ceb78  0f e0 a0 e1                                      mov lr, pc
003ceb7c  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003ceb80  00 00 50 e3                                      cmp r0, #0
003ceb84  99 ff ff 1a                                      bne #0x3ce9f0
003ceb88  04 90 9a e5                                      ldr sb, [sl, #4]
003ceb8c  80 30 d9 e5                                      ldrb r3, [sb, #0x80]
003ceb90  00 00 53 e3                                      cmp r3, #0
003ceb94  d5 ff ff 0a                                      beq #0x3ceaf0
003ceb98  00 30 99 e5                                      ldr r3, [sb]
003ceb9c  09 00 a0 e1                                      mov r0, sb
003ceba0  0f e0 a0 e1                                      mov lr, pc
003ceba4  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003ceba8  00 00 50 e3                                      cmp r0, #0
003cebac  8f ff ff 0a                                      beq #0x3ce9f0
003cebb0  ee 32 d9 e5                                      ldrb r3, [sb, #0x2ee]
003cebb4  00 00 53 e3                                      cmp r3, #0
003cebb8  8c ff ff 0a                                      beq #0x3ce9f0
003cebbc  f0 32 d9 e5                                      ldrb r3, [sb, #0x2f0]
003cebc0  00 00 53 e3                                      cmp r3, #0
003cebc4  89 ff ff 1a                                      bne #0x3ce9f0
003cebc8  04 30 9a e5                                      ldr r3, [sl, #4]
003cebcc  ee 32 d3 e5                                      ldrb r3, [r3, #0x2ee]
003cebd0  00 00 53 e3                                      cmp r3, #0
003cebd4  85 ff ff 0a                                      beq #0x3ce9f0
003cebd8  c4 ff ff ea                                      b #0x3ceaf0
; mapping-symbol data/literal pool
003cebdc  c8 60 5c 00 e8 46 00 00 f4 37 00 00 ac 49 00 00  .byte 0xc8, 0x60, 0x5c, 0x00, 0xe8, 0x46, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xac, 0x49, 0x00, 0x00
003cebec  50 36 00 00                                      .byte 0x50, 0x36, 0x00, 0x00

; FUNCTION 0x003cebf0, declared_size=352, range_size=352, mode=arm
; class-group: CharAI
; alias: _ZN6CharAIC2Ev
; demangled: CharAI::CharAI()
; decoder-mode: arm
003cebf0  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
003cebf4  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
003cebf8  30 40 2d e9                                      push {r4, r5, lr}
003cebfc  03 30 8f e0                                      add r3, pc, r3
003cec00  02 20 93 e7                                      ldr r2, [r3, r2]
003cec04  00 40 a0 e1                                      mov r4, r0
003cec08  00 10 a0 e3                                      mov r1, #0
003cec0c  08 20 82 e2                                      add r2, r2, #8
003cec10  00 20 84 e5                                      str r2, [r4]
003cec14  30 21 9f e5                                      ldr r2, [pc, #0x130]
003cec18  01 00 a0 e3                                      mov r0, #1
003cec1c  00 c0 e0 e3                                      mvn ip, #0
003cec20  04 50 a0 e1                                      mov r5, r4
003cec24  55 00 c4 e5                                      strb r0, [r4, #0x55]
003cec28  08 10 84 e5                                      str r1, [r4, #8]
003cec2c  0c 10 84 e5                                      str r1, [r4, #0xc]
003cec30  18 10 c4 e5                                      strb r1, [r4, #0x18]
003cec34  1c 10 84 e5                                      str r1, [r4, #0x1c]
003cec38  20 10 84 e5                                      str r1, [r4, #0x20]
003cec3c  24 10 c4 e5                                      strb r1, [r4, #0x24]
003cec40  28 10 84 e5                                      str r1, [r4, #0x28]
003cec44  2c 10 c4 e5                                      strb r1, [r4, #0x2c]
003cec48  30 10 84 e5                                      str r1, [r4, #0x30]
003cec4c  34 10 84 e5                                      str r1, [r4, #0x34]
003cec50  3c 10 84 e5                                      str r1, [r4, #0x3c]
003cec54  40 10 84 e5                                      str r1, [r4, #0x40]
003cec58  44 10 84 e5                                      str r1, [r4, #0x44]
003cec5c  49 10 c4 e5                                      strb r1, [r4, #0x49]
003cec60  4a 00 c4 e5                                      strb r0, [r4, #0x4a]
003cec64  4b 00 c4 e5                                      strb r0, [r4, #0x4b]
003cec68  4c 10 c4 e5                                      strb r1, [r4, #0x4c]
003cec6c  4d 00 c4 e5                                      strb r0, [r4, #0x4d]
003cec70  50 10 84 e5                                      str r1, [r4, #0x50]
003cec74  54 00 c4 e5                                      strb r0, [r4, #0x54]
003cec78  58 10 84 e5                                      str r1, [r4, #0x58]
003cec7c  04 00 a0 e1                                      mov r0, r4
003cec80  60 10 84 e5                                      str r1, [r4, #0x60]
003cec84  10 c0 84 e5                                      str ip, [r4, #0x10]
003cec88  14 c0 84 e5                                      str ip, [r4, #0x14]
003cec8c  38 c0 84 e5                                      str ip, [r4, #0x38]
003cec90  5c 10 e5 e5                                      strb r1, [r5, #0x5c]!
003cec94  68 50 84 e5                                      str r5, [r4, #0x68]
003cec98  64 50 84 e5                                      str r5, [r4, #0x64]
003cec9c  6c 10 84 e5                                      str r1, [r4, #0x6c]
003ceca0  80 10 84 e5                                      str r1, [r4, #0x80]
003ceca4  7c 10 e0 e5                                      strb r1, [r0, #0x7c]!
003ceca8  02 50 93 e7                                      ldr r5, [r3, r2]
003cecac  04 20 a0 e1                                      mov r2, r4
003cecb0  88 00 84 e5                                      str r0, [r4, #0x88]
003cecb4  84 00 84 e5                                      str r0, [r4, #0x84]
003cecb8  8c 10 84 e5                                      str r1, [r4, #0x8c]
003cecbc  98 10 84 e5                                      str r1, [r4, #0x98]
003cecc0  ac 00 84 e2                                      add r0, r4, #0xac
003cecc4  94 10 e2 e5                                      strb r1, [r2, #0x94]!
003cecc8  a0 20 84 e5                                      str r2, [r4, #0xa0]
003ceccc  b0 00 84 e5                                      str r0, [r4, #0xb0]
003cecd0  cc c0 84 e5                                      str ip, [r4, #0xcc]
003cecd4  d1 10 c4 e5                                      strb r1, [r4, #0xd1]
003cecd8  9c 20 84 e5                                      str r2, [r4, #0x9c]
003cecdc  a4 10 84 e5                                      str r1, [r4, #0xa4]
003cece0  ac 00 84 e5                                      str r0, [r4, #0xac]
003cece4  b4 10 84 e5                                      str r1, [r4, #0xb4]
003cece8  b8 10 84 e5                                      str r1, [r4, #0xb8]
003cecec  bc 10 84 e5                                      str r1, [r4, #0xbc]
003cecf0  c0 10 84 e5                                      str r1, [r4, #0xc0]
003cecf4  c4 10 84 e5                                      str r1, [r4, #0xc4]
003cecf8  c8 10 84 e5                                      str r1, [r4, #0xc8]
003cecfc  d0 10 c4 e5                                      strb r1, [r4, #0xd0]
003ced00  18 10 95 e5                                      ldr r1, [r5, #0x18]
003ced04  10 20 95 e5                                      ldr r2, [r5, #0x10]
003ced08  0c d0 4d e2                                      sub sp, sp, #0xc
003ced0c  04 30 41 e2                                      sub r3, r1, #4
003ced10  03 00 52 e1                                      cmp r2, r3
003ced14  04 40 8d e5                                      str r4, [sp, #4]
003ced18  06 00 00 0a                                      beq #0x3ced38
003ced1c  00 40 82 e5                                      str r4, [r2]
003ced20  10 30 95 e5                                      ldr r3, [r5, #0x10]
003ced24  04 30 83 e2                                      add r3, r3, #4
003ced28  10 30 85 e5                                      str r3, [r5, #0x10]
003ced2c  04 00 a0 e1                                      mov r0, r4
003ced30  0c d0 8d e2                                      add sp, sp, #0xc
003ced34  30 80 bd e8                                      pop {r4, r5, pc}
003ced38  04 00 8d e2                                      add r0, sp, #4
003ced3c  b3 fe ff eb                                      bl #0x3ce810
003ced40  f9 ff ff ea                                      b #0x3ced2c
; mapping-symbol data/literal pool
003ced44  94 5e 5c 00 4c 46 00 00 ac 49 00 00              .byte 0x94, 0x5e, 0x5c, 0x00, 0x4c, 0x46, 0x00, 0x00, 0xac, 0x49, 0x00, 0x00

; FUNCTION 0x003ced50, declared_size=352, range_size=352, mode=arm
; class-group: CharAI
; alias: _ZN6CharAIC1Ev
; demangled: CharAI::CharAI()
; decoder-mode: arm
003ced50  4c 31 9f e5                                      ldr r3, [pc, #0x14c]
003ced54  4c 21 9f e5                                      ldr r2, [pc, #0x14c]
003ced58  30 40 2d e9                                      push {r4, r5, lr}
003ced5c  03 30 8f e0                                      add r3, pc, r3
003ced60  02 20 93 e7                                      ldr r2, [r3, r2]
003ced64  00 40 a0 e1                                      mov r4, r0
003ced68  00 10 a0 e3                                      mov r1, #0
003ced6c  08 20 82 e2                                      add r2, r2, #8
003ced70  00 20 84 e5                                      str r2, [r4]
003ced74  30 21 9f e5                                      ldr r2, [pc, #0x130]
003ced78  01 00 a0 e3                                      mov r0, #1
003ced7c  00 c0 e0 e3                                      mvn ip, #0
003ced80  04 50 a0 e1                                      mov r5, r4
003ced84  55 00 c4 e5                                      strb r0, [r4, #0x55]
003ced88  08 10 84 e5                                      str r1, [r4, #8]
003ced8c  0c 10 84 e5                                      str r1, [r4, #0xc]
003ced90  18 10 c4 e5                                      strb r1, [r4, #0x18]
003ced94  1c 10 84 e5                                      str r1, [r4, #0x1c]
003ced98  20 10 84 e5                                      str r1, [r4, #0x20]
003ced9c  24 10 c4 e5                                      strb r1, [r4, #0x24]
003ceda0  28 10 84 e5                                      str r1, [r4, #0x28]
003ceda4  2c 10 c4 e5                                      strb r1, [r4, #0x2c]
003ceda8  30 10 84 e5                                      str r1, [r4, #0x30]
003cedac  34 10 84 e5                                      str r1, [r4, #0x34]
003cedb0  3c 10 84 e5                                      str r1, [r4, #0x3c]
003cedb4  40 10 84 e5                                      str r1, [r4, #0x40]
003cedb8  44 10 84 e5                                      str r1, [r4, #0x44]
003cedbc  49 10 c4 e5                                      strb r1, [r4, #0x49]
003cedc0  4a 00 c4 e5                                      strb r0, [r4, #0x4a]
003cedc4  4b 00 c4 e5                                      strb r0, [r4, #0x4b]
003cedc8  4c 10 c4 e5                                      strb r1, [r4, #0x4c]
003cedcc  4d 00 c4 e5                                      strb r0, [r4, #0x4d]
003cedd0  50 10 84 e5                                      str r1, [r4, #0x50]
003cedd4  54 00 c4 e5                                      strb r0, [r4, #0x54]
003cedd8  58 10 84 e5                                      str r1, [r4, #0x58]
003ceddc  04 00 a0 e1                                      mov r0, r4
003cede0  60 10 84 e5                                      str r1, [r4, #0x60]
003cede4  10 c0 84 e5                                      str ip, [r4, #0x10]
003cede8  14 c0 84 e5                                      str ip, [r4, #0x14]
003cedec  38 c0 84 e5                                      str ip, [r4, #0x38]
003cedf0  5c 10 e5 e5                                      strb r1, [r5, #0x5c]!
003cedf4  68 50 84 e5                                      str r5, [r4, #0x68]
003cedf8  64 50 84 e5                                      str r5, [r4, #0x64]
003cedfc  6c 10 84 e5                                      str r1, [r4, #0x6c]
003cee00  80 10 84 e5                                      str r1, [r4, #0x80]
003cee04  7c 10 e0 e5                                      strb r1, [r0, #0x7c]!
003cee08  02 50 93 e7                                      ldr r5, [r3, r2]
003cee0c  04 20 a0 e1                                      mov r2, r4
003cee10  88 00 84 e5                                      str r0, [r4, #0x88]
003cee14  84 00 84 e5                                      str r0, [r4, #0x84]
003cee18  8c 10 84 e5                                      str r1, [r4, #0x8c]
003cee1c  98 10 84 e5                                      str r1, [r4, #0x98]
003cee20  ac 00 84 e2                                      add r0, r4, #0xac
003cee24  94 10 e2 e5                                      strb r1, [r2, #0x94]!
003cee28  a0 20 84 e5                                      str r2, [r4, #0xa0]
003cee2c  b0 00 84 e5                                      str r0, [r4, #0xb0]
003cee30  cc c0 84 e5                                      str ip, [r4, #0xcc]
003cee34  d1 10 c4 e5                                      strb r1, [r4, #0xd1]
003cee38  9c 20 84 e5                                      str r2, [r4, #0x9c]
003cee3c  a4 10 84 e5                                      str r1, [r4, #0xa4]
003cee40  ac 00 84 e5                                      str r0, [r4, #0xac]
003cee44  b4 10 84 e5                                      str r1, [r4, #0xb4]
003cee48  b8 10 84 e5                                      str r1, [r4, #0xb8]
003cee4c  bc 10 84 e5                                      str r1, [r4, #0xbc]
003cee50  c0 10 84 e5                                      str r1, [r4, #0xc0]
003cee54  c4 10 84 e5                                      str r1, [r4, #0xc4]
003cee58  c8 10 84 e5                                      str r1, [r4, #0xc8]
003cee5c  d0 10 c4 e5                                      strb r1, [r4, #0xd0]
003cee60  18 10 95 e5                                      ldr r1, [r5, #0x18]
003cee64  10 20 95 e5                                      ldr r2, [r5, #0x10]
003cee68  0c d0 4d e2                                      sub sp, sp, #0xc
003cee6c  04 30 41 e2                                      sub r3, r1, #4
003cee70  03 00 52 e1                                      cmp r2, r3
003cee74  04 40 8d e5                                      str r4, [sp, #4]
003cee78  06 00 00 0a                                      beq #0x3cee98
003cee7c  00 40 82 e5                                      str r4, [r2]
003cee80  10 30 95 e5                                      ldr r3, [r5, #0x10]
003cee84  04 30 83 e2                                      add r3, r3, #4
003cee88  10 30 85 e5                                      str r3, [r5, #0x10]
003cee8c  04 00 a0 e1                                      mov r0, r4
003cee90  0c d0 8d e2                                      add sp, sp, #0xc
003cee94  30 80 bd e8                                      pop {r4, r5, pc}
003cee98  04 00 8d e2                                      add r0, sp, #4
003cee9c  5b fe ff eb                                      bl #0x3ce810
003ceea0  f9 ff ff ea                                      b #0x3cee8c
; mapping-symbol data/literal pool
003ceea4  34 5d 5c 00 4c 46 00 00 ac 49 00 00              .byte 0x34, 0x5d, 0x5c, 0x00, 0x4c, 0x46, 0x00, 0x00, 0xac, 0x49, 0x00, 0x00

; FUNCTION 0x003ceeb0, declared_size=412, range_size=412, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15SetScriptByNameEPKc
; demangled: CharAI::SetScriptByName(char const*)
; decoder-mode: arm
003ceeb0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003ceeb4  6c 41 9f e5                                      ldr r4, [pc, #0x16c]
003ceeb8  6c 51 9f e5                                      ldr r5, [pc, #0x16c]
003ceebc  01 60 a0 e1                                      mov r6, r1
003ceec0  04 40 8f e0                                      add r4, pc, r4
003ceec4  05 30 94 e7                                      ldr r3, [r4, r5]
003ceec8  60 11 9f e5                                      ldr r1, [pc, #0x160]
003ceecc  24 d0 4d e2                                      sub sp, sp, #0x24
003ceed0  00 30 93 e5                                      ldr r3, [r3]
003ceed4  00 70 a0 e1                                      mov r7, r0
003ceed8  01 10 8f e0                                      add r1, pc, r1
003ceedc  06 00 a0 e1                                      mov r0, r6
003ceee0  02 20 a0 e3                                      mov r2, #2
003ceee4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003ceee8  63 ff fc eb                                      bl #0x30ec7c
003ceeec  00 80 50 e2                                      subs r8, r0, #0
003ceef0  1b 00 00 1a                                      bne #0x3cef64
003ceef4  38 11 9f e5                                      ldr r1, [pc, #0x138]
003ceef8  02 60 86 e2                                      add r6, r6, #2
003ceefc  06 00 a0 e1                                      mov r0, r6
003cef00  01 10 8f e0                                      add r1, pc, r1
003cef04  04 fd fc eb                                      bl #0x30e31c
003cef08  00 00 50 e3                                      cmp r0, #0
003cef0c  3e 00 00 0a                                      beq #0x3cf00c
003cef10  20 11 9f e5                                      ldr r1, [pc, #0x120]
003cef14  06 00 a0 e1                                      mov r0, r6
003cef18  01 10 8f e0                                      add r1, pc, r1
003cef1c  fe fc fc eb                                      bl #0x30e31c
003cef20  00 00 50 e3                                      cmp r0, #0
003cef24  33 00 00 0a                                      beq #0x3ceff8
003cef28  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
003cef2c  06 00 a0 e1                                      mov r0, r6
003cef30  01 10 8f e0                                      add r1, pc, r1
003cef34  f8 fc fc eb                                      bl #0x30e31c
003cef38  00 00 50 e3                                      cmp r0, #0
003cef3c  35 00 00 0a                                      beq #0x3cf018
003cef40  f8 10 9f e5                                      ldr r1, [pc, #0xf8]
003cef44  06 00 a0 e1                                      mov r0, r6
003cef48  01 10 8f e0                                      add r1, pc, r1
003cef4c  f2 fc fc eb                                      bl #0x30e31c
003cef50  00 00 50 e3                                      cmp r0, #0
003cef54  23 00 00 1a                                      bne #0x3cefe8
003cef58  07 00 a0 e1                                      mov r0, r7
003cef5c  ac f7 ff eb                                      bl #0x3cce14
003cef60  19 00 00 ea                                      b #0x3cefcc
003cef64  07 00 a0 e1                                      mov r0, r7
003cef68  e1 f6 ff eb                                      bl #0x3ccaf4
003cef6c  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
003cef70  04 80 8d e2                                      add r8, sp, #4
003cef74  03 a0 94 e7                                      ldr sl, [r4, r3]
003cef78  0a 00 a0 e1                                      mov r0, sl
003cef7c  41 a2 fd eb                                      bl #0x337888
003cef80  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003cef84  0d 20 a0 e1                                      mov r2, sp
003cef88  08 00 a0 e1                                      mov r0, r8
003cef8c  01 10 8f e0                                      add r1, pc, r1
003cef90  55 14 fd eb                                      bl #0x3140ec
003cef94  0a 00 a0 e1                                      mov r0, sl
003cef98  08 10 a0 e1                                      mov r1, r8
003cef9c  b9 a2 fd eb                                      bl #0x337a88
003cefa0  18 00 9d e5                                      ldr r0, [sp, #0x18]
003cefa4  08 00 50 e1                                      cmp r0, r8
003cefa8  06 00 00 0a                                      beq #0x3cefc8
003cefac  00 00 50 e3                                      cmp r0, #0
003cefb0  04 00 00 0a                                      beq #0x3cefc8
003cefb4  04 10 9d e5                                      ldr r1, [sp, #4]
003cefb8  01 10 60 e0                                      rsb r1, r0, r1
003cefbc  80 00 51 e3                                      cmp r1, #0x80
003cefc0  0f 00 00 8a                                      bhi #0x3cf004
003cefc4  cd e7 0c eb                                      bl #0x708f00
003cefc8  30 60 87 e5                                      str r6, [r7, #0x30]
003cefcc  05 30 94 e7                                      ldr r3, [r4, r5]
003cefd0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003cefd4  00 30 93 e5                                      ldr r3, [r3]
003cefd8  03 00 52 e1                                      cmp r2, r3
003cefdc  10 00 00 1a                                      bne #0x3cf024
003cefe0  24 d0 8d e2                                      add sp, sp, #0x24
003cefe4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003cefe8  07 00 a0 e1                                      mov r0, r7
003cefec  88 f7 ff eb                                      bl #0x3cce14
003ceff0  30 80 87 e5                                      str r8, [r7, #0x30]
003ceff4  f4 ff ff ea                                      b #0x3cefcc
003ceff8  07 00 a0 e1                                      mov r0, r7
003ceffc  f8 f7 ff eb                                      bl #0x3ccfe4
003cf000  f1 ff ff ea                                      b #0x3cefcc
003cf004  0d 05 fd eb                                      bl #0x310440
003cf008  ee ff ff ea                                      b #0x3cefc8
003cf00c  07 00 a0 e1                                      mov r0, r7
003cf010  f3 f6 ff eb                                      bl #0x3ccbe4
003cf014  ec ff ff ea                                      b #0x3cefcc
003cf018  07 00 a0 e1                                      mov r0, r7
003cf01c  35 f7 ff eb                                      bl #0x3cccf8
003cf020  e9 ff ff ea                                      b #0x3cefcc
003cf024  b9 fc fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003cf028  d0 5b 5c 00 ac 40 00 00 b8 64 4f 00 98 64 4f 00  .byte 0xd0, 0x5b, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x64, 0x4f, 0x00, 0x98, 0x64, 0x4f, 0x00
003cf038  90 64 4f 00 88 64 4f 00 78 64 4f 00 84 08 00 00  .byte 0x90, 0x64, 0x4f, 0x00, 0x88, 0x64, 0x4f, 0x00, 0x78, 0x64, 0x4f, 0x00, 0x84, 0x08, 0x00, 0x00
003cf048  cc 63 4f 00                                      .byte 0xcc, 0x63, 0x4f, 0x00

; FUNCTION 0x003cf04c, declared_size=420, range_size=420, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16StepCreateScriptEv
; demangled: CharAI::StepCreateScript()
; decoder-mode: arm
003cf04c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003cf050  7c 41 9f e5                                      ldr r4, [pc, #0x17c]
003cf054  7c 61 9f e5                                      ldr r6, [pc, #0x17c]
003cf058  7c 21 9f e5                                      ldr r2, [pc, #0x17c]
003cf05c  04 40 8f e0                                      add r4, pc, r4
003cf060  06 30 94 e7                                      ldr r3, [r4, r6]
003cf064  02 20 94 e7                                      ldr r2, [r4, r2]
003cf068  44 d0 4d e2                                      sub sp, sp, #0x44
003cf06c  00 30 93 e5                                      ldr r3, [r3]
003cf070  00 50 a0 e1                                      mov r5, r0
003cf074  04 00 90 e5                                      ldr r0, [r0, #4]
003cf078  00 70 92 e5                                      ldr r7, [r2]
003cf07c  3c 30 8d e5                                      str r3, [sp, #0x3c]
003cf080  d9 4f ff eb                                      bl #0x3a2fec
003cf084  44 30 a0 e3                                      mov r3, #0x44
003cf088  93 70 27 e0                                      mla r7, r3, r0, r7
003cf08c  28 30 97 e5                                      ldr r3, [r7, #0x28]
003cf090  00 00 53 e3                                      cmp r3, #0
003cf094  22 00 00 0a                                      beq #0x3cf124
003cf098  40 31 9f e5                                      ldr r3, [pc, #0x140]
003cf09c  24 80 8d e2                                      add r8, sp, #0x24
003cf0a0  03 a0 94 e7                                      ldr sl, [r4, r3]
003cf0a4  0a 00 a0 e1                                      mov r0, sl
003cf0a8  f6 a1 fd eb                                      bl #0x337888
003cf0ac  30 11 9f e5                                      ldr r1, [pc, #0x130]
003cf0b0  08 20 8d e2                                      add r2, sp, #8
003cf0b4  08 00 a0 e1                                      mov r0, r8
003cf0b8  01 10 8f e0                                      add r1, pc, r1
003cf0bc  0a 14 fd eb                                      bl #0x3140ec
003cf0c0  0a 00 a0 e1                                      mov r0, sl
003cf0c4  08 10 a0 e1                                      mov r1, r8
003cf0c8  6e a2 fd eb                                      bl #0x337a88
003cf0cc  38 00 9d e5                                      ldr r0, [sp, #0x38]
003cf0d0  08 00 50 e1                                      cmp r0, r8
003cf0d4  06 00 00 0a                                      beq #0x3cf0f4
003cf0d8  00 00 50 e3                                      cmp r0, #0
003cf0dc  04 00 00 0a                                      beq #0x3cf0f4
003cf0e0  24 10 9d e5                                      ldr r1, [sp, #0x24]
003cf0e4  01 10 60 e0                                      rsb r1, r0, r1
003cf0e8  80 00 51 e3                                      cmp r1, #0x80
003cf0ec  35 00 00 8a                                      bhi #0x3cf1c8
003cf0f0  82 e7 0c eb                                      bl #0x708f00
003cf0f4  2c 10 97 e5                                      ldr r1, [r7, #0x2c]
003cf0f8  05 00 a0 e1                                      mov r0, r5
003cf0fc  6b ff ff eb                                      bl #0x3ceeb0
003cf100  01 30 a0 e3                                      mov r3, #1
003cf104  2c 30 c5 e5                                      strb r3, [r5, #0x2c]
003cf108  06 30 94 e7                                      ldr r3, [r4, r6]
003cf10c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003cf110  00 30 93 e5                                      ldr r3, [r3]
003cf114  03 00 52 e1                                      cmp r2, r3
003cf118  2c 00 00 1a                                      bne #0x3cf1d0
003cf11c  44 d0 8d e2                                      add sp, sp, #0x44
003cf120  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003cf124  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
003cf128  0c 70 8d e2                                      add r7, sp, #0xc
003cf12c  03 80 94 e7                                      ldr r8, [r4, r3]
003cf130  08 00 a0 e1                                      mov r0, r8
003cf134  d3 a1 fd eb                                      bl #0x337888
003cf138  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
003cf13c  04 20 8d e2                                      add r2, sp, #4
003cf140  07 00 a0 e1                                      mov r0, r7
003cf144  01 10 8f e0                                      add r1, pc, r1
003cf148  e7 13 fd eb                                      bl #0x3140ec
003cf14c  08 00 a0 e1                                      mov r0, r8
003cf150  07 10 a0 e1                                      mov r1, r7
003cf154  4b a2 fd eb                                      bl #0x337a88
003cf158  20 00 9d e5                                      ldr r0, [sp, #0x20]
003cf15c  07 00 50 e1                                      cmp r0, r7
003cf160  06 00 00 0a                                      beq #0x3cf180
003cf164  00 00 50 e3                                      cmp r0, #0
003cf168  04 00 00 0a                                      beq #0x3cf180
003cf16c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003cf170  01 10 60 e0                                      rsb r1, r0, r1
003cf174  80 00 51 e3                                      cmp r1, #0x80
003cf178  10 00 00 8a                                      bhi #0x3cf1c0
003cf17c  5f e7 0c eb                                      bl #0x708f00
003cf180  04 30 95 e5                                      ldr r3, [r5, #4]
003cf184  60 10 9f e5                                      ldr r1, [pc, #0x60]
003cf188  5c 00 93 e5                                      ldr r0, [r3, #0x5c]
003cf18c  01 10 8f e0                                      add r1, pc, r1
003cf190  61 fc fc eb                                      bl #0x30e31c
003cf194  00 00 50 e3                                      cmp r0, #0
003cf198  05 00 00 0a                                      beq #0x3cf1b4
003cf19c  05 00 a0 e1                                      mov r0, r5
003cf1a0  1b f7 ff eb                                      bl #0x3cce14
003cf1a4  00 30 a0 e3                                      mov r3, #0
003cf1a8  30 30 85 e5                                      str r3, [r5, #0x30]
003cf1ac  2c 30 c5 e5                                      strb r3, [r5, #0x2c]
003cf1b0  d4 ff ff ea                                      b #0x3cf108
003cf1b4  05 00 a0 e1                                      mov r0, r5
003cf1b8  d7 f7 ff eb                                      bl #0x3cd11c
003cf1bc  f8 ff ff ea                                      b #0x3cf1a4
003cf1c0  9e 04 fd eb                                      bl #0x310440
003cf1c4  ed ff ff ea                                      b #0x3cf180
003cf1c8  9c 04 fd eb                                      bl #0x310440
003cf1cc  c8 ff ff ea                                      b #0x3cf0f4
003cf1d0  4e fc fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003cf1d4  34 5a 5c 00 ac 40 00 00 58 07 00 00 84 08 00 00  .byte 0x34, 0x5a, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x58, 0x07, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
003cf1e4  58 4d 4f 00 cc 4c 4f 00 3c 12 4f 00              .byte 0x58, 0x4d, 0x4f, 0x00, 0xcc, 0x4c, 0x4f, 0x00, 0x3c, 0x12, 0x4f, 0x00

; FUNCTION 0x003cf1f0, declared_size=436, range_size=436, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI17LoadScriptProcessEv
; demangled: CharAI::LoadScriptProcess()
; decoder-mode: arm
003cf1f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003cf1f4  28 30 90 e5                                      ldr r3, [r0, #0x28]
003cf1f8  8c 61 9f e5                                      ldr r6, [pc, #0x18c]
003cf1fc  0c d0 4d e2                                      sub sp, sp, #0xc
003cf200  06 00 53 e3                                      cmp r3, #6
003cf204  00 40 a0 e1                                      mov r4, r0
003cf208  06 60 8f e0                                      add r6, pc, r6
003cf20c  25 00 00 ca                                      bgt #0x3cf2a8
003cf210  24 20 d0 e5                                      ldrb r2, [r0, #0x24]
003cf214  00 00 52 e3                                      cmp r2, #0
003cf218  4a 00 00 1a                                      bne #0x3cf348
003cf21c  06 50 a0 e3                                      mov r5, #6
003cf220  68 81 9f e5                                      ldr r8, [pc, #0x168]
003cf224  68 a1 9f e5                                      ldr sl, [pc, #0x168]
003cf228  68 91 9f e5                                      ldr sb, [pc, #0x168]
003cf22c  68 71 9f e5                                      ldr r7, [pc, #0x168]
003cf230  68 b1 9f e5                                      ldr fp, [pc, #0x168]
003cf234  08 80 8f e0                                      add r8, pc, r8
003cf238  0a a0 8f e0                                      add sl, pc, sl
003cf23c  09 90 8f e0                                      add sb, pc, sb
003cf240  06 00 53 e3                                      cmp r3, #6
003cf244  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003cf248  2c 00 00 ea                                      b #0x3cf300
003cf24c  27 00 00 ea                                      b #0x3cf2f0
003cf250  22 00 00 ea                                      b #0x3cf2e0
003cf254  1d 00 00 ea                                      b #0x3cf2d0
003cf258  18 00 00 ea                                      b #0x3cf2c0
003cf25c  13 00 00 ea                                      b #0x3cf2b0
003cf260  09 00 00 ea                                      b #0x3cf28c
003cf264  ff ff ff ea                                      b #0x3cf268
003cf268  20 20 94 e5                                      ldr r2, [r4, #0x20]
003cf26c  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf270  1c 20 84 e5                                      str r2, [r4, #0x1c]
003cf274  01 30 83 e2                                      add r3, r3, #1
003cf278  00 00 55 e3                                      cmp r5, #0
003cf27c  28 30 84 e5                                      str r3, [r4, #0x28]
003cf280  08 00 00 0a                                      beq #0x3cf2a8
003cf284  01 50 45 e2                                      sub r5, r5, #1
003cf288  ec ff ff ea                                      b #0x3cf240
003cf28c  04 00 a0 e1                                      mov r0, r4
003cf290  1f f0 ff eb                                      bl #0x3cb314
003cf294  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf298  00 00 55 e3                                      cmp r5, #0
003cf29c  01 30 83 e2                                      add r3, r3, #1
003cf2a0  28 30 84 e5                                      str r3, [r4, #0x28]
003cf2a4  f6 ff ff 1a                                      bne #0x3cf284
003cf2a8  0c d0 8d e2                                      add sp, sp, #0xc
003cf2ac  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003cf2b0  04 00 a0 e1                                      mov r0, r4
003cf2b4  30 fb ff eb                                      bl #0x3cdf7c
003cf2b8  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf2bc  ec ff ff ea                                      b #0x3cf274
003cf2c0  04 00 a0 e1                                      mov r0, r4
003cf2c4  d3 f3 ff eb                                      bl #0x3cc218
003cf2c8  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf2cc  e8 ff ff ea                                      b #0x3cf274
003cf2d0  04 00 a0 e1                                      mov r0, r4
003cf2d4  e4 f3 ff eb                                      bl #0x3cc26c
003cf2d8  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf2dc  e4 ff ff ea                                      b #0x3cf274
003cf2e0  04 00 a0 e1                                      mov r0, r4
003cf2e4  e3 f3 ff eb                                      bl #0x3cc278
003cf2e8  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf2ec  e0 ff ff ea                                      b #0x3cf274
003cf2f0  04 00 a0 e1                                      mov r0, r4
003cf2f4  54 ff ff eb                                      bl #0x3cf04c
003cf2f8  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf2fc  dc ff ff ea                                      b #0x3cf274
003cf300  07 20 96 e7                                      ldr r2, [r6, r7]
003cf304  00 20 92 e5                                      ldr r2, [r2]
003cf308  02 00 52 e3                                      cmp r2, #2
003cf30c  00 20 a0 03                                      moveq r2, #0
003cf310  00 20 82 05                                      streq r2, [r2]
003cf314  d6 ff ff 0a                                      beq #0x3cf274
003cf318  01 00 52 e3                                      cmp r2, #1
003cf31c  d4 ff ff 1a                                      bne #0x3cf274
003cf320  0b 00 96 e7                                      ldr r0, [r6, fp]
003cf324  09 30 a0 e1                                      mov r3, sb
003cf328  2b c2 00 e3                                      movw ip, #0x22b
003cf32c  08 10 a0 e1                                      mov r1, r8
003cf330  0a 20 a0 e1                                      mov r2, sl
003cf334  a8 00 80 e2                                      add r0, r0, #0xa8
003cf338  00 c0 8d e5                                      str ip, [sp]
003cf33c  30 fb fc eb                                      bl #0x30e004
003cf340  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf344  ca ff ff ea                                      b #0x3cf274
003cf348  04 30 90 e5                                      ldr r3, [r0, #4]
003cf34c  03 00 a0 e1                                      mov r0, r3
003cf350  00 30 93 e5                                      ldr r3, [r3]
003cf354  0f e0 a0 e1                                      mov lr, pc
003cf358  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003cf35c  00 00 50 e3                                      cmp r0, #0
003cf360  28 30 94 15                                      ldrne r3, [r4, #0x28]
003cf364  ac ff ff 1a                                      bne #0x3cf21c
003cf368  28 10 94 e5                                      ldr r1, [r4, #0x28]
003cf36c  04 00 a0 e1                                      mov r0, r4
003cf370  07 10 61 e2                                      rsb r1, r1, #7
003cf374  36 f1 ff eb                                      bl #0x3cb854
003cf378  00 00 50 e3                                      cmp r0, #0
003cf37c  c9 ff ff da                                      ble #0x3cf2a8
003cf380  01 50 40 e2                                      sub r5, r0, #1
003cf384  28 30 94 e5                                      ldr r3, [r4, #0x28]
003cf388  a4 ff ff ea                                      b #0x3cf220
; mapping-symbol data/literal pool
003cf38c  88 58 5c 00 a4 f1 4e 00 30 f3 4e 00 7c 5f 4f 00  .byte 0x88, 0x58, 0x5c, 0x00, 0xa4, 0xf1, 0x4e, 0x00, 0x30, 0xf3, 0x4e, 0x00, 0x7c, 0x5f, 0x4f, 0x00
003cf39c  c0 39 00 00 c0 19 00 00                          .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00

; FUNCTION 0x003cf3a4, declared_size=76, range_size=76, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI22LoadNInitScriptProcessEb
; demangled: CharAI::LoadNInitScriptProcess(bool)
; decoder-mode: arm
003cf3a4  10 40 2d e9                                      push {r4, lr}
003cf3a8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003cf3ac  08 d0 4d e2                                      sub sp, sp, #8
003cf3b0  00 40 a0 e1                                      mov r4, r0
003cf3b4  00 00 53 e3                                      cmp r3, #0
003cf3b8  02 00 00 0a                                      beq #0x3cf3c8
003cf3bc  00 00 a0 e3                                      mov r0, #0
003cf3c0  08 d0 8d e2                                      add sp, sp, #8
003cf3c4  10 80 bd e8                                      pop {r4, pc}
003cf3c8  04 10 8d e5                                      str r1, [sp, #4]
003cf3cc  87 ff ff eb                                      bl #0x3cf1f0
003cf3d0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003cf3d4  04 10 9d e5                                      ldr r1, [sp, #4]
003cf3d8  00 00 53 e3                                      cmp r3, #0
003cf3dc  f6 ff ff 0a                                      beq #0x3cf3bc
003cf3e0  04 00 a0 e1                                      mov r0, r4
003cf3e4  f5 fc ff eb                                      bl #0x3ce7c0
003cf3e8  01 00 a0 e3                                      mov r0, #1
003cf3ec  f3 ff ff ea                                      b #0x3cf3c0

; FUNCTION 0x003cf3f0, declared_size=2052, range_size=2052, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12_UpdateAggroEv
; demangled: CharAI::_UpdateAggro()
; decoder-mode: arm
003cf3f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003cf3f4  b4 47 9f e5                                      ldr r4, [pc, #0x7b4]
003cf3f8  b4 67 9f e5                                      ldr r6, [pc, #0x7b4]
003cf3fc  04 30 90 e5                                      ldr r3, [r0, #4]
003cf400  04 40 8f e0                                      add r4, pc, r4
003cf404  06 20 94 e7                                      ldr r2, [r4, r6]
003cf408  4b df 4d e2                                      sub sp, sp, #0x12c
003cf40c  00 50 a0 e1                                      mov r5, r0
003cf410  00 20 92 e5                                      ldr r2, [r2]
003cf414  03 00 a0 e1                                      mov r0, r3
003cf418  24 21 8d e5                                      str r2, [sp, #0x124]
003cf41c  00 30 93 e5                                      ldr r3, [r3]
003cf420  0f e0 a0 e1                                      mov lr, pc
003cf424  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003cf428  00 00 50 e3                                      cmp r0, #0
003cf42c  06 00 00 0a                                      beq #0x3cf44c
003cf430  06 30 94 e7                                      ldr r3, [r4, r6]
003cf434  24 21 9d e5                                      ldr r2, [sp, #0x124]
003cf438  00 30 93 e5                                      ldr r3, [r3]
003cf43c  03 00 52 e1                                      cmp r2, r3
003cf440  cf 01 00 1a                                      bne #0x3cfb84
003cf444  4b df 8d e2                                      add sp, sp, #0x12c
003cf448  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003cf44c  04 30 95 e5                                      ldr r3, [r5, #4]
003cf450  03 00 a0 e1                                      mov r0, r3
003cf454  00 30 93 e5                                      ldr r3, [r3]
003cf458  0f e0 a0 e1                                      mov lr, pc
003cf45c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003cf460  00 00 50 e3                                      cmp r0, #0
003cf464  b8 00 00 0a                                      beq #0x3cf74c
003cf468  04 00 95 e5                                      ldr r0, [r5, #4]
003cf46c  26 4f ff eb                                      bl #0x3a310c
003cf470  00 00 50 e3                                      cmp r0, #0
003cf474  ed ff ff 1a                                      bne #0x3cf430
003cf478  04 00 95 e5                                      ldr r0, [r5, #4]
003cf47c  f8 4e ff eb                                      bl #0x3a3064
003cf480  00 00 50 e3                                      cmp r0, #0
003cf484  44 00 00 0a                                      beq #0x3cf59c
003cf488  04 30 95 e5                                      ldr r3, [r5, #4]
003cf48c  03 00 a0 e1                                      mov r0, r3
003cf490  00 30 93 e5                                      ldr r3, [r3]
003cf494  0f e0 a0 e1                                      mov lr, pc
003cf498  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003cf49c  00 a0 50 e2                                      subs sl, r0, #0
003cf4a0  3d 00 00 1a                                      bne #0x3cf59c
003cf4a4  04 00 95 e5                                      ldr r0, [r5, #4]
003cf4a8  08 34 90 e5                                      ldr r3, [r0, #0x408]
003cf4ac  00 00 53 e3                                      cmp r3, #0
003cf4b0  3a 00 00 0a                                      beq #0x3cf5a0
003cf4b4  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf4b8  56 15 00 eb                                      bl #0x3d4a18
003cf4bc  04 30 95 e5                                      ldr r3, [r5, #4]
003cf4c0  e0 70 8d e2                                      add r7, sp, #0xe0
003cf4c4  00 80 a0 e1                                      mov r8, r0
003cf4c8  08 14 93 e5                                      ldr r1, [r3, #0x408]
003cf4cc  07 00 a0 e1                                      mov r0, r7
003cf4d0  15 ba fd eb                                      bl #0x33dd2c
003cf4d4  07 00 a0 e1                                      mov r0, r7
003cf4d8  9d c2 fd eb                                      bl #0x33ff54
003cf4dc  00 00 50 e3                                      cmp r0, #0
003cf4e0  00 00 58 13                                      cmpne r8, #0
003cf4e4  00 70 a0 e1                                      mov r7, r0
003cf4e8  28 01 00 0a                                      beq #0x3cf990
003cf4ec  00 00 58 e1                                      cmp r8, r0
003cf4f0  26 01 00 0a                                      beq #0x3cf990
003cf4f4  04 00 95 e5                                      ldr r0, [r5, #4]
003cf4f8  07 10 a0 e1                                      mov r1, r7
003cf4fc  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf500  70 15 00 eb                                      bl #0x3d4ac8
003cf504  00 90 a0 e1                                      mov sb, r0
003cf508  04 00 95 e5                                      ldr r0, [r5, #4]
003cf50c  08 10 a0 e1                                      mov r1, r8
003cf510  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf514  6b 15 00 eb                                      bl #0x3d4ac8
003cf518  98 36 9f e5                                      ldr r3, [pc, #0x698]
003cf51c  00 70 a0 e1                                      mov r7, r0
003cf520  09 00 a0 e1                                      mov r0, sb
003cf524  03 30 94 e7                                      ldr r3, [r4, r3]
003cf528  00 30 93 e5                                      ldr r3, [r3]
003cf52c  08 10 93 e5                                      ldr r1, [r3, #8]
003cf530  0d fe fc eb                                      bl #0x30ed6c
003cf534  00 10 a0 e1                                      mov r1, r0
003cf538  07 00 a0 e1                                      mov r0, r7
003cf53c  6d fb fc eb                                      bl #0x30e2f8
003cf540  00 00 50 e3                                      cmp r0, #0
003cf544  b9 ff ff 0a                                      beq #0x3cf430
003cf548  6c 36 9f e5                                      ldr r3, [pc, #0x66c]
003cf54c  f4 70 8d e2                                      add r7, sp, #0xf4
003cf550  03 90 94 e7                                      ldr sb, [r4, r3]
003cf554  09 00 a0 e1                                      mov r0, sb
003cf558  ca a0 fd eb                                      bl #0x337888
003cf55c  5c 16 9f e5                                      ldr r1, [pc, #0x65c]
003cf560  ec 20 8d e2                                      add r2, sp, #0xec
003cf564  07 00 a0 e1                                      mov r0, r7
003cf568  01 10 8f e0                                      add r1, pc, r1
003cf56c  de 12 fd eb                                      bl #0x3140ec
003cf570  07 10 a0 e1                                      mov r1, r7
003cf574  09 00 a0 e1                                      mov r0, sb
003cf578  42 a1 fd eb                                      bl #0x337a88
003cf57c  07 00 a0 e1                                      mov r0, r7
003cf580  33 23 fd eb                                      bl #0x318254
003cf584  04 00 95 e5                                      ldr r0, [r5, #4]
003cf588  08 10 a0 e1                                      mov r1, r8
003cf58c  0a 20 a0 e1                                      mov r2, sl
003cf590  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf594  bd 1c 00 eb                                      bl #0x3d6890
003cf598  a4 ff ff ea                                      b #0x3cf430
003cf59c  04 00 95 e5                                      ldr r0, [r5, #4]
003cf5a0  bb 4e ff eb                                      bl #0x3a3094
003cf5a4  00 00 50 e3                                      cmp r0, #0
003cf5a8  04 00 95 05                                      ldreq r0, [r5, #4]
003cf5ac  03 00 00 0a                                      beq #0x3cf5c0
003cf5b0  04 00 95 e5                                      ldr r0, [r5, #4]
003cf5b4  18 34 90 e5                                      ldr r3, [r0, #0x418]
003cf5b8  00 00 53 e3                                      cmp r3, #0
003cf5bc  9b ff ff 1a                                      bne #0x3cf430
003cf5c0  fc 35 9f e5                                      ldr r3, [pc, #0x5fc]
003cf5c4  03 30 94 e7                                      ldr r3, [r4, r3]
003cf5c8  00 70 93 e5                                      ldr r7, [r3]
003cf5cc  86 4e ff eb                                      bl #0x3a2fec
003cf5d0  04 30 95 e5                                      ldr r3, [r5, #4]
003cf5d4  44 20 a0 e3                                      mov r2, #0x44
003cf5d8  92 70 27 e0                                      mla r7, r2, r0, r7
003cf5dc  4f 0e 83 e2                                      add r0, r3, #0x4f0
003cf5e0  0c 00 80 e2                                      add r0, r0, #0xc
003cf5e4  3c 80 97 e5                                      ldr r8, [r7, #0x3c]
003cf5e8  10 c3 ff eb                                      bl #0x3c0230
003cf5ec  00 00 50 e3                                      cmp r0, #0
003cf5f0  b3 00 00 1a                                      bne #0x3cf8c4
003cf5f4  05 00 a0 e1                                      mov r0, r5
003cf5f8  fc 14 00 eb                                      bl #0x3d49f0
003cf5fc  00 00 50 e3                                      cmp r0, #0
003cf600  40 80 97 05                                      ldreq r8, [r7, #0x40]
003cf604  04 a0 95 e5                                      ldr sl, [r5, #4]
003cf608  18 70 8d e2                                      add r7, sp, #0x18
003cf60c  0a 10 a0 e1                                      mov r1, sl
003cf610  02 21 e0 e3                                      mvn r2, #0x80000000
003cf614  02 30 a0 e3                                      mov r3, #2
003cf618  01 90 a0 e3                                      mov sb, #1
003cf61c  07 00 a0 e1                                      mov r0, r7
003cf620  00 90 8d e5                                      str sb, [sp]
003cf624  41 4c 03 eb                                      bl #0x4a2730
003cf628  98 25 9f e5                                      ldr r2, [pc, #0x598]
003cf62c  98 35 9f e5                                      ldr r3, [pc, #0x598]
003cf630  08 10 a0 e1                                      mov r1, r8
003cf634  02 20 94 e7                                      ldr r2, [r4, r2]
003cf638  03 30 94 e7                                      ldr r3, [r4, r3]
003cf63c  07 00 a0 e1                                      mov r0, r7
003cf640  38 20 92 e5                                      ldr r2, [r2, #0x38]
003cf644  08 30 83 e2                                      add r3, r3, #8
003cf648  c0 30 8d e5                                      str r3, [sp, #0xc0]
003cf64c  60 c0 82 e2                                      add ip, r2, #0x60
003cf650  c4 c0 8d e5                                      str ip, [sp, #0xc4]
003cf654  60 e0 92 e5                                      ldr lr, [r2, #0x60]
003cf658  db 2f 00 e3                                      movw r2, #0xfdb
003cf65c  c9 20 44 e3                                      movt r2, #0x40c9
003cf660  c0 30 8d e2                                      add r3, sp, #0xc0
003cf664  c8 e0 8d e5                                      str lr, [sp, #0xc8]
003cf668  cc c0 8d e5                                      str ip, [sp, #0xcc]
003cf66c  6d 4f 03 eb                                      bl #0x4a3428
003cf670  18 30 9d e5                                      ldr r3, [sp, #0x18]
003cf674  28 20 9d e5                                      ldr r2, [sp, #0x28]
003cf678  03 00 52 e1                                      cmp r2, r3
003cf67c  bc 00 00 0a                                      beq #0x3cf974
003cf680  48 25 9f e5                                      ldr r2, [pc, #0x548]
003cf684  09 80 a0 e1                                      mov r8, sb
003cf688  44 95 9f e5                                      ldr sb, [pc, #0x544]
003cf68c  0c 20 8d e5                                      str r2, [sp, #0xc]
003cf690  40 25 9f e5                                      ldr r2, [pc, #0x540]
003cf694  40 a5 9f e5                                      ldr sl, [pc, #0x540]
003cf698  09 90 8f e0                                      add sb, pc, sb
003cf69c  02 20 8f e0                                      add r2, pc, r2
003cf6a0  10 20 8d e5                                      str r2, [sp, #0x10]
003cf6a4  34 25 9f e5                                      ldr r2, [pc, #0x534]
003cf6a8  02 20 8f e0                                      add r2, pc, r2
003cf6ac  14 20 8d e5                                      str r2, [sp, #0x14]
003cf6b0  0a 00 00 ea                                      b #0x3cf6e0
003cf6b4  0b 20 a0 e1                                      mov r2, fp
003cf6b8  04 00 95 e5                                      ldr r0, [r5, #4]
003cf6bc  09 10 a0 e3                                      mov r1, #9
003cf6c0  a5 55 ff eb                                      bl #0x3a4d5c
003cf6c4  00 80 a0 e3                                      mov r8, #0
003cf6c8  07 00 a0 e1                                      mov r0, r7
003cf6cc  11 01 ff eb                                      bl #0x38fb18
003cf6d0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003cf6d4  28 20 9d e5                                      ldr r2, [sp, #0x28]
003cf6d8  03 00 52 e1                                      cmp r2, r3
003cf6dc  90 00 00 0a                                      beq #0x3cf924
003cf6e0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003cf6e4  01 20 12 e2                                      ands r2, r2, #1
003cf6e8  05 00 00 1a                                      bne #0x3cf704
003cf6ec  0a 10 94 e7                                      ldr r1, [r4, sl]
003cf6f0  00 10 91 e5                                      ldr r1, [r1]
003cf6f4  02 00 51 e3                                      cmp r1, #2
003cf6f8  86 00 00 0a                                      beq #0x3cf918
003cf6fc  01 00 51 e3                                      cmp r1, #1
003cf700  90 00 00 0a                                      beq #0x3cf948
003cf704  00 b0 93 e5                                      ldr fp, [r3]
003cf708  04 00 95 e5                                      ldr r0, [r5, #4]
003cf70c  0b 10 a0 e1                                      mov r1, fp
003cf710  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf714  0c 18 00 eb                                      bl #0x3d574c
003cf718  00 00 50 e3                                      cmp r0, #0
003cf71c  e4 ff ff 1a                                      bne #0x3cf6b4
003cf720  04 00 95 e5                                      ldr r0, [r5, #4]
003cf724  0b 10 a0 e1                                      mov r1, fp
003cf728  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf72c  7a 16 00 eb                                      bl #0x3d511c
003cf730  00 00 50 e3                                      cmp r0, #0
003cf734  6c 00 00 0a                                      beq #0x3cf8ec
003cf738  0b 20 a0 e1                                      mov r2, fp
003cf73c  04 00 95 e5                                      ldr r0, [r5, #4]
003cf740  07 10 a0 e3                                      mov r1, #7
003cf744  84 55 ff eb                                      bl #0x3a4d5c
003cf748  de ff ff ea                                      b #0x3cf6c8
003cf74c  04 00 95 e5                                      ldr r0, [r5, #4]
003cf750  4f 4e ff eb                                      bl #0x3a3094
003cf754  00 00 50 e3                                      cmp r0, #0
003cf758  42 ff ff 1a                                      bne #0x3cf468
003cf75c  05 00 a0 e1                                      mov r0, r5
003cf760  47 f3 ff eb                                      bl #0x3cc484
003cf764  00 00 50 e3                                      cmp r0, #0
003cf768  45 00 00 0a                                      beq #0x3cf884
003cf76c  00 30 a0 e3                                      mov r3, #0
003cf770  0c 30 85 e5                                      str r3, [r5, #0xc]
003cf774  40 34 9f e5                                      ldr r3, [pc, #0x440]
003cf778  43 7f 8d e2                                      add r7, sp, #0x10c
003cf77c  03 80 94 e7                                      ldr r8, [r4, r3]
003cf780  08 00 a0 e1                                      mov r0, r8
003cf784  3f a0 fd eb                                      bl #0x337888
003cf788  54 14 9f e5                                      ldr r1, [pc, #0x454]
003cf78c  f0 20 8d e2                                      add r2, sp, #0xf0
003cf790  07 00 a0 e1                                      mov r0, r7
003cf794  01 10 8f e0                                      add r1, pc, r1
003cf798  53 12 fd eb                                      bl #0x3140ec
003cf79c  08 00 a0 e1                                      mov r0, r8
003cf7a0  07 10 a0 e1                                      mov r1, r7
003cf7a4  b7 a0 fd eb                                      bl #0x337a88
003cf7a8  00 80 a0 e1                                      mov r8, r0
003cf7ac  20 01 9d e5                                      ldr r0, [sp, #0x120]
003cf7b0  07 00 50 e1                                      cmp r0, r7
003cf7b4  04 00 00 0a                                      beq #0x3cf7cc
003cf7b8  00 00 50 e3                                      cmp r0, #0
003cf7bc  02 00 00 0a                                      beq #0x3cf7cc
003cf7c0  0c 11 9d e5                                      ldr r1, [sp, #0x10c]
003cf7c4  01 10 60 e0                                      rsb r1, r0, r1
003cf7c8  dd 30 fd eb                                      bl #0x31bb44
003cf7cc  00 00 58 e3                                      cmp r8, #0
003cf7d0  24 ff ff 1a                                      bne #0x3cf468
003cf7d4  08 70 95 e5                                      ldr r7, [r5, #8]
003cf7d8  00 00 57 e3                                      cmp r7, #0
003cf7dc  06 00 00 da                                      ble #0x3cf7fc
003cf7e0  e0 33 9f e5                                      ldr r3, [pc, #0x3e0]
003cf7e4  03 00 94 e7                                      ldr r0, [r4, r3]
003cf7e8  9f 3f fd eb                                      bl #0x31f66c
003cf7ec  07 00 60 e0                                      rsb r0, r0, r7
003cf7f0  00 00 50 e3                                      cmp r0, #0
003cf7f4  08 00 85 e5                                      str r0, [r5, #8]
003cf7f8  0c ff ff ca                                      bgt #0x3cf430
003cf7fc  e4 33 9f e5                                      ldr r3, [pc, #0x3e4]
003cf800  ab e6 0e e3                                      movw lr, #0xe6ab
003cf804  17 2b 0d e3                                      movw r2, #0xdb17
003cf808  03 c0 94 e7                                      ldr ip, [r4, r3]
003cf80c  52 2b 42 e3                                      movt r2, #0x2b52
003cf810  6b 02 0f e3                                      movw r0, #0xf26b
003cf814  00 30 9c e5                                      ldr r3, [ip]
003cf818  da 00 40 e3                                      movt r0, #0xda
003cf81c  1f 15 08 e3                                      movw r1, #0x851f
003cf820  9e 03 03 e0                                      mul r3, lr, r3
003cf824  eb 11 45 e3                                      movt r1, #0x51eb
003cf828  2b 3a 83 e2                                      add r3, r3, #0x2b000
003cf82c  ff 3f 83 e2                                      add r3, r3, #0x3fc
003cf830  01 30 83 e2                                      add r3, r3, #1
003cf834  92 e3 82 e0                                      umull lr, r2, r2, r3
003cf838  03 e0 62 e0                                      rsb lr, r2, r3
003cf83c  ae 20 82 e0                                      add r2, r2, lr, lsr #1
003cf840  a4 e3 9f e5                                      ldr lr, [pc, #0x3a4]
003cf844  a2 2b a0 e1                                      lsr r2, r2, #0x17
003cf848  90 32 62 e0                                      mls r2, r0, r2, r3
003cf84c  0e e0 94 e7                                      ldr lr, [r4, lr]
003cf850  91 02 83 e0                                      umull r0, r3, r1, r2
003cf854  c8 00 a0 e3                                      mov r0, #0xc8
003cf858  23 33 a0 e1                                      lsr r3, r3, #6
003cf85c  90 23 63 e0                                      mls r3, r0, r3, r2
003cf860  00 10 9e e5                                      ldr r1, [lr]
003cf864  c3 0f 23 e0                                      eor r0, r3, r3, asr #31
003cf868  c3 0f 40 e0                                      sub r0, r0, r3, asr #31
003cf86c  64 30 80 e2                                      add r3, r0, #0x64
003cf870  01 10 81 e2                                      add r1, r1, #1
003cf874  00 10 8e e5                                      str r1, [lr]
003cf878  00 20 8c e5                                      str r2, [ip]
003cf87c  08 30 85 e5                                      str r3, [r5, #8]
003cf880  f8 fe ff ea                                      b #0x3cf468
003cf884  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003cf888  7d 0f 53 e3                                      cmp r3, #0x1f4
003cf88c  b6 ff ff aa                                      bge #0x3cf76c
003cf890  30 33 9f e5                                      ldr r3, [pc, #0x330]
003cf894  08 80 95 e5                                      ldr r8, [r5, #8]
003cf898  03 70 94 e7                                      ldr r7, [r4, r3]
003cf89c  07 00 a0 e1                                      mov r0, r7
003cf8a0  71 3f fd eb                                      bl #0x31f66c
003cf8a4  08 00 60 e0                                      rsb r0, r0, r8
003cf8a8  08 00 85 e5                                      str r0, [r5, #8]
003cf8ac  07 00 a0 e1                                      mov r0, r7
003cf8b0  0c 70 95 e5                                      ldr r7, [r5, #0xc]
003cf8b4  6c 3f fd eb                                      bl #0x31f66c
003cf8b8  07 00 80 e0                                      add r0, r0, r7
003cf8bc  0c 00 85 e5                                      str r0, [r5, #0xc]
003cf8c0  da fe ff ea                                      b #0x3cf430
003cf8c4  04 a0 95 e5                                      ldr sl, [r5, #4]
003cf8c8  3c 34 01 e3                                      movw r3, #0x143c
003cf8cc  00 10 a0 e3                                      mov r1, #0
003cf8d0  03 90 9a e7                                      ldr sb, [sl, r3]
003cf8d4  09 00 a0 e1                                      mov r0, sb
003cf8d8  86 fa fc eb                                      bl #0x30e2f8
003cf8dc  00 00 50 e3                                      cmp r0, #0
003cf8e0  09 80 a0 11                                      movne r8, sb
003cf8e4  47 ff ff 1a                                      bne #0x3cf608
003cf8e8  41 ff ff ea                                      b #0x3cf5f4
003cf8ec  04 00 95 e5                                      ldr r0, [r5, #4]
003cf8f0  0b 10 a0 e1                                      mov r1, fp
003cf8f4  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf8f8  66 18 00 eb                                      bl #0x3d5a98
003cf8fc  00 00 50 e3                                      cmp r0, #0
003cf900  70 ff ff 0a                                      beq #0x3cf6c8
003cf904  0b 20 a0 e1                                      mov r2, fp
003cf908  04 00 95 e5                                      ldr r0, [r5, #4]
003cf90c  08 10 a0 e3                                      mov r1, #8
003cf910  11 55 ff eb                                      bl #0x3a4d5c
003cf914  6b ff ff ea                                      b #0x3cf6c8
003cf918  00 20 82 e5                                      str r2, [r2]
003cf91c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003cf920  77 ff ff ea                                      b #0x3cf704
003cf924  00 00 58 e3                                      cmp r8, #0
003cf928  11 00 00 1a                                      bne #0x3cf974
003cf92c  bc 32 9f e5                                      ldr r3, [pc, #0x2bc]
003cf930  07 00 a0 e1                                      mov r0, r7
003cf934  03 30 94 e7                                      ldr r3, [r4, r3]
003cf938  08 30 83 e2                                      add r3, r3, #8
003cf93c  c0 30 8d e5                                      str r3, [sp, #0xc0]
003cf940  11 f6 fe eb                                      bl #0x38d18c
003cf944  b9 fe ff ea                                      b #0x3cf430
003cf948  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003cf94c  06 c5 00 e3                                      movw ip, #0x506
003cf950  09 10 a0 e1                                      mov r1, sb
003cf954  03 00 94 e7                                      ldr r0, [r4, r3]
003cf958  10 20 9d e5                                      ldr r2, [sp, #0x10]
003cf95c  14 30 9d e5                                      ldr r3, [sp, #0x14]
003cf960  a8 00 80 e2                                      add r0, r0, #0xa8
003cf964  00 c0 8d e5                                      str ip, [sp]
003cf968  a5 f9 fc eb                                      bl #0x30e004
003cf96c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003cf970  63 ff ff ea                                      b #0x3cf704
003cf974  40 20 95 e5                                      ldr r2, [r5, #0x40]
003cf978  00 00 52 e3                                      cmp r2, #0
003cf97c  ea ff ff 0a                                      beq #0x3cf92c
003cf980  04 00 95 e5                                      ldr r0, [r5, #4]
003cf984  0c 10 a0 e3                                      mov r1, #0xc
003cf988  f3 54 ff eb                                      bl #0x3a4d5c
003cf98c  e6 ff ff ea                                      b #0x3cf92c
003cf990  04 00 95 e5                                      ldr r0, [r5, #4]
003cf994  07 10 a0 e1                                      mov r1, r7
003cf998  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cf99c  6a 17 00 eb                                      bl #0x3d574c
003cf9a0  00 80 50 e2                                      subs r8, r0, #0
003cf9a4  59 00 00 0a                                      beq #0x3cfb10
003cf9a8  6c 80 8d e2                                      add r8, sp, #0x6c
003cf9ac  01 90 a0 e3                                      mov sb, #1
003cf9b0  04 10 95 e5                                      ldr r1, [r5, #4]
003cf9b4  09 20 a0 e1                                      mov r2, sb
003cf9b8  02 30 a0 e3                                      mov r3, #2
003cf9bc  08 00 a0 e1                                      mov r0, r8
003cf9c0  00 90 8d e5                                      str sb, [sp]
003cf9c4  59 4b 03 eb                                      bl #0x4a2730
003cf9c8  f8 21 9f e5                                      ldr r2, [pc, #0x1f8]
003cf9cc  f8 31 9f e5                                      ldr r3, [pc, #0x1f8]
003cf9d0  02 a0 94 e7                                      ldr sl, [r4, r2]
003cf9d4  03 30 94 e7                                      ldr r3, [r4, r3]
003cf9d8  e4 21 9f e5                                      ldr r2, [pc, #0x1e4]
003cf9dc  38 10 9a e5                                      ldr r1, [sl, #0x38]
003cf9e0  08 30 83 e2                                      add r3, r3, #8
003cf9e4  d0 30 8d e5                                      str r3, [sp, #0xd0]
003cf9e8  70 30 81 e2                                      add r3, r1, #0x70
003cf9ec  d4 30 8d e5                                      str r3, [sp, #0xd4]
003cf9f0  70 10 91 e5                                      ldr r1, [r1, #0x70]
003cf9f4  02 20 94 e7                                      ldr r2, [r4, r2]
003cf9f8  04 00 95 e5                                      ldr r0, [r5, #4]
003cf9fc  dc 30 8d e5                                      str r3, [sp, #0xdc]
003cfa00  00 b0 92 e5                                      ldr fp, [r2]
003cfa04  d8 10 8d e5                                      str r1, [sp, #0xd8]
003cfa08  77 4d ff eb                                      bl #0x3a2fec
003cfa0c  44 30 a0 e3                                      mov r3, #0x44
003cfa10  93 b0 20 e0                                      mla r0, r3, r0, fp
003cfa14  db 2f 00 e3                                      movw r2, #0xfdb
003cfa18  c9 20 44 e3                                      movt r2, #0x40c9
003cfa1c  40 10 90 e5                                      ldr r1, [r0, #0x40]
003cfa20  d0 30 8d e2                                      add r3, sp, #0xd0
003cfa24  08 00 a0 e1                                      mov r0, r8
003cfa28  7e 4e 03 eb                                      bl #0x4a3428
003cfa2c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
003cfa30  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003cfa34  03 00 52 e1                                      cmp r2, r3
003cfa38  52 00 00 0a                                      beq #0x3cfb88
003cfa3c  40 00 9a e5                                      ldr r0, [sl, #0x40]
003cfa40  09 20 a0 e1                                      mov r2, sb
003cfa44  00 10 a0 e3                                      mov r1, #0
003cfa48  8a 7a fe eb                                      bl #0x36e478
003cfa4c  04 90 95 e5                                      ldr sb, [r5, #4]
003cfa50  60 76 90 e5                                      ldr r7, [r0, #0x660]
003cfa54  48 a4 99 e5                                      ldr sl, [sb, #0x448]
003cfa58  11 9d 89 e2                                      add sb, sb, #0x440
003cfa5c  04 90 89 e2                                      add sb, sb, #4
003cfa60  00 00 5a e3                                      cmp sl, #0
003cfa64  27 00 00 0a                                      beq #0x3cfb08
003cfa68  09 20 a0 e1                                      mov r2, sb
003cfa6c  01 00 00 ea                                      b #0x3cfa78
003cfa70  0a 20 a0 e1                                      mov r2, sl
003cfa74  03 a0 a0 e1                                      mov sl, r3
003cfa78  10 30 9a e5                                      ldr r3, [sl, #0x10]
003cfa7c  03 00 57 e1                                      cmp r7, r3
003cfa80  0c 30 9a 85                                      ldrhi r3, [sl, #0xc]
003cfa84  08 30 9a 95                                      ldrls r3, [sl, #8]
003cfa88  02 a0 a0 81                                      movhi sl, r2
003cfa8c  00 00 53 e3                                      cmp r3, #0
003cfa90  f6 ff ff 1a                                      bne #0x3cfa70
003cfa94  0a 00 59 e1                                      cmp sb, sl
003cfa98  02 00 00 0a                                      beq #0x3cfaa8
003cfa9c  10 30 9a e5                                      ldr r3, [sl, #0x10]
003cfaa0  03 00 57 e1                                      cmp r7, r3
003cfaa4  17 00 00 3a                                      blo #0x3cfb08
003cfaa8  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
003cfaac  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003cfab0  03 00 52 e1                                      cmp r2, r3
003cfab4  06 00 00 1a                                      bne #0x3cfad4
003cfab8  1e 00 00 ea                                      b #0x3cfb38
003cfabc  08 00 a0 e1                                      mov r0, r8
003cfac0  14 00 ff eb                                      bl #0x38fb18
003cfac4  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
003cfac8  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
003cfacc  03 00 52 e1                                      cmp r2, r3
003cfad0  18 00 00 0a                                      beq #0x3cfb38
003cfad4  00 30 93 e5                                      ldr r3, [r3]
003cfad8  07 00 53 e1                                      cmp r3, r7
003cfadc  f6 ff ff 1a                                      bne #0x3cfabc
003cfae0  01 30 a0 e3                                      mov r3, #1
003cfae4  0a 00 59 e1                                      cmp sb, sl
003cfae8  14 00 00 0a                                      beq #0x3cfb40
003cfaec  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
003cfaf0  08 00 a0 e1                                      mov r0, r8
003cfaf4  03 30 94 e7                                      ldr r3, [r4, r3]
003cfaf8  08 30 83 e2                                      add r3, r3, #8
003cfafc  d0 30 8d e5                                      str r3, [sp, #0xd0]
003cfb00  a1 f5 fe eb                                      bl #0x38d18c
003cfb04  49 fe ff ea                                      b #0x3cf430
003cfb08  09 a0 a0 e1                                      mov sl, sb
003cfb0c  e5 ff ff ea                                      b #0x3cfaa8
003cfb10  07 10 a0 e1                                      mov r1, r7
003cfb14  05 00 a0 e1                                      mov r0, r5
003cfb18  92 1c 00 eb                                      bl #0x3d6d68
003cfb1c  05 00 a0 e1                                      mov r0, r5
003cfb20  08 10 a0 e1                                      mov r1, r8
003cfb24  08 20 a0 e1                                      mov r2, r8
003cfb28  58 1b 00 eb                                      bl #0x3d6890
003cfb2c  05 00 a0 e1                                      mov r0, r5
003cfb30  a3 13 00 eb                                      bl #0x3d49c4
003cfb34  3d fe ff ea                                      b #0x3cf430
003cfb38  00 30 a0 e3                                      mov r3, #0
003cfb3c  e8 ff ff ea                                      b #0x3cfae4
003cfb40  00 00 53 e3                                      cmp r3, #0
003cfb44  e8 ff ff 0a                                      beq #0x3cfaec
003cfb48  04 00 95 e5                                      ldr r0, [r5, #4]
003cfb4c  07 10 a0 e1                                      mov r1, r7
003cfb50  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cfb54  fc 16 00 eb                                      bl #0x3d574c
003cfb58  00 00 50 e3                                      cmp r0, #0
003cfb5c  e2 ff ff 0a                                      beq #0x3cfaec
003cfb60  50 30 9f e5                                      ldr r3, [pc, #0x50]
003cfb64  04 00 95 e5                                      ldr r0, [r5, #4]
003cfb68  07 10 a0 e1                                      mov r1, r7
003cfb6c  03 30 94 e7                                      ldr r3, [r4, r3]
003cfb70  f2 0f 80 e2                                      add r0, r0, #0x3c8
003cfb74  00 30 93 e5                                      ldr r3, [r3]
003cfb78  30 20 93 e5                                      ldr r2, [r3, #0x30]
003cfb7c  39 20 00 eb                                      bl #0x3d7c68
003cfb80  d9 ff ff ea                                      b #0x3cfaec
003cfb84  e1 f9 fc eb                                      bl #0x30e310
003cfb88  07 10 a0 e1                                      mov r1, r7
003cfb8c  05 00 a0 e1                                      mov r0, r5
003cfb90  74 1c 00 eb                                      bl #0x3d6d68
003cfb94  00 10 a0 e3                                      mov r1, #0
003cfb98  05 00 a0 e1                                      mov r0, r5
003cfb9c  01 20 a0 e1                                      mov r2, r1
003cfba0  3a 1b 00 eb                                      bl #0x3d6890
003cfba4  05 00 a0 e1                                      mov r0, r5
003cfba8  85 13 00 eb                                      bl #0x3d49c4
003cfbac  ce ff ff ea                                      b #0x3cfaec
; mapping-symbol data/literal pool
003cfbb0  90 56 5c 00 ac 40 00 00 c8 32 00 00 84 08 00 00  .byte 0x90, 0x56, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc8, 0x32, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00
003cfbc0  78 47 4f 00 58 07 00 00 f4 37 00 00 30 26 00 00  .byte 0x78, 0x47, 0x4f, 0x00, 0x58, 0x07, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x30, 0x26, 0x00, 0x00
003cfbd0  c0 19 00 00 40 ed 4e 00 4c 5d 4f 00 c0 39 00 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x40, 0xed, 0x4e, 0x00, 0x4c, 0x5d, 0x4f, 0x00, 0xc0, 0x39, 0x00, 0x00
003cfbe0  10 5b 4f 00 34 5c 4f 00 94 0c 00 00 88 10 00 00  .byte 0x10, 0x5b, 0x4f, 0x00, 0x34, 0x5c, 0x4f, 0x00, 0x94, 0x0c, 0x00, 0x00, 0x88, 0x10, 0x00, 0x00
003cfbf0  b8 28 00 00                                      .byte 0xb8, 0x28, 0x00, 0x00

; FUNCTION 0x003cfbf4, declared_size=372, range_size=372, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI6UpdateEv
; demangled: CharAI::Update()
; decoder-mode: arm
003cfbf4  70 40 2d e9                                      push {r4, r5, r6, lr}
003cfbf8  00 50 a0 e1                                      mov r5, r0
003cfbfc  40 01 9f e5                                      ldr r0, [pc, #0x140]
003cfc00  40 41 9f e5                                      ldr r4, [pc, #0x140]
003cfc04  00 00 8f e0                                      add r0, pc, r0
003cfc08  a9 0e fd eb                                      bl #0x3136b4
003cfc0c  18 30 d5 e5                                      ldrb r3, [r5, #0x18]
003cfc10  04 40 8f e0                                      add r4, pc, r4
003cfc14  00 00 53 e3                                      cmp r3, #0
003cfc18  09 00 00 1a                                      bne #0x3cfc44
003cfc1c  04 60 95 e5                                      ldr r6, [r5, #4]
003cfc20  78 33 96 e5                                      ldr r3, [r6, #0x378]
003cfc24  09 20 d3 e5                                      ldrb r2, [r3, #9]
003cfc28  00 00 52 e3                                      cmp r2, #0
003cfc2c  0b 00 00 1a                                      bne #0x3cfc60
003cfc30  14 21 9f e5                                      ldr r2, [pc, #0x114]
003cfc34  02 20 94 e7                                      ldr r2, [r4, r2]
003cfc38  00 20 d2 e5                                      ldrb r2, [r2]
003cfc3c  00 00 52 e3                                      cmp r2, #0
003cfc40  03 00 00 0a                                      beq #0x3cfc54
003cfc44  04 01 9f e5                                      ldr r0, [pc, #0x104]
003cfc48  00 00 8f e0                                      add r0, pc, r0
003cfc4c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cfc50  98 0e fd ea                                      b #0x3136b8
003cfc54  08 30 d3 e5                                      ldrb r3, [r3, #8]
003cfc58  00 00 53 e3                                      cmp r3, #0
003cfc5c  f8 ff ff 1a                                      bne #0x3cfc44
003cfc60  20 35 96 e5                                      ldr r3, [r6, #0x520]
003cfc64  01 0c 13 e3                                      tst r3, #0x100
003cfc68  f5 ff ff 0a                                      beq #0x3cfc44
003cfc6c  00 30 96 e5                                      ldr r3, [r6]
003cfc70  06 00 a0 e1                                      mov r0, r6
003cfc74  0f e0 a0 e1                                      mov lr, pc
003cfc78  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003cfc7c  00 00 50 e3                                      cmp r0, #0
003cfc80  02 00 00 0a                                      beq #0x3cfc90
003cfc84  ee 32 d6 e5                                      ldrb r3, [r6, #0x2ee]
003cfc88  00 00 53 e3                                      cmp r3, #0
003cfc8c  28 00 00 1a                                      bne #0x3cfd34
003cfc90  bc 60 9f e5                                      ldr r6, [pc, #0xbc]
003cfc94  04 30 95 e5                                      ldr r3, [r5, #4]
003cfc98  01 20 a0 e3                                      mov r2, #1
003cfc9c  06 60 8f e0                                      add r6, pc, r6
003cfca0  b0 40 9f e5                                      ldr r4, [pc, #0xb0]
003cfca4  88 20 c3 e5                                      strb r2, [r3, #0x88]
003cfca8  06 00 a0 e1                                      mov r0, r6
003cfcac  80 0e fd eb                                      bl #0x3136b4
003cfcb0  05 00 a0 e1                                      mov r0, r5
003cfcb4  13 ef ff eb                                      bl #0x3cb908
003cfcb8  04 40 8f e0                                      add r4, pc, r4
003cfcbc  06 00 a0 e1                                      mov r0, r6
003cfcc0  94 60 9f e5                                      ldr r6, [pc, #0x94]
003cfcc4  7b 0e fd eb                                      bl #0x3136b8
003cfcc8  04 00 a0 e1                                      mov r0, r4
003cfccc  78 0e fd eb                                      bl #0x3136b4
003cfcd0  05 00 a0 e1                                      mov r0, r5
003cfcd4  32 f2 ff eb                                      bl #0x3cc5a4
003cfcd8  06 60 8f e0                                      add r6, pc, r6
003cfcdc  04 00 a0 e1                                      mov r0, r4
003cfce0  78 40 9f e5                                      ldr r4, [pc, #0x78]
003cfce4  73 0e fd eb                                      bl #0x3136b8
003cfce8  06 00 a0 e1                                      mov r0, r6
003cfcec  70 0e fd eb                                      bl #0x3136b4
003cfcf0  05 00 a0 e1                                      mov r0, r5
003cfcf4  bd fd ff eb                                      bl #0x3cf3f0
003cfcf8  04 40 8f e0                                      add r4, pc, r4
003cfcfc  06 00 a0 e1                                      mov r0, r6
003cfd00  6c 0e fd eb                                      bl #0x3136b8
003cfd04  04 00 a0 e1                                      mov r0, r4
003cfd08  69 0e fd eb                                      bl #0x3136b4
003cfd0c  05 00 a0 e1                                      mov r0, r5
003cfd10  00 30 95 e5                                      ldr r3, [r5]
003cfd14  0f e0 a0 e1                                      mov lr, pc
003cfd18  18 f0 93 e5                                      ldr pc, [r3, #0x18]
003cfd1c  04 00 a0 e1                                      mov r0, r4
003cfd20  64 0e fd eb                                      bl #0x3136b8
003cfd24  38 00 9f e5                                      ldr r0, [pc, #0x38]
003cfd28  00 00 8f e0                                      add r0, pc, r0
003cfd2c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003cfd30  60 0e fd ea                                      b #0x3136b8
003cfd34  f0 32 d6 e5                                      ldrb r3, [r6, #0x2f0]
003cfd38  00 00 53 e3                                      cmp r3, #0
003cfd3c  c0 ff ff 0a                                      beq #0x3cfc44
003cfd40  d2 ff ff ea                                      b #0x3cfc90
; mapping-symbol data/literal pool
003cfd44  fc 57 4f 00 80 4e 5c 00 50 36 00 00 b8 57 4f 00  .byte 0xfc, 0x57, 0x4f, 0x00, 0x80, 0x4e, 0x5c, 0x00, 0x50, 0x36, 0x00, 0x00, 0xb8, 0x57, 0x4f, 0x00
003cfd54  7c 57 4f 00 78 57 4f 00 70 57 4f 00 68 57 4f 00  .byte 0x7c, 0x57, 0x4f, 0x00, 0x78, 0x57, 0x4f, 0x00, 0x70, 0x57, 0x4f, 0x00, 0x68, 0x57, 0x4f, 0x00
003cfd64  d8 56 4f 00                                      .byte 0xd8, 0x56, 0x4f, 0x00

; FUNCTION 0x003cfd68, declared_size=20, range_size=20, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14AI_SendMessageEiPKv
; demangled: CharAI::AI_SendMessage(int, void const*)
; decoder-mode: arm
003cfd68  10 40 2d e9                                      push {r4, lr}
003cfd6c  00 30 90 e5                                      ldr r3, [r0]
003cfd70  0f e0 a0 e1                                      mov lr, pc
003cfd74  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003cfd78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003cfd7c, declared_size=104, range_size=104, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16AI_ScriptCleanUpEv
; demangled: CharAI::AI_ScriptCleanUp()
; decoder-mode: arm
003cfd7c  10 40 2d e9                                      push {r4, lr}
003cfd80  00 40 a0 e1                                      mov r4, r0
003cfd84  04 00 90 e5                                      ldr r0, [r0, #4]
003cfd88  10 10 94 e5                                      ldr r1, [r4, #0x10]
003cfd8c  ed 0f 80 e2                                      add r0, r0, #0x3b4
003cfd90  50 2d 00 eb                                      bl #0x3db2d8
003cfd94  04 00 94 e5                                      ldr r0, [r4, #4]
003cfd98  14 10 94 e5                                      ldr r1, [r4, #0x14]
003cfd9c  ed 0f 80 e2                                      add r0, r0, #0x3b4
003cfda0  4c 2d 00 eb                                      bl #0x3db2d8
003cfda4  1c 20 94 e5                                      ldr r2, [r4, #0x1c]
003cfda8  00 30 e0 e3                                      mvn r3, #0
003cfdac  14 30 84 e5                                      str r3, [r4, #0x14]
003cfdb0  00 00 52 e3                                      cmp r2, #0
003cfdb4  10 30 84 e5                                      str r3, [r4, #0x10]
003cfdb8  08 00 00 0a                                      beq #0x3cfde0
003cfdbc  04 00 a0 e1                                      mov r0, r4
003cfdc0  46 23 00 eb                                      bl #0x3d8ae0
003cfdc4  04 00 a0 e1                                      mov r0, r4
003cfdc8  32 23 00 eb                                      bl #0x3d8a98
003cfdcc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003cfdd0  03 00 a0 e1                                      mov r0, r3
003cfdd4  00 30 93 e5                                      ldr r3, [r3]
003cfdd8  0f e0 a0 e1                                      mov lr, pc
003cfddc  14 f0 93 e5                                      ldr pc, [r3, #0x14]
003cfde0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003cfde4, declared_size=336, range_size=336, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13AI_ScriptInitEv
; demangled: CharAI::AI_ScriptInit()
; decoder-mode: arm
003cfde4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003cfde8  04 30 90 e5                                      ldr r3, [r0, #4]
003cfdec  0c d0 4d e2                                      sub sp, sp, #0xc
003cfdf0  00 40 a0 e1                                      mov r4, r0
003cfdf4  03 00 a0 e1                                      mov r0, r3
003cfdf8  00 30 93 e5                                      ldr r3, [r3]
003cfdfc  0f e0 a0 e1                                      mov lr, pc
003cfe00  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003cfe04  10 51 9f e5                                      ldr r5, [pc, #0x110]
003cfe08  00 00 50 e3                                      cmp r0, #0
003cfe0c  05 50 8f e0                                      add r5, pc, r5
003cfe10  2e 00 00 1a                                      bne #0x3cfed0
003cfe14  10 10 94 e5                                      ldr r1, [r4, #0x10]
003cfe18  01 00 71 e3                                      cmn r1, #1
003cfe1c  02 00 00 0a                                      beq #0x3cfe2c
003cfe20  04 00 94 e5                                      ldr r0, [r4, #4]
003cfe24  ed 0f 80 e2                                      add r0, r0, #0x3b4
003cfe28  2a 2d 00 eb                                      bl #0x3db2d8
003cfe2c  ec 60 9f e5                                      ldr r6, [pc, #0xec]
003cfe30  ec 10 9f e5                                      ldr r1, [pc, #0xec]
003cfe34  ec 20 9f e5                                      ldr r2, [pc, #0xec]
003cfe38  06 30 95 e7                                      ldr r3, [r5, r6]
003cfe3c  01 10 8f e0                                      add r1, pc, r1
003cfe40  02 20 8f e0                                      add r2, pc, r2
003cfe44  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003cfe48  04 70 94 e5                                      ldr r7, [r4, #4]
003cfe4c  62 d3 03 eb                                      bl #0x4c4bdc
003cfe50  ed 7f 87 e2                                      add r7, r7, #0x3b4
003cfe54  00 10 a0 e1                                      mov r1, r0
003cfe58  00 c0 a0 e3                                      mov ip, #0
003cfe5c  07 00 a0 e1                                      mov r0, r7
003cfe60  00 20 e0 e3                                      mvn r2, #0
003cfe64  33 30 a0 e3                                      mov r3, #0x33
003cfe68  00 c0 8d e5                                      str ip, [sp]
003cfe6c  ec 2f 00 eb                                      bl #0x3dbe24
003cfe70  14 10 94 e5                                      ldr r1, [r4, #0x14]
003cfe74  10 00 84 e5                                      str r0, [r4, #0x10]
003cfe78  01 00 71 e3                                      cmn r1, #1
003cfe7c  02 00 00 0a                                      beq #0x3cfe8c
003cfe80  04 00 94 e5                                      ldr r0, [r4, #4]
003cfe84  ed 0f 80 e2                                      add r0, r0, #0x3b4
003cfe88  12 2d 00 eb                                      bl #0x3db2d8
003cfe8c  06 30 95 e7                                      ldr r3, [r5, r6]
003cfe90  94 10 9f e5                                      ldr r1, [pc, #0x94]
003cfe94  94 20 9f e5                                      ldr r2, [pc, #0x94]
003cfe98  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003cfe9c  01 10 8f e0                                      add r1, pc, r1
003cfea0  02 20 8f e0                                      add r2, pc, r2
003cfea4  04 50 94 e5                                      ldr r5, [r4, #4]
003cfea8  4b d3 03 eb                                      bl #0x4c4bdc
003cfeac  ed 5f 85 e2                                      add r5, r5, #0x3b4
003cfeb0  00 10 a0 e1                                      mov r1, r0
003cfeb4  00 c0 a0 e3                                      mov ip, #0
003cfeb8  05 00 a0 e1                                      mov r0, r5
003cfebc  00 20 e0 e3                                      mvn r2, #0
003cfec0  34 30 a0 e3                                      mov r3, #0x34
003cfec4  00 c0 8d e5                                      str ip, [sp]
003cfec8  d5 2f 00 eb                                      bl #0x3dbe24
003cfecc  14 00 84 e5                                      str r0, [r4, #0x14]
003cfed0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003cfed4  00 00 53 e3                                      cmp r3, #0
003cfed8  0d 00 00 0a                                      beq #0x3cff14
003cfedc  03 00 a0 e1                                      mov r0, r3
003cfee0  00 30 93 e5                                      ldr r3, [r3]
003cfee4  0f e0 a0 e1                                      mov lr, pc
003cfee8  08 f0 93 e5                                      ldr pc, [r3, #8]
003cfeec  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003cfef0  03 00 a0 e1                                      mov r0, r3
003cfef4  00 30 93 e5                                      ldr r3, [r3]
003cfef8  0f e0 a0 e1                                      mov lr, pc
003cfefc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003cff00  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003cff04  03 00 a0 e1                                      mov r0, r3
003cff08  00 30 93 e5                                      ldr r3, [r3]
003cff0c  0f e0 a0 e1                                      mov lr, pc
003cff10  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003cff14  0c d0 8d e2                                      add sp, sp, #0xc
003cff18  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003cff1c  84 4c 5c 00 f4 37 00 00 14 19 4f 00 38 56 4f 00  .byte 0x84, 0x4c, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x14, 0x19, 0x4f, 0x00, 0x38, 0x56, 0x4f, 0x00
003cff2c  b4 18 4f 00 e0 55 4f 00                          .byte 0xb4, 0x18, 0x4f, 0x00, 0xe0, 0x55, 0x4f, 0x00

; FUNCTION 0x003cff34, declared_size=236, range_size=236, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15AI_InteractWithEP10GameObject
; demangled: CharAI::AI_InteractWith(GameObject*)
; decoder-mode: arm
003cff34  70 40 2d e9                                      push {r4, r5, r6, lr}
003cff38  04 30 90 e5                                      ldr r3, [r0, #4]
003cff3c  08 d0 4d e2                                      sub sp, sp, #8
003cff40  00 40 a0 e1                                      mov r4, r0
003cff44  03 00 a0 e1                                      mov r0, r3
003cff48  00 30 93 e5                                      ldr r3, [r3]
003cff4c  01 60 a0 e1                                      mov r6, r1
003cff50  0f e0 a0 e1                                      mov lr, pc
003cff54  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003cff58  00 20 50 e2                                      subs r2, r0, #0
003cff5c  0d 00 00 1a                                      bne #0x3cff98
003cff60  00 00 56 e3                                      cmp r6, #0
003cff64  0d 00 00 0a                                      beq #0x3cffa0
003cff68  04 00 a0 e1                                      mov r0, r4
003cff6c  06 10 a0 e1                                      mov r1, r6
003cff70  46 1a 00 eb                                      bl #0x3d6890
003cff74  4c 50 d4 e5                                      ldrb r5, [r4, #0x4c]
003cff78  00 00 55 e3                                      cmp r5, #0
003cff7c  05 00 00 1a                                      bne #0x3cff98
003cff80  00 30 94 e5                                      ldr r3, [r4]
003cff84  04 00 a0 e1                                      mov r0, r4
003cff88  0f e0 a0 e1                                      mov lr, pc
003cff8c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
003cff90  00 00 50 e3                                      cmp r0, #0
003cff94  05 00 00 1a                                      bne #0x3cffb0
003cff98  08 d0 8d e2                                      add sp, sp, #8
003cff9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003cffa0  40 60 94 e5                                      ldr r6, [r4, #0x40]
003cffa4  00 00 56 e3                                      cmp r6, #0
003cffa8  f1 ff ff 1a                                      bne #0x3cff74
003cffac  f9 ff ff ea                                      b #0x3cff98
003cffb0  00 30 96 e5                                      ldr r3, [r6]
003cffb4  06 00 a0 e1                                      mov r0, r6
003cffb8  04 10 94 e5                                      ldr r1, [r4, #4]
003cffbc  0f e0 a0 e1                                      mov lr, pc
003cffc0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003cffc4  02 30 80 e2                                      add r3, r0, #2
003cffc8  01 20 a0 e3                                      mov r2, #1
003cffcc  01 00 53 e3                                      cmp r3, #1
003cffd0  4c 20 c4 e5                                      strb r2, [r4, #0x4c]
003cffd4  0c 00 00 9a                                      bls #0x3d000c
003cffd8  04 30 94 e5                                      ldr r3, [r4, #4]
003cffdc  00 10 a0 e1                                      mov r1, r0
003cffe0  00 50 8d e5                                      str r5, [sp]
003cffe4  4f 0e 83 e2                                      add r0, r3, #0x4f0
003cffe8  0c 00 80 e2                                      add r0, r0, #0xc
003cffec  06 30 a0 e1                                      mov r3, r6
003cfff0  2d d9 ff eb                                      bl #0x3c64ac
003cfff4  04 00 94 e5                                      ldr r0, [r4, #4]
003cfff8  4f 0e 80 e2                                      add r0, r0, #0x4f0
003cfffc  0c 00 80 e2                                      add r0, r0, #0xc
003d0000  00 c1 ff eb                                      bl #0x3c0408
003d0004  00 00 50 e3                                      cmp r0, #0
003d0008  e2 ff ff 0a                                      beq #0x3cff98
003d000c  04 00 a0 e1                                      mov r0, r4
003d0010  00 30 94 e5                                      ldr r3, [r4]
003d0014  0f e0 a0 e1                                      mov lr, pc
003d0018  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003d001c  dd ff ff ea                                      b #0x3cff98

; FUNCTION 0x003d01ac, declared_size=1472, range_size=1472, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16AI_DoMeleeAttackEP10GameObjectb
; demangled: CharAI::AI_DoMeleeAttack(GameObject*, bool)
; decoder-mode: arm
003d01ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d01b0  7c 45 9f e5                                      ldr r4, [pc, #0x57c]
003d01b4  7c 55 9f e5                                      ldr r5, [pc, #0x57c]
003d01b8  00 60 a0 e1                                      mov r6, r0
003d01bc  04 40 8f e0                                      add r4, pc, r4
003d01c0  05 00 94 e7                                      ldr r0, [r4, r5]
003d01c4  01 a0 a0 e1                                      mov sl, r1
003d01c8  04 30 96 e5                                      ldr r3, [r6, #4]
003d01cc  00 10 90 e5                                      ldr r1, [r0]
003d01d0  45 df 4d e2                                      sub sp, sp, #0x114
003d01d4  03 00 a0 e1                                      mov r0, r3
003d01d8  0c 11 8d e5                                      str r1, [sp, #0x10c]
003d01dc  00 30 93 e5                                      ldr r3, [r3]
003d01e0  02 70 a0 e1                                      mov r7, r2
003d01e4  0f e0 a0 e1                                      mov lr, pc
003d01e8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d01ec  00 00 50 e3                                      cmp r0, #0
003d01f0  03 00 00 1a                                      bne #0x3d0204
003d01f4  04 30 96 e5                                      ldr r3, [r6, #4]
003d01f8  28 25 93 e5                                      ldr r2, [r3, #0x528]
003d01fc  01 00 12 e3                                      tst r2, #1
003d0200  06 00 00 0a                                      beq #0x3d0220
003d0204  05 30 94 e7                                      ldr r3, [r4, r5]
003d0208  0c 21 9d e5                                      ldr r2, [sp, #0x10c]
003d020c  00 30 93 e5                                      ldr r3, [r3]
003d0210  03 00 52 e1                                      cmp r2, r3
003d0214  45 01 00 1a                                      bne #0x3d0730
003d0218  45 df 8d e2                                      add sp, sp, #0x114
003d021c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d0220  03 00 a0 e1                                      mov r0, r3
003d0224  00 30 93 e5                                      ldr r3, [r3]
003d0228  0f e0 a0 e1                                      mov lr, pc
003d022c  24 f1 93 e5                                      ldr pc, [r3, #0x124]
003d0230  00 00 50 e3                                      cmp r0, #0
003d0234  4d 00 00 1a                                      bne #0x3d0370
003d0238  04 00 96 e5                                      ldr r0, [r6, #4]
003d023c  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d0240  0c 00 80 e2                                      add r0, r0, #0xc
003d0244  21 c0 ff eb                                      bl #0x3c02d0
003d0248  00 80 50 e2                                      subs r8, r0, #0
003d024c  4c 00 00 0a                                      beq #0x3d0384
003d0250  79 70 d6 e5                                      ldrb r7, [r6, #0x79]
003d0254  00 00 57 e3                                      cmp r7, #0
003d0258  e9 ff ff 1a                                      bne #0x3d0204
003d025c  d8 b4 9f e5                                      ldr fp, [pc, #0x4d8]
003d0260  f4 a0 8d e2                                      add sl, sp, #0xf4
003d0264  10 80 8d e2                                      add r8, sp, #0x10
003d0268  0b 90 94 e7                                      ldr sb, [r4, fp]
003d026c  09 00 a0 e1                                      mov r0, sb
003d0270  84 9d fd eb                                      bl #0x337888
003d0274  c4 14 9f e5                                      ldr r1, [pc, #0x4c4]
003d0278  78 20 8d e2                                      add r2, sp, #0x78
003d027c  0a 00 a0 e1                                      mov r0, sl
003d0280  01 10 8f e0                                      add r1, pc, r1
003d0284  98 0f fd eb                                      bl #0x3140ec
003d0288  0a 10 a0 e1                                      mov r1, sl
003d028c  09 00 a0 e1                                      mov r0, sb
003d0290  fc 9d fd eb                                      bl #0x337a88
003d0294  0a 00 a0 e1                                      mov r0, sl
003d0298  ed 1f fd eb                                      bl #0x318254
003d029c  01 c0 a0 e3                                      mov ip, #1
003d02a0  04 10 96 e5                                      ldr r1, [r6, #4]
003d02a4  78 c0 c6 e5                                      strb ip, [r6, #0x78]
003d02a8  07 30 a0 e1                                      mov r3, r7
003d02ac  0c 20 a0 e1                                      mov r2, ip
003d02b0  08 00 a0 e1                                      mov r0, r8
003d02b4  00 c0 8d e5                                      str ip, [sp]
003d02b8  1c 49 03 eb                                      bl #0x4a2730
003d02bc  04 30 96 e5                                      ldr r3, [r6, #4]
003d02c0  b5 11 d3 e5                                      ldrb r1, [r3, #0x1b5]
003d02c4  00 00 51 e3                                      cmp r1, #0
003d02c8  5a 00 00 1a                                      bne #0x3d0438
003d02cc  40 30 96 e5                                      ldr r3, [r6, #0x40]
003d02d0  00 00 53 e3                                      cmp r3, #0
003d02d4  03 00 00 0a                                      beq #0x3d02e8
003d02d8  06 00 a0 e1                                      mov r0, r6
003d02dc  44 19 00 eb                                      bl #0x3d67f4
003d02e0  00 00 50 e3                                      cmp r0, #0
003d02e4  d8 00 00 1a                                      bne #0x3d064c
003d02e8  08 00 a0 e1                                      mov r0, r8
003d02ec  9a ff ff eb                                      bl #0x3d015c
003d02f0  db 2f 00 e3                                      movw r2, #0xfdb
003d02f4  08 00 a0 e1                                      mov r0, r8
003d02f8  00 10 a0 e3                                      mov r1, #0
003d02fc  c9 20 44 e3                                      movt r2, #0x40c9
003d0300  46 ff ff eb                                      bl #0x3d0020
003d0304  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d0308  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d030c  03 00 52 e1                                      cmp r2, r3
003d0310  13 00 00 0a                                      beq #0x3d0364
003d0314  00 10 93 e5                                      ldr r1, [r3]
003d0318  00 20 a0 e3                                      mov r2, #0
003d031c  06 00 a0 e1                                      mov r0, r6
003d0320  5a 19 00 eb                                      bl #0x3d6890
003d0324  0b a0 94 e7                                      ldr sl, [r4, fp]
003d0328  c4 70 8d e2                                      add r7, sp, #0xc4
003d032c  0a 00 a0 e1                                      mov r0, sl
003d0330  54 9d fd eb                                      bl #0x337888
003d0334  08 14 9f e5                                      ldr r1, [pc, #0x408]
003d0338  70 20 8d e2                                      add r2, sp, #0x70
003d033c  07 00 a0 e1                                      mov r0, r7
003d0340  01 10 8f e0                                      add r1, pc, r1
003d0344  68 0f fd eb                                      bl #0x3140ec
003d0348  0a 00 a0 e1                                      mov r0, sl
003d034c  07 10 a0 e1                                      mov r1, r7
003d0350  cc 9d fd eb                                      bl #0x337a88
003d0354  00 00 50 e3                                      cmp r0, #0
003d0358  48 00 00 1a                                      bne #0x3d0480
003d035c  07 00 a0 e1                                      mov r0, r7
003d0360  bb 1f fd eb                                      bl #0x318254
003d0364  08 00 a0 e1                                      mov r0, r8
003d0368  87 f3 fe eb                                      bl #0x38d18c
003d036c  a4 ff ff ea                                      b #0x3d0204
003d0370  06 00 a0 e1                                      mov r0, r6
003d0374  0a 10 a0 e1                                      mov r1, sl
003d0378  07 20 a0 e1                                      mov r2, r7
003d037c  fa 00 00 eb                                      bl #0x3d076c
003d0380  9f ff ff ea                                      b #0x3d0204
003d0384  b0 b3 9f e5                                      ldr fp, [pc, #0x3b0]
003d0388  ac 90 8d e2                                      add sb, sp, #0xac
003d038c  0b 30 94 e7                                      ldr r3, [r4, fp]
003d0390  03 00 a0 e1                                      mov r0, r3
003d0394  0c 30 8d e5                                      str r3, [sp, #0xc]
003d0398  3a 9d fd eb                                      bl #0x337888
003d039c  a4 13 9f e5                                      ldr r1, [pc, #0x3a4]
003d03a0  6c 20 8d e2                                      add r2, sp, #0x6c
003d03a4  09 00 a0 e1                                      mov r0, sb
003d03a8  01 10 8f e0                                      add r1, pc, r1
003d03ac  4e 0f fd eb                                      bl #0x3140ec
003d03b0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003d03b4  09 10 a0 e1                                      mov r1, sb
003d03b8  03 00 a0 e1                                      mov r0, r3
003d03bc  b1 9d fd eb                                      bl #0x337a88
003d03c0  09 00 a0 e1                                      mov r0, sb
003d03c4  a2 1f fd eb                                      bl #0x318254
003d03c8  00 00 5a e3                                      cmp sl, #0
003d03cc  78 80 c6 e5                                      strb r8, [r6, #0x78]
003d03d0  65 00 00 0a                                      beq #0x3d056c
003d03d4  0a 10 a0 e1                                      mov r1, sl
003d03d8  06 00 a0 e1                                      mov r0, r6
003d03dc  07 20 a0 e1                                      mov r2, r7
003d03e0  2a 19 00 eb                                      bl #0x3d6890
003d03e4  40 30 96 e5                                      ldr r3, [r6, #0x40]
003d03e8  00 00 53 e3                                      cmp r3, #0
003d03ec  37 00 00 0a                                      beq #0x3d04d0
003d03f0  00 00 57 e3                                      cmp r7, #0
003d03f4  82 ff ff 1a                                      bne #0x3d0204
003d03f8  40 30 96 e5                                      ldr r3, [r6, #0x40]
003d03fc  00 00 53 e3                                      cmp r3, #0
003d0400  07 10 a0 01                                      moveq r1, r7
003d0404  05 00 00 0a                                      beq #0x3d0420
003d0408  07 10 a0 e1                                      mov r1, r7
003d040c  06 00 a0 e1                                      mov r0, r6
003d0410  5c 17 00 eb                                      bl #0x3d6188
003d0414  00 00 50 e3                                      cmp r0, #0
003d0418  79 ff ff 0a                                      beq #0x3d0204
003d041c  40 10 96 e5                                      ldr r1, [r6, #0x40]
003d0420  04 00 96 e5                                      ldr r0, [r6, #4]
003d0424  00 20 a0 e3                                      mov r2, #0
003d0428  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d042c  0c 00 80 e2                                      add r0, r0, #0xc
003d0430  14 d8 ff eb                                      bl #0x3c6488
003d0434  72 ff ff ea                                      b #0x3d0204
003d0438  0c 33 9f e5                                      ldr r3, [pc, #0x30c]
003d043c  0c 13 9f e5                                      ldr r1, [pc, #0x30c]
003d0440  0c 23 9f e5                                      ldr r2, [pc, #0x30c]
003d0444  03 30 94 e7                                      ldr r3, [r4, r3]
003d0448  01 10 8f e0                                      add r1, pc, r1
003d044c  02 20 8f e0                                      add r2, pc, r2
003d0450  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003d0454  e0 d1 03 eb                                      bl #0x4c4bdc
003d0458  c0 00 a0 e1                                      asr r0, r0, #1
003d045c  40 f9 fc eb                                      bl #0x30e964
003d0460  35 1a 0f e3                                      movw r1, #0xfa35
003d0464  8e 1c 43 e3                                      movt r1, #0x3c8e
003d0468  3f fa fc eb                                      bl #0x30ed6c
003d046c  00 10 a0 e3                                      mov r1, #0
003d0470  00 20 a0 e1                                      mov r2, r0
003d0474  08 00 a0 e1                                      mov r0, r8
003d0478  e8 fe ff eb                                      bl #0x3d0020
003d047c  a0 ff ff ea                                      b #0x3d0304
003d0480  04 30 96 e5                                      ldr r3, [r6, #4]
003d0484  03 00 a0 e1                                      mov r0, r3
003d0488  00 30 93 e5                                      ldr r3, [r3]
003d048c  0f e0 a0 e1                                      mov lr, pc
003d0490  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d0494  00 00 50 e3                                      cmp r0, #0
003d0498  af ff ff 0a                                      beq #0x3d035c
003d049c  07 00 a0 e1                                      mov r0, r7
003d04a0  6b 1f fd eb                                      bl #0x318254
003d04a4  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d04a8  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d04ac  03 00 52 e1                                      cmp r2, r3
003d04b0  ab ff ff 0a                                      beq #0x3d0364
003d04b4  08 00 a0 e1                                      mov r0, r8
003d04b8  96 fd fe eb                                      bl #0x38fb18
003d04bc  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d04c0  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d04c4  03 00 52 e1                                      cmp r2, r3
003d04c8  f9 ff ff 1a                                      bne #0x3d04b4
003d04cc  a4 ff ff ea                                      b #0x3d0364
003d04d0  04 30 96 e5                                      ldr r3, [r6, #4]
003d04d4  a8 24 01 e3                                      movw r2, #0x14a8
003d04d8  d2 20 93 e1                                      ldrsb r2, [r3, r2]
003d04dc  08 00 52 e3                                      cmp r2, #8
003d04e0  c2 ff ff 1a                                      bne #0x3d03f0
003d04e4  b5 21 d3 e5                                      ldrb r2, [r3, #0x1b5]
003d04e8  00 00 52 e3                                      cmp r2, #0
003d04ec  bf ff ff 1a                                      bne #0x3d03f0
003d04f0  03 00 a0 e1                                      mov r0, r3
003d04f4  00 30 93 e5                                      ldr r3, [r3]
003d04f8  0f e0 a0 e1                                      mov lr, pc
003d04fc  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d0500  00 00 50 e3                                      cmp r0, #0
003d0504  0d 00 00 0a                                      beq #0x3d0540
003d0508  0b a0 94 e7                                      ldr sl, [r4, fp]
003d050c  7c 80 8d e2                                      add r8, sp, #0x7c
003d0510  0a 00 a0 e1                                      mov r0, sl
003d0514  db 9c fd eb                                      bl #0x337888
003d0518  38 12 9f e5                                      ldr r1, [pc, #0x238]
003d051c  64 20 8d e2                                      add r2, sp, #0x64
003d0520  08 00 a0 e1                                      mov r0, r8
003d0524  01 10 8f e0                                      add r1, pc, r1
003d0528  ef 0e fd eb                                      bl #0x3140ec
003d052c  0a 00 a0 e1                                      mov r0, sl
003d0530  08 10 a0 e1                                      mov r1, r8
003d0534  53 9d fd eb                                      bl #0x337a88
003d0538  08 00 a0 e1                                      mov r0, r8
003d053c  44 1f fd eb                                      bl #0x318254
003d0540  04 20 96 e5                                      ldr r2, [r6, #4]
003d0544  01 30 a0 e3                                      mov r3, #1
003d0548  4a 30 c6 e5                                      strb r3, [r6, #0x4a]
003d054c  a4 34 01 e3                                      movw r3, #0x14a4
003d0550  03 10 92 e7                                      ldr r1, [r2, r3]
003d0554  06 00 a0 e1                                      mov r0, r6
003d0558  00 20 a0 e3                                      mov r2, #0
003d055c  cb 18 00 eb                                      bl #0x3d6890
003d0560  06 00 a0 e1                                      mov r0, r6
003d0564  16 11 00 eb                                      bl #0x3d49c4
003d0568  a0 ff ff ea                                      b #0x3d03f0
003d056c  01 c0 a0 e3                                      mov ip, #1
003d0570  10 80 8d e2                                      add r8, sp, #0x10
003d0574  04 10 96 e5                                      ldr r1, [r6, #4]
003d0578  0a 30 a0 e1                                      mov r3, sl
003d057c  0c 20 a0 e1                                      mov r2, ip
003d0580  08 00 a0 e1                                      mov r0, r8
003d0584  00 c0 8d e5                                      str ip, [sp]
003d0588  68 48 03 eb                                      bl #0x4a2730
003d058c  04 30 96 e5                                      ldr r3, [r6, #4]
003d0590  b5 31 d3 e5                                      ldrb r3, [r3, #0x1b5]
003d0594  00 00 53 e3                                      cmp r3, #0
003d0598  48 00 00 0a                                      beq #0x3d06c0
003d059c  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
003d05a0  b4 11 9f e5                                      ldr r1, [pc, #0x1b4]
003d05a4  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
003d05a8  03 30 94 e7                                      ldr r3, [r4, r3]
003d05ac  01 10 8f e0                                      add r1, pc, r1
003d05b0  02 20 8f e0                                      add r2, pc, r2
003d05b4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003d05b8  87 d1 03 eb                                      bl #0x4c4bdc
003d05bc  c0 00 a0 e1                                      asr r0, r0, #1
003d05c0  e7 f8 fc eb                                      bl #0x30e964
003d05c4  35 1a 0f e3                                      movw r1, #0xfa35
003d05c8  8e 1c 43 e3                                      movt r1, #0x3c8e
003d05cc  e6 f9 fc eb                                      bl #0x30ed6c
003d05d0  00 10 a0 e3                                      mov r1, #0
003d05d4  00 20 a0 e1                                      mov r2, r0
003d05d8  08 00 a0 e1                                      mov r0, r8
003d05dc  8f fe ff eb                                      bl #0x3d0020
003d05e0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d05e4  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d05e8  03 00 52 e1                                      cmp r2, r3
003d05ec  13 00 00 0a                                      beq #0x3d0640
003d05f0  00 10 93 e5                                      ldr r1, [r3]
003d05f4  00 20 a0 e3                                      mov r2, #0
003d05f8  06 00 a0 e1                                      mov r0, r6
003d05fc  a3 18 00 eb                                      bl #0x3d6890
003d0600  0b 90 94 e7                                      ldr sb, [r4, fp]
003d0604  94 a0 8d e2                                      add sl, sp, #0x94
003d0608  09 00 a0 e1                                      mov r0, sb
003d060c  9d 9c fd eb                                      bl #0x337888
003d0610  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
003d0614  68 20 8d e2                                      add r2, sp, #0x68
003d0618  0a 00 a0 e1                                      mov r0, sl
003d061c  01 10 8f e0                                      add r1, pc, r1
003d0620  b1 0e fd eb                                      bl #0x3140ec
003d0624  09 00 a0 e1                                      mov r0, sb
003d0628  0a 10 a0 e1                                      mov r1, sl
003d062c  15 9d fd eb                                      bl #0x337a88
003d0630  00 00 50 e3                                      cmp r0, #0
003d0634  29 00 00 1a                                      bne #0x3d06e0
003d0638  0a 00 a0 e1                                      mov r0, sl
003d063c  04 1f fd eb                                      bl #0x318254
003d0640  08 00 a0 e1                                      mov r0, r8
003d0644  d0 f2 fe eb                                      bl #0x38d18c
003d0648  65 ff ff ea                                      b #0x3d03e4
003d064c  40 30 96 e5                                      ldr r3, [r6, #0x40]
003d0650  03 00 a0 e1                                      mov r0, r3
003d0654  00 30 93 e5                                      ldr r3, [r3]
003d0658  0f e0 a0 e1                                      mov lr, pc
003d065c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d0660  00 00 50 e3                                      cmp r0, #0
003d0664  1f ff ff 1a                                      bne #0x3d02e8
003d0668  04 30 96 e5                                      ldr r3, [r6, #4]
003d066c  03 00 a0 e1                                      mov r0, r3
003d0670  00 30 93 e5                                      ldr r3, [r3]
003d0674  0f e0 a0 e1                                      mov lr, pc
003d0678  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d067c  00 00 50 e3                                      cmp r0, #0
003d0680  1f ff ff 0a                                      beq #0x3d0304
003d0684  0b a0 94 e7                                      ldr sl, [r4, fp]
003d0688  dc 70 8d e2                                      add r7, sp, #0xdc
003d068c  0a 00 a0 e1                                      mov r0, sl
003d0690  7c 9c fd eb                                      bl #0x337888
003d0694  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
003d0698  74 20 8d e2                                      add r2, sp, #0x74
003d069c  07 00 a0 e1                                      mov r0, r7
003d06a0  01 10 8f e0                                      add r1, pc, r1
003d06a4  90 0e fd eb                                      bl #0x3140ec
003d06a8  0a 00 a0 e1                                      mov r0, sl
003d06ac  07 10 a0 e1                                      mov r1, r7
003d06b0  f4 9c fd eb                                      bl #0x337a88
003d06b4  07 00 a0 e1                                      mov r0, r7
003d06b8  e5 1e fd eb                                      bl #0x318254
003d06bc  10 ff ff ea                                      b #0x3d0304
003d06c0  08 00 a0 e1                                      mov r0, r8
003d06c4  a4 fe ff eb                                      bl #0x3d015c
003d06c8  db 2f 00 e3                                      movw r2, #0xfdb
003d06cc  08 00 a0 e1                                      mov r0, r8
003d06d0  00 10 a0 e3                                      mov r1, #0
003d06d4  c9 20 44 e3                                      movt r2, #0x40c9
003d06d8  50 fe ff eb                                      bl #0x3d0020
003d06dc  bf ff ff ea                                      b #0x3d05e0
003d06e0  04 30 96 e5                                      ldr r3, [r6, #4]
003d06e4  03 00 a0 e1                                      mov r0, r3
003d06e8  00 30 93 e5                                      ldr r3, [r3]
003d06ec  0f e0 a0 e1                                      mov lr, pc
003d06f0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d06f4  00 00 50 e3                                      cmp r0, #0
003d06f8  ce ff ff 0a                                      beq #0x3d0638
003d06fc  0a 00 a0 e1                                      mov r0, sl
003d0700  d3 1e fd eb                                      bl #0x318254
003d0704  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d0708  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d070c  03 00 52 e1                                      cmp r2, r3
003d0710  ca ff ff 0a                                      beq #0x3d0640
003d0714  08 00 a0 e1                                      mov r0, r8
003d0718  fe fc fe eb                                      bl #0x38fb18
003d071c  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d0720  20 20 9d e5                                      ldr r2, [sp, #0x20]
003d0724  03 00 52 e1                                      cmp r2, r3
003d0728  f9 ff ff 1a                                      bne #0x3d0714
003d072c  c3 ff ff ea                                      b #0x3d0640
003d0730  f6 f6 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d0734  d4 48 5c 00 ac 40 00 00 84 08 00 00 10 52 4f 00  .byte 0xd4, 0x48, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x52, 0x4f, 0x00
003d0744  80 51 4f 00 e8 50 4f 00 f4 37 00 00 08 13 4f 00  .byte 0x80, 0x51, 0x4f, 0x00, 0xe8, 0x50, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x08, 0x13, 0x4f, 0x00
003d0754  5c 50 4f 00 9c 4f 4f 00 a4 11 4f 00 f8 4e 4f 00  .byte 0x5c, 0x50, 0x4f, 0x00, 0x9c, 0x4f, 0x4f, 0x00, 0xa4, 0x11, 0x4f, 0x00, 0xf8, 0x4e, 0x4f, 0x00
003d0764  a4 4e 4f 00 20 4e 4f 00                          .byte 0xa4, 0x4e, 0x4f, 0x00, 0x20, 0x4e, 0x4f, 0x00

; FUNCTION 0x003d076c, declared_size=1044, range_size=1044, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16AI_DoRangeAttackEP10GameObjectb
; demangled: CharAI::AI_DoRangeAttack(GameObject*, bool)
; decoder-mode: arm
003d076c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d0770  dc 43 9f e5                                      ldr r4, [pc, #0x3dc]
003d0774  dc 53 9f e5                                      ldr r5, [pc, #0x3dc]
003d0778  00 60 a0 e1                                      mov r6, r0
003d077c  04 40 8f e0                                      add r4, pc, r4
003d0780  05 00 94 e7                                      ldr r0, [r4, r5]
003d0784  01 70 a0 e1                                      mov r7, r1
003d0788  04 30 96 e5                                      ldr r3, [r6, #4]
003d078c  00 10 90 e5                                      ldr r1, [r0]
003d0790  c4 d0 4d e2                                      sub sp, sp, #0xc4
003d0794  03 00 a0 e1                                      mov r0, r3
003d0798  bc 10 8d e5                                      str r1, [sp, #0xbc]
003d079c  00 30 93 e5                                      ldr r3, [r3]
003d07a0  02 80 a0 e1                                      mov r8, r2
003d07a4  0f e0 a0 e1                                      mov lr, pc
003d07a8  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d07ac  00 00 50 e3                                      cmp r0, #0
003d07b0  03 00 00 1a                                      bne #0x3d07c4
003d07b4  04 30 96 e5                                      ldr r3, [r6, #4]
003d07b8  28 25 93 e5                                      ldr r2, [r3, #0x528]
003d07bc  01 00 12 e3                                      tst r2, #1
003d07c0  06 00 00 0a                                      beq #0x3d07e0
003d07c4  05 30 94 e7                                      ldr r3, [r4, r5]
003d07c8  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
003d07cc  00 30 93 e5                                      ldr r3, [r3]
003d07d0  03 00 52 e1                                      cmp r2, r3
003d07d4  dd 00 00 1a                                      bne #0x3d0b50
003d07d8  c4 d0 8d e2                                      add sp, sp, #0xc4
003d07dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d07e0  03 00 a0 e1                                      mov r0, r3
003d07e4  00 c0 93 e5                                      ldr ip, [r3]
003d07e8  64 10 8d e2                                      add r1, sp, #0x64
003d07ec  60 20 8d e2                                      add r2, sp, #0x60
003d07f0  5c 30 8d e2                                      add r3, sp, #0x5c
003d07f4  0f e0 a0 e1                                      mov lr, pc
003d07f8  28 f1 9c e5                                      ldr pc, [ip, #0x128]
003d07fc  00 00 50 e3                                      cmp r0, #0
003d0800  42 00 00 0a                                      beq #0x3d0910
003d0804  04 00 96 e5                                      ldr r0, [r6, #4]
003d0808  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d080c  0c 00 80 e2                                      add r0, r0, #0xc
003d0810  ae be ff eb                                      bl #0x3c02d0
003d0814  00 a0 50 e2                                      subs sl, r0, #0
003d0818  41 00 00 0a                                      beq #0x3d0924
003d081c  79 70 d6 e5                                      ldrb r7, [r6, #0x79]
003d0820  00 00 57 e3                                      cmp r7, #0
003d0824  e6 ff ff 1a                                      bne #0x3d07c4
003d0828  2c b3 9f e5                                      ldr fp, [pc, #0x32c]
003d082c  a4 80 8d e2                                      add r8, sp, #0xa4
003d0830  08 a0 8d e2                                      add sl, sp, #8
003d0834  0b 90 94 e7                                      ldr sb, [r4, fp]
003d0838  09 00 a0 e1                                      mov r0, sb
003d083c  11 9c fd eb                                      bl #0x337888
003d0840  18 13 9f e5                                      ldr r1, [pc, #0x318]
003d0844  70 20 8d e2                                      add r2, sp, #0x70
003d0848  08 00 a0 e1                                      mov r0, r8
003d084c  01 10 8f e0                                      add r1, pc, r1
003d0850  25 0e fd eb                                      bl #0x3140ec
003d0854  08 10 a0 e1                                      mov r1, r8
003d0858  09 00 a0 e1                                      mov r0, sb
003d085c  89 9c fd eb                                      bl #0x337a88
003d0860  08 00 a0 e1                                      mov r0, r8
003d0864  7a 1e fd eb                                      bl #0x318254
003d0868  01 c0 a0 e3                                      mov ip, #1
003d086c  04 10 96 e5                                      ldr r1, [r6, #4]
003d0870  07 30 a0 e1                                      mov r3, r7
003d0874  0c 20 a0 e1                                      mov r2, ip
003d0878  0a 00 a0 e1                                      mov r0, sl
003d087c  00 c0 8d e5                                      str ip, [sp]
003d0880  aa 47 03 eb                                      bl #0x4a2730
003d0884  04 30 96 e5                                      ldr r3, [r6, #4]
003d0888  b5 11 d3 e5                                      ldrb r1, [r3, #0x1b5]
003d088c  00 00 51 e3                                      cmp r1, #0
003d0890  41 00 00 1a                                      bne #0x3d099c
003d0894  40 30 96 e5                                      ldr r3, [r6, #0x40]
003d0898  00 00 53 e3                                      cmp r3, #0
003d089c  03 00 00 0a                                      beq #0x3d08b0
003d08a0  06 00 a0 e1                                      mov r0, r6
003d08a4  d2 17 00 eb                                      bl #0x3d67f4
003d08a8  00 00 50 e3                                      cmp r0, #0
003d08ac  80 00 00 1a                                      bne #0x3d0ab4
003d08b0  0a 00 a0 e1                                      mov r0, sl
003d08b4  28 fe ff eb                                      bl #0x3d015c
003d08b8  60 00 9d e5                                      ldr r0, [sp, #0x60]
003d08bc  28 f8 fc eb                                      bl #0x30e964
003d08c0  db 2f 00 e3                                      movw r2, #0xfdb
003d08c4  00 10 a0 e1                                      mov r1, r0
003d08c8  c9 20 44 e3                                      movt r2, #0x40c9
003d08cc  0a 00 a0 e1                                      mov r0, sl
003d08d0  d2 fd ff eb                                      bl #0x3d0020
003d08d4  08 30 9d e5                                      ldr r3, [sp, #8]
003d08d8  18 20 9d e5                                      ldr r2, [sp, #0x18]
003d08dc  03 00 52 e1                                      cmp r2, r3
003d08e0  07 00 00 0a                                      beq #0x3d0904
003d08e4  00 10 93 e5                                      ldr r1, [r3]
003d08e8  06 00 a0 e1                                      mov r0, r6
003d08ec  00 20 a0 e3                                      mov r2, #0
003d08f0  e6 17 00 eb                                      bl #0x3d6890
003d08f4  08 30 9d e5                                      ldr r3, [sp, #8]
003d08f8  04 00 96 e5                                      ldr r0, [r6, #4]
003d08fc  00 10 93 e5                                      ldr r1, [r3]
003d0900  10 0d ff eb                                      bl #0x393d48
003d0904  0a 00 a0 e1                                      mov r0, sl
003d0908  1f f2 fe eb                                      bl #0x38d18c
003d090c  ac ff ff ea                                      b #0x3d07c4
003d0910  06 00 a0 e1                                      mov r0, r6
003d0914  07 10 a0 e1                                      mov r1, r7
003d0918  08 20 a0 e1                                      mov r2, r8
003d091c  22 fe ff eb                                      bl #0x3d01ac
003d0920  a7 ff ff ea                                      b #0x3d07c4
003d0924  30 32 9f e5                                      ldr r3, [pc, #0x230]
003d0928  74 90 8d e2                                      add sb, sp, #0x74
003d092c  03 b0 94 e7                                      ldr fp, [r4, r3]
003d0930  0b 00 a0 e1                                      mov r0, fp
003d0934  d3 9b fd eb                                      bl #0x337888
003d0938  24 12 9f e5                                      ldr r1, [pc, #0x224]
003d093c  68 20 8d e2                                      add r2, sp, #0x68
003d0940  09 00 a0 e1                                      mov r0, sb
003d0944  01 10 8f e0                                      add r1, pc, r1
003d0948  e7 0d fd eb                                      bl #0x3140ec
003d094c  09 10 a0 e1                                      mov r1, sb
003d0950  0b 00 a0 e1                                      mov r0, fp
003d0954  4b 9c fd eb                                      bl #0x337a88
003d0958  09 00 a0 e1                                      mov r0, sb
003d095c  3c 1e fd eb                                      bl #0x318254
003d0960  00 00 57 e3                                      cmp r7, #0
003d0964  78 a0 c6 e5                                      strb sl, [r6, #0x78]
003d0968  21 00 00 0a                                      beq #0x3d09f4
003d096c  07 10 a0 e1                                      mov r1, r7
003d0970  04 00 96 e5                                      ldr r0, [r6, #4]
003d0974  f3 0c ff eb                                      bl #0x393d48
003d0978  00 00 58 e3                                      cmp r8, #0
003d097c  90 ff ff 1a                                      bne #0x3d07c4
003d0980  04 00 96 e5                                      ldr r0, [r6, #4]
003d0984  08 10 a0 e1                                      mov r1, r8
003d0988  08 20 a0 e1                                      mov r2, r8
003d098c  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d0990  0c 00 80 e2                                      add r0, r0, #0xc
003d0994  bb d6 ff eb                                      bl #0x3c6488
003d0998  89 ff ff ea                                      b #0x3d07c4
003d099c  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
003d09a0  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
003d09a4  c4 21 9f e5                                      ldr r2, [pc, #0x1c4]
003d09a8  03 30 94 e7                                      ldr r3, [r4, r3]
003d09ac  01 10 8f e0                                      add r1, pc, r1
003d09b0  02 20 8f e0                                      add r2, pc, r2
003d09b4  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003d09b8  87 d0 03 eb                                      bl #0x4c4bdc
003d09bc  00 80 a0 e1                                      mov r8, r0
003d09c0  60 00 9d e5                                      ldr r0, [sp, #0x60]
003d09c4  e6 f7 fc eb                                      bl #0x30e964
003d09c8  00 70 a0 e1                                      mov r7, r0
003d09cc  c8 00 a0 e1                                      asr r0, r8, #1
003d09d0  e3 f7 fc eb                                      bl #0x30e964
003d09d4  35 1a 0f e3                                      movw r1, #0xfa35
003d09d8  8e 1c 43 e3                                      movt r1, #0x3c8e
003d09dc  e2 f8 fc eb                                      bl #0x30ed6c
003d09e0  07 10 a0 e1                                      mov r1, r7
003d09e4  00 20 a0 e1                                      mov r2, r0
003d09e8  0a 00 a0 e1                                      mov r0, sl
003d09ec  8b fd ff eb                                      bl #0x3d0020
003d09f0  b7 ff ff ea                                      b #0x3d08d4
003d09f4  01 c0 a0 e3                                      mov ip, #1
003d09f8  08 a0 8d e2                                      add sl, sp, #8
003d09fc  04 10 96 e5                                      ldr r1, [r6, #4]
003d0a00  07 30 a0 e1                                      mov r3, r7
003d0a04  0c 20 a0 e1                                      mov r2, ip
003d0a08  0a 00 a0 e1                                      mov r0, sl
003d0a0c  00 c0 8d e5                                      str ip, [sp]
003d0a10  46 47 03 eb                                      bl #0x4a2730
003d0a14  04 30 96 e5                                      ldr r3, [r6, #4]
003d0a18  b5 31 d3 e5                                      ldrb r3, [r3, #0x1b5]
003d0a1c  00 00 53 e3                                      cmp r3, #0
003d0a20  40 00 00 0a                                      beq #0x3d0b28
003d0a24  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
003d0a28  44 11 9f e5                                      ldr r1, [pc, #0x144]
003d0a2c  44 21 9f e5                                      ldr r2, [pc, #0x144]
003d0a30  03 30 94 e7                                      ldr r3, [r4, r3]
003d0a34  01 10 8f e0                                      add r1, pc, r1
003d0a38  02 20 8f e0                                      add r2, pc, r2
003d0a3c  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003d0a40  65 d0 03 eb                                      bl #0x4c4bdc
003d0a44  00 90 a0 e1                                      mov sb, r0
003d0a48  60 00 9d e5                                      ldr r0, [sp, #0x60]
003d0a4c  c4 f7 fc eb                                      bl #0x30e964
003d0a50  00 70 a0 e1                                      mov r7, r0
003d0a54  c9 00 a0 e1                                      asr r0, sb, #1
003d0a58  c1 f7 fc eb                                      bl #0x30e964
003d0a5c  35 1a 0f e3                                      movw r1, #0xfa35
003d0a60  8e 1c 43 e3                                      movt r1, #0x3c8e
003d0a64  c0 f8 fc eb                                      bl #0x30ed6c
003d0a68  07 10 a0 e1                                      mov r1, r7
003d0a6c  00 20 a0 e1                                      mov r2, r0
003d0a70  0a 00 a0 e1                                      mov r0, sl
003d0a74  69 fd ff eb                                      bl #0x3d0020
003d0a78  08 30 9d e5                                      ldr r3, [sp, #8]
003d0a7c  18 20 9d e5                                      ldr r2, [sp, #0x18]
003d0a80  03 00 52 e1                                      cmp r2, r3
003d0a84  07 00 00 0a                                      beq #0x3d0aa8
003d0a88  00 10 93 e5                                      ldr r1, [r3]
003d0a8c  06 00 a0 e1                                      mov r0, r6
003d0a90  00 20 a0 e3                                      mov r2, #0
003d0a94  7d 17 00 eb                                      bl #0x3d6890
003d0a98  08 30 9d e5                                      ldr r3, [sp, #8]
003d0a9c  04 00 96 e5                                      ldr r0, [r6, #4]
003d0aa0  00 10 93 e5                                      ldr r1, [r3]
003d0aa4  a7 0c ff eb                                      bl #0x393d48
003d0aa8  0a 00 a0 e1                                      mov r0, sl
003d0aac  b6 f1 fe eb                                      bl #0x38d18c
003d0ab0  b0 ff ff ea                                      b #0x3d0978
003d0ab4  40 30 96 e5                                      ldr r3, [r6, #0x40]
003d0ab8  03 00 a0 e1                                      mov r0, r3
003d0abc  00 30 93 e5                                      ldr r3, [r3]
003d0ac0  0f e0 a0 e1                                      mov lr, pc
003d0ac4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d0ac8  00 00 50 e3                                      cmp r0, #0
003d0acc  77 ff ff 1a                                      bne #0x3d08b0
003d0ad0  04 30 96 e5                                      ldr r3, [r6, #4]
003d0ad4  03 00 a0 e1                                      mov r0, r3
003d0ad8  00 30 93 e5                                      ldr r3, [r3]
003d0adc  0f e0 a0 e1                                      mov lr, pc
003d0ae0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d0ae4  00 00 50 e3                                      cmp r0, #0
003d0ae8  79 ff ff 0a                                      beq #0x3d08d4
003d0aec  0b 80 94 e7                                      ldr r8, [r4, fp]
003d0af0  8c 70 8d e2                                      add r7, sp, #0x8c
003d0af4  08 00 a0 e1                                      mov r0, r8
003d0af8  62 9b fd eb                                      bl #0x337888
003d0afc  78 10 9f e5                                      ldr r1, [pc, #0x78]
003d0b00  6c 20 8d e2                                      add r2, sp, #0x6c
003d0b04  07 00 a0 e1                                      mov r0, r7
003d0b08  01 10 8f e0                                      add r1, pc, r1
003d0b0c  76 0d fd eb                                      bl #0x3140ec
003d0b10  08 00 a0 e1                                      mov r0, r8
003d0b14  07 10 a0 e1                                      mov r1, r7
003d0b18  da 9b fd eb                                      bl #0x337a88
003d0b1c  07 00 a0 e1                                      mov r0, r7
003d0b20  cb 1d fd eb                                      bl #0x318254
003d0b24  6a ff ff ea                                      b #0x3d08d4
003d0b28  0a 00 a0 e1                                      mov r0, sl
003d0b2c  8a fd ff eb                                      bl #0x3d015c
003d0b30  60 00 9d e5                                      ldr r0, [sp, #0x60]
003d0b34  8a f7 fc eb                                      bl #0x30e964
003d0b38  db 2f 00 e3                                      movw r2, #0xfdb
003d0b3c  00 10 a0 e1                                      mov r1, r0
003d0b40  c9 20 44 e3                                      movt r2, #0x40c9
003d0b44  0a 00 a0 e1                                      mov r0, sl
003d0b48  34 fd ff eb                                      bl #0x3d0020
003d0b4c  c9 ff ff ea                                      b #0x3d0a78
003d0b50  ee f5 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d0b54  14 43 5c 00 ac 40 00 00 84 08 00 00 44 4c 4f 00  .byte 0x14, 0x43, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x44, 0x4c, 0x4f, 0x00
003d0b64  4c 4b 4f 00 f4 37 00 00 a4 0d 4f 00 f8 4a 4f 00  .byte 0x4c, 0x4b, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x0d, 0x4f, 0x00, 0xf8, 0x4a, 0x4f, 0x00
003d0b74  1c 0d 4f 00 70 4a 4f 00 b8 49 4f 00              .byte 0x1c, 0x0d, 0x4f, 0x00, 0x70, 0x4a, 0x4f, 0x00, 0xb8, 0x49, 0x4f, 0x00

; FUNCTION 0x003d0b80, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI10OnInitPostEv
; demangled: CharAI::OnInitPost()
; decoder-mode: arm
003d0b80  10 40 2d e9                                      push {r4, lr}
003d0b84  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0b88  00 00 53 e3                                      cmp r3, #0
003d0b8c  03 00 00 0a                                      beq #0x3d0ba0
003d0b90  03 00 a0 e1                                      mov r0, r3
003d0b94  00 30 93 e5                                      ldr r3, [r3]
003d0b98  0f e0 a0 e1                                      mov lr, pc
003d0b9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
003d0ba0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0ba4, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11OnInitFinalEv
; demangled: CharAI::OnInitFinal()
; decoder-mode: arm
003d0ba4  10 40 2d e9                                      push {r4, lr}
003d0ba8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0bac  00 00 53 e3                                      cmp r3, #0
003d0bb0  03 00 00 0a                                      beq #0x3d0bc4
003d0bb4  03 00 a0 e1                                      mov r0, r3
003d0bb8  00 30 93 e5                                      ldr r3, [r3]
003d0bbc  0f e0 a0 e1                                      mov lr, pc
003d0bc0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003d0bc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0bc8, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI5OnMsgEiPKv
; demangled: CharAI::OnMsg(int, void const*)
; decoder-mode: arm
003d0bc8  10 40 2d e9                                      push {r4, lr}
003d0bcc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0bd0  00 00 53 e3                                      cmp r3, #0
003d0bd4  03 00 00 0a                                      beq #0x3d0be8
003d0bd8  03 00 a0 e1                                      mov r0, r3
003d0bdc  00 30 93 e5                                      ldr r3, [r3]
003d0be0  0f e0 a0 e1                                      mov lr, pc
003d0be4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
003d0be8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0bec, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14OnStateChangedEii
; demangled: CharAI::OnStateChanged(int, int)
; decoder-mode: arm
003d0bec  10 40 2d e9                                      push {r4, lr}
003d0bf0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0bf4  00 00 53 e3                                      cmp r3, #0
003d0bf8  03 00 00 0a                                      beq #0x3d0c0c
003d0bfc  03 00 a0 e1                                      mov r0, r3
003d0c00  00 30 93 e5                                      ldr r3, [r3]
003d0c04  0f e0 a0 e1                                      mov lr, pc
003d0c08  20 f0 93 e5                                      ldr pc, [r3, #0x20]
003d0c0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0c10, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI7OnTimerEPv
; demangled: CharAI::OnTimer(void*)
; decoder-mode: arm
003d0c10  10 40 2d e9                                      push {r4, lr}
003d0c14  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0c18  00 00 53 e3                                      cmp r3, #0
003d0c1c  03 00 00 0a                                      beq #0x3d0c30
003d0c20  03 00 a0 e1                                      mov r0, r3
003d0c24  00 30 93 e5                                      ldr r3, [r3]
003d0c28  0f e0 a0 e1                                      mov lr, pc
003d0c2c  80 f0 93 e5                                      ldr pc, [r3, #0x80]
003d0c30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0c34, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13OnStunExpiredEv
; demangled: CharAI::OnStunExpired()
; decoder-mode: arm
003d0c34  10 40 2d e9                                      push {r4, lr}
003d0c38  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0c3c  00 00 53 e3                                      cmp r3, #0
003d0c40  03 00 00 0a                                      beq #0x3d0c54
003d0c44  03 00 a0 e1                                      mov r0, r3
003d0c48  00 30 93 e5                                      ldr r3, [r3]
003d0c4c  0f e0 a0 e1                                      mov lr, pc
003d0c50  84 f0 93 e5                                      ldr pc, [r3, #0x84]
003d0c54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0c58, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13OnFearExpiredEv
; demangled: CharAI::OnFearExpired()
; decoder-mode: arm
003d0c58  10 40 2d e9                                      push {r4, lr}
003d0c5c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0c60  00 00 53 e3                                      cmp r3, #0
003d0c64  03 00 00 0a                                      beq #0x3d0c78
003d0c68  03 00 a0 e1                                      mov r0, r3
003d0c6c  00 30 93 e5                                      ldr r3, [r3]
003d0c70  0f e0 a0 e1                                      mov lr, pc
003d0c74  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003d0c78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0c7c, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI20OnAttackDelayExpiredEv
; demangled: CharAI::OnAttackDelayExpired()
; decoder-mode: arm
003d0c7c  10 40 2d e9                                      push {r4, lr}
003d0c80  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0c84  00 00 53 e3                                      cmp r3, #0
003d0c88  03 00 00 0a                                      beq #0x3d0c9c
003d0c8c  03 00 a0 e1                                      mov r0, r3
003d0c90  00 30 93 e5                                      ldr r3, [r3]
003d0c94  0f e0 a0 e1                                      mov lr, pc
003d0c98  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
003d0c9c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0ca0, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13OnScriptTimerEj
; demangled: CharAI::OnScriptTimer(unsigned int)
; decoder-mode: arm
003d0ca0  10 40 2d e9                                      push {r4, lr}
003d0ca4  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0ca8  00 00 53 e3                                      cmp r3, #0
003d0cac  03 00 00 0a                                      beq #0x3d0cc0
003d0cb0  03 00 a0 e1                                      mov r0, r3
003d0cb4  00 30 93 e5                                      ldr r3, [r3]
003d0cb8  0f e0 a0 e1                                      mov lr, pc
003d0cbc  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003d0cc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0cc4, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11OnAnimEventEPKc
; demangled: CharAI::OnAnimEvent(char const*)
; decoder-mode: arm
003d0cc4  10 40 2d e9                                      push {r4, lr}
003d0cc8  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0ccc  00 00 53 e3                                      cmp r3, #0
003d0cd0  03 00 00 0a                                      beq #0x3d0ce4
003d0cd4  03 00 a0 e1                                      mov r0, r3
003d0cd8  00 30 93 e5                                      ldr r3, [r3]
003d0cdc  0f e0 a0 e1                                      mov lr, pc
003d0ce0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003d0ce4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0ce8, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11OnEndOfAnimEv
; demangled: CharAI::OnEndOfAnim()
; decoder-mode: arm
003d0ce8  10 40 2d e9                                      push {r4, lr}
003d0cec  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0cf0  00 00 53 e3                                      cmp r3, #0
003d0cf4  03 00 00 0a                                      beq #0x3d0d08
003d0cf8  03 00 a0 e1                                      mov r0, r3
003d0cfc  00 30 93 e5                                      ldr r3, [r3]
003d0d00  0f e0 a0 e1                                      mov lr, pc
003d0d04  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003d0d08  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0d0c, declared_size=44, range_size=44, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13OnPreInteractEv
; demangled: CharAI::OnPreInteract()
; decoder-mode: arm
003d0d0c  10 40 2d e9                                      push {r4, lr}
003d0d10  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0d14  00 00 53 e3                                      cmp r3, #0
003d0d18  04 00 00 0a                                      beq #0x3d0d30
003d0d1c  03 00 a0 e1                                      mov r0, r3
003d0d20  00 30 93 e5                                      ldr r3, [r3]
003d0d24  0f e0 a0 e1                                      mov lr, pc
003d0d28  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
003d0d2c  10 80 bd e8                                      pop {r4, pc}
003d0d30  03 00 a0 e1                                      mov r0, r3
003d0d34  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0d38, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI10OnInteractEv
; demangled: CharAI::OnInteract()
; decoder-mode: arm
003d0d38  10 40 2d e9                                      push {r4, lr}
003d0d3c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0d40  00 00 53 e3                                      cmp r3, #0
003d0d44  03 00 00 0a                                      beq #0x3d0d58
003d0d48  03 00 a0 e1                                      mov r0, r3
003d0d4c  00 30 93 e5                                      ldr r3, [r3]
003d0d50  0f e0 a0 e1                                      mov lr, pc
003d0d54  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003d0d58  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0d5c, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnProjectileHitEP10GameObject
; demangled: CharAI::OnProjectileHit(GameObject*)
; decoder-mode: arm
003d0d5c  10 40 2d e9                                      push {r4, lr}
003d0d60  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0d64  00 00 53 e3                                      cmp r3, #0
003d0d68  03 00 00 0a                                      beq #0x3d0d7c
003d0d6c  03 00 a0 e1                                      mov r0, r3
003d0d70  00 30 93 e5                                      ldr r3, [r3]
003d0d74  0f e0 a0 e1                                      mov lr, pc
003d0d78  ac f0 93 e5                                      ldr pc, [r3, #0xac]
003d0d7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0d80, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI6OnKillEP9Character
; demangled: CharAI::OnKill(Character*)
; decoder-mode: arm
003d0d80  10 40 2d e9                                      push {r4, lr}
003d0d84  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0d88  00 00 53 e3                                      cmp r3, #0
003d0d8c  03 00 00 0a                                      beq #0x3d0da0
003d0d90  03 00 a0 e1                                      mov r0, r3
003d0d94  00 30 93 e5                                      ldr r3, [r3]
003d0d98  0f e0 a0 e1                                      mov lr, pc
003d0d9c  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
003d0da0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0da4, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnCombatResultsEP9CharacterS1_Pv
; demangled: CharAI::OnCombatResults(Character*, Character*, void*)
; decoder-mode: arm
003d0da4  10 40 2d e9                                      push {r4, lr}
003d0da8  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
003d0dac  00 00 5c e3                                      cmp ip, #0
003d0db0  03 00 00 0a                                      beq #0x3d0dc4
003d0db4  0c 00 a0 e1                                      mov r0, ip
003d0db8  00 c0 9c e5                                      ldr ip, [ip]
003d0dbc  0f e0 a0 e1                                      mov lr, pc
003d0dc0  b4 f0 9c e5                                      ldr pc, [ip, #0xb4]
003d0dc4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0dc8, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnCombatResultsEP10GameObjectPv
; demangled: CharAI::OnCombatResults(GameObject*, void*)
; decoder-mode: arm
003d0dc8  10 40 2d e9                                      push {r4, lr}
003d0dcc  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0dd0  00 00 53 e3                                      cmp r3, #0
003d0dd4  03 00 00 0a                                      beq #0x3d0de8
003d0dd8  03 00 a0 e1                                      mov r0, r3
003d0ddc  00 30 93 e5                                      ldr r3, [r3]
003d0de0  0f e0 a0 e1                                      mov lr, pc
003d0de4  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
003d0de8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0dec, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16OnCollisionBeginEP10GameObjectb
; demangled: CharAI::OnCollisionBegin(GameObject*, bool)
; decoder-mode: arm
003d0dec  10 40 2d e9                                      push {r4, lr}
003d0df0  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0df4  00 00 53 e3                                      cmp r3, #0
003d0df8  03 00 00 0a                                      beq #0x3d0e0c
003d0dfc  03 00 a0 e1                                      mov r0, r3
003d0e00  00 30 93 e5                                      ldr r3, [r3]
003d0e04  0f e0 a0 e1                                      mov lr, pc
003d0e08  bc f0 93 e5                                      ldr pc, [r3, #0xbc]
003d0e0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0e10, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18OnCollisionPersistEP10GameObjectb
; demangled: CharAI::OnCollisionPersist(GameObject*, bool)
; decoder-mode: arm
003d0e10  10 40 2d e9                                      push {r4, lr}
003d0e14  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0e18  00 00 53 e3                                      cmp r3, #0
003d0e1c  03 00 00 0a                                      beq #0x3d0e30
003d0e20  03 00 a0 e1                                      mov r0, r3
003d0e24  00 30 93 e5                                      ldr r3, [r3]
003d0e28  0f e0 a0 e1                                      mov lr, pc
003d0e2c  c0 f0 93 e5                                      ldr pc, [r3, #0xc0]
003d0e30  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0e34, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14OnCollisionEndEP10GameObjectb
; demangled: CharAI::OnCollisionEnd(GameObject*, bool)
; decoder-mode: arm
003d0e34  10 40 2d e9                                      push {r4, lr}
003d0e38  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0e3c  00 00 53 e3                                      cmp r3, #0
003d0e40  03 00 00 0a                                      beq #0x3d0e54
003d0e44  03 00 a0 e1                                      mov r0, r3
003d0e48  00 30 93 e5                                      ldr r3, [r3]
003d0e4c  0f e0 a0 e1                                      mov lr, pc
003d0e50  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003d0e54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0e58, declared_size=36, range_size=36, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI17OnCollisionResultEP10GameObjectb
; demangled: CharAI::OnCollisionResult(GameObject*, bool)
; decoder-mode: arm
003d0e58  10 40 2d e9                                      push {r4, lr}
003d0e5c  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d0e60  00 00 53 e3                                      cmp r3, #0
003d0e64  03 00 00 0a                                      beq #0x3d0e78
003d0e68  03 00 a0 e1                                      mov r0, r3
003d0e6c  00 30 93 e5                                      ldr r3, [r3]
003d0e70  0f e0 a0 e1                                      mov lr, pc
003d0e74  c8 f0 93 e5                                      ldr pc, [r3, #0xc8]
003d0e78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d0e7c, declared_size=88, range_size=88, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI8OnAttackEiib
; demangled: CharAI::OnAttack(int, int, bool)
; decoder-mode: arm
003d0e7c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d0e80  00 40 a0 e1                                      mov r4, r0
003d0e84  04 00 90 e5                                      ldr r0, [r0, #4]
003d0e88  01 50 a0 e1                                      mov r5, r1
003d0e8c  00 10 a0 e3                                      mov r1, #0
003d0e90  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d0e94  02 70 a0 e1                                      mov r7, r2
003d0e98  03 60 a0 e1                                      mov r6, r3
003d0e9c  54 16 00 eb                                      bl #0x3d67f4
003d0ea0  00 00 50 e3                                      cmp r0, #0
003d0ea4  09 00 00 0a                                      beq #0x3d0ed0
003d0ea8  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
003d0eac  00 00 5c e3                                      cmp ip, #0
003d0eb0  06 00 00 0a                                      beq #0x3d0ed0
003d0eb4  0c 00 a0 e1                                      mov r0, ip
003d0eb8  05 10 a0 e1                                      mov r1, r5
003d0ebc  07 20 a0 e1                                      mov r2, r7
003d0ec0  06 30 a0 e1                                      mov r3, r6
003d0ec4  00 c0 9c e5                                      ldr ip, [ip]
003d0ec8  0f e0 a0 e1                                      mov lr, pc
003d0ecc  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
003d0ed0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003d0ed4, declared_size=72, range_size=72, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11OnPreAttackEi
; demangled: CharAI::OnPreAttack(int)
; decoder-mode: arm
003d0ed4  70 40 2d e9                                      push {r4, r5, r6, lr}
003d0ed8  00 40 a0 e1                                      mov r4, r0
003d0edc  04 00 90 e5                                      ldr r0, [r0, #4]
003d0ee0  01 50 a0 e1                                      mov r5, r1
003d0ee4  00 10 a0 e3                                      mov r1, #0
003d0ee8  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d0eec  40 16 00 eb                                      bl #0x3d67f4
003d0ef0  00 00 50 e3                                      cmp r0, #0
003d0ef4  07 00 00 0a                                      beq #0x3d0f18
003d0ef8  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003d0efc  00 00 53 e3                                      cmp r3, #0
003d0f00  04 00 00 0a                                      beq #0x3d0f18
003d0f04  03 00 a0 e1                                      mov r0, r3
003d0f08  05 10 a0 e1                                      mov r1, r5
003d0f0c  00 30 93 e5                                      ldr r3, [r3]
003d0f10  0f e0 a0 e1                                      mov lr, pc
003d0f14  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
003d0f18  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d0f1c, declared_size=228, range_size=228, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI9OnRevivedEP10GameObject
; demangled: CharAI::OnRevived(GameObject*)
; decoder-mode: arm
003d0f1c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d0f20  00 40 a0 e1                                      mov r4, r0
003d0f24  04 00 90 e5                                      ldr r0, [r0, #4]
003d0f28  0c d0 4d e2                                      sub sp, sp, #0xc
003d0f2c  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
003d0f30  ed 0f 80 e2                                      add r0, r0, #0x3b4
003d0f34  01 a0 a0 e1                                      mov sl, r1
003d0f38  ee 28 00 eb                                      bl #0x3db2f8
003d0f3c  ac 30 9f e5                                      ldr r3, [pc, #0xac]
003d0f40  06 60 8f e0                                      add r6, pc, r6
003d0f44  a8 50 9f e5                                      ldr r5, [pc, #0xa8]
003d0f48  03 70 96 e7                                      ldr r7, [r6, r3]
003d0f4c  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003d0f50  05 50 8f e0                                      add r5, pc, r5
003d0f54  05 10 a0 e1                                      mov r1, r5
003d0f58  02 20 8f e0                                      add r2, pc, r2
003d0f5c  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
003d0f60  04 80 94 e5                                      ldr r8, [r4, #4]
003d0f64  1c cf 03 eb                                      bl #0x4c4bdc
003d0f68  ed 8f 88 e2                                      add r8, r8, #0x3b4
003d0f6c  00 10 a0 e1                                      mov r1, r0
003d0f70  33 30 a0 e3                                      mov r3, #0x33
003d0f74  08 00 a0 e1                                      mov r0, r8
003d0f78  00 20 e0 e3                                      mvn r2, #0
003d0f7c  00 80 a0 e3                                      mov r8, #0
003d0f80  00 80 8d e5                                      str r8, [sp]
003d0f84  a6 2b 00 eb                                      bl #0x3dbe24
003d0f88  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003d0f8c  04 30 94 e5                                      ldr r3, [r4, #4]
003d0f90  10 00 84 e5                                      str r0, [r4, #0x10]
003d0f94  05 10 a0 e1                                      mov r1, r5
003d0f98  02 20 8f e0                                      add r2, pc, r2
003d0f9c  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
003d0fa0  ed 5f 83 e2                                      add r5, r3, #0x3b4
003d0fa4  0c cf 03 eb                                      bl #0x4c4bdc
003d0fa8  34 30 a0 e3                                      mov r3, #0x34
003d0fac  00 10 a0 e1                                      mov r1, r0
003d0fb0  00 20 e0 e3                                      mvn r2, #0
003d0fb4  05 00 a0 e1                                      mov r0, r5
003d0fb8  00 80 8d e5                                      str r8, [sp]
003d0fbc  98 2b 00 eb                                      bl #0x3dbe24
003d0fc0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003d0fc4  14 00 84 e5                                      str r0, [r4, #0x14]
003d0fc8  08 00 53 e1                                      cmp r3, r8
003d0fcc  04 00 00 0a                                      beq #0x3d0fe4
003d0fd0  03 00 a0 e1                                      mov r0, r3
003d0fd4  0a 10 a0 e1                                      mov r1, sl
003d0fd8  00 30 93 e5                                      ldr r3, [r3]
003d0fdc  0f e0 a0 e1                                      mov lr, pc
003d0fe0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d0fe4  0c d0 8d e2                                      add sp, sp, #0xc
003d0fe8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
003d0fec  50 3b 5c 00 f4 37 00 00 00 08 4f 00 20 45 4f 00  .byte 0x50, 0x3b, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x00, 0x08, 0x4f, 0x00, 0x20, 0x45, 0x4f, 0x00
003d0ffc  e8 44 4f 00                                      .byte 0xe8, 0x44, 0x4f, 0x00

; FUNCTION 0x003d1000, declared_size=80, range_size=80, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI6OnDiedEP10GameObject
; demangled: CharAI::OnDied(GameObject*)
; decoder-mode: arm
003d1000  70 40 2d e9                                      push {r4, r5, r6, lr}
003d1004  00 40 a0 e1                                      mov r4, r0
003d1008  34 00 90 e5                                      ldr r0, [r0, #0x34]
003d100c  01 50 a0 e1                                      mov r5, r1
003d1010  00 00 50 e3                                      cmp r0, #0
003d1014  02 00 00 0a                                      beq #0x3d1024
003d1018  04 10 94 e5                                      ldr r1, [r4, #4]
003d101c  05 20 a0 e1                                      mov r2, r5
003d1020  80 05 00 eb                                      bl #0x3d2628
003d1024  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003d1028  00 00 53 e3                                      cmp r3, #0
003d102c  04 00 00 0a                                      beq #0x3d1044
003d1030  03 00 a0 e1                                      mov r0, r3
003d1034  05 10 a0 e1                                      mov r1, r5
003d1038  00 30 93 e5                                      ldr r3, [r3]
003d103c  0f e0 a0 e1                                      mov lr, pc
003d1040  24 f0 93 e5                                      ldr pc, [r3, #0x24]
003d1044  04 00 a0 e1                                      mov r0, r4
003d1048  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d104c  22 17 00 ea                                      b #0x3d6cdc

; FUNCTION 0x003d1050, declared_size=364, range_size=364, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI8OnUpdateEv
; demangled: CharAI::OnUpdate()
; decoder-mode: arm
003d1050  10 40 2d e9                                      push {r4, lr}
003d1054  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d1058  10 d0 4d e2                                      sub sp, sp, #0x10
003d105c  00 40 a0 e1                                      mov r4, r0
003d1060  00 00 53 e3                                      cmp r3, #0
003d1064  03 00 00 0a                                      beq #0x3d1078
003d1068  03 00 a0 e1                                      mov r0, r3
003d106c  00 30 93 e5                                      ldr r3, [r3]
003d1070  0f e0 a0 e1                                      mov lr, pc
003d1074  18 f0 93 e5                                      ldr pc, [r3, #0x18]
003d1078  04 00 94 e5                                      ldr r0, [r4, #4]
003d107c  00 10 a0 e3                                      mov r1, #0
003d1080  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d1084  0c 00 80 e2                                      add r0, r0, #0xc
003d1088  74 bc ff eb                                      bl #0x3c0260
003d108c  00 00 50 e3                                      cmp r0, #0
003d1090  0c 00 00 0a                                      beq #0x3d10c8
003d1094  04 30 94 e5                                      ldr r3, [r4, #4]
003d1098  08 24 93 e5                                      ldr r2, [r3, #0x408]
003d109c  00 00 52 e3                                      cmp r2, #0
003d10a0  13 00 00 0a                                      beq #0x3d10f4
003d10a4  d8 42 93 e5                                      ldr r4, [r3, #0x2d8]
003d10a8  03 00 a0 e1                                      mov r0, r3
003d10ac  53 ed fe eb                                      bl #0x38c600
003d10b0  00 00 54 e3                                      cmp r4, #0
003d10b4  01 00 00 0a                                      beq #0x3d10c0
003d10b8  04 00 a0 e1                                      mov r0, r4
003d10bc  c3 80 02 eb                                      bl #0x4713d0
003d10c0  10 d0 8d e2                                      add sp, sp, #0x10
003d10c4  10 80 bd e8                                      pop {r4, pc}
003d10c8  04 00 94 e5                                      ldr r0, [r4, #4]
003d10cc  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d10d0  0c 00 80 e2                                      add r0, r0, #0xc
003d10d4  55 bc ff eb                                      bl #0x3c0230
003d10d8  00 00 50 e3                                      cmp r0, #0
003d10dc  04 30 94 05                                      ldreq r3, [r4, #4]
003d10e0  ef ff ff 0a                                      beq #0x3d10a4
003d10e4  04 30 94 e5                                      ldr r3, [r4, #4]
003d10e8  08 24 93 e5                                      ldr r2, [r3, #0x408]
003d10ec  00 00 52 e3                                      cmp r2, #0
003d10f0  eb ff ff 1a                                      bne #0x3d10a4
003d10f4  18 24 93 e5                                      ldr r2, [r3, #0x418]
003d10f8  00 00 52 e3                                      cmp r2, #0
003d10fc  e8 ff ff 1a                                      bne #0x3d10a4
003d1100  ee 22 d3 e5                                      ldrb r2, [r3, #0x2ee]
003d1104  00 00 52 e3                                      cmp r2, #0
003d1108  ec ff ff 1a                                      bne #0x3d10c0
003d110c  03 00 a0 e1                                      mov r0, r3
003d1110  00 30 93 e5                                      ldr r3, [r3]
003d1114  0f e0 a0 e1                                      mov lr, pc
003d1118  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
003d111c  00 00 50 e3                                      cmp r0, #0
003d1120  e6 ff ff 0a                                      beq #0x3d10c0
003d1124  04 00 94 e5                                      ldr r0, [r4, #4]
003d1128  98 ed fe eb                                      bl #0x38c790
003d112c  04 30 94 e5                                      ldr r3, [r4, #4]
003d1130  03 00 a0 e1                                      mov r0, r3
003d1134  00 30 93 e5                                      ldr r3, [r3]
003d1138  0f e0 a0 e1                                      mov lr, pc
003d113c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d1140  00 00 50 e3                                      cmp r0, #0
003d1144  dd ff ff 1a                                      bne #0x3d10c0
003d1148  04 00 94 e5                                      ldr r0, [r4, #4]
003d114c  85 30 d0 e5                                      ldrb r3, [r0, #0x85]
003d1150  00 00 53 e3                                      cmp r3, #0
003d1154  d9 ff ff 1a                                      bne #0x3d10c0
003d1158  51 1d 80 e2                                      add r1, r0, #0x1440
003d115c  01 20 a0 e3                                      mov r2, #1
003d1160  10 10 81 e2                                      add r1, r1, #0x10
003d1164  12 0b ff eb                                      bl #0x393db4
003d1168  04 30 94 e5                                      ldr r3, [r4, #4]
003d116c  d8 22 93 e5                                      ldr r2, [r3, #0x2d8]
003d1170  00 00 52 e3                                      cmp r2, #0
003d1174  d1 ff ff 0a                                      beq #0x3d10c0
003d1178  08 00 92 e5                                      ldr r0, [r2, #8]
003d117c  00 00 50 e3                                      cmp r0, #0
003d1180  ce ff ff 0a                                      beq #0x3d10c0
003d1184  50 24 01 e3                                      movw r2, #0x1450
003d1188  02 e0 93 e7                                      ldr lr, [r3, r2]
003d118c  54 24 01 e3                                      movw r2, #0x1454
003d1190  02 c0 93 e7                                      ldr ip, [r3, r2]
003d1194  58 24 01 e3                                      movw r2, #0x1458
003d1198  02 20 93 e7                                      ldr r2, [r3, r2]
003d119c  00 30 90 e5                                      ldr r3, [r0]
003d11a0  04 10 8d e2                                      add r1, sp, #4
003d11a4  a4 30 93 e5                                      ldr r3, [r3, #0xa4]
003d11a8  04 e0 8d e5                                      str lr, [sp, #4]
003d11ac  08 c0 8d e5                                      str ip, [sp, #8]
003d11b0  0c 20 8d e5                                      str r2, [sp, #0xc]
003d11b4  33 ff 2f e1                                      blx r3
003d11b8  c0 ff ff ea                                      b #0x3d10c0

; FUNCTION 0x003d11bc, declared_size=244, range_size=244, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11OnTerminateEv
; demangled: CharAI::OnTerminate()
; decoder-mode: arm
003d11bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003d11c0  00 50 a0 e1                                      mov r5, r0
003d11c4  ec fa ff eb                                      bl #0x3cfd7c
003d11c8  05 00 a0 e1                                      mov r0, r5
003d11cc  75 13 00 eb                                      bl #0x3d5fa8
003d11d0  05 00 a0 e1                                      mov r0, r5
003d11d4  00 10 a0 e3                                      mov r1, #0
003d11d8  37 16 00 eb                                      bl #0x3d6abc
003d11dc  58 00 95 e5                                      ldr r0, [r5, #0x58]
003d11e0  00 00 50 e3                                      cmp r0, #0
003d11e4  03 00 00 0a                                      beq #0x3d11f8
003d11e8  04 20 95 e5                                      ldr r2, [r5, #4]
003d11ec  18 34 90 e5                                      ldr r3, [r0, #0x418]
003d11f0  03 00 52 e1                                      cmp r2, r3
003d11f4  29 00 00 0a                                      beq #0x3d12a0
003d11f8  64 40 95 e5                                      ldr r4, [r5, #0x64]
003d11fc  00 30 a0 e3                                      mov r3, #0
003d1200  58 30 85 e5                                      str r3, [r5, #0x58]
003d1204  5c 60 85 e2                                      add r6, r5, #0x5c
003d1208  04 00 56 e1                                      cmp r6, r4
003d120c  11 00 00 0a                                      beq #0x3d1258
003d1210  14 00 94 e5                                      ldr r0, [r4, #0x14]
003d1214  00 00 50 e3                                      cmp r0, #0
003d1218  03 00 00 0a                                      beq #0x3d122c
003d121c  04 20 95 e5                                      ldr r2, [r5, #4]
003d1220  18 34 90 e5                                      ldr r3, [r0, #0x418]
003d1224  03 00 52 e1                                      cmp r2, r3
003d1228  18 00 00 0a                                      beq #0x3d1290
003d122c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d1230  00 00 52 e3                                      cmp r2, #0
003d1234  01 00 00 1a                                      bne #0x3d1240
003d1238  07 00 00 ea                                      b #0x3d125c
003d123c  03 20 a0 e1                                      mov r2, r3
003d1240  08 30 92 e5                                      ldr r3, [r2, #8]
003d1244  00 00 53 e3                                      cmp r3, #0
003d1248  fb ff ff 1a                                      bne #0x3d123c
003d124c  02 40 a0 e1                                      mov r4, r2
003d1250  04 00 56 e1                                      cmp r6, r4
003d1254  ed ff ff 1a                                      bne #0x3d1210
003d1258  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d125c  04 30 94 e5                                      ldr r3, [r4, #4]
003d1260  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d1264  04 00 51 e1                                      cmp r1, r4
003d1268  05 00 00 1a                                      bne #0x3d1284
003d126c  03 40 a0 e1                                      mov r4, r3
003d1270  04 30 93 e5                                      ldr r3, [r3, #4]
003d1274  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d1278  04 00 52 e1                                      cmp r2, r4
003d127c  fa ff ff 0a                                      beq #0x3d126c
003d1280  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d1284  02 00 53 e1                                      cmp r3, r2
003d1288  03 40 a0 11                                      movne r4, r3
003d128c  dd ff ff ea                                      b #0x3d1208
003d1290  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d1294  00 10 a0 e3                                      mov r1, #0
003d1298  b8 0e 00 eb                                      bl #0x3d4d80
003d129c  e2 ff ff ea                                      b #0x3d122c
003d12a0  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d12a4  00 10 a0 e3                                      mov r1, #0
003d12a8  b4 0e 00 eb                                      bl #0x3d4d80
003d12ac  d1 ff ff ea                                      b #0x3d11f8

; FUNCTION 0x003d12b0, declared_size=296, range_size=296, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI6OnInitEv
; demangled: CharAI::OnInit()
; decoder-mode: arm
003d12b0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d12b4  04 30 90 e5                                      ldr r3, [r0, #4]
003d12b8  0c d0 4d e2                                      sub sp, sp, #0xc
003d12bc  00 40 a0 e1                                      mov r4, r0
003d12c0  03 00 a0 e1                                      mov r0, r3
003d12c4  00 30 93 e5                                      ldr r3, [r3]
003d12c8  0f e0 a0 e1                                      mov lr, pc
003d12cc  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d12d0  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
003d12d4  00 00 50 e3                                      cmp r0, #0
003d12d8  05 50 8f e0                                      add r5, pc, r5
003d12dc  2e 00 00 1a                                      bne #0x3d139c
003d12e0  10 10 94 e5                                      ldr r1, [r4, #0x10]
003d12e4  01 00 71 e3                                      cmn r1, #1
003d12e8  02 00 00 0a                                      beq #0x3d12f8
003d12ec  04 00 94 e5                                      ldr r0, [r4, #4]
003d12f0  ed 0f 80 e2                                      add r0, r0, #0x3b4
003d12f4  f7 27 00 eb                                      bl #0x3db2d8
003d12f8  c4 60 9f e5                                      ldr r6, [pc, #0xc4]
003d12fc  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
003d1300  c4 20 9f e5                                      ldr r2, [pc, #0xc4]
003d1304  06 30 95 e7                                      ldr r3, [r5, r6]
003d1308  01 10 8f e0                                      add r1, pc, r1
003d130c  02 20 8f e0                                      add r2, pc, r2
003d1310  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003d1314  04 70 94 e5                                      ldr r7, [r4, #4]
003d1318  2f ce 03 eb                                      bl #0x4c4bdc
003d131c  ed 7f 87 e2                                      add r7, r7, #0x3b4
003d1320  00 10 a0 e1                                      mov r1, r0
003d1324  00 c0 a0 e3                                      mov ip, #0
003d1328  07 00 a0 e1                                      mov r0, r7
003d132c  00 20 e0 e3                                      mvn r2, #0
003d1330  33 30 a0 e3                                      mov r3, #0x33
003d1334  00 c0 8d e5                                      str ip, [sp]
003d1338  b9 2a 00 eb                                      bl #0x3dbe24
003d133c  14 10 94 e5                                      ldr r1, [r4, #0x14]
003d1340  10 00 84 e5                                      str r0, [r4, #0x10]
003d1344  01 00 71 e3                                      cmn r1, #1
003d1348  02 00 00 0a                                      beq #0x3d1358
003d134c  04 00 94 e5                                      ldr r0, [r4, #4]
003d1350  ed 0f 80 e2                                      add r0, r0, #0x3b4
003d1354  df 27 00 eb                                      bl #0x3db2d8
003d1358  06 30 95 e7                                      ldr r3, [r5, r6]
003d135c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1360  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003d1364  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003d1368  01 10 8f e0                                      add r1, pc, r1
003d136c  02 20 8f e0                                      add r2, pc, r2
003d1370  04 50 94 e5                                      ldr r5, [r4, #4]
003d1374  18 ce 03 eb                                      bl #0x4c4bdc
003d1378  ed 5f 85 e2                                      add r5, r5, #0x3b4
003d137c  00 10 a0 e1                                      mov r1, r0
003d1380  00 c0 a0 e3                                      mov ip, #0
003d1384  05 00 a0 e1                                      mov r0, r5
003d1388  00 20 e0 e3                                      mvn r2, #0
003d138c  34 30 a0 e3                                      mov r3, #0x34
003d1390  00 c0 8d e5                                      str ip, [sp]
003d1394  a2 2a 00 eb                                      bl #0x3dbe24
003d1398  14 00 84 e5                                      str r0, [r4, #0x14]
003d139c  20 30 94 e5                                      ldr r3, [r4, #0x20]
003d13a0  00 00 53 e3                                      cmp r3, #0
003d13a4  03 00 00 0a                                      beq #0x3d13b8
003d13a8  03 00 a0 e1                                      mov r0, r3
003d13ac  00 30 93 e5                                      ldr r3, [r3]
003d13b0  0f e0 a0 e1                                      mov lr, pc
003d13b4  08 f0 93 e5                                      ldr pc, [r3, #8]
003d13b8  0c d0 8d e2                                      add sp, sp, #0xc
003d13bc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
003d13c0  b8 37 5c 00 f4 37 00 00 48 04 4f 00 6c 41 4f 00  .byte 0xb8, 0x37, 0x5c, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x48, 0x04, 0x4f, 0x00, 0x6c, 0x41, 0x4f, 0x00
003d13d0  e8 03 4f 00 14 41 4f 00                          .byte 0xe8, 0x03, 0x4f, 0x00, 0x14, 0x41, 0x4f, 0x00

; FUNCTION 0x003d14b4, declared_size=480, range_size=480, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14OnEnemySpottedEP9Character
; demangled: CharAI::OnEnemySpotted(Character*)
; decoder-mode: arm
003d14b4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d14b8  bc 41 9f e5                                      ldr r4, [pc, #0x1bc]
003d14bc  bc 51 9f e5                                      ldr r5, [pc, #0x1bc]
003d14c0  bc 91 9f e5                                      ldr sb, [pc, #0x1bc]
003d14c4  04 40 8f e0                                      add r4, pc, r4
003d14c8  05 30 94 e7                                      ldr r3, [r4, r5]
003d14cc  09 a0 94 e7                                      ldr sl, [r4, sb]
003d14d0  40 d0 4d e2                                      sub sp, sp, #0x40
003d14d4  00 30 93 e5                                      ldr r3, [r3]
003d14d8  00 70 a0 e1                                      mov r7, r0
003d14dc  0a 00 a0 e1                                      mov r0, sl
003d14e0  3c 30 8d e5                                      str r3, [sp, #0x3c]
003d14e4  01 80 a0 e1                                      mov r8, r1
003d14e8  e6 98 fd eb                                      bl #0x337888
003d14ec  94 11 9f e5                                      ldr r1, [pc, #0x194]
003d14f0  24 60 8d e2                                      add r6, sp, #0x24
003d14f4  08 20 8d e2                                      add r2, sp, #8
003d14f8  01 10 8f e0                                      add r1, pc, r1
003d14fc  06 00 a0 e1                                      mov r0, r6
003d1500  f9 0a fd eb                                      bl #0x3140ec
003d1504  06 10 a0 e1                                      mov r1, r6
003d1508  0a 00 a0 e1                                      mov r0, sl
003d150c  5d 99 fd eb                                      bl #0x337a88
003d1510  06 00 a0 e1                                      mov r0, r6
003d1514  24 09 fd eb                                      bl #0x3139ac
003d1518  34 00 97 e5                                      ldr r0, [r7, #0x34]
003d151c  00 00 50 e3                                      cmp r0, #0
003d1520  02 00 00 0a                                      beq #0x3d1530
003d1524  04 10 97 e5                                      ldr r1, [r7, #4]
003d1528  08 20 a0 e1                                      mov r2, r8
003d152c  a6 04 00 eb                                      bl #0x3d27cc
003d1530  4f 6e 88 e2                                      add r6, r8, #0x4f0
003d1534  0c 60 86 e2                                      add r6, r6, #0xc
003d1538  06 00 a0 e1                                      mov r0, r6
003d153c  3b bb ff eb                                      bl #0x3c0230
003d1540  00 00 50 e3                                      cmp r0, #0
003d1544  06 00 00 0a                                      beq #0x3d1564
003d1548  05 30 94 e7                                      ldr r3, [r4, r5]
003d154c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003d1550  00 30 93 e5                                      ldr r3, [r3]
003d1554  03 00 52 e1                                      cmp r2, r3
003d1558  46 00 00 1a                                      bne #0x3d1678
003d155c  40 d0 8d e2                                      add sp, sp, #0x40
003d1560  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d1564  04 00 97 e5                                      ldr r0, [r7, #4]
003d1568  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d156c  0c 00 80 e2                                      add r0, r0, #0xc
003d1570  2e bb ff eb                                      bl #0x3c0230
003d1574  00 00 50 e3                                      cmp r0, #0
003d1578  f2 ff ff 1a                                      bne #0x3d1548
003d157c  06 00 a0 e1                                      mov r0, r6
003d1580  0e bb ff eb                                      bl #0x3c01c0
003d1584  00 00 50 e3                                      cmp r0, #0
003d1588  ee ff ff 1a                                      bne #0x3d1548
003d158c  04 00 97 e5                                      ldr r0, [r7, #4]
003d1590  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d1594  0c 00 80 e2                                      add r0, r0, #0xc
003d1598  08 bb ff eb                                      bl #0x3c01c0
003d159c  00 00 50 e3                                      cmp r0, #0
003d15a0  e8 ff ff 1a                                      bne #0x3d1548
003d15a4  07 00 a0 e1                                      mov r0, r7
003d15a8  85 0d 00 eb                                      bl #0x3d4bc4
003d15ac  00 00 50 e3                                      cmp r0, #0
003d15b0  05 00 00 0a                                      beq #0x3d15cc
003d15b4  00 30 98 e5                                      ldr r3, [r8]
003d15b8  08 00 a0 e1                                      mov r0, r8
003d15bc  0f e0 a0 e1                                      mov lr, pc
003d15c0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d15c4  00 00 50 e3                                      cmp r0, #0
003d15c8  12 00 00 0a                                      beq #0x3d1618
003d15cc  08 10 a0 e1                                      mov r1, r8
003d15d0  07 00 a0 e1                                      mov r0, r7
003d15d4  3b 0d 00 eb                                      bl #0x3d4ac8
003d15d8  00 10 a0 e3                                      mov r1, #0
003d15dc  6a f2 fc eb                                      bl #0x30df8c
003d15e0  00 00 50 e3                                      cmp r0, #0
003d15e4  0b 00 00 0a                                      beq #0x3d1618
003d15e8  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003d15ec  04 00 97 e5                                      ldr r0, [r7, #4]
003d15f0  08 10 a0 e1                                      mov r1, r8
003d15f4  03 30 94 e7                                      ldr r3, [r4, r3]
003d15f8  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d15fc  00 30 93 e5                                      ldr r3, [r3]
003d1600  30 20 93 e5                                      ldr r2, [r3, #0x30]
003d1604  97 19 00 eb                                      bl #0x3d7c68
003d1608  00 10 a0 e3                                      mov r1, #0
003d160c  39 f3 fc eb                                      bl #0x30e2f8
003d1610  00 00 50 e3                                      cmp r0, #0
003d1614  08 00 00 1a                                      bne #0x3d163c
003d1618  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
003d161c  00 00 53 e3                                      cmp r3, #0
003d1620  c8 ff ff 0a                                      beq #0x3d1548
003d1624  03 00 a0 e1                                      mov r0, r3
003d1628  08 10 a0 e1                                      mov r1, r8
003d162c  00 30 93 e5                                      ldr r3, [r3]
003d1630  0f e0 a0 e1                                      mov lr, pc
003d1634  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d1638  c2 ff ff ea                                      b #0x3d1548
003d163c  09 a0 94 e7                                      ldr sl, [r4, sb]
003d1640  0c 60 8d e2                                      add r6, sp, #0xc
003d1644  0a 00 a0 e1                                      mov r0, sl
003d1648  8e 98 fd eb                                      bl #0x337888
003d164c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003d1650  04 20 8d e2                                      add r2, sp, #4
003d1654  06 00 a0 e1                                      mov r0, r6
003d1658  01 10 8f e0                                      add r1, pc, r1
003d165c  a2 0a fd eb                                      bl #0x3140ec
003d1660  0a 00 a0 e1                                      mov r0, sl
003d1664  06 10 a0 e1                                      mov r1, r6
003d1668  06 99 fd eb                                      bl #0x337a88
003d166c  06 00 a0 e1                                      mov r0, r6
003d1670  cd 08 fd eb                                      bl #0x3139ac
003d1674  e7 ff ff ea                                      b #0x3d1618
003d1678  24 f3 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d167c  cc 35 5c 00 ac 40 00 00 84 08 00 00 f0 3f 4f 00  .byte 0xcc, 0x35, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf0, 0x3f, 0x4f, 0x00
003d168c  c8 32 00 00 88 26 4f 00                          .byte 0xc8, 0x32, 0x00, 0x00, 0x88, 0x26, 0x4f, 0x00

; FUNCTION 0x003d1694, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI20OnMasterInMeleeRangeEv
; demangled: CharAI::OnMasterInMeleeRange()
; decoder-mode: arm
003d1694  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1698  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d169c  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d16a0  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d16a4  04 40 8f e0                                      add r4, pc, r4
003d16a8  06 30 94 e7                                      ldr r3, [r4, r6]
003d16ac  02 70 94 e7                                      ldr r7, [r4, r2]
003d16b0  20 d0 4d e2                                      sub sp, sp, #0x20
003d16b4  00 30 93 e5                                      ldr r3, [r3]
003d16b8  00 80 a0 e1                                      mov r8, r0
003d16bc  07 00 a0 e1                                      mov r0, r7
003d16c0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d16c4  6f 98 fd eb                                      bl #0x337888
003d16c8  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d16cc  04 50 8d e2                                      add r5, sp, #4
003d16d0  0d 20 a0 e1                                      mov r2, sp
003d16d4  01 10 8f e0                                      add r1, pc, r1
003d16d8  05 00 a0 e1                                      mov r0, r5
003d16dc  82 0a fd eb                                      bl #0x3140ec
003d16e0  05 10 a0 e1                                      mov r1, r5
003d16e4  07 00 a0 e1                                      mov r0, r7
003d16e8  e6 98 fd eb                                      bl #0x337a88
003d16ec  05 00 a0 e1                                      mov r0, r5
003d16f0  ad 08 fd eb                                      bl #0x3139ac
003d16f4  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d16f8  00 00 53 e3                                      cmp r3, #0
003d16fc  03 00 00 0a                                      beq #0x3d1710
003d1700  03 00 a0 e1                                      mov r0, r3
003d1704  00 30 93 e5                                      ldr r3, [r3]
003d1708  0f e0 a0 e1                                      mov lr, pc
003d170c  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
003d1710  06 30 94 e7                                      ldr r3, [r4, r6]
003d1714  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1718  00 30 93 e5                                      ldr r3, [r3]
003d171c  03 00 52 e1                                      cmp r2, r3
003d1720  01 00 00 1a                                      bne #0x3d172c
003d1724  20 d0 8d e2                                      add sp, sp, #0x20
003d1728  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d172c  f7 f2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1730  ec 33 5c 00 ac 40 00 00 84 08 00 00 14 3e 4f 00  .byte 0xec, 0x33, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x14, 0x3e, 0x4f, 0x00

; FUNCTION 0x003d1740, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI20OnMasterInCloseRangeEv
; demangled: CharAI::OnMasterInCloseRange()
; decoder-mode: arm
003d1740  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1744  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d1748  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d174c  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1750  04 40 8f e0                                      add r4, pc, r4
003d1754  06 30 94 e7                                      ldr r3, [r4, r6]
003d1758  02 70 94 e7                                      ldr r7, [r4, r2]
003d175c  20 d0 4d e2                                      sub sp, sp, #0x20
003d1760  00 30 93 e5                                      ldr r3, [r3]
003d1764  00 80 a0 e1                                      mov r8, r0
003d1768  07 00 a0 e1                                      mov r0, r7
003d176c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1770  44 98 fd eb                                      bl #0x337888
003d1774  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1778  04 50 8d e2                                      add r5, sp, #4
003d177c  0d 20 a0 e1                                      mov r2, sp
003d1780  01 10 8f e0                                      add r1, pc, r1
003d1784  05 00 a0 e1                                      mov r0, r5
003d1788  57 0a fd eb                                      bl #0x3140ec
003d178c  05 10 a0 e1                                      mov r1, r5
003d1790  07 00 a0 e1                                      mov r0, r7
003d1794  bb 98 fd eb                                      bl #0x337a88
003d1798  05 00 a0 e1                                      mov r0, r5
003d179c  82 08 fd eb                                      bl #0x3139ac
003d17a0  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d17a4  00 00 53 e3                                      cmp r3, #0
003d17a8  03 00 00 0a                                      beq #0x3d17bc
003d17ac  03 00 a0 e1                                      mov r0, r3
003d17b0  00 30 93 e5                                      ldr r3, [r3]
003d17b4  0f e0 a0 e1                                      mov lr, pc
003d17b8  78 f0 93 e5                                      ldr pc, [r3, #0x78]
003d17bc  06 30 94 e7                                      ldr r3, [r4, r6]
003d17c0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d17c4  00 30 93 e5                                      ldr r3, [r3]
003d17c8  03 00 52 e1                                      cmp r2, r3
003d17cc  01 00 00 1a                                      bne #0x3d17d8
003d17d0  20 d0 8d e2                                      add sp, sp, #0x20
003d17d4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d17d8  cc f2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d17dc  40 33 5c 00 ac 40 00 00 84 08 00 00 68 3d 4f 00  .byte 0x40, 0x33, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x68, 0x3d, 0x4f, 0x00

; FUNCTION 0x003d17ec, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21OnMasterInRangedRangeEv
; demangled: CharAI::OnMasterInRangedRange()
; decoder-mode: arm
003d17ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d17f0  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d17f4  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d17f8  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d17fc  04 40 8f e0                                      add r4, pc, r4
003d1800  06 30 94 e7                                      ldr r3, [r4, r6]
003d1804  02 70 94 e7                                      ldr r7, [r4, r2]
003d1808  20 d0 4d e2                                      sub sp, sp, #0x20
003d180c  00 30 93 e5                                      ldr r3, [r3]
003d1810  00 80 a0 e1                                      mov r8, r0
003d1814  07 00 a0 e1                                      mov r0, r7
003d1818  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d181c  19 98 fd eb                                      bl #0x337888
003d1820  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1824  04 50 8d e2                                      add r5, sp, #4
003d1828  0d 20 a0 e1                                      mov r2, sp
003d182c  01 10 8f e0                                      add r1, pc, r1
003d1830  05 00 a0 e1                                      mov r0, r5
003d1834  2c 0a fd eb                                      bl #0x3140ec
003d1838  05 10 a0 e1                                      mov r1, r5
003d183c  07 00 a0 e1                                      mov r0, r7
003d1840  90 98 fd eb                                      bl #0x337a88
003d1844  05 00 a0 e1                                      mov r0, r5
003d1848  57 08 fd eb                                      bl #0x3139ac
003d184c  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1850  00 00 53 e3                                      cmp r3, #0
003d1854  03 00 00 0a                                      beq #0x3d1868
003d1858  03 00 a0 e1                                      mov r0, r3
003d185c  00 30 93 e5                                      ldr r3, [r3]
003d1860  0f e0 a0 e1                                      mov lr, pc
003d1864  74 f0 93 e5                                      ldr pc, [r3, #0x74]
003d1868  06 30 94 e7                                      ldr r3, [r4, r6]
003d186c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1870  00 30 93 e5                                      ldr r3, [r3]
003d1874  03 00 52 e1                                      cmp r2, r3
003d1878  01 00 00 1a                                      bne #0x3d1884
003d187c  20 d0 8d e2                                      add sp, sp, #0x20
003d1880  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1884  a1 f2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1888  94 32 5c 00 ac 40 00 00 84 08 00 00 bc 3c 4f 00  .byte 0x94, 0x32, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xbc, 0x3c, 0x4f, 0x00

; FUNCTION 0x003d1898, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18OnMasterOutOfRangeEv
; demangled: CharAI::OnMasterOutOfRange()
; decoder-mode: arm
003d1898  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d189c  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d18a0  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d18a4  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d18a8  04 40 8f e0                                      add r4, pc, r4
003d18ac  06 30 94 e7                                      ldr r3, [r4, r6]
003d18b0  02 70 94 e7                                      ldr r7, [r4, r2]
003d18b4  20 d0 4d e2                                      sub sp, sp, #0x20
003d18b8  00 30 93 e5                                      ldr r3, [r3]
003d18bc  00 80 a0 e1                                      mov r8, r0
003d18c0  07 00 a0 e1                                      mov r0, r7
003d18c4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d18c8  ee 97 fd eb                                      bl #0x337888
003d18cc  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d18d0  04 50 8d e2                                      add r5, sp, #4
003d18d4  0d 20 a0 e1                                      mov r2, sp
003d18d8  01 10 8f e0                                      add r1, pc, r1
003d18dc  05 00 a0 e1                                      mov r0, r5
003d18e0  01 0a fd eb                                      bl #0x3140ec
003d18e4  05 10 a0 e1                                      mov r1, r5
003d18e8  07 00 a0 e1                                      mov r0, r7
003d18ec  65 98 fd eb                                      bl #0x337a88
003d18f0  05 00 a0 e1                                      mov r0, r5
003d18f4  2c 08 fd eb                                      bl #0x3139ac
003d18f8  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d18fc  00 00 53 e3                                      cmp r3, #0
003d1900  03 00 00 0a                                      beq #0x3d1914
003d1904  03 00 a0 e1                                      mov r0, r3
003d1908  00 30 93 e5                                      ldr r3, [r3]
003d190c  0f e0 a0 e1                                      mov lr, pc
003d1910  70 f0 93 e5                                      ldr pc, [r3, #0x70]
003d1914  06 30 94 e7                                      ldr r3, [r4, r6]
003d1918  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d191c  00 30 93 e5                                      ldr r3, [r3]
003d1920  03 00 52 e1                                      cmp r2, r3
003d1924  01 00 00 1a                                      bne #0x3d1930
003d1928  20 d0 8d e2                                      add sp, sp, #0x20
003d192c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1930  76 f2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1934  e8 31 5c 00 ac 40 00 00 84 08 00 00 10 3c 4f 00  .byte 0xe8, 0x31, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x10, 0x3c, 0x4f, 0x00

; FUNCTION 0x003d1944, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnMasterInSightEv
; demangled: CharAI::OnMasterInSight()
; decoder-mode: arm
003d1944  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1948  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d194c  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d1950  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1954  04 40 8f e0                                      add r4, pc, r4
003d1958  06 30 94 e7                                      ldr r3, [r4, r6]
003d195c  02 70 94 e7                                      ldr r7, [r4, r2]
003d1960  20 d0 4d e2                                      sub sp, sp, #0x20
003d1964  00 30 93 e5                                      ldr r3, [r3]
003d1968  00 80 a0 e1                                      mov r8, r0
003d196c  07 00 a0 e1                                      mov r0, r7
003d1970  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1974  c3 97 fd eb                                      bl #0x337888
003d1978  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d197c  04 50 8d e2                                      add r5, sp, #4
003d1980  0d 20 a0 e1                                      mov r2, sp
003d1984  01 10 8f e0                                      add r1, pc, r1
003d1988  05 00 a0 e1                                      mov r0, r5
003d198c  d6 09 fd eb                                      bl #0x3140ec
003d1990  05 10 a0 e1                                      mov r1, r5
003d1994  07 00 a0 e1                                      mov r0, r7
003d1998  3a 98 fd eb                                      bl #0x337a88
003d199c  05 00 a0 e1                                      mov r0, r5
003d19a0  01 08 fd eb                                      bl #0x3139ac
003d19a4  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d19a8  00 00 53 e3                                      cmp r3, #0
003d19ac  03 00 00 0a                                      beq #0x3d19c0
003d19b0  03 00 a0 e1                                      mov r0, r3
003d19b4  00 30 93 e5                                      ldr r3, [r3]
003d19b8  0f e0 a0 e1                                      mov lr, pc
003d19bc  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
003d19c0  06 30 94 e7                                      ldr r3, [r4, r6]
003d19c4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d19c8  00 30 93 e5                                      ldr r3, [r3]
003d19cc  03 00 52 e1                                      cmp r2, r3
003d19d0  01 00 00 1a                                      bne #0x3d19dc
003d19d4  20 d0 8d e2                                      add sp, sp, #0x20
003d19d8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d19dc  4b f2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d19e0  3c 31 5c 00 ac 40 00 00 84 08 00 00 64 3b 4f 00  .byte 0x3c, 0x31, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x64, 0x3b, 0x4f, 0x00

; FUNCTION 0x003d19f0, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18OnMasterOutOfSightEv
; demangled: CharAI::OnMasterOutOfSight()
; decoder-mode: arm
003d19f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d19f4  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d19f8  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d19fc  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1a00  04 40 8f e0                                      add r4, pc, r4
003d1a04  06 30 94 e7                                      ldr r3, [r4, r6]
003d1a08  02 70 94 e7                                      ldr r7, [r4, r2]
003d1a0c  20 d0 4d e2                                      sub sp, sp, #0x20
003d1a10  00 30 93 e5                                      ldr r3, [r3]
003d1a14  00 80 a0 e1                                      mov r8, r0
003d1a18  07 00 a0 e1                                      mov r0, r7
003d1a1c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1a20  98 97 fd eb                                      bl #0x337888
003d1a24  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1a28  04 50 8d e2                                      add r5, sp, #4
003d1a2c  0d 20 a0 e1                                      mov r2, sp
003d1a30  01 10 8f e0                                      add r1, pc, r1
003d1a34  05 00 a0 e1                                      mov r0, r5
003d1a38  ab 09 fd eb                                      bl #0x3140ec
003d1a3c  05 10 a0 e1                                      mov r1, r5
003d1a40  07 00 a0 e1                                      mov r0, r7
003d1a44  0f 98 fd eb                                      bl #0x337a88
003d1a48  05 00 a0 e1                                      mov r0, r5
003d1a4c  d6 07 fd eb                                      bl #0x3139ac
003d1a50  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1a54  00 00 53 e3                                      cmp r3, #0
003d1a58  03 00 00 0a                                      beq #0x3d1a6c
003d1a5c  03 00 a0 e1                                      mov r0, r3
003d1a60  00 30 93 e5                                      ldr r3, [r3]
003d1a64  0f e0 a0 e1                                      mov lr, pc
003d1a68  68 f0 93 e5                                      ldr pc, [r3, #0x68]
003d1a6c  06 30 94 e7                                      ldr r3, [r4, r6]
003d1a70  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1a74  00 30 93 e5                                      ldr r3, [r3]
003d1a78  03 00 52 e1                                      cmp r2, r3
003d1a7c  01 00 00 1a                                      bne #0x3d1a88
003d1a80  20 d0 8d e2                                      add sp, sp, #0x20
003d1a84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1a88  20 f2 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1a8c  90 30 5c 00 ac 40 00 00 84 08 00 00 b8 3a 4f 00  .byte 0x90, 0x30, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb8, 0x3a, 0x4f, 0x00

; FUNCTION 0x003d1a9c, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnMasterRevivedEv
; demangled: CharAI::OnMasterRevived()
; decoder-mode: arm
003d1a9c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1aa0  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d1aa4  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d1aa8  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1aac  04 40 8f e0                                      add r4, pc, r4
003d1ab0  06 30 94 e7                                      ldr r3, [r4, r6]
003d1ab4  02 70 94 e7                                      ldr r7, [r4, r2]
003d1ab8  20 d0 4d e2                                      sub sp, sp, #0x20
003d1abc  00 30 93 e5                                      ldr r3, [r3]
003d1ac0  00 80 a0 e1                                      mov r8, r0
003d1ac4  07 00 a0 e1                                      mov r0, r7
003d1ac8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1acc  6d 97 fd eb                                      bl #0x337888
003d1ad0  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1ad4  04 50 8d e2                                      add r5, sp, #4
003d1ad8  0d 20 a0 e1                                      mov r2, sp
003d1adc  01 10 8f e0                                      add r1, pc, r1
003d1ae0  05 00 a0 e1                                      mov r0, r5
003d1ae4  80 09 fd eb                                      bl #0x3140ec
003d1ae8  05 10 a0 e1                                      mov r1, r5
003d1aec  07 00 a0 e1                                      mov r0, r7
003d1af0  e4 97 fd eb                                      bl #0x337a88
003d1af4  05 00 a0 e1                                      mov r0, r5
003d1af8  ab 07 fd eb                                      bl #0x3139ac
003d1afc  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1b00  00 00 53 e3                                      cmp r3, #0
003d1b04  03 00 00 0a                                      beq #0x3d1b18
003d1b08  03 00 a0 e1                                      mov r0, r3
003d1b0c  00 30 93 e5                                      ldr r3, [r3]
003d1b10  0f e0 a0 e1                                      mov lr, pc
003d1b14  64 f0 93 e5                                      ldr pc, [r3, #0x64]
003d1b18  06 30 94 e7                                      ldr r3, [r4, r6]
003d1b1c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1b20  00 30 93 e5                                      ldr r3, [r3]
003d1b24  03 00 52 e1                                      cmp r2, r3
003d1b28  01 00 00 1a                                      bne #0x3d1b34
003d1b2c  20 d0 8d e2                                      add sp, sp, #0x20
003d1b30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1b34  f5 f1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1b38  e4 2f 5c 00 ac 40 00 00 84 08 00 00 0c 3a 4f 00  .byte 0xe4, 0x2f, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x0c, 0x3a, 0x4f, 0x00

; FUNCTION 0x003d1b48, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12OnMasterDiedEv
; demangled: CharAI::OnMasterDied()
; decoder-mode: arm
003d1b48  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1b4c  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d1b50  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d1b54  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1b58  04 40 8f e0                                      add r4, pc, r4
003d1b5c  06 30 94 e7                                      ldr r3, [r4, r6]
003d1b60  02 70 94 e7                                      ldr r7, [r4, r2]
003d1b64  20 d0 4d e2                                      sub sp, sp, #0x20
003d1b68  00 30 93 e5                                      ldr r3, [r3]
003d1b6c  00 80 a0 e1                                      mov r8, r0
003d1b70  07 00 a0 e1                                      mov r0, r7
003d1b74  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1b78  42 97 fd eb                                      bl #0x337888
003d1b7c  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1b80  04 50 8d e2                                      add r5, sp, #4
003d1b84  0d 20 a0 e1                                      mov r2, sp
003d1b88  01 10 8f e0                                      add r1, pc, r1
003d1b8c  05 00 a0 e1                                      mov r0, r5
003d1b90  55 09 fd eb                                      bl #0x3140ec
003d1b94  05 10 a0 e1                                      mov r1, r5
003d1b98  07 00 a0 e1                                      mov r0, r7
003d1b9c  b9 97 fd eb                                      bl #0x337a88
003d1ba0  05 00 a0 e1                                      mov r0, r5
003d1ba4  80 07 fd eb                                      bl #0x3139ac
003d1ba8  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1bac  00 00 53 e3                                      cmp r3, #0
003d1bb0  03 00 00 0a                                      beq #0x3d1bc4
003d1bb4  03 00 a0 e1                                      mov r0, r3
003d1bb8  00 30 93 e5                                      ldr r3, [r3]
003d1bbc  0f e0 a0 e1                                      mov lr, pc
003d1bc0  60 f0 93 e5                                      ldr pc, [r3, #0x60]
003d1bc4  06 30 94 e7                                      ldr r3, [r4, r6]
003d1bc8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1bcc  00 30 93 e5                                      ldr r3, [r3]
003d1bd0  03 00 52 e1                                      cmp r2, r3
003d1bd4  01 00 00 1a                                      bne #0x3d1be0
003d1bd8  20 d0 8d e2                                      add sp, sp, #0x20
003d1bdc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1be0  ca f1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1be4  38 2f 5c 00 ac 40 00 00 84 08 00 00 60 39 4f 00  .byte 0x38, 0x2f, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x60, 0x39, 0x4f, 0x00

; FUNCTION 0x003d1bf4, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI20OnTargetInMeleeRangeEv
; demangled: CharAI::OnTargetInMeleeRange()
; decoder-mode: arm
003d1bf4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1bf8  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d1bfc  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d1c00  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1c04  04 40 8f e0                                      add r4, pc, r4
003d1c08  06 30 94 e7                                      ldr r3, [r4, r6]
003d1c0c  02 70 94 e7                                      ldr r7, [r4, r2]
003d1c10  20 d0 4d e2                                      sub sp, sp, #0x20
003d1c14  00 30 93 e5                                      ldr r3, [r3]
003d1c18  00 80 a0 e1                                      mov r8, r0
003d1c1c  07 00 a0 e1                                      mov r0, r7
003d1c20  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1c24  17 97 fd eb                                      bl #0x337888
003d1c28  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1c2c  04 50 8d e2                                      add r5, sp, #4
003d1c30  0d 20 a0 e1                                      mov r2, sp
003d1c34  01 10 8f e0                                      add r1, pc, r1
003d1c38  05 00 a0 e1                                      mov r0, r5
003d1c3c  2a 09 fd eb                                      bl #0x3140ec
003d1c40  05 10 a0 e1                                      mov r1, r5
003d1c44  07 00 a0 e1                                      mov r0, r7
003d1c48  8e 97 fd eb                                      bl #0x337a88
003d1c4c  05 00 a0 e1                                      mov r0, r5
003d1c50  55 07 fd eb                                      bl #0x3139ac
003d1c54  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1c58  00 00 53 e3                                      cmp r3, #0
003d1c5c  03 00 00 0a                                      beq #0x3d1c70
003d1c60  03 00 a0 e1                                      mov r0, r3
003d1c64  00 30 93 e5                                      ldr r3, [r3]
003d1c68  0f e0 a0 e1                                      mov lr, pc
003d1c6c  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
003d1c70  06 30 94 e7                                      ldr r3, [r4, r6]
003d1c74  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1c78  00 30 93 e5                                      ldr r3, [r3]
003d1c7c  03 00 52 e1                                      cmp r2, r3
003d1c80  01 00 00 1a                                      bne #0x3d1c8c
003d1c84  20 d0 8d e2                                      add sp, sp, #0x20
003d1c88  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1c8c  9f f1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1c90  8c 2e 5c 00 ac 40 00 00 84 08 00 00 b4 38 4f 00  .byte 0x8c, 0x2e, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb4, 0x38, 0x4f, 0x00

; FUNCTION 0x003d1ca0, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI20OnTargetInCloseRangeEv
; demangled: CharAI::OnTargetInCloseRange()
; decoder-mode: arm
003d1ca0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1ca4  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d1ca8  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d1cac  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1cb0  04 40 8f e0                                      add r4, pc, r4
003d1cb4  06 30 94 e7                                      ldr r3, [r4, r6]
003d1cb8  02 70 94 e7                                      ldr r7, [r4, r2]
003d1cbc  20 d0 4d e2                                      sub sp, sp, #0x20
003d1cc0  00 30 93 e5                                      ldr r3, [r3]
003d1cc4  00 80 a0 e1                                      mov r8, r0
003d1cc8  07 00 a0 e1                                      mov r0, r7
003d1ccc  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1cd0  ec 96 fd eb                                      bl #0x337888
003d1cd4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1cd8  04 50 8d e2                                      add r5, sp, #4
003d1cdc  0d 20 a0 e1                                      mov r2, sp
003d1ce0  01 10 8f e0                                      add r1, pc, r1
003d1ce4  05 00 a0 e1                                      mov r0, r5
003d1ce8  ff 08 fd eb                                      bl #0x3140ec
003d1cec  05 10 a0 e1                                      mov r1, r5
003d1cf0  07 00 a0 e1                                      mov r0, r7
003d1cf4  63 97 fd eb                                      bl #0x337a88
003d1cf8  05 00 a0 e1                                      mov r0, r5
003d1cfc  2a 07 fd eb                                      bl #0x3139ac
003d1d00  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1d04  00 00 53 e3                                      cmp r3, #0
003d1d08  03 00 00 0a                                      beq #0x3d1d1c
003d1d0c  03 00 a0 e1                                      mov r0, r3
003d1d10  00 30 93 e5                                      ldr r3, [r3]
003d1d14  0f e0 a0 e1                                      mov lr, pc
003d1d18  58 f0 93 e5                                      ldr pc, [r3, #0x58]
003d1d1c  06 30 94 e7                                      ldr r3, [r4, r6]
003d1d20  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1d24  00 30 93 e5                                      ldr r3, [r3]
003d1d28  03 00 52 e1                                      cmp r2, r3
003d1d2c  01 00 00 1a                                      bne #0x3d1d38
003d1d30  20 d0 8d e2                                      add sp, sp, #0x20
003d1d34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1d38  74 f1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1d3c  e0 2d 5c 00 ac 40 00 00 84 08 00 00 08 38 4f 00  .byte 0xe0, 0x2d, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x08, 0x38, 0x4f, 0x00

; FUNCTION 0x003d1d4c, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21OnTargetInRangedRangeEv
; demangled: CharAI::OnTargetInRangedRange()
; decoder-mode: arm
003d1d4c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1d50  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d1d54  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d1d58  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d1d5c  04 40 8f e0                                      add r4, pc, r4
003d1d60  06 30 94 e7                                      ldr r3, [r4, r6]
003d1d64  02 80 94 e7                                      ldr r8, [r4, r2]
003d1d68  20 d0 4d e2                                      sub sp, sp, #0x20
003d1d6c  00 30 93 e5                                      ldr r3, [r3]
003d1d70  00 70 a0 e1                                      mov r7, r0
003d1d74  08 00 a0 e1                                      mov r0, r8
003d1d78  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1d7c  c1 96 fd eb                                      bl #0x337888
003d1d80  74 10 9f e5                                      ldr r1, [pc, #0x74]
003d1d84  04 50 8d e2                                      add r5, sp, #4
003d1d88  0d 20 a0 e1                                      mov r2, sp
003d1d8c  01 10 8f e0                                      add r1, pc, r1
003d1d90  05 00 a0 e1                                      mov r0, r5
003d1d94  d4 08 fd eb                                      bl #0x3140ec
003d1d98  05 10 a0 e1                                      mov r1, r5
003d1d9c  08 00 a0 e1                                      mov r0, r8
003d1da0  38 97 fd eb                                      bl #0x337a88
003d1da4  05 00 a0 e1                                      mov r0, r5
003d1da8  ff 06 fd eb                                      bl #0x3139ac
003d1dac  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
003d1db0  00 20 a0 e3                                      mov r2, #0
003d1db4  4c 20 c7 e5                                      strb r2, [r7, #0x4c]
003d1db8  02 00 53 e1                                      cmp r3, r2
003d1dbc  03 00 00 0a                                      beq #0x3d1dd0
003d1dc0  03 00 a0 e1                                      mov r0, r3
003d1dc4  00 30 93 e5                                      ldr r3, [r3]
003d1dc8  0f e0 a0 e1                                      mov lr, pc
003d1dcc  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003d1dd0  06 30 94 e7                                      ldr r3, [r4, r6]
003d1dd4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1dd8  00 30 93 e5                                      ldr r3, [r3]
003d1ddc  03 00 52 e1                                      cmp r2, r3
003d1de0  01 00 00 1a                                      bne #0x3d1dec
003d1de4  20 d0 8d e2                                      add sp, sp, #0x20
003d1de8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1dec  47 f1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1df0  34 2d 5c 00 ac 40 00 00 84 08 00 00 5c 37 4f 00  .byte 0x34, 0x2d, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x5c, 0x37, 0x4f, 0x00

; FUNCTION 0x003d1e00, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18OnTargetOutOfRangeEv
; demangled: CharAI::OnTargetOutOfRange()
; decoder-mode: arm
003d1e00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1e04  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d1e08  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d1e0c  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d1e10  04 40 8f e0                                      add r4, pc, r4
003d1e14  06 30 94 e7                                      ldr r3, [r4, r6]
003d1e18  02 80 94 e7                                      ldr r8, [r4, r2]
003d1e1c  20 d0 4d e2                                      sub sp, sp, #0x20
003d1e20  00 30 93 e5                                      ldr r3, [r3]
003d1e24  00 70 a0 e1                                      mov r7, r0
003d1e28  08 00 a0 e1                                      mov r0, r8
003d1e2c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1e30  94 96 fd eb                                      bl #0x337888
003d1e34  74 10 9f e5                                      ldr r1, [pc, #0x74]
003d1e38  04 50 8d e2                                      add r5, sp, #4
003d1e3c  0d 20 a0 e1                                      mov r2, sp
003d1e40  01 10 8f e0                                      add r1, pc, r1
003d1e44  05 00 a0 e1                                      mov r0, r5
003d1e48  a7 08 fd eb                                      bl #0x3140ec
003d1e4c  05 10 a0 e1                                      mov r1, r5
003d1e50  08 00 a0 e1                                      mov r0, r8
003d1e54  0b 97 fd eb                                      bl #0x337a88
003d1e58  05 00 a0 e1                                      mov r0, r5
003d1e5c  d2 06 fd eb                                      bl #0x3139ac
003d1e60  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
003d1e64  00 20 a0 e3                                      mov r2, #0
003d1e68  4c 20 c7 e5                                      strb r2, [r7, #0x4c]
003d1e6c  02 00 53 e1                                      cmp r3, r2
003d1e70  03 00 00 0a                                      beq #0x3d1e84
003d1e74  03 00 a0 e1                                      mov r0, r3
003d1e78  00 30 93 e5                                      ldr r3, [r3]
003d1e7c  0f e0 a0 e1                                      mov lr, pc
003d1e80  50 f0 93 e5                                      ldr pc, [r3, #0x50]
003d1e84  06 30 94 e7                                      ldr r3, [r4, r6]
003d1e88  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1e8c  00 30 93 e5                                      ldr r3, [r3]
003d1e90  03 00 52 e1                                      cmp r2, r3
003d1e94  01 00 00 1a                                      bne #0x3d1ea0
003d1e98  20 d0 8d e2                                      add sp, sp, #0x20
003d1e9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1ea0  1a f1 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1ea4  80 2c 5c 00 ac 40 00 00 84 08 00 00 a8 36 4f 00  .byte 0x80, 0x2c, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa8, 0x36, 0x4f, 0x00

; FUNCTION 0x003d1eb4, declared_size=172, range_size=172, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnTargetRevivedEv
; demangled: CharAI::OnTargetRevived()
; decoder-mode: arm
003d1eb4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1eb8  90 40 9f e5                                      ldr r4, [pc, #0x90]
003d1ebc  90 60 9f e5                                      ldr r6, [pc, #0x90]
003d1ec0  90 20 9f e5                                      ldr r2, [pc, #0x90]
003d1ec4  04 40 8f e0                                      add r4, pc, r4
003d1ec8  06 30 94 e7                                      ldr r3, [r4, r6]
003d1ecc  02 70 94 e7                                      ldr r7, [r4, r2]
003d1ed0  20 d0 4d e2                                      sub sp, sp, #0x20
003d1ed4  00 30 93 e5                                      ldr r3, [r3]
003d1ed8  00 80 a0 e1                                      mov r8, r0
003d1edc  07 00 a0 e1                                      mov r0, r7
003d1ee0  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1ee4  67 96 fd eb                                      bl #0x337888
003d1ee8  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003d1eec  04 50 8d e2                                      add r5, sp, #4
003d1ef0  0d 20 a0 e1                                      mov r2, sp
003d1ef4  01 10 8f e0                                      add r1, pc, r1
003d1ef8  05 00 a0 e1                                      mov r0, r5
003d1efc  7a 08 fd eb                                      bl #0x3140ec
003d1f00  05 10 a0 e1                                      mov r1, r5
003d1f04  07 00 a0 e1                                      mov r0, r7
003d1f08  de 96 fd eb                                      bl #0x337a88
003d1f0c  05 00 a0 e1                                      mov r0, r5
003d1f10  a5 06 fd eb                                      bl #0x3139ac
003d1f14  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d1f18  00 00 53 e3                                      cmp r3, #0
003d1f1c  03 00 00 0a                                      beq #0x3d1f30
003d1f20  03 00 a0 e1                                      mov r0, r3
003d1f24  00 30 93 e5                                      ldr r3, [r3]
003d1f28  0f e0 a0 e1                                      mov lr, pc
003d1f2c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
003d1f30  06 30 94 e7                                      ldr r3, [r4, r6]
003d1f34  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1f38  00 30 93 e5                                      ldr r3, [r3]
003d1f3c  03 00 52 e1                                      cmp r2, r3
003d1f40  01 00 00 1a                                      bne #0x3d1f4c
003d1f44  20 d0 8d e2                                      add sp, sp, #0x20
003d1f48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d1f4c  ef f0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d1f50  cc 2b 5c 00 ac 40 00 00 84 08 00 00 f4 35 4f 00  .byte 0xcc, 0x2b, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xf4, 0x35, 0x4f, 0x00

; FUNCTION 0x003d1f60, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12OnTargetDiedEv
; demangled: CharAI::OnTargetDied()
; decoder-mode: arm
003d1f60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d1f64  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d1f68  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d1f6c  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d1f70  04 40 8f e0                                      add r4, pc, r4
003d1f74  06 30 94 e7                                      ldr r3, [r4, r6]
003d1f78  02 80 94 e7                                      ldr r8, [r4, r2]
003d1f7c  20 d0 4d e2                                      sub sp, sp, #0x20
003d1f80  00 30 93 e5                                      ldr r3, [r3]
003d1f84  00 70 a0 e1                                      mov r7, r0
003d1f88  08 00 a0 e1                                      mov r0, r8
003d1f8c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d1f90  3c 96 fd eb                                      bl #0x337888
003d1f94  74 10 9f e5                                      ldr r1, [pc, #0x74]
003d1f98  04 50 8d e2                                      add r5, sp, #4
003d1f9c  0d 20 a0 e1                                      mov r2, sp
003d1fa0  01 10 8f e0                                      add r1, pc, r1
003d1fa4  05 00 a0 e1                                      mov r0, r5
003d1fa8  4f 08 fd eb                                      bl #0x3140ec
003d1fac  05 10 a0 e1                                      mov r1, r5
003d1fb0  08 00 a0 e1                                      mov r0, r8
003d1fb4  b3 96 fd eb                                      bl #0x337a88
003d1fb8  05 00 a0 e1                                      mov r0, r5
003d1fbc  7a 06 fd eb                                      bl #0x3139ac
003d1fc0  1c 30 97 e5                                      ldr r3, [r7, #0x1c]
003d1fc4  00 20 a0 e3                                      mov r2, #0
003d1fc8  78 20 c7 e5                                      strb r2, [r7, #0x78]
003d1fcc  02 00 53 e1                                      cmp r3, r2
003d1fd0  03 00 00 0a                                      beq #0x3d1fe4
003d1fd4  03 00 a0 e1                                      mov r0, r3
003d1fd8  00 30 93 e5                                      ldr r3, [r3]
003d1fdc  0f e0 a0 e1                                      mov lr, pc
003d1fe0  40 f0 93 e5                                      ldr pc, [r3, #0x40]
003d1fe4  06 30 94 e7                                      ldr r3, [r4, r6]
003d1fe8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d1fec  00 30 93 e5                                      ldr r3, [r3]
003d1ff0  03 00 52 e1                                      cmp r2, r3
003d1ff4  01 00 00 1a                                      bne #0x3d2000
003d1ff8  20 d0 8d e2                                      add sp, sp, #0x20
003d1ffc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d2000  c2 f0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d2004  20 2b 5c 00 ac 40 00 00 84 08 00 00 48 35 4f 00  .byte 0x20, 0x2b, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x48, 0x35, 0x4f, 0x00

; FUNCTION 0x003d2014, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI9OnDeAggroEP9Character
; demangled: CharAI::OnDeAggro(Character*)
; decoder-mode: arm
003d2014  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d2018  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d201c  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d2020  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d2024  04 40 8f e0                                      add r4, pc, r4
003d2028  06 30 94 e7                                      ldr r3, [r4, r6]
003d202c  02 70 94 e7                                      ldr r7, [r4, r2]
003d2030  24 d0 4d e2                                      sub sp, sp, #0x24
003d2034  00 30 93 e5                                      ldr r3, [r3]
003d2038  00 80 a0 e1                                      mov r8, r0
003d203c  07 00 a0 e1                                      mov r0, r7
003d2040  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d2044  01 a0 a0 e1                                      mov sl, r1
003d2048  0e 96 fd eb                                      bl #0x337888
003d204c  70 10 9f e5                                      ldr r1, [pc, #0x70]
003d2050  04 50 8d e2                                      add r5, sp, #4
003d2054  0d 20 a0 e1                                      mov r2, sp
003d2058  01 10 8f e0                                      add r1, pc, r1
003d205c  05 00 a0 e1                                      mov r0, r5
003d2060  21 08 fd eb                                      bl #0x3140ec
003d2064  05 10 a0 e1                                      mov r1, r5
003d2068  07 00 a0 e1                                      mov r0, r7
003d206c  85 96 fd eb                                      bl #0x337a88
003d2070  05 00 a0 e1                                      mov r0, r5
003d2074  4c 06 fd eb                                      bl #0x3139ac
003d2078  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d207c  00 00 53 e3                                      cmp r3, #0
003d2080  04 00 00 0a                                      beq #0x3d2098
003d2084  03 00 a0 e1                                      mov r0, r3
003d2088  0a 10 a0 e1                                      mov r1, sl
003d208c  00 30 93 e5                                      ldr r3, [r3]
003d2090  0f e0 a0 e1                                      mov lr, pc
003d2094  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003d2098  06 30 94 e7                                      ldr r3, [r4, r6]
003d209c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d20a0  00 30 93 e5                                      ldr r3, [r3]
003d20a4  03 00 52 e1                                      cmp r2, r3
003d20a8  01 00 00 1a                                      bne #0x3d20b4
003d20ac  24 d0 8d e2                                      add sp, sp, #0x24
003d20b0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d20b4  95 f0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d20b8  6c 2a 5c 00 ac 40 00 00 84 08 00 00 90 34 4f 00  .byte 0x6c, 0x2a, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x90, 0x34, 0x4f, 0x00

; FUNCTION 0x003d20c8, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI7OnAggroEP9Character
; demangled: CharAI::OnAggro(Character*)
; decoder-mode: arm
003d20c8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d20cc  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d20d0  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d20d4  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d20d8  04 40 8f e0                                      add r4, pc, r4
003d20dc  06 30 94 e7                                      ldr r3, [r4, r6]
003d20e0  02 70 94 e7                                      ldr r7, [r4, r2]
003d20e4  24 d0 4d e2                                      sub sp, sp, #0x24
003d20e8  00 30 93 e5                                      ldr r3, [r3]
003d20ec  00 80 a0 e1                                      mov r8, r0
003d20f0  07 00 a0 e1                                      mov r0, r7
003d20f4  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d20f8  01 a0 a0 e1                                      mov sl, r1
003d20fc  e1 95 fd eb                                      bl #0x337888
003d2100  70 10 9f e5                                      ldr r1, [pc, #0x70]
003d2104  04 50 8d e2                                      add r5, sp, #4
003d2108  0d 20 a0 e1                                      mov r2, sp
003d210c  01 10 8f e0                                      add r1, pc, r1
003d2110  05 00 a0 e1                                      mov r0, r5
003d2114  f4 07 fd eb                                      bl #0x3140ec
003d2118  05 10 a0 e1                                      mov r1, r5
003d211c  07 00 a0 e1                                      mov r0, r7
003d2120  58 96 fd eb                                      bl #0x337a88
003d2124  05 00 a0 e1                                      mov r0, r5
003d2128  1f 06 fd eb                                      bl #0x3139ac
003d212c  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d2130  00 00 53 e3                                      cmp r3, #0
003d2134  04 00 00 0a                                      beq #0x3d214c
003d2138  03 00 a0 e1                                      mov r0, r3
003d213c  0a 10 a0 e1                                      mov r1, sl
003d2140  00 30 93 e5                                      ldr r3, [r3]
003d2144  0f e0 a0 e1                                      mov lr, pc
003d2148  38 f0 93 e5                                      ldr pc, [r3, #0x38]
003d214c  06 30 94 e7                                      ldr r3, [r4, r6]
003d2150  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d2154  00 30 93 e5                                      ldr r3, [r3]
003d2158  03 00 52 e1                                      cmp r2, r3
003d215c  01 00 00 1a                                      bne #0x3d2168
003d2160  24 d0 8d e2                                      add sp, sp, #0x24
003d2164  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d2168  68 f0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d216c  b8 29 5c 00 ac 40 00 00 84 08 00 00 dc 33 4f 00  .byte 0xb8, 0x29, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xdc, 0x33, 0x4f, 0x00

; FUNCTION 0x003d217c, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16OnNeutralSpottedEP9Character
; demangled: CharAI::OnNeutralSpotted(Character*)
; decoder-mode: arm
003d217c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d2180  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d2184  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d2188  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d218c  04 40 8f e0                                      add r4, pc, r4
003d2190  06 30 94 e7                                      ldr r3, [r4, r6]
003d2194  02 70 94 e7                                      ldr r7, [r4, r2]
003d2198  24 d0 4d e2                                      sub sp, sp, #0x24
003d219c  00 30 93 e5                                      ldr r3, [r3]
003d21a0  00 80 a0 e1                                      mov r8, r0
003d21a4  07 00 a0 e1                                      mov r0, r7
003d21a8  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d21ac  01 a0 a0 e1                                      mov sl, r1
003d21b0  b4 95 fd eb                                      bl #0x337888
003d21b4  70 10 9f e5                                      ldr r1, [pc, #0x70]
003d21b8  04 50 8d e2                                      add r5, sp, #4
003d21bc  0d 20 a0 e1                                      mov r2, sp
003d21c0  01 10 8f e0                                      add r1, pc, r1
003d21c4  05 00 a0 e1                                      mov r0, r5
003d21c8  c7 07 fd eb                                      bl #0x3140ec
003d21cc  05 10 a0 e1                                      mov r1, r5
003d21d0  07 00 a0 e1                                      mov r0, r7
003d21d4  2b 96 fd eb                                      bl #0x337a88
003d21d8  05 00 a0 e1                                      mov r0, r5
003d21dc  f2 05 fd eb                                      bl #0x3139ac
003d21e0  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d21e4  00 00 53 e3                                      cmp r3, #0
003d21e8  04 00 00 0a                                      beq #0x3d2200
003d21ec  03 00 a0 e1                                      mov r0, r3
003d21f0  0a 10 a0 e1                                      mov r1, sl
003d21f4  00 30 93 e5                                      ldr r3, [r3]
003d21f8  0f e0 a0 e1                                      mov lr, pc
003d21fc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
003d2200  06 30 94 e7                                      ldr r3, [r4, r6]
003d2204  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d2208  00 30 93 e5                                      ldr r3, [r3]
003d220c  03 00 52 e1                                      cmp r2, r3
003d2210  01 00 00 1a                                      bne #0x3d221c
003d2214  24 d0 8d e2                                      add sp, sp, #0x24
003d2218  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d221c  3b f0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d2220  04 29 5c 00 ac 40 00 00 84 08 00 00 28 33 4f 00  .byte 0x04, 0x29, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x28, 0x33, 0x4f, 0x00

; FUNCTION 0x003d2230, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnFriendSpottedEP9Character
; demangled: CharAI::OnFriendSpotted(Character*)
; decoder-mode: arm
003d2230  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d2234  98 40 9f e5                                      ldr r4, [pc, #0x98]
003d2238  98 60 9f e5                                      ldr r6, [pc, #0x98]
003d223c  98 20 9f e5                                      ldr r2, [pc, #0x98]
003d2240  04 40 8f e0                                      add r4, pc, r4
003d2244  06 30 94 e7                                      ldr r3, [r4, r6]
003d2248  02 70 94 e7                                      ldr r7, [r4, r2]
003d224c  24 d0 4d e2                                      sub sp, sp, #0x24
003d2250  00 30 93 e5                                      ldr r3, [r3]
003d2254  00 80 a0 e1                                      mov r8, r0
003d2258  07 00 a0 e1                                      mov r0, r7
003d225c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d2260  01 a0 a0 e1                                      mov sl, r1
003d2264  87 95 fd eb                                      bl #0x337888
003d2268  70 10 9f e5                                      ldr r1, [pc, #0x70]
003d226c  04 50 8d e2                                      add r5, sp, #4
003d2270  0d 20 a0 e1                                      mov r2, sp
003d2274  01 10 8f e0                                      add r1, pc, r1
003d2278  05 00 a0 e1                                      mov r0, r5
003d227c  9a 07 fd eb                                      bl #0x3140ec
003d2280  05 10 a0 e1                                      mov r1, r5
003d2284  07 00 a0 e1                                      mov r0, r7
003d2288  fe 95 fd eb                                      bl #0x337a88
003d228c  05 00 a0 e1                                      mov r0, r5
003d2290  c5 05 fd eb                                      bl #0x3139ac
003d2294  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003d2298  00 00 53 e3                                      cmp r3, #0
003d229c  04 00 00 0a                                      beq #0x3d22b4
003d22a0  03 00 a0 e1                                      mov r0, r3
003d22a4  0a 10 a0 e1                                      mov r1, sl
003d22a8  00 30 93 e5                                      ldr r3, [r3]
003d22ac  0f e0 a0 e1                                      mov lr, pc
003d22b0  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
003d22b4  06 30 94 e7                                      ldr r3, [r4, r6]
003d22b8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d22bc  00 30 93 e5                                      ldr r3, [r3]
003d22c0  03 00 52 e1                                      cmp r2, r3
003d22c4  01 00 00 1a                                      bne #0x3d22d0
003d22c8  24 d0 8d e2                                      add sp, sp, #0x24
003d22cc  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d22d0  0e f0 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d22d4  50 28 5c 00 ac 40 00 00 84 08 00 00 74 32 4f 00  .byte 0x50, 0x28, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x74, 0x32, 0x4f, 0x00

; FUNCTION 0x003d22e4, declared_size=300, range_size=300, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15OnTargetInSightEv
; demangled: CharAI::OnTargetInSight()
; decoder-mode: arm
003d22e4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d22e8  08 41 9f e5                                      ldr r4, [pc, #0x108]
003d22ec  08 61 9f e5                                      ldr r6, [pc, #0x108]
003d22f0  08 21 9f e5                                      ldr r2, [pc, #0x108]
003d22f4  04 40 8f e0                                      add r4, pc, r4
003d22f8  06 30 94 e7                                      ldr r3, [r4, r6]
003d22fc  02 80 94 e7                                      ldr r8, [r4, r2]
003d2300  40 d0 4d e2                                      sub sp, sp, #0x40
003d2304  00 30 93 e5                                      ldr r3, [r3]
003d2308  00 50 a0 e1                                      mov r5, r0
003d230c  08 00 a0 e1                                      mov r0, r8
003d2310  3c 30 8d e5                                      str r3, [sp, #0x3c]
003d2314  5b 95 fd eb                                      bl #0x337888
003d2318  e4 10 9f e5                                      ldr r1, [pc, #0xe4]
003d231c  24 70 8d e2                                      add r7, sp, #0x24
003d2320  20 20 8d e2                                      add r2, sp, #0x20
003d2324  07 00 a0 e1                                      mov r0, r7
003d2328  01 10 8f e0                                      add r1, pc, r1
003d232c  6e 07 fd eb                                      bl #0x3140ec
003d2330  07 10 a0 e1                                      mov r1, r7
003d2334  08 00 a0 e1                                      mov r0, r8
003d2338  d2 95 fd eb                                      bl #0x337a88
003d233c  07 00 a0 e1                                      mov r0, r7
003d2340  99 05 fd eb                                      bl #0x3139ac
003d2344  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003d2348  04 00 95 e5                                      ldr r0, [r5, #4]
003d234c  03 30 94 e7                                      ldr r3, [r4, r3]
003d2350  00 70 93 e5                                      ldr r7, [r3]
003d2354  24 43 ff eb                                      bl #0x3a2fec
003d2358  44 30 a0 e3                                      mov r3, #0x44
003d235c  93 70 27 e0                                      mla r7, r3, r0, r7
003d2360  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003d2364  04 00 95 e5                                      ldr r0, [r5, #4]
003d2368  24 a0 97 e5                                      ldr sl, [r7, #0x24]
003d236c  03 30 94 e7                                      ldr r3, [r4, r3]
003d2370  00 90 93 e5                                      ldr sb, [r3]
003d2374  98 04 ff eb                                      bl #0x3935dc
003d2378  04 e0 90 e5                                      ldr lr, [r0, #4]
003d237c  00 70 90 e5                                      ldr r7, [r0]
003d2380  08 80 90 e5                                      ldr r8, [r0, #8]
003d2384  bf c4 a0 e3                                      mov ip, #0xbf000000
003d2388  02 c5 8c e2                                      add ip, ip, #0x800000
003d238c  00 30 a0 e3                                      mov r3, #0
003d2390  18 e0 8d e5                                      str lr, [sp, #0x18]
003d2394  09 00 a0 e1                                      mov r0, sb
003d2398  01 e0 a0 e3                                      mov lr, #1
003d239c  0a 10 a0 e1                                      mov r1, sl
003d23a0  14 20 8d e2                                      add r2, sp, #0x14
003d23a4  14 70 8d e5                                      str r7, [sp, #0x14]
003d23a8  1c 80 8d e5                                      str r8, [sp, #0x1c]
003d23ac  00 e0 8d e5                                      str lr, [sp]
003d23b0  08 c0 8d e5                                      str ip, [sp, #8]
003d23b4  04 c0 8d e5                                      str ip, [sp, #4]
003d23b8  86 64 fe eb                                      bl #0x36b5d8
003d23bc  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
003d23c0  00 00 53 e3                                      cmp r3, #0
003d23c4  03 00 00 0a                                      beq #0x3d23d8
003d23c8  03 00 a0 e1                                      mov r0, r3
003d23cc  00 30 93 e5                                      ldr r3, [r3]
003d23d0  0f e0 a0 e1                                      mov lr, pc
003d23d4  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
003d23d8  06 30 94 e7                                      ldr r3, [r4, r6]
003d23dc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003d23e0  00 30 93 e5                                      ldr r3, [r3]
003d23e4  03 00 52 e1                                      cmp r2, r3
003d23e8  01 00 00 1a                                      bne #0x3d23f4
003d23ec  40 d0 8d e2                                      add sp, sp, #0x40
003d23f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d23f4  c5 ef fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d23f8  9c 27 5c 00 ac 40 00 00 84 08 00 00 c0 31 4f 00  .byte 0x9c, 0x27, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0x31, 0x4f, 0x00
003d2408  58 07 00 00 a4 0d 00 00                          .byte 0x58, 0x07, 0x00, 0x00, 0xa4, 0x0d, 0x00, 0x00

; FUNCTION 0x003d2410, declared_size=232, range_size=232, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18OnTargetOutOfSightEv
; demangled: CharAI::OnTargetOutOfSight()
; decoder-mode: arm
003d2410  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d2414  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
003d2418  cc 70 9f e5                                      ldr r7, [pc, #0xcc]
003d241c  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
003d2420  04 40 8f e0                                      add r4, pc, r4
003d2424  07 30 94 e7                                      ldr r3, [r4, r7]
003d2428  02 80 94 e7                                      ldr r8, [r4, r2]
003d242c  20 d0 4d e2                                      sub sp, sp, #0x20
003d2430  00 30 93 e5                                      ldr r3, [r3]
003d2434  00 50 a0 e1                                      mov r5, r0
003d2438  08 00 a0 e1                                      mov r0, r8
003d243c  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d2440  10 95 fd eb                                      bl #0x337888
003d2444  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
003d2448  04 60 8d e2                                      add r6, sp, #4
003d244c  0d 20 a0 e1                                      mov r2, sp
003d2450  01 10 8f e0                                      add r1, pc, r1
003d2454  06 00 a0 e1                                      mov r0, r6
003d2458  23 07 fd eb                                      bl #0x3140ec
003d245c  06 10 a0 e1                                      mov r1, r6
003d2460  08 00 a0 e1                                      mov r0, r8
003d2464  87 95 fd eb                                      bl #0x337a88
003d2468  06 00 a0 e1                                      mov r0, r6
003d246c  4e 05 fd eb                                      bl #0x3139ac
003d2470  04 00 95 e5                                      ldr r0, [r5, #4]
003d2474  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d2478  01 0c 00 eb                                      bl #0x3d5484
003d247c  00 00 50 e3                                      cmp r0, #0
003d2480  0f 00 00 1a                                      bne #0x3d24c4
003d2484  1c 30 95 e5                                      ldr r3, [r5, #0x1c]
003d2488  00 20 a0 e3                                      mov r2, #0
003d248c  4c 20 c5 e5                                      strb r2, [r5, #0x4c]
003d2490  02 00 53 e1                                      cmp r3, r2
003d2494  03 00 00 0a                                      beq #0x3d24a8
003d2498  03 00 a0 e1                                      mov r0, r3
003d249c  00 30 93 e5                                      ldr r3, [r3]
003d24a0  0f e0 a0 e1                                      mov lr, pc
003d24a4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003d24a8  07 30 94 e7                                      ldr r3, [r4, r7]
003d24ac  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003d24b0  00 30 93 e5                                      ldr r3, [r3]
003d24b4  03 00 52 e1                                      cmp r2, r3
003d24b8  09 00 00 1a                                      bne #0x3d24e4
003d24bc  20 d0 8d e2                                      add sp, sp, #0x20
003d24c0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d24c4  04 60 95 e5                                      ldr r6, [r5, #4]
003d24c8  f2 6f 86 e2                                      add r6, r6, #0x3c8
003d24cc  06 00 a0 e1                                      mov r0, r6
003d24d0  de 0b 00 eb                                      bl #0x3d5450
003d24d4  00 10 a0 e1                                      mov r1, r0
003d24d8  06 00 a0 e1                                      mov r0, r6
003d24dc  21 12 00 eb                                      bl #0x3d6d68
003d24e0  e7 ff ff ea                                      b #0x3d2484
003d24e4  89 ef fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d24e8  70 26 5c 00 ac 40 00 00 84 08 00 00 98 30 4f 00  .byte 0x70, 0x26, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x98, 0x30, 0x4f, 0x00

; FUNCTION 0x003d24f8, declared_size=4, range_size=4, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12HandleGroupsEv
; demangled: CharAI::HandleGroups()
; decoder-mode: arm
003d24f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d2fb0, declared_size=72, range_size=72, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14ClearGroupInfoEv
; demangled: CharAI::ClearGroupInfo()
; decoder-mode: arm
003d2fb0  38 30 9f e5                                      ldr r3, [pc, #0x38]
003d2fb4  38 20 9f e5                                      ldr r2, [pc, #0x38]
003d2fb8  10 40 2d e9                                      push {r4, lr}
003d2fbc  03 30 8f e0                                      add r3, pc, r3
003d2fc0  02 40 93 e7                                      ldr r4, [r3, r2]
003d2fc4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d2fc8  00 00 53 e3                                      cmp r3, #0
003d2fcc  06 00 00 0a                                      beq #0x3d2fec
003d2fd0  04 00 a0 e1                                      mov r0, r4
003d2fd4  04 10 94 e5                                      ldr r1, [r4, #4]
003d2fd8  d7 ff ff eb                                      bl #0x3d2f3c
003d2fdc  00 30 a0 e3                                      mov r3, #0
003d2fe0  10 30 84 e5                                      str r3, [r4, #0x10]
003d2fe4  18 00 84 e9                                      stmib r4, {r3, r4}
003d2fe8  0c 40 84 e5                                      str r4, [r4, #0xc]
003d2fec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003d2ff0  d4 1a 5c 00 e4 48 00 00                          .byte 0xd4, 0x1a, 0x5c, 0x00, 0xe4, 0x48, 0x00, 0x00

; FUNCTION 0x003d2ff8, declared_size=300, range_size=300, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15RemoveFromGroupEv
; demangled: CharAI::RemoveFromGroup()
; decoder-mode: arm
003d2ff8  10 40 2d e9                                      push {r4, lr}
003d2ffc  34 30 90 e5                                      ldr r3, [r0, #0x34]
003d3000  18 d0 4d e2                                      sub sp, sp, #0x18
003d3004  00 40 a0 e1                                      mov r4, r0
003d3008  00 00 53 e3                                      cmp r3, #0
003d300c  1a 00 00 0a                                      beq #0x3d307c
003d3010  38 20 90 e5                                      ldr r2, [r0, #0x38]
003d3014  03 00 52 e3                                      cmp r2, #3
003d3018  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
003d301c  16 00 00 ea                                      b #0x3d307c
003d3020  2b 00 00 ea                                      b #0x3d30d4
003d3024  16 00 00 ea                                      b #0x3d3084
003d3028  00 00 00 ea                                      b #0x3d3030
003d302c  28 00 00 ea                                      b #0x3d30d4
003d3030  18 20 8d e2                                      add r2, sp, #0x18
003d3034  03 00 93 e8                                      ldm r3, {r0, r1}
003d3038  18 40 22 e5                                      str r4, [r2, #-0x18]!
003d303c  0c 30 8d e2                                      add r3, sp, #0xc
003d3040  0d 20 a0 e1                                      mov r2, sp
003d3044  2e fd ff eb                                      bl #0x3d2504
003d3048  34 40 94 e5                                      ldr r4, [r4, #0x34]
003d304c  04 30 94 e5                                      ldr r3, [r4, #4]
003d3050  03 00 50 e1                                      cmp r0, r3
003d3054  08 00 00 0a                                      beq #0x3d307c
003d3058  04 10 80 e2                                      add r1, r0, #4
003d305c  01 00 53 e1                                      cmp r3, r1
003d3060  03 00 00 0a                                      beq #0x3d3074
003d3064  01 20 53 e0                                      subs r2, r3, r1
003d3068  01 00 00 0a                                      beq #0x3d3074
003d306c  b1 eb fc eb                                      bl #0x30df38
003d3070  04 30 94 e5                                      ldr r3, [r4, #4]
003d3074  04 30 43 e2                                      sub r3, r3, #4
003d3078  04 30 84 e5                                      str r3, [r4, #4]
003d307c  18 d0 8d e2                                      add sp, sp, #0x18
003d3080  10 80 bd e8                                      pop {r4, pc}
003d3084  18 20 8d e2                                      add r2, sp, #0x18
003d3088  10 10 93 e5                                      ldr r1, [r3, #0x10]
003d308c  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003d3090  14 40 22 e5                                      str r4, [r2, #-0x14]!
003d3094  10 30 8d e2                                      add r3, sp, #0x10
003d3098  19 fd ff eb                                      bl #0x3d2504
003d309c  34 40 94 e5                                      ldr r4, [r4, #0x34]
003d30a0  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d30a4  03 00 50 e1                                      cmp r0, r3
003d30a8  f3 ff ff 0a                                      beq #0x3d307c
003d30ac  04 10 80 e2                                      add r1, r0, #4
003d30b0  01 00 53 e1                                      cmp r3, r1
003d30b4  03 00 00 0a                                      beq #0x3d30c8
003d30b8  01 20 53 e0                                      subs r2, r3, r1
003d30bc  01 00 00 0a                                      beq #0x3d30c8
003d30c0  9c eb fc eb                                      bl #0x30df38
003d30c4  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d30c8  04 30 43 e2                                      sub r3, r3, #4
003d30cc  10 30 84 e5                                      str r3, [r4, #0x10]
003d30d0  e9 ff ff ea                                      b #0x3d307c
003d30d4  18 20 8d e2                                      add r2, sp, #0x18
003d30d8  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
003d30dc  18 00 93 e5                                      ldr r0, [r3, #0x18]
003d30e0  10 40 22 e5                                      str r4, [r2, #-0x10]!
003d30e4  14 30 8d e2                                      add r3, sp, #0x14
003d30e8  05 fd ff eb                                      bl #0x3d2504
003d30ec  34 40 94 e5                                      ldr r4, [r4, #0x34]
003d30f0  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003d30f4  03 00 50 e1                                      cmp r0, r3
003d30f8  df ff ff 0a                                      beq #0x3d307c
003d30fc  04 10 80 e2                                      add r1, r0, #4
003d3100  01 00 53 e1                                      cmp r3, r1
003d3104  03 00 00 0a                                      beq #0x3d3118
003d3108  01 20 53 e0                                      subs r2, r3, r1
003d310c  01 00 00 0a                                      beq #0x3d3118
003d3110  88 eb fc eb                                      bl #0x30df38
003d3114  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
003d3118  04 30 43 e2                                      sub r3, r3, #4
003d311c  1c 30 84 e5                                      str r3, [r4, #0x1c]
003d3120  d5 ff ff ea                                      b #0x3d307c

; FUNCTION 0x003d37d0, declared_size=788, range_size=788, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI10AddToGroupEP9Character
; demangled: CharAI::AddToGroup(Character*)
; decoder-mode: arm
003d37d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d37d4  ec 52 9f e5                                      ldr r5, [pc, #0x2ec]
003d37d8  ec 82 9f e5                                      ldr r8, [pc, #0x2ec]
003d37dc  ac d0 4d e2                                      sub sp, sp, #0xac
003d37e0  05 50 8f e0                                      add r5, pc, r5
003d37e4  08 30 95 e7                                      ldr r3, [r5, r8]
003d37e8  04 00 8d e5                                      str r0, [sp, #4]
003d37ec  00 70 a0 e1                                      mov r7, r0
003d37f0  00 30 93 e5                                      ldr r3, [r3]
003d37f4  a4 30 8d e5                                      str r3, [sp, #0xa4]
003d37f8  10 34 01 e3                                      movw r3, #0x1410
003d37fc  03 20 90 e7                                      ldr r2, [r0, r3]
003d3800  14 34 01 e3                                      movw r3, #0x1414
003d3804  03 30 90 e7                                      ldr r3, [r0, r3]
003d3808  03 00 52 e1                                      cmp r2, r3
003d380c  4c 00 00 0a                                      beq #0x3d3944
003d3810  2c 34 01 e3                                      movw r3, #0x142c
003d3814  03 40 90 e7                                      ldr r4, [r0, r3]
003d3818  b0 12 9f e5                                      ldr r1, [pc, #0x2b0]
003d381c  04 00 a0 e1                                      mov r0, r4
003d3820  01 10 8f e0                                      add r1, pc, r1
003d3824  bc ea fc eb                                      bl #0x30e31c
003d3828  00 60 50 e2                                      subs r6, r0, #0
003d382c  6b 00 00 1a                                      bne #0x3d39e0
003d3830  88 40 8d e2                                      add r4, sp, #0x88
003d3834  64 90 97 e5                                      ldr sb, [r7, #0x64]
003d3838  10 34 01 e3                                      movw r3, #0x1410
003d383c  98 40 8d e5                                      str r4, [sp, #0x98]
003d3840  9c 40 8d e5                                      str r4, [sp, #0x9c]
003d3844  88 a2 9f e5                                      ldr sl, [pc, #0x288]
003d3848  03 20 97 e7                                      ldr r2, [r7, r3]
003d384c  14 34 01 e3                                      movw r3, #0x1414
003d3850  03 10 97 e7                                      ldr r1, [r7, r3]
003d3854  04 00 a0 e1                                      mov r0, r4
003d3858  a2 f7 fc eb                                      bl #0x3116e8
003d385c  0a 30 95 e7                                      ldr r3, [r5, sl]
003d3860  a0 90 8d e5                                      str sb, [sp, #0xa0]
003d3864  04 70 93 e5                                      ldr r7, [r3, #4]
003d3868  00 00 57 e3                                      cmp r7, #0
003d386c  03 70 a0 01                                      moveq r7, r3
003d3870  3a 00 00 0a                                      beq #0x3d3960
003d3874  03 90 a0 e1                                      mov sb, r3
003d3878  01 00 00 ea                                      b #0x3d3884
003d387c  07 90 a0 e1                                      mov sb, r7
003d3880  03 70 a0 e1                                      mov r7, r3
003d3884  10 00 87 e2                                      add r0, r7, #0x10
003d3888  04 10 a0 e1                                      mov r1, r4
003d388c  95 fc ff eb                                      bl #0x3d2ae8
003d3890  00 00 50 e3                                      cmp r0, #0
003d3894  0c 30 97 15                                      ldrne r3, [r7, #0xc]
003d3898  08 30 97 05                                      ldreq r3, [r7, #8]
003d389c  09 70 a0 11                                      movne r7, sb
003d38a0  00 00 53 e3                                      cmp r3, #0
003d38a4  f4 ff ff 1a                                      bne #0x3d387c
003d38a8  0a 30 95 e7                                      ldr r3, [r5, sl]
003d38ac  03 00 57 e1                                      cmp r7, r3
003d38b0  2a 00 00 0a                                      beq #0x3d3960
003d38b4  04 00 a0 e1                                      mov r0, r4
003d38b8  10 10 87 e2                                      add r1, r7, #0x10
003d38bc  89 fc ff eb                                      bl #0x3d2ae8
003d38c0  00 00 50 e3                                      cmp r0, #0
003d38c4  07 90 a0 e1                                      mov sb, r7
003d38c8  24 00 00 1a                                      bne #0x3d3960
003d38cc  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
003d38d0  2c 70 89 e2                                      add r7, sb, #0x2c
003d38d4  04 00 50 e1                                      cmp r0, r4
003d38d8  06 00 00 0a                                      beq #0x3d38f8
003d38dc  00 00 50 e3                                      cmp r0, #0
003d38e0  04 00 00 0a                                      beq #0x3d38f8
003d38e4  88 10 9d e5                                      ldr r1, [sp, #0x88]
003d38e8  01 10 60 e0                                      rsb r1, r0, r1
003d38ec  80 00 51 e3                                      cmp r1, #0x80
003d38f0  50 00 00 8a                                      bhi #0x3d3a38
003d38f4  81 d5 0c eb                                      bl #0x708f00
003d38f8  02 00 56 e3                                      cmp r6, #2
003d38fc  50 00 00 0a                                      beq #0x3d3a44
003d3900  03 00 56 e3                                      cmp r6, #3
003d3904  01 00 00 0a                                      beq #0x3d3910
003d3908  01 00 56 e3                                      cmp r6, #1
003d390c  56 00 00 0a                                      beq #0x3d3a6c
003d3910  48 10 99 e5                                      ldr r1, [sb, #0x48]
003d3914  4c 30 99 e5                                      ldr r3, [sb, #0x4c]
003d3918  03 00 51 e1                                      cmp r1, r3
003d391c  5c 00 00 0a                                      beq #0x3d3a94
003d3920  04 30 9d e5                                      ldr r3, [sp, #4]
003d3924  00 30 81 e5                                      str r3, [r1]
003d3928  48 30 99 e5                                      ldr r3, [sb, #0x48]
003d392c  04 30 83 e2                                      add r3, r3, #4
003d3930  48 30 89 e5                                      str r3, [sb, #0x48]
003d3934  04 30 9d e5                                      ldr r3, [sp, #4]
003d3938  fc 73 83 e5                                      str r7, [r3, #0x3fc]
003d393c  04 30 9d e5                                      ldr r3, [sp, #4]
003d3940  00 64 83 e5                                      str r6, [r3, #0x400]
003d3944  08 30 95 e7                                      ldr r3, [r5, r8]
003d3948  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
003d394c  00 30 93 e5                                      ldr r3, [r3]
003d3950  03 00 52 e1                                      cmp r2, r3
003d3954  5a 00 00 1a                                      bne #0x3d3ac4
003d3958  ac d0 8d e2                                      add sp, sp, #0xac
003d395c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d3960  40 90 8d e2                                      add sb, sp, #0x40
003d3964  0c b0 8d e2                                      add fp, sp, #0xc
003d3968  00 30 a0 e3                                      mov r3, #0
003d396c  00 c0 e0 e3                                      mvn ip, #0
003d3970  04 10 a0 e1                                      mov r1, r4
003d3974  0b 20 a0 e1                                      mov r2, fp
003d3978  09 00 a0 e1                                      mov r0, sb
003d397c  30 c0 8d e5                                      str ip, [sp, #0x30]
003d3980  35 30 cd e5                                      strb r3, [sp, #0x35]
003d3984  0c 30 8d e5                                      str r3, [sp, #0xc]
003d3988  10 30 8d e5                                      str r3, [sp, #0x10]
003d398c  14 30 8d e5                                      str r3, [sp, #0x14]
003d3990  18 30 8d e5                                      str r3, [sp, #0x18]
003d3994  1c 30 8d e5                                      str r3, [sp, #0x1c]
003d3998  20 30 8d e5                                      str r3, [sp, #0x20]
003d399c  24 30 8d e5                                      str r3, [sp, #0x24]
003d39a0  28 30 8d e5                                      str r3, [sp, #0x28]
003d39a4  2c 30 8d e5                                      str r3, [sp, #0x2c]
003d39a8  34 30 cd e5                                      strb r3, [sp, #0x34]
003d39ac  dc fd ff eb                                      bl #0x3d3124
003d39b0  09 30 a0 e1                                      mov r3, sb
003d39b4  0a 10 95 e7                                      ldr r1, [r5, sl]
003d39b8  38 20 8d e2                                      add r2, sp, #0x38
003d39bc  3c 00 8d e2                                      add r0, sp, #0x3c
003d39c0  38 70 8d e5                                      str r7, [sp, #0x38]
003d39c4  a1 fe ff eb                                      bl #0x3d3450
003d39c8  09 00 a0 e1                                      mov r0, sb
003d39cc  3c 90 9d e5                                      ldr sb, [sp, #0x3c]
003d39d0  46 fd ff eb                                      bl #0x3d2ef0
003d39d4  0b 00 a0 e1                                      mov r0, fp
003d39d8  b8 fc ff eb                                      bl #0x3d2cc0
003d39dc  ba ff ff ea                                      b #0x3d38cc
003d39e0  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
003d39e4  04 00 a0 e1                                      mov r0, r4
003d39e8  01 10 8f e0                                      add r1, pc, r1
003d39ec  4a ea fc eb                                      bl #0x30e31c
003d39f0  00 00 50 e3                                      cmp r0, #0
003d39f4  01 60 a0 03                                      moveq r6, #1
003d39f8  8c ff ff 0a                                      beq #0x3d3830
003d39fc  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
003d3a00  04 00 a0 e1                                      mov r0, r4
003d3a04  01 10 8f e0                                      add r1, pc, r1
003d3a08  43 ea fc eb                                      bl #0x30e31c
003d3a0c  00 00 50 e3                                      cmp r0, #0
003d3a10  02 60 a0 03                                      moveq r6, #2
003d3a14  85 ff ff 0a                                      beq #0x3d3830
003d3a18  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003d3a1c  04 00 a0 e1                                      mov r0, r4
003d3a20  01 10 8f e0                                      add r1, pc, r1
003d3a24  3c ea fc eb                                      bl #0x30e31c
003d3a28  00 00 50 e3                                      cmp r0, #0
003d3a2c  c4 ff ff 1a                                      bne #0x3d3944
003d3a30  03 60 a0 e3                                      mov r6, #3
003d3a34  7d ff ff ea                                      b #0x3d3830
003d3a38  80 f2 fc eb                                      bl #0x310440
003d3a3c  02 00 56 e3                                      cmp r6, #2
003d3a40  ae ff ff 1a                                      bne #0x3d3900
003d3a44  30 10 99 e5                                      ldr r1, [sb, #0x30]
003d3a48  34 30 99 e5                                      ldr r3, [sb, #0x34]
003d3a4c  03 00 51 e1                                      cmp r1, r3
003d3a50  17 00 00 0a                                      beq #0x3d3ab4
003d3a54  04 30 9d e5                                      ldr r3, [sp, #4]
003d3a58  00 30 81 e5                                      str r3, [r1]
003d3a5c  30 30 99 e5                                      ldr r3, [sb, #0x30]
003d3a60  04 30 83 e2                                      add r3, r3, #4
003d3a64  30 30 89 e5                                      str r3, [sb, #0x30]
003d3a68  b1 ff ff ea                                      b #0x3d3934
003d3a6c  3c 10 99 e5                                      ldr r1, [sb, #0x3c]
003d3a70  40 30 99 e5                                      ldr r3, [sb, #0x40]
003d3a74  03 00 51 e1                                      cmp r1, r3
003d3a78  09 00 00 0a                                      beq #0x3d3aa4
003d3a7c  04 30 9d e5                                      ldr r3, [sp, #4]
003d3a80  00 30 81 e5                                      str r3, [r1]
003d3a84  3c 30 99 e5                                      ldr r3, [sb, #0x3c]
003d3a88  04 30 83 e2                                      add r3, r3, #4
003d3a8c  3c 30 89 e5                                      str r3, [sb, #0x3c]
003d3a90  a7 ff ff ea                                      b #0x3d3934
003d3a94  44 00 89 e2                                      add r0, sb, #0x44
003d3a98  04 20 8d e2                                      add r2, sp, #4
003d3a9c  e1 fc ff eb                                      bl #0x3d2e28
003d3aa0  a3 ff ff ea                                      b #0x3d3934
003d3aa4  38 00 89 e2                                      add r0, sb, #0x38
003d3aa8  04 20 8d e2                                      add r2, sp, #4
003d3aac  dd fc ff eb                                      bl #0x3d2e28
003d3ab0  9f ff ff ea                                      b #0x3d3934
003d3ab4  07 00 a0 e1                                      mov r0, r7
003d3ab8  04 20 8d e2                                      add r2, sp, #4
003d3abc  d9 fc ff eb                                      bl #0x3d2e28
003d3ac0  9b ff ff ea                                      b #0x3d3934
003d3ac4  11 ea fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d3ac8  b0 12 5c 00 ac 40 00 00 b8 65 50 00 e4 48 00 00  .byte 0xb0, 0x12, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb8, 0x65, 0x50, 0x00, 0xe4, 0x48, 0x00, 0x00
003d3ad8  18 1b 4f 00 04 1b 4f 00 78 10 53 00              .byte 0x18, 0x1b, 0x4f, 0x00, 0x04, 0x1b, 0x4f, 0x00, 0x78, 0x10, 0x53, 0x00

; FUNCTION 0x003d3ae4, declared_size=8, range_size=8, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI19_OnEndOfAnimSectionEv
; demangled: CharAI::_OnEndOfAnimSection()
; decoder-mode: arm
003d3ae4  01 00 a0 e3                                      mov r0, #1
003d3ae8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d3aec, declared_size=8, range_size=8, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12_OnEndOfAnimEv
; demangled: CharAI::_OnEndOfAnim()
; decoder-mode: arm
003d3aec  01 00 a0 e3                                      mov r0, #1
003d3af0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d3af4, declared_size=572, range_size=572, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21_ParseObjectAnimEventEPKc
; demangled: CharAI::_ParseObjectAnimEvent(char const*)
; decoder-mode: arm
003d3af4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d3af8  10 42 9f e5                                      ldr r4, [pc, #0x210]
003d3afc  10 62 9f e5                                      ldr r6, [pc, #0x210]
003d3b00  01 90 a0 e1                                      mov sb, r1
003d3b04  04 40 8f e0                                      add r4, pc, r4
003d3b08  06 30 94 e7                                      ldr r3, [r4, r6]
003d3b0c  58 d0 4d e2                                      sub sp, sp, #0x58
003d3b10  00 80 a0 e1                                      mov r8, r0
003d3b14  00 30 93 e5                                      ldr r3, [r3]
003d3b18  2f 10 a0 e3                                      mov r1, #0x2f
003d3b1c  09 00 a0 e1                                      mov r0, sb
003d3b20  54 30 8d e5                                      str r3, [sp, #0x54]
003d3b24  3f ec fc eb                                      bl #0x30ec28
003d3b28  00 50 50 e2                                      subs r5, r0, #0
003d3b2c  33 00 00 0a                                      beq #0x3d3c00
003d3b30  05 70 69 e0                                      rsb r7, sb, r5
003d3b34  14 a0 8d e2                                      add sl, sp, #0x14
003d3b38  09 10 a0 e1                                      mov r1, sb
003d3b3c  07 20 a0 e1                                      mov r2, r7
003d3b40  0a 00 a0 e1                                      mov r0, sl
003d3b44  b6 e8 fc eb                                      bl #0x30de24
003d3b48  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
003d3b4c  58 20 8d e2                                      add r2, sp, #0x58
003d3b50  07 30 82 e0                                      add r3, r2, r7
003d3b54  00 70 a0 e3                                      mov r7, #0
003d3b58  01 10 8f e0                                      add r1, pc, r1
003d3b5c  0a 00 a0 e1                                      mov r0, sl
003d3b60  44 70 43 e5                                      strb r7, [r3, #-0x44]
003d3b64  ec e9 fc eb                                      bl #0x30e31c
003d3b68  00 90 50 e2                                      subs sb, r0, #0
003d3b6c  01 50 85 e2                                      add r5, r5, #1
003d3b70  29 00 00 0a                                      beq #0x3d3c1c
003d3b74  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
003d3b78  08 80 8d e2                                      add r8, sp, #8
003d3b7c  0a 20 a0 e1                                      mov r2, sl
003d3b80  03 10 94 e7                                      ldr r1, [r4, r3]
003d3b84  08 00 a0 e1                                      mov r0, r8
003d3b88  00 30 e0 e3                                      mvn r3, #0
003d3b8c  38 10 91 e5                                      ldr r1, [r1, #0x38]
003d3b90  00 70 8d e5                                      str r7, [sp]
003d3b94  04 70 8d e5                                      str r7, [sp, #4]
003d3b98  40 dc fd eb                                      bl #0x34aca0
003d3b9c  08 00 a0 e1                                      mov r0, r8
003d3ba0  eb b0 fd eb                                      bl #0x33ff54
003d3ba4  00 a0 50 e2                                      subs sl, r0, #0
003d3ba8  44 00 00 0a                                      beq #0x3d3cc0
003d3bac  6c 31 9f e5                                      ldr r3, [pc, #0x16c]
003d3bb0  03 30 94 e7                                      ldr r3, [r4, r3]
003d3bb4  00 80 93 e5                                      ldr r8, [r3]
003d3bb8  00 00 58 e3                                      cmp r8, #0
003d3bbc  3b 00 00 0a                                      beq #0x3d3cb0
003d3bc0  5c 31 9f e5                                      ldr r3, [pc, #0x15c]
003d3bc4  03 30 94 e7                                      ldr r3, [r4, r3]
003d3bc8  00 90 93 e5                                      ldr sb, [r3]
003d3bcc  02 00 00 ea                                      b #0x3d3bdc
003d3bd0  01 70 87 e2                                      add r7, r7, #1
003d3bd4  08 00 57 e1                                      cmp r7, r8
003d3bd8  34 00 00 0a                                      beq #0x3d3cb0
003d3bdc  05 00 a0 e1                                      mov r0, r5
003d3be0  07 11 99 e7                                      ldr r1, [sb, r7, lsl #2]
003d3be4  cc e9 fc eb                                      bl #0x30e31c
003d3be8  00 00 50 e3                                      cmp r0, #0
003d3bec  f7 ff ff 1a                                      bne #0x3d3bd0
003d3bf0  07 10 a0 e1                                      mov r1, r7
003d3bf4  49 0e 8a e2                                      add r0, sl, #0x490
003d3bf8  0c 00 80 e2                                      add r0, r0, #0xc
003d3bfc  2b dc ff eb                                      bl #0x3cacb0
003d3c00  06 30 94 e7                                      ldr r3, [r4, r6]
003d3c04  54 20 9d e5                                      ldr r2, [sp, #0x54]
003d3c08  00 30 93 e5                                      ldr r3, [r3]
003d3c0c  03 00 52 e1                                      cmp r2, r3
003d3c10  3d 00 00 1a                                      bne #0x3d3d0c
003d3c14  58 d0 8d e2                                      add sp, sp, #0x58
003d3c18  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d3c1c  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
003d3c20  03 00 94 e7                                      ldr r0, [r4, r3]
003d3c24  5a 2e fd eb                                      bl #0x31f594
003d3c28  00 00 50 e3                                      cmp r0, #0
003d3c2c  f3 ff ff 0a                                      beq #0x3d3c00
003d3c30  28 a1 90 e5                                      ldr sl, [r0, #0x128]
003d3c34  07 00 5a e1                                      cmp sl, r7
003d3c38  f0 ff ff 0a                                      beq #0x3d3c00
003d3c3c  04 10 98 e5                                      ldr r1, [r8, #4]
003d3c40  0a 00 a0 e1                                      mov r0, sl
003d3c44  4d ef 00 eb                                      bl #0x40f980
003d3c48  07 00 50 e1                                      cmp r0, r7
003d3c4c  eb ff ff 0a                                      beq #0x3d3c00
003d3c50  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
003d3c54  03 30 94 e7                                      ldr r3, [r4, r3]
003d3c58  00 80 93 e5                                      ldr r8, [r3]
003d3c5c  07 00 58 e1                                      cmp r8, r7
003d3c60  14 00 00 0a                                      beq #0x3d3cb8
003d3c64  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003d3c68  09 70 a0 e1                                      mov r7, sb
003d3c6c  03 30 94 e7                                      ldr r3, [r4, r3]
003d3c70  00 90 93 e5                                      ldr sb, [r3]
003d3c74  02 00 00 ea                                      b #0x3d3c84
003d3c78  01 70 87 e2                                      add r7, r7, #1
003d3c7c  08 00 57 e1                                      cmp r7, r8
003d3c80  0c 00 00 0a                                      beq #0x3d3cb8
003d3c84  05 00 a0 e1                                      mov r0, r5
003d3c88  07 11 99 e7                                      ldr r1, [sb, r7, lsl #2]
003d3c8c  a2 e9 fc eb                                      bl #0x30e31c
003d3c90  00 00 50 e3                                      cmp r0, #0
003d3c94  f7 ff ff 1a                                      bne #0x3d3c78
003d3c98  07 10 a0 e1                                      mov r1, r7
003d3c9c  0a 00 a0 e1                                      mov r0, sl
003d3ca0  00 20 a0 e3                                      mov r2, #0
003d3ca4  01 30 a0 e3                                      mov r3, #1
003d3ca8  15 ef 00 eb                                      bl #0x40f904
003d3cac  d3 ff ff ea                                      b #0x3d3c00
003d3cb0  00 10 e0 e3                                      mvn r1, #0
003d3cb4  ce ff ff ea                                      b #0x3d3bf4
003d3cb8  00 10 e0 e3                                      mvn r1, #0
003d3cbc  f6 ff ff ea                                      b #0x3d3c9c
003d3cc0  08 00 a0 e1                                      mov r0, r8
003d3cc4  86 b0 fd eb                                      bl #0x33fee4
003d3cc8  00 00 50 e3                                      cmp r0, #0
003d3ccc  cb ff ff 0a                                      beq #0x3d3c00
003d3cd0  d8 32 90 e5                                      ldr r3, [r0, #0x2d8]
003d3cd4  00 00 53 e3                                      cmp r3, #0
003d3cd8  c8 ff ff 0a                                      beq #0x3d3c00
003d3cdc  38 30 93 e5                                      ldr r3, [r3, #0x38]
003d3ce0  00 00 53 e3                                      cmp r3, #0
003d3ce4  c5 ff ff 0a                                      beq #0x3d3c00
003d3ce8  00 c0 93 e5                                      ldr ip, [r3]
003d3cec  0a 20 a0 e1                                      mov r2, sl
003d3cf0  03 00 a0 e1                                      mov r0, r3
003d3cf4  05 10 a0 e1                                      mov r1, r5
003d3cf8  00 a0 8d e5                                      str sl, [sp]
003d3cfc  0a 30 a0 e1                                      mov r3, sl
003d3d00  0f e0 a0 e1                                      mov lr, pc
003d3d04  20 f0 9c e5                                      ldr pc, [ip, #0x20]
003d3d08  bc ff ff ea                                      b #0x3d3c00
003d3d0c  7f e9 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d3d10  8c 0f 5c 00 ac 40 00 00 c0 19 4f 00 f4 37 00 00  .byte 0x8c, 0x0f, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc0, 0x19, 0x4f, 0x00, 0xf4, 0x37, 0x00, 0x00
003d3d20  48 2a 00 00 44 20 00 00 38 22 00 00 98 2e 00 00  .byte 0x48, 0x2a, 0x00, 0x00, 0x44, 0x20, 0x00, 0x00, 0x38, 0x22, 0x00, 0x00, 0x98, 0x2e, 0x00, 0x00

; FUNCTION 0x003d3d30, declared_size=28, range_size=28, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI18_OnAnimSequenceEndEv
; demangled: CharAI::_OnAnimSequenceEnd()
; decoder-mode: arm
003d3d30  10 40 2d e9                                      push {r4, lr}
003d3d34  04 00 90 e5                                      ldr r0, [r0, #4]
003d3d38  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d3d3c  0c 00 80 e2                                      add r0, r0, #0xc
003d3d40  19 b1 ff eb                                      bl #0x3c01ac
003d3d44  01 00 a0 e3                                      mov r0, #1
003d3d48  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d3d4c, declared_size=28, range_size=28, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI20_OnAnimSequenceBeginEv
; demangled: CharAI::_OnAnimSequenceBegin()
; decoder-mode: arm
003d3d4c  10 40 2d e9                                      push {r4, lr}
003d3d50  04 00 90 e5                                      ldr r0, [r0, #4]
003d3d54  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d3d58  0c 00 80 e2                                      add r0, r0, #0xc
003d3d5c  12 b1 ff eb                                      bl #0x3c01ac
003d3d60  01 00 a0 e3                                      mov r0, #1
003d3d64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d3d68, declared_size=108, range_size=108, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI25_OnAnimStepEnd_SkillSpellEv
; demangled: CharAI::_OnAnimStepEnd_SkillSpell()
; decoder-mode: arm
003d3d68  70 40 2d e9                                      push {r4, r5, r6, lr}
003d3d6c  04 30 90 e5                                      ldr r3, [r0, #4]
003d3d70  00 40 a0 e1                                      mov r4, r0
003d3d74  49 0e 83 e2                                      add r0, r3, #0x490
003d3d78  0c 00 80 e2                                      add r0, r0, #0xc
003d3d7c  c8 54 93 e5                                      ldr r5, [r3, #0x4c8]
003d3d80  69 d5 ff eb                                      bl #0x3c932c
003d3d84  00 60 a0 e1                                      mov r6, r0
003d3d88  04 00 94 e5                                      ldr r0, [r4, #4]
003d3d8c  49 0e 80 e2                                      add r0, r0, #0x490
003d3d90  0c 00 80 e2                                      add r0, r0, #0xc
003d3d94  6c d5 ff eb                                      bl #0x3c934c
003d3d98  00 00 56 e3                                      cmp r6, #0
003d3d9c  01 00 55 03                                      cmpeq r5, #1
003d3da0  02 00 00 1a                                      bne #0x3d3db0
003d3da4  d1 30 d4 e5                                      ldrb r3, [r4, #0xd1]
003d3da8  00 00 53 e3                                      cmp r3, #0
003d3dac  01 00 00 1a                                      bne #0x3d3db8
003d3db0  01 00 a0 e3                                      mov r0, #1
003d3db4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d3db8  04 00 94 e5                                      ldr r0, [r4, #4]
003d3dbc  01 10 a0 e3                                      mov r1, #1
003d3dc0  49 0e 80 e2                                      add r0, r0, #0x490
003d3dc4  0c 00 80 e2                                      add r0, r0, #0xc
003d3dc8  af d5 ff eb                                      bl #0x3c948c
003d3dcc  01 00 a0 e3                                      mov r0, #1
003d3dd0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d3dd4, declared_size=112, range_size=112, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI27_OnAnimStepBegin_SkillSpellEv
; demangled: CharAI::_OnAnimStepBegin_SkillSpell()
; decoder-mode: arm
003d3dd4  70 40 2d e9                                      push {r4, r5, r6, lr}
003d3dd8  04 30 90 e5                                      ldr r3, [r0, #4]
003d3ddc  00 40 a0 e1                                      mov r4, r0
003d3de0  49 0e 83 e2                                      add r0, r3, #0x490
003d3de4  0c 00 80 e2                                      add r0, r0, #0xc
003d3de8  c8 54 93 e5                                      ldr r5, [r3, #0x4c8]
003d3dec  4e d5 ff eb                                      bl #0x3c932c
003d3df0  00 60 a0 e1                                      mov r6, r0
003d3df4  04 00 94 e5                                      ldr r0, [r4, #4]
003d3df8  49 0e 80 e2                                      add r0, r0, #0x490
003d3dfc  0c 00 80 e2                                      add r0, r0, #0xc
003d3e00  51 d5 ff eb                                      bl #0x3c934c
003d3e04  00 00 56 e3                                      cmp r6, #0
003d3e08  01 00 55 03                                      cmpeq r5, #1
003d3e0c  04 00 00 1a                                      bne #0x3d3e24
003d3e10  d1 30 d4 e5                                      ldrb r3, [r4, #0xd1]
003d3e14  01 10 a0 e3                                      mov r1, #1
003d3e18  d0 10 c4 e5                                      strb r1, [r4, #0xd0]
003d3e1c  00 00 53 e3                                      cmp r3, #0
003d3e20  01 00 00 1a                                      bne #0x3d3e2c
003d3e24  01 00 a0 e3                                      mov r0, #1
003d3e28  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d3e2c  04 00 94 e5                                      ldr r0, [r4, #4]
003d3e30  49 0e 80 e2                                      add r0, r0, #0x490
003d3e34  0c 00 80 e2                                      add r0, r0, #0xc
003d3e38  93 d5 ff eb                                      bl #0x3c948c
003d3e3c  01 00 a0 e3                                      mov r0, #1
003d3e40  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d3e44, declared_size=436, range_size=436, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21_OnAnimStepEnd_AttackEv
; demangled: CharAI::_OnAnimStepEnd_Attack()
; decoder-mode: arm
003d3e44  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d3e48  00 40 a0 e1                                      mov r4, r0
003d3e4c  04 00 90 e5                                      ldr r0, [r0, #4]
003d3e50  85 3d ff eb                                      bl #0x3a346c
003d3e54  00 00 50 e3                                      cmp r0, #0
003d3e58  01 00 00 1a                                      bne #0x3d3e64
003d3e5c  01 00 a0 e3                                      mov r0, #1
003d3e60  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d3e64  04 30 94 e5                                      ldr r3, [r4, #4]
003d3e68  49 0e 83 e2                                      add r0, r3, #0x490
003d3e6c  0c 00 80 e2                                      add r0, r0, #0xc
003d3e70  c8 54 93 e5                                      ldr r5, [r3, #0x4c8]
003d3e74  2c d5 ff eb                                      bl #0x3c932c
003d3e78  00 70 a0 e1                                      mov r7, r0
003d3e7c  04 00 94 e5                                      ldr r0, [r4, #4]
003d3e80  49 0e 80 e2                                      add r0, r0, #0x490
003d3e84  0c 00 80 e2                                      add r0, r0, #0xc
003d3e88  2f d5 ff eb                                      bl #0x3c934c
003d3e8c  00 00 55 e3                                      cmp r5, #0
003d3e90  00 60 a0 e1                                      mov r6, r0
003d3e94  0d 00 00 1a                                      bne #0x3d3ed0
003d3e98  78 10 d4 e5                                      ldrb r1, [r4, #0x78]
003d3e9c  01 30 40 e2                                      sub r3, r0, #1
003d3ea0  03 00 57 e1                                      cmp r7, r3
003d3ea4  78 50 c4 e5                                      strb r5, [r4, #0x78]
003d3ea8  01 10 21 e2                                      eor r1, r1, #1
003d3eac  1b 00 00 0a                                      beq #0x3d3f20
003d3eb0  00 00 51 e3                                      cmp r1, #0
003d3eb4  2b 00 00 1a                                      bne #0x3d3f68
003d3eb8  04 00 94 e5                                      ldr r0, [r4, #4]
003d3ebc  1b 10 a0 e3                                      mov r1, #0x1b
003d3ec0  00 20 a0 e3                                      mov r2, #0
003d3ec4  a4 43 ff eb                                      bl #0x3a4d5c
003d3ec8  01 00 a0 e3                                      mov r0, #1
003d3ecc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d3ed0  01 00 55 e3                                      cmp r5, #1
003d3ed4  e0 ff ff 1a                                      bne #0x3d3e5c
003d3ed8  40 30 94 e5                                      ldr r3, [r4, #0x40]
003d3edc  00 00 53 e3                                      cmp r3, #0
003d3ee0  05 00 a0 01                                      moveq r0, r5
003d3ee4  37 00 00 0a                                      beq #0x3d3fc8
003d3ee8  03 00 a0 e1                                      mov r0, r3
003d3eec  00 30 93 e5                                      ldr r3, [r3]
003d3ef0  0f e0 a0 e1                                      mov lr, pc
003d3ef4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d3ef8  40 30 94 e5                                      ldr r3, [r4, #0x40]
003d3efc  00 00 53 e3                                      cmp r3, #0
003d3f00  30 00 00 0a                                      beq #0x3d3fc8
003d3f04  00 20 a0 e3                                      mov r2, #0
003d3f08  02 60 46 e2                                      sub r6, r6, #2
003d3f0c  06 00 57 e1                                      cmp r7, r6
003d3f10  23 00 00 0a                                      beq #0x3d3fa4
003d3f14  00 30 a0 e3                                      mov r3, #0
003d3f18  78 30 c4 e5                                      strb r3, [r4, #0x78]
003d3f1c  ce ff ff ea                                      b #0x3d3e5c
003d3f20  00 00 51 e3                                      cmp r1, #0
003d3f24  0a 00 00 0a                                      beq #0x3d3f54
003d3f28  04 00 a0 e1                                      mov r0, r4
003d3f2c  8f 13 00 eb                                      bl #0x3d8d70
003d3f30  04 00 94 e5                                      ldr r0, [r4, #4]
003d3f34  1b 10 a0 e3                                      mov r1, #0x1b
003d3f38  00 20 a0 e3                                      mov r2, #0
003d3f3c  86 43 ff eb                                      bl #0x3a4d5c
003d3f40  04 00 94 e5                                      ldr r0, [r4, #4]
003d3f44  1c 10 a0 e3                                      mov r1, #0x1c
003d3f48  00 20 a0 e3                                      mov r2, #0
003d3f4c  82 43 ff eb                                      bl #0x3a4d5c
003d3f50  c1 ff ff ea                                      b #0x3d3e5c
003d3f54  04 00 94 e5                                      ldr r0, [r4, #4]
003d3f58  49 0e 80 e2                                      add r0, r0, #0x490
003d3f5c  0c 00 80 e2                                      add r0, r0, #0xc
003d3f60  47 d5 ff eb                                      bl #0x3c9484
003d3f64  f1 ff ff ea                                      b #0x3d3f30
003d3f68  04 30 94 e5                                      ldr r3, [r4, #4]
003d3f6c  03 00 a0 e1                                      mov r0, r3
003d3f70  00 30 93 e5                                      ldr r3, [r3]
003d3f74  0f e0 a0 e1                                      mov lr, pc
003d3f78  24 f1 93 e5                                      ldr pc, [r3, #0x124]
003d3f7c  00 00 50 e3                                      cmp r0, #0
003d3f80  cc ff ff 1a                                      bne #0x3d3eb8
003d3f84  04 00 a0 e1                                      mov r0, r4
003d3f88  78 13 00 eb                                      bl #0x3d8d70
003d3f8c  04 00 94 e5                                      ldr r0, [r4, #4]
003d3f90  06 10 a0 e1                                      mov r1, r6
003d3f94  49 0e 80 e2                                      add r0, r0, #0x490
003d3f98  0c 00 80 e2                                      add r0, r0, #0xc
003d3f9c  38 d5 ff eb                                      bl #0x3c9484
003d3fa0  c4 ff ff ea                                      b #0x3d3eb8
003d3fa4  00 00 50 e3                                      cmp r0, #0
003d3fa8  0f 00 00 1a                                      bne #0x3d3fec
003d3fac  00 00 52 e3                                      cmp r2, #0
003d3fb0  d7 ff ff 1a                                      bne #0x3d3f14
003d3fb4  04 00 94 e5                                      ldr r0, [r4, #4]
003d3fb8  49 0e 80 e2                                      add r0, r0, #0x490
003d3fbc  0c 00 80 e2                                      add r0, r0, #0xc
003d3fc0  27 d5 ff eb                                      bl #0x3c9464
003d3fc4  a4 ff ff ea                                      b #0x3d3e5c
003d3fc8  04 20 94 e5                                      ldr r2, [r4, #4]
003d3fcc  a8 34 01 e3                                      movw r3, #0x14a8
003d3fd0  d3 30 92 e1                                      ldrsb r3, [r2, r3]
003d3fd4  08 00 53 e3                                      cmp r3, #8
003d3fd8  00 30 a0 03                                      moveq r3, #0
003d3fdc  01 20 a0 03                                      moveq r2, #1
003d3fe0  c8 ff ff 0a                                      beq #0x3d3f08
003d3fe4  00 30 a0 e3                                      mov r3, #0
003d3fe8  c5 ff ff ea                                      b #0x3d3f04
003d3fec  00 00 53 e3                                      cmp r3, #0
003d3ff0  c7 ff ff 1a                                      bne #0x3d3f14
003d3ff4  ec ff ff ea                                      b #0x3d3fac

; FUNCTION 0x003d3ff8, declared_size=76, range_size=76, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14_OnAnimStepEndEv
; demangled: CharAI::_OnAnimStepEnd()
; decoder-mode: arm
003d3ff8  10 40 2d e9                                      push {r4, lr}
003d3ffc  00 40 a0 e1                                      mov r4, r0
003d4000  04 00 90 e5                                      ldr r0, [r0, #4]
003d4004  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d4008  0c 00 80 e2                                      add r0, r0, #0xc
003d400c  66 b0 ff eb                                      bl #0x3c01ac
003d4010  05 00 50 e3                                      cmp r0, #5
003d4014  07 00 00 0a                                      beq #0x3d4038
003d4018  01 00 00 aa                                      bge #0x3d4024
003d401c  01 00 a0 e3                                      mov r0, #1
003d4020  10 80 bd e8                                      pop {r4, pc}
003d4024  07 00 50 e3                                      cmp r0, #7
003d4028  fb ff ff ca                                      bgt #0x3d401c
003d402c  04 00 a0 e1                                      mov r0, r4
003d4030  10 40 bd e8                                      pop {r4, lr}
003d4034  4b ff ff ea                                      b #0x3d3d68
003d4038  04 00 a0 e1                                      mov r0, r4
003d403c  10 40 bd e8                                      pop {r4, lr}
003d4040  7f ff ff ea                                      b #0x3d3e44

; FUNCTION 0x003d4044, declared_size=220, range_size=220, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI23_OnAnimStepBegin_AttackEv
; demangled: CharAI::_OnAnimStepBegin_Attack()
; decoder-mode: arm
003d4044  70 40 2d e9                                      push {r4, r5, r6, lr}
003d4048  04 30 90 e5                                      ldr r3, [r0, #4]
003d404c  00 40 a0 e1                                      mov r4, r0
003d4050  49 0e 83 e2                                      add r0, r3, #0x490
003d4054  0c 00 80 e2                                      add r0, r0, #0xc
003d4058  c8 54 93 e5                                      ldr r5, [r3, #0x4c8]
003d405c  b2 d4 ff eb                                      bl #0x3c932c
003d4060  00 60 a0 e1                                      mov r6, r0
003d4064  04 00 94 e5                                      ldr r0, [r4, #4]
003d4068  49 0e 80 e2                                      add r0, r0, #0x490
003d406c  0c 00 80 e2                                      add r0, r0, #0xc
003d4070  b5 d4 ff eb                                      bl #0x3c934c
003d4074  00 00 55 e3                                      cmp r5, #0
003d4078  12 00 00 0a                                      beq #0x3d40c8
003d407c  01 00 55 e3                                      cmp r5, #1
003d4080  01 00 00 0a                                      beq #0x3d408c
003d4084  01 00 a0 e3                                      mov r0, #1
003d4088  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d408c  00 00 56 e3                                      cmp r6, #0
003d4090  13 00 00 1a                                      bne #0x3d40e4
003d4094  04 30 94 e5                                      ldr r3, [r4, #4]
003d4098  79 50 c4 e5                                      strb r5, [r4, #0x79]
003d409c  08 14 93 e5                                      ldr r1, [r3, #0x408]
003d40a0  78 03 93 e5                                      ldr r0, [r3, #0x378]
003d40a4  84 c4 00 eb                                      bl #0x4052bc
003d40a8  04 00 a0 e1                                      mov r0, r4
003d40ac  7a 60 c4 e5                                      strb r6, [r4, #0x7a]
003d40b0  00 30 94 e5                                      ldr r3, [r4]
003d40b4  74 10 94 e5                                      ldr r1, [r4, #0x74]
003d40b8  0f e0 a0 e1                                      mov lr, pc
003d40bc  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
003d40c0  01 00 a0 e3                                      mov r0, #1
003d40c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d40c8  04 00 94 e5                                      ldr r0, [r4, #4]
003d40cc  74 60 84 e5                                      str r6, [r4, #0x74]
003d40d0  06 20 a0 e1                                      mov r2, r6
003d40d4  1a 10 a0 e3                                      mov r1, #0x1a
003d40d8  1f 43 ff eb                                      bl #0x3a4d5c
003d40dc  01 00 a0 e3                                      mov r0, #1
003d40e0  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d40e4  04 30 94 e5                                      ldr r3, [r4, #4]
003d40e8  01 00 40 e2                                      sub r0, r0, #1
003d40ec  00 00 56 e1                                      cmp r6, r0
003d40f0  00 60 a0 13                                      movne r6, #0
003d40f4  01 60 a0 03                                      moveq r6, #1
003d40f8  79 60 c4 e5                                      strb r6, [r4, #0x79]
003d40fc  08 14 93 e5                                      ldr r1, [r3, #0x408]
003d4100  78 03 93 e5                                      ldr r0, [r3, #0x378]
003d4104  6c c4 00 eb                                      bl #0x4052bc
003d4108  00 00 56 e3                                      cmp r6, #0
003d410c  00 30 a0 e3                                      mov r3, #0
003d4110  7a 30 c4 e5                                      strb r3, [r4, #0x7a]
003d4114  01 00 a0 e3                                      mov r0, #1
003d4118  7a 50 c4 15                                      strbne r5, [r4, #0x7a]
003d411c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d4120, declared_size=228, range_size=228, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21_OnAnimStepBegin_MoveEv
; demangled: CharAI::_OnAnimStepBegin_Move()
; decoder-mode: arm
003d4120  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d4124  40 30 90 e5                                      ldr r3, [r0, #0x40]
003d4128  00 40 a0 e1                                      mov r4, r0
003d412c  00 00 53 e3                                      cmp r3, #0
003d4130  2b 00 00 0a                                      beq #0x3d41e4
003d4134  25 02 00 eb                                      bl #0x3d49d0
003d4138  00 00 50 e3                                      cmp r0, #0
003d413c  28 00 00 0a                                      beq #0x3d41e4
003d4140  40 00 94 e5                                      ldr r0, [r4, #0x40]
003d4144  24 fd fe eb                                      bl #0x3935dc
003d4148  04 60 94 e5                                      ldr r6, [r4, #4]
003d414c  00 50 a0 e1                                      mov r5, r0
003d4150  00 00 90 e5                                      ldr r0, [r0]
003d4154  a8 11 96 e5                                      ldr r1, [r6, #0x1a8]
003d4158  93 e8 fc eb                                      bl #0x30e3ac
003d415c  ac 11 96 e5                                      ldr r1, [r6, #0x1ac]
003d4160  00 a0 a0 e1                                      mov sl, r0
003d4164  04 00 95 e5                                      ldr r0, [r5, #4]
003d4168  8f e8 fc eb                                      bl #0x30e3ac
003d416c  b0 11 96 e5                                      ldr r1, [r6, #0x1b0]
003d4170  00 80 a0 e1                                      mov r8, r0
003d4174  08 00 95 e5                                      ldr r0, [r5, #8]
003d4178  8b e8 fc eb                                      bl #0x30e3ac
003d417c  00 70 a0 e1                                      mov r7, r0
003d4180  04 00 a0 e1                                      mov r0, r4
003d4184  c4 02 00 eb                                      bl #0x3d4c9c
003d4188  0a 10 a0 e1                                      mov r1, sl
003d418c  00 50 a0 e1                                      mov r5, r0
003d4190  0a 00 a0 e1                                      mov r0, sl
003d4194  f4 ea fc eb                                      bl #0x30ed6c
003d4198  08 10 a0 e1                                      mov r1, r8
003d419c  00 60 a0 e1                                      mov r6, r0
003d41a0  08 00 a0 e1                                      mov r0, r8
003d41a4  f0 ea fc eb                                      bl #0x30ed6c
003d41a8  00 10 a0 e1                                      mov r1, r0
003d41ac  06 00 a0 e1                                      mov r0, r6
003d41b0  7b ea fc eb                                      bl #0x30eba4
003d41b4  07 10 a0 e1                                      mov r1, r7
003d41b8  00 60 a0 e1                                      mov r6, r0
003d41bc  07 00 a0 e1                                      mov r0, r7
003d41c0  e9 ea fc eb                                      bl #0x30ed6c
003d41c4  00 10 a0 e1                                      mov r1, r0
003d41c8  06 00 a0 e1                                      mov r0, r6
003d41cc  74 ea fc eb                                      bl #0x30eba4
003d41d0  00 10 a0 e1                                      mov r1, r0
003d41d4  05 00 a0 e1                                      mov r0, r5
003d41d8  f3 e9 fc eb                                      bl #0x30e9ac
003d41dc  00 00 50 e3                                      cmp r0, #0
003d41e0  01 00 00 1a                                      bne #0x3d41ec
003d41e4  01 00 a0 e3                                      mov r0, #1
003d41e8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d41ec  04 30 94 e5                                      ldr r3, [r4, #4]
003d41f0  40 10 94 e5                                      ldr r1, [r4, #0x40]
003d41f4  78 03 93 e5                                      ldr r0, [r3, #0x378]
003d41f8  d0 c4 00 eb                                      bl #0x405540
003d41fc  01 00 a0 e3                                      mov r0, #1
003d4200  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x003d4204, declared_size=100, range_size=100, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16_OnAnimStepBeginEv
; demangled: CharAI::_OnAnimStepBegin()
; decoder-mode: arm
003d4204  10 40 2d e9                                      push {r4, lr}
003d4208  00 40 a0 e1                                      mov r4, r0
003d420c  04 00 90 e5                                      ldr r0, [r0, #4]
003d4210  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d4214  0c 00 80 e2                                      add r0, r0, #0xc
003d4218  e3 af ff eb                                      bl #0x3c01ac
003d421c  04 00 40 e2                                      sub r0, r0, #4
003d4220  03 00 50 e3                                      cmp r0, #3
003d4224  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
003d4228  0c 00 00 ea                                      b #0x3d4260
003d422c  08 00 00 ea                                      b #0x3d4254
003d4230  04 00 00 ea                                      b #0x3d4248
003d4234  00 00 00 ea                                      b #0x3d423c
003d4238  ff ff ff ea                                      b #0x3d423c
003d423c  04 00 a0 e1                                      mov r0, r4
003d4240  10 40 bd e8                                      pop {r4, lr}
003d4244  e2 fe ff ea                                      b #0x3d3dd4
003d4248  04 00 a0 e1                                      mov r0, r4
003d424c  10 40 bd e8                                      pop {r4, lr}
003d4250  7b ff ff ea                                      b #0x3d4044
003d4254  04 00 a0 e1                                      mov r0, r4
003d4258  10 40 bd e8                                      pop {r4, lr}
003d425c  af ff ff ea                                      b #0x3d4120
003d4260  01 00 a0 e3                                      mov r0, #1
003d4264  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d4434, declared_size=1424, range_size=1424, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12_OnAnimEventEPKc
; demangled: CharAI::_OnAnimEvent(char const*)
; decoder-mode: arm
003d4434  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d4438  28 45 9f e5                                      ldr r4, [pc, #0x528]
003d443c  28 75 9f e5                                      ldr r7, [pc, #0x528]
003d4440  00 60 a0 e1                                      mov r6, r0
003d4444  04 40 8f e0                                      add r4, pc, r4
003d4448  07 30 94 e7                                      ldr r3, [r4, r7]
003d444c  04 00 90 e5                                      ldr r0, [r0, #4]
003d4450  d4 d0 4d e2                                      sub sp, sp, #0xd4
003d4454  00 30 93 e5                                      ldr r3, [r3]
003d4458  49 0e 80 e2                                      add r0, r0, #0x490
003d445c  0c 00 80 e2                                      add r0, r0, #0xc
003d4460  01 50 a0 e1                                      mov r5, r1
003d4464  cc 30 8d e5                                      str r3, [sp, #0xcc]
003d4468  af d3 ff eb                                      bl #0x3c932c
003d446c  00 80 a0 e1                                      mov r8, r0
003d4470  04 00 96 e5                                      ldr r0, [r6, #4]
003d4474  49 0e 80 e2                                      add r0, r0, #0x490
003d4478  0c 00 80 e2                                      add r0, r0, #0xc
003d447c  b2 d3 ff eb                                      bl #0x3c934c
003d4480  e8 14 9f e5                                      ldr r1, [pc, #0x4e8]
003d4484  05 00 a0 e1                                      mov r0, r5
003d4488  03 20 a0 e3                                      mov r2, #3
003d448c  01 10 8f e0                                      add r1, pc, r1
003d4490  f9 e9 fc eb                                      bl #0x30ec7c
003d4494  00 00 50 e3                                      cmp r0, #0
003d4498  65 00 00 0a                                      beq #0x3d4634
003d449c  d0 14 9f e5                                      ldr r1, [pc, #0x4d0]
003d44a0  05 00 a0 e1                                      mov r0, r5
003d44a4  03 20 a0 e3                                      mov r2, #3
003d44a8  01 10 8f e0                                      add r1, pc, r1
003d44ac  f2 e9 fc eb                                      bl #0x30ec7c
003d44b0  00 00 50 e3                                      cmp r0, #0
003d44b4  64 00 00 0a                                      beq #0x3d464c
003d44b8  b8 14 9f e5                                      ldr r1, [pc, #0x4b8]
003d44bc  05 00 a0 e1                                      mov r0, r5
003d44c0  03 20 a0 e3                                      mov r2, #3
003d44c4  01 10 8f e0                                      add r1, pc, r1
003d44c8  eb e9 fc eb                                      bl #0x30ec7c
003d44cc  00 a0 50 e2                                      subs sl, r0, #0
003d44d0  39 00 00 0a                                      beq #0x3d45bc
003d44d4  a0 14 9f e5                                      ldr r1, [pc, #0x4a0]
003d44d8  05 00 a0 e1                                      mov r0, r5
003d44dc  04 20 a0 e3                                      mov r2, #4
003d44e0  01 10 8f e0                                      add r1, pc, r1
003d44e4  e4 e9 fc eb                                      bl #0x30ec7c
003d44e8  00 00 50 e3                                      cmp r0, #0
003d44ec  5a 00 00 1a                                      bne #0x3d465c
003d44f0  88 34 9f e5                                      ldr r3, [pc, #0x488]
003d44f4  04 50 85 e2                                      add r5, r5, #4
003d44f8  03 30 94 e7                                      ldr r3, [r4, r3]
003d44fc  00 90 93 e5                                      ldr sb, [r3]
003d4500  00 00 59 e3                                      cmp sb, #0
003d4504  24 00 00 0a                                      beq #0x3d459c
003d4508  74 34 9f e5                                      ldr r3, [pc, #0x474]
003d450c  00 80 a0 e1                                      mov r8, r0
003d4510  03 30 94 e7                                      ldr r3, [r4, r3]
003d4514  00 b0 93 e5                                      ldr fp, [r3]
003d4518  02 00 00 ea                                      b #0x3d4528
003d451c  01 80 88 e2                                      add r8, r8, #1
003d4520  09 00 58 e1                                      cmp r8, sb
003d4524  1c 00 00 0a                                      beq #0x3d459c
003d4528  05 00 a0 e1                                      mov r0, r5
003d452c  08 11 9b e7                                      ldr r1, [fp, r8, lsl #2]
003d4530  79 e7 fc eb                                      bl #0x30e31c
003d4534  00 a0 50 e2                                      subs sl, r0, #0
003d4538  f7 ff ff 1a                                      bne #0x3d451c
003d453c  01 00 78 e3                                      cmn r8, #1
003d4540  15 00 00 0a                                      beq #0x3d459c
003d4544  3c 34 9f e5                                      ldr r3, [pc, #0x43c]
003d4548  04 00 96 e5                                      ldr r0, [r6, #4]
003d454c  03 30 94 e7                                      ldr r3, [r4, r3]
003d4550  00 90 93 e5                                      ldr sb, [r3]
003d4554  20 fc fe eb                                      bl #0x3935dc
003d4558  04 e0 90 e5                                      ldr lr, [r0, #4]
003d455c  00 50 90 e5                                      ldr r5, [r0]
003d4560  08 60 90 e5                                      ldr r6, [r0, #8]
003d4564  bf c4 a0 e3                                      mov ip, #0xbf000000
003d4568  02 c5 8c e2                                      add ip, ip, #0x800000
003d456c  14 e0 8d e5                                      str lr, [sp, #0x14]
003d4570  09 00 a0 e1                                      mov r0, sb
003d4574  01 e0 a0 e3                                      mov lr, #1
003d4578  08 10 a0 e1                                      mov r1, r8
003d457c  0a 30 a0 e1                                      mov r3, sl
003d4580  10 20 8d e2                                      add r2, sp, #0x10
003d4584  10 50 8d e5                                      str r5, [sp, #0x10]
003d4588  18 60 8d e5                                      str r6, [sp, #0x18]
003d458c  00 e0 8d e5                                      str lr, [sp]
003d4590  08 c0 8d e5                                      str ip, [sp, #8]
003d4594  04 c0 8d e5                                      str ip, [sp, #4]
003d4598  0e 5c fe eb                                      bl #0x36b5d8
003d459c  07 30 94 e7                                      ldr r3, [r4, r7]
003d45a0  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
003d45a4  01 00 a0 e3                                      mov r0, #1
003d45a8  00 30 93 e5                                      ldr r3, [r3]
003d45ac  03 00 52 e1                                      cmp r2, r3
003d45b0  eb 00 00 1a                                      bne #0x3d4964
003d45b4  d4 d0 8d e2                                      add sp, sp, #0xd4
003d45b8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d45bc  c8 33 9f e5                                      ldr r3, [pc, #0x3c8]
003d45c0  03 50 85 e2                                      add r5, r5, #3
003d45c4  03 30 94 e7                                      ldr r3, [r4, r3]
003d45c8  00 90 93 e5                                      ldr sb, [r3]
003d45cc  00 00 59 e3                                      cmp sb, #0
003d45d0  f1 ff ff 0a                                      beq #0x3d459c
003d45d4  b4 33 9f e5                                      ldr r3, [pc, #0x3b4]
003d45d8  03 30 94 e7                                      ldr r3, [r4, r3]
003d45dc  00 b0 93 e5                                      ldr fp, [r3]
003d45e0  02 00 00 ea                                      b #0x3d45f0
003d45e4  01 a0 8a e2                                      add sl, sl, #1
003d45e8  09 00 5a e1                                      cmp sl, sb
003d45ec  ea ff ff 0a                                      beq #0x3d459c
003d45f0  05 00 a0 e1                                      mov r0, r5
003d45f4  0a 11 9b e7                                      ldr r1, [fp, sl, lsl #2]
003d45f8  47 e7 fc eb                                      bl #0x30e31c
003d45fc  00 80 50 e2                                      subs r8, r0, #0
003d4600  f7 ff ff 1a                                      bne #0x3d45e4
003d4604  01 00 7a e3                                      cmn sl, #1
003d4608  e3 ff ff 0a                                      beq #0x3d459c
003d460c  04 00 96 e5                                      ldr r0, [r6, #4]
003d4610  f1 fb fe eb                                      bl #0x3935dc
003d4614  78 33 9f e5                                      ldr r3, [pc, #0x378]
003d4618  00 20 a0 e1                                      mov r2, r0
003d461c  0a 10 a0 e1                                      mov r1, sl
003d4620  03 00 94 e7                                      ldr r0, [r4, r3]
003d4624  08 30 a0 e1                                      mov r3, r8
003d4628  00 80 8d e5                                      str r8, [sp]
003d462c  b8 05 03 eb                                      bl #0x495d14
003d4630  d9 ff ff ea                                      b #0x3d459c
003d4634  06 00 a0 e1                                      mov r0, r6
003d4638  03 10 85 e2                                      add r1, r5, #3
003d463c  00 30 96 e5                                      ldr r3, [r6]
003d4640  0f e0 a0 e1                                      mov lr, pc
003d4644  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003d4648  d3 ff ff ea                                      b #0x3d459c
003d464c  06 00 a0 e1                                      mov r0, r6
003d4650  03 10 85 e2                                      add r1, r5, #3
003d4654  26 fd ff eb                                      bl #0x3d3af4
003d4658  cf ff ff ea                                      b #0x3d459c
003d465c  04 00 96 e5                                      ldr r0, [r6, #4]
003d4660  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d4664  0c 00 80 e2                                      add r0, r0, #0xc
003d4668  cf ae ff eb                                      bl #0x3c01ac
003d466c  05 00 40 e2                                      sub r0, r0, #5
003d4670  08 00 50 e3                                      cmp r0, #8
003d4674  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
003d4678  c7 ff ff ea                                      b #0x3d459c
003d467c  33 00 00 ea                                      b #0x3d4750
003d4680  1c 00 00 ea                                      b #0x3d46f8
003d4684  05 00 00 ea                                      b #0x3d46a0
003d4688  c3 ff ff ea                                      b #0x3d459c
003d468c  c2 ff ff ea                                      b #0x3d459c
003d4690  c1 ff ff ea                                      b #0x3d459c
003d4694  c0 ff ff ea                                      b #0x3d459c
003d4698  bf ff ff ea                                      b #0x3d459c
003d469c  62 00 00 ea                                      b #0x3d482c
003d46a0  f0 12 9f e5                                      ldr r1, [pc, #0x2f0]
003d46a4  05 00 a0 e1                                      mov r0, r5
003d46a8  01 10 8f e0                                      add r1, pc, r1
003d46ac  1a e7 fc eb                                      bl #0x30e31c
003d46b0  00 00 50 e3                                      cmp r0, #0
003d46b4  b8 ff ff 1a                                      bne #0x3d459c
003d46b8  dc 32 9f e5                                      ldr r3, [pc, #0x2dc]
003d46bc  3c 50 8d e2                                      add r5, sp, #0x3c
003d46c0  03 80 94 e7                                      ldr r8, [r4, r3]
003d46c4  08 00 a0 e1                                      mov r0, r8
003d46c8  6e 8c fd eb                                      bl #0x337888
003d46cc  24 10 8d e2                                      add r1, sp, #0x24
003d46d0  05 00 a0 e1                                      mov r0, r5
003d46d4  44 ff ff eb                                      bl #0x3d43ec
003d46d8  05 10 a0 e1                                      mov r1, r5
003d46dc  08 00 a0 e1                                      mov r0, r8
003d46e0  e8 8c fd eb                                      bl #0x337a88
003d46e4  05 00 a0 e1                                      mov r0, r5
003d46e8  af fc fc eb                                      bl #0x3139ac
003d46ec  06 00 a0 e1                                      mov r0, r6
003d46f0  2b 11 00 eb                                      bl #0x3d8ba4
003d46f4  a8 ff ff ea                                      b #0x3d459c
003d46f8  a0 12 9f e5                                      ldr r1, [pc, #0x2a0]
003d46fc  05 00 a0 e1                                      mov r0, r5
003d4700  01 10 8f e0                                      add r1, pc, r1
003d4704  04 e7 fc eb                                      bl #0x30e31c
003d4708  00 00 50 e3                                      cmp r0, #0
003d470c  a2 ff ff 1a                                      bne #0x3d459c
003d4710  84 32 9f e5                                      ldr r3, [pc, #0x284]
003d4714  54 50 8d e2                                      add r5, sp, #0x54
003d4718  03 80 94 e7                                      ldr r8, [r4, r3]
003d471c  08 00 a0 e1                                      mov r0, r8
003d4720  58 8c fd eb                                      bl #0x337888
003d4724  28 10 8d e2                                      add r1, sp, #0x28
003d4728  05 00 a0 e1                                      mov r0, r5
003d472c  2e ff ff eb                                      bl #0x3d43ec
003d4730  05 10 a0 e1                                      mov r1, r5
003d4734  08 00 a0 e1                                      mov r0, r8
003d4738  d2 8c fd eb                                      bl #0x337a88
003d473c  05 00 a0 e1                                      mov r0, r5
003d4740  99 fc fc eb                                      bl #0x3139ac
003d4744  06 00 a0 e1                                      mov r0, r6
003d4748  2a 11 00 eb                                      bl #0x3d8bf8
003d474c  92 ff ff ea                                      b #0x3d459c
003d4750  04 30 96 e5                                      ldr r3, [r6, #4]
003d4754  20 10 8d e2                                      add r1, sp, #0x20
003d4758  01 20 a0 e1                                      mov r2, r1
003d475c  03 00 a0 e1                                      mov r0, r3
003d4760  00 c0 93 e5                                      ldr ip, [r3]
003d4764  1c 30 8d e2                                      add r3, sp, #0x1c
003d4768  0f e0 a0 e1                                      mov lr, pc
003d476c  28 f1 9c e5                                      ldr pc, [ip, #0x128]
003d4770  00 00 50 e3                                      cmp r0, #0
003d4774  44 00 00 0a                                      beq #0x3d488c
003d4778  24 12 9f e5                                      ldr r1, [pc, #0x224]
003d477c  05 00 a0 e1                                      mov r0, r5
003d4780  01 10 8f e0                                      add r1, pc, r1
003d4784  e4 e6 fc eb                                      bl #0x30e31c
003d4788  00 00 50 e3                                      cmp r0, #0
003d478c  0b 00 00 0a                                      beq #0x3d47c0
003d4790  10 12 9f e5                                      ldr r1, [pc, #0x210]
003d4794  05 00 a0 e1                                      mov r0, r5
003d4798  01 10 8f e0                                      add r1, pc, r1
003d479c  de e6 fc eb                                      bl #0x30e31c
003d47a0  00 00 50 e3                                      cmp r0, #0
003d47a4  05 00 00 0a                                      beq #0x3d47c0
003d47a8  fc 11 9f e5                                      ldr r1, [pc, #0x1fc]
003d47ac  05 00 a0 e1                                      mov r0, r5
003d47b0  01 10 8f e0                                      add r1, pc, r1
003d47b4  d8 e6 fc eb                                      bl #0x30e31c
003d47b8  00 00 50 e3                                      cmp r0, #0
003d47bc  76 ff ff 1a                                      bne #0x3d459c
003d47c0  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
003d47c4  b4 50 8d e2                                      add r5, sp, #0xb4
003d47c8  03 80 94 e7                                      ldr r8, [r4, r3]
003d47cc  08 00 a0 e1                                      mov r0, r8
003d47d0  2c 8c fd eb                                      bl #0x337888
003d47d4  38 10 8d e2                                      add r1, sp, #0x38
003d47d8  05 00 a0 e1                                      mov r0, r5
003d47dc  02 ff ff eb                                      bl #0x3d43ec
003d47e0  05 10 a0 e1                                      mov r1, r5
003d47e4  08 00 a0 e1                                      mov r0, r8
003d47e8  a6 8c fd eb                                      bl #0x337a88
003d47ec  05 00 a0 e1                                      mov r0, r5
003d47f0  6d fc fc eb                                      bl #0x3139ac
003d47f4  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
003d47f8  00 c0 a0 e3                                      mov ip, #0
003d47fc  04 20 96 e5                                      ldr r2, [r6, #4]
003d4800  03 00 94 e7                                      ldr r0, [r4, r3]
003d4804  a8 31 9f e5                                      ldr r3, [pc, #0x1a8]
003d4808  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003d480c  00 c0 8d e5                                      str ip, [sp]
003d4810  03 e0 94 e7                                      ldr lr, [r4, r3]
003d4814  0c 30 a0 e1                                      mov r3, ip
003d4818  08 c0 8d e5                                      str ip, [sp, #8]
003d481c  04 e0 8d e5                                      str lr, [sp, #4]
003d4820  0c c0 8d e5                                      str ip, [sp, #0xc]
003d4824  fc 49 00 eb                                      bl #0x3e701c
003d4828  5b ff ff ea                                      b #0x3d459c
003d482c  84 11 9f e5                                      ldr r1, [pc, #0x184]
003d4830  05 00 a0 e1                                      mov r0, r5
003d4834  01 10 8f e0                                      add r1, pc, r1
003d4838  b7 e6 fc eb                                      bl #0x30e31c
003d483c  00 00 50 e3                                      cmp r0, #0
003d4840  55 ff ff 1a                                      bne #0x3d459c
003d4844  50 31 9f e5                                      ldr r3, [pc, #0x150]
003d4848  6c 50 8d e2                                      add r5, sp, #0x6c
003d484c  03 80 94 e7                                      ldr r8, [r4, r3]
003d4850  08 00 a0 e1                                      mov r0, r8
003d4854  0b 8c fd eb                                      bl #0x337888
003d4858  2c 10 8d e2                                      add r1, sp, #0x2c
003d485c  05 00 a0 e1                                      mov r0, r5
003d4860  e1 fe ff eb                                      bl #0x3d43ec
003d4864  05 10 a0 e1                                      mov r1, r5
003d4868  08 00 a0 e1                                      mov r0, r8
003d486c  85 8c fd eb                                      bl #0x337a88
003d4870  05 00 a0 e1                                      mov r0, r5
003d4874  4c fc fc eb                                      bl #0x3139ac
003d4878  06 00 a0 e1                                      mov r0, r6
003d487c  00 30 96 e5                                      ldr r3, [r6]
003d4880  0f e0 a0 e1                                      mov lr, pc
003d4884  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003d4888  43 ff ff ea                                      b #0x3d459c
003d488c  28 11 9f e5                                      ldr r1, [pc, #0x128]
003d4890  05 00 a0 e1                                      mov r0, r5
003d4894  01 10 8f e0                                      add r1, pc, r1
003d4898  9f e6 fc eb                                      bl #0x30e31c
003d489c  00 a0 50 e2                                      subs sl, r0, #0
003d48a0  1a 00 00 0a                                      beq #0x3d4910
003d48a4  14 11 9f e5                                      ldr r1, [pc, #0x114]
003d48a8  05 00 a0 e1                                      mov r0, r5
003d48ac  01 10 8f e0                                      add r1, pc, r1
003d48b0  99 e6 fc eb                                      bl #0x30e31c
003d48b4  00 00 50 e3                                      cmp r0, #0
003d48b8  37 ff ff 1a                                      bne #0x3d459c
003d48bc  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003d48c0  84 50 8d e2                                      add r5, sp, #0x84
003d48c4  03 a0 94 e7                                      ldr sl, [r4, r3]
003d48c8  0a 00 a0 e1                                      mov r0, sl
003d48cc  ed 8b fd eb                                      bl #0x337888
003d48d0  30 10 8d e2                                      add r1, sp, #0x30
003d48d4  05 00 a0 e1                                      mov r0, r5
003d48d8  c3 fe ff eb                                      bl #0x3d43ec
003d48dc  05 10 a0 e1                                      mov r1, r5
003d48e0  0a 00 a0 e1                                      mov r0, sl
003d48e4  67 8c fd eb                                      bl #0x337a88
003d48e8  05 00 a0 e1                                      mov r0, r5
003d48ec  2e fc fc eb                                      bl #0x3139ac
003d48f0  06 00 a0 e1                                      mov r0, r6
003d48f4  01 20 48 e2                                      sub r2, r8, #1
003d48f8  00 c0 96 e5                                      ldr ip, [r6]
003d48fc  74 10 96 e5                                      ldr r1, [r6, #0x74]
003d4900  01 30 a0 e3                                      mov r3, #1
003d4904  0f e0 a0 e1                                      mov lr, pc
003d4908  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
003d490c  22 ff ff ea                                      b #0x3d459c
003d4910  84 30 9f e5                                      ldr r3, [pc, #0x84]
003d4914  9c 50 8d e2                                      add r5, sp, #0x9c
003d4918  03 90 94 e7                                      ldr sb, [r4, r3]
003d491c  09 00 a0 e1                                      mov r0, sb
003d4920  d8 8b fd eb                                      bl #0x337888
003d4924  34 10 8d e2                                      add r1, sp, #0x34
003d4928  05 00 a0 e1                                      mov r0, r5
003d492c  ae fe ff eb                                      bl #0x3d43ec
003d4930  05 10 a0 e1                                      mov r1, r5
003d4934  09 00 a0 e1                                      mov r0, sb
003d4938  52 8c fd eb                                      bl #0x337a88
003d493c  05 00 a0 e1                                      mov r0, r5
003d4940  19 fc fc eb                                      bl #0x3139ac
003d4944  06 00 a0 e1                                      mov r0, r6
003d4948  01 20 48 e2                                      sub r2, r8, #1
003d494c  0a 30 a0 e1                                      mov r3, sl
003d4950  00 c0 96 e5                                      ldr ip, [r6]
003d4954  74 10 96 e5                                      ldr r1, [r6, #0x74]
003d4958  0f e0 a0 e1                                      mov lr, pc
003d495c  a8 f0 9c e5                                      ldr pc, [ip, #0xa8]
003d4960  0d ff ff ea                                      b #0x3d459c
003d4964  69 e6 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d4968  4c 06 5c 00 ac 40 00 00 b4 10 4f 00 a0 10 4f 00  .byte 0x4c, 0x06, 0x5c, 0x00, 0xac, 0x40, 0x00, 0x00, 0xb4, 0x10, 0x4f, 0x00, 0xa0, 0x10, 0x4f, 0x00
003d4978  8c 10 4f 00 78 10 4f 00 38 3d 00 00 a8 39 00 00  .byte 0x8c, 0x10, 0x4f, 0x00, 0x78, 0x10, 0x4f, 0x00, 0x38, 0x3d, 0x00, 0x00, 0xa8, 0x39, 0x00, 0x00
003d4988  a4 0d 00 00 c4 06 00 00 94 12 00 00 08 1b 00 00  .byte 0xa4, 0x0d, 0x00, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00
003d4998  08 0f 4f 00 84 08 00 00 80 0e 4f 00 e0 0d 4f 00  .byte 0x08, 0x0f, 0x4f, 0x00, 0x84, 0x08, 0x00, 0x00, 0x80, 0x0e, 0x4f, 0x00, 0xe0, 0x0d, 0x4f, 0x00
003d49a8  d8 0d 4f 00 d0 0d 4f 00 4c 08 00 00 34 18 00 00  .byte 0xd8, 0x0d, 0x4f, 0x00, 0xd0, 0x0d, 0x4f, 0x00, 0x4c, 0x08, 0x00, 0x00, 0x34, 0x18, 0x00, 0x00
003d49b8  6c 0d 4f 00 dc 0c 4f 00 e4 0c 4f 00              .byte 0x6c, 0x0d, 0x4f, 0x00, 0xdc, 0x0c, 0x4f, 0x00, 0xe4, 0x0c, 0x4f, 0x00

; FUNCTION 0x003d49c4, declared_size=12, range_size=12, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI17AI_SyncLastTargetEv
; demangled: CharAI::AI_SyncLastTarget()
; decoder-mode: arm
003d49c4  40 30 90 e5                                      ldr r3, [r0, #0x40]
003d49c8  44 30 80 e5                                      str r3, [r0, #0x44]
003d49cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d49d0, declared_size=32, range_size=32, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI18AI_IsTargetSeekingEv
; demangled: CharAI::AI_IsTargetSeeking() const
; decoder-mode: arm
003d49d0  4a 30 d0 e5                                      ldrb r3, [r0, #0x4a]
003d49d4  00 00 53 e3                                      cmp r3, #0
003d49d8  04 30 90 15                                      ldrne r3, [r0, #4]
003d49dc  03 00 a0 01                                      moveq r0, r3
003d49e0  20 05 93 15                                      ldrne r0, [r3, #0x520]
003d49e4  01 0a 20 12                                      eorne r0, r0, #0x1000
003d49e8  50 06 e0 17                                      ubfxne r0, r0, #0xc, #1
003d49ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d49f0, declared_size=16, range_size=16, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI11AI_HasAggroEv
; demangled: CharAI::AI_HasAggro() const
; decoder-mode: arm
003d49f0  8c 00 90 e5                                      ldr r0, [r0, #0x8c]
003d49f4  00 00 50 e2                                      subs r0, r0, #0
003d49f8  01 00 a0 13                                      movne r0, #1
003d49fc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d4a00, declared_size=16, range_size=16, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_IsAggroedEv
; demangled: CharAI::AI_IsAggroed() const
; decoder-mode: arm
003d4a00  a4 00 90 e5                                      ldr r0, [r0, #0xa4]
003d4a04  00 00 50 e2                                      subs r0, r0, #0
003d4a08  01 00 a0 13                                      movne r0, #1
003d4a0c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d4a10, declared_size=8, range_size=8, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI16AI_GetAggroCountEv
; demangled: CharAI::AI_GetAggroCount() const
; decoder-mode: arm
003d4a10  8c 00 90 e5                                      ldr r0, [r0, #0x8c]
003d4a14  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d4a18, declared_size=176, range_size=176, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI18AI_GetHighestAggroEv
; demangled: CharAI::AI_GetHighestAggro() const
; decoder-mode: arm
003d4a18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d4a1c  84 40 90 e5                                      ldr r4, [r0, #0x84]
003d4a20  7c 70 80 e2                                      add r7, r0, #0x7c
003d4a24  07 00 54 e1                                      cmp r4, r7
003d4a28  00 80 a0 03                                      moveq r8, #0
003d4a2c  23 00 00 0a                                      beq #0x3d4ac0
003d4a30  00 60 a0 e3                                      mov r6, #0
003d4a34  00 80 a0 e3                                      mov r8, #0
003d4a38  14 50 94 e5                                      ldr r5, [r4, #0x14]
003d4a3c  06 10 a0 e1                                      mov r1, r6
003d4a40  05 00 a0 e1                                      mov r0, r5
003d4a44  2b e6 fc eb                                      bl #0x30e2f8
003d4a48  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d4a4c  00 00 50 e3                                      cmp r0, #0
003d4a50  06 50 a0 01                                      moveq r5, r6
003d4a54  10 80 94 15                                      ldrne r8, [r4, #0x10]
003d4a58  00 00 52 e3                                      cmp r2, #0
003d4a5c  09 00 00 0a                                      beq #0x3d4a88
003d4a60  02 40 a0 e1                                      mov r4, r2
003d4a64  00 00 00 ea                                      b #0x3d4a6c
003d4a68  03 40 a0 e1                                      mov r4, r3
003d4a6c  08 30 94 e5                                      ldr r3, [r4, #8]
003d4a70  00 00 53 e3                                      cmp r3, #0
003d4a74  fb ff ff 1a                                      bne #0x3d4a68
003d4a78  04 00 57 e1                                      cmp r7, r4
003d4a7c  0f 00 00 0a                                      beq #0x3d4ac0
003d4a80  05 60 a0 e1                                      mov r6, r5
003d4a84  eb ff ff ea                                      b #0x3d4a38
003d4a88  04 30 94 e5                                      ldr r3, [r4, #4]
003d4a8c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d4a90  04 00 51 e1                                      cmp r1, r4
003d4a94  05 00 00 1a                                      bne #0x3d4ab0
003d4a98  03 40 a0 e1                                      mov r4, r3
003d4a9c  04 30 93 e5                                      ldr r3, [r3, #4]
003d4aa0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d4aa4  04 00 52 e1                                      cmp r2, r4
003d4aa8  fa ff ff 0a                                      beq #0x3d4a98
003d4aac  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d4ab0  03 00 52 e1                                      cmp r2, r3
003d4ab4  03 40 a0 11                                      movne r4, r3
003d4ab8  04 00 57 e1                                      cmp r7, r4
003d4abc  ef ff ff 1a                                      bne #0x3d4a80
003d4ac0  08 00 a0 e1                                      mov r0, r8
003d4ac4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003d4ac8, declared_size=252, range_size=252, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI11AI_GetAggroEP9Character
; demangled: CharAI::AI_GetAggro(Character*) const
; decoder-mode: arm
003d4ac8  30 40 2d e9                                      push {r4, r5, lr}
003d4acc  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003d4ad0  00 40 51 e2                                      subs r4, r1, #0
003d4ad4  0c d0 4d e2                                      sub sp, sp, #0xc
003d4ad8  00 50 a0 e1                                      mov r5, r0
003d4adc  03 30 8f e0                                      add r3, pc, r3
003d4ae0  1a 00 00 0a                                      beq #0x3d4b50
003d4ae4  80 30 95 e5                                      ldr r3, [r5, #0x80]
003d4ae8  7c 50 85 e2                                      add r5, r5, #0x7c
003d4aec  00 00 53 e3                                      cmp r3, #0
003d4af0  14 00 00 0a                                      beq #0x3d4b48
003d4af4  05 10 a0 e1                                      mov r1, r5
003d4af8  00 00 00 ea                                      b #0x3d4b00
003d4afc  02 30 a0 e1                                      mov r3, r2
003d4b00  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d4b04  02 00 54 e1                                      cmp r4, r2
003d4b08  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
003d4b0c  08 20 93 95                                      ldrls r2, [r3, #8]
003d4b10  01 30 a0 81                                      movhi r3, r1
003d4b14  03 10 a0 e1                                      mov r1, r3
003d4b18  00 00 52 e3                                      cmp r2, #0
003d4b1c  f6 ff ff 1a                                      bne #0x3d4afc
003d4b20  03 00 55 e1                                      cmp r5, r3
003d4b24  1e 00 00 0a                                      beq #0x3d4ba4
003d4b28  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d4b2c  02 00 54 e1                                      cmp r4, r2
003d4b30  04 00 00 3a                                      blo #0x3d4b48
003d4b34  03 00 55 e1                                      cmp r5, r3
003d4b38  14 00 93 15                                      ldrne r0, [r3, #0x14]
003d4b3c  18 00 00 0a                                      beq #0x3d4ba4
003d4b40  0c d0 8d e2                                      add sp, sp, #0xc
003d4b44  30 80 bd e8                                      pop {r4, r5, pc}
003d4b48  05 30 a0 e1                                      mov r3, r5
003d4b4c  f8 ff ff ea                                      b #0x3d4b34
003d4b50  58 20 9f e5                                      ldr r2, [pc, #0x58]
003d4b54  02 20 93 e7                                      ldr r2, [r3, r2]
003d4b58  00 20 92 e5                                      ldr r2, [r2]
003d4b5c  02 00 52 e3                                      cmp r2, #2
003d4b60  00 40 84 05                                      streq r4, [r4]
003d4b64  de ff ff 0a                                      beq #0x3d4ae4
003d4b68  01 00 52 e3                                      cmp r2, #1
003d4b6c  dc ff ff 1a                                      bne #0x3d4ae4
003d4b70  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003d4b74  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003d4b78  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003d4b7c  00 00 93 e7                                      ldr r0, [r3, r0]
003d4b80  38 30 9f e5                                      ldr r3, [pc, #0x38]
003d4b84  29 c2 00 e3                                      movw ip, #0x229
003d4b88  01 10 8f e0                                      add r1, pc, r1
003d4b8c  02 20 8f e0                                      add r2, pc, r2
003d4b90  03 30 8f e0                                      add r3, pc, r3
003d4b94  a8 00 80 e2                                      add r0, r0, #0xa8
003d4b98  00 c0 8d e5                                      str ip, [sp]
003d4b9c  18 e5 fc eb                                      bl #0x30e004
003d4ba0  cf ff ff ea                                      b #0x3d4ae4
003d4ba4  00 00 a0 e3                                      mov r0, #0
003d4ba8  e4 ff ff ea                                      b #0x3d4b40
; mapping-symbol data/literal pool
003d4bac  b4 ff 5b 00 c0 39 00 00 c0 19 00 00 50 98 4e 00  .byte 0xb4, 0xff, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x50, 0x98, 0x4e, 0x00
003d4bbc  fc d4 51 00 30 0a 4f 00                          .byte 0xfc, 0xd4, 0x51, 0x00, 0x30, 0x0a, 0x4f, 0x00

; FUNCTION 0x003d4bc4, declared_size=112, range_size=112, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI13AI_IsInCombatEv
; demangled: CharAI::AI_IsInCombat() const
; decoder-mode: arm
003d4bc4  10 40 2d e9                                      push {r4, lr}
003d4bc8  00 40 a0 e1                                      mov r4, r0
003d4bcc  87 ff ff eb                                      bl #0x3d49f0
003d4bd0  00 00 50 e3                                      cmp r0, #0
003d4bd4  01 00 00 0a                                      beq #0x3d4be0
003d4bd8  01 00 a0 e3                                      mov r0, #1
003d4bdc  10 80 bd e8                                      pop {r4, pc}
003d4be0  04 00 a0 e1                                      mov r0, r4
003d4be4  85 ff ff eb                                      bl #0x3d4a00
003d4be8  00 00 50 e3                                      cmp r0, #0
003d4bec  f9 ff ff 1a                                      bne #0x3d4bd8
003d4bf0  04 00 94 e5                                      ldr r0, [r4, #4]
003d4bf4  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d4bf8  0c 00 80 e2                                      add r0, r0, #0xc
003d4bfc  b3 ad ff eb                                      bl #0x3c02d0
003d4c00  00 00 50 e3                                      cmp r0, #0
003d4c04  f3 ff ff 1a                                      bne #0x3d4bd8
003d4c08  04 00 94 e5                                      ldr r0, [r4, #4]
003d4c0c  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d4c10  0c 00 80 e2                                      add r0, r0, #0xc
003d4c14  b3 ad ff eb                                      bl #0x3c02e8
003d4c18  00 00 50 e3                                      cmp r0, #0
003d4c1c  ed ff ff 1a                                      bne #0x3d4bd8
003d4c20  04 00 94 e5                                      ldr r0, [r4, #4]
003d4c24  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d4c28  0c 00 80 e2                                      add r0, r0, #0xc
003d4c2c  10 40 bd e8                                      pop {r4, lr}
003d4c30  bf ad ff ea                                      b #0x3c0334

; FUNCTION 0x003d4c34, declared_size=104, range_size=104, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI17AI_GetMeleeRadiusEv
; demangled: CharAI::AI_GetMeleeRadius() const
; decoder-mode: arm
003d4c34  30 40 2d e9                                      push {r4, r5, lr}
003d4c38  00 50 a0 e1                                      mov r5, r0
003d4c3c  04 00 90 e5                                      ldr r0, [r0, #4]
003d4c40  0c d0 4d e2                                      sub sp, sp, #0xc
003d4c44  08 10 8d e2                                      add r1, sp, #8
003d4c48  00 30 a0 e3                                      mov r3, #0
003d4c4c  04 30 21 e5                                      str r3, [r1, #-4]!
003d4c50  df 0f 80 e2                                      add r0, r0, #0x37c
003d4c54  38 40 9f e5                                      ldr r4, [pc, #0x38]
003d4c58  b4 ac 00 eb                                      bl #0x3fff30
003d4c5c  34 30 9f e5                                      ldr r3, [pc, #0x34]
003d4c60  04 40 8f e0                                      add r4, pc, r4
003d4c64  04 00 95 e5                                      ldr r0, [r5, #4]
003d4c68  03 30 94 e7                                      ldr r3, [r4, r3]
003d4c6c  00 40 93 e5                                      ldr r4, [r3]
003d4c70  dd 38 ff eb                                      bl #0x3a2fec
003d4c74  44 30 a0 e3                                      mov r3, #0x44
003d4c78  93 40 24 e0                                      mla r4, r3, r0, r4
003d4c7c  04 00 9d e5                                      ldr r0, [sp, #4]
003d4c80  37 e7 fc eb                                      bl #0x30e964
003d4c84  20 10 94 e5                                      ldr r1, [r4, #0x20]
003d4c88  c5 e7 fc eb                                      bl #0x30eba4
003d4c8c  0c d0 8d e2                                      add sp, sp, #0xc
003d4c90  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
003d4c94  30 fe 5b 00 58 07 00 00                          .byte 0x30, 0xfe, 0x5b, 0x00, 0x58, 0x07, 0x00, 0x00

; FUNCTION 0x003d4c9c, declared_size=20, range_size=20, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI19AI_GetMeleeRadiusSqEv
; demangled: CharAI::AI_GetMeleeRadiusSq() const
; decoder-mode: arm
003d4c9c  10 40 2d e9                                      push {r4, lr}
003d4ca0  e3 ff ff eb                                      bl #0x3d4c34
003d4ca4  00 10 a0 e1                                      mov r1, r0
003d4ca8  2f e8 fc eb                                      bl #0x30ed6c
003d4cac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d4cb0, declared_size=208, range_size=208, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI15AI_IsCloserThanEfPK10GameObject
; demangled: CharAI::AI_IsCloserThan(float, GameObject const*) const
; decoder-mode: arm
003d4cb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d4cb4  00 50 52 e2                                      subs r5, r2, #0
003d4cb8  01 60 a0 e1                                      mov r6, r1
003d4cbc  2a 00 00 0a                                      beq #0x3d4d6c
003d4cc0  04 00 90 e5                                      ldr r0, [r0, #4]
003d4cc4  44 fa fe eb                                      bl #0x3935dc
003d4cc8  00 40 a0 e1                                      mov r4, r0
003d4ccc  05 00 a0 e1                                      mov r0, r5
003d4cd0  41 fa fe eb                                      bl #0x3935dc
003d4cd4  00 50 a0 e1                                      mov r5, r0
003d4cd8  00 10 90 e5                                      ldr r1, [r0]
003d4cdc  00 00 94 e5                                      ldr r0, [r4]
003d4ce0  b1 e5 fc eb                                      bl #0x30e3ac
003d4ce4  04 10 95 e5                                      ldr r1, [r5, #4]
003d4ce8  00 80 a0 e1                                      mov r8, r0
003d4cec  04 00 94 e5                                      ldr r0, [r4, #4]
003d4cf0  ad e5 fc eb                                      bl #0x30e3ac
003d4cf4  08 10 95 e5                                      ldr r1, [r5, #8]
003d4cf8  00 70 a0 e1                                      mov r7, r0
003d4cfc  08 00 94 e5                                      ldr r0, [r4, #8]
003d4d00  a9 e5 fc eb                                      bl #0x30e3ac
003d4d04  08 10 a0 e1                                      mov r1, r8
003d4d08  00 50 a0 e1                                      mov r5, r0
003d4d0c  08 00 a0 e1                                      mov r0, r8
003d4d10  15 e8 fc eb                                      bl #0x30ed6c
003d4d14  07 10 a0 e1                                      mov r1, r7
003d4d18  00 40 a0 e1                                      mov r4, r0
003d4d1c  07 00 a0 e1                                      mov r0, r7
003d4d20  11 e8 fc eb                                      bl #0x30ed6c
003d4d24  00 10 a0 e1                                      mov r1, r0
003d4d28  04 00 a0 e1                                      mov r0, r4
003d4d2c  9c e7 fc eb                                      bl #0x30eba4
003d4d30  05 10 a0 e1                                      mov r1, r5
003d4d34  00 40 a0 e1                                      mov r4, r0
003d4d38  05 00 a0 e1                                      mov r0, r5
003d4d3c  0a e8 fc eb                                      bl #0x30ed6c
003d4d40  00 10 a0 e1                                      mov r1, r0
003d4d44  04 00 a0 e1                                      mov r0, r4
003d4d48  95 e7 fc eb                                      bl #0x30eba4
003d4d4c  00 10 a0 e1                                      mov r1, r0
003d4d50  06 00 a0 e1                                      mov r0, r6
003d4d54  67 e5 fc eb                                      bl #0x30e2f8
003d4d58  00 00 50 e3                                      cmp r0, #0
003d4d5c  00 50 a0 e3                                      mov r5, #0
003d4d60  01 50 a0 13                                      movne r5, #1
003d4d64  75 00 ef e6                                      uxtb r0, r5
003d4d68  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d4d6c  40 50 90 e5                                      ldr r5, [r0, #0x40]
003d4d70  00 00 55 e3                                      cmp r5, #0
003d4d74  d1 ff ff 1a                                      bne #0x3d4cc0
003d4d78  05 00 a0 e1                                      mov r0, r5
003d4d7c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003d4d80, declared_size=288, range_size=288, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12AI_SetMasterEP9Character
; demangled: CharAI::AI_SetMaster(Character*)
; decoder-mode: arm
003d4d80  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d4d84  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
003d4d88  00 00 51 e3                                      cmp r1, #0
003d4d8c  50 10 80 e5                                      str r1, [r0, #0x50]
003d4d90  00 40 a0 e1                                      mov r4, r0
003d4d94  03 30 8f e0                                      add r3, pc, r3
003d4d98  3d 00 00 0a                                      beq #0x3d4e94
003d4d9c  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
003d4da0  04 00 90 e5                                      ldr r0, [r0, #4]
003d4da4  02 30 93 e7                                      ldr r3, [r3, r2]
003d4da8  00 90 93 e5                                      ldr sb, [r3]
003d4dac  8e 38 ff eb                                      bl #0x3a2fec
003d4db0  50 30 94 e5                                      ldr r3, [r4, #0x50]
003d4db4  00 b0 a0 e1                                      mov fp, r0
003d4db8  03 00 a0 e1                                      mov r0, r3
003d4dbc  00 30 93 e5                                      ldr r3, [r3]
003d4dc0  0f e0 a0 e1                                      mov lr, pc
003d4dc4  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d4dc8  01 00 20 e2                                      eor r0, r0, #1
003d4dcc  54 00 c4 e5                                      strb r0, [r4, #0x54]
003d4dd0  50 00 94 e5                                      ldr r0, [r4, #0x50]
003d4dd4  00 fa fe eb                                      bl #0x3935dc
003d4dd8  00 50 a0 e1                                      mov r5, r0
003d4ddc  04 00 94 e5                                      ldr r0, [r4, #4]
003d4de0  fd f9 fe eb                                      bl #0x3935dc
003d4de4  00 10 90 e5                                      ldr r1, [r0]
003d4de8  00 60 a0 e1                                      mov r6, r0
003d4dec  00 00 95 e5                                      ldr r0, [r5]
003d4df0  6d e5 fc eb                                      bl #0x30e3ac
003d4df4  04 10 96 e5                                      ldr r1, [r6, #4]
003d4df8  00 a0 a0 e1                                      mov sl, r0
003d4dfc  04 00 95 e5                                      ldr r0, [r5, #4]
003d4e00  69 e5 fc eb                                      bl #0x30e3ac
003d4e04  08 10 96 e5                                      ldr r1, [r6, #8]
003d4e08  00 80 a0 e1                                      mov r8, r0
003d4e0c  08 00 95 e5                                      ldr r0, [r5, #8]
003d4e10  65 e5 fc eb                                      bl #0x30e3ac
003d4e14  44 30 a0 e3                                      mov r3, #0x44
003d4e18  93 9b 29 e0                                      mla sb, r3, fp, sb
003d4e1c  00 70 a0 e1                                      mov r7, r0
003d4e20  3c 00 99 e5                                      ldr r0, [sb, #0x3c]
003d4e24  00 30 a0 e3                                      mov r3, #0
003d4e28  55 30 c4 e5                                      strb r3, [r4, #0x55]
003d4e2c  00 10 a0 e1                                      mov r1, r0
003d4e30  cd e7 fc eb                                      bl #0x30ed6c
003d4e34  0a 10 a0 e1                                      mov r1, sl
003d4e38  00 50 a0 e1                                      mov r5, r0
003d4e3c  0a 00 a0 e1                                      mov r0, sl
003d4e40  c9 e7 fc eb                                      bl #0x30ed6c
003d4e44  08 10 a0 e1                                      mov r1, r8
003d4e48  00 60 a0 e1                                      mov r6, r0
003d4e4c  08 00 a0 e1                                      mov r0, r8
003d4e50  c5 e7 fc eb                                      bl #0x30ed6c
003d4e54  00 10 a0 e1                                      mov r1, r0
003d4e58  06 00 a0 e1                                      mov r0, r6
003d4e5c  50 e7 fc eb                                      bl #0x30eba4
003d4e60  07 10 a0 e1                                      mov r1, r7
003d4e64  00 60 a0 e1                                      mov r6, r0
003d4e68  07 00 a0 e1                                      mov r0, r7
003d4e6c  be e7 fc eb                                      bl #0x30ed6c
003d4e70  00 10 a0 e1                                      mov r1, r0
003d4e74  06 00 a0 e1                                      mov r0, r6
003d4e78  49 e7 fc eb                                      bl #0x30eba4
003d4e7c  00 10 a0 e1                                      mov r1, r0
003d4e80  05 00 a0 e1                                      mov r0, r5
003d4e84  1b e5 fc eb                                      bl #0x30e2f8
003d4e88  00 00 50 e3                                      cmp r0, #0
003d4e8c  01 30 a0 13                                      movne r3, #1
003d4e90  55 30 c4 15                                      strbne r3, [r4, #0x55]
003d4e94  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003d4e98  fc fc 5b 00 58 07 00 00                          .byte 0xfc, 0xfc, 0x5b, 0x00, 0x58, 0x07, 0x00, 0x00

; FUNCTION 0x003d4ea0, declared_size=56, range_size=56, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_IsInSightEf
; demangled: CharAI::AI_IsInSight(float) const
; decoder-mode: arm
003d4ea0  70 40 2d e9                                      push {r4, r5, r6, lr}
003d4ea4  04 00 90 e5                                      ldr r0, [r0, #4]
003d4ea8  01 50 a0 e1                                      mov r5, r1
003d4eac  5c 38 ff eb                                      bl #0x3a3024
003d4eb0  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
003d4eb4  00 40 a0 e3                                      mov r4, #0
003d4eb8  00 10 a0 e1                                      mov r1, r0
003d4ebc  aa e7 fc eb                                      bl #0x30ed6c
003d4ec0  05 10 a0 e1                                      mov r1, r5
003d4ec4  0b e5 fc eb                                      bl #0x30e2f8
003d4ec8  00 00 50 e3                                      cmp r0, #0
003d4ecc  01 40 a0 13                                      movne r4, #1
003d4ed0  01 00 04 e2                                      and r0, r4, #1
003d4ed4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d4ed8, declared_size=192, range_size=192, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_IsInSightEPK10GameObject
; demangled: CharAI::AI_IsInSight(GameObject const*) const
; decoder-mode: arm
003d4ed8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d4edc  00 50 51 e2                                      subs r5, r1, #0
003d4ee0  00 60 a0 e1                                      mov r6, r0
003d4ee4  26 00 00 0a                                      beq #0x3d4f84
003d4ee8  04 00 96 e5                                      ldr r0, [r6, #4]
003d4eec  ba f9 fe eb                                      bl #0x3935dc
003d4ef0  00 40 a0 e1                                      mov r4, r0
003d4ef4  05 00 a0 e1                                      mov r0, r5
003d4ef8  b7 f9 fe eb                                      bl #0x3935dc
003d4efc  00 50 a0 e1                                      mov r5, r0
003d4f00  00 10 90 e5                                      ldr r1, [r0]
003d4f04  00 00 94 e5                                      ldr r0, [r4]
003d4f08  27 e5 fc eb                                      bl #0x30e3ac
003d4f0c  04 10 95 e5                                      ldr r1, [r5, #4]
003d4f10  00 80 a0 e1                                      mov r8, r0
003d4f14  04 00 94 e5                                      ldr r0, [r4, #4]
003d4f18  23 e5 fc eb                                      bl #0x30e3ac
003d4f1c  08 10 95 e5                                      ldr r1, [r5, #8]
003d4f20  00 70 a0 e1                                      mov r7, r0
003d4f24  08 00 94 e5                                      ldr r0, [r4, #8]
003d4f28  1f e5 fc eb                                      bl #0x30e3ac
003d4f2c  08 10 a0 e1                                      mov r1, r8
003d4f30  00 50 a0 e1                                      mov r5, r0
003d4f34  08 00 a0 e1                                      mov r0, r8
003d4f38  8b e7 fc eb                                      bl #0x30ed6c
003d4f3c  07 10 a0 e1                                      mov r1, r7
003d4f40  00 40 a0 e1                                      mov r4, r0
003d4f44  07 00 a0 e1                                      mov r0, r7
003d4f48  87 e7 fc eb                                      bl #0x30ed6c
003d4f4c  00 10 a0 e1                                      mov r1, r0
003d4f50  04 00 a0 e1                                      mov r0, r4
003d4f54  12 e7 fc eb                                      bl #0x30eba4
003d4f58  05 10 a0 e1                                      mov r1, r5
003d4f5c  00 40 a0 e1                                      mov r4, r0
003d4f60  05 00 a0 e1                                      mov r0, r5
003d4f64  80 e7 fc eb                                      bl #0x30ed6c
003d4f68  00 10 a0 e1                                      mov r1, r0
003d4f6c  04 00 a0 e1                                      mov r0, r4
003d4f70  0b e7 fc eb                                      bl #0x30eba4
003d4f74  00 10 a0 e1                                      mov r1, r0
003d4f78  06 00 a0 e1                                      mov r0, r6
003d4f7c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003d4f80  c6 ff ff ea                                      b #0x3d4ea0
003d4f84  40 50 90 e5                                      ldr r5, [r0, #0x40]
003d4f88  00 00 55 e3                                      cmp r5, #0
003d4f8c  d5 ff ff 1a                                      bne #0x3d4ee8
003d4f90  05 00 a0 e1                                      mov r0, r5
003d4f94  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003d4f98, declared_size=388, range_size=388, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI23AI_IsInInteractionRangeEPK10GameObject
; demangled: CharAI::AI_IsInInteractionRange(GameObject const*) const
; decoder-mode: arm
003d4f98  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d4f9c  00 40 51 e2                                      subs r4, r1, #0
003d4fa0  1c d0 4d e2                                      sub sp, sp, #0x1c
003d4fa4  00 60 a0 e1                                      mov r6, r0
003d4fa8  48 00 00 0a                                      beq #0x3d50d0
003d4fac  04 00 96 e5                                      ldr r0, [r6, #4]
003d4fb0  89 f9 fe eb                                      bl #0x3935dc
003d4fb4  04 10 a0 e1                                      mov r1, r4
003d4fb8  00 50 a0 e1                                      mov r5, r0
003d4fbc  0c 00 8d e2                                      add r0, sp, #0xc
003d4fc0  98 d8 fe eb                                      bl #0x38b228
003d4fc4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003d4fc8  00 00 95 e5                                      ldr r0, [r5]
003d4fcc  f6 e4 fc eb                                      bl #0x30e3ac
003d4fd0  10 10 9d e5                                      ldr r1, [sp, #0x10]
003d4fd4  00 a0 a0 e1                                      mov sl, r0
003d4fd8  04 00 95 e5                                      ldr r0, [r5, #4]
003d4fdc  f2 e4 fc eb                                      bl #0x30e3ac
003d4fe0  14 10 9d e5                                      ldr r1, [sp, #0x14]
003d4fe4  00 80 a0 e1                                      mov r8, r0
003d4fe8  08 00 95 e5                                      ldr r0, [r5, #8]
003d4fec  ee e4 fc eb                                      bl #0x30e3ac
003d4ff0  0a 10 a0 e1                                      mov r1, sl
003d4ff4  00 70 a0 e1                                      mov r7, r0
003d4ff8  0a 00 a0 e1                                      mov r0, sl
003d4ffc  5a e7 fc eb                                      bl #0x30ed6c
003d5000  08 10 a0 e1                                      mov r1, r8
003d5004  00 50 a0 e1                                      mov r5, r0
003d5008  08 00 a0 e1                                      mov r0, r8
003d500c  56 e7 fc eb                                      bl #0x30ed6c
003d5010  00 10 a0 e1                                      mov r1, r0
003d5014  05 00 a0 e1                                      mov r0, r5
003d5018  e1 e6 fc eb                                      bl #0x30eba4
003d501c  07 10 a0 e1                                      mov r1, r7
003d5020  00 50 a0 e1                                      mov r5, r0
003d5024  07 00 a0 e1                                      mov r0, r7
003d5028  4f e7 fc eb                                      bl #0x30ed6c
003d502c  00 10 a0 e1                                      mov r1, r0
003d5030  05 00 a0 e1                                      mov r0, r5
003d5034  da e6 fc eb                                      bl #0x30eba4
003d5038  39 e4 fc eb                                      bl #0x30e124
003d503c  e8 32 94 e5                                      ldr r3, [r4, #0x2e8]
003d5040  00 80 a0 e1                                      mov r8, r0
003d5044  00 00 53 e3                                      cmp r3, #0
003d5048  25 00 00 0a                                      beq #0x3d50e4
003d504c  00 50 a0 e3                                      mov r5, #0
003d5050  42 74 a0 e3                                      mov r7, #0x42000000
003d5054  0a 76 87 e2                                      add r7, r7, #0xa00000
003d5058  05 10 a0 e1                                      mov r1, r5
003d505c  08 00 a0 e1                                      mov r0, r8
003d5060  d1 e4 fc eb                                      bl #0x30e3ac
003d5064  05 10 a0 e1                                      mov r1, r5
003d5068  cf e4 fc eb                                      bl #0x30e3ac
003d506c  04 10 96 e5                                      ldr r1, [r6, #4]
003d5070  00 50 a0 e1                                      mov r5, r0
003d5074  00 30 94 e5                                      ldr r3, [r4]
003d5078  04 00 a0 e1                                      mov r0, r4
003d507c  0f e0 a0 e1                                      mov lr, pc
003d5080  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003d5084  08 00 50 e3                                      cmp r0, #8
003d5088  08 00 00 0a                                      beq #0x3d50b0
003d508c  05 00 a0 e1                                      mov r0, r5
003d5090  07 10 a0 e1                                      mov r1, r7
003d5094  44 e6 fc eb                                      bl #0x30e9ac
003d5098  00 00 50 e3                                      cmp r0, #0
003d509c  00 00 a0 e3                                      mov r0, #0
003d50a0  08 00 00 1a                                      bne #0x3d50c8
003d50a4  70 00 ef e6                                      uxtb r0, r0
003d50a8  1c d0 8d e2                                      add sp, sp, #0x1c
003d50ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d50b0  05 00 a0 e1                                      mov r0, r5
003d50b4  00 10 a0 e3                                      mov r1, #0
003d50b8  3b e6 fc eb                                      bl #0x30e9ac
003d50bc  00 00 50 e3                                      cmp r0, #0
003d50c0  00 00 a0 e3                                      mov r0, #0
003d50c4  f6 ff ff 0a                                      beq #0x3d50a4
003d50c8  01 00 a0 e3                                      mov r0, #1
003d50cc  f4 ff ff ea                                      b #0x3d50a4
003d50d0  40 40 90 e5                                      ldr r4, [r0, #0x40]
003d50d4  00 00 54 e3                                      cmp r4, #0
003d50d8  04 00 a0 01                                      moveq r0, r4
003d50dc  f1 ff ff 0a                                      beq #0x3d50a8
003d50e0  b1 ff ff ea                                      b #0x3d4fac
003d50e4  06 00 a0 e1                                      mov r0, r6
003d50e8  d1 fe ff eb                                      bl #0x3d4c34
003d50ec  00 10 a0 e1                                      mov r1, r0
003d50f0  00 30 94 e5                                      ldr r3, [r4]
003d50f4  04 00 a0 e1                                      mov r0, r4
003d50f8  04 10 8d e5                                      str r1, [sp, #4]
003d50fc  0f e0 a0 e1                                      mov lr, pc
003d5100  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003d5104  00 50 a0 e1                                      mov r5, r0
003d5108  04 00 96 e5                                      ldr r0, [r6, #4]
003d510c  c4 37 ff eb                                      bl #0x3a3024
003d5110  04 10 9d e5                                      ldr r1, [sp, #4]
003d5114  18 70 90 e5                                      ldr r7, [r0, #0x18]
003d5118  cf ff ff ea                                      b #0x3d505c

; FUNCTION 0x003d511c, declared_size=720, range_size=720, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI11AI_IsFriendEPK10GameObject
; demangled: CharAI::AI_IsFriend(GameObject const*) const
; decoder-mode: arm
003d511c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d5120  80 42 9f e5                                      ldr r4, [pc, #0x280]
003d5124  00 00 51 e3                                      cmp r1, #0
003d5128  1c d0 4d e2                                      sub sp, sp, #0x1c
003d512c  00 50 a0 e1                                      mov r5, r0
003d5130  04 40 8f e0                                      add r4, pc, r4
003d5134  7d 00 00 0a                                      beq #0x3d5330
003d5138  0c 60 8d e2                                      add r6, sp, #0xc
003d513c  06 00 a0 e1                                      mov r0, r6
003d5140  0a a3 fd eb                                      bl #0x33dd70
003d5144  06 00 a0 e1                                      mov r0, r6
003d5148  00 10 a0 e3                                      mov r1, #0
003d514c  8e ab fd eb                                      bl #0x33ff8c
003d5150  00 60 50 e2                                      subs r6, r0, #0
003d5154  02 00 00 1a                                      bne #0x3d5164
003d5158  00 00 a0 e3                                      mov r0, #0
003d515c  1c d0 8d e2                                      add sp, sp, #0x1c
003d5160  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d5164  f4 70 96 e5                                      ldr r7, [r6, #0xf4]
003d5168  00 00 57 e3                                      cmp r7, #0
003d516c  f9 ff ff 1a                                      bne #0x3d5158
003d5170  02 38 ff eb                                      bl #0x3a3180
003d5174  00 00 50 e3                                      cmp r0, #0
003d5178  57 00 00 ba                                      blt #0x3d52dc
003d517c  06 00 a0 e1                                      mov r0, r6
003d5180  fe 37 ff eb                                      bl #0x3a3180
003d5184  20 72 9f e5                                      ldr r7, [pc, #0x220]
003d5188  07 30 94 e7                                      ldr r3, [r4, r7]
003d518c  00 30 93 e5                                      ldr r3, [r3]
003d5190  03 00 50 e1                                      cmp r0, r3
003d5194  08 00 00 ba                                      blt #0x3d51bc
003d5198  10 32 9f e5                                      ldr r3, [pc, #0x210]
003d519c  03 30 94 e7                                      ldr r3, [r4, r3]
003d51a0  00 30 93 e5                                      ldr r3, [r3]
003d51a4  02 00 53 e3                                      cmp r3, #2
003d51a8  00 30 a0 03                                      moveq r3, #0
003d51ac  00 30 83 05                                      streq r3, [r3]
003d51b0  01 00 00 0a                                      beq #0x3d51bc
003d51b4  01 00 53 e3                                      cmp r3, #1
003d51b8  6d 00 00 0a                                      beq #0x3d5374
003d51bc  04 00 95 e5                                      ldr r0, [r5, #4]
003d51c0  ee 37 ff eb                                      bl #0x3a3180
003d51c4  00 00 50 e3                                      cmp r0, #0
003d51c8  2d 00 00 ba                                      blt #0x3d5284
003d51cc  04 00 95 e5                                      ldr r0, [r5, #4]
003d51d0  ea 37 ff eb                                      bl #0x3a3180
003d51d4  07 30 94 e7                                      ldr r3, [r4, r7]
003d51d8  00 30 93 e5                                      ldr r3, [r3]
003d51dc  03 00 50 e1                                      cmp r0, r3
003d51e0  08 00 00 ba                                      blt #0x3d5208
003d51e4  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
003d51e8  03 30 94 e7                                      ldr r3, [r4, r3]
003d51ec  00 30 93 e5                                      ldr r3, [r3]
003d51f0  02 00 53 e3                                      cmp r3, #2
003d51f4  00 30 a0 03                                      moveq r3, #0
003d51f8  00 30 83 05                                      streq r3, [r3]
003d51fc  01 00 00 0a                                      beq #0x3d5208
003d5200  01 00 53 e3                                      cmp r3, #1
003d5204  4d 00 00 0a                                      beq #0x3d5340
003d5208  a4 31 9f e5                                      ldr r3, [pc, #0x1a4]
003d520c  04 00 95 e5                                      ldr r0, [r5, #4]
003d5210  03 30 94 e7                                      ldr r3, [r4, r3]
003d5214  00 40 93 e5                                      ldr r4, [r3]
003d5218  d8 37 ff eb                                      bl #0x3a3180
003d521c  0c 30 a0 e3                                      mov r3, #0xc
003d5220  93 40 24 e0                                      mla r4, r3, r0, r4
003d5224  06 00 a0 e1                                      mov r0, r6
003d5228  d4 37 ff eb                                      bl #0x3a3180
003d522c  04 c0 94 e5                                      ldr ip, [r4, #4]
003d5230  00 00 5c e3                                      cmp ip, #0
003d5234  c7 ff ff 0a                                      beq #0x3d5158
003d5238  08 20 94 e5                                      ldr r2, [r4, #8]
003d523c  04 30 92 e5                                      ldr r3, [r2, #4]
003d5240  03 00 50 e1                                      cmp r0, r3
003d5244  00 30 a0 13                                      movne r3, #0
003d5248  03 00 00 1a                                      bne #0x3d525c
003d524c  07 00 00 ea                                      b #0x3d5270
003d5250  04 10 92 e5                                      ldr r1, [r2, #4]
003d5254  01 00 50 e1                                      cmp r0, r1
003d5258  04 00 00 0a                                      beq #0x3d5270
003d525c  01 30 83 e2                                      add r3, r3, #1
003d5260  0c 00 53 e1                                      cmp r3, ip
003d5264  0c 20 82 e2                                      add r2, r2, #0xc
003d5268  f8 ff ff 1a                                      bne #0x3d5250
003d526c  b9 ff ff ea                                      b #0x3d5158
003d5270  08 00 92 e5                                      ldr r0, [r2, #8]
003d5274  00 00 50 e3                                      cmp r0, #0
003d5278  00 00 a0 d3                                      movle r0, #0
003d527c  01 00 a0 c3                                      movgt r0, #1
003d5280  b5 ff ff ea                                      b #0x3d515c
003d5284  24 31 9f e5                                      ldr r3, [pc, #0x124]
003d5288  03 30 94 e7                                      ldr r3, [r4, r3]
003d528c  00 30 93 e5                                      ldr r3, [r3]
003d5290  02 00 53 e3                                      cmp r3, #2
003d5294  00 30 a0 03                                      moveq r3, #0
003d5298  00 30 83 05                                      streq r3, [r3]
003d529c  ca ff ff 0a                                      beq #0x3d51cc
003d52a0  01 00 53 e3                                      cmp r3, #1
003d52a4  c8 ff ff 1a                                      bne #0x3d51cc
003d52a8  08 01 9f e5                                      ldr r0, [pc, #0x108]
003d52ac  08 11 9f e5                                      ldr r1, [pc, #0x108]
003d52b0  08 21 9f e5                                      ldr r2, [pc, #0x108]
003d52b4  00 00 94 e7                                      ldr r0, [r4, r0]
003d52b8  04 31 9f e5                                      ldr r3, [pc, #0x104]
003d52bc  c6 c0 a0 e3                                      mov ip, #0xc6
003d52c0  01 10 8f e0                                      add r1, pc, r1
003d52c4  02 20 8f e0                                      add r2, pc, r2
003d52c8  03 30 8f e0                                      add r3, pc, r3
003d52cc  a8 00 80 e2                                      add r0, r0, #0xa8
003d52d0  00 c0 8d e5                                      str ip, [sp]
003d52d4  4a e3 fc eb                                      bl #0x30e004
003d52d8  bb ff ff ea                                      b #0x3d51cc
003d52dc  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003d52e0  03 30 94 e7                                      ldr r3, [r4, r3]
003d52e4  00 30 93 e5                                      ldr r3, [r3]
003d52e8  02 00 53 e3                                      cmp r3, #2
003d52ec  00 70 87 05                                      streq r7, [r7]
003d52f0  a1 ff ff 0a                                      beq #0x3d517c
003d52f4  01 00 53 e3                                      cmp r3, #1
003d52f8  9f ff ff 1a                                      bne #0x3d517c
003d52fc  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
003d5300  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003d5304  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
003d5308  00 00 94 e7                                      ldr r0, [r4, r0]
003d530c  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003d5310  c4 c0 a0 e3                                      mov ip, #0xc4
003d5314  01 10 8f e0                                      add r1, pc, r1
003d5318  02 20 8f e0                                      add r2, pc, r2
003d531c  03 30 8f e0                                      add r3, pc, r3
003d5320  a8 00 80 e2                                      add r0, r0, #0xa8
003d5324  00 c0 8d e5                                      str ip, [sp]
003d5328  35 e3 fc eb                                      bl #0x30e004
003d532c  92 ff ff ea                                      b #0x3d517c
003d5330  40 10 90 e5                                      ldr r1, [r0, #0x40]
003d5334  00 00 51 e3                                      cmp r1, #0
003d5338  86 ff ff 0a                                      beq #0x3d5158
003d533c  7d ff ff ea                                      b #0x3d5138
003d5340  70 00 9f e5                                      ldr r0, [pc, #0x70]
003d5344  88 10 9f e5                                      ldr r1, [pc, #0x88]
003d5348  88 20 9f e5                                      ldr r2, [pc, #0x88]
003d534c  00 00 94 e7                                      ldr r0, [r4, r0]
003d5350  84 30 9f e5                                      ldr r3, [pc, #0x84]
003d5354  c7 c0 a0 e3                                      mov ip, #0xc7
003d5358  01 10 8f e0                                      add r1, pc, r1
003d535c  02 20 8f e0                                      add r2, pc, r2
003d5360  03 30 8f e0                                      add r3, pc, r3
003d5364  a8 00 80 e2                                      add r0, r0, #0xa8
003d5368  00 c0 8d e5                                      str ip, [sp]
003d536c  24 e3 fc eb                                      bl #0x30e004
003d5370  a4 ff ff ea                                      b #0x3d5208
003d5374  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003d5378  60 10 9f e5                                      ldr r1, [pc, #0x60]
003d537c  60 20 9f e5                                      ldr r2, [pc, #0x60]
003d5380  00 00 94 e7                                      ldr r0, [r4, r0]
003d5384  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003d5388  c5 c0 a0 e3                                      mov ip, #0xc5
003d538c  01 10 8f e0                                      add r1, pc, r1
003d5390  02 20 8f e0                                      add r2, pc, r2
003d5394  03 30 8f e0                                      add r3, pc, r3
003d5398  a8 00 80 e2                                      add r0, r0, #0xa8
003d539c  00 c0 8d e5                                      str ip, [sp]
003d53a0  17 e3 fc eb                                      bl #0x30e004
003d53a4  84 ff ff ea                                      b #0x3d51bc
; mapping-symbol data/literal pool
003d53a8  60 f9 5b 00 44 22 00 00 c0 39 00 00 2c 46 00 00  .byte 0x60, 0xf9, 0x5b, 0x00, 0x44, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x2c, 0x46, 0x00, 0x00
003d53b8  c0 19 00 00 18 91 4e 00 b4 03 4f 00 f8 02 4f 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x18, 0x91, 0x4e, 0x00, 0xb4, 0x03, 0x4f, 0x00, 0xf8, 0x02, 0x4f, 0x00
003d53c8  c4 90 4e 00 00 03 4f 00 a4 02 4f 00 80 90 4e 00  .byte 0xc4, 0x90, 0x4e, 0x00, 0x00, 0x03, 0x4f, 0x00, 0xa4, 0x02, 0x4f, 0x00, 0x80, 0x90, 0x4e, 0x00
003d53d8  3c 03 4f 00 60 02 4f 00 4c 90 4e 00 a8 02 4f 00  .byte 0x3c, 0x03, 0x4f, 0x00, 0x60, 0x02, 0x4f, 0x00, 0x4c, 0x90, 0x4e, 0x00, 0xa8, 0x02, 0x4f, 0x00
003d53e8  2c 02 4f 00                                      .byte 0x2c, 0x02, 0x4f, 0x00

; FUNCTION 0x003d53ec, declared_size=48, range_size=48, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21AI_PauseTargetSeekingEj
; demangled: CharAI::AI_PauseTargetSeeking(unsigned int)
; decoder-mode: arm
003d53ec  04 e0 2d e5                                      str lr, [sp, #-4]!
003d53f0  04 30 90 e5                                      ldr r3, [r0, #4]
003d53f4  00 c0 a0 e3                                      mov ip, #0
003d53f8  4a c0 c0 e5                                      strb ip, [r0, #0x4a]
003d53fc  0c d0 4d e2                                      sub sp, sp, #0xc
003d5400  ed 0f 83 e2                                      add r0, r3, #0x3b4
003d5404  0c 20 a0 e1                                      mov r2, ip
003d5408  32 30 a0 e3                                      mov r3, #0x32
003d540c  00 c0 8d e5                                      str ip, [sp]
003d5410  83 1a 00 eb                                      bl #0x3dbe24
003d5414  0c d0 8d e2                                      add sp, sp, #0xc
003d5418  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x003d541c, declared_size=52, range_size=52, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI23AI_GetTargetAsCharacterEv
; demangled: CharAI::AI_GetTargetAsCharacter() const
; decoder-mode: arm
003d541c  10 40 2d e9                                      push {r4, lr}
003d5420  40 10 90 e5                                      ldr r1, [r0, #0x40]
003d5424  10 d0 4d e2                                      sub sp, sp, #0x10
003d5428  00 00 51 e3                                      cmp r1, #0
003d542c  01 00 a0 01                                      moveq r0, r1
003d5430  04 00 00 0a                                      beq #0x3d5448
003d5434  04 40 8d e2                                      add r4, sp, #4
003d5438  04 00 a0 e1                                      mov r0, r4
003d543c  3a a2 fd eb                                      bl #0x33dd2c
003d5440  04 00 a0 e1                                      mov r0, r4
003d5444  c2 aa fd eb                                      bl #0x33ff54
003d5448  10 d0 8d e2                                      add sp, sp, #0x10
003d544c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d5450, declared_size=52, range_size=52, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI23AI_GetTargetAsCharacterEv
; demangled: CharAI::AI_GetTargetAsCharacter()
; decoder-mode: arm
003d5450  10 40 2d e9                                      push {r4, lr}
003d5454  40 10 90 e5                                      ldr r1, [r0, #0x40]
003d5458  10 d0 4d e2                                      sub sp, sp, #0x10
003d545c  00 00 51 e3                                      cmp r1, #0
003d5460  01 00 a0 01                                      moveq r0, r1
003d5464  04 00 00 0a                                      beq #0x3d547c
003d5468  04 40 8d e2                                      add r4, sp, #4
003d546c  04 00 a0 e1                                      mov r0, r4
003d5470  2d a2 fd eb                                      bl #0x33dd2c
003d5474  04 00 a0 e1                                      mov r0, r4
003d5478  b5 aa fd eb                                      bl #0x33ff54
003d547c  10 d0 8d e2                                      add sp, sp, #0x10
003d5480  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d5484, declared_size=60, range_size=60, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI21AI_IsTargetACharacterEv
; demangled: CharAI::AI_IsTargetACharacter() const
; decoder-mode: arm
003d5484  10 40 2d e9                                      push {r4, lr}
003d5488  40 10 90 e5                                      ldr r1, [r0, #0x40]
003d548c  10 d0 4d e2                                      sub sp, sp, #0x10
003d5490  00 00 51 e3                                      cmp r1, #0
003d5494  01 00 a0 01                                      moveq r0, r1
003d5498  06 00 00 0a                                      beq #0x3d54b8
003d549c  04 40 8d e2                                      add r4, sp, #4
003d54a0  04 00 a0 e1                                      mov r0, r4
003d54a4  20 a2 fd eb                                      bl #0x33dd2c
003d54a8  04 00 a0 e1                                      mov r0, r4
003d54ac  a8 aa fd eb                                      bl #0x33ff54
003d54b0  00 00 50 e2                                      subs r0, r0, #0
003d54b4  01 00 a0 13                                      movne r0, #1
003d54b8  10 d0 8d e2                                      add sp, sp, #0x10
003d54bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d574c, declared_size=844, range_size=844, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI10AI_IsEnemyEPK10GameObject
; demangled: CharAI::AI_IsEnemy(GameObject const*) const
; decoder-mode: arm
003d574c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d5750  fc 42 9f e5                                      ldr r4, [pc, #0x2fc]
003d5754  00 70 51 e2                                      subs r7, r1, #0
003d5758  18 d0 4d e2                                      sub sp, sp, #0x18
003d575c  00 50 a0 e1                                      mov r5, r0
003d5760  04 40 8f e0                                      add r4, pc, r4
003d5764  99 00 00 0a                                      beq #0x3d59d0
003d5768  0c 60 8d e2                                      add r6, sp, #0xc
003d576c  06 00 a0 e1                                      mov r0, r6
003d5770  07 10 a0 e1                                      mov r1, r7
003d5774  7d a1 fd eb                                      bl #0x33dd70
003d5778  06 00 a0 e1                                      mov r0, r6
003d577c  00 10 a0 e3                                      mov r1, #0
003d5780  01 aa fd eb                                      bl #0x33ff8c
003d5784  00 60 50 e2                                      subs r6, r0, #0
003d5788  0b 00 00 1a                                      bne #0x3d57bc
003d578c  00 00 57 e3                                      cmp r7, #0
003d5790  06 00 00 0a                                      beq #0x3d57b0
003d5794  00 30 97 e5                                      ldr r3, [r7]
003d5798  07 00 a0 e1                                      mov r0, r7
003d579c  04 10 95 e5                                      ldr r1, [r5, #4]
003d57a0  0f e0 a0 e1                                      mov lr, pc
003d57a4  88 f0 93 e5                                      ldr pc, [r3, #0x88]
003d57a8  00 00 50 e3                                      cmp r0, #0
003d57ac  4c 00 00 1a                                      bne #0x3d58e4
003d57b0  00 00 a0 e3                                      mov r0, #0
003d57b4  18 d0 8d e2                                      add sp, sp, #0x18
003d57b8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d57bc  f4 80 96 e5                                      ldr r8, [r6, #0xf4]
003d57c0  00 00 58 e3                                      cmp r8, #0
003d57c4  f0 ff ff 1a                                      bne #0x3d578c
003d57c8  6c 36 ff eb                                      bl #0x3a3180
003d57cc  00 00 50 e3                                      cmp r0, #0
003d57d0  69 00 00 ba                                      blt #0x3d597c
003d57d4  06 00 a0 e1                                      mov r0, r6
003d57d8  68 36 ff eb                                      bl #0x3a3180
003d57dc  74 72 9f e5                                      ldr r7, [pc, #0x274]
003d57e0  07 30 94 e7                                      ldr r3, [r4, r7]
003d57e4  00 30 93 e5                                      ldr r3, [r3]
003d57e8  03 00 50 e1                                      cmp r0, r3
003d57ec  08 00 00 ba                                      blt #0x3d5814
003d57f0  64 32 9f e5                                      ldr r3, [pc, #0x264]
003d57f4  03 30 94 e7                                      ldr r3, [r4, r3]
003d57f8  00 30 93 e5                                      ldr r3, [r3]
003d57fc  02 00 53 e3                                      cmp r3, #2
003d5800  00 30 a0 03                                      moveq r3, #0
003d5804  00 30 83 05                                      streq r3, [r3]
003d5808  01 00 00 0a                                      beq #0x3d5814
003d580c  01 00 53 e3                                      cmp r3, #1
003d5810  82 00 00 0a                                      beq #0x3d5a20
003d5814  04 00 95 e5                                      ldr r0, [r5, #4]
003d5818  58 36 ff eb                                      bl #0x3a3180
003d581c  00 00 50 e3                                      cmp r0, #0
003d5820  3f 00 00 ba                                      blt #0x3d5924
003d5824  04 00 95 e5                                      ldr r0, [r5, #4]
003d5828  54 36 ff eb                                      bl #0x3a3180
003d582c  07 30 94 e7                                      ldr r3, [r4, r7]
003d5830  00 30 93 e5                                      ldr r3, [r3]
003d5834  03 00 50 e1                                      cmp r0, r3
003d5838  08 00 00 ba                                      blt #0x3d5860
003d583c  18 32 9f e5                                      ldr r3, [pc, #0x218]
003d5840  03 30 94 e7                                      ldr r3, [r4, r3]
003d5844  00 30 93 e5                                      ldr r3, [r3]
003d5848  02 00 53 e3                                      cmp r3, #2
003d584c  00 30 a0 03                                      moveq r3, #0
003d5850  00 30 83 05                                      streq r3, [r3]
003d5854  01 00 00 0a                                      beq #0x3d5860
003d5858  01 00 53 e3                                      cmp r3, #1
003d585c  62 00 00 0a                                      beq #0x3d59ec
003d5860  04 30 95 e5                                      ldr r3, [r5, #4]
003d5864  03 00 a0 e1                                      mov r0, r3
003d5868  00 30 93 e5                                      ldr r3, [r3]
003d586c  0f e0 a0 e1                                      mov lr, pc
003d5870  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d5874  00 00 50 e3                                      cmp r0, #0
003d5878  22 00 00 1a                                      bne #0x3d5908
003d587c  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
003d5880  04 00 95 e5                                      ldr r0, [r5, #4]
003d5884  03 30 94 e7                                      ldr r3, [r4, r3]
003d5888  00 40 93 e5                                      ldr r4, [r3]
003d588c  3b 36 ff eb                                      bl #0x3a3180
003d5890  0c 30 a0 e3                                      mov r3, #0xc
003d5894  93 40 24 e0                                      mla r4, r3, r0, r4
003d5898  06 00 a0 e1                                      mov r0, r6
003d589c  37 36 ff eb                                      bl #0x3a3180
003d58a0  04 c0 94 e5                                      ldr ip, [r4, #4]
003d58a4  00 00 5c e3                                      cmp ip, #0
003d58a8  c0 ff ff 0a                                      beq #0x3d57b0
003d58ac  08 20 94 e5                                      ldr r2, [r4, #8]
003d58b0  04 30 92 e5                                      ldr r3, [r2, #4]
003d58b4  03 00 50 e1                                      cmp r0, r3
003d58b8  00 30 a0 13                                      movne r3, #0
003d58bc  03 00 00 1a                                      bne #0x3d58d0
003d58c0  46 00 00 ea                                      b #0x3d59e0
003d58c4  04 10 92 e5                                      ldr r1, [r2, #4]
003d58c8  01 00 50 e1                                      cmp r0, r1
003d58cc  43 00 00 0a                                      beq #0x3d59e0
003d58d0  01 30 83 e2                                      add r3, r3, #1
003d58d4  0c 00 53 e1                                      cmp r3, ip
003d58d8  0c 20 82 e2                                      add r2, r2, #0xc
003d58dc  f8 ff ff 1a                                      bne #0x3d58c4
003d58e0  b2 ff ff ea                                      b #0x3d57b0
003d58e4  07 00 a0 e1                                      mov r0, r7
003d58e8  04 10 95 e5                                      ldr r1, [r5, #4]
003d58ec  00 30 97 e5                                      ldr r3, [r7]
003d58f0  0f e0 a0 e1                                      mov lr, pc
003d58f4  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003d58f8  08 00 50 e3                                      cmp r0, #8
003d58fc  00 00 a0 13                                      movne r0, #0
003d5900  01 00 a0 03                                      moveq r0, #1
003d5904  aa ff ff ea                                      b #0x3d57b4
003d5908  00 30 96 e5                                      ldr r3, [r6]
003d590c  06 00 a0 e1                                      mov r0, r6
003d5910  0f e0 a0 e1                                      mov lr, pc
003d5914  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d5918  00 00 50 e3                                      cmp r0, #0
003d591c  a3 ff ff 1a                                      bne #0x3d57b0
003d5920  d5 ff ff ea                                      b #0x3d587c
003d5924  30 31 9f e5                                      ldr r3, [pc, #0x130]
003d5928  03 30 94 e7                                      ldr r3, [r4, r3]
003d592c  00 30 93 e5                                      ldr r3, [r3]
003d5930  02 00 53 e3                                      cmp r3, #2
003d5934  00 30 a0 03                                      moveq r3, #0
003d5938  00 30 83 05                                      streq r3, [r3]
003d593c  b8 ff ff 0a                                      beq #0x3d5824
003d5940  01 00 53 e3                                      cmp r3, #1
003d5944  b6 ff ff 1a                                      bne #0x3d5824
003d5948  14 01 9f e5                                      ldr r0, [pc, #0x114]
003d594c  14 11 9f e5                                      ldr r1, [pc, #0x114]
003d5950  14 21 9f e5                                      ldr r2, [pc, #0x114]
003d5954  00 00 94 e7                                      ldr r0, [r4, r0]
003d5958  10 31 9f e5                                      ldr r3, [pc, #0x110]
003d595c  09 c1 00 e3                                      movw ip, #0x109
003d5960  01 10 8f e0                                      add r1, pc, r1
003d5964  02 20 8f e0                                      add r2, pc, r2
003d5968  03 30 8f e0                                      add r3, pc, r3
003d596c  a8 00 80 e2                                      add r0, r0, #0xa8
003d5970  00 c0 8d e5                                      str ip, [sp]
003d5974  a2 e1 fc eb                                      bl #0x30e004
003d5978  a9 ff ff ea                                      b #0x3d5824
003d597c  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
003d5980  03 30 94 e7                                      ldr r3, [r4, r3]
003d5984  00 30 93 e5                                      ldr r3, [r3]
003d5988  02 00 53 e3                                      cmp r3, #2
003d598c  00 80 88 05                                      streq r8, [r8]
003d5990  8f ff ff 0a                                      beq #0x3d57d4
003d5994  01 00 53 e3                                      cmp r3, #1
003d5998  8d ff ff 1a                                      bne #0x3d57d4
003d599c  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
003d59a0  cc 10 9f e5                                      ldr r1, [pc, #0xcc]
003d59a4  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
003d59a8  00 00 94 e7                                      ldr r0, [r4, r0]
003d59ac  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003d59b0  07 c1 00 e3                                      movw ip, #0x107
003d59b4  01 10 8f e0                                      add r1, pc, r1
003d59b8  02 20 8f e0                                      add r2, pc, r2
003d59bc  03 30 8f e0                                      add r3, pc, r3
003d59c0  a8 00 80 e2                                      add r0, r0, #0xa8
003d59c4  00 c0 8d e5                                      str ip, [sp]
003d59c8  8d e1 fc eb                                      bl #0x30e004
003d59cc  80 ff ff ea                                      b #0x3d57d4
003d59d0  40 70 90 e5                                      ldr r7, [r0, #0x40]
003d59d4  00 00 57 e3                                      cmp r7, #0
003d59d8  74 ff ff 0a                                      beq #0x3d57b0
003d59dc  61 ff ff ea                                      b #0x3d5768
003d59e0  08 00 92 e5                                      ldr r0, [r2, #8]
003d59e4  a0 0f a0 e1                                      lsr r0, r0, #0x1f
003d59e8  71 ff ff ea                                      b #0x3d57b4
003d59ec  70 00 9f e5                                      ldr r0, [pc, #0x70]
003d59f0  88 10 9f e5                                      ldr r1, [pc, #0x88]
003d59f4  88 20 9f e5                                      ldr r2, [pc, #0x88]
003d59f8  00 00 94 e7                                      ldr r0, [r4, r0]
003d59fc  84 30 9f e5                                      ldr r3, [pc, #0x84]
003d5a00  0a c1 00 e3                                      movw ip, #0x10a
003d5a04  01 10 8f e0                                      add r1, pc, r1
003d5a08  02 20 8f e0                                      add r2, pc, r2
003d5a0c  03 30 8f e0                                      add r3, pc, r3
003d5a10  a8 00 80 e2                                      add r0, r0, #0xa8
003d5a14  00 c0 8d e5                                      str ip, [sp]
003d5a18  79 e1 fc eb                                      bl #0x30e004
003d5a1c  8f ff ff ea                                      b #0x3d5860
003d5a20  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003d5a24  60 10 9f e5                                      ldr r1, [pc, #0x60]
003d5a28  60 20 9f e5                                      ldr r2, [pc, #0x60]
003d5a2c  00 00 94 e7                                      ldr r0, [r4, r0]
003d5a30  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003d5a34  42 cf a0 e3                                      mov ip, #0x108
003d5a38  01 10 8f e0                                      add r1, pc, r1
003d5a3c  02 20 8f e0                                      add r2, pc, r2
003d5a40  03 30 8f e0                                      add r3, pc, r3
003d5a44  a8 00 80 e2                                      add r0, r0, #0xa8
003d5a48  00 c0 8d e5                                      str ip, [sp]
003d5a4c  6c e1 fc eb                                      bl #0x30e004
003d5a50  6f ff ff ea                                      b #0x3d5814
; mapping-symbol data/literal pool
003d5a54  30 f3 5b 00 44 22 00 00 c0 39 00 00 2c 46 00 00  .byte 0x30, 0xf3, 0x5b, 0x00, 0x44, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x2c, 0x46, 0x00, 0x00
003d5a64  c0 19 00 00 78 8a 4e 00 14 fd 4e 00 58 fc 4e 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x78, 0x8a, 0x4e, 0x00, 0x14, 0xfd, 0x4e, 0x00, 0x58, 0xfc, 0x4e, 0x00
003d5a74  24 8a 4e 00 60 fc 4e 00 04 fc 4e 00 d4 89 4e 00  .byte 0x24, 0x8a, 0x4e, 0x00, 0x60, 0xfc, 0x4e, 0x00, 0x04, 0xfc, 0x4e, 0x00, 0xd4, 0x89, 0x4e, 0x00
003d5a84  90 fc 4e 00 b4 fb 4e 00 a0 89 4e 00 fc fb 4e 00  .byte 0x90, 0xfc, 0x4e, 0x00, 0xb4, 0xfb, 0x4e, 0x00, 0xa0, 0x89, 0x4e, 0x00, 0xfc, 0xfb, 0x4e, 0x00
003d5a94  80 fb 4e 00                                      .byte 0x80, 0xfb, 0x4e, 0x00

; FUNCTION 0x003d5a98, declared_size=716, range_size=716, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_IsNeutralEPK10GameObject
; demangled: CharAI::AI_IsNeutral(GameObject const*) const
; decoder-mode: arm
003d5a98  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d5a9c  7c 42 9f e5                                      ldr r4, [pc, #0x27c]
003d5aa0  00 00 51 e3                                      cmp r1, #0
003d5aa4  1c d0 4d e2                                      sub sp, sp, #0x1c
003d5aa8  00 50 a0 e1                                      mov r5, r0
003d5aac  04 40 8f e0                                      add r4, pc, r4
003d5ab0  7c 00 00 0a                                      beq #0x3d5ca8
003d5ab4  0c 60 8d e2                                      add r6, sp, #0xc
003d5ab8  06 00 a0 e1                                      mov r0, r6
003d5abc  ab a0 fd eb                                      bl #0x33dd70
003d5ac0  06 00 a0 e1                                      mov r0, r6
003d5ac4  00 10 a0 e3                                      mov r1, #0
003d5ac8  2f a9 fd eb                                      bl #0x33ff8c
003d5acc  00 60 50 e2                                      subs r6, r0, #0
003d5ad0  02 00 00 1a                                      bne #0x3d5ae0
003d5ad4  01 00 a0 e3                                      mov r0, #1
003d5ad8  1c d0 8d e2                                      add sp, sp, #0x1c
003d5adc  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d5ae0  f4 70 96 e5                                      ldr r7, [r6, #0xf4]
003d5ae4  00 00 57 e3                                      cmp r7, #0
003d5ae8  f9 ff ff 1a                                      bne #0x3d5ad4
003d5aec  a3 35 ff eb                                      bl #0x3a3180
003d5af0  00 00 50 e3                                      cmp r0, #0
003d5af4  56 00 00 ba                                      blt #0x3d5c54
003d5af8  06 00 a0 e1                                      mov r0, r6
003d5afc  9f 35 ff eb                                      bl #0x3a3180
003d5b00  1c 72 9f e5                                      ldr r7, [pc, #0x21c]
003d5b04  07 30 94 e7                                      ldr r3, [r4, r7]
003d5b08  00 30 93 e5                                      ldr r3, [r3]
003d5b0c  03 00 50 e1                                      cmp r0, r3
003d5b10  08 00 00 ba                                      blt #0x3d5b38
003d5b14  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
003d5b18  03 30 94 e7                                      ldr r3, [r4, r3]
003d5b1c  00 30 93 e5                                      ldr r3, [r3]
003d5b20  02 00 53 e3                                      cmp r3, #2
003d5b24  00 30 a0 03                                      moveq r3, #0
003d5b28  00 30 83 05                                      streq r3, [r3]
003d5b2c  01 00 00 0a                                      beq #0x3d5b38
003d5b30  01 00 53 e3                                      cmp r3, #1
003d5b34  6c 00 00 0a                                      beq #0x3d5cec
003d5b38  04 00 95 e5                                      ldr r0, [r5, #4]
003d5b3c  8f 35 ff eb                                      bl #0x3a3180
003d5b40  00 00 50 e3                                      cmp r0, #0
003d5b44  2c 00 00 ba                                      blt #0x3d5bfc
003d5b48  04 00 95 e5                                      ldr r0, [r5, #4]
003d5b4c  8b 35 ff eb                                      bl #0x3a3180
003d5b50  07 30 94 e7                                      ldr r3, [r4, r7]
003d5b54  00 30 93 e5                                      ldr r3, [r3]
003d5b58  03 00 50 e1                                      cmp r0, r3
003d5b5c  08 00 00 ba                                      blt #0x3d5b84
003d5b60  c0 31 9f e5                                      ldr r3, [pc, #0x1c0]
003d5b64  03 30 94 e7                                      ldr r3, [r4, r3]
003d5b68  00 30 93 e5                                      ldr r3, [r3]
003d5b6c  02 00 53 e3                                      cmp r3, #2
003d5b70  00 30 a0 03                                      moveq r3, #0
003d5b74  00 30 83 05                                      streq r3, [r3]
003d5b78  01 00 00 0a                                      beq #0x3d5b84
003d5b7c  01 00 53 e3                                      cmp r3, #1
003d5b80  4c 00 00 0a                                      beq #0x3d5cb8
003d5b84  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
003d5b88  04 00 95 e5                                      ldr r0, [r5, #4]
003d5b8c  03 30 94 e7                                      ldr r3, [r4, r3]
003d5b90  00 40 93 e5                                      ldr r4, [r3]
003d5b94  79 35 ff eb                                      bl #0x3a3180
003d5b98  0c 30 a0 e3                                      mov r3, #0xc
003d5b9c  93 40 24 e0                                      mla r4, r3, r0, r4
003d5ba0  06 00 a0 e1                                      mov r0, r6
003d5ba4  75 35 ff eb                                      bl #0x3a3180
003d5ba8  04 c0 94 e5                                      ldr ip, [r4, #4]
003d5bac  00 00 5c e3                                      cmp ip, #0
003d5bb0  c7 ff ff 0a                                      beq #0x3d5ad4
003d5bb4  08 20 94 e5                                      ldr r2, [r4, #8]
003d5bb8  04 30 92 e5                                      ldr r3, [r2, #4]
003d5bbc  03 00 50 e1                                      cmp r0, r3
003d5bc0  00 30 a0 13                                      movne r3, #0
003d5bc4  03 00 00 1a                                      bne #0x3d5bd8
003d5bc8  07 00 00 ea                                      b #0x3d5bec
003d5bcc  04 10 92 e5                                      ldr r1, [r2, #4]
003d5bd0  01 00 50 e1                                      cmp r0, r1
003d5bd4  04 00 00 0a                                      beq #0x3d5bec
003d5bd8  01 30 83 e2                                      add r3, r3, #1
003d5bdc  0c 00 53 e1                                      cmp r3, ip
003d5be0  0c 20 82 e2                                      add r2, r2, #0xc
003d5be4  f8 ff ff 1a                                      bne #0x3d5bcc
003d5be8  b9 ff ff ea                                      b #0x3d5ad4
003d5bec  08 00 92 e5                                      ldr r0, [r2, #8]
003d5bf0  01 00 70 e2                                      rsbs r0, r0, #1
003d5bf4  00 00 a0 33                                      movlo r0, #0
003d5bf8  b6 ff ff ea                                      b #0x3d5ad8
003d5bfc  24 31 9f e5                                      ldr r3, [pc, #0x124]
003d5c00  03 30 94 e7                                      ldr r3, [r4, r3]
003d5c04  00 30 93 e5                                      ldr r3, [r3]
003d5c08  02 00 53 e3                                      cmp r3, #2
003d5c0c  00 30 a0 03                                      moveq r3, #0
003d5c10  00 30 83 05                                      streq r3, [r3]
003d5c14  cb ff ff 0a                                      beq #0x3d5b48
003d5c18  01 00 53 e3                                      cmp r3, #1
003d5c1c  c9 ff ff 1a                                      bne #0x3d5b48
003d5c20  08 01 9f e5                                      ldr r0, [pc, #0x108]
003d5c24  08 11 9f e5                                      ldr r1, [pc, #0x108]
003d5c28  08 21 9f e5                                      ldr r2, [pc, #0x108]
003d5c2c  00 00 94 e7                                      ldr r0, [r4, r0]
003d5c30  04 31 9f e5                                      ldr r3, [pc, #0x104]
003d5c34  e4 c0 a0 e3                                      mov ip, #0xe4
003d5c38  01 10 8f e0                                      add r1, pc, r1
003d5c3c  02 20 8f e0                                      add r2, pc, r2
003d5c40  03 30 8f e0                                      add r3, pc, r3
003d5c44  a8 00 80 e2                                      add r0, r0, #0xa8
003d5c48  00 c0 8d e5                                      str ip, [sp]
003d5c4c  ec e0 fc eb                                      bl #0x30e004
003d5c50  bc ff ff ea                                      b #0x3d5b48
003d5c54  cc 30 9f e5                                      ldr r3, [pc, #0xcc]
003d5c58  03 30 94 e7                                      ldr r3, [r4, r3]
003d5c5c  00 30 93 e5                                      ldr r3, [r3]
003d5c60  02 00 53 e3                                      cmp r3, #2
003d5c64  00 70 87 05                                      streq r7, [r7]
003d5c68  a2 ff ff 0a                                      beq #0x3d5af8
003d5c6c  01 00 53 e3                                      cmp r3, #1
003d5c70  a0 ff ff 1a                                      bne #0x3d5af8
003d5c74  b4 00 9f e5                                      ldr r0, [pc, #0xb4]
003d5c78  c0 10 9f e5                                      ldr r1, [pc, #0xc0]
003d5c7c  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
003d5c80  00 00 94 e7                                      ldr r0, [r4, r0]
003d5c84  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
003d5c88  e2 c0 a0 e3                                      mov ip, #0xe2
003d5c8c  01 10 8f e0                                      add r1, pc, r1
003d5c90  02 20 8f e0                                      add r2, pc, r2
003d5c94  03 30 8f e0                                      add r3, pc, r3
003d5c98  a8 00 80 e2                                      add r0, r0, #0xa8
003d5c9c  00 c0 8d e5                                      str ip, [sp]
003d5ca0  d7 e0 fc eb                                      bl #0x30e004
003d5ca4  93 ff ff ea                                      b #0x3d5af8
003d5ca8  40 10 90 e5                                      ldr r1, [r0, #0x40]
003d5cac  00 00 51 e3                                      cmp r1, #0
003d5cb0  87 ff ff 0a                                      beq #0x3d5ad4
003d5cb4  7e ff ff ea                                      b #0x3d5ab4
003d5cb8  70 00 9f e5                                      ldr r0, [pc, #0x70]
003d5cbc  88 10 9f e5                                      ldr r1, [pc, #0x88]
003d5cc0  88 20 9f e5                                      ldr r2, [pc, #0x88]
003d5cc4  00 00 94 e7                                      ldr r0, [r4, r0]
003d5cc8  84 30 9f e5                                      ldr r3, [pc, #0x84]
003d5ccc  e5 c0 a0 e3                                      mov ip, #0xe5
003d5cd0  01 10 8f e0                                      add r1, pc, r1
003d5cd4  02 20 8f e0                                      add r2, pc, r2
003d5cd8  03 30 8f e0                                      add r3, pc, r3
003d5cdc  a8 00 80 e2                                      add r0, r0, #0xa8
003d5ce0  00 c0 8d e5                                      str ip, [sp]
003d5ce4  c6 e0 fc eb                                      bl #0x30e004
003d5ce8  a5 ff ff ea                                      b #0x3d5b84
003d5cec  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003d5cf0  60 10 9f e5                                      ldr r1, [pc, #0x60]
003d5cf4  60 20 9f e5                                      ldr r2, [pc, #0x60]
003d5cf8  00 00 94 e7                                      ldr r0, [r4, r0]
003d5cfc  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
003d5d00  e3 c0 a0 e3                                      mov ip, #0xe3
003d5d04  01 10 8f e0                                      add r1, pc, r1
003d5d08  02 20 8f e0                                      add r2, pc, r2
003d5d0c  03 30 8f e0                                      add r3, pc, r3
003d5d10  a8 00 80 e2                                      add r0, r0, #0xa8
003d5d14  00 c0 8d e5                                      str ip, [sp]
003d5d18  b9 e0 fc eb                                      bl #0x30e004
003d5d1c  85 ff ff ea                                      b #0x3d5b38
; mapping-symbol data/literal pool
003d5d20  e4 ef 5b 00 44 22 00 00 c0 39 00 00 2c 46 00 00  .byte 0xe4, 0xef, 0x5b, 0x00, 0x44, 0x22, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0x2c, 0x46, 0x00, 0x00
003d5d30  c0 19 00 00 a0 87 4e 00 3c fa 4e 00 80 f9 4e 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xa0, 0x87, 0x4e, 0x00, 0x3c, 0xfa, 0x4e, 0x00, 0x80, 0xf9, 0x4e, 0x00
003d5d40  4c 87 4e 00 88 f9 4e 00 2c f9 4e 00 08 87 4e 00  .byte 0x4c, 0x87, 0x4e, 0x00, 0x88, 0xf9, 0x4e, 0x00, 0x2c, 0xf9, 0x4e, 0x00, 0x08, 0x87, 0x4e, 0x00
003d5d50  c4 f9 4e 00 e8 f8 4e 00 d4 86 4e 00 30 f9 4e 00  .byte 0xc4, 0xf9, 0x4e, 0x00, 0xe8, 0xf8, 0x4e, 0x00, 0xd4, 0x86, 0x4e, 0x00, 0x30, 0xf9, 0x4e, 0x00
003d5d60  b4 f8 4e 00                                      .byte 0xb4, 0xf8, 0x4e, 0x00

; FUNCTION 0x003d5fa8, declared_size=480, range_size=480, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI16AI_ClearAllAggroEv
; demangled: CharAI::AI_ClearAllAggro()
; decoder-mode: arm
003d5fa8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d5fac  00 30 a0 e3                                      mov r3, #0
003d5fb0  14 d0 4d e2                                      sub sp, sp, #0x14
003d5fb4  00 50 a0 e1                                      mov r5, r0
003d5fb8  8c 10 95 e5                                      ldr r1, [r5, #0x8c]
003d5fbc  0d 00 a0 e1                                      mov r0, sp
003d5fc0  08 30 8d e5                                      str r3, [sp, #8]
003d5fc4  00 30 8d e5                                      str r3, [sp]
003d5fc8  04 30 8d e5                                      str r3, [sp, #4]
003d5fcc  84 40 95 e5                                      ldr r4, [r5, #0x84]
003d5fd0  8f ff ff eb                                      bl #0x3d5e14
003d5fd4  0d a0 a0 e1                                      mov sl, sp
003d5fd8  7c 60 85 e2                                      add r6, r5, #0x7c
003d5fdc  04 70 85 e2                                      add r7, r5, #4
003d5fe0  0c 80 8d e2                                      add r8, sp, #0xc
003d5fe4  06 00 54 e1                                      cmp r4, r6
003d5fe8  2d 00 00 0a                                      beq #0x3d60a4
003d5fec  10 00 94 e5                                      ldr r0, [r4, #0x10]
003d5ff0  60 34 90 e5                                      ldr r3, [r0, #0x460]
003d5ff4  00 00 53 e3                                      cmp r3, #0
003d5ff8  16 00 00 0a                                      beq #0x3d6058
003d5ffc  45 0e 80 e2                                      add r0, r0, #0x450
003d6000  0c 00 80 e2                                      add r0, r0, #0xc
003d6004  00 c0 97 e5                                      ldr ip, [r7]
003d6008  00 10 a0 e1                                      mov r1, r0
003d600c  00 00 00 ea                                      b #0x3d6014
003d6010  02 30 a0 e1                                      mov r3, r2
003d6014  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d6018  0c 00 52 e1                                      cmp r2, ip
003d601c  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
003d6020  08 20 93 25                                      ldrhs r2, [r3, #8]
003d6024  01 30 a0 31                                      movlo r3, r1
003d6028  03 10 a0 e1                                      mov r1, r3
003d602c  00 00 52 e3                                      cmp r2, #0
003d6030  f6 ff ff 1a                                      bne #0x3d6010
003d6034  03 00 50 e1                                      cmp r0, r3
003d6038  06 00 00 0a                                      beq #0x3d6058
003d603c  04 10 95 e5                                      ldr r1, [r5, #4]
003d6040  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d6044  02 00 51 e1                                      cmp r1, r2
003d6048  02 00 00 3a                                      blo #0x3d6058
003d604c  08 10 a0 e1                                      mov r1, r8
003d6050  0c 30 8d e5                                      str r3, [sp, #0xc]
003d6054  50 ff ff eb                                      bl #0x3d5d9c
003d6058  0a 00 9d e9                                      ldmib sp, {r1, r3}
003d605c  03 00 51 e1                                      cmp r1, r3
003d6060  39 00 00 0a                                      beq #0x3d614c
003d6064  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d6068  00 30 81 e5                                      str r3, [r1]
003d606c  04 30 9d e5                                      ldr r3, [sp, #4]
003d6070  04 30 83 e2                                      add r3, r3, #4
003d6074  04 30 8d e5                                      str r3, [sp, #4]
003d6078  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d607c  00 00 52 e3                                      cmp r2, #0
003d6080  01 00 00 1a                                      bne #0x3d608c
003d6084  23 00 00 ea                                      b #0x3d6118
003d6088  03 20 a0 e1                                      mov r2, r3
003d608c  08 30 92 e5                                      ldr r3, [r2, #8]
003d6090  00 00 53 e3                                      cmp r3, #0
003d6094  fb ff ff 1a                                      bne #0x3d6088
003d6098  02 40 a0 e1                                      mov r4, r2
003d609c  06 00 54 e1                                      cmp r4, r6
003d60a0  d1 ff ff 1a                                      bne #0x3d5fec
003d60a4  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
003d60a8  00 00 53 e3                                      cmp r3, #0
003d60ac  2a 00 00 1a                                      bne #0x3d615c
003d60b0  09 00 9d e8                                      ldm sp, {r0, r3}
003d60b4  03 30 60 e0                                      rsb r3, r0, r3
003d60b8  23 31 b0 e1                                      lsrs r3, r3, #2
003d60bc  0b 00 00 0a                                      beq #0x3d60f0
003d60c0  00 40 a0 e3                                      mov r4, #0
003d60c4  04 31 90 e7                                      ldr r3, [r0, r4, lsl #2]
003d60c8  04 10 95 e5                                      ldr r1, [r5, #4]
003d60cc  01 40 84 e2                                      add r4, r4, #1
003d60d0  f2 0f 83 e2                                      add r0, r3, #0x3c8
003d60d4  c8 33 93 e5                                      ldr r3, [r3, #0x3c8]
003d60d8  0f e0 a0 e1                                      mov lr, pc
003d60dc  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003d60e0  09 00 9d e8                                      ldm sp, {r0, r3}
003d60e4  03 30 60 e0                                      rsb r3, r0, r3
003d60e8  43 01 54 e1                                      cmp r4, r3, asr #2
003d60ec  f4 ff ff 3a                                      blo #0x3d60c4
003d60f0  00 00 50 e3                                      cmp r0, #0
003d60f4  05 00 00 0a                                      beq #0x3d6110
003d60f8  08 10 9d e5                                      ldr r1, [sp, #8]
003d60fc  01 10 60 e0                                      rsb r1, r0, r1
003d6100  03 10 c1 e3                                      bic r1, r1, #3
003d6104  80 00 51 e3                                      cmp r1, #0x80
003d6108  1c 00 00 8a                                      bhi #0x3d6180
003d610c  7b cb 0c eb                                      bl #0x708f00
003d6110  14 d0 8d e2                                      add sp, sp, #0x14
003d6114  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d6118  04 30 94 e5                                      ldr r3, [r4, #4]
003d611c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d6120  01 00 54 e1                                      cmp r4, r1
003d6124  05 00 00 1a                                      bne #0x3d6140
003d6128  03 40 a0 e1                                      mov r4, r3
003d612c  04 30 93 e5                                      ldr r3, [r3, #4]
003d6130  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d6134  04 00 52 e1                                      cmp r2, r4
003d6138  fa ff ff 0a                                      beq #0x3d6128
003d613c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d6140  02 00 53 e1                                      cmp r3, r2
003d6144  03 40 a0 11                                      movne r4, r3
003d6148  a5 ff ff ea                                      b #0x3d5fe4
003d614c  0d 00 a0 e1                                      mov r0, sp
003d6150  10 20 84 e2                                      add r2, r4, #0x10
003d6154  61 ff ff eb                                      bl #0x3d5ee0
003d6158  c6 ff ff ea                                      b #0x3d6078
003d615c  04 00 a0 e1                                      mov r0, r4
003d6160  80 10 95 e5                                      ldr r1, [r5, #0x80]
003d6164  78 dc ff eb                                      bl #0x3cd34c
003d6168  00 30 a0 e3                                      mov r3, #0
003d616c  88 40 85 e5                                      str r4, [r5, #0x88]
003d6170  8c 30 85 e5                                      str r3, [r5, #0x8c]
003d6174  84 40 85 e5                                      str r4, [r5, #0x84]
003d6178  80 30 85 e5                                      str r3, [r5, #0x80]
003d617c  cb ff ff ea                                      b #0x3d60b0
003d6180  ae e8 fc eb                                      bl #0x310440
003d6184  e1 ff ff ea                                      b #0x3d6110

; FUNCTION 0x003d6188, declared_size=592, range_size=592, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI17AI_IsInMeleeRangeEPK10GameObject
; demangled: CharAI::AI_IsInMeleeRange(GameObject const*) const
; decoder-mode: arm
003d6188  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003d618c  30 42 9f e5                                      ldr r4, [pc, #0x230]
003d6190  30 52 9f e5                                      ldr r5, [pc, #0x230]
003d6194  4c d0 4d e2                                      sub sp, sp, #0x4c
003d6198  04 40 8f e0                                      add r4, pc, r4
003d619c  05 30 94 e7                                      ldr r3, [r4, r5]
003d61a0  00 60 51 e2                                      subs r6, r1, #0
003d61a4  00 80 a0 e1                                      mov r8, r0
003d61a8  00 30 93 e5                                      ldr r3, [r3]
003d61ac  44 30 8d e5                                      str r3, [sp, #0x44]
003d61b0  6c 00 00 0a                                      beq #0x3d6368
003d61b4  06 10 a0 e1                                      mov r1, r6
003d61b8  0d 00 a0 e1                                      mov r0, sp
003d61bc  eb 9e fd eb                                      bl #0x33dd70
003d61c0  0d 00 a0 e1                                      mov r0, sp
003d61c4  00 10 a0 e3                                      mov r1, #0
003d61c8  6f a7 fd eb                                      bl #0x33ff8c
003d61cc  00 a0 50 e2                                      subs sl, r0, #0
003d61d0  0d 70 a0 e1                                      mov r7, sp
003d61d4  09 00 00 1a                                      bne #0x3d6200
003d61d8  08 00 a0 e1                                      mov r0, r8
003d61dc  06 10 a0 e1                                      mov r1, r6
003d61e0  6c fb ff eb                                      bl #0x3d4f98
003d61e4  05 30 94 e7                                      ldr r3, [r4, r5]
003d61e8  44 20 9d e5                                      ldr r2, [sp, #0x44]
003d61ec  00 30 93 e5                                      ldr r3, [r3]
003d61f0  03 00 52 e1                                      cmp r2, r3
003d61f4  71 00 00 1a                                      bne #0x3d63c0
003d61f8  4c d0 8d e2                                      add sp, sp, #0x4c
003d61fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003d6200  f4 30 9a e5                                      ldr r3, [sl, #0xf4]
003d6204  00 00 53 e3                                      cmp r3, #0
003d6208  f2 ff ff 1a                                      bne #0x3d61d8
003d620c  00 30 9a e5                                      ldr r3, [sl]
003d6210  04 10 98 e5                                      ldr r1, [r8, #4]
003d6214  0f e0 a0 e1                                      mov lr, pc
003d6218  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003d621c  08 00 50 e3                                      cmp r0, #8
003d6220  ec ff ff 1a                                      bne #0x3d61d8
003d6224  04 00 98 e5                                      ldr r0, [r8, #4]
003d6228  eb f4 fe eb                                      bl #0x3935dc
003d622c  00 70 a0 e1                                      mov r7, r0
003d6230  06 00 a0 e1                                      mov r0, r6
003d6234  e8 f4 fe eb                                      bl #0x3935dc
003d6238  00 60 a0 e1                                      mov r6, r0
003d623c  00 10 90 e5                                      ldr r1, [r0]
003d6240  00 00 97 e5                                      ldr r0, [r7]
003d6244  58 e0 fc eb                                      bl #0x30e3ac
003d6248  04 10 96 e5                                      ldr r1, [r6, #4]
003d624c  00 b0 a0 e1                                      mov fp, r0
003d6250  04 00 97 e5                                      ldr r0, [r7, #4]
003d6254  54 e0 fc eb                                      bl #0x30e3ac
003d6258  08 10 96 e5                                      ldr r1, [r6, #8]
003d625c  00 90 a0 e1                                      mov sb, r0
003d6260  08 00 97 e5                                      ldr r0, [r7, #8]
003d6264  50 e0 fc eb                                      bl #0x30e3ac
003d6268  0b 10 a0 e1                                      mov r1, fp
003d626c  00 70 a0 e1                                      mov r7, r0
003d6270  0b 00 a0 e1                                      mov r0, fp
003d6274  bc e2 fc eb                                      bl #0x30ed6c
003d6278  09 10 a0 e1                                      mov r1, sb
003d627c  00 60 a0 e1                                      mov r6, r0
003d6280  09 00 a0 e1                                      mov r0, sb
003d6284  b8 e2 fc eb                                      bl #0x30ed6c
003d6288  00 10 a0 e1                                      mov r1, r0
003d628c  06 00 a0 e1                                      mov r0, r6
003d6290  43 e2 fc eb                                      bl #0x30eba4
003d6294  07 10 a0 e1                                      mov r1, r7
003d6298  00 60 a0 e1                                      mov r6, r0
003d629c  07 00 a0 e1                                      mov r0, r7
003d62a0  b1 e2 fc eb                                      bl #0x30ed6c
003d62a4  00 10 a0 e1                                      mov r1, r0
003d62a8  06 00 a0 e1                                      mov r0, r6
003d62ac  3c e2 fc eb                                      bl #0x30eba4
003d62b0  00 70 a0 e1                                      mov r7, r0
003d62b4  08 00 a0 e1                                      mov r0, r8
003d62b8  5d fa ff eb                                      bl #0x3d4c34
003d62bc  00 60 a0 e1                                      mov r6, r0
003d62c0  f2 0f 8a e2                                      add r0, sl, #0x3c8
003d62c4  5a fa ff eb                                      bl #0x3d4c34
003d62c8  00 10 a0 e1                                      mov r1, r0
003d62cc  06 00 a0 e1                                      mov r0, r6
003d62d0  33 e2 fc eb                                      bl #0x30eba4
003d62d4  f0 90 9f e5                                      ldr sb, [pc, #0xf0]
003d62d8  00 60 a0 e1                                      mov r6, r0
003d62dc  2c 80 8d e2                                      add r8, sp, #0x2c
003d62e0  09 a0 94 e7                                      ldr sl, [r4, sb]
003d62e4  0a 00 a0 e1                                      mov r0, sl
003d62e8  66 85 fd eb                                      bl #0x337888
003d62ec  dc 10 9f e5                                      ldr r1, [pc, #0xdc]
003d62f0  10 20 8d e2                                      add r2, sp, #0x10
003d62f4  08 00 a0 e1                                      mov r0, r8
003d62f8  01 10 8f e0                                      add r1, pc, r1
003d62fc  7a f7 fc eb                                      bl #0x3140ec
003d6300  0a 00 a0 e1                                      mov r0, sl
003d6304  08 10 a0 e1                                      mov r1, r8
003d6308  de 85 fd eb                                      bl #0x337a88
003d630c  00 a0 a0 e1                                      mov sl, r0
003d6310  40 00 9d e5                                      ldr r0, [sp, #0x40]
003d6314  08 00 50 e1                                      cmp r0, r8
003d6318  06 00 00 0a                                      beq #0x3d6338
003d631c  00 00 50 e3                                      cmp r0, #0
003d6320  04 00 00 0a                                      beq #0x3d6338
003d6324  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
003d6328  01 10 60 e0                                      rsb r1, r0, r1
003d632c  80 00 51 e3                                      cmp r1, #0x80
003d6330  20 00 00 8a                                      bhi #0x3d63b8
003d6334  f1 ca 0c eb                                      bl #0x708f00
003d6338  00 00 5a e3                                      cmp sl, #0
003d633c  0e 00 00 1a                                      bne #0x3d637c
003d6340  06 10 a0 e1                                      mov r1, r6
003d6344  06 00 a0 e1                                      mov r0, r6
003d6348  87 e2 fc eb                                      bl #0x30ed6c
003d634c  07 10 a0 e1                                      mov r1, r7
003d6350  e8 df fc eb                                      bl #0x30e2f8
003d6354  00 00 50 e3                                      cmp r0, #0
003d6358  00 00 a0 e3                                      mov r0, #0
003d635c  01 00 a0 13                                      movne r0, #1
003d6360  70 00 ef e6                                      uxtb r0, r0
003d6364  9e ff ff ea                                      b #0x3d61e4
003d6368  40 60 90 e5                                      ldr r6, [r0, #0x40]
003d636c  00 00 56 e3                                      cmp r6, #0
003d6370  06 00 a0 01                                      moveq r0, r6
003d6374  9a ff ff 0a                                      beq #0x3d61e4
003d6378  8d ff ff ea                                      b #0x3d61b4
003d637c  09 a0 94 e7                                      ldr sl, [r4, sb]
003d6380  14 80 8d e2                                      add r8, sp, #0x14
003d6384  0a 00 a0 e1                                      mov r0, sl
003d6388  3e 85 fd eb                                      bl #0x337888
003d638c  40 10 9f e5                                      ldr r1, [pc, #0x40]
003d6390  0c 20 8d e2                                      add r2, sp, #0xc
003d6394  08 00 a0 e1                                      mov r0, r8
003d6398  01 10 8f e0                                      add r1, pc, r1
003d639c  52 f7 fc eb                                      bl #0x3140ec
003d63a0  0a 00 a0 e1                                      mov r0, sl
003d63a4  08 10 a0 e1                                      mov r1, r8
003d63a8  b6 85 fd eb                                      bl #0x337a88
003d63ac  08 00 a0 e1                                      mov r0, r8
003d63b0  a7 07 fd eb                                      bl #0x318254
003d63b4  e1 ff ff ea                                      b #0x3d6340
003d63b8  20 e8 fc eb                                      bl #0x310440
003d63bc  dd ff ff ea                                      b #0x3d6338
003d63c0  d2 df fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d63c4  f8 e8 5b 00 ac 40 00 00 84 08 00 00 e0 f3 4e 00  .byte 0xf8, 0xe8, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe0, 0xf3, 0x4e, 0x00
003d63d4  58 f3 4e 00                                      .byte 0x58, 0xf3, 0x4e, 0x00

; FUNCTION 0x003d63d8, declared_size=556, range_size=556, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI17AI_IsInCloseRangeEPK10GameObject
; demangled: CharAI::AI_IsInCloseRange(GameObject const*) const
; decoder-mode: arm
003d63d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d63dc  0c 42 9f e5                                      ldr r4, [pc, #0x20c]
003d63e0  0c 52 9f e5                                      ldr r5, [pc, #0x20c]
003d63e4  54 d0 4d e2                                      sub sp, sp, #0x54
003d63e8  04 40 8f e0                                      add r4, pc, r4
003d63ec  05 30 94 e7                                      ldr r3, [r4, r5]
003d63f0  00 60 51 e2                                      subs r6, r1, #0
003d63f4  00 70 a0 e1                                      mov r7, r0
003d63f8  00 30 93 e5                                      ldr r3, [r3]
003d63fc  4c 30 8d e5                                      str r3, [sp, #0x4c]
003d6400  66 00 00 0a                                      beq #0x3d65a0
003d6404  06 10 a0 e1                                      mov r1, r6
003d6408  0d 00 a0 e1                                      mov r0, sp
003d640c  57 9e fd eb                                      bl #0x33dd70
003d6410  0d 00 a0 e1                                      mov r0, sp
003d6414  00 10 a0 e3                                      mov r1, #0
003d6418  db a6 fd eb                                      bl #0x33ff8c
003d641c  00 30 50 e2                                      subs r3, r0, #0
003d6420  0d 80 a0 e1                                      mov r8, sp
003d6424  09 00 00 1a                                      bne #0x3d6450
003d6428  07 00 a0 e1                                      mov r0, r7
003d642c  06 10 a0 e1                                      mov r1, r6
003d6430  d8 fa ff eb                                      bl #0x3d4f98
003d6434  05 30 94 e7                                      ldr r3, [r4, r5]
003d6438  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
003d643c  00 30 93 e5                                      ldr r3, [r3]
003d6440  03 00 52 e1                                      cmp r2, r3
003d6444  68 00 00 1a                                      bne #0x3d65ec
003d6448  54 d0 8d e2                                      add sp, sp, #0x54
003d644c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d6450  f4 20 93 e5                                      ldr r2, [r3, #0xf4]
003d6454  00 00 52 e3                                      cmp r2, #0
003d6458  f2 ff ff 1a                                      bne #0x3d6428
003d645c  00 30 93 e5                                      ldr r3, [r3]
003d6460  04 10 97 e5                                      ldr r1, [r7, #4]
003d6464  0f e0 a0 e1                                      mov lr, pc
003d6468  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003d646c  08 00 50 e3                                      cmp r0, #8
003d6470  ec ff ff 1a                                      bne #0x3d6428
003d6474  04 30 97 e5                                      ldr r3, [r7, #4]
003d6478  0c 20 8d e2                                      add r2, sp, #0xc
003d647c  10 10 8d e2                                      add r1, sp, #0x10
003d6480  03 00 a0 e1                                      mov r0, r3
003d6484  00 c0 93 e5                                      ldr ip, [r3]
003d6488  02 30 a0 e1                                      mov r3, r2
003d648c  0f e0 a0 e1                                      mov lr, pc
003d6490  28 f1 9c e5                                      ldr pc, [ip, #0x128]
003d6494  00 00 50 e3                                      cmp r0, #0
003d6498  00 00 a0 03                                      moveq r0, #0
003d649c  e4 ff ff 0a                                      beq #0x3d6434
003d64a0  04 00 97 e5                                      ldr r0, [r7, #4]
003d64a4  4c f4 fe eb                                      bl #0x3935dc
003d64a8  00 70 a0 e1                                      mov r7, r0
003d64ac  06 00 a0 e1                                      mov r0, r6
003d64b0  49 f4 fe eb                                      bl #0x3935dc
003d64b4  00 60 a0 e1                                      mov r6, r0
003d64b8  00 10 90 e5                                      ldr r1, [r0]
003d64bc  00 00 97 e5                                      ldr r0, [r7]
003d64c0  b9 df fc eb                                      bl #0x30e3ac
003d64c4  04 10 96 e5                                      ldr r1, [r6, #4]
003d64c8  00 a0 a0 e1                                      mov sl, r0
003d64cc  04 00 97 e5                                      ldr r0, [r7, #4]
003d64d0  b5 df fc eb                                      bl #0x30e3ac
003d64d4  08 10 96 e5                                      ldr r1, [r6, #8]
003d64d8  00 80 a0 e1                                      mov r8, r0
003d64dc  08 00 97 e5                                      ldr r0, [r7, #8]
003d64e0  b1 df fc eb                                      bl #0x30e3ac
003d64e4  0a 10 a0 e1                                      mov r1, sl
003d64e8  00 70 a0 e1                                      mov r7, r0
003d64ec  0a 00 a0 e1                                      mov r0, sl
003d64f0  1d e2 fc eb                                      bl #0x30ed6c
003d64f4  08 10 a0 e1                                      mov r1, r8
003d64f8  00 60 a0 e1                                      mov r6, r0
003d64fc  08 00 a0 e1                                      mov r0, r8
003d6500  19 e2 fc eb                                      bl #0x30ed6c
003d6504  00 10 a0 e1                                      mov r1, r0
003d6508  06 00 a0 e1                                      mov r0, r6
003d650c  a4 e1 fc eb                                      bl #0x30eba4
003d6510  07 10 a0 e1                                      mov r1, r7
003d6514  00 60 a0 e1                                      mov r6, r0
003d6518  07 00 a0 e1                                      mov r0, r7
003d651c  12 e2 fc eb                                      bl #0x30ed6c
003d6520  00 10 a0 e1                                      mov r1, r0
003d6524  06 00 a0 e1                                      mov r0, r6
003d6528  9d e1 fc eb                                      bl #0x30eba4
003d652c  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003d6530  00 80 a0 e1                                      mov r8, r0
003d6534  34 60 8d e2                                      add r6, sp, #0x34
003d6538  03 70 94 e7                                      ldr r7, [r4, r3]
003d653c  07 00 a0 e1                                      mov r0, r7
003d6540  d0 84 fd eb                                      bl #0x337888
003d6544  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
003d6548  18 20 8d e2                                      add r2, sp, #0x18
003d654c  06 00 a0 e1                                      mov r0, r6
003d6550  01 10 8f e0                                      add r1, pc, r1
003d6554  e4 f6 fc eb                                      bl #0x3140ec
003d6558  06 10 a0 e1                                      mov r1, r6
003d655c  07 00 a0 e1                                      mov r0, r7
003d6560  48 85 fd eb                                      bl #0x337a88
003d6564  00 a0 a0 e1                                      mov sl, r0
003d6568  06 00 a0 e1                                      mov r0, r6
003d656c  38 07 fd eb                                      bl #0x318254
003d6570  00 00 5a e3                                      cmp sl, #0
003d6574  0e 00 00 1a                                      bne #0x3d65b4
003d6578  10 00 9d e5                                      ldr r0, [sp, #0x10]
003d657c  00 60 a0 e3                                      mov r6, #0
003d6580  90 00 00 e0                                      mul r0, r0, r0
003d6584  f6 e0 fc eb                                      bl #0x30e964
003d6588  08 10 a0 e1                                      mov r1, r8
003d658c  59 df fc eb                                      bl #0x30e2f8
003d6590  00 00 50 e3                                      cmp r0, #0
003d6594  01 60 a0 13                                      movne r6, #1
003d6598  76 00 ef e6                                      uxtb r0, r6
003d659c  a4 ff ff ea                                      b #0x3d6434
003d65a0  40 60 90 e5                                      ldr r6, [r0, #0x40]
003d65a4  00 00 56 e3                                      cmp r6, #0
003d65a8  95 ff ff 1a                                      bne #0x3d6404
003d65ac  00 00 a0 e3                                      mov r0, #0
003d65b0  9f ff ff ea                                      b #0x3d6434
003d65b4  07 00 a0 e1                                      mov r0, r7
003d65b8  b2 84 fd eb                                      bl #0x337888
003d65bc  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003d65c0  1c 60 8d e2                                      add r6, sp, #0x1c
003d65c4  14 20 8d e2                                      add r2, sp, #0x14
003d65c8  01 10 8f e0                                      add r1, pc, r1
003d65cc  06 00 a0 e1                                      mov r0, r6
003d65d0  c5 f6 fc eb                                      bl #0x3140ec
003d65d4  07 00 a0 e1                                      mov r0, r7
003d65d8  06 10 a0 e1                                      mov r1, r6
003d65dc  29 85 fd eb                                      bl #0x337a88
003d65e0  06 00 a0 e1                                      mov r0, r6
003d65e4  1a 07 fd eb                                      bl #0x318254
003d65e8  e2 ff ff ea                                      b #0x3d6578
003d65ec  47 df fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d65f0  a8 e6 5b 00 ac 40 00 00 84 08 00 00 88 f1 4e 00  .byte 0xa8, 0xe6, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x88, 0xf1, 0x4e, 0x00
003d6600  28 f1 4e 00                                      .byte 0x28, 0xf1, 0x4e, 0x00

; FUNCTION 0x003d6604, declared_size=496, range_size=496, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_IsInRangeEPK10GameObject
; demangled: CharAI::AI_IsInRange(GameObject const*) const
; decoder-mode: arm
003d6604  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d6608  d0 41 9f e5                                      ldr r4, [pc, #0x1d0]
003d660c  d0 51 9f e5                                      ldr r5, [pc, #0x1d0]
003d6610  4c d0 4d e2                                      sub sp, sp, #0x4c
003d6614  04 40 8f e0                                      add r4, pc, r4
003d6618  05 30 94 e7                                      ldr r3, [r4, r5]
003d661c  00 70 51 e2                                      subs r7, r1, #0
003d6620  00 60 a0 e1                                      mov r6, r0
003d6624  00 30 93 e5                                      ldr r3, [r3]
003d6628  44 30 8d e5                                      str r3, [sp, #0x44]
003d662c  58 00 00 0a                                      beq #0x3d6794
003d6630  04 30 96 e5                                      ldr r3, [r6, #4]
003d6634  08 10 8d e2                                      add r1, sp, #8
003d6638  04 20 8d e2                                      add r2, sp, #4
003d663c  03 00 a0 e1                                      mov r0, r3
003d6640  00 c0 93 e5                                      ldr ip, [r3]
003d6644  0d 30 a0 e1                                      mov r3, sp
003d6648  0f e0 a0 e1                                      mov lr, pc
003d664c  28 f1 9c e5                                      ldr pc, [ip, #0x128]
003d6650  00 00 50 e3                                      cmp r0, #0
003d6654  07 00 00 1a                                      bne #0x3d6678
003d6658  00 00 a0 e3                                      mov r0, #0
003d665c  05 30 94 e7                                      ldr r3, [r4, r5]
003d6660  44 20 9d e5                                      ldr r2, [sp, #0x44]
003d6664  00 30 93 e5                                      ldr r3, [r3]
003d6668  03 00 52 e1                                      cmp r2, r3
003d666c  5a 00 00 1a                                      bne #0x3d67dc
003d6670  4c d0 8d e2                                      add sp, sp, #0x4c
003d6674  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d6678  04 00 96 e5                                      ldr r0, [r6, #4]
003d667c  d6 f3 fe eb                                      bl #0x3935dc
003d6680  00 60 a0 e1                                      mov r6, r0
003d6684  07 00 a0 e1                                      mov r0, r7
003d6688  d3 f3 fe eb                                      bl #0x3935dc
003d668c  00 70 a0 e1                                      mov r7, r0
003d6690  00 10 90 e5                                      ldr r1, [r0]
003d6694  00 00 96 e5                                      ldr r0, [r6]
003d6698  43 df fc eb                                      bl #0x30e3ac
003d669c  04 10 97 e5                                      ldr r1, [r7, #4]
003d66a0  00 a0 a0 e1                                      mov sl, r0
003d66a4  04 00 96 e5                                      ldr r0, [r6, #4]
003d66a8  3f df fc eb                                      bl #0x30e3ac
003d66ac  08 10 97 e5                                      ldr r1, [r7, #8]
003d66b0  00 80 a0 e1                                      mov r8, r0
003d66b4  08 00 96 e5                                      ldr r0, [r6, #8]
003d66b8  3b df fc eb                                      bl #0x30e3ac
003d66bc  0a 10 a0 e1                                      mov r1, sl
003d66c0  00 70 a0 e1                                      mov r7, r0
003d66c4  0a 00 a0 e1                                      mov r0, sl
003d66c8  a7 e1 fc eb                                      bl #0x30ed6c
003d66cc  08 10 a0 e1                                      mov r1, r8
003d66d0  00 60 a0 e1                                      mov r6, r0
003d66d4  08 00 a0 e1                                      mov r0, r8
003d66d8  a3 e1 fc eb                                      bl #0x30ed6c
003d66dc  00 10 a0 e1                                      mov r1, r0
003d66e0  06 00 a0 e1                                      mov r0, r6
003d66e4  2e e1 fc eb                                      bl #0x30eba4
003d66e8  07 10 a0 e1                                      mov r1, r7
003d66ec  00 60 a0 e1                                      mov r6, r0
003d66f0  07 00 a0 e1                                      mov r0, r7
003d66f4  9c e1 fc eb                                      bl #0x30ed6c
003d66f8  00 10 a0 e1                                      mov r1, r0
003d66fc  06 00 a0 e1                                      mov r0, r6
003d6700  27 e1 fc eb                                      bl #0x30eba4
003d6704  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
003d6708  00 80 a0 e1                                      mov r8, r0
003d670c  2c 60 8d e2                                      add r6, sp, #0x2c
003d6710  03 70 94 e7                                      ldr r7, [r4, r3]
003d6714  07 00 a0 e1                                      mov r0, r7
003d6718  5a 84 fd eb                                      bl #0x337888
003d671c  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
003d6720  10 20 8d e2                                      add r2, sp, #0x10
003d6724  06 00 a0 e1                                      mov r0, r6
003d6728  01 10 8f e0                                      add r1, pc, r1
003d672c  6e f6 fc eb                                      bl #0x3140ec
003d6730  06 10 a0 e1                                      mov r1, r6
003d6734  07 00 a0 e1                                      mov r0, r7
003d6738  d2 84 fd eb                                      bl #0x337a88
003d673c  00 a0 a0 e1                                      mov sl, r0
003d6740  06 00 a0 e1                                      mov r0, r6
003d6744  c2 06 fd eb                                      bl #0x318254
003d6748  00 00 5a e3                                      cmp sl, #0
003d674c  14 00 00 1a                                      bne #0x3d67a4
003d6750  08 00 9d e5                                      ldr r0, [sp, #8]
003d6754  90 00 00 e0                                      mul r0, r0, r0
003d6758  81 e0 fc eb                                      bl #0x30e964
003d675c  08 10 a0 e1                                      mov r1, r8
003d6760  91 e0 fc eb                                      bl #0x30e9ac
003d6764  00 00 50 e3                                      cmp r0, #0
003d6768  ba ff ff 0a                                      beq #0x3d6658
003d676c  04 00 9d e5                                      ldr r0, [sp, #4]
003d6770  00 60 a0 e3                                      mov r6, #0
003d6774  90 00 00 e0                                      mul r0, r0, r0
003d6778  79 e0 fc eb                                      bl #0x30e964
003d677c  08 10 a0 e1                                      mov r1, r8
003d6780  4b df fc eb                                      bl #0x30e4b4
003d6784  00 00 50 e3                                      cmp r0, #0
003d6788  01 60 a0 13                                      movne r6, #1
003d678c  76 00 ef e6                                      uxtb r0, r6
003d6790  b1 ff ff ea                                      b #0x3d665c
003d6794  40 70 90 e5                                      ldr r7, [r0, #0x40]
003d6798  00 00 57 e3                                      cmp r7, #0
003d679c  ad ff ff 0a                                      beq #0x3d6658
003d67a0  a2 ff ff ea                                      b #0x3d6630
003d67a4  07 00 a0 e1                                      mov r0, r7
003d67a8  36 84 fd eb                                      bl #0x337888
003d67ac  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003d67b0  14 60 8d e2                                      add r6, sp, #0x14
003d67b4  0c 20 8d e2                                      add r2, sp, #0xc
003d67b8  01 10 8f e0                                      add r1, pc, r1
003d67bc  06 00 a0 e1                                      mov r0, r6
003d67c0  49 f6 fc eb                                      bl #0x3140ec
003d67c4  07 00 a0 e1                                      mov r0, r7
003d67c8  06 10 a0 e1                                      mov r1, r6
003d67cc  ad 84 fd eb                                      bl #0x337a88
003d67d0  06 00 a0 e1                                      mov r0, r6
003d67d4  9e 06 fd eb                                      bl #0x318254
003d67d8  dc ff ff ea                                      b #0x3d6750
003d67dc  cb de fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d67e0  7c e4 5b 00 ac 40 00 00 84 08 00 00 b0 ef 4e 00  .byte 0x7c, 0xe4, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xb0, 0xef, 0x4e, 0x00
003d67f0  38 ef 4e 00                                      .byte 0x38, 0xef, 0x4e, 0x00

; FUNCTION 0x003d67f4, declared_size=156, range_size=156, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_CanAttackEP10GameObject
; demangled: CharAI::AI_CanAttack(GameObject*) const
; decoder-mode: arm
003d67f4  70 40 2d e9                                      push {r4, r5, r6, lr}
003d67f8  00 50 51 e2                                      subs r5, r1, #0
003d67fc  00 40 a0 e1                                      mov r4, r0
003d6800  1d 00 00 0a                                      beq #0x3d687c
003d6804  04 00 a0 e1                                      mov r0, r4
003d6808  05 10 a0 e1                                      mov r1, r5
003d680c  ce fb ff eb                                      bl #0x3d574c
003d6810  00 00 50 e3                                      cmp r0, #0
003d6814  01 00 00 1a                                      bne #0x3d6820
003d6818  00 00 a0 e3                                      mov r0, #0
003d681c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d6820  04 00 94 e5                                      ldr r0, [r4, #4]
003d6824  df 0f 80 e2                                      add r0, r0, #0x37c
003d6828  42 a5 00 eb                                      bl #0x3ffd38
003d682c  00 00 50 e3                                      cmp r0, #0
003d6830  06 00 00 0a                                      beq #0x3d6850
003d6834  04 00 a0 e1                                      mov r0, r4
003d6838  05 10 a0 e1                                      mov r1, r5
003d683c  51 fe ff eb                                      bl #0x3d6188
003d6840  00 00 50 e3                                      cmp r0, #0
003d6844  01 00 00 0a                                      beq #0x3d6850
003d6848  01 00 a0 e3                                      mov r0, #1
003d684c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d6850  04 30 94 e5                                      ldr r3, [r4, #4]
003d6854  03 00 a0 e1                                      mov r0, r3
003d6858  00 30 93 e5                                      ldr r3, [r3]
003d685c  0f e0 a0 e1                                      mov lr, pc
003d6860  24 f1 93 e5                                      ldr pc, [r3, #0x124]
003d6864  00 00 50 e3                                      cmp r0, #0
003d6868  ea ff ff 0a                                      beq #0x3d6818
003d686c  04 00 a0 e1                                      mov r0, r4
003d6870  05 10 a0 e1                                      mov r1, r5
003d6874  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d6878  61 ff ff ea                                      b #0x3d6604
003d687c  40 50 90 e5                                      ldr r5, [r0, #0x40]
003d6880  00 00 55 e3                                      cmp r5, #0
003d6884  de ff ff 1a                                      bne #0x3d6804
003d6888  00 00 a0 e3                                      mov r0, #0
003d688c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d6890, declared_size=556, range_size=556, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12AI_SetTargetEP10GameObjectb
; demangled: CharAI::AI_SetTarget(GameObject*, bool)
; decoder-mode: arm
003d6890  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d6894  04 52 9f e5                                      ldr r5, [pc, #0x204]
003d6898  04 72 9f e5                                      ldr r7, [pc, #0x204]
003d689c  78 d0 4d e2                                      sub sp, sp, #0x78
003d68a0  05 50 8f e0                                      add r5, pc, r5
003d68a4  07 30 95 e7                                      ldr r3, [r5, r7]
003d68a8  00 40 a0 e1                                      mov r4, r0
003d68ac  00 00 52 e3                                      cmp r2, #0
003d68b0  00 30 93 e5                                      ldr r3, [r3]
003d68b4  01 60 a0 e1                                      mov r6, r1
003d68b8  3c 10 84 e5                                      str r1, [r4, #0x3c]
003d68bc  74 30 8d e5                                      str r3, [sp, #0x74]
003d68c0  56 00 00 1a                                      bne #0x3d6a20
003d68c4  40 30 90 e5                                      ldr r3, [r0, #0x40]
003d68c8  d8 91 9f e5                                      ldr sb, [pc, #0x1d8]
003d68cc  5c 80 8d e2                                      add r8, sp, #0x5c
003d68d0  01 00 53 e1                                      cmp r3, r1
003d68d4  04 10 90 15                                      ldrne r1, [r0, #4]
003d68d8  09 a0 95 e7                                      ldr sl, [r5, sb]
003d68dc  d0 34 01 13                                      movwne r3, #0x14d0
003d68e0  b3 20 81 11                                      strhne r2, [r1, r3]
003d68e4  0a 00 a0 e1                                      mov r0, sl
003d68e8  e6 83 fd eb                                      bl #0x337888
003d68ec  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
003d68f0  10 20 8d e2                                      add r2, sp, #0x10
003d68f4  08 00 a0 e1                                      mov r0, r8
003d68f8  01 10 8f e0                                      add r1, pc, r1
003d68fc  fa f5 fc eb                                      bl #0x3140ec
003d6900  0a 00 a0 e1                                      mov r0, sl
003d6904  08 10 a0 e1                                      mov r1, r8
003d6908  5e 84 fd eb                                      bl #0x337a88
003d690c  00 a0 a0 e1                                      mov sl, r0
003d6910  70 00 9d e5                                      ldr r0, [sp, #0x70]
003d6914  08 00 50 e1                                      cmp r0, r8
003d6918  06 00 00 0a                                      beq #0x3d6938
003d691c  00 00 50 e3                                      cmp r0, #0
003d6920  04 00 00 0a                                      beq #0x3d6938
003d6924  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
003d6928  01 10 60 e0                                      rsb r1, r0, r1
003d692c  80 00 51 e3                                      cmp r1, #0x80
003d6930  45 00 00 8a                                      bhi #0x3d6a4c
003d6934  71 c9 0c eb                                      bl #0x708f00
003d6938  00 00 5a e3                                      cmp sl, #0
003d693c  18 00 00 0a                                      beq #0x3d69a4
003d6940  40 30 94 e5                                      ldr r3, [r4, #0x40]
003d6944  06 00 53 e1                                      cmp r3, r6
003d6948  15 00 00 0a                                      beq #0x3d69a4
003d694c  00 30 53 e2                                      subs r3, r3, #0
003d6950  01 30 a0 13                                      movne r3, #1
003d6954  00 20 56 e2                                      subs r2, r6, #0
003d6958  01 20 a0 13                                      movne r2, #1
003d695c  03 00 12 e1                                      tst r2, r3
003d6960  30 00 00 1a                                      bne #0x3d6a28
003d6964  00 00 53 e3                                      cmp r3, #0
003d6968  2a 00 00 0a                                      beq #0x3d6a18
003d696c  09 a0 95 e7                                      ldr sl, [r5, sb]
003d6970  2c 80 8d e2                                      add r8, sp, #0x2c
003d6974  0a 00 a0 e1                                      mov r0, sl
003d6978  c2 83 fd eb                                      bl #0x337888
003d697c  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
003d6980  08 20 8d e2                                      add r2, sp, #8
003d6984  08 00 a0 e1                                      mov r0, r8
003d6988  01 10 8f e0                                      add r1, pc, r1
003d698c  d6 f5 fc eb                                      bl #0x3140ec
003d6990  0a 00 a0 e1                                      mov r0, sl
003d6994  08 10 a0 e1                                      mov r1, r8
003d6998  3a 84 fd eb                                      bl #0x337a88
003d699c  08 00 a0 e1                                      mov r0, r8
003d69a0  2b 06 fd eb                                      bl #0x318254
003d69a4  00 00 56 e3                                      cmp r6, #0
003d69a8  40 60 84 e5                                      str r6, [r4, #0x40]
003d69ac  12 00 00 0a                                      beq #0x3d69fc
003d69b0  04 00 94 e5                                      ldr r0, [r4, #4]
003d69b4  8c 31 ff eb                                      bl #0x3a2fec
003d69b8  44 20 94 e5                                      ldr r2, [r4, #0x44]
003d69bc  40 30 94 e5                                      ldr r3, [r4, #0x40]
003d69c0  02 00 53 e1                                      cmp r3, r2
003d69c4  00 20 a0 13                                      movne r2, #0
003d69c8  4c 20 c4 15                                      strbne r2, [r4, #0x4c]
003d69cc  03 20 a0 11                                      movne r2, r3
003d69d0  44 20 84 e5                                      str r2, [r4, #0x44]
003d69d4  03 00 a0 e1                                      mov r0, r3
003d69d8  00 30 93 e5                                      ldr r3, [r3]
003d69dc  0f e0 a0 e1                                      mov lr, pc
003d69e0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d69e4  01 00 20 e2                                      eor r0, r0, #1
003d69e8  48 00 c4 e5                                      strb r0, [r4, #0x48]
003d69ec  40 10 94 e5                                      ldr r1, [r4, #0x40]
003d69f0  04 00 a0 e1                                      mov r0, r4
003d69f4  37 f9 ff eb                                      bl #0x3d4ed8
003d69f8  49 00 c4 e5                                      strb r0, [r4, #0x49]
003d69fc  07 30 95 e7                                      ldr r3, [r5, r7]
003d6a00  74 20 9d e5                                      ldr r2, [sp, #0x74]
003d6a04  00 30 93 e5                                      ldr r3, [r3]
003d6a08  03 00 52 e1                                      cmp r2, r3
003d6a0c  22 00 00 1a                                      bne #0x3d6a9c
003d6a10  78 d0 8d e2                                      add sp, sp, #0x78
003d6a14  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d6a18  00 00 52 e3                                      cmp r2, #0
003d6a1c  0e 00 00 1a                                      bne #0x3d6a5c
003d6a20  40 60 84 e5                                      str r6, [r4, #0x40]
003d6a24  f4 ff ff ea                                      b #0x3d69fc
003d6a28  09 a0 95 e7                                      ldr sl, [r5, sb]
003d6a2c  44 80 8d e2                                      add r8, sp, #0x44
003d6a30  0a 00 a0 e1                                      mov r0, sl
003d6a34  93 83 fd eb                                      bl #0x337888
003d6a38  74 10 9f e5                                      ldr r1, [pc, #0x74]
003d6a3c  0c 20 8d e2                                      add r2, sp, #0xc
003d6a40  08 00 a0 e1                                      mov r0, r8
003d6a44  01 10 8f e0                                      add r1, pc, r1
003d6a48  cf ff ff ea                                      b #0x3d698c
003d6a4c  7b e6 fc eb                                      bl #0x310440
003d6a50  00 00 5a e3                                      cmp sl, #0
003d6a54  d2 ff ff 0a                                      beq #0x3d69a4
003d6a58  b8 ff ff ea                                      b #0x3d6940
003d6a5c  09 a0 95 e7                                      ldr sl, [r5, sb]
003d6a60  14 80 8d e2                                      add r8, sp, #0x14
003d6a64  0a 00 a0 e1                                      mov r0, sl
003d6a68  86 83 fd eb                                      bl #0x337888
003d6a6c  44 10 9f e5                                      ldr r1, [pc, #0x44]
003d6a70  04 20 8d e2                                      add r2, sp, #4
003d6a74  08 00 a0 e1                                      mov r0, r8
003d6a78  01 10 8f e0                                      add r1, pc, r1
003d6a7c  9a f5 fc eb                                      bl #0x3140ec
003d6a80  08 10 a0 e1                                      mov r1, r8
003d6a84  0a 00 a0 e1                                      mov r0, sl
003d6a88  fe 83 fd eb                                      bl #0x337a88
003d6a8c  08 00 a0 e1                                      mov r0, r8
003d6a90  ef 05 fd eb                                      bl #0x318254
003d6a94  40 60 84 e5                                      str r6, [r4, #0x40]
003d6a98  c4 ff ff ea                                      b #0x3d69b0
003d6a9c  1b de fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003d6aa0  f0 e1 5b 00 ac 40 00 00 84 08 00 00 e0 ed 4e 00  .byte 0xf0, 0xe1, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe0, 0xed, 0x4e, 0x00
003d6ab0  68 ed 4e 00 ac ec 4e 00 78 ec 4e 00              .byte 0x68, 0xed, 0x4e, 0x00, 0xac, 0xec, 0x4e, 0x00, 0x78, 0xec, 0x4e, 0x00

; FUNCTION 0x003d6abc, declared_size=544, range_size=544, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI24AI_ClearAllAggroTowardMeEb
; demangled: CharAI::AI_ClearAllAggroTowardMe(bool)
; decoder-mode: arm
003d6abc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003d6ac0  00 30 a0 e3                                      mov r3, #0
003d6ac4  10 d0 4d e2                                      sub sp, sp, #0x10
003d6ac8  00 50 a0 e1                                      mov r5, r0
003d6acc  01 70 a0 e1                                      mov r7, r1
003d6ad0  0d 00 a0 e1                                      mov r0, sp
003d6ad4  a4 10 95 e5                                      ldr r1, [r5, #0xa4]
003d6ad8  08 30 8d e5                                      str r3, [sp, #8]
003d6adc  00 30 8d e5                                      str r3, [sp]
003d6ae0  04 30 8d e5                                      str r3, [sp, #4]
003d6ae4  9c 40 95 e5                                      ldr r4, [r5, #0x9c]
003d6ae8  c9 fc ff eb                                      bl #0x3d5e14
003d6aec  0d 90 a0 e1                                      mov sb, sp
003d6af0  94 60 85 e2                                      add r6, r5, #0x94
003d6af4  04 80 85 e2                                      add r8, r5, #4
003d6af8  0c a0 8d e2                                      add sl, sp, #0xc
003d6afc  06 00 54 e1                                      cmp r4, r6
003d6b00  33 00 00 0a                                      beq #0x3d6bd4
003d6b04  00 00 57 e3                                      cmp r7, #0
003d6b08  55 00 00 0a                                      beq #0x3d6c64
003d6b0c  10 00 94 e5                                      ldr r0, [r4, #0x10]
003d6b10  04 20 95 e5                                      ldr r2, [r5, #4]
003d6b14  08 34 90 e5                                      ldr r3, [r0, #0x408]
003d6b18  03 00 52 e1                                      cmp r2, r3
003d6b1c  49 00 00 0a                                      beq #0x3d6c48
003d6b20  48 34 90 e5                                      ldr r3, [r0, #0x448]
003d6b24  00 00 53 e3                                      cmp r3, #0
003d6b28  16 00 00 0a                                      beq #0x3d6b88
003d6b2c  11 0d 80 e2                                      add r0, r0, #0x440
003d6b30  04 00 80 e2                                      add r0, r0, #4
003d6b34  00 c0 98 e5                                      ldr ip, [r8]
003d6b38  00 10 a0 e1                                      mov r1, r0
003d6b3c  00 00 00 ea                                      b #0x3d6b44
003d6b40  02 30 a0 e1                                      mov r3, r2
003d6b44  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d6b48  0c 00 52 e1                                      cmp r2, ip
003d6b4c  0c 20 93 35                                      ldrlo r2, [r3, #0xc]
003d6b50  08 20 93 25                                      ldrhs r2, [r3, #8]
003d6b54  01 30 a0 31                                      movlo r3, r1
003d6b58  03 10 a0 e1                                      mov r1, r3
003d6b5c  00 00 52 e3                                      cmp r2, #0
003d6b60  f6 ff ff 1a                                      bne #0x3d6b40
003d6b64  03 00 50 e1                                      cmp r0, r3
003d6b68  06 00 00 0a                                      beq #0x3d6b88
003d6b6c  04 10 95 e5                                      ldr r1, [r5, #4]
003d6b70  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d6b74  02 00 51 e1                                      cmp r1, r2
003d6b78  02 00 00 3a                                      blo #0x3d6b88
003d6b7c  0a 10 a0 e1                                      mov r1, sl
003d6b80  0c 30 8d e5                                      str r3, [sp, #0xc]
003d6b84  84 fc ff eb                                      bl #0x3d5d9c
003d6b88  0a 00 9d e9                                      ldmib sp, {r1, r3}
003d6b8c  03 00 51 e1                                      cmp r1, r3
003d6b90  42 00 00 0a                                      beq #0x3d6ca0
003d6b94  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d6b98  00 30 81 e5                                      str r3, [r1]
003d6b9c  04 30 9d e5                                      ldr r3, [sp, #4]
003d6ba0  04 30 83 e2                                      add r3, r3, #4
003d6ba4  04 30 8d e5                                      str r3, [sp, #4]
003d6ba8  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d6bac  00 00 52 e3                                      cmp r2, #0
003d6bb0  01 00 00 1a                                      bne #0x3d6bbc
003d6bb4  2c 00 00 ea                                      b #0x3d6c6c
003d6bb8  03 20 a0 e1                                      mov r2, r3
003d6bbc  08 30 92 e5                                      ldr r3, [r2, #8]
003d6bc0  00 00 53 e3                                      cmp r3, #0
003d6bc4  fb ff ff 1a                                      bne #0x3d6bb8
003d6bc8  02 40 a0 e1                                      mov r4, r2
003d6bcc  06 00 54 e1                                      cmp r4, r6
003d6bd0  cb ff ff 1a                                      bne #0x3d6b04
003d6bd4  a4 30 95 e5                                      ldr r3, [r5, #0xa4]
003d6bd8  00 00 53 e3                                      cmp r3, #0
003d6bdc  33 00 00 1a                                      bne #0x3d6cb0
003d6be0  09 00 9d e8                                      ldm sp, {r0, r3}
003d6be4  03 30 60 e0                                      rsb r3, r0, r3
003d6be8  23 31 b0 e1                                      lsrs r3, r3, #2
003d6bec  0b 00 00 0a                                      beq #0x3d6c20
003d6bf0  00 40 a0 e3                                      mov r4, #0
003d6bf4  04 30 95 e5                                      ldr r3, [r5, #4]
003d6bf8  04 11 90 e7                                      ldr r1, [r0, r4, lsl #2]
003d6bfc  01 40 84 e2                                      add r4, r4, #1
003d6c00  f2 0f 83 e2                                      add r0, r3, #0x3c8
003d6c04  c8 33 93 e5                                      ldr r3, [r3, #0x3c8]
003d6c08  0f e0 a0 e1                                      mov lr, pc
003d6c0c  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003d6c10  09 00 9d e8                                      ldm sp, {r0, r3}
003d6c14  03 30 60 e0                                      rsb r3, r0, r3
003d6c18  43 01 54 e1                                      cmp r4, r3, asr #2
003d6c1c  f4 ff ff 3a                                      blo #0x3d6bf4
003d6c20  00 00 50 e3                                      cmp r0, #0
003d6c24  05 00 00 0a                                      beq #0x3d6c40
003d6c28  08 10 9d e5                                      ldr r1, [sp, #8]
003d6c2c  01 10 60 e0                                      rsb r1, r0, r1
003d6c30  03 10 c1 e3                                      bic r1, r1, #3
003d6c34  80 00 51 e3                                      cmp r1, #0x80
003d6c38  25 00 00 8a                                      bhi #0x3d6cd4
003d6c3c  af c8 0c eb                                      bl #0x708f00
003d6c40  10 d0 8d e2                                      add sp, sp, #0x10
003d6c44  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003d6c48  00 10 a0 e3                                      mov r1, #0
003d6c4c  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d6c50  01 20 a0 e1                                      mov r2, r1
003d6c54  0d ff ff eb                                      bl #0x3d6890
003d6c58  10 00 94 e5                                      ldr r0, [r4, #0x10]
003d6c5c  f2 0f 80 e2                                      add r0, r0, #0x3c8
003d6c60  57 f7 ff eb                                      bl #0x3d49c4
003d6c64  10 00 94 e5                                      ldr r0, [r4, #0x10]
003d6c68  ac ff ff ea                                      b #0x3d6b20
003d6c6c  04 30 94 e5                                      ldr r3, [r4, #4]
003d6c70  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d6c74  01 00 54 e1                                      cmp r4, r1
003d6c78  05 00 00 1a                                      bne #0x3d6c94
003d6c7c  03 40 a0 e1                                      mov r4, r3
003d6c80  04 30 93 e5                                      ldr r3, [r3, #4]
003d6c84  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d6c88  04 00 52 e1                                      cmp r2, r4
003d6c8c  fa ff ff 0a                                      beq #0x3d6c7c
003d6c90  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d6c94  02 00 53 e1                                      cmp r3, r2
003d6c98  03 40 a0 11                                      movne r4, r3
003d6c9c  96 ff ff ea                                      b #0x3d6afc
003d6ca0  0d 00 a0 e1                                      mov r0, sp
003d6ca4  10 20 84 e2                                      add r2, r4, #0x10
003d6ca8  8c fc ff eb                                      bl #0x3d5ee0
003d6cac  bd ff ff ea                                      b #0x3d6ba8
003d6cb0  04 00 a0 e1                                      mov r0, r4
003d6cb4  98 10 95 e5                                      ldr r1, [r5, #0x98]
003d6cb8  a3 d9 ff eb                                      bl #0x3cd34c
003d6cbc  00 30 a0 e3                                      mov r3, #0
003d6cc0  a0 40 85 e5                                      str r4, [r5, #0xa0]
003d6cc4  a4 30 85 e5                                      str r3, [r5, #0xa4]
003d6cc8  9c 40 85 e5                                      str r4, [r5, #0x9c]
003d6ccc  98 30 85 e5                                      str r3, [r5, #0x98]
003d6cd0  c2 ff ff ea                                      b #0x3d6be0
003d6cd4  d9 e5 fc eb                                      bl #0x310440
003d6cd8  d8 ff ff ea                                      b #0x3d6c40

; FUNCTION 0x003d6cdc, declared_size=140, range_size=140, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI10AI_SetDeadEv
; demangled: CharAI::AI_SetDead()
; decoder-mode: arm
003d6cdc  00 10 a0 e3                                      mov r1, #0
003d6ce0  10 40 2d e9                                      push {r4, lr}
003d6ce4  01 20 a0 e1                                      mov r2, r1
003d6ce8  00 40 a0 e1                                      mov r4, r0
003d6cec  e7 fe ff eb                                      bl #0x3d6890
003d6cf0  04 00 a0 e1                                      mov r0, r4
003d6cf4  32 f7 ff eb                                      bl #0x3d49c4
003d6cf8  04 00 94 e5                                      ldr r0, [r4, #4]
003d6cfc  00 10 a0 e3                                      mov r1, #0
003d6d00  01 20 a0 e1                                      mov r2, r1
003d6d04  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d6d08  01 30 a0 e3                                      mov r3, #1
003d6d0c  0c 00 80 e2                                      add r0, r0, #0xc
003d6d10  ec ba ff eb                                      bl #0x3c58c8
003d6d14  04 00 94 e5                                      ldr r0, [r4, #4]
003d6d18  10 10 94 e5                                      ldr r1, [r4, #0x10]
003d6d1c  ed 0f 80 e2                                      add r0, r0, #0x3b4
003d6d20  6c 11 00 eb                                      bl #0x3db2d8
003d6d24  04 00 94 e5                                      ldr r0, [r4, #4]
003d6d28  14 10 94 e5                                      ldr r1, [r4, #0x14]
003d6d2c  ed 0f 80 e2                                      add r0, r0, #0x3b4
003d6d30  68 11 00 eb                                      bl #0x3db2d8
003d6d34  00 30 e0 e3                                      mvn r3, #0
003d6d38  14 30 84 e5                                      str r3, [r4, #0x14]
003d6d3c  10 30 84 e5                                      str r3, [r4, #0x10]
003d6d40  04 00 a0 e1                                      mov r0, r4
003d6d44  97 fc ff eb                                      bl #0x3d5fa8
003d6d48  04 00 a0 e1                                      mov r0, r4
003d6d4c  00 10 a0 e3                                      mov r1, #0
003d6d50  59 ff ff eb                                      bl #0x3d6abc
003d6d54  04 00 a0 e1                                      mov r0, r4
003d6d58  60 07 00 eb                                      bl #0x3d8ae0
003d6d5c  04 00 a0 e1                                      mov r0, r4
003d6d60  10 40 bd e8                                      pop {r4, lr}
003d6d64  4b 07 00 ea                                      b #0x3d8a98

; FUNCTION 0x003d6d68, declared_size=388, range_size=388, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13AI_ClearAggroEP9Character
; demangled: CharAI::AI_ClearAggro(Character*)
; decoder-mode: arm
003d6d68  30 40 2d e9                                      push {r4, r5, lr}
003d6d6c  00 40 51 e2                                      subs r4, r1, #0
003d6d70  0c d0 4d e2                                      sub sp, sp, #0xc
003d6d74  00 50 a0 e1                                      mov r5, r0
003d6d78  46 00 00 0a                                      beq #0x3d6e98
003d6d7c  80 20 90 e5                                      ldr r2, [r0, #0x80]
003d6d80  7c 00 80 e2                                      add r0, r0, #0x7c
003d6d84  00 00 52 e3                                      cmp r2, #0
003d6d88  44 00 00 0a                                      beq #0x3d6ea0
003d6d8c  00 c0 a0 e1                                      mov ip, r0
003d6d90  02 30 a0 e1                                      mov r3, r2
003d6d94  00 00 00 ea                                      b #0x3d6d9c
003d6d98  01 30 a0 e1                                      mov r3, r1
003d6d9c  10 10 93 e5                                      ldr r1, [r3, #0x10]
003d6da0  04 00 51 e1                                      cmp r1, r4
003d6da4  0c 10 93 35                                      ldrlo r1, [r3, #0xc]
003d6da8  08 10 93 25                                      ldrhs r1, [r3, #8]
003d6dac  0c 30 a0 31                                      movlo r3, ip
003d6db0  03 c0 a0 e1                                      mov ip, r3
003d6db4  00 00 51 e3                                      cmp r1, #0
003d6db8  f6 ff ff 1a                                      bne #0x3d6d98
003d6dbc  03 00 50 e1                                      cmp r0, r3
003d6dc0  30 00 00 0a                                      beq #0x3d6e88
003d6dc4  10 10 93 e5                                      ldr r1, [r3, #0x10]
003d6dc8  04 00 51 e1                                      cmp r1, r4
003d6dcc  33 00 00 8a                                      bhi #0x3d6ea0
003d6dd0  03 00 50 e1                                      cmp r0, r3
003d6dd4  2b 00 00 0a                                      beq #0x3d6e88
003d6dd8  00 00 52 e3                                      cmp r2, #0
003d6ddc  0f 00 00 0a                                      beq #0x3d6e20
003d6de0  00 10 a0 e1                                      mov r1, r0
003d6de4  00 00 00 ea                                      b #0x3d6dec
003d6de8  03 20 a0 e1                                      mov r2, r3
003d6dec  10 30 92 e5                                      ldr r3, [r2, #0x10]
003d6df0  04 00 53 e1                                      cmp r3, r4
003d6df4  0c 30 92 35                                      ldrlo r3, [r2, #0xc]
003d6df8  08 30 92 25                                      ldrhs r3, [r2, #8]
003d6dfc  01 20 a0 31                                      movlo r2, r1
003d6e00  02 10 a0 e1                                      mov r1, r2
003d6e04  00 00 53 e3                                      cmp r3, #0
003d6e08  f6 ff ff 1a                                      bne #0x3d6de8
003d6e0c  02 00 50 e1                                      cmp r0, r2
003d6e10  02 00 00 0a                                      beq #0x3d6e20
003d6e14  10 30 92 e5                                      ldr r3, [r2, #0x10]
003d6e18  04 00 53 e1                                      cmp r3, r4
003d6e1c  27 00 00 9a                                      bls #0x3d6ec0
003d6e20  60 34 94 e5                                      ldr r3, [r4, #0x460]
003d6e24  00 00 53 e3                                      cmp r3, #0
003d6e28  22 00 00 0a                                      beq #0x3d6eb8
003d6e2c  45 0e 84 e2                                      add r0, r4, #0x450
003d6e30  0c 00 80 e2                                      add r0, r0, #0xc
003d6e34  04 10 95 e5                                      ldr r1, [r5, #4]
003d6e38  00 c0 a0 e1                                      mov ip, r0
003d6e3c  00 00 00 ea                                      b #0x3d6e44
003d6e40  02 30 a0 e1                                      mov r3, r2
003d6e44  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d6e48  02 00 51 e1                                      cmp r1, r2
003d6e4c  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
003d6e50  08 20 93 95                                      ldrls r2, [r3, #8]
003d6e54  0c 30 a0 81                                      movhi r3, ip
003d6e58  03 c0 a0 e1                                      mov ip, r3
003d6e5c  00 00 52 e3                                      cmp r2, #0
003d6e60  f6 ff ff 1a                                      bne #0x3d6e40
003d6e64  03 00 50 e1                                      cmp r0, r3
003d6e68  02 00 00 0a                                      beq #0x3d6e78
003d6e6c  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d6e70  02 00 51 e1                                      cmp r1, r2
003d6e74  0b 00 00 2a                                      bhs #0x3d6ea8
003d6e78  c8 33 94 e5                                      ldr r3, [r4, #0x3c8]
003d6e7c  f2 0f 84 e2                                      add r0, r4, #0x3c8
003d6e80  0f e0 a0 e1                                      mov lr, pc
003d6e84  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
003d6e88  04 20 95 e5                                      ldr r2, [r5, #4]
003d6e8c  08 34 94 e5                                      ldr r3, [r4, #0x408]
003d6e90  03 00 52 e1                                      cmp r2, r3
003d6e94  0d 00 00 0a                                      beq #0x3d6ed0
003d6e98  0c d0 8d e2                                      add sp, sp, #0xc
003d6e9c  30 80 bd e8                                      pop {r4, r5, pc}
003d6ea0  00 30 a0 e1                                      mov r3, r0
003d6ea4  c9 ff ff ea                                      b #0x3d6dd0
003d6ea8  08 10 8d e2                                      add r1, sp, #8
003d6eac  08 30 21 e5                                      str r3, [r1, #-8]!
003d6eb0  0d 10 a0 e1                                      mov r1, sp
003d6eb4  b8 fb ff eb                                      bl #0x3d5d9c
003d6eb8  04 10 95 e5                                      ldr r1, [r5, #4]
003d6ebc  ed ff ff ea                                      b #0x3d6e78
003d6ec0  08 10 8d e2                                      add r1, sp, #8
003d6ec4  04 20 21 e5                                      str r2, [r1, #-4]!
003d6ec8  b3 fb ff eb                                      bl #0x3d5d9c
003d6ecc  d3 ff ff ea                                      b #0x3d6e20
003d6ed0  00 10 a0 e3                                      mov r1, #0
003d6ed4  f2 0f 84 e2                                      add r0, r4, #0x3c8
003d6ed8  01 20 a0 e1                                      mov r2, r1
003d6edc  6b fe ff eb                                      bl #0x3d6890
003d6ee0  78 03 94 e5                                      ldr r0, [r4, #0x378]
003d6ee4  ac b9 00 eb                                      bl #0x40559c
003d6ee8  ea ff ff ea                                      b #0x3d6e98

; FUNCTION 0x003d7208, declared_size=200, range_size=200, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI26AI_GetRelationsConverseMapERKSt3mapIP9CharacterfSt4lessIS2_ESaISt4pairIKS2_fEEE
; demangled: CharAI::AI_GetRelationsConverseMap(std::map<Character*, float, std::less<Character*>, std::allocator<std::pair<Character* const, float> > > const&) const
; decoder-mode: arm
003d7208  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d720c  00 30 a0 e3                                      mov r3, #0
003d7210  00 50 a0 e1                                      mov r5, r0
003d7214  10 30 80 e5                                      str r3, [r0, #0x10]
003d7218  04 30 80 e5                                      str r3, [r0, #4]
003d721c  00 30 c0 e5                                      strb r3, [r0]
003d7220  08 00 85 e5                                      str r0, [r5, #8]
003d7224  0c 00 85 e5                                      str r0, [r5, #0xc]
003d7228  08 40 92 e5                                      ldr r4, [r2, #8]
003d722c  10 d0 4d e2                                      sub sp, sp, #0x10
003d7230  02 60 a0 e1                                      mov r6, r2
003d7234  0d 80 a0 e1                                      mov r8, sp
003d7238  08 70 8d e2                                      add r7, sp, #8
003d723c  04 00 56 e1                                      cmp r6, r4
003d7240  12 00 00 0a                                      beq #0x3d7290
003d7244  10 30 94 e5                                      ldr r3, [r4, #0x10]
003d7248  14 c0 94 e5                                      ldr ip, [r4, #0x14]
003d724c  07 20 a0 e1                                      mov r2, r7
003d7250  0d 00 a0 e1                                      mov r0, sp
003d7254  05 10 a0 e1                                      mov r1, r5
003d7258  08 c0 8d e5                                      str ip, [sp, #8]
003d725c  0c 30 8d e5                                      str r3, [sp, #0xc]
003d7260  7c ff ff eb                                      bl #0x3d7058
003d7264  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d7268  00 00 52 e3                                      cmp r2, #0
003d726c  01 00 00 1a                                      bne #0x3d7278
003d7270  09 00 00 ea                                      b #0x3d729c
003d7274  03 20 a0 e1                                      mov r2, r3
003d7278  08 30 92 e5                                      ldr r3, [r2, #8]
003d727c  00 00 53 e3                                      cmp r3, #0
003d7280  fb ff ff 1a                                      bne #0x3d7274
003d7284  02 40 a0 e1                                      mov r4, r2
003d7288  04 00 56 e1                                      cmp r6, r4
003d728c  ec ff ff 1a                                      bne #0x3d7244
003d7290  05 00 a0 e1                                      mov r0, r5
003d7294  10 d0 8d e2                                      add sp, sp, #0x10
003d7298  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d729c  04 30 94 e5                                      ldr r3, [r4, #4]
003d72a0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003d72a4  01 00 54 e1                                      cmp r4, r1
003d72a8  05 00 00 1a                                      bne #0x3d72c4
003d72ac  03 40 a0 e1                                      mov r4, r3
003d72b0  04 30 93 e5                                      ldr r3, [r3, #4]
003d72b4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003d72b8  04 00 52 e1                                      cmp r2, r4
003d72bc  fa ff ff 0a                                      beq #0x3d72ac
003d72c0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003d72c4  02 00 53 e1                                      cmp r3, r2
003d72c8  03 40 a0 11                                      movne r4, r3
003d72cc  da ff ff ea                                      b #0x3d723c

; FUNCTION 0x003d72d0, declared_size=220, range_size=220, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI16AI_GetAggroEntryEiRP9CharacterRf
; demangled: CharAI::AI_GetAggroEntry(int, Character*&, float&) const
; decoder-mode: arm
003d72d0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d72d4  01 50 a0 e1                                      mov r5, r1
003d72d8  1c d0 4d e2                                      sub sp, sp, #0x1c
003d72dc  00 10 a0 e1                                      mov r1, r0
003d72e0  02 60 a0 e1                                      mov r6, r2
003d72e4  0d 00 a0 e1                                      mov r0, sp
003d72e8  7c 20 81 e2                                      add r2, r1, #0x7c
003d72ec  03 70 a0 e1                                      mov r7, r3
003d72f0  c4 ff ff eb                                      bl #0x3d7208
003d72f4  08 20 9d e5                                      ldr r2, [sp, #8]
003d72f8  0d 40 a0 e1                                      mov r4, sp
003d72fc  00 10 a0 e3                                      mov r1, #0
003d7300  04 00 52 e1                                      cmp r2, r4
003d7304  19 00 00 0a                                      beq #0x3d7370
003d7308  05 00 51 e1                                      cmp r1, r5
003d730c  21 00 00 0a                                      beq #0x3d7398
003d7310  0c 00 92 e5                                      ldr r0, [r2, #0xc]
003d7314  01 10 81 e2                                      add r1, r1, #1
003d7318  00 00 50 e3                                      cmp r0, #0
003d731c  05 00 00 0a                                      beq #0x3d7338
003d7320  00 20 a0 e1                                      mov r2, r0
003d7324  08 30 92 e5                                      ldr r3, [r2, #8]
003d7328  00 00 53 e3                                      cmp r3, #0
003d732c  f3 ff ff 0a                                      beq #0x3d7300
003d7330  03 20 a0 e1                                      mov r2, r3
003d7334  fa ff ff ea                                      b #0x3d7324
003d7338  04 30 92 e5                                      ldr r3, [r2, #4]
003d733c  0c c0 93 e5                                      ldr ip, [r3, #0xc]
003d7340  0c 00 52 e1                                      cmp r2, ip
003d7344  05 00 00 1a                                      bne #0x3d7360
003d7348  03 20 a0 e1                                      mov r2, r3
003d734c  04 30 93 e5                                      ldr r3, [r3, #4]
003d7350  0c 00 93 e5                                      ldr r0, [r3, #0xc]
003d7354  02 00 50 e1                                      cmp r0, r2
003d7358  fa ff ff 0a                                      beq #0x3d7348
003d735c  0c 00 92 e5                                      ldr r0, [r2, #0xc]
003d7360  03 00 50 e1                                      cmp r0, r3
003d7364  03 20 a0 11                                      movne r2, r3
003d7368  04 00 52 e1                                      cmp r2, r4
003d736c  e5 ff ff 1a                                      bne #0x3d7308
003d7370  00 30 a0 e3                                      mov r3, #0
003d7374  00 30 86 e5                                      str r3, [r6]
003d7378  10 30 9d e5                                      ldr r3, [sp, #0x10]
003d737c  00 00 53 e3                                      cmp r3, #0
003d7380  02 00 00 0a                                      beq #0x3d7390
003d7384  0d 00 a0 e1                                      mov r0, sp
003d7388  04 10 9d e5                                      ldr r1, [sp, #4]
003d738c  74 fa ff eb                                      bl #0x3d5d64
003d7390  1c d0 8d e2                                      add sp, sp, #0x1c
003d7394  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d7398  14 30 92 e5                                      ldr r3, [r2, #0x14]
003d739c  00 30 86 e5                                      str r3, [r6]
003d73a0  10 30 92 e5                                      ldr r3, [r2, #0x10]
003d73a4  00 30 87 e5                                      str r3, [r7]
003d73a8  f2 ff ff ea                                      b #0x3d7378

; FUNCTION 0x003d79ec, declared_size=636, range_size=636, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11AI_SetAggroEP9Characterf
; demangled: CharAI::AI_SetAggro(Character*, float)
; decoder-mode: arm
003d79ec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d79f0  58 32 9f e5                                      ldr r3, [pc, #0x258]
003d79f4  00 40 51 e2                                      subs r4, r1, #0
003d79f8  2c d0 4d e2                                      sub sp, sp, #0x2c
003d79fc  00 60 a0 e1                                      mov r6, r0
003d7a00  03 30 8f e0                                      add r3, pc, r3
003d7a04  02 50 a0 e1                                      mov r5, r2
003d7a08  71 00 00 0a                                      beq #0x3d7bd4
003d7a0c  04 30 96 e5                                      ldr r3, [r6, #4]
003d7a10  03 00 a0 e1                                      mov r0, r3
003d7a14  00 30 93 e5                                      ldr r3, [r3]
003d7a18  0f e0 a0 e1                                      mov lr, pc
003d7a1c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d7a20  00 00 50 e3                                      cmp r0, #0
003d7a24  03 00 00 0a                                      beq #0x3d7a38
003d7a28  00 50 a0 e3                                      mov r5, #0
003d7a2c  05 00 a0 e1                                      mov r0, r5
003d7a30  2c d0 8d e2                                      add sp, sp, #0x2c
003d7a34  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d7a38  04 30 96 e5                                      ldr r3, [r6, #4]
003d7a3c  03 00 a0 e1                                      mov r0, r3
003d7a40  00 30 93 e5                                      ldr r3, [r3]
003d7a44  0f e0 a0 e1                                      mov lr, pc
003d7a48  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d7a4c  00 00 50 e3                                      cmp r0, #0
003d7a50  f4 ff ff 1a                                      bne #0x3d7a28
003d7a54  00 30 94 e5                                      ldr r3, [r4]
003d7a58  04 00 a0 e1                                      mov r0, r4
003d7a5c  0f e0 a0 e1                                      mov lr, pc
003d7a60  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003d7a64  00 00 50 e3                                      cmp r0, #0
003d7a68  ee ff ff 1a                                      bne #0x3d7a28
003d7a6c  80 c0 96 e5                                      ldr ip, [r6, #0x80]
003d7a70  7c 70 86 e2                                      add r7, r6, #0x7c
003d7a74  00 00 5c e3                                      cmp ip, #0
003d7a78  07 10 a0 11                                      movne r1, r7
003d7a7c  0c 30 a0 11                                      movne r3, ip
003d7a80  01 00 00 1a                                      bne #0x3d7a8c
003d7a84  50 00 00 ea                                      b #0x3d7bcc
003d7a88  02 30 a0 e1                                      mov r3, r2
003d7a8c  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d7a90  02 00 54 e1                                      cmp r4, r2
003d7a94  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
003d7a98  08 20 93 95                                      ldrls r2, [r3, #8]
003d7a9c  01 30 a0 81                                      movhi r3, r1
003d7aa0  03 10 a0 e1                                      mov r1, r3
003d7aa4  00 00 52 e3                                      cmp r2, #0
003d7aa8  f6 ff ff 1a                                      bne #0x3d7a88
003d7aac  03 00 57 e1                                      cmp r7, r3
003d7ab0  5f 00 00 0a                                      beq #0x3d7c34
003d7ab4  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d7ab8  02 00 54 e1                                      cmp r4, r2
003d7abc  42 00 00 3a                                      blo #0x3d7bcc
003d7ac0  03 00 57 e1                                      cmp r7, r3
003d7ac4  5a 00 00 0a                                      beq #0x3d7c34
003d7ac8  00 00 5c e3                                      cmp ip, #0
003d7acc  07 c0 a0 01                                      moveq ip, r7
003d7ad0  0a 00 00 0a                                      beq #0x3d7b00
003d7ad4  07 20 a0 e1                                      mov r2, r7
003d7ad8  00 00 00 ea                                      b #0x3d7ae0
003d7adc  03 c0 a0 e1                                      mov ip, r3
003d7ae0  10 30 9c e5                                      ldr r3, [ip, #0x10]
003d7ae4  03 00 54 e1                                      cmp r4, r3
003d7ae8  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
003d7aec  08 30 9c 95                                      ldrls r3, [ip, #8]
003d7af0  02 c0 a0 81                                      movhi ip, r2
003d7af4  0c 20 a0 e1                                      mov r2, ip
003d7af8  00 00 53 e3                                      cmp r3, #0
003d7afc  f6 ff ff 1a                                      bne #0x3d7adc
003d7b00  0c 00 57 e1                                      cmp r7, ip
003d7b04  03 00 00 0a                                      beq #0x3d7b18
003d7b08  10 20 9c e5                                      ldr r2, [ip, #0x10]
003d7b0c  0c 30 a0 e1                                      mov r3, ip
003d7b10  02 00 54 e1                                      cmp r4, r2
003d7b14  09 00 00 2a                                      bhs #0x3d7b40
003d7b18  10 30 8d e2                                      add r3, sp, #0x10
003d7b1c  00 e0 a0 e3                                      mov lr, #0
003d7b20  07 10 a0 e1                                      mov r1, r7
003d7b24  20 00 8d e2                                      add r0, sp, #0x20
003d7b28  24 20 8d e2                                      add r2, sp, #0x24
003d7b2c  14 e0 8d e5                                      str lr, [sp, #0x14]
003d7b30  24 c0 8d e5                                      str ip, [sp, #0x24]
003d7b34  10 40 8d e5                                      str r4, [sp, #0x10]
003d7b38  ce fe ff eb                                      bl #0x3d7678
003d7b3c  20 30 9d e5                                      ldr r3, [sp, #0x20]
003d7b40  14 50 83 e5                                      str r5, [r3, #0x14]
003d7b44  60 c4 94 e5                                      ldr ip, [r4, #0x460]
003d7b48  45 1e 84 e2                                      add r1, r4, #0x450
003d7b4c  0c 10 81 e2                                      add r1, r1, #0xc
003d7b50  00 00 5c e3                                      cmp ip, #0
003d7b54  33 00 00 0a                                      beq #0x3d7c28
003d7b58  04 60 96 e5                                      ldr r6, [r6, #4]
003d7b5c  01 20 a0 e1                                      mov r2, r1
003d7b60  00 00 00 ea                                      b #0x3d7b68
003d7b64  03 c0 a0 e1                                      mov ip, r3
003d7b68  10 30 9c e5                                      ldr r3, [ip, #0x10]
003d7b6c  03 00 56 e1                                      cmp r6, r3
003d7b70  0c 30 9c 85                                      ldrhi r3, [ip, #0xc]
003d7b74  08 30 9c 95                                      ldrls r3, [ip, #8]
003d7b78  02 c0 a0 81                                      movhi ip, r2
003d7b7c  0c 20 a0 e1                                      mov r2, ip
003d7b80  00 00 53 e3                                      cmp r3, #0
003d7b84  f6 ff ff 1a                                      bne #0x3d7b64
003d7b88  0c 00 51 e1                                      cmp r1, ip
003d7b8c  03 00 00 0a                                      beq #0x3d7ba0
003d7b90  10 20 9c e5                                      ldr r2, [ip, #0x10]
003d7b94  0c 30 a0 e1                                      mov r3, ip
003d7b98  02 00 56 e1                                      cmp r6, r2
003d7b9c  08 00 00 2a                                      bhs #0x3d7bc4
003d7ba0  08 30 8d e2                                      add r3, sp, #8
003d7ba4  00 e0 a0 e3                                      mov lr, #0
003d7ba8  18 00 8d e2                                      add r0, sp, #0x18
003d7bac  1c 20 8d e2                                      add r2, sp, #0x1c
003d7bb0  08 60 8d e5                                      str r6, [sp, #8]
003d7bb4  0c e0 8d e5                                      str lr, [sp, #0xc]
003d7bb8  1c c0 8d e5                                      str ip, [sp, #0x1c]
003d7bbc  ad fe ff eb                                      bl #0x3d7678
003d7bc0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003d7bc4  14 50 83 e5                                      str r5, [r3, #0x14]
003d7bc8  97 ff ff ea                                      b #0x3d7a2c
003d7bcc  07 30 a0 e1                                      mov r3, r7
003d7bd0  ba ff ff ea                                      b #0x3d7ac0
003d7bd4  78 20 9f e5                                      ldr r2, [pc, #0x78]
003d7bd8  02 20 93 e7                                      ldr r2, [r3, r2]
003d7bdc  00 20 92 e5                                      ldr r2, [r2]
003d7be0  02 00 52 e3                                      cmp r2, #2
003d7be4  00 40 84 05                                      streq r4, [r4]
003d7be8  87 ff ff 0a                                      beq #0x3d7a0c
003d7bec  01 00 52 e3                                      cmp r2, #1
003d7bf0  85 ff ff 1a                                      bne #0x3d7a0c
003d7bf4  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
003d7bf8  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003d7bfc  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003d7c00  00 00 93 e7                                      ldr r0, [r3, r0]
003d7c04  58 30 9f e5                                      ldr r3, [pc, #0x58]
003d7c08  9d cf a0 e3                                      mov ip, #0x274
003d7c0c  01 10 8f e0                                      add r1, pc, r1
003d7c10  02 20 8f e0                                      add r2, pc, r2
003d7c14  03 30 8f e0                                      add r3, pc, r3
003d7c18  a8 00 80 e2                                      add r0, r0, #0xa8
003d7c1c  00 c0 8d e5                                      str ip, [sp]
003d7c20  f7 d8 fc eb                                      bl #0x30e004
003d7c24  78 ff ff ea                                      b #0x3d7a0c
003d7c28  04 60 96 e5                                      ldr r6, [r6, #4]
003d7c2c  01 c0 a0 e1                                      mov ip, r1
003d7c30  d4 ff ff ea                                      b #0x3d7b88
003d7c34  c8 33 94 e5                                      ldr r3, [r4, #0x3c8]
003d7c38  f2 0f 84 e2                                      add r0, r4, #0x3c8
003d7c3c  04 10 96 e5                                      ldr r1, [r6, #4]
003d7c40  0f e0 a0 e1                                      mov lr, pc
003d7c44  38 f0 93 e5                                      ldr pc, [r3, #0x38]
003d7c48  80 c0 96 e5                                      ldr ip, [r6, #0x80]
003d7c4c  9d ff ff ea                                      b #0x3d7ac8
; mapping-symbol data/literal pool
003d7c50  90 d0 5b 00 c0 39 00 00 c0 19 00 00 cc 67 4e 00  .byte 0x90, 0xd0, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xcc, 0x67, 0x4e, 0x00
003d7c60  78 a4 51 00 ac d9 4e 00                          .byte 0x78, 0xa4, 0x51, 0x00, 0xac, 0xd9, 0x4e, 0x00

; FUNCTION 0x003d7c68, declared_size=308, range_size=308, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11AI_AddAggroEP9Characterf
; demangled: CharAI::AI_AddAggro(Character*, float)
; decoder-mode: arm
003d7c68  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d7c6c  10 31 9f e5                                      ldr r3, [pc, #0x110]
003d7c70  00 40 51 e2                                      subs r4, r1, #0
003d7c74  0c d0 4d e2                                      sub sp, sp, #0xc
003d7c78  00 50 a0 e1                                      mov r5, r0
003d7c7c  03 30 8f e0                                      add r3, pc, r3
003d7c80  02 60 a0 e1                                      mov r6, r2
003d7c84  23 00 00 0a                                      beq #0x3d7d18
003d7c88  80 30 95 e5                                      ldr r3, [r5, #0x80]
003d7c8c  7c 00 85 e2                                      add r0, r5, #0x7c
003d7c90  00 00 53 e3                                      cmp r3, #0
003d7c94  1d 00 00 0a                                      beq #0x3d7d10
003d7c98  00 10 a0 e1                                      mov r1, r0
003d7c9c  00 00 00 ea                                      b #0x3d7ca4
003d7ca0  02 30 a0 e1                                      mov r3, r2
003d7ca4  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d7ca8  02 00 54 e1                                      cmp r4, r2
003d7cac  0c 20 93 85                                      ldrhi r2, [r3, #0xc]
003d7cb0  08 20 93 95                                      ldrls r2, [r3, #8]
003d7cb4  01 30 a0 81                                      movhi r3, r1
003d7cb8  03 10 a0 e1                                      mov r1, r3
003d7cbc  00 00 52 e3                                      cmp r2, #0
003d7cc0  f6 ff ff 1a                                      bne #0x3d7ca0
003d7cc4  03 00 50 e1                                      cmp r0, r3
003d7cc8  27 00 00 0a                                      beq #0x3d7d6c
003d7ccc  10 20 93 e5                                      ldr r2, [r3, #0x10]
003d7cd0  02 00 54 e1                                      cmp r4, r2
003d7cd4  0d 00 00 3a                                      blo #0x3d7d10
003d7cd8  03 00 50 e1                                      cmp r0, r3
003d7cdc  22 00 00 0a                                      beq #0x3d7d6c
003d7ce0  14 70 93 e5                                      ldr r7, [r3, #0x14]
003d7ce4  06 00 a0 e1                                      mov r0, r6
003d7ce8  07 10 a0 e1                                      mov r1, r7
003d7cec  ac db fc eb                                      bl #0x30eba4
003d7cf0  04 10 a0 e1                                      mov r1, r4
003d7cf4  00 20 a0 e1                                      mov r2, r0
003d7cf8  05 00 a0 e1                                      mov r0, r5
003d7cfc  3a ff ff eb                                      bl #0x3d79ec
003d7d00  07 10 a0 e1                                      mov r1, r7
003d7d04  a8 d9 fc eb                                      bl #0x30e3ac
003d7d08  0c d0 8d e2                                      add sp, sp, #0xc
003d7d0c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d7d10  00 30 a0 e1                                      mov r3, r0
003d7d14  ef ff ff ea                                      b #0x3d7cd8
003d7d18  68 20 9f e5                                      ldr r2, [pc, #0x68]
003d7d1c  02 20 93 e7                                      ldr r2, [r3, r2]
003d7d20  00 20 92 e5                                      ldr r2, [r2]
003d7d24  02 00 52 e3                                      cmp r2, #2
003d7d28  00 40 84 05                                      streq r4, [r4]
003d7d2c  d5 ff ff 0a                                      beq #0x3d7c88
003d7d30  01 00 52 e3                                      cmp r2, #1
003d7d34  d3 ff ff 1a                                      bne #0x3d7c88
003d7d38  4c 00 9f e5                                      ldr r0, [pc, #0x4c]
003d7d3c  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
003d7d40  4c 20 9f e5                                      ldr r2, [pc, #0x4c]
003d7d44  00 00 93 e7                                      ldr r0, [r3, r0]
003d7d48  48 30 9f e5                                      ldr r3, [pc, #0x48]
003d7d4c  92 c2 00 e3                                      movw ip, #0x292
003d7d50  01 10 8f e0                                      add r1, pc, r1
003d7d54  02 20 8f e0                                      add r2, pc, r2
003d7d58  03 30 8f e0                                      add r3, pc, r3
003d7d5c  a8 00 80 e2                                      add r0, r0, #0xa8
003d7d60  00 c0 8d e5                                      str ip, [sp]
003d7d64  a6 d8 fc eb                                      bl #0x30e004
003d7d68  c6 ff ff ea                                      b #0x3d7c88
003d7d6c  05 00 a0 e1                                      mov r0, r5
003d7d70  04 10 a0 e1                                      mov r1, r4
003d7d74  06 20 a0 e1                                      mov r2, r6
003d7d78  0c d0 8d e2                                      add sp, sp, #0xc
003d7d7c  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003d7d80  19 ff ff ea                                      b #0x3d79ec
; mapping-symbol data/literal pool
003d7d84  14 ce 5b 00 c0 39 00 00 c0 19 00 00 88 66 4e 00  .byte 0x14, 0xce, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x88, 0x66, 0x4e, 0x00
003d7d94  34 a3 51 00 68 d8 4e 00                          .byte 0x34, 0xa3, 0x51, 0x00, 0x68, 0xd8, 0x4e, 0x00

; FUNCTION 0x003d7d9c, declared_size=8, range_size=8, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI16AI_IsSpellActiveEv
; demangled: CharAI::AI_IsSpellActive() const
; decoder-mode: arm
003d7d9c  00 00 a0 e3                                      mov r0, #0
003d7da0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d7da4, declared_size=4, range_size=4, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14AI_CancelSpellEv
; demangled: CharAI::AI_CancelSpell()
; decoder-mode: arm
003d7da4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003d7da8, declared_size=224, range_size=224, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_SpellInfoERf
; demangled: CharAI::AI_SpellInfo(float&) const
; decoder-mode: arm
003d7da8  70 40 2d e9                                      push {r4, r5, r6, lr}
003d7dac  00 40 a0 e1                                      mov r4, r0
003d7db0  08 d0 4d e2                                      sub sp, sp, #8
003d7db4  01 60 a0 e1                                      mov r6, r1
003d7db8  04 00 90 e5                                      ldr r0, [r0, #4]
003d7dbc  00 10 e0 e3                                      mvn r1, #0
003d7dc0  f1 8e ff eb                                      bl #0x3bb98c
003d7dc4  c0 20 94 e5                                      ldr r2, [r4, #0xc0]
003d7dc8  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
003d7dcc  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
003d7dd0  00 50 a0 e1                                      mov r5, r0
003d7dd4  01 10 62 e0                                      rsb r1, r2, r1
003d7dd8  41 01 50 e1                                      cmp r0, r1, asr #2
003d7ddc  03 30 8f e0                                      add r3, pc, r3
003d7de0  08 00 00 3a                                      blo #0x3d7e08
003d7de4  88 10 9f e5                                      ldr r1, [pc, #0x88]
003d7de8  01 10 93 e7                                      ldr r1, [r3, r1]
003d7dec  00 10 91 e5                                      ldr r1, [r1]
003d7df0  02 00 51 e3                                      cmp r1, #2
003d7df4  00 30 a0 03                                      moveq r3, #0
003d7df8  00 30 83 05                                      streq r3, [r3]
003d7dfc  01 00 00 0a                                      beq #0x3d7e08
003d7e00  01 00 51 e3                                      cmp r1, #1
003d7e04  0b 00 00 0a                                      beq #0x3d7e38
003d7e08  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
003d7e0c  00 00 50 e3                                      cmp r0, #0
003d7e10  04 00 00 0a                                      beq #0x3d7e28
003d7e14  06 20 a0 e1                                      mov r2, r6
003d7e18  00 10 a0 e3                                      mov r1, #0
003d7e1c  08 d0 8d e2                                      add sp, sp, #8
003d7e20  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d7e24  9f 0b 00 ea                                      b #0x3daca8
003d7e28  00 30 a0 e3                                      mov r3, #0
003d7e2c  00 30 86 e5                                      str r3, [r6]
003d7e30  08 d0 8d e2                                      add sp, sp, #8
003d7e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d7e38  38 00 9f e5                                      ldr r0, [pc, #0x38]
003d7e3c  38 10 9f e5                                      ldr r1, [pc, #0x38]
003d7e40  38 20 9f e5                                      ldr r2, [pc, #0x38]
003d7e44  00 00 93 e7                                      ldr r0, [r3, r0]
003d7e48  34 30 9f e5                                      ldr r3, [pc, #0x34]
003d7e4c  02 20 8f e0                                      add r2, pc, r2
003d7e50  c9 c1 00 e3                                      movw ip, #0x1c9
003d7e54  01 10 8f e0                                      add r1, pc, r1
003d7e58  a8 00 80 e2                                      add r0, r0, #0xa8
003d7e5c  03 30 8f e0                                      add r3, pc, r3
003d7e60  00 c0 8d e5                                      str ip, [sp]
003d7e64  66 d8 fc eb                                      bl #0x30e004
003d7e68  c0 20 94 e5                                      ldr r2, [r4, #0xc0]
003d7e6c  e5 ff ff ea                                      b #0x3d7e08
; mapping-symbol data/literal pool
003d7e70  b4 cc 5b 00 c0 39 00 00 c0 19 00 00 84 65 4e 00  .byte 0xb4, 0xcc, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x84, 0x65, 0x4e, 0x00
003d7e80  bc d8 4e 00 cc d8 4e 00                          .byte 0xbc, 0xd8, 0x4e, 0x00, 0xcc, 0xd8, 0x4e, 0x00

; FUNCTION 0x003d7e88, declared_size=216, range_size=216, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI12AI_SkillInfoEjjRf
; demangled: CharAI::AI_SkillInfo(unsigned int, unsigned int, float&) const
; decoder-mode: arm
003d7e88  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d7e8c  00 40 a0 e1                                      mov r4, r0
003d7e90  b8 60 94 e5                                      ldr r6, [r4, #0xb8]
003d7e94  b4 00 90 e5                                      ldr r0, [r0, #0xb4]
003d7e98  a8 c0 9f e5                                      ldr ip, [pc, #0xa8]
003d7e9c  0c d0 4d e2                                      sub sp, sp, #0xc
003d7ea0  06 60 60 e0                                      rsb r6, r0, r6
003d7ea4  46 01 51 e1                                      cmp r1, r6, asr #2
003d7ea8  0c c0 8f e0                                      add ip, pc, ip
003d7eac  01 50 a0 e1                                      mov r5, r1
003d7eb0  02 70 a0 e1                                      mov r7, r2
003d7eb4  03 60 a0 e1                                      mov r6, r3
003d7eb8  08 00 00 3a                                      blo #0x3d7ee0
003d7ebc  88 30 9f e5                                      ldr r3, [pc, #0x88]
003d7ec0  03 30 9c e7                                      ldr r3, [ip, r3]
003d7ec4  00 30 93 e5                                      ldr r3, [r3]
003d7ec8  02 00 53 e3                                      cmp r3, #2
003d7ecc  00 30 a0 03                                      moveq r3, #0
003d7ed0  00 30 83 05                                      streq r3, [r3]
003d7ed4  01 00 00 0a                                      beq #0x3d7ee0
003d7ed8  01 00 53 e3                                      cmp r3, #1
003d7edc  0b 00 00 0a                                      beq #0x3d7f10
003d7ee0  05 01 90 e7                                      ldr r0, [r0, r5, lsl #2]
003d7ee4  00 00 50 e3                                      cmp r0, #0
003d7ee8  04 00 00 0a                                      beq #0x3d7f00
003d7eec  07 10 a0 e1                                      mov r1, r7
003d7ef0  06 20 a0 e1                                      mov r2, r6
003d7ef4  0c d0 8d e2                                      add sp, sp, #0xc
003d7ef8  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003d7efc  69 0b 00 ea                                      b #0x3daca8
003d7f00  00 30 a0 e3                                      mov r3, #0
003d7f04  00 30 86 e5                                      str r3, [r6]
003d7f08  0c d0 8d e2                                      add sp, sp, #0xc
003d7f0c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d7f10  38 00 9f e5                                      ldr r0, [pc, #0x38]
003d7f14  38 10 9f e5                                      ldr r1, [pc, #0x38]
003d7f18  38 20 9f e5                                      ldr r2, [pc, #0x38]
003d7f1c  00 00 9c e7                                      ldr r0, [ip, r0]
003d7f20  34 30 9f e5                                      ldr r3, [pc, #0x34]
003d7f24  b7 c1 00 e3                                      movw ip, #0x1b7
003d7f28  01 10 8f e0                                      add r1, pc, r1
003d7f2c  a8 00 80 e2                                      add r0, r0, #0xa8
003d7f30  02 20 8f e0                                      add r2, pc, r2
003d7f34  03 30 8f e0                                      add r3, pc, r3
003d7f38  00 c0 8d e5                                      str ip, [sp]
003d7f3c  30 d8 fc eb                                      bl #0x30e004
003d7f40  b4 00 94 e5                                      ldr r0, [r4, #0xb4]
003d7f44  e5 ff ff ea                                      b #0x3d7ee0
; mapping-symbol data/literal pool
003d7f48  e8 cb 5b 00 c0 39 00 00 c0 19 00 00 b0 64 4e 00  .byte 0xe8, 0xcb, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb0, 0x64, 0x4e, 0x00
003d7f58  50 d8 4e 00 f4 d7 4e 00                          .byte 0x50, 0xd8, 0x4e, 0x00, 0xf4, 0xd7, 0x4e, 0x00

; FUNCTION 0x003d7f60, declared_size=216, range_size=216, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11AI_EndSpellEb
; demangled: CharAI::AI_EndSpell(bool)
; decoder-mode: arm
003d7f60  70 40 2d e9                                      push {r4, r5, r6, lr}
003d7f64  00 40 a0 e1                                      mov r4, r0
003d7f68  04 00 90 e5                                      ldr r0, [r0, #4]
003d7f6c  01 60 a0 e1                                      mov r6, r1
003d7f70  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d7f74  0c 00 80 e2                                      add r0, r0, #0xc
003d7f78  ed a0 ff eb                                      bl #0x3c0334
003d7f7c  00 00 50 e3                                      cmp r0, #0
003d7f80  00 00 00 1a                                      bne #0x3d7f88
003d7f84  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d7f88  04 50 94 e5                                      ldr r5, [r4, #4]
003d7f8c  00 10 e0 e3                                      mvn r1, #0
003d7f90  05 00 a0 e1                                      mov r0, r5
003d7f94  7c 8e ff eb                                      bl #0x3bb98c
003d7f98  00 10 a0 e1                                      mov r1, r0
003d7f9c  05 00 a0 e1                                      mov r0, r5
003d7fa0  c6 5a ff eb                                      bl #0x3aeac0
003d7fa4  1c 30 90 e5                                      ldr r3, [r0, #0x1c]
003d7fa8  02 00 53 e3                                      cmp r3, #2
003d7fac  f4 ff ff 1a                                      bne #0x3d7f84
003d7fb0  d0 30 d4 e5                                      ldrb r3, [r4, #0xd0]
003d7fb4  00 00 53 e3                                      cmp r3, #0
003d7fb8  01 30 a0 03                                      moveq r3, #1
003d7fbc  d1 30 c4 05                                      strbeq r3, [r4, #0xd1]
003d7fc0  15 00 00 1a                                      bne #0x3d801c
003d7fc4  f2 95 10 eb                                      bl #0x7fd794
003d7fc8  05 30 d0 e5                                      ldrb r3, [r0, #5]
003d7fcc  00 00 53 e3                                      cmp r3, #0
003d7fd0  eb ff ff 0a                                      beq #0x3d7f84
003d7fd4  00 00 56 e3                                      cmp r6, #0
003d7fd8  e9 ff ff 1a                                      bne #0x3d7f84
003d7fdc  76 cc 10 eb                                      bl #0x80b1bc
003d7fe0  00 50 a0 e1                                      mov r5, r0
003d7fe4  48 00 9f e5                                      ldr r0, [pc, #0x48]
003d7fe8  04 30 94 e5                                      ldr r3, [r4, #4]
003d7fec  01 10 a0 e3                                      mov r1, #1
003d7ff0  00 00 8f e0                                      add r0, pc, r0
003d7ff4  08 41 d3 e5                                      ldrb r4, [r3, #0x108]
003d7ff8  91 c8 10 eb                                      bl #0x80a244
003d7ffc  04 30 a0 e3                                      mov r3, #4
003d8000  00 10 a0 e1                                      mov r1, r0
003d8004  54 40 c0 e5                                      strb r4, [r0, #0x54]
003d8008  50 30 c0 e5                                      strb r3, [r0, #0x50]
003d800c  b2 65 c0 e1                                      strh r6, [r0, #0x52]
003d8010  05 00 a0 e1                                      mov r0, r5
003d8014  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d8018  a1 d8 10 ea                                      b #0x80e2a4
003d801c  04 00 94 e5                                      ldr r0, [r4, #4]
003d8020  01 10 a0 e3                                      mov r1, #1
003d8024  49 0e 80 e2                                      add r0, r0, #0x490
003d8028  0c 00 80 e2                                      add r0, r0, #0xc
003d802c  16 c5 ff eb                                      bl #0x3c948c
003d8030  e3 ff ff ea                                      b #0x3d7fc4
; mapping-symbol data/literal pool
003d8034  18 6f 4e 00                                      .byte 0x18, 0x6f, 0x4e, 0x00

; FUNCTION 0x003d8038, declared_size=84, range_size=84, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11_SpellFocusEv
; demangled: CharAI::_SpellFocus()
; decoder-mode: arm
003d8038  10 40 2d e9                                      push {r4, lr}
003d803c  00 10 e0 e3                                      mvn r1, #0
003d8040  00 40 a0 e1                                      mov r4, r0
003d8044  04 00 90 e5                                      ldr r0, [r0, #4]
003d8048  4f 8e ff eb                                      bl #0x3bb98c
003d804c  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d8050  c4 20 94 e5                                      ldr r2, [r4, #0xc4]
003d8054  02 20 63 e0                                      rsb r2, r3, r2
003d8058  42 01 50 e1                                      cmp r0, r2, asr #2
003d805c  09 00 00 2a                                      bhs #0x3d8088
003d8060  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
003d8064  00 00 53 e3                                      cmp r3, #0
003d8068  06 00 00 0a                                      beq #0x3d8088
003d806c  04 00 94 e5                                      ldr r0, [r4, #4]
003d8070  00 10 e0 e3                                      mvn r1, #0
003d8074  44 8e ff eb                                      bl #0x3bb98c
003d8078  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d807c  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
003d8080  10 40 bd e8                                      pop {r4, lr}
003d8084  0b 0a 00 ea                                      b #0x3da8b8
003d8088  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d808c, declared_size=40, range_size=40, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11_SkillFocusEv
; demangled: CharAI::_SkillFocus()
; decoder-mode: arm
003d808c  b8 10 90 e5                                      ldr r1, [r0, #0xb8]
003d8090  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8094  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
003d8098  01 10 63 e0                                      rsb r1, r3, r1
003d809c  41 01 52 e1                                      cmp r2, r1, asr #2
003d80a0  1e ff 2f 21                                      bxhs lr
003d80a4  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
003d80a8  00 00 50 e3                                      cmp r0, #0
003d80ac  1e ff 2f 01                                      bxeq lr
003d80b0  00 0a 00 ea                                      b #0x3da8b8

; FUNCTION 0x003d80b4, declared_size=268, range_size=268, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI16AI_IsSpellUsableEv
; demangled: CharAI::AI_IsSpellUsable() const
; decoder-mode: arm
003d80b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d80b8  00 40 a0 e1                                      mov r4, r0
003d80bc  04 00 90 e5                                      ldr r0, [r0, #4]
003d80c0  0c d0 4d e2                                      sub sp, sp, #0xc
003d80c4  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
003d80c8  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d80cc  0c 00 80 e2                                      add r0, r0, #0xc
003d80d0  84 a0 ff eb                                      bl #0x3c02e8
003d80d4  00 00 50 e3                                      cmp r0, #0
003d80d8  06 60 8f e0                                      add r6, pc, r6
003d80dc  02 00 00 0a                                      beq #0x3d80ec
003d80e0  00 00 a0 e3                                      mov r0, #0
003d80e4  0c d0 8d e2                                      add sp, sp, #0xc
003d80e8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d80ec  04 00 94 e5                                      ldr r0, [r4, #4]
003d80f0  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d80f4  0c 00 80 e2                                      add r0, r0, #0xc
003d80f8  8d a0 ff eb                                      bl #0x3c0334
003d80fc  00 70 50 e2                                      subs r7, r0, #0
003d8100  f6 ff ff 1a                                      bne #0x3d80e0
003d8104  04 00 a0 e1                                      mov r0, r4
003d8108  d2 cc ff eb                                      bl #0x3cb458
003d810c  00 00 50 e3                                      cmp r0, #0
003d8110  f2 ff ff 0a                                      beq #0x3d80e0
003d8114  04 00 94 e5                                      ldr r0, [r4, #4]
003d8118  00 10 e0 e3                                      mvn r1, #0
003d811c  1a 8e ff eb                                      bl #0x3bb98c
003d8120  c0 20 94 e5                                      ldr r2, [r4, #0xc0]
003d8124  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
003d8128  00 50 a0 e1                                      mov r5, r0
003d812c  03 30 62 e0                                      rsb r3, r2, r3
003d8130  43 01 50 e1                                      cmp r0, r3, asr #2
003d8134  07 00 00 ba                                      blt #0x3d8158
003d8138  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003d813c  03 30 96 e7                                      ldr r3, [r6, r3]
003d8140  00 30 93 e5                                      ldr r3, [r3]
003d8144  02 00 53 e3                                      cmp r3, #2
003d8148  00 70 87 05                                      streq r7, [r7]
003d814c  01 00 00 0a                                      beq #0x3d8158
003d8150  01 00 53 e3                                      cmp r3, #1
003d8154  05 00 00 0a                                      beq #0x3d8170
003d8158  05 01 92 e7                                      ldr r0, [r2, r5, lsl #2]
003d815c  00 00 50 e3                                      cmp r0, #0
003d8160  de ff ff 0a                                      beq #0x3d80e0
003d8164  0c d0 8d e2                                      add sp, sp, #0xc
003d8168  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003d816c  1a 0a 00 ea                                      b #0x3da9dc
003d8170  38 00 9f e5                                      ldr r0, [pc, #0x38]
003d8174  38 10 9f e5                                      ldr r1, [pc, #0x38]
003d8178  38 20 9f e5                                      ldr r2, [pc, #0x38]
003d817c  00 00 96 e7                                      ldr r0, [r6, r0]
003d8180  34 30 9f e5                                      ldr r3, [pc, #0x34]
003d8184  02 20 8f e0                                      add r2, pc, r2
003d8188  41 c1 00 e3                                      movw ip, #0x141
003d818c  01 10 8f e0                                      add r1, pc, r1
003d8190  a8 00 80 e2                                      add r0, r0, #0xa8
003d8194  03 30 8f e0                                      add r3, pc, r3
003d8198  00 c0 8d e5                                      str ip, [sp]
003d819c  98 d7 fc eb                                      bl #0x30e004
003d81a0  c0 20 94 e5                                      ldr r2, [r4, #0xc0]
003d81a4  eb ff ff ea                                      b #0x3d8158
; mapping-symbol data/literal pool
003d81a8  b8 c9 5b 00 c0 39 00 00 c0 19 00 00 4c 62 4e 00  .byte 0xb8, 0xc9, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x4c, 0x62, 0x4e, 0x00
003d81b8  1c d6 4e 00 94 d5 4e 00                          .byte 0x1c, 0xd6, 0x4e, 0x00, 0x94, 0xd5, 0x4e, 0x00

; FUNCTION 0x003d81c0, declared_size=364, range_size=364, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13AI_BeginSpellEb
; demangled: CharAI::AI_BeginSpell(bool)
; decoder-mode: arm
003d81c0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d81c4  00 40 a0 e1                                      mov r4, r0
003d81c8  01 60 a0 e1                                      mov r6, r1
003d81cc  04 00 90 e5                                      ldr r0, [r0, #4]
003d81d0  00 10 e0 e3                                      mvn r1, #0
003d81d4  ec 8d ff eb                                      bl #0x3bb98c
003d81d8  00 10 a0 e1                                      mov r1, r0
003d81dc  00 50 a0 e1                                      mov r5, r0
003d81e0  04 00 94 e5                                      ldr r0, [r4, #4]
003d81e4  35 5a ff eb                                      bl #0x3aeac0
003d81e8  1c 70 90 e5                                      ldr r7, [r0, #0x1c]
003d81ec  01 00 57 e3                                      cmp r7, #1
003d81f0  2b 00 00 0a                                      beq #0x3d82a4
003d81f4  04 00 a0 e1                                      mov r0, r4
003d81f8  ad ff ff eb                                      bl #0x3d80b4
003d81fc  00 00 50 e3                                      cmp r0, #0
003d8200  00 00 00 1a                                      bne #0x3d8208
003d8204  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d8208  04 70 94 e5                                      ldr r7, [r4, #4]
003d820c  00 80 a0 e3                                      mov r8, #0
003d8210  00 10 e0 e3                                      mvn r1, #0
003d8214  d0 80 c4 e5                                      strb r8, [r4, #0xd0]
003d8218  d1 80 c4 e5                                      strb r8, [r4, #0xd1]
003d821c  07 00 a0 e1                                      mov r0, r7
003d8220  d9 8d ff eb                                      bl #0x3bb98c
003d8224  00 10 a0 e1                                      mov r1, r0
003d8228  4f 0e 87 e2                                      add r0, r7, #0x4f0
003d822c  08 30 a0 e1                                      mov r3, r8
003d8230  08 20 a0 e1                                      mov r2, r8
003d8234  0c 00 80 e2                                      add r0, r0, #0xc
003d8238  55 b8 ff eb                                      bl #0x3c6394
003d823c  54 95 10 eb                                      bl #0x7fd794
003d8240  05 30 d0 e5                                      ldrb r3, [r0, #5]
003d8244  08 00 53 e1                                      cmp r3, r8
003d8248  10 00 00 0a                                      beq #0x3d8290
003d824c  08 00 56 e1                                      cmp r6, r8
003d8250  0e 00 00 1a                                      bne #0x3d8290
003d8254  d8 cb 10 eb                                      bl #0x80b1bc
003d8258  00 60 a0 e1                                      mov r6, r0
003d825c  c0 00 9f e5                                      ldr r0, [pc, #0xc0]
003d8260  04 30 94 e5                                      ldr r3, [r4, #4]
003d8264  01 10 a0 e3                                      mov r1, #1
003d8268  00 00 8f e0                                      add r0, pc, r0
003d826c  08 71 d3 e5                                      ldrb r7, [r3, #0x108]
003d8270  f3 c7 10 eb                                      bl #0x80a244
003d8274  03 30 a0 e3                                      mov r3, #3
003d8278  00 10 a0 e1                                      mov r1, r0
003d827c  54 70 c0 e5                                      strb r7, [r0, #0x54]
003d8280  50 30 c0 e5                                      strb r3, [r0, #0x50]
003d8284  b2 55 c0 e1                                      strh r5, [r0, #0x52]
003d8288  06 00 a0 e1                                      mov r0, r6
003d828c  04 d8 10 eb                                      bl #0x80e2a4
003d8290  04 00 94 e5                                      ldr r0, [r4, #4]
003d8294  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d8298  0c 00 80 e2                                      add r0, r0, #0xc
003d829c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003d82a0  23 a0 ff ea                                      b #0x3c0334
003d82a4  04 00 a0 e1                                      mov r0, r4
003d82a8  bb fe ff eb                                      bl #0x3d7d9c
003d82ac  00 00 50 e3                                      cmp r0, #0
003d82b0  cf ff ff 0a                                      beq #0x3d81f4
003d82b4  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d82b8  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003d82bc  7d 09 00 eb                                      bl #0x3da8b8
003d82c0  33 95 10 eb                                      bl #0x7fd794
003d82c4  05 30 d0 e5                                      ldrb r3, [r0, #5]
003d82c8  00 00 53 e3                                      cmp r3, #0
003d82cc  12 00 00 0a                                      beq #0x3d831c
003d82d0  00 00 56 e3                                      cmp r6, #0
003d82d4  10 00 00 1a                                      bne #0x3d831c
003d82d8  b7 cb 10 eb                                      bl #0x80b1bc
003d82dc  00 60 a0 e1                                      mov r6, r0
003d82e0  40 00 9f e5                                      ldr r0, [pc, #0x40]
003d82e4  04 30 94 e5                                      ldr r3, [r4, #4]
003d82e8  07 10 a0 e1                                      mov r1, r7
003d82ec  00 00 8f e0                                      add r0, pc, r0
003d82f0  08 41 d3 e5                                      ldrb r4, [r3, #0x108]
003d82f4  d2 c7 10 eb                                      bl #0x80a244
003d82f8  03 30 a0 e3                                      mov r3, #3
003d82fc  00 10 a0 e1                                      mov r1, r0
003d8300  54 40 c0 e5                                      strb r4, [r0, #0x54]
003d8304  50 30 c0 e5                                      strb r3, [r0, #0x50]
003d8308  b2 55 c0 e1                                      strh r5, [r0, #0x52]
003d830c  06 00 a0 e1                                      mov r0, r6
003d8310  e3 d7 10 eb                                      bl #0x80e2a4
003d8314  07 00 a0 e1                                      mov r0, r7
003d8318  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003d831c  01 00 a0 e3                                      mov r0, #1
003d8320  b7 ff ff ea                                      b #0x3d8204
; mapping-symbol data/literal pool
003d8324  a0 6c 4e 00 1c 6c 4e 00                          .byte 0xa0, 0x6c, 0x4e, 0x00, 0x1c, 0x6c, 0x4e, 0x00

; FUNCTION 0x003d832c, declared_size=44, range_size=44, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12AI_CastSpellEv
; demangled: CharAI::AI_CastSpell()
; decoder-mode: arm
003d832c  10 40 2d e9                                      push {r4, lr}
003d8330  00 10 a0 e3                                      mov r1, #0
003d8334  00 40 a0 e1                                      mov r4, r0
003d8338  a0 ff ff eb                                      bl #0x3d81c0
003d833c  00 00 50 e3                                      cmp r0, #0
003d8340  03 00 00 0a                                      beq #0x3d8354
003d8344  04 00 a0 e1                                      mov r0, r4
003d8348  00 10 a0 e3                                      mov r1, #0
003d834c  03 ff ff eb                                      bl #0x3d7f60
003d8350  01 00 a0 e3                                      mov r0, #1
003d8354  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d8358, declared_size=284, range_size=284, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI16AI_IsSkillUsableEj
; demangled: CharAI::AI_IsSkillUsable(unsigned int) const
; decoder-mode: arm
003d8358  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003d835c  00 40 a0 e1                                      mov r4, r0
003d8360  04 00 90 e5                                      ldr r0, [r0, #4]
003d8364  0c d0 4d e2                                      sub sp, sp, #0xc
003d8368  01 50 a0 e1                                      mov r5, r1
003d836c  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d8370  0c 00 80 e2                                      add r0, r0, #0xc
003d8374  db 9f ff eb                                      bl #0x3c02e8
003d8378  dc 60 9f e5                                      ldr r6, [pc, #0xdc]
003d837c  00 00 50 e3                                      cmp r0, #0
003d8380  04 00 94 05                                      ldreq r0, [r4, #4]
003d8384  06 60 8f e0                                      add r6, pc, r6
003d8388  06 00 00 0a                                      beq #0x3d83a8
003d838c  04 00 94 e5                                      ldr r0, [r4, #4]
003d8390  20 35 90 e5                                      ldr r3, [r0, #0x520]
003d8394  02 09 13 e3                                      tst r3, #0x8000
003d8398  02 00 00 1a                                      bne #0x3d83a8
003d839c  00 00 a0 e3                                      mov r0, #0
003d83a0  0c d0 8d e2                                      add sp, sp, #0xc
003d83a4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003d83a8  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d83ac  0c 00 80 e2                                      add r0, r0, #0xc
003d83b0  df 9f ff eb                                      bl #0x3c0334
003d83b4  00 70 50 e2                                      subs r7, r0, #0
003d83b8  f7 ff ff 1a                                      bne #0x3d839c
003d83bc  04 00 a0 e1                                      mov r0, r4
003d83c0  24 cc ff eb                                      bl #0x3cb458
003d83c4  00 00 50 e3                                      cmp r0, #0
003d83c8  f3 ff ff 0a                                      beq #0x3d839c
003d83cc  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d83d0  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
003d83d4  02 20 63 e0                                      rsb r2, r3, r2
003d83d8  42 01 55 e1                                      cmp r5, r2, asr #2
003d83dc  18 00 00 3a                                      blo #0x3d8444
003d83e0  78 30 9f e5                                      ldr r3, [pc, #0x78]
003d83e4  03 30 96 e7                                      ldr r3, [r6, r3]
003d83e8  00 30 93 e5                                      ldr r3, [r3]
003d83ec  02 00 53 e3                                      cmp r3, #2
003d83f0  00 70 87 05                                      streq r7, [r7]
003d83f4  e8 ff ff 0a                                      beq #0x3d839c
003d83f8  01 00 53 e3                                      cmp r3, #1
003d83fc  e6 ff ff 1a                                      bne #0x3d839c
003d8400  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
003d8404  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003d8408  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003d840c  00 00 96 e7                                      ldr r0, [r6, r0]
003d8410  58 30 9f e5                                      ldr r3, [pc, #0x58]
003d8414  02 20 8f e0                                      add r2, pc, r2
003d8418  b5 c0 a0 e3                                      mov ip, #0xb5
003d841c  03 30 8f e0                                      add r3, pc, r3
003d8420  01 10 8f e0                                      add r1, pc, r1
003d8424  a8 00 80 e2                                      add r0, r0, #0xa8
003d8428  00 c0 8d e5                                      str ip, [sp]
003d842c  f4 d6 fc eb                                      bl #0x30e004
003d8430  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
003d8434  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d8438  02 20 63 e0                                      rsb r2, r3, r2
003d843c  42 01 55 e1                                      cmp r5, r2, asr #2
003d8440  d5 ff ff 2a                                      bhs #0x3d839c
003d8444  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003d8448  00 00 50 e3                                      cmp r0, #0
003d844c  d2 ff ff 0a                                      beq #0x3d839c
003d8450  0c d0 8d e2                                      add sp, sp, #0xc
003d8454  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003d8458  5f 09 00 ea                                      b #0x3da9dc
; mapping-symbol data/literal pool
003d845c  0c c7 5b 00 c0 39 00 00 c0 19 00 00 b8 5f 4e 00  .byte 0x0c, 0xc7, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xb8, 0x5f, 0x4e, 0x00
003d846c  6c d3 4e 00 0c d3 4e 00                          .byte 0x6c, 0xd3, 0x4e, 0x00, 0x0c, 0xd3, 0x4e, 0x00

; FUNCTION 0x003d8474, declared_size=108, range_size=108, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11AI_EndSkillEj
; demangled: CharAI::AI_EndSkill(unsigned int)
; decoder-mode: arm
003d8474  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8478  00 40 a0 e1                                      mov r4, r0
003d847c  04 00 90 e5                                      ldr r0, [r0, #4]
003d8480  01 50 a0 e1                                      mov r5, r1
003d8484  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d8488  0c 00 80 e2                                      add r0, r0, #0xc
003d848c  95 9f ff eb                                      bl #0x3c02e8
003d8490  00 00 50 e3                                      cmp r0, #0
003d8494  00 00 00 1a                                      bne #0x3d849c
003d8498  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d849c  05 10 a0 e1                                      mov r1, r5
003d84a0  04 00 94 e5                                      ldr r0, [r4, #4]
003d84a4  b6 90 ff eb                                      bl #0x3bc784
003d84a8  48 30 90 e5                                      ldr r3, [r0, #0x48]
003d84ac  02 00 53 e3                                      cmp r3, #2
003d84b0  f8 ff ff 1a                                      bne #0x3d8498
003d84b4  d0 30 d4 e5                                      ldrb r3, [r4, #0xd0]
003d84b8  00 00 53 e3                                      cmp r3, #0
003d84bc  01 30 a0 03                                      moveq r3, #1
003d84c0  d1 30 c4 05                                      strbeq r3, [r4, #0xd1]
003d84c4  f3 ff ff 0a                                      beq #0x3d8498
003d84c8  04 00 94 e5                                      ldr r0, [r4, #4]
003d84cc  01 10 a0 e3                                      mov r1, #1
003d84d0  49 0e 80 e2                                      add r0, r0, #0x490
003d84d4  0c 00 80 e2                                      add r0, r0, #0xc
003d84d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d84dc  ea c3 ff ea                                      b #0x3c948c

; FUNCTION 0x003d84e0, declared_size=244, range_size=244, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI14AI_CancelSkillEj
; demangled: CharAI::AI_CancelSkill(unsigned int)
; decoder-mode: arm
003d84e0  30 40 2d e9                                      push {r4, r5, lr}
003d84e4  00 40 a0 e1                                      mov r4, r0
003d84e8  b4 20 90 e5                                      ldr r2, [r0, #0xb4]
003d84ec  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
003d84f0  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003d84f4  0c d0 4d e2                                      sub sp, sp, #0xc
003d84f8  00 00 62 e0                                      rsb r0, r2, r0
003d84fc  40 01 51 e1                                      cmp r1, r0, asr #2
003d8500  01 50 a0 e1                                      mov r5, r1
003d8504  03 30 8f e0                                      add r3, pc, r3
003d8508  08 00 00 3a                                      blo #0x3d8530
003d850c  ac 10 9f e5                                      ldr r1, [pc, #0xac]
003d8510  01 10 93 e7                                      ldr r1, [r3, r1]
003d8514  00 10 91 e5                                      ldr r1, [r1]
003d8518  02 00 51 e3                                      cmp r1, #2
003d851c  00 30 a0 03                                      moveq r3, #0
003d8520  00 30 83 05                                      streq r3, [r3]
003d8524  01 00 00 0a                                      beq #0x3d8530
003d8528  01 00 51 e3                                      cmp r1, #1
003d852c  14 00 00 0a                                      beq #0x3d8584
003d8530  05 31 92 e7                                      ldr r3, [r2, r5, lsl #2]
003d8534  00 00 53 e3                                      cmp r3, #0
003d8538  05 00 00 0a                                      beq #0x3d8554
003d853c  04 00 94 e5                                      ldr r0, [r4, #4]
003d8540  05 10 a0 e1                                      mov r1, r5
003d8544  8e 90 ff eb                                      bl #0x3bc784
003d8548  48 30 90 e5                                      ldr r3, [r0, #0x48]
003d854c  01 00 53 e3                                      cmp r3, #1
003d8550  01 00 00 0a                                      beq #0x3d855c
003d8554  0c d0 8d e2                                      add sp, sp, #0xc
003d8558  30 80 bd e8                                      pop {r4, r5, pc}
003d855c  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d8560  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003d8564  00 0b 00 eb                                      bl #0x3db16c
003d8568  00 00 50 e3                                      cmp r0, #0
003d856c  f8 ff ff 0a                                      beq #0x3d8554
003d8570  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d8574  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003d8578  0c d0 8d e2                                      add sp, sp, #0xc
003d857c  30 40 bd e8                                      pop {r4, r5, lr}
003d8580  cc 08 00 ea                                      b #0x3da8b8
003d8584  38 00 9f e5                                      ldr r0, [pc, #0x38]
003d8588  38 10 9f e5                                      ldr r1, [pc, #0x38]
003d858c  38 20 9f e5                                      ldr r2, [pc, #0x38]
003d8590  00 00 93 e7                                      ldr r0, [r3, r0]
003d8594  34 30 9f e5                                      ldr r3, [pc, #0x34]
003d8598  02 20 8f e0                                      add r2, pc, r2
003d859c  22 c1 00 e3                                      movw ip, #0x122
003d85a0  01 10 8f e0                                      add r1, pc, r1
003d85a4  a8 00 80 e2                                      add r0, r0, #0xa8
003d85a8  03 30 8f e0                                      add r3, pc, r3
003d85ac  00 c0 8d e5                                      str ip, [sp]
003d85b0  93 d6 fc eb                                      bl #0x30e004
003d85b4  b4 20 94 e5                                      ldr r2, [r4, #0xb4]
003d85b8  dc ff ff ea                                      b #0x3d8530
; mapping-symbol data/literal pool
003d85bc  8c c5 5b 00 c0 39 00 00 c0 19 00 00 38 5e 4e 00  .byte 0x8c, 0xc5, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x38, 0x5e, 0x4e, 0x00
003d85cc  e8 d1 4e 00 80 d1 4e 00                          .byte 0xe8, 0xd1, 0x4e, 0x00, 0x80, 0xd1, 0x4e, 0x00

; FUNCTION 0x003d85d4, declared_size=232, range_size=232, mode=arm
; class-group: CharAI
; alias: _ZNK6CharAI16AI_IsSkillActiveEj
; demangled: CharAI::AI_IsSkillActive(unsigned int) const
; decoder-mode: arm
003d85d4  30 40 2d e9                                      push {r4, r5, lr}
003d85d8  00 40 a0 e1                                      mov r4, r0
003d85dc  b4 20 94 e5                                      ldr r2, [r4, #0xb4]
003d85e0  b8 00 90 e5                                      ldr r0, [r0, #0xb8]
003d85e4  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
003d85e8  0c d0 4d e2                                      sub sp, sp, #0xc
003d85ec  00 20 62 e0                                      rsb r2, r2, r0
003d85f0  42 01 51 e1                                      cmp r1, r2, asr #2
003d85f4  01 50 a0 e1                                      mov r5, r1
003d85f8  03 30 8f e0                                      add r3, pc, r3
003d85fc  08 00 00 3a                                      blo #0x3d8624
003d8600  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
003d8604  02 20 93 e7                                      ldr r2, [r3, r2]
003d8608  00 20 92 e5                                      ldr r2, [r2]
003d860c  02 00 52 e3                                      cmp r2, #2
003d8610  00 30 a0 03                                      moveq r3, #0
003d8614  00 30 83 05                                      streq r3, [r3]
003d8618  01 00 00 0a                                      beq #0x3d8624
003d861c  01 00 52 e3                                      cmp r2, #1
003d8620  12 00 00 0a                                      beq #0x3d8670
003d8624  04 00 94 e5                                      ldr r0, [r4, #4]
003d8628  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d862c  0c 00 80 e2                                      add r0, r0, #0xc
003d8630  2c 9f ff eb                                      bl #0x3c02e8
003d8634  00 00 50 e3                                      cmp r0, #0
003d8638  03 00 00 0a                                      beq #0x3d864c
003d863c  cc 30 94 e5                                      ldr r3, [r4, #0xcc]
003d8640  03 00 55 e1                                      cmp r5, r3
003d8644  01 00 a0 03                                      moveq r0, #1
003d8648  06 00 00 0a                                      beq #0x3d8668
003d864c  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d8650  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003d8654  00 00 50 e3                                      cmp r0, #0
003d8658  02 00 00 0a                                      beq #0x3d8668
003d865c  0c d0 8d e2                                      add sp, sp, #0xc
003d8660  30 40 bd e8                                      pop {r4, r5, lr}
003d8664  c0 0a 00 ea                                      b #0x3db16c
003d8668  0c d0 8d e2                                      add sp, sp, #0xc
003d866c  30 80 bd e8                                      pop {r4, r5, pc}
003d8670  34 00 9f e5                                      ldr r0, [pc, #0x34]
003d8674  34 10 9f e5                                      ldr r1, [pc, #0x34]
003d8678  34 20 9f e5                                      ldr r2, [pc, #0x34]
003d867c  00 00 93 e7                                      ldr r0, [r3, r0]
003d8680  30 30 9f e5                                      ldr r3, [pc, #0x30]
003d8684  c7 c0 a0 e3                                      mov ip, #0xc7
003d8688  01 10 8f e0                                      add r1, pc, r1
003d868c  02 20 8f e0                                      add r2, pc, r2
003d8690  03 30 8f e0                                      add r3, pc, r3
003d8694  a8 00 80 e2                                      add r0, r0, #0xa8
003d8698  00 c0 8d e5                                      str ip, [sp]
003d869c  58 d6 fc eb                                      bl #0x30e004
003d86a0  df ff ff ea                                      b #0x3d8624
; mapping-symbol data/literal pool
003d86a4  98 c4 5b 00 c0 39 00 00 c0 19 00 00 50 5d 4e 00  .byte 0x98, 0xc4, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x50, 0x5d, 0x4e, 0x00
003d86b4  f4 d0 4e 00 98 d0 4e 00                          .byte 0xf4, 0xd0, 0x4e, 0x00, 0x98, 0xd0, 0x4e, 0x00

; FUNCTION 0x003d86bc, declared_size=428, range_size=428, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13AI_BeginSkillEj
; demangled: CharAI::AI_BeginSkill(unsigned int)
; decoder-mode: arm
003d86bc  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003d86c0  00 40 a0 e1                                      mov r4, r0
003d86c4  0c d0 4d e2                                      sub sp, sp, #0xc
003d86c8  04 00 90 e5                                      ldr r0, [r0, #4]
003d86cc  01 70 a0 e1                                      mov r7, r1
003d86d0  2b 90 ff eb                                      bl #0x3bc784
003d86d4  48 60 90 e5                                      ldr r6, [r0, #0x48]
003d86d8  70 51 9f e5                                      ldr r5, [pc, #0x170]
003d86dc  00 80 a0 e1                                      mov r8, r0
003d86e0  01 00 56 e3                                      cmp r6, #1
003d86e4  05 50 8f e0                                      add r5, pc, r5
003d86e8  1f 00 00 0a                                      beq #0x3d876c
003d86ec  04 00 a0 e1                                      mov r0, r4
003d86f0  07 10 a0 e1                                      mov r1, r7
003d86f4  17 ff ff eb                                      bl #0x3d8358
003d86f8  00 00 50 e3                                      cmp r0, #0
003d86fc  01 00 00 1a                                      bne #0x3d8708
003d8700  0c d0 8d e2                                      add sp, sp, #0xc
003d8704  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003d8708  04 00 94 e5                                      ldr r0, [r4, #4]
003d870c  00 60 a0 e3                                      mov r6, #0
003d8710  cc 70 84 e5                                      str r7, [r4, #0xcc]
003d8714  d0 60 c4 e5                                      strb r6, [r4, #0xd0]
003d8718  d1 60 c4 e5                                      strb r6, [r4, #0xd1]
003d871c  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d8720  08 20 d8 e5                                      ldrb r2, [r8, #8]
003d8724  07 10 a0 e1                                      mov r1, r7
003d8728  0c 00 80 e2                                      add r0, r0, #0xc
003d872c  06 30 a0 e1                                      mov r3, r6
003d8730  00 60 8d e5                                      str r6, [sp]
003d8734  cd b7 ff eb                                      bl #0x3c6670
003d8738  04 30 94 e5                                      ldr r3, [r4, #4]
003d873c  03 00 a0 e1                                      mov r0, r3
003d8740  00 30 93 e5                                      ldr r3, [r3]
003d8744  0f e0 a0 e1                                      mov lr, pc
003d8748  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003d874c  06 00 50 e1                                      cmp r0, r6
003d8750  0f 00 00 1a                                      bne #0x3d8794
003d8754  04 00 94 e5                                      ldr r0, [r4, #4]
003d8758  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d875c  0c 00 80 e2                                      add r0, r0, #0xc
003d8760  0c d0 8d e2                                      add sp, sp, #0xc
003d8764  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
003d8768  de 9e ff ea                                      b #0x3c02e8
003d876c  04 00 a0 e1                                      mov r0, r4
003d8770  07 10 a0 e1                                      mov r1, r7
003d8774  96 ff ff eb                                      bl #0x3d85d4
003d8778  00 00 50 e3                                      cmp r0, #0
003d877c  da ff ff 0a                                      beq #0x3d86ec
003d8780  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d8784  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
003d8788  4a 08 00 eb                                      bl #0x3da8b8
003d878c  06 00 a0 e1                                      mov r0, r6
003d8790  da ff ff ea                                      b #0x3d8700
003d8794  04 00 94 e5                                      ldr r0, [r4, #4]
003d8798  d8 10 a0 e3                                      mov r1, #0xd8
003d879c  01 20 a0 e3                                      mov r2, #1
003d87a0  56 0e 80 e2                                      add r0, r0, #0x560
003d87a4  fb 1f 00 eb                                      bl #0x3e0798
003d87a8  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003d87ac  04 00 94 e5                                      ldr r0, [r4, #4]
003d87b0  d8 10 a0 e3                                      mov r1, #0xd8
003d87b4  03 30 95 e7                                      ldr r3, [r5, r3]
003d87b8  56 0e 80 e2                                      add r0, r0, #0x560
003d87bc  06 20 a0 e1                                      mov r2, r6
003d87c0  00 70 93 e5                                      ldr r7, [r3]
003d87c4  c5 1b 00 eb                                      bl #0x3df6e0
003d87c8  c7 00 50 e3                                      cmp r0, #0xc7
003d87cc  e0 ff ff da                                      ble #0x3d8754
003d87d0  80 30 9f e5                                      ldr r3, [pc, #0x80]
003d87d4  04 10 94 e5                                      ldr r1, [r4, #4]
003d87d8  03 30 95 e7                                      ldr r3, [r5, r3]
003d87dc  40 00 93 e5                                      ldr r0, [r3, #0x40]
003d87e0  05 5a fe eb                                      bl #0x36effc
003d87e4  06 00 50 e1                                      cmp r0, r6
003d87e8  d9 ff ff 0a                                      beq #0x3d8754
003d87ec  68 30 9f e5                                      ldr r3, [pc, #0x68]
003d87f0  03 30 95 e7                                      ldr r3, [r5, r3]
003d87f4  00 a0 93 e5                                      ldr sl, [r3]
003d87f8  06 00 5a e1                                      cmp sl, r6
003d87fc  11 00 00 0a                                      beq #0x3d8848
003d8800  58 30 9f e5                                      ldr r3, [pc, #0x58]
003d8804  58 80 9f e5                                      ldr r8, [pc, #0x58]
003d8808  03 30 95 e7                                      ldr r3, [r5, r3]
003d880c  08 80 8f e0                                      add r8, pc, r8
003d8810  00 50 93 e5                                      ldr r5, [r3]
003d8814  02 00 00 ea                                      b #0x3d8824
003d8818  01 60 86 e2                                      add r6, r6, #1
003d881c  0a 00 56 e1                                      cmp r6, sl
003d8820  08 00 00 0a                                      beq #0x3d8848
003d8824  06 11 95 e7                                      ldr r1, [r5, r6, lsl #2]
003d8828  08 00 a0 e1                                      mov r0, r8
003d882c  ba d6 fc eb                                      bl #0x30e31c
003d8830  00 00 50 e3                                      cmp r0, #0
003d8834  f7 ff ff 1a                                      bne #0x3d8818
003d8838  06 10 a0 e1                                      mov r1, r6
003d883c  07 00 a0 e1                                      mov r0, r7
003d8840  dc a2 fe eb                                      bl #0x3813b8
003d8844  c2 ff ff ea                                      b #0x3d8754
003d8848  00 10 e0 e3                                      mvn r1, #0
003d884c  fa ff ff ea                                      b #0x3d883c
; mapping-symbol data/literal pool
003d8850  ac c3 5b 00 70 1d 00 00 f4 37 00 00 fc 0e 00 00  .byte 0xac, 0xc3, 0x5b, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xfc, 0x0e, 0x00, 0x00
003d8860  2c 10 00 00 bc cf 4e 00                          .byte 0x2c, 0x10, 0x00, 0x00, 0xbc, 0xcf, 0x4e, 0x00

; FUNCTION 0x003d8868, declared_size=44, range_size=44, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11AI_UseSkillEj
; demangled: CharAI::AI_UseSkill(unsigned int)
; decoder-mode: arm
003d8868  70 40 2d e9                                      push {r4, r5, r6, lr}
003d886c  00 50 a0 e1                                      mov r5, r0
003d8870  01 40 a0 e1                                      mov r4, r1
003d8874  90 ff ff eb                                      bl #0x3d86bc
003d8878  00 00 50 e3                                      cmp r0, #0
003d887c  03 00 00 0a                                      beq #0x3d8890
003d8880  05 00 a0 e1                                      mov r0, r5
003d8884  04 10 a0 e1                                      mov r1, r4
003d8888  f9 fe ff eb                                      bl #0x3d8474
003d888c  01 00 a0 e3                                      mov r0, #1
003d8890  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d8894, declared_size=180, range_size=180, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15UpdateAllSkillsEv
; demangled: CharAI::UpdateAllSkills()
; decoder-mode: arm
003d8894  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8898  00 50 a0 e1                                      mov r5, r0
003d889c  04 00 90 e5                                      ldr r0, [r0, #4]
003d88a0  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d88a4  0c 00 80 e2                                      add r0, r0, #0xc
003d88a8  8e 9e ff eb                                      bl #0x3c02e8
003d88ac  00 00 50 e3                                      cmp r0, #0
003d88b0  00 00 00 0a                                      beq #0x3d88b8
003d88b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d88b8  04 00 95 e5                                      ldr r0, [r5, #4]
003d88bc  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d88c0  0c 00 80 e2                                      add r0, r0, #0xc
003d88c4  9a 9e ff eb                                      bl #0x3c0334
003d88c8  00 40 50 e2                                      subs r4, r0, #0
003d88cc  f8 ff ff 1a                                      bne #0x3d88b4
003d88d0  b4 30 95 e5                                      ldr r3, [r5, #0xb4]
003d88d4  b8 60 95 e5                                      ldr r6, [r5, #0xb8]
003d88d8  06 60 63 e0                                      rsb r6, r3, r6
003d88dc  46 61 b0 e1                                      asrs r6, r6, #2
003d88e0  01 00 00 1a                                      bne #0x3d88ec
003d88e4  07 00 00 ea                                      b #0x3d8908
003d88e8  b4 30 95 e5                                      ldr r3, [r5, #0xb4]
003d88ec  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d88f0  01 40 84 e2                                      add r4, r4, #1
003d88f4  00 00 50 e3                                      cmp r0, #0
003d88f8  00 00 00 0a                                      beq #0x3d8900
003d88fc  b3 08 00 eb                                      bl #0x3dabd0
003d8900  06 00 54 e1                                      cmp r4, r6
003d8904  f7 ff ff 1a                                      bne #0x3d88e8
003d8908  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
003d890c  c4 60 95 e5                                      ldr r6, [r5, #0xc4]
003d8910  06 60 63 e0                                      rsb r6, r3, r6
003d8914  46 61 b0 e1                                      asrs r6, r6, #2
003d8918  e5 ff ff 0a                                      beq #0x3d88b4
003d891c  00 40 a0 e3                                      mov r4, #0
003d8920  00 00 00 ea                                      b #0x3d8928
003d8924  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
003d8928  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d892c  01 40 84 e2                                      add r4, r4, #1
003d8930  00 00 50 e3                                      cmp r0, #0
003d8934  00 00 00 0a                                      beq #0x3d893c
003d8938  a4 08 00 eb                                      bl #0x3dabd0
003d893c  06 00 54 e1                                      cmp r4, r6
003d8940  f7 ff ff 1a                                      bne #0x3d8924
003d8944  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d8948, declared_size=188, range_size=188, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15_UpdateSkillsCBEijPv
; demangled: CharAI::_UpdateSkillsCB(int, unsigned int, void*)
; decoder-mode: arm
003d8948  30 40 2d e9                                      push {r4, r5, lr}
003d894c  98 30 9f e5                                      ldr r3, [pc, #0x98]
003d8950  00 40 52 e2                                      subs r4, r2, #0
003d8954  0c d0 4d e2                                      sub sp, sp, #0xc
003d8958  01 50 a0 e1                                      mov r5, r1
003d895c  03 30 8f e0                                      add r3, pc, r3
003d8960  0c 00 00 0a                                      beq #0x3d8998
003d8964  b8 20 94 e5                                      ldr r2, [r4, #0xb8]
003d8968  b4 30 94 e5                                      ldr r3, [r4, #0xb4]
003d896c  02 20 63 e0                                      rsb r2, r3, r2
003d8970  42 01 55 e1                                      cmp r5, r2, asr #2
003d8974  05 00 00 2a                                      bhs #0x3d8990
003d8978  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003d897c  00 00 50 e3                                      cmp r0, #0
003d8980  02 00 00 0a                                      beq #0x3d8990
003d8984  0c d0 8d e2                                      add sp, sp, #0xc
003d8988  30 40 bd e8                                      pop {r4, r5, lr}
003d898c  8f 08 00 ea                                      b #0x3dabd0
003d8990  0c d0 8d e2                                      add sp, sp, #0xc
003d8994  30 80 bd e8                                      pop {r4, r5, pc}
003d8998  50 20 9f e5                                      ldr r2, [pc, #0x50]
003d899c  02 20 93 e7                                      ldr r2, [r3, r2]
003d89a0  00 20 92 e5                                      ldr r2, [r2]
003d89a4  02 00 52 e3                                      cmp r2, #2
003d89a8  00 40 84 05                                      streq r4, [r4]
003d89ac  ec ff ff 0a                                      beq #0x3d8964
003d89b0  01 00 52 e3                                      cmp r2, #1
003d89b4  ea ff ff 1a                                      bne #0x3d8964
003d89b8  34 00 9f e5                                      ldr r0, [pc, #0x34]
003d89bc  34 10 9f e5                                      ldr r1, [pc, #0x34]
003d89c0  34 20 9f e5                                      ldr r2, [pc, #0x34]
003d89c4  00 00 93 e7                                      ldr r0, [r3, r0]
003d89c8  30 30 9f e5                                      ldr r3, [pc, #0x30]
003d89cc  72 c0 a0 e3                                      mov ip, #0x72
003d89d0  01 10 8f e0                                      add r1, pc, r1
003d89d4  02 20 8f e0                                      add r2, pc, r2
003d89d8  03 30 8f e0                                      add r3, pc, r3
003d89dc  a8 00 80 e2                                      add r0, r0, #0xa8
003d89e0  00 c0 8d e5                                      str ip, [sp]
003d89e4  86 d5 fc eb                                      bl #0x30e004
003d89e8  dd ff ff ea                                      b #0x3d8964
; mapping-symbol data/literal pool
003d89ec  34 c1 5b 00 c0 39 00 00 c0 19 00 00 08 5a 4e 00  .byte 0x34, 0xc1, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x08, 0x5a, 0x4e, 0x00
003d89fc  7c 5e 4e 00 50 cd 4e 00                          .byte 0x7c, 0x5e, 0x4e, 0x00, 0x50, 0xcd, 0x4e, 0x00

; FUNCTION 0x003d8a04, declared_size=148, range_size=148, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI12UpdateSkillsEv
; demangled: CharAI::UpdateSkills()
; decoder-mode: arm
003d8a04  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8a08  00 40 a0 e1                                      mov r4, r0
003d8a0c  04 00 90 e5                                      ldr r0, [r0, #4]
003d8a10  78 50 9f e5                                      ldr r5, [pc, #0x78]
003d8a14  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d8a18  0c 00 80 e2                                      add r0, r0, #0xc
003d8a1c  31 9e ff eb                                      bl #0x3c02e8
003d8a20  00 00 50 e3                                      cmp r0, #0
003d8a24  05 50 8f e0                                      add r5, pc, r5
003d8a28  00 00 00 0a                                      beq #0x3d8a30
003d8a2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003d8a30  04 00 94 e5                                      ldr r0, [r4, #4]
003d8a34  4f 0e 80 e2                                      add r0, r0, #0x4f0
003d8a38  0c 00 80 e2                                      add r0, r0, #0xc
003d8a3c  3c 9e ff eb                                      bl #0x3c0334
003d8a40  00 00 50 e3                                      cmp r0, #0
003d8a44  f8 ff ff 1a                                      bne #0x3d8a2c
003d8a48  44 30 9f e5                                      ldr r3, [pc, #0x44]
003d8a4c  04 20 a0 e1                                      mov r2, r4
003d8a50  04 00 94 e5                                      ldr r0, [r4, #4]
003d8a54  03 10 95 e7                                      ldr r1, [r5, r3]
003d8a58  f8 8c ff eb                                      bl #0x3bbe40
003d8a5c  04 00 94 e5                                      ldr r0, [r4, #4]
003d8a60  00 10 e0 e3                                      mvn r1, #0
003d8a64  c8 8b ff eb                                      bl #0x3bb98c
003d8a68  c4 20 94 e5                                      ldr r2, [r4, #0xc4]
003d8a6c  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d8a70  02 20 63 e0                                      rsb r2, r3, r2
003d8a74  42 01 50 e1                                      cmp r0, r2, asr #2
003d8a78  eb ff ff 2a                                      bhs #0x3d8a2c
003d8a7c  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
003d8a80  00 00 50 e3                                      cmp r0, #0
003d8a84  e8 ff ff 0a                                      beq #0x3d8a2c
003d8a88  70 40 bd e8                                      pop {r4, r5, r6, lr}
003d8a8c  4f 08 00 ea                                      b #0x3dabd0
; mapping-symbol data/literal pool
003d8a90  6c c0 5b 00 f8 31 00 00                          .byte 0x6c, 0xc0, 0x5b, 0x00, 0xf8, 0x31, 0x00, 0x00

; FUNCTION 0x003d8a98, declared_size=72, range_size=72, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13_SpellCleanUpEv
; demangled: CharAI::_SpellCleanUp()
; decoder-mode: arm
003d8a98  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8a9c  c0 30 90 e5                                      ldr r3, [r0, #0xc0]
003d8aa0  c4 60 90 e5                                      ldr r6, [r0, #0xc4]
003d8aa4  00 50 a0 e1                                      mov r5, r0
003d8aa8  06 60 63 e0                                      rsb r6, r3, r6
003d8aac  46 61 b0 e1                                      asrs r6, r6, #2
003d8ab0  09 00 00 0a                                      beq #0x3d8adc
003d8ab4  00 40 a0 e3                                      mov r4, #0
003d8ab8  00 00 00 ea                                      b #0x3d8ac0
003d8abc  c0 30 95 e5                                      ldr r3, [r5, #0xc0]
003d8ac0  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d8ac4  01 40 84 e2                                      add r4, r4, #1
003d8ac8  00 00 50 e3                                      cmp r0, #0
003d8acc  00 00 00 0a                                      beq #0x3d8ad4
003d8ad0  09 08 00 eb                                      bl #0x3daafc
003d8ad4  06 00 54 e1                                      cmp r4, r6
003d8ad8  f7 ff ff 1a                                      bne #0x3d8abc
003d8adc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d8ae0, declared_size=72, range_size=72, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI13_SkillCleanUpEv
; demangled: CharAI::_SkillCleanUp()
; decoder-mode: arm
003d8ae0  70 40 2d e9                                      push {r4, r5, r6, lr}
003d8ae4  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8ae8  b8 60 90 e5                                      ldr r6, [r0, #0xb8]
003d8aec  00 50 a0 e1                                      mov r5, r0
003d8af0  06 60 63 e0                                      rsb r6, r3, r6
003d8af4  46 61 b0 e1                                      asrs r6, r6, #2
003d8af8  09 00 00 0a                                      beq #0x3d8b24
003d8afc  00 40 a0 e3                                      mov r4, #0
003d8b00  00 00 00 ea                                      b #0x3d8b08
003d8b04  b4 30 95 e5                                      ldr r3, [r5, #0xb4]
003d8b08  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
003d8b0c  01 40 84 e2                                      add r4, r4, #1
003d8b10  00 00 50 e3                                      cmp r0, #0
003d8b14  00 00 00 0a                                      beq #0x3d8b1c
003d8b18  f7 07 00 eb                                      bl #0x3daafc
003d8b1c  06 00 54 e1                                      cmp r4, r6
003d8b20  f7 ff ff 1a                                      bne #0x3d8b04
003d8b24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d8b28, declared_size=84, range_size=84, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI10_SpellBlurEv
; demangled: CharAI::_SpellBlur()
; decoder-mode: arm
003d8b28  10 40 2d e9                                      push {r4, lr}
003d8b2c  00 10 e0 e3                                      mvn r1, #0
003d8b30  00 40 a0 e1                                      mov r4, r0
003d8b34  04 00 90 e5                                      ldr r0, [r0, #4]
003d8b38  93 8b ff eb                                      bl #0x3bb98c
003d8b3c  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d8b40  c4 20 94 e5                                      ldr r2, [r4, #0xc4]
003d8b44  02 20 63 e0                                      rsb r2, r3, r2
003d8b48  42 01 50 e1                                      cmp r0, r2, asr #2
003d8b4c  09 00 00 2a                                      bhs #0x3d8b78
003d8b50  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
003d8b54  00 00 53 e3                                      cmp r3, #0
003d8b58  06 00 00 0a                                      beq #0x3d8b78
003d8b5c  04 00 94 e5                                      ldr r0, [r4, #4]
003d8b60  00 10 e0 e3                                      mvn r1, #0
003d8b64  88 8b ff eb                                      bl #0x3bb98c
003d8b68  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d8b6c  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
003d8b70  10 40 bd e8                                      pop {r4, lr}
003d8b74  d1 06 00 ea                                      b #0x3da6c0
003d8b78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d8b7c, declared_size=40, range_size=40, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI10_SkillBlurEv
; demangled: CharAI::_SkillBlur()
; decoder-mode: arm
003d8b7c  b8 10 90 e5                                      ldr r1, [r0, #0xb8]
003d8b80  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8b84  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
003d8b88  01 10 63 e0                                      rsb r1, r3, r1
003d8b8c  41 01 52 e1                                      cmp r2, r1, asr #2
003d8b90  1e ff 2f 21                                      bxhs lr
003d8b94  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
003d8b98  00 00 50 e3                                      cmp r0, #0
003d8b9c  1e ff 2f 01                                      bxeq lr
003d8ba0  c6 06 00 ea                                      b #0x3da6c0

; FUNCTION 0x003d8ba4, declared_size=84, range_size=84, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11_SpellEventEv
; demangled: CharAI::_SpellEvent()
; decoder-mode: arm
003d8ba4  10 40 2d e9                                      push {r4, lr}
003d8ba8  00 10 e0 e3                                      mvn r1, #0
003d8bac  00 40 a0 e1                                      mov r4, r0
003d8bb0  04 00 90 e5                                      ldr r0, [r0, #4]
003d8bb4  74 8b ff eb                                      bl #0x3bb98c
003d8bb8  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d8bbc  c4 20 94 e5                                      ldr r2, [r4, #0xc4]
003d8bc0  02 20 63 e0                                      rsb r2, r3, r2
003d8bc4  42 01 50 e1                                      cmp r0, r2, asr #2
003d8bc8  09 00 00 2a                                      bhs #0x3d8bf4
003d8bcc  00 31 93 e7                                      ldr r3, [r3, r0, lsl #2]
003d8bd0  00 00 53 e3                                      cmp r3, #0
003d8bd4  06 00 00 0a                                      beq #0x3d8bf4
003d8bd8  04 00 94 e5                                      ldr r0, [r4, #4]
003d8bdc  00 10 e0 e3                                      mvn r1, #0
003d8be0  69 8b ff eb                                      bl #0x3bb98c
003d8be4  c0 30 94 e5                                      ldr r3, [r4, #0xc0]
003d8be8  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
003d8bec  10 40 bd e8                                      pop {r4, lr}
003d8bf0  e7 06 00 ea                                      b #0x3da794
003d8bf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d8bf8, declared_size=40, range_size=40, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI11_SkillEventEv
; demangled: CharAI::_SkillEvent()
; decoder-mode: arm
003d8bf8  b8 10 90 e5                                      ldr r1, [r0, #0xb8]
003d8bfc  b4 30 90 e5                                      ldr r3, [r0, #0xb4]
003d8c00  cc 20 90 e5                                      ldr r2, [r0, #0xcc]
003d8c04  01 10 63 e0                                      rsb r1, r3, r1
003d8c08  41 01 52 e1                                      cmp r2, r1, asr #2
003d8c0c  1e ff 2f 21                                      bxhs lr
003d8c10  02 01 93 e7                                      ldr r0, [r3, r2, lsl #2]
003d8c14  00 00 50 e3                                      cmp r0, #0
003d8c18  1e ff 2f 01                                      bxeq lr
003d8c1c  dc 06 00 ea                                      b #0x3da794

; FUNCTION 0x003d8cfc, declared_size=116, range_size=116, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI15AI_ReloadSkillsEv
; demangled: CharAI::AI_ReloadSkills()
; decoder-mode: arm
003d8cfc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003d8d00  b4 40 90 e5                                      ldr r4, [r0, #0xb4]
003d8d04  b8 50 90 e5                                      ldr r5, [r0, #0xb8]
003d8d08  00 60 a0 e1                                      mov r6, r0
003d8d0c  05 00 54 e1                                      cmp r4, r5
003d8d10  0f 00 00 0a                                      beq #0x3d8d54
003d8d14  00 70 a0 e3                                      mov r7, #0
003d8d18  00 30 94 e5                                      ldr r3, [r4]
003d8d1c  00 00 53 e3                                      cmp r3, #0
003d8d20  04 00 00 0a                                      beq #0x3d8d38
003d8d24  03 00 a0 e1                                      mov r0, r3
003d8d28  00 30 93 e5                                      ldr r3, [r3]
003d8d2c  0f e0 a0 e1                                      mov lr, pc
003d8d30  04 f0 93 e5                                      ldr pc, [r3, #4]
003d8d34  00 70 84 e5                                      str r7, [r4]
003d8d38  04 40 84 e2                                      add r4, r4, #4
003d8d3c  04 00 55 e1                                      cmp r5, r4
003d8d40  f4 ff ff 1a                                      bne #0x3d8d18
003d8d44  b4 30 96 e5                                      ldr r3, [r6, #0xb4]
003d8d48  b8 20 96 e5                                      ldr r2, [r6, #0xb8]
003d8d4c  02 00 53 e1                                      cmp r3, r2
003d8d50  b8 30 86 15                                      strne r3, [r6, #0xb8]
003d8d54  04 00 96 e5                                      ldr r0, [r6, #4]
003d8d58  33 8c ff eb                                      bl #0x3bbe2c
003d8d5c  06 00 a0 e1                                      mov r0, r6
003d8d60  b7 d4 ff eb                                      bl #0x3ce044
003d8d64  06 00 a0 e1                                      mov r0, r6
003d8d68  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003d8d6c  c8 fe ff ea                                      b #0x3d8894

; FUNCTION 0x003d8d70, declared_size=44, range_size=44, mode=arm
; class-group: CharAI
; alias: _ZN6CharAI21_ClearNonStickyTargetEv
; demangled: CharAI::_ClearNonStickyTarget()
; decoder-mode: arm
003d8d70  10 40 2d e9                                      push {r4, lr}
003d8d74  4b 10 d0 e5                                      ldrb r1, [r0, #0x4b]
003d8d78  00 40 a0 e1                                      mov r4, r0
003d8d7c  00 00 51 e3                                      cmp r1, #0
003d8d80  00 00 00 0a                                      beq #0x3d8d88
003d8d84  10 80 bd e8                                      pop {r4, pc}
003d8d88  01 20 a0 e1                                      mov r2, r1
003d8d8c  bf f6 ff eb                                      bl #0x3d6890
003d8d90  04 00 a0 e1                                      mov r0, r4
003d8d94  10 40 bd e8                                      pop {r4, lr}
003d8d98  09 ef ff ea                                      b #0x3d49c4
