; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d4568, declared_size=76, range_size=76, mode=arm
; class-group: Structs::RangedWeaponRef
; alias: _ZN7Structs15RangedWeaponRef8finalizeEv
; demangled: Structs::RangedWeaponRef::finalize()
; decoder-mode: arm
004d4568  10 40 2d e9                                      push {r4, lr}
004d456c  00 40 a0 e1                                      mov r4, r0
004d4570  08 00 90 e5                                      ldr r0, [r0, #8]
004d4574  00 00 50 e3                                      cmp r0, #0
004d4578  03 00 00 0a                                      beq #0x4d458c
004d457c  af ef f8 eb                                      bl #0x310440
004d4580  00 30 a0 e3                                      mov r3, #0
004d4584  04 30 84 e5                                      str r3, [r4, #4]
004d4588  08 30 84 e5                                      str r3, [r4, #8]
004d458c  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4590  00 00 50 e3                                      cmp r0, #0
004d4594  03 00 00 0a                                      beq #0x4d45a8
004d4598  a8 ef f8 eb                                      bl #0x310440
004d459c  00 30 a0 e3                                      mov r3, #0
004d45a0  4c 30 84 e5                                      str r3, [r4, #0x4c]
004d45a4  50 30 84 e5                                      str r3, [r4, #0x50]
004d45a8  04 00 a0 e1                                      mov r0, r4
004d45ac  10 40 bd e8                                      pop {r4, lr}
004d45b0  cf ff ff ea                                      b #0x4d44f4

; FUNCTION 0x004d4a60, declared_size=88, range_size=88, mode=arm
; class-group: Structs::RangedWeaponRef
; alias: _ZN7Structs15RangedWeaponRefD1Ev
; demangled: Structs::RangedWeaponRef::~RangedWeaponRef()
; decoder-mode: arm
004d4a60  10 40 2d e9                                      push {r4, lr}
004d4a64  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4a68  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4a6c  00 40 a0 e1                                      mov r4, r0
004d4a70  03 30 8f e0                                      add r3, pc, r3
004d4a74  08 00 90 e5                                      ldr r0, [r0, #8]
004d4a78  02 20 93 e7                                      ldr r2, [r3, r2]
004d4a7c  00 00 50 e3                                      cmp r0, #0
004d4a80  08 20 82 e2                                      add r2, r2, #8
004d4a84  00 20 84 e5                                      str r2, [r4]
004d4a88  00 00 00 0a                                      beq #0x4d4a90
004d4a8c  6b ee f8 eb                                      bl #0x310440
004d4a90  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4a94  00 00 50 e3                                      cmp r0, #0
004d4a98  00 00 00 0a                                      beq #0x4d4aa0
004d4a9c  67 ee f8 eb                                      bl #0x310440
004d4aa0  04 00 a0 e1                                      mov r0, r4
004d4aa4  aa ff ff eb                                      bl #0x4d4954
004d4aa8  04 00 a0 e1                                      mov r0, r4
004d4aac  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4ab0  20 00 4c 00 bc 30 00 00                          .byte 0x20, 0x00, 0x4c, 0x00, 0xbc, 0x30, 0x00, 0x00

; FUNCTION 0x004d4ab8, declared_size=28, range_size=28, mode=arm
; class-group: Structs::RangedWeaponRef
; alias: _ZN7Structs15RangedWeaponRefD0Ev
; demangled: Structs::RangedWeaponRef::~RangedWeaponRef()
; decoder-mode: arm
004d4ab8  10 40 2d e9                                      push {r4, lr}
004d4abc  00 40 a0 e1                                      mov r4, r0
004d4ac0  e6 ff ff eb                                      bl #0x4d4a60
004d4ac4  04 00 a0 e1                                      mov r0, r4
004d4ac8  5c ee f8 eb                                      bl #0x310440
004d4acc  04 00 a0 e1                                      mov r0, r4
004d4ad0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d4ad4, declared_size=88, range_size=88, mode=arm
; class-group: Structs::RangedWeaponRef
; alias: _ZN7Structs15RangedWeaponRefD2Ev
; demangled: Structs::RangedWeaponRef::~RangedWeaponRef()
; decoder-mode: arm
004d4ad4  10 40 2d e9                                      push {r4, lr}
004d4ad8  44 30 9f e5                                      ldr r3, [pc, #0x44]
004d4adc  44 20 9f e5                                      ldr r2, [pc, #0x44]
004d4ae0  00 40 a0 e1                                      mov r4, r0
004d4ae4  03 30 8f e0                                      add r3, pc, r3
004d4ae8  08 00 90 e5                                      ldr r0, [r0, #8]
004d4aec  02 20 93 e7                                      ldr r2, [r3, r2]
004d4af0  00 00 50 e3                                      cmp r0, #0
004d4af4  08 20 82 e2                                      add r2, r2, #8
004d4af8  00 20 84 e5                                      str r2, [r4]
004d4afc  00 00 00 0a                                      beq #0x4d4b04
004d4b00  4e ee f8 eb                                      bl #0x310440
004d4b04  50 00 94 e5                                      ldr r0, [r4, #0x50]
004d4b08  00 00 50 e3                                      cmp r0, #0
004d4b0c  00 00 00 0a                                      beq #0x4d4b14
004d4b10  4a ee f8 eb                                      bl #0x310440
004d4b14  04 00 a0 e1                                      mov r0, r4
004d4b18  8d ff ff eb                                      bl #0x4d4954
004d4b1c  04 00 a0 e1                                      mov r0, r4
004d4b20  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d4b24  ac ff 4b 00 bc 30 00 00                          .byte 0xac, 0xff, 0x4b, 0x00, 0xbc, 0x30, 0x00, 0x00

; FUNCTION 0x004f83c0, declared_size=2216, range_size=2216, mode=arm
; class-group: Structs::RangedWeaponRef
; alias: _ZN7Structs15RangedWeaponRef4readEP11IStreamBase
; demangled: Structs::RangedWeaponRef::read(IStreamBase*)
; decoder-mode: arm
004f83c0  70 40 2d e9                                      push {r4, r5, r6, lr}
004f83c4  00 40 a0 e1                                      mov r4, r0
004f83c8  08 d0 4d e2                                      sub sp, sp, #8
004f83cc  01 50 a0 e1                                      mov r5, r1
004f83d0  29 d0 ff eb                                      bl #0x4ec47c
004f83d4  05 00 a0 e1                                      mov r0, r5
004f83d8  44 10 84 e2                                      add r1, r4, #0x44
004f83dc  2b 83 fd eb                                      bl #0x459090
004f83e0  01 30 a0 e3                                      mov r3, #1
004f83e4  00 00 53 e3                                      cmp r3, #0
004f83e8  04 30 8d e5                                      str r3, [sp, #4]
004f83ec  0f 00 00 1a                                      bne #0x4f8430
004f83f0  45 30 84 e2                                      add r3, r4, #0x45
004f83f4  46 20 84 e2                                      add r2, r4, #0x46
004f83f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f83fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8400  02 00 53 e1                                      cmp r3, r2
004f8404  01 10 20 e0                                      eor r1, r0, r1
004f8408  01 10 43 e5                                      strb r1, [r3, #-1]
004f840c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8410  00 10 21 e0                                      eor r1, r1, r0
004f8414  01 10 c2 e5                                      strb r1, [r2, #1]
004f8418  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f841c  01 20 42 e2                                      sub r2, r2, #1
004f8420  00 10 21 e0                                      eor r1, r1, r0
004f8424  01 10 43 e5                                      strb r1, [r3, #-1]
004f8428  01 30 83 e2                                      add r3, r3, #1
004f842c  f1 ff ff 3a                                      blo #0x4f83f8
004f8430  05 00 a0 e1                                      mov r0, r5
004f8434  48 10 84 e2                                      add r1, r4, #0x48
004f8438  14 83 fd eb                                      bl #0x459090
004f843c  01 30 a0 e3                                      mov r3, #1
004f8440  00 00 53 e3                                      cmp r3, #0
004f8444  04 30 8d e5                                      str r3, [sp, #4]
004f8448  0f 00 00 1a                                      bne #0x4f848c
004f844c  49 30 84 e2                                      add r3, r4, #0x49
004f8450  4a 20 84 e2                                      add r2, r4, #0x4a
004f8454  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8458  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f845c  02 00 53 e1                                      cmp r3, r2
004f8460  01 10 20 e0                                      eor r1, r0, r1
004f8464  01 10 43 e5                                      strb r1, [r3, #-1]
004f8468  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f846c  00 10 21 e0                                      eor r1, r1, r0
004f8470  01 10 c2 e5                                      strb r1, [r2, #1]
004f8474  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8478  01 20 42 e2                                      sub r2, r2, #1
004f847c  00 10 21 e0                                      eor r1, r1, r0
004f8480  01 10 43 e5                                      strb r1, [r3, #-1]
004f8484  01 30 83 e2                                      add r3, r3, #1
004f8488  f1 ff ff 3a                                      blo #0x4f8454
004f848c  05 00 a0 e1                                      mov r0, r5
004f8490  4c 10 84 e2                                      add r1, r4, #0x4c
004f8494  41 9b fb eb                                      bl #0x3df1a0
004f8498  01 30 a0 e3                                      mov r3, #1
004f849c  00 00 53 e3                                      cmp r3, #0
004f84a0  04 30 8d e5                                      str r3, [sp, #4]
004f84a4  0f 00 00 1a                                      bne #0x4f84e8
004f84a8  4d 30 84 e2                                      add r3, r4, #0x4d
004f84ac  4e 20 84 e2                                      add r2, r4, #0x4e
004f84b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f84b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f84b8  02 00 53 e1                                      cmp r3, r2
004f84bc  01 10 20 e0                                      eor r1, r0, r1
004f84c0  01 10 43 e5                                      strb r1, [r3, #-1]
004f84c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f84c8  00 10 21 e0                                      eor r1, r1, r0
004f84cc  01 10 c2 e5                                      strb r1, [r2, #1]
004f84d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f84d4  01 20 42 e2                                      sub r2, r2, #1
004f84d8  00 10 21 e0                                      eor r1, r1, r0
004f84dc  01 10 43 e5                                      strb r1, [r3, #-1]
004f84e0  01 30 83 e2                                      add r3, r3, #1
004f84e4  f1 ff ff 3a                                      blo #0x4f84b0
004f84e8  50 00 94 e5                                      ldr r0, [r4, #0x50]
004f84ec  00 00 50 e3                                      cmp r0, #0
004f84f0  00 00 00 0a                                      beq #0x4f84f8
004f84f4  d1 5f f8 eb                                      bl #0x310440
004f84f8  4c 00 94 e5                                      ldr r0, [r4, #0x4c]
004f84fc  01 10 a0 e3                                      mov r1, #1
004f8500  00 60 a0 e3                                      mov r6, #0
004f8504  01 00 80 e0                                      add r0, r0, r1
004f8508  17 60 f8 eb                                      bl #0x31056c
004f850c  4c 20 94 e5                                      ldr r2, [r4, #0x4c]
004f8510  00 10 a0 e1                                      mov r1, r0
004f8514  50 00 84 e5                                      str r0, [r4, #0x50]
004f8518  06 30 a0 e1                                      mov r3, r6
004f851c  05 00 a0 e1                                      mov r0, r5
004f8520  cb 7b f8 eb                                      bl #0x317454
004f8524  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
004f8528  50 20 94 e5                                      ldr r2, [r4, #0x50]
004f852c  05 00 a0 e1                                      mov r0, r5
004f8530  54 10 84 e2                                      add r1, r4, #0x54
004f8534  03 60 c2 e7                                      strb r6, [r2, r3]
004f8538  d4 82 fd eb                                      bl #0x459090
004f853c  01 30 a0 e3                                      mov r3, #1
004f8540  06 00 53 e1                                      cmp r3, r6
004f8544  04 30 8d e5                                      str r3, [sp, #4]
004f8548  0f 00 00 1a                                      bne #0x4f858c
004f854c  55 30 84 e2                                      add r3, r4, #0x55
004f8550  56 20 84 e2                                      add r2, r4, #0x56
004f8554  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8558  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f855c  02 00 53 e1                                      cmp r3, r2
004f8560  01 10 20 e0                                      eor r1, r0, r1
004f8564  01 10 43 e5                                      strb r1, [r3, #-1]
004f8568  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f856c  00 10 21 e0                                      eor r1, r1, r0
004f8570  01 10 c2 e5                                      strb r1, [r2, #1]
004f8574  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8578  01 20 42 e2                                      sub r2, r2, #1
004f857c  00 10 21 e0                                      eor r1, r1, r0
004f8580  01 10 43 e5                                      strb r1, [r3, #-1]
004f8584  01 30 83 e2                                      add r3, r3, #1
004f8588  f1 ff ff 3a                                      blo #0x4f8554
004f858c  05 00 a0 e1                                      mov r0, r5
004f8590  58 10 84 e2                                      add r1, r4, #0x58
004f8594  bd 82 fd eb                                      bl #0x459090
004f8598  01 30 a0 e3                                      mov r3, #1
004f859c  00 00 53 e3                                      cmp r3, #0
004f85a0  04 30 8d e5                                      str r3, [sp, #4]
004f85a4  0f 00 00 1a                                      bne #0x4f85e8
004f85a8  59 30 84 e2                                      add r3, r4, #0x59
004f85ac  5a 20 84 e2                                      add r2, r4, #0x5a
004f85b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f85b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f85b8  02 00 53 e1                                      cmp r3, r2
004f85bc  01 10 20 e0                                      eor r1, r0, r1
004f85c0  01 10 43 e5                                      strb r1, [r3, #-1]
004f85c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f85c8  00 10 21 e0                                      eor r1, r1, r0
004f85cc  01 10 c2 e5                                      strb r1, [r2, #1]
004f85d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f85d4  01 20 42 e2                                      sub r2, r2, #1
004f85d8  00 10 21 e0                                      eor r1, r1, r0
004f85dc  01 10 43 e5                                      strb r1, [r3, #-1]
004f85e0  01 30 83 e2                                      add r3, r3, #1
004f85e4  f1 ff ff 3a                                      blo #0x4f85b0
004f85e8  05 00 a0 e1                                      mov r0, r5
004f85ec  5c 10 84 e2                                      add r1, r4, #0x5c
004f85f0  a6 82 fd eb                                      bl #0x459090
004f85f4  01 30 a0 e3                                      mov r3, #1
004f85f8  00 00 53 e3                                      cmp r3, #0
004f85fc  04 30 8d e5                                      str r3, [sp, #4]
004f8600  0f 00 00 1a                                      bne #0x4f8644
004f8604  5d 30 84 e2                                      add r3, r4, #0x5d
004f8608  5e 20 84 e2                                      add r2, r4, #0x5e
004f860c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8610  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8614  02 00 53 e1                                      cmp r3, r2
004f8618  01 10 20 e0                                      eor r1, r0, r1
004f861c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8620  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8624  00 10 21 e0                                      eor r1, r1, r0
004f8628  01 10 c2 e5                                      strb r1, [r2, #1]
004f862c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8630  01 20 42 e2                                      sub r2, r2, #1
004f8634  00 10 21 e0                                      eor r1, r1, r0
004f8638  01 10 43 e5                                      strb r1, [r3, #-1]
004f863c  01 30 83 e2                                      add r3, r3, #1
004f8640  f1 ff ff 3a                                      blo #0x4f860c
004f8644  05 00 a0 e1                                      mov r0, r5
004f8648  60 10 84 e2                                      add r1, r4, #0x60
004f864c  8f 82 fd eb                                      bl #0x459090
004f8650  01 30 a0 e3                                      mov r3, #1
004f8654  00 00 53 e3                                      cmp r3, #0
004f8658  04 30 8d e5                                      str r3, [sp, #4]
004f865c  0f 00 00 1a                                      bne #0x4f86a0
004f8660  61 30 84 e2                                      add r3, r4, #0x61
004f8664  62 20 84 e2                                      add r2, r4, #0x62
004f8668  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f866c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8670  02 00 53 e1                                      cmp r3, r2
004f8674  01 10 20 e0                                      eor r1, r0, r1
004f8678  01 10 43 e5                                      strb r1, [r3, #-1]
004f867c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8680  00 10 21 e0                                      eor r1, r1, r0
004f8684  01 10 c2 e5                                      strb r1, [r2, #1]
004f8688  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f868c  01 20 42 e2                                      sub r2, r2, #1
004f8690  00 10 21 e0                                      eor r1, r1, r0
004f8694  01 10 43 e5                                      strb r1, [r3, #-1]
004f8698  01 30 83 e2                                      add r3, r3, #1
004f869c  f1 ff ff 3a                                      blo #0x4f8668
004f86a0  05 00 a0 e1                                      mov r0, r5
004f86a4  64 10 84 e2                                      add r1, r4, #0x64
004f86a8  78 82 fd eb                                      bl #0x459090
004f86ac  01 30 a0 e3                                      mov r3, #1
004f86b0  00 00 53 e3                                      cmp r3, #0
004f86b4  04 30 8d e5                                      str r3, [sp, #4]
004f86b8  0f 00 00 1a                                      bne #0x4f86fc
004f86bc  65 30 84 e2                                      add r3, r4, #0x65
004f86c0  66 20 84 e2                                      add r2, r4, #0x66
004f86c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f86c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f86cc  02 00 53 e1                                      cmp r3, r2
004f86d0  01 10 20 e0                                      eor r1, r0, r1
004f86d4  01 10 43 e5                                      strb r1, [r3, #-1]
004f86d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f86dc  00 10 21 e0                                      eor r1, r1, r0
004f86e0  01 10 c2 e5                                      strb r1, [r2, #1]
004f86e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f86e8  01 20 42 e2                                      sub r2, r2, #1
004f86ec  00 10 21 e0                                      eor r1, r1, r0
004f86f0  01 10 43 e5                                      strb r1, [r3, #-1]
004f86f4  01 30 83 e2                                      add r3, r3, #1
004f86f8  f1 ff ff 3a                                      blo #0x4f86c4
004f86fc  05 00 a0 e1                                      mov r0, r5
004f8700  68 10 84 e2                                      add r1, r4, #0x68
004f8704  61 82 fd eb                                      bl #0x459090
004f8708  01 30 a0 e3                                      mov r3, #1
004f870c  00 00 53 e3                                      cmp r3, #0
004f8710  04 30 8d e5                                      str r3, [sp, #4]
004f8714  0f 00 00 1a                                      bne #0x4f8758
004f8718  69 30 84 e2                                      add r3, r4, #0x69
004f871c  6a 20 84 e2                                      add r2, r4, #0x6a
004f8720  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8724  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8728  02 00 53 e1                                      cmp r3, r2
004f872c  01 10 20 e0                                      eor r1, r0, r1
004f8730  01 10 43 e5                                      strb r1, [r3, #-1]
004f8734  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8738  00 10 21 e0                                      eor r1, r1, r0
004f873c  01 10 c2 e5                                      strb r1, [r2, #1]
004f8740  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8744  01 20 42 e2                                      sub r2, r2, #1
004f8748  00 10 21 e0                                      eor r1, r1, r0
004f874c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8750  01 30 83 e2                                      add r3, r3, #1
004f8754  f1 ff ff 3a                                      blo #0x4f8720
004f8758  05 00 a0 e1                                      mov r0, r5
004f875c  6c 10 84 e2                                      add r1, r4, #0x6c
004f8760  4a 82 fd eb                                      bl #0x459090
004f8764  01 30 a0 e3                                      mov r3, #1
004f8768  00 00 53 e3                                      cmp r3, #0
004f876c  04 30 8d e5                                      str r3, [sp, #4]
004f8770  0f 00 00 1a                                      bne #0x4f87b4
004f8774  6d 30 84 e2                                      add r3, r4, #0x6d
004f8778  6e 20 84 e2                                      add r2, r4, #0x6e
004f877c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8780  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8784  02 00 53 e1                                      cmp r3, r2
004f8788  01 10 20 e0                                      eor r1, r0, r1
004f878c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8790  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8794  00 10 21 e0                                      eor r1, r1, r0
004f8798  01 10 c2 e5                                      strb r1, [r2, #1]
004f879c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f87a0  01 20 42 e2                                      sub r2, r2, #1
004f87a4  00 10 21 e0                                      eor r1, r1, r0
004f87a8  01 10 43 e5                                      strb r1, [r3, #-1]
004f87ac  01 30 83 e2                                      add r3, r3, #1
004f87b0  f1 ff ff 3a                                      blo #0x4f877c
004f87b4  05 00 a0 e1                                      mov r0, r5
004f87b8  70 10 84 e2                                      add r1, r4, #0x70
004f87bc  33 82 fd eb                                      bl #0x459090
004f87c0  01 30 a0 e3                                      mov r3, #1
004f87c4  00 00 53 e3                                      cmp r3, #0
004f87c8  04 30 8d e5                                      str r3, [sp, #4]
004f87cc  0f 00 00 1a                                      bne #0x4f8810
004f87d0  71 30 84 e2                                      add r3, r4, #0x71
004f87d4  72 20 84 e2                                      add r2, r4, #0x72
004f87d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f87dc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f87e0  02 00 53 e1                                      cmp r3, r2
004f87e4  01 10 20 e0                                      eor r1, r0, r1
004f87e8  01 10 43 e5                                      strb r1, [r3, #-1]
004f87ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f87f0  00 10 21 e0                                      eor r1, r1, r0
004f87f4  01 10 c2 e5                                      strb r1, [r2, #1]
004f87f8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f87fc  01 20 42 e2                                      sub r2, r2, #1
004f8800  00 10 21 e0                                      eor r1, r1, r0
004f8804  01 10 43 e5                                      strb r1, [r3, #-1]
004f8808  01 30 83 e2                                      add r3, r3, #1
004f880c  f1 ff ff 3a                                      blo #0x4f87d8
004f8810  05 00 a0 e1                                      mov r0, r5
004f8814  74 10 84 e2                                      add r1, r4, #0x74
004f8818  1c 82 fd eb                                      bl #0x459090
004f881c  01 30 a0 e3                                      mov r3, #1
004f8820  00 00 53 e3                                      cmp r3, #0
004f8824  04 30 8d e5                                      str r3, [sp, #4]
004f8828  0f 00 00 1a                                      bne #0x4f886c
004f882c  75 30 84 e2                                      add r3, r4, #0x75
004f8830  76 20 84 e2                                      add r2, r4, #0x76
004f8834  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8838  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f883c  02 00 53 e1                                      cmp r3, r2
004f8840  01 10 20 e0                                      eor r1, r0, r1
004f8844  01 10 43 e5                                      strb r1, [r3, #-1]
004f8848  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f884c  00 10 21 e0                                      eor r1, r1, r0
004f8850  01 10 c2 e5                                      strb r1, [r2, #1]
004f8854  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8858  01 20 42 e2                                      sub r2, r2, #1
004f885c  00 10 21 e0                                      eor r1, r1, r0
004f8860  01 10 43 e5                                      strb r1, [r3, #-1]
004f8864  01 30 83 e2                                      add r3, r3, #1
004f8868  f1 ff ff 3a                                      blo #0x4f8834
004f886c  05 00 a0 e1                                      mov r0, r5
004f8870  78 10 84 e2                                      add r1, r4, #0x78
004f8874  05 82 fd eb                                      bl #0x459090
004f8878  01 30 a0 e3                                      mov r3, #1
004f887c  00 00 53 e3                                      cmp r3, #0
004f8880  04 30 8d e5                                      str r3, [sp, #4]
004f8884  0f 00 00 1a                                      bne #0x4f88c8
004f8888  79 30 84 e2                                      add r3, r4, #0x79
004f888c  7a 20 84 e2                                      add r2, r4, #0x7a
004f8890  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8894  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8898  02 00 53 e1                                      cmp r3, r2
004f889c  01 10 20 e0                                      eor r1, r0, r1
004f88a0  01 10 43 e5                                      strb r1, [r3, #-1]
004f88a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f88a8  00 10 21 e0                                      eor r1, r1, r0
004f88ac  01 10 c2 e5                                      strb r1, [r2, #1]
004f88b0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f88b4  01 20 42 e2                                      sub r2, r2, #1
004f88b8  00 10 21 e0                                      eor r1, r1, r0
004f88bc  01 10 43 e5                                      strb r1, [r3, #-1]
004f88c0  01 30 83 e2                                      add r3, r3, #1
004f88c4  f1 ff ff 3a                                      blo #0x4f8890
004f88c8  05 00 a0 e1                                      mov r0, r5
004f88cc  7c 10 84 e2                                      add r1, r4, #0x7c
004f88d0  ee 81 fd eb                                      bl #0x459090
004f88d4  01 30 a0 e3                                      mov r3, #1
004f88d8  00 00 53 e3                                      cmp r3, #0
004f88dc  04 30 8d e5                                      str r3, [sp, #4]
004f88e0  0f 00 00 1a                                      bne #0x4f8924
004f88e4  7d 30 84 e2                                      add r3, r4, #0x7d
004f88e8  7e 20 84 e2                                      add r2, r4, #0x7e
004f88ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f88f0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f88f4  02 00 53 e1                                      cmp r3, r2
004f88f8  01 10 20 e0                                      eor r1, r0, r1
004f88fc  01 10 43 e5                                      strb r1, [r3, #-1]
004f8900  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8904  00 10 21 e0                                      eor r1, r1, r0
004f8908  01 10 c2 e5                                      strb r1, [r2, #1]
004f890c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8910  01 20 42 e2                                      sub r2, r2, #1
004f8914  00 10 21 e0                                      eor r1, r1, r0
004f8918  01 10 43 e5                                      strb r1, [r3, #-1]
004f891c  01 30 83 e2                                      add r3, r3, #1
004f8920  f1 ff ff 3a                                      blo #0x4f88ec
004f8924  05 00 a0 e1                                      mov r0, r5
004f8928  80 10 84 e2                                      add r1, r4, #0x80
004f892c  d7 81 fd eb                                      bl #0x459090
004f8930  01 30 a0 e3                                      mov r3, #1
004f8934  00 00 53 e3                                      cmp r3, #0
004f8938  04 30 8d e5                                      str r3, [sp, #4]
004f893c  0f 00 00 1a                                      bne #0x4f8980
004f8940  81 30 84 e2                                      add r3, r4, #0x81
004f8944  82 20 84 e2                                      add r2, r4, #0x82
004f8948  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f894c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8950  02 00 53 e1                                      cmp r3, r2
004f8954  01 10 20 e0                                      eor r1, r0, r1
004f8958  01 10 43 e5                                      strb r1, [r3, #-1]
004f895c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8960  00 10 21 e0                                      eor r1, r1, r0
004f8964  01 10 c2 e5                                      strb r1, [r2, #1]
004f8968  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f896c  01 20 42 e2                                      sub r2, r2, #1
004f8970  00 10 21 e0                                      eor r1, r1, r0
004f8974  01 10 43 e5                                      strb r1, [r3, #-1]
004f8978  01 30 83 e2                                      add r3, r3, #1
004f897c  f1 ff ff 3a                                      blo #0x4f8948
004f8980  05 00 a0 e1                                      mov r0, r5
004f8984  84 10 84 e2                                      add r1, r4, #0x84
004f8988  c0 81 fd eb                                      bl #0x459090
004f898c  01 30 a0 e3                                      mov r3, #1
004f8990  00 00 53 e3                                      cmp r3, #0
004f8994  04 30 8d e5                                      str r3, [sp, #4]
004f8998  0f 00 00 1a                                      bne #0x4f89dc
004f899c  85 30 84 e2                                      add r3, r4, #0x85
004f89a0  86 20 84 e2                                      add r2, r4, #0x86
004f89a4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f89a8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f89ac  02 00 53 e1                                      cmp r3, r2
004f89b0  01 10 20 e0                                      eor r1, r0, r1
004f89b4  01 10 43 e5                                      strb r1, [r3, #-1]
004f89b8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f89bc  00 10 21 e0                                      eor r1, r1, r0
004f89c0  01 10 c2 e5                                      strb r1, [r2, #1]
004f89c4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f89c8  01 20 42 e2                                      sub r2, r2, #1
004f89cc  00 10 21 e0                                      eor r1, r1, r0
004f89d0  01 10 43 e5                                      strb r1, [r3, #-1]
004f89d4  01 30 83 e2                                      add r3, r3, #1
004f89d8  f1 ff ff 3a                                      blo #0x4f89a4
004f89dc  05 00 a0 e1                                      mov r0, r5
004f89e0  88 10 84 e2                                      add r1, r4, #0x88
004f89e4  a9 81 fd eb                                      bl #0x459090
004f89e8  01 30 a0 e3                                      mov r3, #1
004f89ec  00 00 53 e3                                      cmp r3, #0
004f89f0  04 30 8d e5                                      str r3, [sp, #4]
004f89f4  0f 00 00 1a                                      bne #0x4f8a38
004f89f8  89 30 84 e2                                      add r3, r4, #0x89
004f89fc  8a 20 84 e2                                      add r2, r4, #0x8a
004f8a00  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8a04  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8a08  02 00 53 e1                                      cmp r3, r2
004f8a0c  01 10 20 e0                                      eor r1, r0, r1
004f8a10  01 10 43 e5                                      strb r1, [r3, #-1]
004f8a14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8a18  00 10 21 e0                                      eor r1, r1, r0
004f8a1c  01 10 c2 e5                                      strb r1, [r2, #1]
004f8a20  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8a24  01 20 42 e2                                      sub r2, r2, #1
004f8a28  00 10 21 e0                                      eor r1, r1, r0
004f8a2c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8a30  01 30 83 e2                                      add r3, r3, #1
004f8a34  f1 ff ff 3a                                      blo #0x4f8a00
004f8a38  05 00 a0 e1                                      mov r0, r5
004f8a3c  8c 10 84 e2                                      add r1, r4, #0x8c
004f8a40  92 81 fd eb                                      bl #0x459090
004f8a44  01 30 a0 e3                                      mov r3, #1
004f8a48  00 00 53 e3                                      cmp r3, #0
004f8a4c  04 30 8d e5                                      str r3, [sp, #4]
004f8a50  0f 00 00 1a                                      bne #0x4f8a94
004f8a54  8d 30 84 e2                                      add r3, r4, #0x8d
004f8a58  8e 20 84 e2                                      add r2, r4, #0x8e
004f8a5c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8a60  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8a64  02 00 53 e1                                      cmp r3, r2
004f8a68  01 10 20 e0                                      eor r1, r0, r1
004f8a6c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8a70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8a74  00 10 21 e0                                      eor r1, r1, r0
004f8a78  01 10 c2 e5                                      strb r1, [r2, #1]
004f8a7c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8a80  01 20 42 e2                                      sub r2, r2, #1
004f8a84  00 10 21 e0                                      eor r1, r1, r0
004f8a88  01 10 43 e5                                      strb r1, [r3, #-1]
004f8a8c  01 30 83 e2                                      add r3, r3, #1
004f8a90  f1 ff ff 3a                                      blo #0x4f8a5c
004f8a94  05 00 a0 e1                                      mov r0, r5
004f8a98  90 10 84 e2                                      add r1, r4, #0x90
004f8a9c  7b 81 fd eb                                      bl #0x459090
004f8aa0  01 30 a0 e3                                      mov r3, #1
004f8aa4  00 00 53 e3                                      cmp r3, #0
004f8aa8  04 30 8d e5                                      str r3, [sp, #4]
004f8aac  0f 00 00 1a                                      bne #0x4f8af0
004f8ab0  91 30 84 e2                                      add r3, r4, #0x91
004f8ab4  92 20 84 e2                                      add r2, r4, #0x92
004f8ab8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8abc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8ac0  02 00 53 e1                                      cmp r3, r2
004f8ac4  01 10 20 e0                                      eor r1, r0, r1
004f8ac8  01 10 43 e5                                      strb r1, [r3, #-1]
004f8acc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8ad0  00 10 21 e0                                      eor r1, r1, r0
004f8ad4  01 10 c2 e5                                      strb r1, [r2, #1]
004f8ad8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8adc  01 20 42 e2                                      sub r2, r2, #1
004f8ae0  00 10 21 e0                                      eor r1, r1, r0
004f8ae4  01 10 43 e5                                      strb r1, [r3, #-1]
004f8ae8  01 30 83 e2                                      add r3, r3, #1
004f8aec  f1 ff ff 3a                                      blo #0x4f8ab8
004f8af0  05 00 a0 e1                                      mov r0, r5
004f8af4  94 10 84 e2                                      add r1, r4, #0x94
004f8af8  64 81 fd eb                                      bl #0x459090
004f8afc  01 30 a0 e3                                      mov r3, #1
004f8b00  00 00 53 e3                                      cmp r3, #0
004f8b04  04 30 8d e5                                      str r3, [sp, #4]
004f8b08  0f 00 00 1a                                      bne #0x4f8b4c
004f8b0c  95 30 84 e2                                      add r3, r4, #0x95
004f8b10  96 20 84 e2                                      add r2, r4, #0x96
004f8b14  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8b18  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8b1c  02 00 53 e1                                      cmp r3, r2
004f8b20  01 10 20 e0                                      eor r1, r0, r1
004f8b24  01 10 43 e5                                      strb r1, [r3, #-1]
004f8b28  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8b2c  00 10 21 e0                                      eor r1, r1, r0
004f8b30  01 10 c2 e5                                      strb r1, [r2, #1]
004f8b34  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8b38  01 20 42 e2                                      sub r2, r2, #1
004f8b3c  00 10 21 e0                                      eor r1, r1, r0
004f8b40  01 10 43 e5                                      strb r1, [r3, #-1]
004f8b44  01 30 83 e2                                      add r3, r3, #1
004f8b48  f1 ff ff 3a                                      blo #0x4f8b14
004f8b4c  05 00 a0 e1                                      mov r0, r5
004f8b50  98 10 84 e2                                      add r1, r4, #0x98
004f8b54  4d 81 fd eb                                      bl #0x459090
004f8b58  01 30 a0 e3                                      mov r3, #1
004f8b5c  00 00 53 e3                                      cmp r3, #0
004f8b60  04 30 8d e5                                      str r3, [sp, #4]
004f8b64  0f 00 00 1a                                      bne #0x4f8ba8
004f8b68  99 30 84 e2                                      add r3, r4, #0x99
004f8b6c  9a 20 84 e2                                      add r2, r4, #0x9a
004f8b70  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8b74  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8b78  02 00 53 e1                                      cmp r3, r2
004f8b7c  01 10 20 e0                                      eor r1, r0, r1
004f8b80  01 10 43 e5                                      strb r1, [r3, #-1]
004f8b84  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8b88  00 10 21 e0                                      eor r1, r1, r0
004f8b8c  01 10 c2 e5                                      strb r1, [r2, #1]
004f8b90  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8b94  01 20 42 e2                                      sub r2, r2, #1
004f8b98  00 10 21 e0                                      eor r1, r1, r0
004f8b9c  01 10 43 e5                                      strb r1, [r3, #-1]
004f8ba0  01 30 83 e2                                      add r3, r3, #1
004f8ba4  f1 ff ff 3a                                      blo #0x4f8b70
004f8ba8  05 00 a0 e1                                      mov r0, r5
004f8bac  9c 10 84 e2                                      add r1, r4, #0x9c
004f8bb0  36 81 fd eb                                      bl #0x459090
004f8bb4  01 30 a0 e3                                      mov r3, #1
004f8bb8  00 00 53 e3                                      cmp r3, #0
004f8bbc  04 30 8d e5                                      str r3, [sp, #4]
004f8bc0  0f 00 00 1a                                      bne #0x4f8c04
004f8bc4  9d 30 84 e2                                      add r3, r4, #0x9d
004f8bc8  9e 20 84 e2                                      add r2, r4, #0x9e
004f8bcc  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8bd0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004f8bd4  02 00 53 e1                                      cmp r3, r2
004f8bd8  01 10 20 e0                                      eor r1, r0, r1
004f8bdc  01 10 43 e5                                      strb r1, [r3, #-1]
004f8be0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004f8be4  00 10 21 e0                                      eor r1, r1, r0
004f8be8  01 10 c2 e5                                      strb r1, [r2, #1]
004f8bec  01 00 53 e5                                      ldrb r0, [r3, #-1]
004f8bf0  01 20 42 e2                                      sub r2, r2, #1
004f8bf4  00 10 21 e0                                      eor r1, r1, r0
004f8bf8  01 10 43 e5                                      strb r1, [r3, #-1]
004f8bfc  01 30 83 e2                                      add r3, r3, #1
004f8c00  f1 ff ff 3a                                      blo #0x4f8bcc
004f8c04  05 00 a0 e1                                      mov r0, r5
004f8c08  a0 10 84 e2                                      add r1, r4, #0xa0
004f8c0c  1f 81 fd eb                                      bl #0x459090
004f8c10  01 30 a0 e3                                      mov r3, #1
004f8c14  00 00 53 e3                                      cmp r3, #0
004f8c18  04 30 8d e5                                      str r3, [sp, #4]
004f8c1c  0f 00 00 1a                                      bne #0x4f8c60
004f8c20  a2 30 84 e2                                      add r3, r4, #0xa2
004f8c24  a1 40 84 e2                                      add r4, r4, #0xa1
004f8c28  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f8c2c  01 20 54 e5                                      ldrb r2, [r4, #-1]
004f8c30  03 00 54 e1                                      cmp r4, r3
004f8c34  02 20 21 e0                                      eor r2, r1, r2
004f8c38  01 20 44 e5                                      strb r2, [r4, #-1]
004f8c3c  01 10 d3 e5                                      ldrb r1, [r3, #1]
004f8c40  01 20 22 e0                                      eor r2, r2, r1
004f8c44  01 20 c3 e5                                      strb r2, [r3, #1]
004f8c48  01 10 54 e5                                      ldrb r1, [r4, #-1]
004f8c4c  01 30 43 e2                                      sub r3, r3, #1
004f8c50  01 20 22 e0                                      eor r2, r2, r1
004f8c54  01 20 44 e5                                      strb r2, [r4, #-1]
004f8c58  01 40 84 e2                                      add r4, r4, #1
004f8c5c  f1 ff ff 3a                                      blo #0x4f8c28
004f8c60  08 d0 8d e2                                      add sp, sp, #8
004f8c64  70 80 bd e8                                      pop {r4, r5, r6, pc}
