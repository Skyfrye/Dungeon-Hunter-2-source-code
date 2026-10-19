; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004da134, declared_size=40, range_size=40, mode=arm
; class-group: Structs::DestructibleContainer
; alias: _ZN7Structs21DestructibleContainer8finalizeEv
; demangled: Structs::DestructibleContainer::finalize()
; decoder-mode: arm
004da134  10 40 2d e9                                      push {r4, lr}
004da138  00 40 a0 e1                                      mov r4, r0
004da13c  30 00 90 e5                                      ldr r0, [r0, #0x30]
004da140  00 00 50 e3                                      cmp r0, #0
004da144  03 00 00 0a                                      beq #0x4da158
004da148  bc d8 f8 eb                                      bl #0x310440
004da14c  00 30 a0 e3                                      mov r3, #0
004da150  2c 30 84 e5                                      str r3, [r4, #0x2c]
004da154  30 30 84 e5                                      str r3, [r4, #0x30]
004da158  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da15c, declared_size=64, range_size=64, mode=arm
; class-group: Structs::DestructibleContainer
; alias: _ZN7Structs21DestructibleContainerD1Ev
; demangled: Structs::DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
004da15c  10 40 2d e9                                      push {r4, lr}
004da160  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da164  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da168  00 40 a0 e1                                      mov r4, r0
004da16c  03 30 8f e0                                      add r3, pc, r3
004da170  30 00 90 e5                                      ldr r0, [r0, #0x30]
004da174  02 20 93 e7                                      ldr r2, [r3, r2]
004da178  00 00 50 e3                                      cmp r0, #0
004da17c  08 20 82 e2                                      add r2, r2, #8
004da180  00 20 84 e5                                      str r2, [r4]
004da184  00 00 00 0a                                      beq #0x4da18c
004da188  ac d8 f8 eb                                      bl #0x310440
004da18c  04 00 a0 e1                                      mov r0, r4
004da190  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da194  24 a9 4b 00 44 3e 00 00                          .byte 0x24, 0xa9, 0x4b, 0x00, 0x44, 0x3e, 0x00, 0x00

; FUNCTION 0x004da19c, declared_size=28, range_size=28, mode=arm
; class-group: Structs::DestructibleContainer
; alias: _ZN7Structs21DestructibleContainerD0Ev
; demangled: Structs::DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
004da19c  10 40 2d e9                                      push {r4, lr}
004da1a0  00 40 a0 e1                                      mov r4, r0
004da1a4  ec ff ff eb                                      bl #0x4da15c
004da1a8  04 00 a0 e1                                      mov r0, r4
004da1ac  a3 d8 f8 eb                                      bl #0x310440
004da1b0  04 00 a0 e1                                      mov r0, r4
004da1b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004da1b8, declared_size=64, range_size=64, mode=arm
; class-group: Structs::DestructibleContainer
; alias: _ZN7Structs21DestructibleContainerD2Ev
; demangled: Structs::DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
004da1b8  10 40 2d e9                                      push {r4, lr}
004da1bc  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004da1c0  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004da1c4  00 40 a0 e1                                      mov r4, r0
004da1c8  03 30 8f e0                                      add r3, pc, r3
004da1cc  30 00 90 e5                                      ldr r0, [r0, #0x30]
004da1d0  02 20 93 e7                                      ldr r2, [r3, r2]
004da1d4  00 00 50 e3                                      cmp r0, #0
004da1d8  08 20 82 e2                                      add r2, r2, #8
004da1dc  00 20 84 e5                                      str r2, [r4]
004da1e0  00 00 00 0a                                      beq #0x4da1e8
004da1e4  95 d8 f8 eb                                      bl #0x310440
004da1e8  04 00 a0 e1                                      mov r0, r4
004da1ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004da1f0  c8 a8 4b 00 44 3e 00 00                          .byte 0xc8, 0xa8, 0x4b, 0x00, 0x44, 0x3e, 0x00, 0x00

; FUNCTION 0x004fe220, declared_size=1396, range_size=1396, mode=arm
; class-group: Structs::DestructibleContainer
; alias: _ZN7Structs21DestructibleContainer4readEP11IStreamBase
; demangled: Structs::DestructibleContainer::read(IStreamBase*)
; decoder-mode: arm
004fe220  70 40 2d e9                                      push {r4, r5, r6, lr}
004fe224  00 40 a0 e1                                      mov r4, r0
004fe228  08 d0 4d e2                                      sub sp, sp, #8
004fe22c  01 00 a0 e1                                      mov r0, r1
004fe230  01 50 a0 e1                                      mov r5, r1
004fe234  04 10 84 e2                                      add r1, r4, #4
004fe238  94 6b fd eb                                      bl #0x459090
004fe23c  01 30 a0 e3                                      mov r3, #1
004fe240  00 00 53 e3                                      cmp r3, #0
004fe244  04 30 8d e5                                      str r3, [sp, #4]
004fe248  0f 00 00 1a                                      bne #0x4fe28c
004fe24c  05 30 84 e2                                      add r3, r4, #5
004fe250  06 20 84 e2                                      add r2, r4, #6
004fe254  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe258  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe25c  02 00 53 e1                                      cmp r3, r2
004fe260  01 10 20 e0                                      eor r1, r0, r1
004fe264  01 10 43 e5                                      strb r1, [r3, #-1]
004fe268  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe26c  00 10 21 e0                                      eor r1, r1, r0
004fe270  01 10 c2 e5                                      strb r1, [r2, #1]
004fe274  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe278  01 20 42 e2                                      sub r2, r2, #1
004fe27c  00 10 21 e0                                      eor r1, r1, r0
004fe280  01 10 43 e5                                      strb r1, [r3, #-1]
004fe284  01 30 83 e2                                      add r3, r3, #1
004fe288  f1 ff ff 3a                                      blo #0x4fe254
004fe28c  05 00 a0 e1                                      mov r0, r5
004fe290  08 10 84 e2                                      add r1, r4, #8
004fe294  7d 6b fd eb                                      bl #0x459090
004fe298  01 30 a0 e3                                      mov r3, #1
004fe29c  00 00 53 e3                                      cmp r3, #0
004fe2a0  04 30 8d e5                                      str r3, [sp, #4]
004fe2a4  0f 00 00 1a                                      bne #0x4fe2e8
004fe2a8  09 30 84 e2                                      add r3, r4, #9
004fe2ac  0a 20 84 e2                                      add r2, r4, #0xa
004fe2b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe2b4  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe2b8  02 00 53 e1                                      cmp r3, r2
004fe2bc  01 10 20 e0                                      eor r1, r0, r1
004fe2c0  01 10 43 e5                                      strb r1, [r3, #-1]
004fe2c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe2c8  00 10 21 e0                                      eor r1, r1, r0
004fe2cc  01 10 c2 e5                                      strb r1, [r2, #1]
004fe2d0  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe2d4  01 20 42 e2                                      sub r2, r2, #1
004fe2d8  00 10 21 e0                                      eor r1, r1, r0
004fe2dc  01 10 43 e5                                      strb r1, [r3, #-1]
004fe2e0  01 30 83 e2                                      add r3, r3, #1
004fe2e4  f1 ff ff 3a                                      blo #0x4fe2b0
004fe2e8  05 00 a0 e1                                      mov r0, r5
004fe2ec  0c 10 84 e2                                      add r1, r4, #0xc
004fe2f0  66 6b fd eb                                      bl #0x459090
004fe2f4  01 30 a0 e3                                      mov r3, #1
004fe2f8  00 00 53 e3                                      cmp r3, #0
004fe2fc  04 30 8d e5                                      str r3, [sp, #4]
004fe300  0f 00 00 1a                                      bne #0x4fe344
004fe304  0d 30 84 e2                                      add r3, r4, #0xd
004fe308  0e 20 84 e2                                      add r2, r4, #0xe
004fe30c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe310  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe314  02 00 53 e1                                      cmp r3, r2
004fe318  01 10 20 e0                                      eor r1, r0, r1
004fe31c  01 10 43 e5                                      strb r1, [r3, #-1]
004fe320  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe324  00 10 21 e0                                      eor r1, r1, r0
004fe328  01 10 c2 e5                                      strb r1, [r2, #1]
004fe32c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe330  01 20 42 e2                                      sub r2, r2, #1
004fe334  00 10 21 e0                                      eor r1, r1, r0
004fe338  01 10 43 e5                                      strb r1, [r3, #-1]
004fe33c  01 30 83 e2                                      add r3, r3, #1
004fe340  f1 ff ff 3a                                      blo #0x4fe30c
004fe344  05 00 a0 e1                                      mov r0, r5
004fe348  10 10 84 e2                                      add r1, r4, #0x10
004fe34c  4f 6b fd eb                                      bl #0x459090
004fe350  01 30 a0 e3                                      mov r3, #1
004fe354  00 00 53 e3                                      cmp r3, #0
004fe358  04 30 8d e5                                      str r3, [sp, #4]
004fe35c  0f 00 00 1a                                      bne #0x4fe3a0
004fe360  11 30 84 e2                                      add r3, r4, #0x11
004fe364  12 20 84 e2                                      add r2, r4, #0x12
004fe368  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe36c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe370  02 00 53 e1                                      cmp r3, r2
004fe374  01 10 20 e0                                      eor r1, r0, r1
004fe378  01 10 43 e5                                      strb r1, [r3, #-1]
004fe37c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe380  00 10 21 e0                                      eor r1, r1, r0
004fe384  01 10 c2 e5                                      strb r1, [r2, #1]
004fe388  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe38c  01 20 42 e2                                      sub r2, r2, #1
004fe390  00 10 21 e0                                      eor r1, r1, r0
004fe394  01 10 43 e5                                      strb r1, [r3, #-1]
004fe398  01 30 83 e2                                      add r3, r3, #1
004fe39c  f1 ff ff 3a                                      blo #0x4fe368
004fe3a0  05 00 a0 e1                                      mov r0, r5
004fe3a4  14 10 84 e2                                      add r1, r4, #0x14
004fe3a8  38 6b fd eb                                      bl #0x459090
004fe3ac  01 30 a0 e3                                      mov r3, #1
004fe3b0  00 00 53 e3                                      cmp r3, #0
004fe3b4  04 30 8d e5                                      str r3, [sp, #4]
004fe3b8  0f 00 00 1a                                      bne #0x4fe3fc
004fe3bc  15 30 84 e2                                      add r3, r4, #0x15
004fe3c0  16 20 84 e2                                      add r2, r4, #0x16
004fe3c4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe3c8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe3cc  02 00 53 e1                                      cmp r3, r2
004fe3d0  01 10 20 e0                                      eor r1, r0, r1
004fe3d4  01 10 43 e5                                      strb r1, [r3, #-1]
004fe3d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe3dc  00 10 21 e0                                      eor r1, r1, r0
004fe3e0  01 10 c2 e5                                      strb r1, [r2, #1]
004fe3e4  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe3e8  01 20 42 e2                                      sub r2, r2, #1
004fe3ec  00 10 21 e0                                      eor r1, r1, r0
004fe3f0  01 10 43 e5                                      strb r1, [r3, #-1]
004fe3f4  01 30 83 e2                                      add r3, r3, #1
004fe3f8  f1 ff ff 3a                                      blo #0x4fe3c4
004fe3fc  05 00 a0 e1                                      mov r0, r5
004fe400  18 10 84 e2                                      add r1, r4, #0x18
004fe404  21 6b fd eb                                      bl #0x459090
004fe408  01 30 a0 e3                                      mov r3, #1
004fe40c  00 00 53 e3                                      cmp r3, #0
004fe410  04 30 8d e5                                      str r3, [sp, #4]
004fe414  0f 00 00 1a                                      bne #0x4fe458
004fe418  19 30 84 e2                                      add r3, r4, #0x19
004fe41c  1a 20 84 e2                                      add r2, r4, #0x1a
004fe420  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe424  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe428  02 00 53 e1                                      cmp r3, r2
004fe42c  01 10 20 e0                                      eor r1, r0, r1
004fe430  01 10 43 e5                                      strb r1, [r3, #-1]
004fe434  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe438  00 10 21 e0                                      eor r1, r1, r0
004fe43c  01 10 c2 e5                                      strb r1, [r2, #1]
004fe440  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe444  01 20 42 e2                                      sub r2, r2, #1
004fe448  00 10 21 e0                                      eor r1, r1, r0
004fe44c  01 10 43 e5                                      strb r1, [r3, #-1]
004fe450  01 30 83 e2                                      add r3, r3, #1
004fe454  f1 ff ff 3a                                      blo #0x4fe420
004fe458  05 00 a0 e1                                      mov r0, r5
004fe45c  1c 10 84 e2                                      add r1, r4, #0x1c
004fe460  0a 6b fd eb                                      bl #0x459090
004fe464  01 30 a0 e3                                      mov r3, #1
004fe468  00 00 53 e3                                      cmp r3, #0
004fe46c  04 30 8d e5                                      str r3, [sp, #4]
004fe470  0f 00 00 1a                                      bne #0x4fe4b4
004fe474  1d 30 84 e2                                      add r3, r4, #0x1d
004fe478  1e 20 84 e2                                      add r2, r4, #0x1e
004fe47c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe480  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe484  02 00 53 e1                                      cmp r3, r2
004fe488  01 10 20 e0                                      eor r1, r0, r1
004fe48c  01 10 43 e5                                      strb r1, [r3, #-1]
004fe490  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe494  00 10 21 e0                                      eor r1, r1, r0
004fe498  01 10 c2 e5                                      strb r1, [r2, #1]
004fe49c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe4a0  01 20 42 e2                                      sub r2, r2, #1
004fe4a4  00 10 21 e0                                      eor r1, r1, r0
004fe4a8  01 10 43 e5                                      strb r1, [r3, #-1]
004fe4ac  01 30 83 e2                                      add r3, r3, #1
004fe4b0  f1 ff ff 3a                                      blo #0x4fe47c
004fe4b4  20 10 84 e2                                      add r1, r4, #0x20
004fe4b8  05 00 a0 e1                                      mov r0, r5
004fe4bc  f6 74 ff eb                                      bl #0x4db89c
004fe4c0  05 00 a0 e1                                      mov r0, r5
004fe4c4  24 10 84 e2                                      add r1, r4, #0x24
004fe4c8  f0 6a fd eb                                      bl #0x459090
004fe4cc  01 30 a0 e3                                      mov r3, #1
004fe4d0  00 00 53 e3                                      cmp r3, #0
004fe4d4  04 30 8d e5                                      str r3, [sp, #4]
004fe4d8  0f 00 00 1a                                      bne #0x4fe51c
004fe4dc  25 30 84 e2                                      add r3, r4, #0x25
004fe4e0  26 20 84 e2                                      add r2, r4, #0x26
004fe4e4  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe4e8  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe4ec  02 00 53 e1                                      cmp r3, r2
004fe4f0  01 10 20 e0                                      eor r1, r0, r1
004fe4f4  01 10 43 e5                                      strb r1, [r3, #-1]
004fe4f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe4fc  00 10 21 e0                                      eor r1, r1, r0
004fe500  01 10 c2 e5                                      strb r1, [r2, #1]
004fe504  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe508  01 20 42 e2                                      sub r2, r2, #1
004fe50c  00 10 21 e0                                      eor r1, r1, r0
004fe510  01 10 43 e5                                      strb r1, [r3, #-1]
004fe514  01 30 83 e2                                      add r3, r3, #1
004fe518  f1 ff ff 3a                                      blo #0x4fe4e4
004fe51c  05 00 a0 e1                                      mov r0, r5
004fe520  28 10 84 e2                                      add r1, r4, #0x28
004fe524  d9 6a fd eb                                      bl #0x459090
004fe528  01 30 a0 e3                                      mov r3, #1
004fe52c  00 00 53 e3                                      cmp r3, #0
004fe530  04 30 8d e5                                      str r3, [sp, #4]
004fe534  0f 00 00 1a                                      bne #0x4fe578
004fe538  29 30 84 e2                                      add r3, r4, #0x29
004fe53c  2a 20 84 e2                                      add r2, r4, #0x2a
004fe540  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe544  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe548  02 00 53 e1                                      cmp r3, r2
004fe54c  01 10 20 e0                                      eor r1, r0, r1
004fe550  01 10 43 e5                                      strb r1, [r3, #-1]
004fe554  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe558  00 10 21 e0                                      eor r1, r1, r0
004fe55c  01 10 c2 e5                                      strb r1, [r2, #1]
004fe560  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe564  01 20 42 e2                                      sub r2, r2, #1
004fe568  00 10 21 e0                                      eor r1, r1, r0
004fe56c  01 10 43 e5                                      strb r1, [r3, #-1]
004fe570  01 30 83 e2                                      add r3, r3, #1
004fe574  f1 ff ff 3a                                      blo #0x4fe540
004fe578  05 00 a0 e1                                      mov r0, r5
004fe57c  2c 10 84 e2                                      add r1, r4, #0x2c
004fe580  06 83 fb eb                                      bl #0x3df1a0
004fe584  01 30 a0 e3                                      mov r3, #1
004fe588  00 00 53 e3                                      cmp r3, #0
004fe58c  04 30 8d e5                                      str r3, [sp, #4]
004fe590  0f 00 00 1a                                      bne #0x4fe5d4
004fe594  2d 30 84 e2                                      add r3, r4, #0x2d
004fe598  2e 20 84 e2                                      add r2, r4, #0x2e
004fe59c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe5a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe5a4  02 00 53 e1                                      cmp r3, r2
004fe5a8  01 10 20 e0                                      eor r1, r0, r1
004fe5ac  01 10 43 e5                                      strb r1, [r3, #-1]
004fe5b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe5b4  00 10 21 e0                                      eor r1, r1, r0
004fe5b8  01 10 c2 e5                                      strb r1, [r2, #1]
004fe5bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe5c0  01 20 42 e2                                      sub r2, r2, #1
004fe5c4  00 10 21 e0                                      eor r1, r1, r0
004fe5c8  01 10 43 e5                                      strb r1, [r3, #-1]
004fe5cc  01 30 83 e2                                      add r3, r3, #1
004fe5d0  f1 ff ff 3a                                      blo #0x4fe59c
004fe5d4  30 00 94 e5                                      ldr r0, [r4, #0x30]
004fe5d8  00 00 50 e3                                      cmp r0, #0
004fe5dc  00 00 00 0a                                      beq #0x4fe5e4
004fe5e0  96 47 f8 eb                                      bl #0x310440
004fe5e4  2c 00 94 e5                                      ldr r0, [r4, #0x2c]
004fe5e8  01 10 a0 e3                                      mov r1, #1
004fe5ec  00 60 a0 e3                                      mov r6, #0
004fe5f0  01 00 80 e0                                      add r0, r0, r1
004fe5f4  dc 47 f8 eb                                      bl #0x31056c
004fe5f8  2c 20 94 e5                                      ldr r2, [r4, #0x2c]
004fe5fc  00 10 a0 e1                                      mov r1, r0
004fe600  30 00 84 e5                                      str r0, [r4, #0x30]
004fe604  06 30 a0 e1                                      mov r3, r6
004fe608  05 00 a0 e1                                      mov r0, r5
004fe60c  90 63 f8 eb                                      bl #0x317454
004fe610  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
004fe614  30 20 94 e5                                      ldr r2, [r4, #0x30]
004fe618  05 00 a0 e1                                      mov r0, r5
004fe61c  34 10 84 e2                                      add r1, r4, #0x34
004fe620  03 60 c2 e7                                      strb r6, [r2, r3]
004fe624  99 6a fd eb                                      bl #0x459090
004fe628  01 30 a0 e3                                      mov r3, #1
004fe62c  06 00 53 e1                                      cmp r3, r6
004fe630  04 30 8d e5                                      str r3, [sp, #4]
004fe634  0f 00 00 1a                                      bne #0x4fe678
004fe638  35 30 84 e2                                      add r3, r4, #0x35
004fe63c  36 20 84 e2                                      add r2, r4, #0x36
004fe640  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe644  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe648  02 00 53 e1                                      cmp r3, r2
004fe64c  01 10 20 e0                                      eor r1, r0, r1
004fe650  01 10 43 e5                                      strb r1, [r3, #-1]
004fe654  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe658  00 10 21 e0                                      eor r1, r1, r0
004fe65c  01 10 c2 e5                                      strb r1, [r2, #1]
004fe660  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe664  01 20 42 e2                                      sub r2, r2, #1
004fe668  00 10 21 e0                                      eor r1, r1, r0
004fe66c  01 10 43 e5                                      strb r1, [r3, #-1]
004fe670  01 30 83 e2                                      add r3, r3, #1
004fe674  f1 ff ff 3a                                      blo #0x4fe640
004fe678  05 00 a0 e1                                      mov r0, r5
004fe67c  38 10 84 e2                                      add r1, r4, #0x38
004fe680  82 6a fd eb                                      bl #0x459090
004fe684  01 30 a0 e3                                      mov r3, #1
004fe688  00 00 53 e3                                      cmp r3, #0
004fe68c  04 30 8d e5                                      str r3, [sp, #4]
004fe690  0f 00 00 1a                                      bne #0x4fe6d4
004fe694  39 30 84 e2                                      add r3, r4, #0x39
004fe698  3a 20 84 e2                                      add r2, r4, #0x3a
004fe69c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe6a0  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe6a4  02 00 53 e1                                      cmp r3, r2
004fe6a8  01 10 20 e0                                      eor r1, r0, r1
004fe6ac  01 10 43 e5                                      strb r1, [r3, #-1]
004fe6b0  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe6b4  00 10 21 e0                                      eor r1, r1, r0
004fe6b8  01 10 c2 e5                                      strb r1, [r2, #1]
004fe6bc  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe6c0  01 20 42 e2                                      sub r2, r2, #1
004fe6c4  00 10 21 e0                                      eor r1, r1, r0
004fe6c8  01 10 43 e5                                      strb r1, [r3, #-1]
004fe6cc  01 30 83 e2                                      add r3, r3, #1
004fe6d0  f1 ff ff 3a                                      blo #0x4fe69c
004fe6d4  05 00 a0 e1                                      mov r0, r5
004fe6d8  3c 10 84 e2                                      add r1, r4, #0x3c
004fe6dc  6b 6a fd eb                                      bl #0x459090
004fe6e0  01 30 a0 e3                                      mov r3, #1
004fe6e4  00 00 53 e3                                      cmp r3, #0
004fe6e8  04 30 8d e5                                      str r3, [sp, #4]
004fe6ec  0f 00 00 1a                                      bne #0x4fe730
004fe6f0  3d 30 84 e2                                      add r3, r4, #0x3d
004fe6f4  3e 20 84 e2                                      add r2, r4, #0x3e
004fe6f8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe6fc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fe700  02 00 53 e1                                      cmp r3, r2
004fe704  01 10 20 e0                                      eor r1, r0, r1
004fe708  01 10 43 e5                                      strb r1, [r3, #-1]
004fe70c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fe710  00 10 21 e0                                      eor r1, r1, r0
004fe714  01 10 c2 e5                                      strb r1, [r2, #1]
004fe718  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fe71c  01 20 42 e2                                      sub r2, r2, #1
004fe720  00 10 21 e0                                      eor r1, r1, r0
004fe724  01 10 43 e5                                      strb r1, [r3, #-1]
004fe728  01 30 83 e2                                      add r3, r3, #1
004fe72c  f1 ff ff 3a                                      blo #0x4fe6f8
004fe730  05 00 a0 e1                                      mov r0, r5
004fe734  40 10 84 e2                                      add r1, r4, #0x40
004fe738  54 6a fd eb                                      bl #0x459090
004fe73c  01 30 a0 e3                                      mov r3, #1
004fe740  00 00 53 e3                                      cmp r3, #0
004fe744  04 30 8d e5                                      str r3, [sp, #4]
004fe748  0f 00 00 1a                                      bne #0x4fe78c
004fe74c  42 30 84 e2                                      add r3, r4, #0x42
004fe750  41 40 84 e2                                      add r4, r4, #0x41
004fe754  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fe758  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fe75c  03 00 54 e1                                      cmp r4, r3
004fe760  02 20 21 e0                                      eor r2, r1, r2
004fe764  01 20 44 e5                                      strb r2, [r4, #-1]
004fe768  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fe76c  01 20 22 e0                                      eor r2, r2, r1
004fe770  01 20 c3 e5                                      strb r2, [r3, #1]
004fe774  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fe778  01 30 43 e2                                      sub r3, r3, #1
004fe77c  01 20 22 e0                                      eor r2, r2, r1
004fe780  01 20 44 e5                                      strb r2, [r4, #-1]
004fe784  01 40 84 e2                                      add r4, r4, #1
004fe788  f1 ff ff 3a                                      blo #0x4fe754
004fe78c  08 d0 8d e2                                      add sp, sp, #8
004fe790  70 80 bd e8                                      pop {r4, r5, r6, pc}
