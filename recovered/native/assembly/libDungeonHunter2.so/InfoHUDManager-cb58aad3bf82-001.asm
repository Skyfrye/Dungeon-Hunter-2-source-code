; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041d56c, declared_size=4, range_size=4, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager4DrawEv
; demangled: InfoHUDManager::Draw()
; decoder-mode: arm
0041d56c  1e ff 2f e1                                      bx lr

; FUNCTION 0x0041d570, declared_size=232, range_size=232, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager19HideLocalDeathTimerEv
; demangled: InfoHUDManager::HideLocalDeathTimer()
; decoder-mode: arm
0041d570  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0041d574  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0041d578  c0 60 9f e5                                      ldr r6, [pc, #0xc0]
0041d57c  c0 20 9f e5                                      ldr r2, [pc, #0xc0]
0041d580  04 40 8f e0                                      add r4, pc, r4
0041d584  06 30 94 e7                                      ldr r3, [r4, r6]
0041d588  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
0041d58c  1c d0 4d e2                                      sub sp, sp, #0x1c
0041d590  00 30 93 e5                                      ldr r3, [r3]
0041d594  00 70 a0 e1                                      mov r7, r0
0041d598  01 10 8f e0                                      add r1, pc, r1
0041d59c  02 00 94 e7                                      ldr r0, [r4, r2]
0041d5a0  14 30 8d e5                                      str r3, [sp, #0x14]
0041d5a4  26 0e fc eb                                      bl #0x320e44
0041d5a8  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0041d5ac  00 20 a0 e1                                      mov r2, r0
0041d5b0  0d 00 a0 e1                                      mov r0, sp
0041d5b4  01 10 8f e0                                      add r1, pc, r1
0041d5b8  49 c5 fb eb                                      bl #0x30eae4
0041d5bc  0d 10 a0 e1                                      mov r1, sp
0041d5c0  7c 05 97 e5                                      ldr r0, [r7, #0x57c]
0041d5c4  e5 2e 0e eb                                      bl #0x7a9160
0041d5c8  80 30 9f e5                                      ldr r3, [pc, #0x80]
0041d5cc  12 5d 87 e2                                      add r5, r7, #0x480
0041d5d0  0c 50 85 e2                                      add r5, r5, #0xc
0041d5d4  03 30 94 e7                                      ldr r3, [r4, r3]
0041d5d8  30 30 d3 e5                                      ldrb r3, [r3, #0x30]
0041d5dc  00 00 53 e3                                      cmp r3, #0
0041d5e0  01 30 a0 03                                      moveq r3, #1
0041d5e4  9b 30 c0 05                                      strbeq r3, [r0, #0x9b]
0041d5e8  05 00 a0 e1                                      mov r0, r5
0041d5ec  7c 75 97 e5                                      ldr r7, [r7, #0x57c]
0041d5f0  d6 29 00 eb                                      bl #0x427d50
0041d5f4  58 20 9f e5                                      ldr r2, [pc, #0x58]
0041d5f8  00 10 a0 e1                                      mov r1, r0
0041d5fc  01 30 a0 e3                                      mov r3, #1
0041d600  02 20 8f e0                                      add r2, pc, r2
0041d604  07 00 a0 e1                                      mov r0, r7
0041d608  c5 38 0e eb                                      bl #0x7ab924
0041d60c  05 00 a0 e1                                      mov r0, r5
0041d610  ce 29 00 eb                                      bl #0x427d50
0041d614  06 30 94 e7                                      ldr r3, [r4, r6]
0041d618  00 20 a0 e3                                      mov r2, #0
0041d61c  9b 20 c0 e5                                      strb r2, [r0, #0x9b]
0041d620  14 20 9d e5                                      ldr r2, [sp, #0x14]
0041d624  00 30 93 e5                                      ldr r3, [r3]
0041d628  03 00 52 e1                                      cmp r2, r3
0041d62c  01 00 00 1a                                      bne #0x41d638
0041d630  1c d0 8d e2                                      add sp, sp, #0x1c
0041d634  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0041d638  34 c3 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041d63c  10 75 57 00 ac 40 00 00 f4 37 00 00 60 40 4a 00  .byte 0x10, 0x75, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x60, 0x40, 0x4a, 0x00
0041d64c  9c 3a 4a 00 20 1a 00 00 f0 b2 4a 00              .byte 0x9c, 0x3a, 0x4a, 0x00, 0x20, 0x1a, 0x00, 0x00, 0xf0, 0xb2, 0x4a, 0x00

; FUNCTION 0x0041d658, declared_size=208, range_size=208, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager19ShowLocalDeathTimerEv
; demangled: InfoHUDManager::ShowLocalDeathTimer()
; decoder-mode: arm
0041d658  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
0041d65c  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
0041d660  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0041d664  03 30 8f e0                                      add r3, pc, r3
0041d668  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
0041d66c  02 40 93 e7                                      ldr r4, [r3, r2]
0041d670  00 50 a0 e1                                      mov r5, r0
0041d674  01 00 93 e7                                      ldr r0, [r3, r1]
0041d678  9c 10 9f e5                                      ldr r1, [pc, #0x9c]
0041d67c  00 20 94 e5                                      ldr r2, [r4]
0041d680  1c d0 4d e2                                      sub sp, sp, #0x1c
0041d684  01 10 8f e0                                      add r1, pc, r1
0041d688  14 20 8d e5                                      str r2, [sp, #0x14]
0041d68c  ec 0d fc eb                                      bl #0x320e44
0041d690  88 10 9f e5                                      ldr r1, [pc, #0x88]
0041d694  00 20 a0 e1                                      mov r2, r0
0041d698  0d 00 a0 e1                                      mov r0, sp
0041d69c  01 10 8f e0                                      add r1, pc, r1
0041d6a0  0f c5 fb eb                                      bl #0x30eae4
0041d6a4  0d 10 a0 e1                                      mov r1, sp
0041d6a8  7c 05 95 e5                                      ldr r0, [r5, #0x57c]
0041d6ac  ab 2e 0e eb                                      bl #0x7a9160
0041d6b0  12 7d 85 e2                                      add r7, r5, #0x480
0041d6b4  00 30 a0 e3                                      mov r3, #0
0041d6b8  0c 70 87 e2                                      add r7, r7, #0xc
0041d6bc  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0041d6c0  07 00 a0 e1                                      mov r0, r7
0041d6c4  a1 29 00 eb                                      bl #0x427d50
0041d6c8  01 60 a0 e3                                      mov r6, #1
0041d6cc  9b 60 c0 e5                                      strb r6, [r0, #0x9b]
0041d6d0  07 00 a0 e1                                      mov r0, r7
0041d6d4  7c 55 95 e5                                      ldr r5, [r5, #0x57c]
0041d6d8  9c 29 00 eb                                      bl #0x427d50
0041d6dc  40 20 9f e5                                      ldr r2, [pc, #0x40]
0041d6e0  00 10 a0 e1                                      mov r1, r0
0041d6e4  06 30 a0 e1                                      mov r3, r6
0041d6e8  02 20 8f e0                                      add r2, pc, r2
0041d6ec  05 00 a0 e1                                      mov r0, r5
0041d6f0  8b 38 0e eb                                      bl #0x7ab924
0041d6f4  14 20 9d e5                                      ldr r2, [sp, #0x14]
0041d6f8  00 30 94 e5                                      ldr r3, [r4]
0041d6fc  03 00 52 e1                                      cmp r2, r3
0041d700  01 00 00 1a                                      bne #0x41d70c
0041d704  1c d0 8d e2                                      add sp, sp, #0x1c
0041d708  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0041d70c  ff c2 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041d710  2c 74 57 00 ac 40 00 00 f4 37 00 00 74 3f 4a 00  .byte 0x2c, 0x74, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0x3f, 0x4a, 0x00
0041d720  b4 39 4a 00 10 b2 4a 00                          .byte 0xb4, 0x39, 0x4a, 0x00, 0x10, 0xb2, 0x4a, 0x00

; FUNCTION 0x0041d728, declared_size=344, range_size=344, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager18applyOneTimeValuesEv
; demangled: InfoHUDManager::applyOneTimeValues()
; decoder-mode: arm
0041d728  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041d72c  00 40 a0 e1                                      mov r4, r0
0041d730  db 0f 80 e2                                      add r0, r0, #0x36c
0041d734  85 29 00 eb                                      bl #0x427d50
0041d738  34 71 9f e5                                      ldr r7, [pc, #0x134]
0041d73c  34 31 9f e5                                      ldr r3, [pc, #0x134]
0041d740  34 11 9f e5                                      ldr r1, [pc, #0x134]
0041d744  07 70 8f e0                                      add r7, pc, r7
0041d748  03 50 97 e7                                      ldr r5, [r7, r3]
0041d74c  00 60 a0 e1                                      mov r6, r0
0041d750  01 10 8f e0                                      add r1, pc, r1
0041d754  05 00 a0 e1                                      mov r0, r5
0041d758  b9 0d fc eb                                      bl #0x320e44
0041d75c  00 00 50 e2                                      subs r0, r0, #0
0041d760  01 00 a0 13                                      movne r0, #1
0041d764  9b 00 c6 e5                                      strb r0, [r6, #0x9b]
0041d768  00 10 a0 e3                                      mov r1, #0
0041d76c  40 00 95 e5                                      ldr r0, [r5, #0x40]
0041d770  01 20 a0 e1                                      mov r2, r1
0041d774  3f 43 fd eb                                      bl #0x36e478
0041d778  60 06 90 e5                                      ldr r0, [r0, #0x660]
0041d77c  00 00 50 e3                                      cmp r0, #0
0041d780  3a 00 00 0a                                      beq #0x41d870
0041d784  1c 78 fe eb                                      bl #0x3bb7fc
0041d788  12 0e 40 e2                                      sub r0, r0, #0x120
0041d78c  02 00 40 e2                                      sub r0, r0, #2
0041d790  25 00 50 e3                                      cmp r0, #0x25
0041d794  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
0041d798  32 00 00 ea                                      b #0x41d868
0041d79c  2f 00 00 ea                                      b #0x41d860
0041d7a0  2e 00 00 ea                                      b #0x41d860
0041d7a4  2d 00 00 ea                                      b #0x41d860
0041d7a8  2e 00 00 ea                                      b #0x41d868
0041d7ac  2d 00 00 ea                                      b #0x41d868
0041d7b0  2c 00 00 ea                                      b #0x41d868
0041d7b4  2b 00 00 ea                                      b #0x41d868
0041d7b8  2a 00 00 ea                                      b #0x41d868
0041d7bc  29 00 00 ea                                      b #0x41d868
0041d7c0  28 00 00 ea                                      b #0x41d868
0041d7c4  27 00 00 ea                                      b #0x41d868
0041d7c8  26 00 00 ea                                      b #0x41d868
0041d7cc  25 00 00 ea                                      b #0x41d868
0041d7d0  24 00 00 ea                                      b #0x41d868
0041d7d4  23 00 00 ea                                      b #0x41d868
0041d7d8  22 00 00 ea                                      b #0x41d868
0041d7dc  21 00 00 ea                                      b #0x41d868
0041d7e0  20 00 00 ea                                      b #0x41d868
0041d7e4  1f 00 00 ea                                      b #0x41d868
0041d7e8  1e 00 00 ea                                      b #0x41d868
0041d7ec  1d 00 00 ea                                      b #0x41d868
0041d7f0  1c 00 00 ea                                      b #0x41d868
0041d7f4  1b 00 00 ea                                      b #0x41d868
0041d7f8  1a 00 00 ea                                      b #0x41d868
0041d7fc  19 00 00 ea                                      b #0x41d868
0041d800  18 00 00 ea                                      b #0x41d868
0041d804  17 00 00 ea                                      b #0x41d868
0041d808  16 00 00 ea                                      b #0x41d868
0041d80c  15 00 00 ea                                      b #0x41d868
0041d810  14 00 00 ea                                      b #0x41d868
0041d814  13 00 00 ea                                      b #0x41d868
0041d818  12 00 00 ea                                      b #0x41d868
0041d81c  11 00 00 ea                                      b #0x41d868
0041d820  10 00 00 ea                                      b #0x41d868
0041d824  0f 00 00 ea                                      b #0x41d868
0041d828  01 00 00 ea                                      b #0x41d834
0041d82c  00 00 00 ea                                      b #0x41d834
0041d830  ff ff ff ea                                      b #0x41d834
0041d834  01 50 a0 e3                                      mov r5, #1
0041d838  45 0e 84 e2                                      add r0, r4, #0x450
0041d83c  0c 00 80 e2                                      add r0, r0, #0xc
0041d840  7c 45 94 e5                                      ldr r4, [r4, #0x57c]
0041d844  41 29 00 eb                                      bl #0x427d50
0041d848  05 20 a0 e1                                      mov r2, r5
0041d84c  00 10 a0 e1                                      mov r1, r0
0041d850  00 30 a0 e3                                      mov r3, #0
0041d854  04 00 a0 e1                                      mov r0, r4
0041d858  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0041d85c  34 29 0e ea                                      b #0x7a7d34
0041d860  02 50 a0 e3                                      mov r5, #2
0041d864  f3 ff ff ea                                      b #0x41d838
0041d868  00 50 a0 e3                                      mov r5, #0
0041d86c  f1 ff ff ea                                      b #0x41d838
0041d870  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0041d874  4c 73 57 00 f4 37 00 00 f0 14 4a 00              .byte 0x4c, 0x73, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf0, 0x14, 0x4a, 0x00

; FUNCTION 0x0041d880, declared_size=1168, range_size=1168, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager15initCachedCharsEv
; demangled: InfoHUDManager::initCachedChars()
; decoder-mode: arm
0041d880  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041d884  f4 63 9f e5                                      ldr r6, [pc, #0x3f4]
0041d888  f4 93 9f e5                                      ldr sb, [pc, #0x3f4]
0041d88c  7c 25 90 e5                                      ldr r2, [r0, #0x57c]
0041d890  06 60 8f e0                                      add r6, pc, r6
0041d894  09 30 96 e7                                      ldr r3, [r6, sb]
0041d898  64 d0 4d e2                                      sub sp, sp, #0x64
0041d89c  00 00 52 e3                                      cmp r2, #0
0041d8a0  00 30 93 e5                                      ldr r3, [r3]
0041d8a4  00 40 a0 e1                                      mov r4, r0
0041d8a8  5c 30 8d e5                                      str r3, [sp, #0x5c]
0041d8ac  c8 00 00 0a                                      beq #0x41dbd4
0041d8b0  d0 33 9f e5                                      ldr r3, [pc, #0x3d0]
0041d8b4  d0 13 9f e5                                      ldr r1, [pc, #0x3d0]
0041d8b8  48 50 8d e2                                      add r5, sp, #0x48
0041d8bc  03 00 96 e7                                      ldr r0, [r6, r3]
0041d8c0  01 10 8f e0                                      add r1, pc, r1
0041d8c4  5e 0d fc eb                                      bl #0x320e44
0041d8c8  c0 13 9f e5                                      ldr r1, [pc, #0x3c0]
0041d8cc  00 20 a0 e1                                      mov r2, r0
0041d8d0  00 70 a0 e1                                      mov r7, r0
0041d8d4  01 10 8f e0                                      add r1, pc, r1
0041d8d8  05 00 a0 e1                                      mov r0, r5
0041d8dc  80 c4 fb eb                                      bl #0x30eae4
0041d8e0  05 10 a0 e1                                      mov r1, r5
0041d8e4  7c 05 94 e5                                      ldr r0, [r4, #0x57c]
0041d8e8  1c 2e 0e eb                                      bl #0x7a9160
0041d8ec  a0 13 9f e5                                      ldr r1, [pc, #0x3a0]
0041d8f0  00 50 a0 e1                                      mov r5, r0
0041d8f4  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d8f8  0c 00 84 e2                                      add r0, r4, #0xc
0041d8fc  01 10 8f e0                                      add r1, pc, r1
0041d900  05 30 a0 e1                                      mov r3, r5
0041d904  e5 28 00 eb                                      bl #0x427ca0
0041d908  88 13 9f e5                                      ldr r1, [pc, #0x388]
0041d90c  3c 00 84 e2                                      add r0, r4, #0x3c
0041d910  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d914  01 10 8f e0                                      add r1, pc, r1
0041d918  05 30 a0 e1                                      mov r3, r5
0041d91c  df 28 00 eb                                      bl #0x427ca0
0041d920  74 13 9f e5                                      ldr r1, [pc, #0x374]
0041d924  6c 00 84 e2                                      add r0, r4, #0x6c
0041d928  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d92c  01 10 8f e0                                      add r1, pc, r1
0041d930  00 30 a0 e3                                      mov r3, #0
0041d934  d9 28 00 eb                                      bl #0x427ca0
0041d938  60 13 9f e5                                      ldr r1, [pc, #0x360]
0041d93c  9c 00 84 e2                                      add r0, r4, #0x9c
0041d940  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d944  01 10 8f e0                                      add r1, pc, r1
0041d948  05 30 a0 e1                                      mov r3, r5
0041d94c  d3 28 00 eb                                      bl #0x427ca0
0041d950  4c 13 9f e5                                      ldr r1, [pc, #0x34c]
0041d954  cc 00 84 e2                                      add r0, r4, #0xcc
0041d958  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d95c  01 10 8f e0                                      add r1, pc, r1
0041d960  05 30 a0 e1                                      mov r3, r5
0041d964  cd 28 00 eb                                      bl #0x427ca0
0041d968  38 13 9f e5                                      ldr r1, [pc, #0x338]
0041d96c  fc 00 84 e2                                      add r0, r4, #0xfc
0041d970  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d974  01 10 8f e0                                      add r1, pc, r1
0041d978  05 30 a0 e1                                      mov r3, r5
0041d97c  c7 28 00 eb                                      bl #0x427ca0
0041d980  24 13 9f e5                                      ldr r1, [pc, #0x324]
0041d984  4b 0f 84 e2                                      add r0, r4, #0x12c
0041d988  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d98c  01 10 8f e0                                      add r1, pc, r1
0041d990  05 30 a0 e1                                      mov r3, r5
0041d994  c1 28 00 eb                                      bl #0x427ca0
0041d998  10 13 9f e5                                      ldr r1, [pc, #0x310]
0041d99c  57 0f 84 e2                                      add r0, r4, #0x15c
0041d9a0  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d9a4  01 10 8f e0                                      add r1, pc, r1
0041d9a8  05 30 a0 e1                                      mov r3, r5
0041d9ac  bb 28 00 eb                                      bl #0x427ca0
0041d9b0  01 00 57 e3                                      cmp r7, #1
0041d9b4  8d 00 00 da                                      ble #0x41dbf0
0041d9b8  f4 12 9f e5                                      ldr r1, [pc, #0x2f4]
0041d9bc  63 0f 84 e2                                      add r0, r4, #0x18c
0041d9c0  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d9c4  01 10 8f e0                                      add r1, pc, r1
0041d9c8  05 30 a0 e1                                      mov r3, r5
0041d9cc  b3 28 00 eb                                      bl #0x427ca0
0041d9d0  e0 12 9f e5                                      ldr r1, [pc, #0x2e0]
0041d9d4  87 0f 84 e2                                      add r0, r4, #0x21c
0041d9d8  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d9dc  01 10 8f e0                                      add r1, pc, r1
0041d9e0  05 30 a0 e1                                      mov r3, r5
0041d9e4  ad 28 00 eb                                      bl #0x427ca0
0041d9e8  cc 12 9f e5                                      ldr r1, [pc, #0x2cc]
0041d9ec  ab 0f 84 e2                                      add r0, r4, #0x2ac
0041d9f0  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041d9f4  01 10 8f e0                                      add r1, pc, r1
0041d9f8  05 30 a0 e1                                      mov r3, r5
0041d9fc  a7 28 00 eb                                      bl #0x427ca0
0041da00  b8 12 9f e5                                      ldr r1, [pc, #0x2b8]
0041da04  6f 0f 84 e2                                      add r0, r4, #0x1bc
0041da08  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da0c  01 10 8f e0                                      add r1, pc, r1
0041da10  05 30 a0 e1                                      mov r3, r5
0041da14  a1 28 00 eb                                      bl #0x427ca0
0041da18  a4 12 9f e5                                      ldr r1, [pc, #0x2a4]
0041da1c  93 0f 84 e2                                      add r0, r4, #0x24c
0041da20  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da24  01 10 8f e0                                      add r1, pc, r1
0041da28  05 30 a0 e1                                      mov r3, r5
0041da2c  9b 28 00 eb                                      bl #0x427ca0
0041da30  90 12 9f e5                                      ldr r1, [pc, #0x290]
0041da34  b7 0f 84 e2                                      add r0, r4, #0x2dc
0041da38  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da3c  01 10 8f e0                                      add r1, pc, r1
0041da40  05 30 a0 e1                                      mov r3, r5
0041da44  95 28 00 eb                                      bl #0x427ca0
0041da48  7c 12 9f e5                                      ldr r1, [pc, #0x27c]
0041da4c  7b 0f 84 e2                                      add r0, r4, #0x1ec
0041da50  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da54  01 10 8f e0                                      add r1, pc, r1
0041da58  05 30 a0 e1                                      mov r3, r5
0041da5c  8f 28 00 eb                                      bl #0x427ca0
0041da60  68 12 9f e5                                      ldr r1, [pc, #0x268]
0041da64  9f 0f 84 e2                                      add r0, r4, #0x27c
0041da68  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da6c  01 10 8f e0                                      add r1, pc, r1
0041da70  05 30 a0 e1                                      mov r3, r5
0041da74  89 28 00 eb                                      bl #0x427ca0
0041da78  54 12 9f e5                                      ldr r1, [pc, #0x254]
0041da7c  c3 0f 84 e2                                      add r0, r4, #0x30c
0041da80  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da84  01 10 8f e0                                      add r1, pc, r1
0041da88  05 30 a0 e1                                      mov r3, r5
0041da8c  83 28 00 eb                                      bl #0x427ca0
0041da90  40 12 9f e5                                      ldr r1, [pc, #0x240]
0041da94  cf 0f 84 e2                                      add r0, r4, #0x33c
0041da98  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041da9c  01 10 8f e0                                      add r1, pc, r1
0041daa0  05 30 a0 e1                                      mov r3, r5
0041daa4  7d 28 00 eb                                      bl #0x427ca0
0041daa8  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
0041daac  db 0f 84 e2                                      add r0, r4, #0x36c
0041dab0  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dab4  01 10 8f e0                                      add r1, pc, r1
0041dab8  05 30 a0 e1                                      mov r3, r5
0041dabc  77 28 00 eb                                      bl #0x427ca0
0041dac0  18 12 9f e5                                      ldr r1, [pc, #0x218]
0041dac4  e7 0f 84 e2                                      add r0, r4, #0x39c
0041dac8  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dacc  01 10 8f e0                                      add r1, pc, r1
0041dad0  05 30 a0 e1                                      mov r3, r5
0041dad4  71 28 00 eb                                      bl #0x427ca0
0041dad8  04 12 9f e5                                      ldr r1, [pc, #0x204]
0041dadc  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041dae0  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dae4  01 10 8f e0                                      add r1, pc, r1
0041dae8  05 30 a0 e1                                      mov r3, r5
0041daec  6b 28 00 eb                                      bl #0x427ca0
0041daf0  f0 11 9f e5                                      ldr r1, [pc, #0x1f0]
0041daf4  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041daf8  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dafc  01 10 8f e0                                      add r1, pc, r1
0041db00  05 30 a0 e1                                      mov r3, r5
0041db04  65 28 00 eb                                      bl #0x427ca0
0041db08  dc 11 9f e5                                      ldr r1, [pc, #0x1dc]
0041db0c  42 0e 84 e2                                      add r0, r4, #0x420
0041db10  0c 00 80 e2                                      add r0, r0, #0xc
0041db14  01 10 8f e0                                      add r1, pc, r1
0041db18  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041db1c  05 30 a0 e1                                      mov r3, r5
0041db20  5e 28 00 eb                                      bl #0x427ca0
0041db24  c4 11 9f e5                                      ldr r1, [pc, #0x1c4]
0041db28  4e 0e 84 e2                                      add r0, r4, #0x4e0
0041db2c  0c 00 80 e2                                      add r0, r0, #0xc
0041db30  01 10 8f e0                                      add r1, pc, r1
0041db34  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041db38  05 30 a0 e1                                      mov r3, r5
0041db3c  57 28 00 eb                                      bl #0x427ca0
0041db40  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0041db44  51 0e 84 e2                                      add r0, r4, #0x510
0041db48  0c 00 80 e2                                      add r0, r0, #0xc
0041db4c  01 10 8f e0                                      add r1, pc, r1
0041db50  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041db54  05 30 a0 e1                                      mov r3, r5
0041db58  50 28 00 eb                                      bl #0x427ca0
0041db5c  94 11 9f e5                                      ldr r1, [pc, #0x194]
0041db60  15 0d 84 e2                                      add r0, r4, #0x540
0041db64  0c 00 80 e2                                      add r0, r0, #0xc
0041db68  01 10 8f e0                                      add r1, pc, r1
0041db6c  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041db70  05 30 a0 e1                                      mov r3, r5
0041db74  49 28 00 eb                                      bl #0x427ca0
0041db78  7c 11 9f e5                                      ldr r1, [pc, #0x17c]
0041db7c  45 0e 84 e2                                      add r0, r4, #0x450
0041db80  0c 00 80 e2                                      add r0, r0, #0xc
0041db84  01 10 8f e0                                      add r1, pc, r1
0041db88  05 30 a0 e1                                      mov r3, r5
0041db8c  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041db90  42 28 00 eb                                      bl #0x427ca0
0041db94  64 11 9f e5                                      ldr r1, [pc, #0x164]
0041db98  12 0d 84 e2                                      add r0, r4, #0x480
0041db9c  0c 00 80 e2                                      add r0, r0, #0xc
0041dba0  01 10 8f e0                                      add r1, pc, r1
0041dba4  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dba8  00 30 a0 e3                                      mov r3, #0
0041dbac  3b 28 00 eb                                      bl #0x427ca0
0041dbb0  4c 11 9f e5                                      ldr r1, [pc, #0x14c]
0041dbb4  4b 0e 84 e2                                      add r0, r4, #0x4b0
0041dbb8  00 30 a0 e3                                      mov r3, #0
0041dbbc  0c 00 80 e2                                      add r0, r0, #0xc
0041dbc0  01 10 8f e0                                      add r1, pc, r1
0041dbc4  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dbc8  34 28 00 eb                                      bl #0x427ca0
0041dbcc  01 30 a0 e3                                      mov r3, #1
0041dbd0  04 30 c4 e5                                      strb r3, [r4, #4]
0041dbd4  09 30 96 e7                                      ldr r3, [r6, sb]
0041dbd8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0041dbdc  00 30 93 e5                                      ldr r3, [r3]
0041dbe0  03 00 52 e1                                      cmp r2, r3
0041dbe4  24 00 00 1a                                      bne #0x41dc7c
0041dbe8  64 d0 8d e2                                      add sp, sp, #0x64
0041dbec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041dbf0  10 31 9f e5                                      ldr r3, [pc, #0x110]
0041dbf4  10 b1 9f e5                                      ldr fp, [pc, #0x110]
0041dbf8  00 70 a0 e3                                      mov r7, #0
0041dbfc  03 30 8f e0                                      add r3, pc, r3
0041dc00  0b b0 8f e0                                      add fp, pc, fp
0041dc04  04 30 8d e5                                      str r3, [sp, #4]
0041dc08  08 80 8d e2                                      add r8, sp, #8
0041dc0c  06 a0 a0 e1                                      mov sl, r6
0041dc10  30 30 a0 e3                                      mov r3, #0x30
0041dc14  93 07 06 e0                                      mul r6, r3, r7
0041dc18  01 70 87 e2                                      add r7, r7, #1
0041dc1c  0b 10 a0 e1                                      mov r1, fp
0041dc20  07 20 a0 e1                                      mov r2, r7
0041dc24  08 00 a0 e1                                      mov r0, r8
0041dc28  ad c3 fb eb                                      bl #0x30eae4
0041dc2c  06 00 84 e0                                      add r0, r4, r6
0041dc30  05 30 a0 e1                                      mov r3, r5
0041dc34  87 0f 80 e2                                      add r0, r0, #0x21c
0041dc38  08 10 a0 e1                                      mov r1, r8
0041dc3c  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dc40  16 28 00 eb                                      bl #0x427ca0
0041dc44  04 10 9d e5                                      ldr r1, [sp, #4]
0041dc48  07 20 a0 e1                                      mov r2, r7
0041dc4c  08 00 a0 e1                                      mov r0, r8
0041dc50  a3 c3 fb eb                                      bl #0x30eae4
0041dc54  06 00 84 e0                                      add r0, r4, r6
0041dc58  ab 0f 80 e2                                      add r0, r0, #0x2ac
0041dc5c  08 10 a0 e1                                      mov r1, r8
0041dc60  7c 25 94 e5                                      ldr r2, [r4, #0x57c]
0041dc64  05 30 a0 e1                                      mov r3, r5
0041dc68  0c 28 00 eb                                      bl #0x427ca0
0041dc6c  03 00 57 e3                                      cmp r7, #3
0041dc70  e6 ff ff 1a                                      bne #0x41dc10
0041dc74  0a 60 a0 e1                                      mov r6, sl
0041dc78  84 ff ff ea                                      b #0x41da90
0041dc7c  a3 c1 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041dc80  00 72 57 00 ac 40 00 00 f4 37 00 00 38 3d 4a 00  .byte 0x00, 0x72, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0x3d, 0x4a, 0x00
0041dc90  7c 37 4a 00 04 b0 4a 00 14 b0 4a 00 2c b0 4a 00  .byte 0x7c, 0x37, 0x4a, 0x00, 0x04, 0xb0, 0x4a, 0x00, 0x14, 0xb0, 0x4a, 0x00, 0x2c, 0xb0, 0x4a, 0x00
0041dca0  2c b0 4a 00 3c b0 4a 00 4c b0 4a 00 64 b0 4a 00  .byte 0x2c, 0xb0, 0x4a, 0x00, 0x3c, 0xb0, 0x4a, 0x00, 0x4c, 0xb0, 0x4a, 0x00, 0x64, 0xb0, 0x4a, 0x00
0041dcb0  84 b0 4a 00 fc b0 4a 00 14 b1 4a 00 34 b1 4a 00  .byte 0x84, 0xb0, 0x4a, 0x00, 0xfc, 0xb0, 0x4a, 0x00, 0x14, 0xb1, 0x4a, 0x00, 0x34, 0xb1, 0x4a, 0x00
0041dcc0  4c b1 4a 00 64 b1 4a 00 84 b1 4a 00 a4 b1 4a 00  .byte 0x4c, 0xb1, 0x4a, 0x00, 0x64, 0xb1, 0x4a, 0x00, 0x84, 0xb1, 0x4a, 0x00, 0xa4, 0xb1, 0x4a, 0x00
0041dcd0  bc b1 4a 00 dc b1 4a 00 fc b1 4a 00 14 aa 4a 00  .byte 0xbc, 0xb1, 0x4a, 0x00, 0xdc, 0xb1, 0x4a, 0x00, 0xfc, 0xb1, 0x4a, 0x00, 0x14, 0xaa, 0x4a, 0x00
0041dce0  fc b1 4a 00 04 b2 4a 00 1c b2 4a 00 34 b2 4a 00  .byte 0xfc, 0xb1, 0x4a, 0x00, 0x04, 0xb2, 0x4a, 0x00, 0x1c, 0xb2, 0x4a, 0x00, 0x34, 0xb2, 0x4a, 0x00
0041dcf0  48 b2 4a 00 4c b2 4a 00 50 b2 4a 00 54 b2 4a 00  .byte 0x48, 0xb2, 0x4a, 0x00, 0x4c, 0xb2, 0x4a, 0x00, 0x50, 0xb2, 0x4a, 0x00, 0x54, 0xb2, 0x4a, 0x00
0041dd00  68 b2 4a 00 60 b2 4a 00 94 ae 4a 00 58 ae 4a 00  .byte 0x68, 0xb2, 0x4a, 0x00, 0x60, 0xb2, 0x4a, 0x00, 0x94, 0xae, 0x4a, 0x00, 0x58, 0xae, 0x4a, 0x00

; FUNCTION 0x0041de54, declared_size=528, range_size=528, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager10SlowUpdateEv
; demangled: InfoHUDManager::SlowUpdate()
; decoder-mode: arm
0041de54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041de58  f4 51 9f e5                                      ldr r5, [pc, #0x1f4]
0041de5c  f4 11 9f e5                                      ldr r1, [pc, #0x1f4]
0041de60  f4 41 9f e5                                      ldr r4, [pc, #0x1f4]
0041de64  05 50 8f e0                                      add r5, pc, r5
0041de68  01 30 95 e7                                      ldr r3, [r5, r1]
0041de6c  04 20 95 e7                                      ldr r2, [r5, r4]
0041de70  3c d0 4d e2                                      sub sp, sp, #0x3c
0041de74  00 30 93 e5                                      ldr r3, [r3]
0041de78  0c 10 8d e5                                      str r1, [sp, #0xc]
0041de7c  00 10 a0 e3                                      mov r1, #0
0041de80  00 60 a0 e1                                      mov r6, r0
0041de84  40 00 92 e5                                      ldr r0, [r2, #0x40]
0041de88  01 20 a0 e1                                      mov r2, r1
0041de8c  34 30 8d e5                                      str r3, [sp, #0x34]
0041de90  78 41 fd eb                                      bl #0x36e478
0041de94  60 86 90 e5                                      ldr r8, [r0, #0x660]
0041de98  00 00 58 e3                                      cmp r8, #0
0041de9c  4e 00 00 0a                                      beq #0x41dfdc
0041dea0  00 70 a0 e3                                      mov r7, #0
0041dea4  f2 bf 88 e2                                      add fp, r8, #0x3c8
0041dea8  1c a0 8d e2                                      add sl, sp, #0x1c
0041deac  07 90 a0 e1                                      mov sb, r7
0041deb0  08 00 a0 e1                                      mov r0, r8
0041deb4  07 10 a0 e1                                      mov r1, r7
0041deb8  ea 77 fe eb                                      bl #0x3bbe68
0041debc  01 00 70 e3                                      cmn r0, #1
0041dec0  07 90 ca e7                                      strb sb, [sl, r7]
0041dec4  03 00 00 0a                                      beq #0x41ded8
0041dec8  00 10 a0 e1                                      mov r1, r0
0041decc  0b 00 a0 e1                                      mov r0, fp
0041ded0  20 e9 fe eb                                      bl #0x3d8358
0041ded4  07 00 ca e7                                      strb r0, [sl, r7]
0041ded8  01 70 87 e2                                      add r7, r7, #1
0041dedc  03 00 57 e3                                      cmp r7, #3
0041dee0  f2 ff ff 1a                                      bne #0x41deb0
0041dee4  57 0f 86 e2                                      add r0, r6, #0x15c
0041dee8  98 27 00 eb                                      bl #0x427d50
0041deec  00 70 a0 e1                                      mov r7, r0
0041def0  0b 00 a0 e1                                      mov r0, fp
0041def4  6e e8 fe eb                                      bl #0x3d80b4
0041def8  60 11 9f e5                                      ldr r1, [pc, #0x160]
0041defc  01 00 20 e2                                      eor r0, r0, #1
0041df00  9b 00 c7 e5                                      strb r0, [r7, #0x9b]
0041df04  01 10 8f e0                                      add r1, pc, r1
0041df08  04 00 95 e7                                      ldr r0, [r5, r4]
0041df0c  cc 0b fc eb                                      bl #0x320e44
0041df10  01 00 50 e3                                      cmp r0, #1
0041df14  3c 00 00 da                                      ble #0x41e00c
0041df18  00 40 a0 e3                                      mov r4, #0
0041df1c  20 80 8d e2                                      add r8, sp, #0x20
0041df20  10 70 8d e2                                      add r7, sp, #0x10
0041df24  04 90 a0 e1                                      mov sb, r4
0041df28  30 b0 a0 e3                                      mov fp, #0x30
0041df2c  9b 64 20 e0                                      mla r0, fp, r4, r6
0041df30  10 90 cd e5                                      strb sb, [sp, #0x10]
0041df34  63 0f 80 e2                                      add r0, r0, #0x18c
0041df38  11 90 cd e5                                      strb sb, [sp, #0x11]
0041df3c  83 27 00 eb                                      bl #0x427d50
0041df40  00 20 90 e5                                      ldr r2, [r0]
0041df44  00 30 a0 e1                                      mov r3, r0
0041df48  08 00 a0 e1                                      mov r0, r8
0041df4c  20 a0 92 e5                                      ldr sl, [r2, #0x20]
0041df50  04 30 8d e5                                      str r3, [sp, #4]
0041df54  a4 ff ff eb                                      bl #0x41ddec
0041df58  04 30 9d e5                                      ldr r3, [sp, #4]
0041df5c  08 10 a0 e1                                      mov r1, r8
0041df60  07 20 a0 e1                                      mov r2, r7
0041df64  03 00 a0 e1                                      mov r0, r3
0041df68  3a ff 2f e1                                      blx sl
0041df6c  d0 32 dd e1                                      ldrsb r3, [sp, #0x20]
0041df70  01 00 73 e3                                      cmn r3, #1
0041df74  20 00 00 0a                                      beq #0x41dffc
0041df78  07 00 a0 e1                                      mov r0, r7
0041df7c  b4 e6 0d eb                                      bl #0x797a54
0041df80  a7 c2 fb eb                                      bl #0x30ea24
0041df84  9b 64 2a e0                                      mla sl, fp, r4, r6
0041df88  02 00 50 e3                                      cmp r0, #2
0041df8c  00 00 a0 83                                      movhi r0, #0
0041df90  ab af 8a e2                                      add sl, sl, #0x2ac
0041df94  08 00 8d e5                                      str r0, [sp, #8]
0041df98  0a 00 a0 e1                                      mov r0, sl
0041df9c  6b 27 00 eb                                      bl #0x427d50
0041dfa0  00 00 50 e3                                      cmp r0, #0
0041dfa4  07 00 00 0a                                      beq #0x41dfc8
0041dfa8  0a 00 a0 e1                                      mov r0, sl
0041dfac  67 27 00 eb                                      bl #0x427d50
0041dfb0  08 20 9d e5                                      ldr r2, [sp, #8]
0041dfb4  38 10 8d e2                                      add r1, sp, #0x38
0041dfb8  02 30 81 e0                                      add r3, r1, r2
0041dfbc  1c 30 53 e5                                      ldrb r3, [r3, #-0x1c]
0041dfc0  01 30 23 e2                                      eor r3, r3, #1
0041dfc4  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0041dfc8  01 40 84 e2                                      add r4, r4, #1
0041dfcc  07 00 a0 e1                                      mov r0, r7
0041dfd0  53 e4 0d eb                                      bl #0x797124
0041dfd4  03 00 54 e3                                      cmp r4, #3
0041dfd8  d3 ff ff 1a                                      bne #0x41df2c
0041dfdc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041dfe0  02 30 95 e7                                      ldr r3, [r5, r2]
0041dfe4  34 20 9d e5                                      ldr r2, [sp, #0x34]
0041dfe8  00 30 93 e5                                      ldr r3, [r3]
0041dfec  03 00 52 e1                                      cmp r2, r3
0041dff0  16 00 00 1a                                      bne #0x41e050
0041dff4  3c d0 8d e2                                      add sp, sp, #0x3c
0041dff8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041dffc  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
0041e000  28 10 9d e5                                      ldr r1, [sp, #0x28]
0041e004  cb d2 0c eb                                      bl #0x752b38
0041e008  da ff ff ea                                      b #0x41df78
0041e00c  00 40 a0 e3                                      mov r4, #0
0041e010  30 80 a0 e3                                      mov r8, #0x30
0041e014  98 64 27 e0                                      mla r7, r8, r4, r6
0041e018  ab 7f 87 e2                                      add r7, r7, #0x2ac
0041e01c  07 00 a0 e1                                      mov r0, r7
0041e020  4a 27 00 eb                                      bl #0x427d50
0041e024  00 00 50 e3                                      cmp r0, #0
0041e028  04 00 00 0a                                      beq #0x41e040
0041e02c  07 00 a0 e1                                      mov r0, r7
0041e030  46 27 00 eb                                      bl #0x427d50
0041e034  04 30 da e7                                      ldrb r3, [sl, r4]
0041e038  01 30 23 e2                                      eor r3, r3, #1
0041e03c  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0041e040  01 40 84 e2                                      add r4, r4, #1
0041e044  03 00 54 e3                                      cmp r4, #3
0041e048  f1 ff ff 1a                                      bne #0x41e014
0041e04c  e2 ff ff ea                                      b #0x41dfdc
0041e050  ae c0 fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041e054  2c 6c 57 00 ac 40 00 00 f4 37 00 00 f4 36 4a 00  .byte 0x2c, 0x6c, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xf4, 0x36, 0x4a, 0x00

; FUNCTION 0x0041e064, declared_size=2972, range_size=2972, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager10FastUpdateEv
; demangled: InfoHUDManager::FastUpdate()
; decoder-mode: arm
0041e064  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041e068  5c 8b 9f e5                                      ldr r8, [pc, #0xb5c]
0041e06c  5c 1b 9f e5                                      ldr r1, [pc, #0xb5c]
0041e070  5c 2b 9f e5                                      ldr r2, [pc, #0xb5c]
0041e074  08 80 8f e0                                      add r8, pc, r8
0041e078  01 30 98 e7                                      ldr r3, [r8, r1]
0041e07c  63 df 4d e2                                      sub sp, sp, #0x18c
0041e080  0c 20 8d e5                                      str r2, [sp, #0xc]
0041e084  02 20 98 e7                                      ldr r2, [r8, r2]
0041e088  00 30 93 e5                                      ldr r3, [r3]
0041e08c  18 10 8d e5                                      str r1, [sp, #0x18]
0041e090  00 10 a0 e3                                      mov r1, #0
0041e094  00 40 a0 e1                                      mov r4, r0
0041e098  40 00 92 e5                                      ldr r0, [r2, #0x40]
0041e09c  01 20 a0 e1                                      mov r2, r1
0041e0a0  84 31 8d e5                                      str r3, [sp, #0x184]
0041e0a4  f3 40 fd eb                                      bl #0x36e478
0041e0a8  60 66 90 e5                                      ldr r6, [r0, #0x660]
0041e0ac  00 00 56 e3                                      cmp r6, #0
0041e0b0  42 01 00 0a                                      beq #0x41e5c0
0041e0b4  df 0f 86 e2                                      add r0, r6, #0x37c
0041e0b8  74 79 ff eb                                      bl #0x3fc690
0041e0bc  14 1b 9f e5                                      ldr r1, [pc, #0xb14]
0041e0c0  d8 50 8d e2                                      add r5, sp, #0xd8
0041e0c4  00 20 a0 e1                                      mov r2, r0
0041e0c8  01 10 8f e0                                      add r1, pc, r1
0041e0cc  05 00 a0 e1                                      mov r0, r5
0041e0d0  83 c2 fb eb                                      bl #0x30eae4
0041e0d4  fc 00 84 e2                                      add r0, r4, #0xfc
0041e0d8  7c 75 94 e5                                      ldr r7, [r4, #0x57c]
0041e0dc  1b 27 00 eb                                      bl #0x427d50
0041e0e0  05 20 a0 e1                                      mov r2, r5
0041e0e4  00 10 a0 e1                                      mov r1, r0
0041e0e8  00 30 a0 e3                                      mov r3, #0
0041e0ec  07 00 a0 e1                                      mov r0, r7
0041e0f0  7a 2c 0e eb                                      bl #0x7a92e0
0041e0f4  88 30 01 e3                                      movw r3, #0x1088
0041e0f8  03 00 96 e7                                      ldr r0, [r6, r3]
0041e0fc  64 a0 a0 e3                                      mov sl, #0x64
0041e100  90 30 01 e3                                      movw r3, #0x1090
0041e104  03 10 96 e7                                      ldr r1, [r6, r3]
0041e108  9a 00 00 e0                                      mul r0, sl, r0
0041e10c  64 c0 fb eb                                      bl #0x30e2a4
0041e110  9c 30 01 e3                                      movw r3, #0x109c
0041e114  03 30 96 e7                                      ldr r3, [r6, r3]
0041e118  a4 20 01 e3                                      movw r2, #0x10a4
0041e11c  02 10 96 e7                                      ldr r1, [r6, r2]
0041e120  01 50 40 e2                                      sub r5, r0, #1
0041e124  9a 03 00 e0                                      mul r0, sl, r3
0041e128  5d c0 fb eb                                      bl #0x30e2a4
0041e12c  7c 30 01 e3                                      movw r3, #0x107c
0041e130  03 30 96 e7                                      ldr r3, [r6, r3]
0041e134  01 70 40 e2                                      sub r7, r0, #1
0041e138  c5 5f c5 e1                                      bic r5, r5, r5, asr #31
0041e13c  9a 03 00 e0                                      mul r0, sl, r3
0041e140  42 3d a0 e3                                      mov r3, #0x1080
0041e144  03 10 96 e7                                      ldr r1, [r6, r3]
0041e148  55 c0 fb eb                                      bl #0x30e2a4
0041e14c  63 00 50 e3                                      cmp r0, #0x63
0041e150  00 a0 a0 b1                                      movlt sl, r0
0041e154  63 a0 a0 a3                                      movge sl, #0x63
0041e158  0c 00 84 e2                                      add r0, r4, #0xc
0041e15c  7c 95 94 e5                                      ldr sb, [r4, #0x57c]
0041e160  fa 26 00 eb                                      bl #0x427d50
0041e164  63 00 55 e3                                      cmp r5, #0x63
0041e168  63 50 a0 a3                                      movge r5, #0x63
0041e16c  00 10 a0 e1                                      mov r1, r0
0041e170  05 20 a0 e1                                      mov r2, r5
0041e174  09 00 a0 e1                                      mov r0, sb
0041e178  00 30 a0 e3                                      mov r3, #0
0041e17c  ec 26 0e eb                                      bl #0x7a7d34
0041e180  9c 00 84 e2                                      add r0, r4, #0x9c
0041e184  7c 95 94 e5                                      ldr sb, [r4, #0x57c]
0041e188  f0 26 00 eb                                      bl #0x427d50
0041e18c  63 00 57 e3                                      cmp r7, #0x63
0041e190  63 70 a0 a3                                      movge r7, #0x63
0041e194  00 10 a0 e1                                      mov r1, r0
0041e198  07 20 a0 e1                                      mov r2, r7
0041e19c  09 00 a0 e1                                      mov r0, sb
0041e1a0  00 30 a0 e3                                      mov r3, #0
0041e1a4  e2 26 0e eb                                      bl #0x7a7d34
0041e1a8  cc 00 84 e2                                      add r0, r4, #0xcc
0041e1ac  7c 75 94 e5                                      ldr r7, [r4, #0x57c]
0041e1b0  e6 26 00 eb                                      bl #0x427d50
0041e1b4  0a 20 a0 e1                                      mov r2, sl
0041e1b8  00 10 a0 e1                                      mov r1, r0
0041e1bc  00 30 a0 e3                                      mov r3, #0
0041e1c0  07 00 a0 e1                                      mov r0, r7
0041e1c4  da 26 0e eb                                      bl #0x7a7d34
0041e1c8  3c 00 84 e2                                      add r0, r4, #0x3c
0041e1cc  7c 75 94 e5                                      ldr r7, [r4, #0x57c]
0041e1d0  de 26 00 eb                                      bl #0x427d50
0041e1d4  05 20 a0 e1                                      mov r2, r5
0041e1d8  00 10 a0 e1                                      mov r1, r0
0041e1dc  00 30 a0 e3                                      mov r3, #0
0041e1e0  07 00 a0 e1                                      mov r0, r7
0041e1e4  d2 26 0e eb                                      bl #0x7a7d34
0041e1e8  6c 00 84 e2                                      add r0, r4, #0x6c
0041e1ec  7c 75 94 e5                                      ldr r7, [r4, #0x57c]
0041e1f0  d6 26 00 eb                                      bl #0x427d50
0041e1f4  05 20 a0 e1                                      mov r2, r5
0041e1f8  00 10 a0 e1                                      mov r1, r0
0041e1fc  00 30 a0 e3                                      mov r3, #0
0041e200  07 00 a0 e1                                      mov r0, r7
0041e204  ca 26 0e eb                                      bl #0x7a7d34
0041e208  cf 0f 84 e2                                      add r0, r4, #0x33c
0041e20c  cf 26 00 eb                                      bl #0x427d50
0041e210  94 10 a0 e3                                      mov r1, #0x94
0041e214  00 50 a0 e1                                      mov r5, r0
0041e218  00 20 a0 e3                                      mov r2, #0
0041e21c  56 0e 86 e2                                      add r0, r6, #0x560
0041e220  2e 05 ff eb                                      bl #0x3df6e0
0041e224  00 70 a0 e3                                      mov r7, #0
0041e228  00 00 50 e2                                      subs r0, r0, #0
0041e22c  01 00 a0 13                                      movne r0, #1
0041e230  9b 00 c5 e5                                      strb r0, [r5, #0x9b]
0041e234  00 a0 a0 e3                                      mov sl, #0
0041e238  07 90 a0 e1                                      mov sb, r7
0041e23c  a4 50 8d e2                                      add r5, sp, #0xa4
0041e240  06 00 a0 e1                                      mov r0, r6
0041e244  09 10 a0 e1                                      mov r1, sb
0041e248  06 77 fe eb                                      bl #0x3bbe68
0041e24c  01 00 70 e3                                      cmn r0, #1
0041e250  07 a0 85 e7                                      str sl, [r5, r7]
0041e254  05 00 00 0a                                      beq #0x41e270
0041e258  7c 34 96 e5                                      ldr r3, [r6, #0x47c]
0041e25c  00 01 93 e7                                      ldr r0, [r3, r0, lsl #2]
0041e260  00 00 50 e3                                      cmp r0, #0
0041e264  01 00 00 0a                                      beq #0x41e270
0041e268  58 f0 fe eb                                      bl #0x3da3d0
0041e26c  07 00 85 e7                                      str r0, [r5, r7]
0041e270  04 70 87 e2                                      add r7, r7, #4
0041e274  0c 00 57 e3                                      cmp r7, #0xc
0041e278  01 90 89 e2                                      add sb, sb, #1
0041e27c  ef ff ff 1a                                      bne #0x41e240
0041e280  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0041e284  50 19 9f e5                                      ldr r1, [pc, #0x950]
0041e288  03 00 98 e7                                      ldr r0, [r8, r3]
0041e28c  01 10 8f e0                                      add r1, pc, r1
0041e290  eb 0a fc eb                                      bl #0x320e44
0041e294  01 00 50 e3                                      cmp r0, #1
0041e298  03 02 00 da                                      ble #0x41eaac
0041e29c  00 50 a0 e3                                      mov r5, #0
0041e2a0  17 9e 8d e2                                      add sb, sp, #0x170
0041e2a4  98 70 8d e2                                      add r7, sp, #0x98
0041e2a8  05 b0 a0 e1                                      mov fp, r5
0041e2ac  10 60 8d e5                                      str r6, [sp, #0x10]
0041e2b0  30 10 a0 e3                                      mov r1, #0x30
0041e2b4  91 45 20 e0                                      mla r0, r1, r5, r4
0041e2b8  98 b0 cd e5                                      strb fp, [sp, #0x98]
0041e2bc  63 0f 80 e2                                      add r0, r0, #0x18c
0041e2c0  99 b0 cd e5                                      strb fp, [sp, #0x99]
0041e2c4  a1 26 00 eb                                      bl #0x427d50
0041e2c8  00 30 90 e5                                      ldr r3, [r0]
0041e2cc  00 a0 a0 e1                                      mov sl, r0
0041e2d0  09 00 a0 e1                                      mov r0, sb
0041e2d4  20 60 93 e5                                      ldr r6, [r3, #0x20]
0041e2d8  c3 fe ff eb                                      bl #0x41ddec
0041e2dc  0a 00 a0 e1                                      mov r0, sl
0041e2e0  09 10 a0 e1                                      mov r1, sb
0041e2e4  07 20 a0 e1                                      mov r2, r7
0041e2e8  36 ff 2f e1                                      blx r6
0041e2ec  70 01 dd e5                                      ldrb r0, [sp, #0x170]
0041e2f0  70 30 af e6                                      sxtb r3, r0
0041e2f4  01 00 73 e3                                      cmn r3, #1
0041e2f8  c8 00 00 0a                                      beq #0x41e620
0041e2fc  07 00 a0 e1                                      mov r0, r7
0041e300  d3 e5 0d eb                                      bl #0x797a54
0041e304  c6 c1 fb eb                                      bl #0x30ea24
0041e308  30 10 a0 e3                                      mov r1, #0x30
0041e30c  91 45 22 e0                                      mla r2, r1, r5, r4
0041e310  02 00 50 e3                                      cmp r0, #2
0041e314  00 30 a0 91                                      movls r3, r0
0041e318  00 30 a0 83                                      movhi r3, #0
0041e31c  87 0f 82 e2                                      add r0, r2, #0x21c
0041e320  7c 65 94 e5                                      ldr r6, [r4, #0x57c]
0041e324  08 30 8d e5                                      str r3, [sp, #8]
0041e328  88 26 00 eb                                      bl #0x427d50
0041e32c  08 30 9d e5                                      ldr r3, [sp, #8]
0041e330  62 2f 8d e2                                      add r2, sp, #0x188
0041e334  42 14 a0 e3                                      mov r1, #0x42000000
0041e338  03 31 82 e0                                      add r3, r2, r3, lsl #2
0041e33c  32 17 81 e2                                      add r1, r1, #0xc80000
0041e340  00 a0 a0 e1                                      mov sl, r0
0041e344  e4 00 13 e5                                      ldr r0, [r3, #-0xe4]
0041e348  87 c2 fb eb                                      bl #0x30ed6c
0041e34c  5e c0 fb eb                                      bl #0x30e4cc
0041e350  01 20 40 e2                                      sub r2, r0, #1
0041e354  0a 10 a0 e1                                      mov r1, sl
0041e358  c2 2f c2 e1                                      bic r2, r2, r2, asr #31
0041e35c  06 00 a0 e1                                      mov r0, r6
0041e360  00 30 a0 e3                                      mov r3, #0
0041e364  72 26 0e eb                                      bl #0x7a7d34
0041e368  01 50 85 e2                                      add r5, r5, #1
0041e36c  07 00 a0 e1                                      mov r0, r7
0041e370  6b e3 0d eb                                      bl #0x797124
0041e374  03 00 55 e3                                      cmp r5, #3
0041e378  cc ff ff 1a                                      bne #0x41e2b0
0041e37c  10 60 9d e5                                      ldr r6, [sp, #0x10]
0041e380  7c 34 96 e5                                      ldr r3, [r6, #0x47c]
0041e384  00 30 93 e5                                      ldr r3, [r3]
0041e388  00 00 53 e3                                      cmp r3, #0
0041e38c  10 00 00 0a                                      beq #0x41e3d4
0041e390  4b 0f 84 e2                                      add r0, r4, #0x12c
0041e394  7c 55 94 e5                                      ldr r5, [r4, #0x57c]
0041e398  6c 26 00 eb                                      bl #0x427d50
0041e39c  88 34 96 e5                                      ldr r3, [r6, #0x488]
0041e3a0  00 70 a0 e1                                      mov r7, r0
0041e3a4  00 00 93 e5                                      ldr r0, [r3]
0041e3a8  08 f0 fe eb                                      bl #0x3da3d0
0041e3ac  42 14 a0 e3                                      mov r1, #0x42000000
0041e3b0  32 17 81 e2                                      add r1, r1, #0xc80000
0041e3b4  6c c2 fb eb                                      bl #0x30ed6c
0041e3b8  43 c0 fb eb                                      bl #0x30e4cc
0041e3bc  01 20 40 e2                                      sub r2, r0, #1
0041e3c0  07 10 a0 e1                                      mov r1, r7
0041e3c4  05 00 a0 e1                                      mov r0, r5
0041e3c8  c2 2f c2 e1                                      bic r2, r2, r2, asr #31
0041e3cc  00 30 a0 e3                                      mov r3, #0
0041e3d0  57 26 0e eb                                      bl #0x7a7d34
0041e3d4  ee 7c 0f eb                                      bl #0x7fd794
0041e3d8  05 30 d0 e5                                      ldrb r3, [r0, #5]
0041e3dc  00 00 53 e3                                      cmp r3, #0
0041e3e0  a3 00 00 1a                                      bne #0x41e674
0041e3e4  00 30 96 e5                                      ldr r3, [r6]
0041e3e8  06 00 a0 e1                                      mov r0, r6
0041e3ec  0f e0 a0 e1                                      mov lr, pc
0041e3f0  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0041e3f4  00 00 50 e3                                      cmp r0, #0
0041e3f8  78 00 00 0a                                      beq #0x41e5e0
0041e3fc  00 70 a0 e3                                      mov r7, #0
0041e400  f2 5f 86 e2                                      add r5, r6, #0x3c8
0041e404  05 00 a0 e1                                      mov r0, r5
0041e408  10 dc fe eb                                      bl #0x3d5450
0041e40c  00 00 50 e3                                      cmp r0, #0
0041e410  04 00 00 0a                                      beq #0x41e428
0041e414  05 00 a0 e1                                      mov r0, r5
0041e418  0c dc fe eb                                      bl #0x3d5450
0041e41c  10 13 fe eb                                      bl #0x3a3064
0041e420  00 00 50 e3                                      cmp r0, #0
0041e424  b6 01 00 1a                                      bne #0x41eb04
0041e428  00 00 57 e3                                      cmp r7, #0
0041e42c  c9 01 00 0a                                      beq #0x41eb58
0041e430  a4 34 01 e3                                      movw r3, #0x14a4
0041e434  03 50 96 e7                                      ldr r5, [r6, r3]
0041e438  00 00 55 e3                                      cmp r5, #0
0041e43c  c5 01 00 0a                                      beq #0x41eb58
0041e440  00 30 94 e5                                      ldr r3, [r4]
0041e444  03 00 55 e1                                      cmp r5, r3
0041e448  47 00 00 0a                                      beq #0x41e56c
0041e44c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0041e450  41 2d a0 e3                                      mov r2, #0x1040
0041e454  00 50 84 e5                                      str r5, [r4]
0041e458  01 30 98 e7                                      ldr r3, [r8, r1]
0041e45c  02 10 95 e7                                      ldr r1, [r5, r2]
0041e460  34 00 93 e5                                      ldr r0, [r3, #0x34]
0041e464  9c aa 03 eb                                      bl #0x508edc
0041e468  00 90 a0 e1                                      mov sb, r0
0041e46c  05 00 a0 e1                                      mov r0, r5
0041e470  38 13 fe eb                                      bl #0x3a3158
0041e474  00 00 50 e3                                      cmp r0, #0
0041e478  ab 01 00 0a                                      beq #0x41eb2c
0041e47c  3f 3f 03 e3                                      movw r3, #0x3f3f
0041e480  b8 39 cd e1                                      strh r3, [sp, #0x98]
0041e484  00 30 a0 e3                                      mov r3, #0
0041e488  9a 30 cd e5                                      strb r3, [sp, #0x9a]
0041e48c  98 70 8d e2                                      add r7, sp, #0x98
0041e490  e7 6f 84 e2                                      add r6, r4, #0x39c
0041e494  06 00 a0 e1                                      mov r0, r6
0041e498  2c 26 00 eb                                      bl #0x427d50
0041e49c  01 30 a0 e3                                      mov r3, #1
0041e4a0  9b 30 c0 e5                                      strb r3, [r0, #0x9b]
0041e4a4  06 00 a0 e1                                      mov r0, r6
0041e4a8  7c 65 94 e5                                      ldr r6, [r4, #0x57c]
0041e4ac  27 26 00 eb                                      bl #0x427d50
0041e4b0  28 27 9f e5                                      ldr r2, [pc, #0x728]
0041e4b4  00 10 a0 e1                                      mov r1, r0
0041e4b8  00 30 a0 e3                                      mov r3, #0
0041e4bc  02 20 8f e0                                      add r2, pc, r2
0041e4c0  06 00 a0 e1                                      mov r0, r6
0041e4c4  16 35 0e eb                                      bl #0x7ab924
0041e4c8  14 37 9f e5                                      ldr r3, [pc, #0x714]
0041e4cc  f8 a0 8d e2                                      add sl, sp, #0xf8
0041e4d0  03 60 98 e7                                      ldr r6, [r8, r3]
0041e4d4  06 00 a0 e1                                      mov r0, r6
0041e4d8  ea 64 fc eb                                      bl #0x337888
0041e4dc  04 17 9f e5                                      ldr r1, [pc, #0x704]
0041e4e0  0a 00 a0 e1                                      mov r0, sl
0041e4e4  08 a1 8d e5                                      str sl, [sp, #0x108]
0041e4e8  01 10 8f e0                                      add r1, pc, r1
0041e4ec  19 20 81 e2                                      add r2, r1, #0x19
0041e4f0  0c a1 8d e5                                      str sl, [sp, #0x10c]
0041e4f4  7b cc fb eb                                      bl #0x3116e8
0041e4f8  06 00 a0 e1                                      mov r0, r6
0041e4fc  0a 10 a0 e1                                      mov r1, sl
0041e500  60 65 fc eb                                      bl #0x337a88
0041e504  00 60 a0 e1                                      mov r6, r0
0041e508  0a 00 a0 e1                                      mov r0, sl
0041e50c  26 d5 fb eb                                      bl #0x3139ac
0041e510  00 00 56 e3                                      cmp r6, #0
0041e514  45 00 00 0a                                      beq #0x41e630
0041e518  cc 16 9f e5                                      ldr r1, [pc, #0x6cc]
0041e51c  08 21 95 e5                                      ldr r2, [r5, #0x108]
0041e520  07 00 a0 e1                                      mov r0, r7
0041e524  01 10 8f e0                                      add r1, pc, r1
0041e528  6d c1 fb eb                                      bl #0x30eae4
0041e52c  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041e530  7c 65 94 e5                                      ldr r6, [r4, #0x57c]
0041e534  05 26 00 eb                                      bl #0x427d50
0041e538  44 20 95 e5                                      ldr r2, [r5, #0x44]
0041e53c  00 10 a0 e1                                      mov r1, r0
0041e540  00 30 a0 e3                                      mov r3, #0
0041e544  06 00 a0 e1                                      mov r0, r6
0041e548  64 2b 0e eb                                      bl #0x7a92e0
0041e54c  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041e550  7c 65 94 e5                                      ldr r6, [r4, #0x57c]
0041e554  fd 25 00 eb                                      bl #0x427d50
0041e558  07 20 a0 e1                                      mov r2, r7
0041e55c  00 10 a0 e1                                      mov r1, r0
0041e560  00 30 a0 e3                                      mov r3, #0
0041e564  06 00 a0 e1                                      mov r0, r6
0041e568  5c 2b 0e eb                                      bl #0x7a92e0
0041e56c  05 00 a0 e1                                      mov r0, r5
0041e570  59 7b fe eb                                      bl #0x3bd2dc
0041e574  00 60 a0 e1                                      mov r6, r0
0041e578  42 0e 84 e2                                      add r0, r4, #0x420
0041e57c  0c 00 80 e2                                      add r0, r0, #0xc
0041e580  7c 45 94 e5                                      ldr r4, [r4, #0x57c]
0041e584  f1 25 00 eb                                      bl #0x427d50
0041e588  42 14 a0 e3                                      mov r1, #0x42000000
0041e58c  32 17 81 e2                                      add r1, r1, #0xc80000
0041e590  00 50 a0 e1                                      mov r5, r0
0041e594  06 00 a0 e1                                      mov r0, r6
0041e598  f3 c1 fb eb                                      bl #0x30ed6c
0041e59c  ca bf fb eb                                      bl #0x30e4cc
0041e5a0  64 00 50 e3                                      cmp r0, #0x64
0041e5a4  00 20 a0 b1                                      movlt r2, r0
0041e5a8  64 20 a0 a3                                      movge r2, #0x64
0041e5ac  05 10 a0 e1                                      mov r1, r5
0041e5b0  04 00 a0 e1                                      mov r0, r4
0041e5b4  01 20 42 e2                                      sub r2, r2, #1
0041e5b8  00 30 a0 e3                                      mov r3, #0
0041e5bc  dc 25 0e eb                                      bl #0x7a7d34
0041e5c0  18 20 9d e5                                      ldr r2, [sp, #0x18]
0041e5c4  02 30 98 e7                                      ldr r3, [r8, r2]
0041e5c8  84 21 9d e5                                      ldr r2, [sp, #0x184]
0041e5cc  00 30 93 e5                                      ldr r3, [r3]
0041e5d0  03 00 52 e1                                      cmp r2, r3
0041e5d4  7b 01 00 1a                                      bne #0x41ebc8
0041e5d8  63 df 8d e2                                      add sp, sp, #0x18c
0041e5dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041e5e0  a4 54 01 e3                                      movw r5, #0x14a4
0041e5e4  05 30 96 e7                                      ldr r3, [r6, r5]
0041e5e8  00 00 53 e3                                      cmp r3, #0
0041e5ec  82 ff ff 0a                                      beq #0x41e3fc
0041e5f0  03 00 a0 e1                                      mov r0, r3
0041e5f4  00 30 93 e5                                      ldr r3, [r3]
0041e5f8  0f e0 a0 e1                                      mov lr, pc
0041e5fc  24 f0 93 e5                                      ldr pc, [r3, #0x24]
0041e600  00 00 50 e3                                      cmp r0, #0
0041e604  7c ff ff 0a                                      beq #0x41e3fc
0041e608  05 00 96 e7                                      ldr r0, [r6, r5]
0041e60c  94 12 fe eb                                      bl #0x3a3064
0041e610  00 00 50 e3                                      cmp r0, #0
0041e614  01 70 a0 13                                      movne r7, #1
0041e618  78 ff ff 1a                                      bne #0x41e400
0041e61c  76 ff ff ea                                      b #0x41e3fc
0041e620  7c 01 9d e5                                      ldr r0, [sp, #0x17c]
0041e624  78 11 9d e5                                      ldr r1, [sp, #0x178]
0041e628  42 d1 0c eb                                      bl #0x752b38
0041e62c  32 ff ff ea                                      b #0x41e2fc
0041e630  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041e634  7c a5 94 e5                                      ldr sl, [r4, #0x57c]
0041e638  c4 25 00 eb                                      bl #0x427d50
0041e63c  09 20 a0 e1                                      mov r2, sb
0041e640  00 10 a0 e1                                      mov r1, r0
0041e644  06 30 a0 e1                                      mov r3, r6
0041e648  0a 00 a0 e1                                      mov r0, sl
0041e64c  23 2b 0e eb                                      bl #0x7a92e0
0041e650  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041e654  7c a5 94 e5                                      ldr sl, [r4, #0x57c]
0041e658  bc 25 00 eb                                      bl #0x427d50
0041e65c  07 20 a0 e1                                      mov r2, r7
0041e660  00 10 a0 e1                                      mov r1, r0
0041e664  06 30 a0 e1                                      mov r3, r6
0041e668  0a 00 a0 e1                                      mov r0, sl
0041e66c  1b 2b 0e eb                                      bl #0x7a92e0
0041e670  bd ff ff ea                                      b #0x41e56c
0041e674  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0041e678  00 10 a0 e3                                      mov r1, #0
0041e67c  01 20 a0 e1                                      mov r2, r1
0041e680  00 30 98 e7                                      ldr r3, [r8, r0]
0041e684  40 00 93 e5                                      ldr r0, [r3, #0x40]
0041e688  7a 3f fd eb                                      bl #0x36e478
0041e68c  a8 33 90 e5                                      ldr r3, [r0, #0x3a8]
0041e690  00 00 53 e3                                      cmp r3, #0
0041e694  12 00 00 ba                                      blt #0x41e6e4
0041e698  d3 2d 04 e3                                      movw r2, #0x4dd3
0041e69c  62 20 41 e3                                      movt r2, #0x1062
0041e6a0  92 13 c2 e0                                      smull r1, r2, r2, r3
0041e6a4  44 15 9f e5                                      ldr r1, [pc, #0x544]
0041e6a8  c3 3f a0 e1                                      asr r3, r3, #0x1f
0041e6ac  b8 50 8d e2                                      add r5, sp, #0xb8
0041e6b0  42 23 63 e0                                      rsb r2, r3, r2, asr #6
0041e6b4  01 10 8f e0                                      add r1, pc, r1
0041e6b8  05 00 a0 e1                                      mov r0, r5
0041e6bc  08 c1 fb eb                                      bl #0x30eae4
0041e6c0  4b 0e 84 e2                                      add r0, r4, #0x4b0
0041e6c4  0c 00 80 e2                                      add r0, r0, #0xc
0041e6c8  7c 75 94 e5                                      ldr r7, [r4, #0x57c]
0041e6cc  9f 25 00 eb                                      bl #0x427d50
0041e6d0  05 20 a0 e1                                      mov r2, r5
0041e6d4  00 10 a0 e1                                      mov r1, r0
0041e6d8  00 30 a0 e3                                      mov r3, #0
0041e6dc  07 00 a0 e1                                      mov r0, r7
0041e6e0  fe 2a 0e eb                                      bl #0x7a92e0
0041e6e4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041e6e8  44 50 8d e2                                      add r5, sp, #0x44
0041e6ec  00 a0 a0 e3                                      mov sl, #0
0041e6f0  02 30 98 e7                                      ldr r3, [r8, r2]
0041e6f4  04 b0 a0 e1                                      mov fp, r4
0041e6f8  0a 70 a0 e1                                      mov r7, sl
0041e6fc  40 00 93 e5                                      ldr r0, [r3, #0x40]
0041e700  28 3c fd eb                                      bl #0x36d7a8
0041e704  d3 3d 04 e3                                      movw r3, #0x4dd3
0041e708  62 30 41 e3                                      movt r3, #0x1062
0041e70c  38 30 8d e5                                      str r3, [sp, #0x38]
0041e710  dc 34 9f e5                                      ldr r3, [pc, #0x4dc]
0041e714  28 00 8d e5                                      str r0, [sp, #0x28]
0041e718  0c 10 85 e2                                      add r1, r5, #0xc
0041e71c  03 30 8f e0                                      add r3, pc, r3
0041e720  34 30 8d e5                                      str r3, [sp, #0x34]
0041e724  11 0e 8d e2                                      add r0, sp, #0x110
0041e728  56 3f 8d e2                                      add r3, sp, #0x158
0041e72c  20 a0 8d e5                                      str sl, [sp, #0x20]
0041e730  4a 9f 8d e2                                      add sb, sp, #0x128
0041e734  10 00 8d e5                                      str r0, [sp, #0x10]
0041e738  30 10 8d e5                                      str r1, [sp, #0x30]
0041e73c  3c 60 8d e5                                      str r6, [sp, #0x3c]
0041e740  24 80 8d e5                                      str r8, [sp, #0x24]
0041e744  03 40 a0 e1                                      mov r4, r3
0041e748  30 00 a0 e3                                      mov r0, #0x30
0041e74c  90 ba 20 e0                                      mla r0, r0, sl, fp
0041e750  4e 0e 80 e2                                      add r0, r0, #0x4e0
0041e754  0c 00 80 e2                                      add r0, r0, #0xc
0041e758  7c 25 00 eb                                      bl #0x427d50
0041e75c  10 10 a0 e3                                      mov r1, #0x10
0041e760  2c 00 8d e5                                      str r0, [sp, #0x2c]
0041e764  04 00 a0 e1                                      mov r0, r4
0041e768  68 41 8d e5                                      str r4, [sp, #0x168]
0041e76c  6c 41 8d e5                                      str r4, [sp, #0x16c]
0041e770  c1 cb fb eb                                      bl #0x31167c
0041e774  28 30 9d e5                                      ldr r3, [sp, #0x28]
0041e778  20 20 9d e5                                      ldr r2, [sp, #0x20]
0041e77c  03 00 52 e1                                      cmp r2, r3
0041e780  68 31 9d e5                                      ldr r3, [sp, #0x168]
0041e784  00 70 c3 e5                                      strb r7, [r3]
0041e788  60 00 00 ba                                      blt #0x41e910
0041e78c  00 60 a0 e3                                      mov r6, #0
0041e790  00 00 e0 e3                                      mvn r0, #0
0041e794  14 60 8d e5                                      str r6, [sp, #0x14]
0041e798  06 30 a0 e1                                      mov r3, r6
0041e79c  1c 00 8d e5                                      str r0, [sp, #0x1c]
0041e7a0  24 00 9d e5                                      ldr r0, [sp, #0x24]
0041e7a4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0041e7a8  01 80 a0 e3                                      mov r8, #1
0041e7ac  38 91 8d e5                                      str sb, [sp, #0x138]
0041e7b0  01 20 90 e7                                      ldr r2, [r0, r1]
0041e7b4  09 00 a0 e1                                      mov r0, sb
0041e7b8  6c 11 9d e5                                      ldr r1, [sp, #0x16c]
0041e7bc  34 c0 92 e5                                      ldr ip, [r2, #0x34]
0041e7c0  68 21 9d e5                                      ldr r2, [sp, #0x168]
0041e7c4  48 30 cd e5                                      strb r3, [sp, #0x48]
0041e7c8  45 80 cd e5                                      strb r8, [sp, #0x45]
0041e7cc  08 c0 8d e5                                      str ip, [sp, #8]
0041e7d0  44 70 cd e5                                      strb r7, [sp, #0x44]
0041e7d4  3c 91 8d e5                                      str sb, [sp, #0x13c]
0041e7d8  c2 cb fb eb                                      bl #0x3116e8
0041e7dc  08 c0 9d e5                                      ldr ip, [sp, #8]
0041e7e0  09 20 a0 e1                                      mov r2, sb
0041e7e4  08 30 a0 e1                                      mov r3, r8
0041e7e8  0c 10 a0 e1                                      mov r1, ip
0041e7ec  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041e7f0  05 a5 03 eb                                      bl #0x507c0c
0041e7f4  24 11 9d e5                                      ldr r1, [sp, #0x124]
0041e7f8  30 00 9d e5                                      ldr r0, [sp, #0x30]
0041e7fc  50 70 cd e5                                      strb r7, [sp, #0x50]
0041e800  51 70 cd e5                                      strb r7, [sp, #0x51]
0041e804  d1 e2 0d eb                                      bl #0x797350
0041e808  10 00 9d e5                                      ldr r0, [sp, #0x10]
0041e80c  66 d4 fb eb                                      bl #0x3139ac
0041e810  09 00 a0 e1                                      mov r0, sb
0041e814  64 d4 fb eb                                      bl #0x3139ac
0041e818  02 80 a0 e3                                      mov r8, #2
0041e81c  14 00 9d e5                                      ldr r0, [sp, #0x14]
0041e820  5c 70 cd e5                                      strb r7, [sp, #0x5c]
0041e824  5d 80 cd e5                                      strb r8, [sp, #0x5d]
0041e828  40 c1 fb eb                                      bl #0x30ed30
0041e82c  f0 0b cd e1                                      strd r0, r1, [sp, #0xb0]
0041e830  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0041e834  06 00 a0 e1                                      mov r0, r6
0041e838  1c 30 85 e5                                      str r3, [r5, #0x1c]
0041e83c  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0041e840  20 30 85 e5                                      str r3, [r5, #0x20]
0041e844  68 70 cd e5                                      strb r7, [sp, #0x68]
0041e848  69 80 cd e5                                      strb r8, [sp, #0x69]
0041e84c  37 c1 fb eb                                      bl #0x30ed30
0041e850  f0 0b cd e1                                      strd r0, r1, [sp, #0xb0]
0041e854  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0041e858  0a 00 a0 e1                                      mov r0, sl
0041e85c  01 a0 8a e2                                      add sl, sl, #1
0041e860  28 30 85 e5                                      str r3, [r5, #0x28]
0041e864  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0041e868  2c 30 85 e5                                      str r3, [r5, #0x2c]
0041e86c  74 70 cd e5                                      strb r7, [sp, #0x74]
0041e870  75 80 cd e5                                      strb r8, [sp, #0x75]
0041e874  2d c1 fb eb                                      bl #0x30ed30
0041e878  f0 0b cd e1                                      strd r0, r1, [sp, #0xb0]
0041e87c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0041e880  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0041e884  34 30 85 e5                                      str r3, [r5, #0x34]
0041e888  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0041e88c  38 30 85 e5                                      str r3, [r5, #0x38]
0041e890  81 80 cd e5                                      strb r8, [sp, #0x81]
0041e894  80 70 cd e5                                      strb r7, [sp, #0x80]
0041e898  24 c1 fb eb                                      bl #0x30ed30
0041e89c  f0 0b cd e1                                      strd r0, r1, [sp, #0xb0]
0041e8a0  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
0041e8a4  7c 65 9b e5                                      ldr r6, [fp, #0x57c]
0041e8a8  40 30 85 e5                                      str r3, [r5, #0x40]
0041e8ac  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
0041e8b0  06 00 a0 e1                                      mov r0, r6
0041e8b4  44 30 85 e5                                      str r3, [r5, #0x44]
0041e8b8  f8 24 0e eb                                      bl #0x7a7ca0
0041e8bc  06 c0 a0 e3                                      mov ip, #6
0041e8c0  00 10 a0 e1                                      mov r1, r0
0041e8c4  34 20 9d e5                                      ldr r2, [sp, #0x34]
0041e8c8  06 00 a0 e1                                      mov r0, r6
0041e8cc  05 30 a0 e1                                      mov r3, r5
0041e8d0  00 c0 8d e5                                      str ip, [sp]
0041e8d4  4c 35 0e eb                                      bl #0x7abe0c
0041e8d8  48 60 85 e2                                      add r6, r5, #0x48
0041e8dc  0c 60 46 e2                                      sub r6, r6, #0xc
0041e8e0  06 00 a0 e1                                      mov r0, r6
0041e8e4  0e e2 0d eb                                      bl #0x797124
0041e8e8  05 00 56 e1                                      cmp r6, r5
0041e8ec  fa ff ff 1a                                      bne #0x41e8dc
0041e8f0  04 00 a0 e1                                      mov r0, r4
0041e8f4  2c d4 fb eb                                      bl #0x3139ac
0041e8f8  02 00 5a e3                                      cmp sl, #2
0041e8fc  91 ff ff da                                      ble #0x41e748
0041e900  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
0041e904  0b 40 a0 e1                                      mov r4, fp
0041e908  24 80 9d e5                                      ldr r8, [sp, #0x24]
0041e90c  b4 fe ff ea                                      b #0x41e3e4
0041e910  24 10 9d e5                                      ldr r1, [sp, #0x24]
0041e914  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0041e918  00 20 a0 e3                                      mov r2, #0
0041e91c  00 30 91 e7                                      ldr r3, [r1, r0]
0041e920  20 10 9d e5                                      ldr r1, [sp, #0x20]
0041e924  40 00 93 e5                                      ldr r0, [r3, #0x40]
0041e928  85 3f fd eb                                      bl #0x36e744
0041e92c  00 30 90 e5                                      ldr r3, [r0]
0041e930  00 80 a0 e1                                      mov r8, r0
0041e934  0f e0 a0 e1                                      mov lr, pc
0041e938  50 f0 93 e5                                      ldr pc, [r3, #0x50]
0041e93c  00 00 50 e3                                      cmp r0, #0
0041e940  73 00 00 1a                                      bne #0x41eb14
0041e944  60 06 98 e5                                      ldr r0, [r8, #0x660]
0041e948  00 00 50 e3                                      cmp r0, #0
0041e94c  8e ff ff 0a                                      beq #0x41e78c
0041e950  e5 34 d8 e5                                      ldrb r3, [r8, #0x4e5]
0041e954  00 00 53 e3                                      cmp r3, #0
0041e958  8b ff ff 0a                                      beq #0x41e78c
0041e95c  30 33 98 e5                                      ldr r3, [r8, #0x330]
0041e960  14 30 8d e5                                      str r3, [sp, #0x14]
0041e964  5c 7a fe eb                                      bl #0x3bd2dc
0041e968  42 14 a0 e3                                      mov r1, #0x42000000
0041e96c  32 17 81 e2                                      add r1, r1, #0xc80000
0041e970  fd c0 fb eb                                      bl #0x30ed6c
0041e974  d4 be fb eb                                      bl #0x30e4cc
0041e978  05 3d 8d e2                                      add r3, sp, #0x140
0041e97c  50 31 8d e5                                      str r3, [sp, #0x150]
0041e980  54 31 8d e5                                      str r3, [sp, #0x154]
0041e984  e4 12 98 e5                                      ldr r1, [r8, #0x2e4]
0041e988  e0 22 98 e5                                      ldr r2, [r8, #0x2e0]
0041e98c  01 60 40 e2                                      sub r6, r0, #1
0041e990  03 00 a0 e1                                      mov r0, r3
0041e994  08 30 8d e5                                      str r3, [sp, #8]
0041e998  52 cb fb eb                                      bl #0x3116e8
0041e99c  54 11 9d e5                                      ldr r1, [sp, #0x154]
0041e9a0  50 21 9d e5                                      ldr r2, [sp, #0x150]
0041e9a4  04 00 a0 e1                                      mov r0, r4
0041e9a8  0c c8 fb eb                                      bl #0x3109e0
0041e9ac  08 30 9d e5                                      ldr r3, [sp, #8]
0041e9b0  63 00 56 e3                                      cmp r6, #0x63
0041e9b4  63 60 a0 a3                                      movge r6, #0x63
0041e9b8  c6 6f c6 e1                                      bic r6, r6, r6, asr #31
0041e9bc  03 00 a0 e1                                      mov r0, r3
0041e9c0  f9 d3 fb eb                                      bl #0x3139ac
0041e9c4  a8 33 98 e5                                      ldr r3, [r8, #0x3a8]
0041e9c8  00 00 53 e3                                      cmp r3, #0
0041e9cc  38 10 9d a5                                      ldrge r1, [sp, #0x38]
0041e9d0  00 00 e0 b3                                      mvnlt r0, #0
0041e9d4  1c 00 8d b5                                      strlt r0, [sp, #0x1c]
0041e9d8  91 13 c2 a0                                      smullge r1, r2, r1, r3
0041e9dc  c3 3f a0 a1                                      asrge r3, r3, #0x1f
0041e9e0  42 33 63 a0                                      rsbge r3, r3, r2, asr #6
0041e9e4  20 20 9d e5                                      ldr r2, [sp, #0x20]
0041e9e8  1c 30 8d a5                                      strge r3, [sp, #0x1c]
0041e9ec  60 36 98 e5                                      ldr r3, [r8, #0x660]
0041e9f0  01 20 82 e2                                      add r2, r2, #1
0041e9f4  20 20 8d e5                                      str r2, [sp, #0x20]
0041e9f8  60 21 93 e5                                      ldr r2, [r3, #0x160]
0041e9fc  68 01 93 e5                                      ldr r0, [r3, #0x168]
0041ea00  64 31 93 e5                                      ldr r3, [r3, #0x164]
0041ea04  43 14 a0 e3                                      mov r1, #0x43000000
0041ea08  af 18 81 e2                                      add r1, r1, #0xaf0000
0041ea0c  8c 20 8d e5                                      str r2, [sp, #0x8c]
0041ea10  90 30 8d e5                                      str r3, [sp, #0x90]
0041ea14  62 c0 fb eb                                      bl #0x30eba4
0041ea18  00 30 a0 e3                                      mov r3, #0
0041ea1c  98 10 8d e2                                      add r1, sp, #0x98
0041ea20  94 00 8d e5                                      str r0, [sp, #0x94]
0041ea24  8c 00 8d e2                                      add r0, sp, #0x8c
0041ea28  98 30 8d e5                                      str r3, [sp, #0x98]
0041ea2c  9c 30 8d e5                                      str r3, [sp, #0x9c]
0041ea30  7e bf 03 eb                                      bl #0x50e830
0041ea34  7c 05 9b e5                                      ldr r0, [fp, #0x57c]
0041ea38  9b 24 0e eb                                      bl #0x7a7cac
0041ea3c  bd de ff eb                                      bl #0x416538
0041ea40  00 80 a0 e1                                      mov r8, r0
0041ea44  7c 05 9b e5                                      ldr r0, [fp, #0x57c]
0041ea48  97 24 0e eb                                      bl #0x7a7cac
0041ea4c  c9 de ff eb                                      bl #0x416578
0041ea50  00 30 a0 e1                                      mov r3, r0
0041ea54  98 00 9d e5                                      ldr r0, [sp, #0x98]
0041ea58  08 30 8d e5                                      str r3, [sp, #8]
0041ea5c  c0 bf fb eb                                      bl #0x30e964
0041ea60  00 10 a0 e1                                      mov r1, r0
0041ea64  08 00 a0 e1                                      mov r0, r8
0041ea68  bf c0 fb eb                                      bl #0x30ed6c
0041ea6c  96 be fb eb                                      bl #0x30e4cc
0041ea70  00 80 a0 e1                                      mov r8, r0
0041ea74  9c 00 9d e5                                      ldr r0, [sp, #0x9c]
0041ea78  b9 bf fb eb                                      bl #0x30e964
0041ea7c  08 30 9d e5                                      ldr r3, [sp, #8]
0041ea80  00 10 a0 e1                                      mov r1, r0
0041ea84  03 00 a0 e1                                      mov r0, r3
0041ea88  b7 c0 fb eb                                      bl #0x30ed6c
0041ea8c  8e be fb eb                                      bl #0x30e4cc
0041ea90  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0041ea94  00 30 a0 e1                                      mov r3, r0
0041ea98  08 20 a0 e1                                      mov r2, r8
0041ea9c  7c 05 9b e5                                      ldr r0, [fp, #0x57c]
0041eaa0  52 2e 0e eb                                      bl #0x7aa3f0
0041eaa4  01 30 a0 e3                                      mov r3, #1
0041eaa8  3c ff ff ea                                      b #0x41e7a0
0041eaac  00 70 a0 e3                                      mov r7, #0
0041eab0  30 b0 a0 e3                                      mov fp, #0x30
0041eab4  9b 47 20 e0                                      mla r0, fp, r7, r4
0041eab8  7c a5 94 e5                                      ldr sl, [r4, #0x57c]
0041eabc  87 0f 80 e2                                      add r0, r0, #0x21c
0041eac0  a2 24 00 eb                                      bl #0x427d50
0041eac4  42 14 a0 e3                                      mov r1, #0x42000000
0041eac8  32 17 81 e2                                      add r1, r1, #0xc80000
0041eacc  00 90 a0 e1                                      mov sb, r0
0041ead0  07 01 95 e7                                      ldr r0, [r5, r7, lsl #2]
0041ead4  a4 c0 fb eb                                      bl #0x30ed6c
0041ead8  7b be fb eb                                      bl #0x30e4cc
0041eadc  01 20 40 e2                                      sub r2, r0, #1
0041eae0  09 10 a0 e1                                      mov r1, sb
0041eae4  0a 00 a0 e1                                      mov r0, sl
0041eae8  c2 2f c2 e1                                      bic r2, r2, r2, asr #31
0041eaec  01 70 87 e2                                      add r7, r7, #1
0041eaf0  00 30 a0 e3                                      mov r3, #0
0041eaf4  8e 24 0e eb                                      bl #0x7a7d34
0041eaf8  03 00 57 e3                                      cmp r7, #3
0041eafc  ec ff ff 1a                                      bne #0x41eab4
0041eb00  1e fe ff ea                                      b #0x41e380
0041eb04  05 00 a0 e1                                      mov r0, r5
0041eb08  50 da fe eb                                      bl #0x3d5450
0041eb0c  00 50 a0 e1                                      mov r5, r0
0041eb10  48 fe ff ea                                      b #0x41e438
0041eb14  20 20 9d e5                                      ldr r2, [sp, #0x20]
0041eb18  04 00 a0 e1                                      mov r0, r4
0041eb1c  01 20 82 e2                                      add r2, r2, #1
0041eb20  20 20 8d e5                                      str r2, [sp, #0x20]
0041eb24  a0 d3 fb eb                                      bl #0x3139ac
0041eb28  72 ff ff ea                                      b #0x41e8f8
0041eb2c  05 00 a0 e1                                      mov r0, r5
0041eb30  7a 79 fe eb                                      bl #0x3bd120
0041eb34  01 00 70 e3                                      cmn r0, #1
0041eb38  00 20 a0 e1                                      mov r2, r0
0041eb3c  4e fe ff 0a                                      beq #0x41e47c
0041eb40  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
0041eb44  98 70 8d e2                                      add r7, sp, #0x98
0041eb48  07 00 a0 e1                                      mov r0, r7
0041eb4c  01 10 8f e0                                      add r1, pc, r1
0041eb50  e3 bf fb eb                                      bl #0x30eae4
0041eb54  4d fe ff ea                                      b #0x41e490
0041eb58  00 30 94 e5                                      ldr r3, [r4]
0041eb5c  00 00 53 e3                                      cmp r3, #0
0041eb60  96 fe ff 0a                                      beq #0x41e5c0
0041eb64  00 50 a0 e3                                      mov r5, #0
0041eb68  04 60 a0 e1                                      mov r6, r4
0041eb6c  9c 53 86 e4                                      str r5, [r6], #0x39c
0041eb70  06 00 a0 e1                                      mov r0, r6
0041eb74  75 24 00 eb                                      bl #0x427d50
0041eb78  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0041eb7c  42 0e 84 e2                                      add r0, r4, #0x420
0041eb80  0c 00 80 e2                                      add r0, r0, #0xc
0041eb84  7c 75 94 e5                                      ldr r7, [r4, #0x57c]
0041eb88  70 24 00 eb                                      bl #0x427d50
0041eb8c  05 20 a0 e1                                      mov r2, r5
0041eb90  00 10 a0 e1                                      mov r1, r0
0041eb94  05 30 a0 e1                                      mov r3, r5
0041eb98  07 00 a0 e1                                      mov r0, r7
0041eb9c  64 24 0e eb                                      bl #0x7a7d34
0041eba0  06 00 a0 e1                                      mov r0, r6
0041eba4  7c 45 94 e5                                      ldr r4, [r4, #0x57c]
0041eba8  68 24 00 eb                                      bl #0x427d50
0041ebac  48 20 9f e5                                      ldr r2, [pc, #0x48]
0041ebb0  00 10 a0 e1                                      mov r1, r0
0041ebb4  05 30 a0 e1                                      mov r3, r5
0041ebb8  04 00 a0 e1                                      mov r0, r4
0041ebbc  02 20 8f e0                                      add r2, pc, r2
0041ebc0  57 33 0e eb                                      bl #0x7ab924
0041ebc4  7d fe ff ea                                      b #0x41e5c0
0041ebc8  d0 bd fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0041ebcc  1c 6a 57 00 ac 40 00 00 f4 37 00 00 e8 3d 4a 00  .byte 0x1c, 0x6a, 0x57, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe8, 0x3d, 0x4a, 0x00
0041ebdc  6c 33 4a 00 3c a4 4a 00 84 08 00 00 90 a9 4a 00  .byte 0x6c, 0x33, 0x4a, 0x00, 0x3c, 0xa4, 0x4a, 0x00, 0x84, 0x08, 0x00, 0x00, 0x90, 0xa9, 0x4a, 0x00
0041ebec  8c 39 4a 00 fc 37 4a 00 44 a7 4a 00 64 33 4a 00  .byte 0x8c, 0x39, 0x4a, 0x00, 0xfc, 0x37, 0x4a, 0x00, 0x44, 0xa7, 0x4a, 0x00, 0x64, 0x33, 0x4a, 0x00
0041ebfc  34 9d 4a 00                                      .byte 0x34, 0x9d, 0x4a, 0x00

; FUNCTION 0x0041ec00, declared_size=176, range_size=176, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager6UpdateEv
; demangled: InfoHUDManager::Update()
; decoder-mode: arm
0041ec00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041ec04  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
0041ec08  9c 60 9f e5                                      ldr r6, [pc, #0x9c]
0041ec0c  00 50 a0 e1                                      mov r5, r0
0041ec10  04 40 8f e0                                      add r4, pc, r4
0041ec14  06 00 94 e7                                      ldr r0, [r4, r6]
0041ec18  5d 02 fc eb                                      bl #0x31f594
0041ec1c  00 00 50 e3                                      cmp r0, #0
0041ec20  02 00 00 0a                                      beq #0x41ec30
0041ec24  98 31 d0 e5                                      ldrb r3, [r0, #0x198]
0041ec28  00 00 53 e3                                      cmp r3, #0
0041ec2c  0f 00 00 0a                                      beq #0x41ec70
0041ec30  7c 35 95 e5                                      ldr r3, [r5, #0x57c]
0041ec34  00 00 53 e3                                      cmp r3, #0
0041ec38  0c 00 00 0a                                      beq #0x41ec70
0041ec3c  04 70 d5 e5                                      ldrb r7, [r5, #4]
0041ec40  00 00 57 e3                                      cmp r7, #0
0041ec44  0a 00 00 0a                                      beq #0x41ec74
0041ec48  08 70 95 e5                                      ldr r7, [r5, #8]
0041ec4c  00 00 57 e3                                      cmp r7, #0
0041ec50  0f 00 00 ba                                      blt #0x41ec94
0041ec54  06 00 94 e7                                      ldr r0, [r4, r6]
0041ec58  83 02 fc eb                                      bl #0x31f66c
0041ec5c  07 00 60 e0                                      rsb r0, r0, r7
0041ec60  08 00 85 e5                                      str r0, [r5, #8]
0041ec64  05 00 a0 e1                                      mov r0, r5
0041ec68  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0041ec6c  fc fc ff ea                                      b #0x41e064
0041ec70  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041ec74  05 00 a0 e1                                      mov r0, r5
0041ec78  00 fb ff eb                                      bl #0x41d880
0041ec7c  05 00 a0 e1                                      mov r0, r5
0041ec80  a8 fa ff eb                                      bl #0x41d728
0041ec84  00 70 85 e5                                      str r7, [r5]
0041ec88  08 70 95 e5                                      ldr r7, [r5, #8]
0041ec8c  00 00 57 e3                                      cmp r7, #0
0041ec90  ef ff ff aa                                      bge #0x41ec54
0041ec94  7d 3f a0 e3                                      mov r3, #0x1f4
0041ec98  08 30 85 e5                                      str r3, [r5, #8]
0041ec9c  05 00 a0 e1                                      mov r0, r5
0041eca0  6b fc ff eb                                      bl #0x41de54
0041eca4  ee ff ff ea                                      b #0x41ec64
; mapping-symbol data/literal pool
0041eca8  80 5e 57 00 f4 37 00 00                          .byte 0x80, 0x5e, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0041ecb0, declared_size=288, range_size=288, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManagerC1Ev
; demangled: InfoHUDManager::InfoHUDManager()
; decoder-mode: arm
0041ecb0  70 40 2d e9                                      push {r4, r5, r6, lr}
0041ecb4  00 30 e0 e3                                      mvn r3, #0
0041ecb8  00 60 a0 e3                                      mov r6, #0
0041ecbc  08 30 80 e5                                      str r3, [r0, #8]
0041ecc0  00 40 a0 e1                                      mov r4, r0
0041ecc4  04 60 c0 e5                                      strb r6, [r0, #4]
0041ecc8  0c 00 80 e2                                      add r0, r0, #0xc
0041eccc  86 f0 ff eb                                      bl #0x41aeec
0041ecd0  3c 00 84 e2                                      add r0, r4, #0x3c
0041ecd4  84 f0 ff eb                                      bl #0x41aeec
0041ecd8  6c 00 84 e2                                      add r0, r4, #0x6c
0041ecdc  82 f0 ff eb                                      bl #0x41aeec
0041ece0  9c 00 84 e2                                      add r0, r4, #0x9c
0041ece4  80 f0 ff eb                                      bl #0x41aeec
0041ece8  cc 00 84 e2                                      add r0, r4, #0xcc
0041ecec  7e f0 ff eb                                      bl #0x41aeec
0041ecf0  fc 00 84 e2                                      add r0, r4, #0xfc
0041ecf4  7c f0 ff eb                                      bl #0x41aeec
0041ecf8  4b 0f 84 e2                                      add r0, r4, #0x12c
0041ecfc  7a f0 ff eb                                      bl #0x41aeec
0041ed00  57 0f 84 e2                                      add r0, r4, #0x15c
0041ed04  78 f0 ff eb                                      bl #0x41aeec
0041ed08  63 0f 84 e2                                      add r0, r4, #0x18c
0041ed0c  76 f0 ff eb                                      bl #0x41aeec
0041ed10  6f 0f 84 e2                                      add r0, r4, #0x1bc
0041ed14  74 f0 ff eb                                      bl #0x41aeec
0041ed18  7b 0f 84 e2                                      add r0, r4, #0x1ec
0041ed1c  72 f0 ff eb                                      bl #0x41aeec
0041ed20  87 0f 84 e2                                      add r0, r4, #0x21c
0041ed24  70 f0 ff eb                                      bl #0x41aeec
0041ed28  93 0f 84 e2                                      add r0, r4, #0x24c
0041ed2c  6e f0 ff eb                                      bl #0x41aeec
0041ed30  9f 0f 84 e2                                      add r0, r4, #0x27c
0041ed34  6c f0 ff eb                                      bl #0x41aeec
0041ed38  ab 0f 84 e2                                      add r0, r4, #0x2ac
0041ed3c  6a f0 ff eb                                      bl #0x41aeec
0041ed40  b7 0f 84 e2                                      add r0, r4, #0x2dc
0041ed44  68 f0 ff eb                                      bl #0x41aeec
0041ed48  c3 0f 84 e2                                      add r0, r4, #0x30c
0041ed4c  66 f0 ff eb                                      bl #0x41aeec
0041ed50  cf 0f 84 e2                                      add r0, r4, #0x33c
0041ed54  64 f0 ff eb                                      bl #0x41aeec
0041ed58  db 0f 84 e2                                      add r0, r4, #0x36c
0041ed5c  62 f0 ff eb                                      bl #0x41aeec
0041ed60  e7 0f 84 e2                                      add r0, r4, #0x39c
0041ed64  60 f0 ff eb                                      bl #0x41aeec
0041ed68  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041ed6c  5e f0 ff eb                                      bl #0x41aeec
0041ed70  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041ed74  5c f0 ff eb                                      bl #0x41aeec
0041ed78  42 0e 84 e2                                      add r0, r4, #0x420
0041ed7c  0c 00 80 e2                                      add r0, r0, #0xc
0041ed80  59 f0 ff eb                                      bl #0x41aeec
0041ed84  45 0e 84 e2                                      add r0, r4, #0x450
0041ed88  0c 00 80 e2                                      add r0, r0, #0xc
0041ed8c  56 f0 ff eb                                      bl #0x41aeec
0041ed90  12 0d 84 e2                                      add r0, r4, #0x480
0041ed94  0c 00 80 e2                                      add r0, r0, #0xc
0041ed98  53 f0 ff eb                                      bl #0x41aeec
0041ed9c  4b 0e 84 e2                                      add r0, r4, #0x4b0
0041eda0  4e 5e 84 e2                                      add r5, r4, #0x4e0
0041eda4  0c 00 80 e2                                      add r0, r0, #0xc
0041eda8  4f f0 ff eb                                      bl #0x41aeec
0041edac  0c 00 85 e2                                      add r0, r5, #0xc
0041edb0  4d f0 ff eb                                      bl #0x41aeec
0041edb4  3c 00 85 e2                                      add r0, r5, #0x3c
0041edb8  4b f0 ff eb                                      bl #0x41aeec
0041edbc  6c 00 85 e2                                      add r0, r5, #0x6c
0041edc0  49 f0 ff eb                                      bl #0x41aeec
0041edc4  7c 65 84 e5                                      str r6, [r4, #0x57c]
0041edc8  04 00 a0 e1                                      mov r0, r4
0041edcc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041edd0, declared_size=136, range_size=136, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager11GetInstanceEv
; demangled: InfoHUDManager::GetInstance()
; decoder-mode: arm
0041edd0  70 40 2d e9                                      push {r4, r5, r6, lr}
0041edd4  68 50 9f e5                                      ldr r5, [pc, #0x68]
0041edd8  68 40 9f e5                                      ldr r4, [pc, #0x68]
0041eddc  05 50 8f e0                                      add r5, pc, r5
0041ede0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0041ede4  04 40 8f e0                                      add r4, pc, r4
0041ede8  01 00 13 e3                                      tst r3, #1
0041edec  03 00 00 0a                                      beq #0x41ee00
0041edf0  54 00 9f e5                                      ldr r0, [pc, #0x54]
0041edf4  00 00 8f e0                                      add r0, pc, r0
0041edf8  10 00 80 e2                                      add r0, r0, #0x10
0041edfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041ee00  0c 60 85 e2                                      add r6, r5, #0xc
0041ee04  06 00 a0 e1                                      mov r0, r6
0041ee08  57 be fb eb                                      bl #0x30e76c
0041ee0c  00 00 50 e3                                      cmp r0, #0
0041ee10  f6 ff ff 0a                                      beq #0x41edf0
0041ee14  10 50 85 e2                                      add r5, r5, #0x10
0041ee18  05 00 a0 e1                                      mov r0, r5
0041ee1c  a3 ff ff eb                                      bl #0x41ecb0
0041ee20  06 00 a0 e1                                      mov r0, r6
0041ee24  04 bf fb eb                                      bl #0x30ea3c
0041ee28  20 30 9f e5                                      ldr r3, [pc, #0x20]
0041ee2c  05 00 a0 e1                                      mov r0, r5
0041ee30  03 10 94 e7                                      ldr r1, [r4, r3]
0041ee34  18 30 9f e5                                      ldr r3, [pc, #0x18]
0041ee38  03 20 94 e7                                      ldr r2, [r4, r3]
0041ee3c  30 bd fb eb                                      bl #0x30e304
0041ee40  ea ff ff ea                                      b #0x41edf0
; mapping-symbol data/literal pool
0041ee44  d4 54 58 00 ac 5c 57 00 bc 54 58 00 3c 14 00 00  .byte 0xd4, 0x54, 0x58, 0x00, 0xac, 0x5c, 0x57, 0x00, 0xbc, 0x54, 0x58, 0x00, 0x3c, 0x14, 0x00, 0x00
0041ee54  90 18 00 00                                      .byte 0x90, 0x18, 0x00, 0x00

; FUNCTION 0x0041ee58, declared_size=288, range_size=288, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManagerC2Ev
; demangled: InfoHUDManager::InfoHUDManager()
; decoder-mode: arm
0041ee58  70 40 2d e9                                      push {r4, r5, r6, lr}
0041ee5c  00 30 e0 e3                                      mvn r3, #0
0041ee60  00 60 a0 e3                                      mov r6, #0
0041ee64  08 30 80 e5                                      str r3, [r0, #8]
0041ee68  00 40 a0 e1                                      mov r4, r0
0041ee6c  04 60 c0 e5                                      strb r6, [r0, #4]
0041ee70  0c 00 80 e2                                      add r0, r0, #0xc
0041ee74  1c f0 ff eb                                      bl #0x41aeec
0041ee78  3c 00 84 e2                                      add r0, r4, #0x3c
0041ee7c  1a f0 ff eb                                      bl #0x41aeec
0041ee80  6c 00 84 e2                                      add r0, r4, #0x6c
0041ee84  18 f0 ff eb                                      bl #0x41aeec
0041ee88  9c 00 84 e2                                      add r0, r4, #0x9c
0041ee8c  16 f0 ff eb                                      bl #0x41aeec
0041ee90  cc 00 84 e2                                      add r0, r4, #0xcc
0041ee94  14 f0 ff eb                                      bl #0x41aeec
0041ee98  fc 00 84 e2                                      add r0, r4, #0xfc
0041ee9c  12 f0 ff eb                                      bl #0x41aeec
0041eea0  4b 0f 84 e2                                      add r0, r4, #0x12c
0041eea4  10 f0 ff eb                                      bl #0x41aeec
0041eea8  57 0f 84 e2                                      add r0, r4, #0x15c
0041eeac  0e f0 ff eb                                      bl #0x41aeec
0041eeb0  63 0f 84 e2                                      add r0, r4, #0x18c
0041eeb4  0c f0 ff eb                                      bl #0x41aeec
0041eeb8  6f 0f 84 e2                                      add r0, r4, #0x1bc
0041eebc  0a f0 ff eb                                      bl #0x41aeec
0041eec0  7b 0f 84 e2                                      add r0, r4, #0x1ec
0041eec4  08 f0 ff eb                                      bl #0x41aeec
0041eec8  87 0f 84 e2                                      add r0, r4, #0x21c
0041eecc  06 f0 ff eb                                      bl #0x41aeec
0041eed0  93 0f 84 e2                                      add r0, r4, #0x24c
0041eed4  04 f0 ff eb                                      bl #0x41aeec
0041eed8  9f 0f 84 e2                                      add r0, r4, #0x27c
0041eedc  02 f0 ff eb                                      bl #0x41aeec
0041eee0  ab 0f 84 e2                                      add r0, r4, #0x2ac
0041eee4  00 f0 ff eb                                      bl #0x41aeec
0041eee8  b7 0f 84 e2                                      add r0, r4, #0x2dc
0041eeec  fe ef ff eb                                      bl #0x41aeec
0041eef0  c3 0f 84 e2                                      add r0, r4, #0x30c
0041eef4  fc ef ff eb                                      bl #0x41aeec
0041eef8  cf 0f 84 e2                                      add r0, r4, #0x33c
0041eefc  fa ef ff eb                                      bl #0x41aeec
0041ef00  db 0f 84 e2                                      add r0, r4, #0x36c
0041ef04  f8 ef ff eb                                      bl #0x41aeec
0041ef08  e7 0f 84 e2                                      add r0, r4, #0x39c
0041ef0c  f6 ef ff eb                                      bl #0x41aeec
0041ef10  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041ef14  f4 ef ff eb                                      bl #0x41aeec
0041ef18  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041ef1c  f2 ef ff eb                                      bl #0x41aeec
0041ef20  42 0e 84 e2                                      add r0, r4, #0x420
0041ef24  0c 00 80 e2                                      add r0, r0, #0xc
0041ef28  ef ef ff eb                                      bl #0x41aeec
0041ef2c  45 0e 84 e2                                      add r0, r4, #0x450
0041ef30  0c 00 80 e2                                      add r0, r0, #0xc
0041ef34  ec ef ff eb                                      bl #0x41aeec
0041ef38  12 0d 84 e2                                      add r0, r4, #0x480
0041ef3c  0c 00 80 e2                                      add r0, r0, #0xc
0041ef40  e9 ef ff eb                                      bl #0x41aeec
0041ef44  4b 0e 84 e2                                      add r0, r4, #0x4b0
0041ef48  4e 5e 84 e2                                      add r5, r4, #0x4e0
0041ef4c  0c 00 80 e2                                      add r0, r0, #0xc
0041ef50  e5 ef ff eb                                      bl #0x41aeec
0041ef54  0c 00 85 e2                                      add r0, r5, #0xc
0041ef58  e3 ef ff eb                                      bl #0x41aeec
0041ef5c  3c 00 85 e2                                      add r0, r5, #0x3c
0041ef60  e1 ef ff eb                                      bl #0x41aeec
0041ef64  6c 00 85 e2                                      add r0, r5, #0x6c
0041ef68  df ef ff eb                                      bl #0x41aeec
0041ef6c  7c 65 84 e5                                      str r6, [r4, #0x57c]
0041ef70  04 00 a0 e1                                      mov r0, r4
0041ef74  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041ef78, declared_size=500, range_size=500, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManager5FlushEv
; demangled: InfoHUDManager::Flush()
; decoder-mode: arm
0041ef78  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0041ef7c  d4 31 9f e5                                      ldr r3, [pc, #0x1d4]
0041ef80  d4 21 9f e5                                      ldr r2, [pc, #0x1d4]
0041ef84  64 d0 4d e2                                      sub sp, sp, #0x64
0041ef88  03 30 8f e0                                      add r3, pc, r3
0041ef8c  00 a0 a0 e1                                      mov sl, r0
0041ef90  02 00 93 e7                                      ldr r0, [r3, r2]
0041ef94  7e 01 fc eb                                      bl #0x31f594
0041ef98  00 00 50 e3                                      cmp r0, #0
0041ef9c  61 00 00 0a                                      beq #0x41f128
0041efa0  44 31 d0 e5                                      ldrb r3, [r0, #0x144]
0041efa4  00 00 53 e3                                      cmp r3, #0
0041efa8  5e 00 00 0a                                      beq #0x41f128
0041efac  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
0041efb0  ac 91 9f e5                                      ldr sb, [pc, #0x1ac]
0041efb4  10 40 8d e2                                      add r4, sp, #0x10
0041efb8  00 60 a0 e3                                      mov r6, #0
0041efbc  03 30 8f e0                                      add r3, pc, r3
0041efc0  0c 20 84 e2                                      add r2, r4, #0xc
0041efc4  09 90 8f e0                                      add sb, pc, sb
0041efc8  0c 30 8d e5                                      str r3, [sp, #0xc]
0041efcc  58 70 8d e2                                      add r7, sp, #0x58
0041efd0  06 50 a0 e1                                      mov r5, r6
0041efd4  08 20 8d e5                                      str r2, [sp, #8]
0041efd8  02 80 a0 e3                                      mov r8, #2
0041efdc  01 30 a0 e3                                      mov r3, #1
0041efe0  08 00 9d e5                                      ldr r0, [sp, #8]
0041efe4  09 10 a0 e1                                      mov r1, sb
0041efe8  11 30 cd e5                                      strb r3, [sp, #0x11]
0041efec  10 50 cd e5                                      strb r5, [sp, #0x10]
0041eff0  14 50 cd e5                                      strb r5, [sp, #0x14]
0041eff4  1c 50 cd e5                                      strb r5, [sp, #0x1c]
0041eff8  1d 50 cd e5                                      strb r5, [sp, #0x1d]
0041effc  d3 e0 0d eb                                      bl #0x797350
0041f000  00 20 a0 e3                                      mov r2, #0
0041f004  00 30 a0 e3                                      mov r3, #0
0041f008  f8 25 cd e1                                      strd r2, r3, [sp, #0x58]
0041f00c  04 30 97 e5                                      ldr r3, [r7, #4]
0041f010  00 20 a0 e3                                      mov r2, #0
0041f014  1c 20 84 e5                                      str r2, [r4, #0x1c]
0041f018  20 30 84 e5                                      str r3, [r4, #0x20]
0041f01c  01 31 a0 e3                                      mov r3, #0x40000000
0041f020  00 20 a0 e3                                      mov r2, #0
0041f024  59 38 83 e2                                      add r3, r3, #0x590000
0041f028  28 50 cd e5                                      strb r5, [sp, #0x28]
0041f02c  29 80 cd e5                                      strb r8, [sp, #0x29]
0041f030  34 50 cd e5                                      strb r5, [sp, #0x34]
0041f034  35 80 cd e5                                      strb r8, [sp, #0x35]
0041f038  06 00 a0 e1                                      mov r0, r6
0041f03c  f8 22 c4 e1                                      strd r2, r3, [r4, #0x28]
0041f040  40 50 cd e5                                      strb r5, [sp, #0x40]
0041f044  41 80 cd e5                                      strb r8, [sp, #0x41]
0041f048  38 bf fb eb                                      bl #0x30ed30
0041f04c  f8 05 cd e1                                      strd r0, r1, [sp, #0x58]
0041f050  0c 00 97 e8                                      ldm r7, {r2, r3}
0041f054  7c b5 9a e5                                      ldr fp, [sl, #0x57c]
0041f058  38 30 84 e5                                      str r3, [r4, #0x38]
0041f05c  bf 34 a0 e3                                      mov r3, #0xbf000000
0041f060  34 20 84 e5                                      str r2, [r4, #0x34]
0041f064  0f 36 83 e2                                      add r3, r3, #0xf00000
0041f068  00 20 a0 e3                                      mov r2, #0
0041f06c  f8 25 cd e1                                      strd r2, r3, [sp, #0x58]
0041f070  0b 00 a0 e1                                      mov r0, fp
0041f074  4c 50 cd e5                                      strb r5, [sp, #0x4c]
0041f078  4d 80 cd e5                                      strb r8, [sp, #0x4d]
0041f07c  f0 24 c4 e1                                      strd r2, r3, [r4, #0x40]
0041f080  06 23 0e eb                                      bl #0x7a7ca0
0041f084  06 c0 a0 e3                                      mov ip, #6
0041f088  00 10 a0 e1                                      mov r1, r0
0041f08c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
0041f090  0b 00 a0 e1                                      mov r0, fp
0041f094  04 30 a0 e1                                      mov r3, r4
0041f098  00 c0 8d e5                                      str ip, [sp]
0041f09c  5a 33 0e eb                                      bl #0x7abe0c
0041f0a0  48 b0 84 e2                                      add fp, r4, #0x48
0041f0a4  0c b0 4b e2                                      sub fp, fp, #0xc
0041f0a8  0b 00 a0 e1                                      mov r0, fp
0041f0ac  1c e0 0d eb                                      bl #0x797124
0041f0b0  04 00 5b e1                                      cmp fp, r4
0041f0b4  fa ff ff 1a                                      bne #0x41f0a4
0041f0b8  01 60 86 e2                                      add r6, r6, #1
0041f0bc  03 00 56 e3                                      cmp r6, #3
0041f0c0  c5 ff ff 1a                                      bne #0x41efdc
0041f0c4  e7 0f 8a e2                                      add r0, sl, #0x39c
0041f0c8  20 23 00 eb                                      bl #0x427d50
0041f0cc  00 50 a0 e3                                      mov r5, #0
0041f0d0  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0041f0d4  b8 34 9a e5                                      ldr r3, [sl, #0x4b8]
0041f0d8  05 00 53 e1                                      cmp r3, r5
0041f0dc  11 00 00 0a                                      beq #0x41f128
0041f0e0  b4 04 9a e5                                      ldr r0, [sl, #0x4b4]
0041f0e4  04 30 d0 e5                                      ldrb r3, [r0, #4]
0041f0e8  05 00 53 e1                                      cmp r3, r5
0041f0ec  0f 00 00 0a                                      beq #0x41f130
0041f0f0  12 4d 8a e2                                      add r4, sl, #0x480
0041f0f4  0c 40 84 e2                                      add r4, r4, #0xc
0041f0f8  04 00 a0 e1                                      mov r0, r4
0041f0fc  7c 65 9a e5                                      ldr r6, [sl, #0x57c]
0041f100  12 23 00 eb                                      bl #0x427d50
0041f104  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0041f108  00 10 a0 e1                                      mov r1, r0
0041f10c  01 30 a0 e3                                      mov r3, #1
0041f110  02 20 8f e0                                      add r2, pc, r2
0041f114  06 00 a0 e1                                      mov r0, r6
0041f118  01 32 0e eb                                      bl #0x7ab924
0041f11c  04 00 a0 e1                                      mov r0, r4
0041f120  0a 23 00 eb                                      bl #0x427d50
0041f124  9b 50 c0 e5                                      strb r5, [r0, #0x9b]
0041f128  64 d0 8d e2                                      add sp, sp, #0x64
0041f12c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0041f130  00 10 90 e5                                      ldr r1, [r0]
0041f134  01 10 41 e2                                      sub r1, r1, #1
0041f138  05 00 51 e1                                      cmp r1, r5
0041f13c  00 10 80 e5                                      str r1, [r0]
0041f140  00 00 00 1a                                      bne #0x41f148
0041f144  7b ce 0c eb                                      bl #0x752b38
0041f148  00 30 a0 e3                                      mov r3, #0
0041f14c  b8 34 8a e5                                      str r3, [sl, #0x4b8]
0041f150  b4 34 8a e5                                      str r3, [sl, #0x4b4]
0041f154  f3 ff ff ea                                      b #0x41f128
; mapping-symbol data/literal pool
0041f158  08 5b 57 00 f4 37 00 00 a4 9e 4a 00 44 c8 4a 00  .byte 0x08, 0x5b, 0x57, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xa4, 0x9e, 0x4a, 0x00, 0x44, 0xc8, 0x4a, 0x00
0041f168  e0 97 4a 00                                      .byte 0xe0, 0x97, 0x4a, 0x00

; FUNCTION 0x0041f16c, declared_size=304, range_size=304, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManagerD1Ev
; demangled: InfoHUDManager::~InfoHUDManager()
; decoder-mode: arm
0041f16c  70 40 2d e9                                      push {r4, r5, r6, lr}
0041f170  4e 5e 80 e2                                      add r5, r0, #0x4e0
0041f174  00 40 a0 e1                                      mov r4, r0
0041f178  7e ff ff eb                                      bl #0x41ef78
0041f17c  0c 60 95 e2                                      adds r6, r5, #0xc
0041f180  05 00 00 0a                                      beq #0x41f19c
0041f184  6c 00 85 e2                                      add r0, r5, #0x6c
0041f188  1b ee ff eb                                      bl #0x41a9fc
0041f18c  3c 00 85 e2                                      add r0, r5, #0x3c
0041f190  19 ee ff eb                                      bl #0x41a9fc
0041f194  06 00 a0 e1                                      mov r0, r6
0041f198  17 ee ff eb                                      bl #0x41a9fc
0041f19c  4b 0e 84 e2                                      add r0, r4, #0x4b0
0041f1a0  0c 00 80 e2                                      add r0, r0, #0xc
0041f1a4  14 ee ff eb                                      bl #0x41a9fc
0041f1a8  12 0d 84 e2                                      add r0, r4, #0x480
0041f1ac  0c 00 80 e2                                      add r0, r0, #0xc
0041f1b0  11 ee ff eb                                      bl #0x41a9fc
0041f1b4  45 0e 84 e2                                      add r0, r4, #0x450
0041f1b8  0c 00 80 e2                                      add r0, r0, #0xc
0041f1bc  0e ee ff eb                                      bl #0x41a9fc
0041f1c0  42 0e 84 e2                                      add r0, r4, #0x420
0041f1c4  0c 00 80 e2                                      add r0, r0, #0xc
0041f1c8  0b ee ff eb                                      bl #0x41a9fc
0041f1cc  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041f1d0  09 ee ff eb                                      bl #0x41a9fc
0041f1d4  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041f1d8  07 ee ff eb                                      bl #0x41a9fc
0041f1dc  e7 0f 84 e2                                      add r0, r4, #0x39c
0041f1e0  05 ee ff eb                                      bl #0x41a9fc
0041f1e4  db 0f 84 e2                                      add r0, r4, #0x36c
0041f1e8  03 ee ff eb                                      bl #0x41a9fc
0041f1ec  cf 0f 84 e2                                      add r0, r4, #0x33c
0041f1f0  01 ee ff eb                                      bl #0x41a9fc
0041f1f4  ab 5f 94 e2                                      adds r5, r4, #0x2ac
0041f1f8  05 00 00 0a                                      beq #0x41f214
0041f1fc  c3 0f 84 e2                                      add r0, r4, #0x30c
0041f200  fd ed ff eb                                      bl #0x41a9fc
0041f204  b7 0f 84 e2                                      add r0, r4, #0x2dc
0041f208  fb ed ff eb                                      bl #0x41a9fc
0041f20c  05 00 a0 e1                                      mov r0, r5
0041f210  f9 ed ff eb                                      bl #0x41a9fc
0041f214  87 5f 94 e2                                      adds r5, r4, #0x21c
0041f218  05 00 00 0a                                      beq #0x41f234
0041f21c  9f 0f 84 e2                                      add r0, r4, #0x27c
0041f220  f5 ed ff eb                                      bl #0x41a9fc
0041f224  93 0f 84 e2                                      add r0, r4, #0x24c
0041f228  f3 ed ff eb                                      bl #0x41a9fc
0041f22c  05 00 a0 e1                                      mov r0, r5
0041f230  f1 ed ff eb                                      bl #0x41a9fc
0041f234  63 5f 94 e2                                      adds r5, r4, #0x18c
0041f238  05 00 00 0a                                      beq #0x41f254
0041f23c  7b 0f 84 e2                                      add r0, r4, #0x1ec
0041f240  ed ed ff eb                                      bl #0x41a9fc
0041f244  6f 0f 84 e2                                      add r0, r4, #0x1bc
0041f248  eb ed ff eb                                      bl #0x41a9fc
0041f24c  05 00 a0 e1                                      mov r0, r5
0041f250  e9 ed ff eb                                      bl #0x41a9fc
0041f254  57 0f 84 e2                                      add r0, r4, #0x15c
0041f258  e7 ed ff eb                                      bl #0x41a9fc
0041f25c  4b 0f 84 e2                                      add r0, r4, #0x12c
0041f260  e5 ed ff eb                                      bl #0x41a9fc
0041f264  fc 00 84 e2                                      add r0, r4, #0xfc
0041f268  e3 ed ff eb                                      bl #0x41a9fc
0041f26c  cc 00 84 e2                                      add r0, r4, #0xcc
0041f270  e1 ed ff eb                                      bl #0x41a9fc
0041f274  9c 00 84 e2                                      add r0, r4, #0x9c
0041f278  df ed ff eb                                      bl #0x41a9fc
0041f27c  6c 00 84 e2                                      add r0, r4, #0x6c
0041f280  dd ed ff eb                                      bl #0x41a9fc
0041f284  3c 00 84 e2                                      add r0, r4, #0x3c
0041f288  db ed ff eb                                      bl #0x41a9fc
0041f28c  0c 00 84 e2                                      add r0, r4, #0xc
0041f290  d9 ed ff eb                                      bl #0x41a9fc
0041f294  04 00 a0 e1                                      mov r0, r4
0041f298  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0041f29c, declared_size=304, range_size=304, mode=arm
; class-group: InfoHUDManager
; alias: _ZN14InfoHUDManagerD2Ev
; demangled: InfoHUDManager::~InfoHUDManager()
; decoder-mode: arm
0041f29c  70 40 2d e9                                      push {r4, r5, r6, lr}
0041f2a0  4e 5e 80 e2                                      add r5, r0, #0x4e0
0041f2a4  00 40 a0 e1                                      mov r4, r0
0041f2a8  32 ff ff eb                                      bl #0x41ef78
0041f2ac  0c 60 95 e2                                      adds r6, r5, #0xc
0041f2b0  05 00 00 0a                                      beq #0x41f2cc
0041f2b4  6c 00 85 e2                                      add r0, r5, #0x6c
0041f2b8  cf ed ff eb                                      bl #0x41a9fc
0041f2bc  3c 00 85 e2                                      add r0, r5, #0x3c
0041f2c0  cd ed ff eb                                      bl #0x41a9fc
0041f2c4  06 00 a0 e1                                      mov r0, r6
0041f2c8  cb ed ff eb                                      bl #0x41a9fc
0041f2cc  4b 0e 84 e2                                      add r0, r4, #0x4b0
0041f2d0  0c 00 80 e2                                      add r0, r0, #0xc
0041f2d4  c8 ed ff eb                                      bl #0x41a9fc
0041f2d8  12 0d 84 e2                                      add r0, r4, #0x480
0041f2dc  0c 00 80 e2                                      add r0, r0, #0xc
0041f2e0  c5 ed ff eb                                      bl #0x41a9fc
0041f2e4  45 0e 84 e2                                      add r0, r4, #0x450
0041f2e8  0c 00 80 e2                                      add r0, r0, #0xc
0041f2ec  c2 ed ff eb                                      bl #0x41a9fc
0041f2f0  42 0e 84 e2                                      add r0, r4, #0x420
0041f2f4  0c 00 80 e2                                      add r0, r0, #0xc
0041f2f8  bf ed ff eb                                      bl #0x41a9fc
0041f2fc  ff 0f 84 e2                                      add r0, r4, #0x3fc
0041f300  bd ed ff eb                                      bl #0x41a9fc
0041f304  f3 0f 84 e2                                      add r0, r4, #0x3cc
0041f308  bb ed ff eb                                      bl #0x41a9fc
0041f30c  e7 0f 84 e2                                      add r0, r4, #0x39c
0041f310  b9 ed ff eb                                      bl #0x41a9fc
0041f314  db 0f 84 e2                                      add r0, r4, #0x36c
0041f318  b7 ed ff eb                                      bl #0x41a9fc
0041f31c  cf 0f 84 e2                                      add r0, r4, #0x33c
0041f320  b5 ed ff eb                                      bl #0x41a9fc
0041f324  ab 5f 94 e2                                      adds r5, r4, #0x2ac
0041f328  05 00 00 0a                                      beq #0x41f344
0041f32c  c3 0f 84 e2                                      add r0, r4, #0x30c
0041f330  b1 ed ff eb                                      bl #0x41a9fc
0041f334  b7 0f 84 e2                                      add r0, r4, #0x2dc
0041f338  af ed ff eb                                      bl #0x41a9fc
0041f33c  05 00 a0 e1                                      mov r0, r5
0041f340  ad ed ff eb                                      bl #0x41a9fc
0041f344  87 5f 94 e2                                      adds r5, r4, #0x21c
0041f348  05 00 00 0a                                      beq #0x41f364
0041f34c  9f 0f 84 e2                                      add r0, r4, #0x27c
0041f350  a9 ed ff eb                                      bl #0x41a9fc
0041f354  93 0f 84 e2                                      add r0, r4, #0x24c
0041f358  a7 ed ff eb                                      bl #0x41a9fc
0041f35c  05 00 a0 e1                                      mov r0, r5
0041f360  a5 ed ff eb                                      bl #0x41a9fc
0041f364  63 5f 94 e2                                      adds r5, r4, #0x18c
0041f368  05 00 00 0a                                      beq #0x41f384
0041f36c  7b 0f 84 e2                                      add r0, r4, #0x1ec
0041f370  a1 ed ff eb                                      bl #0x41a9fc
0041f374  6f 0f 84 e2                                      add r0, r4, #0x1bc
0041f378  9f ed ff eb                                      bl #0x41a9fc
0041f37c  05 00 a0 e1                                      mov r0, r5
0041f380  9d ed ff eb                                      bl #0x41a9fc
0041f384  57 0f 84 e2                                      add r0, r4, #0x15c
0041f388  9b ed ff eb                                      bl #0x41a9fc
0041f38c  4b 0f 84 e2                                      add r0, r4, #0x12c
0041f390  99 ed ff eb                                      bl #0x41a9fc
0041f394  fc 00 84 e2                                      add r0, r4, #0xfc
0041f398  97 ed ff eb                                      bl #0x41a9fc
0041f39c  cc 00 84 e2                                      add r0, r4, #0xcc
0041f3a0  95 ed ff eb                                      bl #0x41a9fc
0041f3a4  9c 00 84 e2                                      add r0, r4, #0x9c
0041f3a8  93 ed ff eb                                      bl #0x41a9fc
0041f3ac  6c 00 84 e2                                      add r0, r4, #0x6c
0041f3b0  91 ed ff eb                                      bl #0x41a9fc
0041f3b4  3c 00 84 e2                                      add r0, r4, #0x3c
0041f3b8  8f ed ff eb                                      bl #0x41a9fc
0041f3bc  0c 00 84 e2                                      add r0, r4, #0xc
0041f3c0  8d ed ff eb                                      bl #0x41a9fc
0041f3c4  04 00 a0 e1                                      mov r0, r4
0041f3c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
