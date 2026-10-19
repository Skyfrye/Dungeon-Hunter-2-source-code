; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0039d524, declared_size=68, range_size=68, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap9GetScriptEv
; demangled: TimerTrap::GetScript() const
; decoder-mode: arm
0039d524  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
0039d528  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0039d52c  01 00 72 e3                                      cmn r2, #1
0039d530  03 30 8f e0                                      add r3, pc, r3
0039d534  05 00 00 0a                                      beq #0x39d550
0039d538  20 10 9f e5                                      ldr r1, [pc, #0x20]
0039d53c  01 30 93 e7                                      ldr r3, [r3, r1]
0039d540  00 30 93 e5                                      ldr r3, [r3]
0039d544  82 22 83 e0                                      add r2, r3, r2, lsl #5
0039d548  14 00 92 e5                                      ldr r0, [r2, #0x14]
0039d54c  1e ff 2f e1                                      bx lr
0039d550  0c 00 9f e5                                      ldr r0, [pc, #0xc]
0039d554  00 00 8f e0                                      add r0, pc, r0
0039d558  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039d55c  60 75 5f 00 cc 3f 00 00 b4 e2 52 00              .byte 0x60, 0x75, 0x5f, 0x00, 0xcc, 0x3f, 0x00, 0x00, 0xb4, 0xe2, 0x52, 0x00

; FUNCTION 0x0039d568, declared_size=52, range_size=52, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap9GetVisualEv
; demangled: TimerTrap::GetVisual() const
; decoder-mode: arm
0039d568  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039d56c  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039d570  01 00 70 e3                                      cmn r0, #1
0039d574  03 30 8f e0                                      add r3, pc, r3
0039d578  1e ff 2f 01                                      bxeq lr
0039d57c  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039d580  02 30 93 e7                                      ldr r3, [r3, r2]
0039d584  00 30 93 e5                                      ldr r3, [r3]
0039d588  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039d58c  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0039d590  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039d594  1c 75 5f 00 cc 3f 00 00                          .byte 0x1c, 0x75, 0x5f, 0x00, 0xcc, 0x3f, 0x00, 0x00

; FUNCTION 0x0039d59c, declared_size=52, range_size=52, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap12GetDamagerIdEv
; demangled: TimerTrap::GetDamagerId() const
; decoder-mode: arm
0039d59c  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039d5a0  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039d5a4  01 00 70 e3                                      cmn r0, #1
0039d5a8  03 30 8f e0                                      add r3, pc, r3
0039d5ac  1e ff 2f 01                                      bxeq lr
0039d5b0  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039d5b4  02 30 93 e7                                      ldr r3, [r3, r2]
0039d5b8  00 30 93 e5                                      ldr r3, [r3]
0039d5bc  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039d5c0  04 00 90 e5                                      ldr r0, [r0, #4]
0039d5c4  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039d5c8  e8 74 5f 00 cc 3f 00 00                          .byte 0xe8, 0x74, 0x5f, 0x00, 0xcc, 0x3f, 0x00, 0x00

; FUNCTION 0x0039d5d0, declared_size=76, range_size=76, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap13GetHurtChanceEv
; demangled: TimerTrap::GetHurtChance() const
; decoder-mode: arm
0039d5d0  fc 23 90 e5                                      ldr r2, [r0, #0x3fc]
0039d5d4  38 30 9f e5                                      ldr r3, [pc, #0x38]
0039d5d8  01 00 72 e3                                      cmn r2, #1
0039d5dc  03 30 8f e0                                      add r3, pc, r3
0039d5e0  01 00 00 0a                                      beq #0x39d5ec
0039d5e4  02 00 a0 e1                                      mov r0, r2
0039d5e8  1e ff 2f e1                                      bx lr
0039d5ec  c0 13 90 e5                                      ldr r1, [r0, #0x3c0]
0039d5f0  01 00 71 e3                                      cmn r1, #1
0039d5f4  fa ff ff 0a                                      beq #0x39d5e4
0039d5f8  18 20 9f e5                                      ldr r2, [pc, #0x18]
0039d5fc  02 30 93 e7                                      ldr r3, [r3, r2]
0039d600  00 30 93 e5                                      ldr r3, [r3]
0039d604  81 12 83 e0                                      add r1, r3, r1, lsl #5
0039d608  0c 20 91 e5                                      ldr r2, [r1, #0xc]
0039d60c  02 00 a0 e1                                      mov r0, r2
0039d610  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039d614  b4 74 5f 00 cc 3f 00 00                          .byte 0xb4, 0x74, 0x5f, 0x00, 0xcc, 0x3f, 0x00, 0x00

; FUNCTION 0x0039d61c, declared_size=52, range_size=52, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap8GetSoundEv
; demangled: TimerTrap::GetSound() const
; decoder-mode: arm
0039d61c  c0 03 90 e5                                      ldr r0, [r0, #0x3c0]
0039d620  20 30 9f e5                                      ldr r3, [pc, #0x20]
0039d624  01 00 70 e3                                      cmn r0, #1
0039d628  03 30 8f e0                                      add r3, pc, r3
0039d62c  1e ff 2f 01                                      bxeq lr
0039d630  14 20 9f e5                                      ldr r2, [pc, #0x14]
0039d634  02 30 93 e7                                      ldr r3, [r3, r2]
0039d638  00 30 93 e5                                      ldr r3, [r3]
0039d63c  80 02 83 e0                                      add r0, r3, r0, lsl #5
0039d640  18 00 90 e5                                      ldr r0, [r0, #0x18]
0039d644  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039d648  68 74 5f 00 cc 3f 00 00                          .byte 0x68, 0x74, 0x5f, 0x00, 0xcc, 0x3f, 0x00, 0x00

; FUNCTION 0x0039d650, declared_size=56, range_size=56, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap8GetDelayEv
; demangled: TimerTrap::GetDelay() const
; decoder-mode: arm
0039d650  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
0039d654  24 30 9f e5                                      ldr r3, [pc, #0x24]
0039d658  01 00 72 e3                                      cmn r2, #1
0039d65c  03 30 8f e0                                      add r3, pc, r3
0039d660  00 00 a0 03                                      moveq r0, #0
0039d664  1e ff 2f 01                                      bxeq lr
0039d668  14 10 9f e5                                      ldr r1, [pc, #0x14]
0039d66c  01 30 93 e7                                      ldr r3, [r3, r1]
0039d670  00 30 93 e5                                      ldr r3, [r3]
0039d674  82 22 83 e0                                      add r2, r3, r2, lsl #5
0039d678  08 00 92 e5                                      ldr r0, [r2, #8]
0039d67c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0039d680  34 74 5f 00 cc 3f 00 00                          .byte 0x34, 0x74, 0x5f, 0x00, 0xcc, 0x3f, 0x00, 0x00

; FUNCTION 0x0039d688, declared_size=156, range_size=156, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrap14SpecificUpdateEv
; demangled: TimerTrap::SpecificUpdate()
; decoder-mode: arm
0039d688  70 40 2d e9                                      push {r4, r5, r6, lr}
0039d68c  c0 23 90 e5                                      ldr r2, [r0, #0x3c0]
0039d690  84 30 9f e5                                      ldr r3, [pc, #0x84]
0039d694  00 40 a0 e1                                      mov r4, r0
0039d698  00 00 52 e3                                      cmp r2, #0
0039d69c  03 30 8f e0                                      add r3, pc, r3
0039d6a0  07 00 00 ba                                      blt #0x39d6c4
0039d6a4  74 20 9f e5                                      ldr r2, [pc, #0x74]
0039d6a8  04 54 90 e5                                      ldr r5, [r0, #0x404]
0039d6ac  02 00 93 e7                                      ldr r0, [r3, r2]
0039d6b0  ed 07 fe eb                                      bl #0x31f66c
0039d6b4  05 00 60 e0                                      rsb r0, r0, r5
0039d6b8  00 00 50 e3                                      cmp r0, #0
0039d6bc  04 04 84 e5                                      str r0, [r4, #0x404]
0039d6c0  06 00 00 da                                      ble #0x39d6e0
0039d6c4  c4 33 d4 e5                                      ldrb r3, [r4, #0x3c4]
0039d6c8  00 00 53 e3                                      cmp r3, #0
0039d6cc  00 00 00 1a                                      bne #0x39d6d4
0039d6d0  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039d6d4  04 00 a0 e1                                      mov r0, r4
0039d6d8  70 40 bd e8                                      pop {r4, r5, r6, lr}
0039d6dc  a1 06 00 ea                                      b #0x39f168
0039d6e0  c4 33 d4 e5                                      ldrb r3, [r4, #0x3c4]
0039d6e4  00 00 53 e3                                      cmp r3, #0
0039d6e8  00 20 a0 13                                      movne r2, #0
0039d6ec  04 24 84 15                                      strne r2, [r4, #0x404]
0039d6f0  f4 ff ff 1a                                      bne #0x39d6c8
0039d6f4  00 30 94 e5                                      ldr r3, [r4]
0039d6f8  04 00 a0 e1                                      mov r0, r4
0039d6fc  0f e0 a0 e1                                      mov lr, pc
0039d700  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0039d704  00 30 94 e5                                      ldr r3, [r4]
0039d708  04 04 84 e5                                      str r0, [r4, #0x404]
0039d70c  04 00 a0 e1                                      mov r0, r4
0039d710  0f e0 a0 e1                                      mov lr, pc
0039d714  f0 f0 93 e5                                      ldr pc, [r3, #0xf0]
0039d718  e9 ff ff ea                                      b #0x39d6c4
; mapping-symbol data/literal pool
0039d71c  f4 73 5f 00 f4 37 00 00                          .byte 0xf4, 0x73, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0039d724, declared_size=480, range_size=480, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrap6CreateEP10GameObjectii
; demangled: TimerTrap::Create(GameObject*, int, int)
; decoder-mode: arm
0039d724  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0039d728  a4 41 9f e5                                      ldr r4, [pc, #0x1a4]
0039d72c  a4 51 9f e5                                      ldr r5, [pc, #0x1a4]
0039d730  30 d0 4d e2                                      sub sp, sp, #0x30
0039d734  04 40 8f e0                                      add r4, pc, r4
0039d738  05 30 94 e7                                      ldr r3, [r4, r5]
0039d73c  00 70 50 e2                                      subs r7, r0, #0
0039d740  01 80 a0 e1                                      mov r8, r1
0039d744  00 30 93 e5                                      ldr r3, [r3]
0039d748  02 90 a0 e1                                      mov sb, r2
0039d74c  2c 30 8d e5                                      str r3, [sp, #0x2c]
0039d750  47 00 00 0a                                      beq #0x39d874
0039d754  80 31 9f e5                                      ldr r3, [pc, #0x180]
0039d758  80 11 9f e5                                      ldr r1, [pc, #0x180]
0039d75c  18 a0 8d e2                                      add sl, sp, #0x18
0039d760  03 30 8f e0                                      add r3, pc, r3
0039d764  00 20 93 e5                                      ldr r2, [r3]
0039d768  01 10 8f e0                                      add r1, pc, r1
0039d76c  0a 00 a0 e1                                      mov r0, sl
0039d770  01 20 82 e2                                      add r2, r2, #1
0039d774  00 20 83 e5                                      str r2, [r3]
0039d778  d9 c4 fd eb                                      bl #0x30eae4
0039d77c  60 31 9f e5                                      ldr r3, [pc, #0x160]
0039d780  60 21 9f e5                                      ldr r2, [pc, #0x160]
0039d784  0c 60 8d e2                                      add r6, sp, #0xc
0039d788  03 10 94 e7                                      ldr r1, [r4, r3]
0039d78c  01 c0 a0 e3                                      mov ip, #1
0039d790  06 00 a0 e1                                      mov r0, r6
0039d794  38 10 91 e5                                      ldr r1, [r1, #0x38]
0039d798  02 20 8f e0                                      add r2, pc, r2
0039d79c  0a 30 a0 e1                                      mov r3, sl
0039d7a0  04 c0 8d e5                                      str ip, [sp, #4]
0039d7a4  00 c0 8d e5                                      str ip, [sp]
0039d7a8  dd b7 fe eb                                      bl #0x34b724
0039d7ac  06 00 a0 e1                                      mov r0, r6
0039d7b0  00 10 a0 e3                                      mov r1, #0
0039d7b4  81 89 fe eb                                      bl #0x33fdc0
0039d7b8  00 60 50 e2                                      subs r6, r0, #0
0039d7bc  02 00 00 0a                                      beq #0x39d7cc
0039d7c0  f4 30 96 e5                                      ldr r3, [r6, #0xf4]
0039d7c4  10 00 53 e3                                      cmp r3, #0x10
0039d7c8  08 00 00 0a                                      beq #0x39d7f0
0039d7cc  00 60 a0 e3                                      mov r6, #0
0039d7d0  05 30 94 e7                                      ldr r3, [r4, r5]
0039d7d4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0039d7d8  06 00 a0 e1                                      mov r0, r6
0039d7dc  00 30 93 e5                                      ldr r3, [r3]
0039d7e0  03 00 52 e1                                      cmp r2, r3
0039d7e4  39 00 00 1a                                      bne #0x39d8d0
0039d7e8  30 d0 8d e2                                      add sp, sp, #0x30
0039d7ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0039d7f0  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0039d7f4  f8 73 86 e5                                      str r7, [r6, #0x3f8]
0039d7f8  c0 83 86 e5                                      str r8, [r6, #0x3c0]
0039d7fc  03 30 94 e7                                      ldr r3, [r4, r3]
0039d800  00 30 93 e5                                      ldr r3, [r3]
0039d804  08 81 93 e7                                      ldr r8, [r3, r8, lsl #2]
0039d808  08 00 a0 e1                                      mov r0, r8
0039d80c  90 c1 fd eb                                      bl #0x30de54
0039d810  08 10 a0 e1                                      mov r1, r8
0039d814  00 20 88 e0                                      add r2, r8, r0
0039d818  ea 0f 86 e2                                      add r0, r6, #0x3a8
0039d81c  6f cc fd eb                                      bl #0x3109e0
0039d820  fc 93 86 e5                                      str sb, [r6, #0x3fc]
0039d824  60 21 97 e5                                      ldr r2, [r7, #0x160]
0039d828  06 00 a0 e1                                      mov r0, r6
0039d82c  00 30 96 e5                                      ldr r3, [r6]
0039d830  60 21 86 e5                                      str r2, [r6, #0x160]
0039d834  64 21 97 e5                                      ldr r2, [r7, #0x164]
0039d838  64 21 86 e5                                      str r2, [r6, #0x164]
0039d83c  68 21 97 e5                                      ldr r2, [r7, #0x168]
0039d840  68 21 86 e5                                      str r2, [r6, #0x168]
0039d844  0f e0 a0 e1                                      mov lr, pc
0039d848  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0039d84c  06 00 a0 e1                                      mov r0, r6
0039d850  00 30 96 e5                                      ldr r3, [r6]
0039d854  0f e0 a0 e1                                      mov lr, pc
0039d858  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0039d85c  f4 02 97 e5                                      ldr r0, [r7, #0x2f4]
0039d860  00 00 50 e3                                      cmp r0, #0
0039d864  d9 ff ff 0a                                      beq #0x39d7d0
0039d868  06 10 a0 e1                                      mov r1, r6
0039d86c  87 e4 ff eb                                      bl #0x396a90
0039d870  d6 ff ff ea                                      b #0x39d7d0
0039d874  74 30 9f e5                                      ldr r3, [pc, #0x74]
0039d878  03 30 94 e7                                      ldr r3, [r4, r3]
0039d87c  00 30 93 e5                                      ldr r3, [r3]
0039d880  02 00 53 e3                                      cmp r3, #2
0039d884  00 70 87 05                                      streq r7, [r7]
0039d888  07 60 a0 01                                      moveq r6, r7
0039d88c  cf ff ff 0a                                      beq #0x39d7d0
0039d890  01 00 53 e3                                      cmp r3, #1
0039d894  cc ff ff 1a                                      bne #0x39d7cc
0039d898  54 00 9f e5                                      ldr r0, [pc, #0x54]
0039d89c  54 10 9f e5                                      ldr r1, [pc, #0x54]
0039d8a0  54 20 9f e5                                      ldr r2, [pc, #0x54]
0039d8a4  00 00 94 e7                                      ldr r0, [r4, r0]
0039d8a8  50 30 9f e5                                      ldr r3, [pc, #0x50]
0039d8ac  74 c0 a0 e3                                      mov ip, #0x74
0039d8b0  01 10 8f e0                                      add r1, pc, r1
0039d8b4  a8 00 80 e2                                      add r0, r0, #0xa8
0039d8b8  02 20 8f e0                                      add r2, pc, r2
0039d8bc  03 30 8f e0                                      add r3, pc, r3
0039d8c0  00 c0 8d e5                                      str ip, [sp]
0039d8c4  07 60 a0 e1                                      mov r6, r7
0039d8c8  cd c1 fd eb                                      bl #0x30e004
0039d8cc  bf ff ff ea                                      b #0x39d7d0
0039d8d0  8e c2 fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0039d8d4  5c 73 5f 00 ac 40 00 00 48 51 60 00 00 57 52 00  .byte 0x5c, 0x73, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x48, 0x51, 0x60, 0x00, 0x00, 0x57, 0x52, 0x00
0039d8e4  f4 37 00 00 a8 2d 52 00 0c 10 00 00 c0 39 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xa8, 0x2d, 0x52, 0x00, 0x0c, 0x10, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0039d8f4  c0 19 00 00 28 0b 52 00 40 55 52 00 5c 55 52 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x28, 0x0b, 0x52, 0x00, 0x40, 0x55, 0x52, 0x00, 0x5c, 0x55, 0x52, 0x00

; FUNCTION 0x0039d904, declared_size=116, range_size=116, mode=arm
; class-group: TimerTrap
; alias: _ZNK9TimerTrap9GetDataIdEv
; demangled: TimerTrap::GetDataId() const
; decoder-mode: arm
0039d904  60 30 9f e5                                      ldr r3, [pc, #0x60]
0039d908  60 20 9f e5                                      ldr r2, [pc, #0x60]
0039d90c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0039d910  03 30 8f e0                                      add r3, pc, r3
0039d914  02 20 93 e7                                      ldr r2, [r3, r2]
0039d918  bc 63 90 e5                                      ldr r6, [r0, #0x3bc]
0039d91c  00 50 92 e5                                      ldr r5, [r2]
0039d920  00 00 55 e3                                      cmp r5, #0
0039d924  0e 00 00 0a                                      beq #0x39d964
0039d928  44 20 9f e5                                      ldr r2, [pc, #0x44]
0039d92c  00 40 a0 e3                                      mov r4, #0
0039d930  02 30 93 e7                                      ldr r3, [r3, r2]
0039d934  00 70 93 e5                                      ldr r7, [r3]
0039d938  02 00 00 ea                                      b #0x39d948
0039d93c  01 40 84 e2                                      add r4, r4, #1
0039d940  05 00 54 e1                                      cmp r4, r5
0039d944  06 00 00 0a                                      beq #0x39d964
0039d948  04 11 97 e7                                      ldr r1, [r7, r4, lsl #2]
0039d94c  06 00 a0 e1                                      mov r0, r6
0039d950  71 c2 fd eb                                      bl #0x30e31c
0039d954  00 00 50 e3                                      cmp r0, #0
0039d958  f7 ff ff 1a                                      bne #0x39d93c
0039d95c  04 00 a0 e1                                      mov r0, r4
0039d960  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0039d964  00 00 e0 e3                                      mvn r0, #0
0039d968  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0039d96c  80 71 5f 00 f8 0d 00 00 0c 10 00 00              .byte 0x80, 0x71, 0x5f, 0x00, 0xf8, 0x0d, 0x00, 0x00, 0x0c, 0x10, 0x00, 0x00

; FUNCTION 0x0039d978, declared_size=36, range_size=36, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrap8InitPostEv
; demangled: TimerTrap::InitPost()
; decoder-mode: arm
0039d978  10 40 2d e9                                      push {r4, lr}
0039d97c  00 40 a0 e1                                      mov r4, r0
0039d980  56 01 00 eb                                      bl #0x39dee0
0039d984  00 30 94 e5                                      ldr r3, [r4]
0039d988  04 00 a0 e1                                      mov r0, r4
0039d98c  0f e0 a0 e1                                      mov lr, pc
0039d990  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0039d994  04 04 84 e5                                      str r0, [r4, #0x404]
0039d998  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039d99c, declared_size=8, range_size=8, mode=arm
; class-group: TimerTrap
; alias: _ZThn4_N9TimerTrap17DeclarePropertiesEv
; demangled: non-virtual thunk to TimerTrap::DeclareProperties()
; decoder-mode: arm
0039d99c  04 00 40 e2                                      sub r0, r0, #4
0039d9a0  ff ff ff ea                                      b #0x39d9a4

; FUNCTION 0x0039d9a4, declared_size=4, range_size=4, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrap17DeclarePropertiesEv
; demangled: TimerTrap::DeclareProperties()
; decoder-mode: arm
0039d9a4  d0 03 00 ea                                      b #0x39e8ec

; FUNCTION 0x0039d9a8, declared_size=8, range_size=8, mode=arm
; class-group: TimerTrap
; alias: _ZThn36_N9TimerTrapD1Ev
; demangled: non-virtual thunk to TimerTrap::~TimerTrap()
; decoder-mode: arm
0039d9a8  24 00 40 e2                                      sub r0, r0, #0x24
0039d9ac  ff ff ff ea                                      b #0x39d9b0

; FUNCTION 0x0039d9b0, declared_size=64, range_size=64, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrapD1Ev
; demangled: TimerTrap::~TimerTrap()
; decoder-mode: arm
0039d9b0  30 20 9f e5                                      ldr r2, [pc, #0x30]
0039d9b4  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039d9b8  10 40 2d e9                                      push {r4, lr}
0039d9bc  02 20 8f e0                                      add r2, pc, r2
0039d9c0  03 30 92 e7                                      ldr r3, [r2, r3]
0039d9c4  00 40 a0 e1                                      mov r4, r0
0039d9c8  46 2f 83 e2                                      add r2, r3, #0x118
0039d9cc  08 10 83 e2                                      add r1, r3, #8
0039d9d0  43 3f 83 e2                                      add r3, r3, #0x10c
0039d9d4  0a 00 80 e8                                      stm r0, {r1, r3}
0039d9d8  24 20 80 e5                                      str r2, [r0, #0x24]
0039d9dc  ea 02 00 eb                                      bl #0x39e58c
0039d9e0  04 00 a0 e1                                      mov r0, r4
0039d9e4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039d9e8  d4 70 5f 00 ec 25 00 00                          .byte 0xd4, 0x70, 0x5f, 0x00, 0xec, 0x25, 0x00, 0x00

; FUNCTION 0x0039d9f0, declared_size=8, range_size=8, mode=arm
; class-group: TimerTrap
; alias: _ZThn36_N9TimerTrapD0Ev
; demangled: non-virtual thunk to TimerTrap::~TimerTrap()
; decoder-mode: arm
0039d9f0  24 00 40 e2                                      sub r0, r0, #0x24
0039d9f4  ff ff ff ea                                      b #0x39d9f8

; FUNCTION 0x0039d9f8, declared_size=28, range_size=28, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrapD0Ev
; demangled: TimerTrap::~TimerTrap()
; decoder-mode: arm
0039d9f8  10 40 2d e9                                      push {r4, lr}
0039d9fc  00 40 a0 e1                                      mov r4, r0
0039da00  ea ff ff eb                                      bl #0x39d9b0
0039da04  04 00 a0 e1                                      mov r0, r4
0039da08  8c ca fd eb                                      bl #0x310440
0039da0c  04 00 a0 e1                                      mov r0, r4
0039da10  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0039da14, declared_size=64, range_size=64, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrapD2Ev
; demangled: TimerTrap::~TimerTrap()
; decoder-mode: arm
0039da14  30 20 9f e5                                      ldr r2, [pc, #0x30]
0039da18  30 30 9f e5                                      ldr r3, [pc, #0x30]
0039da1c  10 40 2d e9                                      push {r4, lr}
0039da20  02 20 8f e0                                      add r2, pc, r2
0039da24  03 30 92 e7                                      ldr r3, [r2, r3]
0039da28  00 40 a0 e1                                      mov r4, r0
0039da2c  46 2f 83 e2                                      add r2, r3, #0x118
0039da30  08 10 83 e2                                      add r1, r3, #8
0039da34  43 3f 83 e2                                      add r3, r3, #0x10c
0039da38  0a 00 80 e8                                      stm r0, {r1, r3}
0039da3c  24 20 80 e5                                      str r2, [r0, #0x24]
0039da40  d1 02 00 eb                                      bl #0x39e58c
0039da44  04 00 a0 e1                                      mov r0, r4
0039da48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0039da4c  70 70 5f 00 ec 25 00 00                          .byte 0x70, 0x70, 0x5f, 0x00, 0xec, 0x25, 0x00, 0x00

; FUNCTION 0x0039da54, declared_size=72, range_size=72, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrapC1EN10ObjectBase6GO_IDSE
; demangled: TimerTrap::TimerTrap(ObjectBase::GO_IDS)
; decoder-mode: arm
0039da54  70 40 2d e9                                      push {r4, r5, r6, lr}
0039da58  34 50 9f e5                                      ldr r5, [pc, #0x34]
0039da5c  00 40 a0 e1                                      mov r4, r0
0039da60  02 03 00 eb                                      bl #0x39e670
0039da64  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0039da68  05 50 8f e0                                      add r5, pc, r5
0039da6c  00 20 a0 e3                                      mov r2, #0
0039da70  03 30 95 e7                                      ldr r3, [r5, r3]
0039da74  04 24 84 e5                                      str r2, [r4, #0x404]
0039da78  04 00 a0 e1                                      mov r0, r4
0039da7c  46 2f 83 e2                                      add r2, r3, #0x118
0039da80  08 10 83 e2                                      add r1, r3, #8
0039da84  43 3f 83 e2                                      add r3, r3, #0x10c
0039da88  0a 00 84 e8                                      stm r4, {r1, r3}
0039da8c  24 20 84 e5                                      str r2, [r4, #0x24]
0039da90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039da94  28 70 5f 00 ec 25 00 00                          .byte 0x28, 0x70, 0x5f, 0x00, 0xec, 0x25, 0x00, 0x00

; FUNCTION 0x0039da9c, declared_size=72, range_size=72, mode=arm
; class-group: TimerTrap
; alias: _ZN9TimerTrapC2EN10ObjectBase6GO_IDSE
; demangled: TimerTrap::TimerTrap(ObjectBase::GO_IDS)
; decoder-mode: arm
0039da9c  70 40 2d e9                                      push {r4, r5, r6, lr}
0039daa0  34 50 9f e5                                      ldr r5, [pc, #0x34]
0039daa4  00 40 a0 e1                                      mov r4, r0
0039daa8  f0 02 00 eb                                      bl #0x39e670
0039daac  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0039dab0  05 50 8f e0                                      add r5, pc, r5
0039dab4  00 20 a0 e3                                      mov r2, #0
0039dab8  03 30 95 e7                                      ldr r3, [r5, r3]
0039dabc  04 24 84 e5                                      str r2, [r4, #0x404]
0039dac0  04 00 a0 e1                                      mov r0, r4
0039dac4  46 2f 83 e2                                      add r2, r3, #0x118
0039dac8  08 10 83 e2                                      add r1, r3, #8
0039dacc  43 3f 83 e2                                      add r3, r3, #0x10c
0039dad0  0a 00 84 e8                                      stm r4, {r1, r3}
0039dad4  24 20 84 e5                                      str r2, [r4, #0x24]
0039dad8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0039dadc  e0 6f 5f 00 ec 25 00 00                          .byte 0xe0, 0x6f, 0x5f, 0x00, 0xec, 0x25, 0x00, 0x00
