; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003f9d78, declared_size=136, range_size=136, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstanceeqERKS_
; demangled: ItemInstance::operator==(ItemInstance const&) const
; decoder-mode: arm
003f9d78  04 40 2d e5                                      str r4, [sp, #-4]!
003f9d7c  04 20 90 e5                                      ldr r2, [r0, #4]
003f9d80  04 30 91 e5                                      ldr r3, [r1, #4]
003f9d84  03 00 52 e1                                      cmp r2, r3
003f9d88  02 00 00 0a                                      beq #0x3f9d98
003f9d8c  00 00 a0 e3                                      mov r0, #0
003f9d90  10 00 bd e8                                      ldm sp!, {r4}
003f9d94  1e ff 2f e1                                      bx lr
003f9d98  60 20 90 e5                                      ldr r2, [r0, #0x60]
003f9d9c  5c 40 90 e5                                      ldr r4, [r0, #0x5c]
003f9da0  60 30 91 e5                                      ldr r3, [r1, #0x60]
003f9da4  5c c0 91 e5                                      ldr ip, [r1, #0x5c]
003f9da8  02 00 64 e0                                      rsb r0, r4, r2
003f9dac  c0 02 a0 e1                                      asr r0, r0, #5
003f9db0  03 30 6c e0                                      rsb r3, ip, r3
003f9db4  c3 02 50 e1                                      cmp r0, r3, asr #5
003f9db8  f3 ff ff 1a                                      bne #0x3f9d8c
003f9dbc  00 00 50 e3                                      cmp r0, #0
003f9dc0  0c 00 00 0a                                      beq #0x3f9df8
003f9dc4  00 30 9c e5                                      ldr r3, [ip]
003f9dc8  00 20 94 e5                                      ldr r2, [r4]
003f9dcc  03 00 52 e1                                      cmp r2, r3
003f9dd0  00 30 a0 03                                      moveq r3, #0
003f9dd4  04 00 00 0a                                      beq #0x3f9dec
003f9dd8  eb ff ff ea                                      b #0x3f9d8c
003f9ddc  83 12 94 e7                                      ldr r1, [r4, r3, lsl #5]
003f9de0  83 22 9c e7                                      ldr r2, [ip, r3, lsl #5]
003f9de4  02 00 51 e1                                      cmp r1, r2
003f9de8  e7 ff ff 1a                                      bne #0x3f9d8c
003f9dec  01 30 83 e2                                      add r3, r3, #1
003f9df0  00 00 53 e1                                      cmp r3, r0
003f9df4  f8 ff ff 1a                                      bne #0x3f9ddc
003f9df8  01 00 a0 e3                                      mov r0, #1
003f9dfc  e3 ff ff ea                                      b #0x3f9d90

; FUNCTION 0x003f9e00, declared_size=8, range_size=8, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance9GetItemIdEv
; demangled: ItemInstance::GetItemId() const
; decoder-mode: arm
003f9e00  04 00 90 e5                                      ldr r0, [r0, #4]
003f9e04  1e ff 2f e1                                      bx lr

; FUNCTION 0x003f9e08, declared_size=44, range_size=44, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance7GetItemEv
; demangled: ItemInstance::GetItem() const
; decoder-mode: arm
003f9e08  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003f9e0c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003f9e10  04 20 90 e5                                      ldr r2, [r0, #4]
003f9e14  03 30 8f e0                                      add r3, pc, r3
003f9e18  01 10 93 e7                                      ldr r1, [r3, r1]
003f9e1c  a4 00 a0 e3                                      mov r0, #0xa4
003f9e20  00 30 91 e5                                      ldr r3, [r1]
003f9e24  90 32 20 e0                                      mla r0, r0, r2, r3
003f9e28  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003f9e2c  7c ac 59 00 6c 28 00 00                          .byte 0x7c, 0xac, 0x59, 0x00, 0x6c, 0x28, 0x00, 0x00

; FUNCTION 0x003f9e34, declared_size=36, range_size=36, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance13GetPickUpTypeEv
; demangled: ItemInstance::GetPickUpType() const
; decoder-mode: arm
003f9e34  10 40 2d e9                                      push {r4, lr}
003f9e38  f8 35 d0 e1                                      ldrsh r3, [r0, #0x58]
003f9e3c  01 00 73 e3                                      cmn r3, #1
003f9e40  01 00 00 0a                                      beq #0x3f9e4c
003f9e44  03 00 a0 e1                                      mov r0, r3
003f9e48  10 80 bd e8                                      pop {r4, pc}
003f9e4c  ed ff ff eb                                      bl #0x3f9e08
003f9e50  0c 00 90 e5                                      ldr r0, [r0, #0xc]
003f9e54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f9e58, declared_size=16, range_size=16, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance11IsStackableEv
; demangled: ItemInstance::IsStackable() const
; decoder-mode: arm
003f9e58  10 40 2d e9                                      push {r4, lr}
003f9e5c  e9 ff ff eb                                      bl #0x3f9e08
003f9e60  1c 00 d0 e5                                      ldrb r0, [r0, #0x1c]
003f9e64  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f9e68, declared_size=24, range_size=24, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance12IsEquippableEv
; demangled: ItemInstance::IsEquippable() const
; decoder-mode: arm
003f9e68  10 40 2d e9                                      push {r4, lr}
003f9e6c  e5 ff ff eb                                      bl #0x3f9e08
003f9e70  68 00 90 e5                                      ldr r0, [r0, #0x68]
003f9e74  01 00 90 e2                                      adds r0, r0, #1
003f9e78  01 00 a0 13                                      movne r0, #1
003f9e7c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003f9e80, declared_size=20, range_size=20, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance12GetNumPowersEv
; demangled: ItemInstance::GetNumPowers() const
; decoder-mode: arm
003f9e80  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
003f9e84  60 00 90 e5                                      ldr r0, [r0, #0x60]
003f9e88  00 00 63 e0                                      rsb r0, r3, r0
003f9e8c  c0 02 a0 e1                                      asr r0, r0, #5
003f9e90  1e ff 2f e1                                      bx lr

; FUNCTION 0x003f9e94, declared_size=48, range_size=48, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance11GetIconNameEv
; demangled: ItemInstance::GetIconName() const
; decoder-mode: arm
003f9e94  20 30 9f e5                                      ldr r3, [pc, #0x20]
003f9e98  20 20 9f e5                                      ldr r2, [pc, #0x20]
003f9e9c  04 10 90 e5                                      ldr r1, [r0, #4]
003f9ea0  03 30 8f e0                                      add r3, pc, r3
003f9ea4  02 20 93 e7                                      ldr r2, [r3, r2]
003f9ea8  a4 30 a0 e3                                      mov r3, #0xa4
003f9eac  00 20 92 e5                                      ldr r2, [r2]
003f9eb0  93 21 23 e0                                      mla r3, r3, r1, r2
003f9eb4  08 00 93 e5                                      ldr r0, [r3, #8]
003f9eb8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003f9ebc  f0 ab 59 00 6c 28 00 00                          .byte 0xf0, 0xab, 0x59, 0x00, 0x6c, 0x28, 0x00, 0x00

; FUNCTION 0x003f9ec4, declared_size=196, range_size=196, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance8GetPowerEj
; demangled: ItemInstance::GetPower(unsigned int) const
; decoder-mode: arm
003f9ec4  70 40 2d e9                                      push {r4, r5, r6, lr}
003f9ec8  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
003f9ecc  60 20 90 e5                                      ldr r2, [r0, #0x60]
003f9ed0  94 40 9f e5                                      ldr r4, [pc, #0x94]
003f9ed4  08 d0 4d e2                                      sub sp, sp, #8
003f9ed8  02 20 63 e0                                      rsb r2, r3, r2
003f9edc  c2 02 51 e1                                      cmp r1, r2, asr #5
003f9ee0  00 50 a0 e1                                      mov r5, r0
003f9ee4  01 60 a0 e1                                      mov r6, r1
003f9ee8  04 40 8f e0                                      add r4, pc, r4
003f9eec  08 00 00 3a                                      blo #0x3f9f14
003f9ef0  78 20 9f e5                                      ldr r2, [pc, #0x78]
003f9ef4  02 20 94 e7                                      ldr r2, [r4, r2]
003f9ef8  00 20 92 e5                                      ldr r2, [r2]
003f9efc  02 00 52 e3                                      cmp r2, #2
003f9f00  00 20 a0 03                                      moveq r2, #0
003f9f04  00 20 82 05                                      streq r2, [r2]
003f9f08  01 00 00 0a                                      beq #0x3f9f14
003f9f0c  01 00 52 e3                                      cmp r2, #1
003f9f10  07 00 00 0a                                      beq #0x3f9f34
003f9f14  86 22 93 e7                                      ldr r2, [r3, r6, lsl #5]
003f9f18  54 30 9f e5                                      ldr r3, [pc, #0x54]
003f9f1c  28 00 a0 e3                                      mov r0, #0x28
003f9f20  03 30 94 e7                                      ldr r3, [r4, r3]
003f9f24  00 30 93 e5                                      ldr r3, [r3]
003f9f28  90 32 20 e0                                      mla r0, r0, r2, r3
003f9f2c  08 d0 8d e2                                      add sp, sp, #8
003f9f30  70 80 bd e8                                      pop {r4, r5, r6, pc}
003f9f34  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003f9f38  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003f9f3c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003f9f40  00 00 94 e7                                      ldr r0, [r4, r0]
003f9f44  38 30 9f e5                                      ldr r3, [pc, #0x38]
003f9f48  c5 c2 00 e3                                      movw ip, #0x2c5
003f9f4c  01 10 8f e0                                      add r1, pc, r1
003f9f50  03 30 8f e0                                      add r3, pc, r3
003f9f54  a8 00 80 e2                                      add r0, r0, #0xa8
003f9f58  02 20 8f e0                                      add r2, pc, r2
003f9f5c  00 c0 8d e5                                      str ip, [sp]
003f9f60  27 50 fc eb                                      bl #0x30e004
003f9f64  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
003f9f68  e9 ff ff ea                                      b #0x3f9f14
; mapping-symbol data/literal pool
003f9f6c  a8 ab 59 00 c0 39 00 00 e8 3b 00 00 c0 19 00 00  .byte 0xa8, 0xab, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xe8, 0x3b, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003f9f7c  8c 44 4c 00 d0 cf 4c 00 f8 cf 4c 00              .byte 0x8c, 0x44, 0x4c, 0x00, 0xd0, 0xcf, 0x4c, 0x00, 0xf8, 0xcf, 0x4c, 0x00

; FUNCTION 0x003f9f88, declared_size=176, range_size=176, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance12GetPowerDescEj
; demangled: ItemInstance::GetPowerDesc(unsigned int) const
; decoder-mode: arm
003f9f88  30 40 2d e9                                      push {r4, r5, lr}
003f9f8c  00 40 a0 e1                                      mov r4, r0
003f9f90  5c 20 90 e5                                      ldr r2, [r0, #0x5c]
003f9f94  60 00 90 e5                                      ldr r0, [r0, #0x60]
003f9f98  80 30 9f e5                                      ldr r3, [pc, #0x80]
003f9f9c  0c d0 4d e2                                      sub sp, sp, #0xc
003f9fa0  00 00 62 e0                                      rsb r0, r2, r0
003f9fa4  c0 02 51 e1                                      cmp r1, r0, asr #5
003f9fa8  01 50 a0 e1                                      mov r5, r1
003f9fac  03 30 8f e0                                      add r3, pc, r3
003f9fb0  08 00 00 3a                                      blo #0x3f9fd8
003f9fb4  68 10 9f e5                                      ldr r1, [pc, #0x68]
003f9fb8  01 10 93 e7                                      ldr r1, [r3, r1]
003f9fbc  00 10 91 e5                                      ldr r1, [r1]
003f9fc0  02 00 51 e3                                      cmp r1, #2
003f9fc4  00 30 a0 03                                      moveq r3, #0
003f9fc8  00 30 83 05                                      streq r3, [r3]
003f9fcc  01 00 00 0a                                      beq #0x3f9fd8
003f9fd0  01 00 51 e3                                      cmp r1, #1
003f9fd4  03 00 00 0a                                      beq #0x3f9fe8
003f9fd8  85 52 82 e0                                      add r5, r2, r5, lsl #5
003f9fdc  1c 00 95 e5                                      ldr r0, [r5, #0x1c]
003f9fe0  0c d0 8d e2                                      add sp, sp, #0xc
003f9fe4  30 80 bd e8                                      pop {r4, r5, pc}
003f9fe8  38 00 9f e5                                      ldr r0, [pc, #0x38]
003f9fec  38 10 9f e5                                      ldr r1, [pc, #0x38]
003f9ff0  38 20 9f e5                                      ldr r2, [pc, #0x38]
003f9ff4  00 00 93 e7                                      ldr r0, [r3, r0]
003f9ff8  34 30 9f e5                                      ldr r3, [pc, #0x34]
003f9ffc  02 20 8f e0                                      add r2, pc, r2
003fa000  ba c2 00 e3                                      movw ip, #0x2ba
003fa004  01 10 8f e0                                      add r1, pc, r1
003fa008  a8 00 80 e2                                      add r0, r0, #0xa8
003fa00c  03 30 8f e0                                      add r3, pc, r3
003fa010  00 c0 8d e5                                      str ip, [sp]
003fa014  fa 4f fc eb                                      bl #0x30e004
003fa018  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
003fa01c  ed ff ff ea                                      b #0x3f9fd8
; mapping-symbol data/literal pool
003fa020  e4 aa 59 00 c0 39 00 00 c0 19 00 00 d4 43 4c 00  .byte 0xe4, 0xaa, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd4, 0x43, 0x4c, 0x00
003fa030  2c cf 4c 00 3c cf 4c 00                          .byte 0x2c, 0xcf, 0x4c, 0x00, 0x3c, 0xcf, 0x4c, 0x00

; FUNCTION 0x003fa038, declared_size=172, range_size=172, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance10GetPowerIdEj
; demangled: ItemInstance::GetPowerId(unsigned int) const
; decoder-mode: arm
003fa038  30 40 2d e9                                      push {r4, r5, lr}
003fa03c  00 40 a0 e1                                      mov r4, r0
003fa040  5c 20 90 e5                                      ldr r2, [r0, #0x5c]
003fa044  60 00 90 e5                                      ldr r0, [r0, #0x60]
003fa048  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003fa04c  0c d0 4d e2                                      sub sp, sp, #0xc
003fa050  00 00 62 e0                                      rsb r0, r2, r0
003fa054  c0 02 51 e1                                      cmp r1, r0, asr #5
003fa058  01 50 a0 e1                                      mov r5, r1
003fa05c  03 30 8f e0                                      add r3, pc, r3
003fa060  08 00 00 3a                                      blo #0x3fa088
003fa064  64 10 9f e5                                      ldr r1, [pc, #0x64]
003fa068  01 10 93 e7                                      ldr r1, [r3, r1]
003fa06c  00 10 91 e5                                      ldr r1, [r1]
003fa070  02 00 51 e3                                      cmp r1, #2
003fa074  00 30 a0 03                                      moveq r3, #0
003fa078  00 30 83 05                                      streq r3, [r3]
003fa07c  01 00 00 0a                                      beq #0x3fa088
003fa080  01 00 51 e3                                      cmp r1, #1
003fa084  02 00 00 0a                                      beq #0x3fa094
003fa088  85 02 92 e7                                      ldr r0, [r2, r5, lsl #5]
003fa08c  0c d0 8d e2                                      add sp, sp, #0xc
003fa090  30 80 bd e8                                      pop {r4, r5, pc}
003fa094  38 00 9f e5                                      ldr r0, [pc, #0x38]
003fa098  38 10 9f e5                                      ldr r1, [pc, #0x38]
003fa09c  38 20 9f e5                                      ldr r2, [pc, #0x38]
003fa0a0  00 00 93 e7                                      ldr r0, [r3, r0]
003fa0a4  34 30 9f e5                                      ldr r3, [pc, #0x34]
003fa0a8  02 20 8f e0                                      add r2, pc, r2
003fa0ac  af c2 00 e3                                      movw ip, #0x2af
003fa0b0  01 10 8f e0                                      add r1, pc, r1
003fa0b4  a8 00 80 e2                                      add r0, r0, #0xa8
003fa0b8  03 30 8f e0                                      add r3, pc, r3
003fa0bc  00 c0 8d e5                                      str ip, [sp]
003fa0c0  cf 4f fc eb                                      bl #0x30e004
003fa0c4  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
003fa0c8  ee ff ff ea                                      b #0x3fa088
; mapping-symbol data/literal pool
003fa0cc  34 aa 59 00 c0 39 00 00 c0 19 00 00 28 43 4c 00  .byte 0x34, 0xaa, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x28, 0x43, 0x4c, 0x00
003fa0dc  80 ce 4c 00 90 ce 4c 00                          .byte 0x80, 0xce, 0x4c, 0x00, 0x90, 0xce, 0x4c, 0x00

; FUNCTION 0x003fa0e4, declared_size=152, range_size=152, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance6SetQtyEi
; demangled: ItemInstance::SetQty(int)
; decoder-mode: arm
003fa0e4  30 40 2d e9                                      push {r4, r5, lr}
003fa0e8  74 30 9f e5                                      ldr r3, [pc, #0x74]
003fa0ec  00 50 51 e2                                      subs r5, r1, #0
003fa0f0  0c d0 4d e2                                      sub sp, sp, #0xc
003fa0f4  00 40 a0 e1                                      mov r4, r0
003fa0f8  03 30 8f e0                                      add r3, pc, r3
003fa0fc  02 00 00 ba                                      blt #0x3fa10c
003fa100  b0 55 c4 e1                                      strh r5, [r4, #0x50]
003fa104  0c d0 8d e2                                      add sp, sp, #0xc
003fa108  30 80 bd e8                                      pop {r4, r5, pc}
003fa10c  54 20 9f e5                                      ldr r2, [pc, #0x54]
003fa110  02 20 93 e7                                      ldr r2, [r3, r2]
003fa114  00 20 92 e5                                      ldr r2, [r2]
003fa118  02 00 52 e3                                      cmp r2, #2
003fa11c  00 30 a0 03                                      moveq r3, #0
003fa120  00 30 83 05                                      streq r3, [r3]
003fa124  f5 ff ff 0a                                      beq #0x3fa100
003fa128  01 00 52 e3                                      cmp r2, #1
003fa12c  f3 ff ff 1a                                      bne #0x3fa100
003fa130  34 00 9f e5                                      ldr r0, [pc, #0x34]
003fa134  34 10 9f e5                                      ldr r1, [pc, #0x34]
003fa138  34 20 9f e5                                      ldr r2, [pc, #0x34]
003fa13c  00 00 93 e7                                      ldr r0, [r3, r0]
003fa140  30 30 9f e5                                      ldr r3, [pc, #0x30]
003fa144  23 c2 00 e3                                      movw ip, #0x223
003fa148  01 10 8f e0                                      add r1, pc, r1
003fa14c  02 20 8f e0                                      add r2, pc, r2
003fa150  03 30 8f e0                                      add r3, pc, r3
003fa154  a8 00 80 e2                                      add r0, r0, #0xa8
003fa158  00 c0 8d e5                                      str ip, [sp]
003fa15c  a8 4f fc eb                                      bl #0x30e004
003fa160  e6 ff ff ea                                      b #0x3fa100
; mapping-symbol data/literal pool
003fa164  98 a9 59 00 c0 39 00 00 c0 19 00 00 90 42 4c 00  .byte 0x98, 0xa9, 0x59, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x90, 0x42, 0x4c, 0x00
003fa174  44 ce 4c 00 f8 cd 4c 00                          .byte 0x44, 0xce, 0x4c, 0x00, 0xf8, 0xcd, 0x4c, 0x00

; FUNCTION 0x003fa17c, declared_size=12, range_size=12, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance6AddQtyEi
; demangled: ItemInstance::AddQty(int)
; decoder-mode: arm
003fa17c  f0 35 d0 e1                                      ldrsh r3, [r0, #0x50]
003fa180  03 10 81 e0                                      add r1, r1, r3
003fa184  d6 ff ff ea                                      b #0x3fa0e4

; FUNCTION 0x003fa1fc, declared_size=92, range_size=92, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstanceltERKS_
; demangled: ItemInstance::operator<(ItemInstance const&) const
; decoder-mode: arm
003fa1fc  70 40 2d e9                                      push {r4, r5, r6, lr}
003fa200  01 40 a0 e1                                      mov r4, r1
003fa204  00 60 a0 e1                                      mov r6, r0
003fa208  1c ff ff eb                                      bl #0x3f9e80
003fa20c  00 50 a0 e1                                      mov r5, r0
003fa210  04 00 a0 e1                                      mov r0, r4
003fa214  19 ff ff eb                                      bl #0x3f9e80
003fa218  00 00 55 e1                                      cmp r5, r0
003fa21c  08 00 00 0a                                      beq #0x3fa244
003fa220  06 00 a0 e1                                      mov r0, r6
003fa224  15 ff ff eb                                      bl #0x3f9e80
003fa228  00 50 a0 e1                                      mov r5, r0
003fa22c  04 00 a0 e1                                      mov r0, r4
003fa230  12 ff ff eb                                      bl #0x3f9e80
003fa234  00 00 55 e1                                      cmp r5, r0
003fa238  00 00 a0 93                                      movls r0, #0
003fa23c  01 00 a0 83                                      movhi r0, #1
003fa240  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fa244  1c 00 96 e5                                      ldr r0, [r6, #0x1c]
003fa248  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
003fa24c  32 50 fc eb                                      bl #0x30e31c
003fa250  a0 0f a0 e1                                      lsr r0, r0, #0x1f
003fa254  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003fa330, declared_size=668, range_size=668, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance14IsEquippableByEP9Character
; demangled: ItemInstance::IsEquippableBy(Character*) const
; decoder-mode: arm
003fa330  70 40 2d e9                                      push {r4, r5, r6, lr}
003fa334  54 32 9f e5                                      ldr r3, [pc, #0x254]
003fa338  00 40 51 e2                                      subs r4, r1, #0
003fa33c  08 d0 4d e2                                      sub sp, sp, #8
003fa340  00 50 a0 e1                                      mov r5, r0
003fa344  03 30 8f e0                                      add r3, pc, r3
003fa348  46 00 00 0a                                      beq #0x3fa468
003fa34c  10 0d 10 eb                                      bl #0x7fd794
003fa350  05 30 d0 e5                                      ldrb r3, [r0, #5]
003fa354  00 00 53 e3                                      cmp r3, #0
003fa358  4e 00 00 1a                                      bne #0x3fa498
003fa35c  05 00 a0 e1                                      mov r0, r5
003fa360  a8 fe ff eb                                      bl #0x3f9e08
003fa364  00 50 a0 e1                                      mov r5, r0
003fa368  04 00 a0 e1                                      mov r0, r4
003fa36c  22 05 ff eb                                      bl #0x3bb7fc
003fa370  88 30 95 e5                                      ldr r3, [r5, #0x88]
003fa374  00 60 a0 e1                                      mov r6, r0
003fa378  01 30 43 e2                                      sub r3, r3, #1
003fa37c  08 00 53 e3                                      cmp r3, #8
003fa380  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003fa384  0c 00 00 ea                                      b #0x3fa3bc
003fa388  4a 00 00 ea                                      b #0x3fa4b8
003fa38c  6c 00 00 ea                                      b #0x3fa544
003fa390  66 00 00 ea                                      b #0x3fa530
003fa394  60 00 00 ea                                      b #0x3fa51c
003fa398  03 00 00 ea                                      b #0x3fa3ac
003fa39c  59 00 00 ea                                      b #0x3fa508
003fa3a0  53 00 00 ea                                      b #0x3fa4f4
003fa3a4  4d 00 00 ea                                      b #0x3fa4e0
003fa3a8  47 00 00 ea                                      b #0x3fa4cc
003fa3ac  e0 01 9f e5                                      ldr r0, [pc, #0x1e0]
003fa3b0  00 00 8f e0                                      add r0, pc, r0
003fa3b4  73 ff ff eb                                      bl #0x3fa188
003fa3b8  00 60 a0 e1                                      mov r6, r0
003fa3bc  44 30 01 e3                                      movw r3, #0x1044
003fa3c0  03 30 94 e7                                      ldr r3, [r4, r3]
003fa3c4  74 20 95 e5                                      ldr r2, [r5, #0x74]
003fa3c8  02 04 53 e1                                      cmp r3, r2, lsl #8
003fa3cc  2e 00 00 ba                                      blt #0x3fa48c
003fa3d0  5c 32 01 e3                                      movw r3, #0x125c
003fa3d4  03 10 94 e7                                      ldr r1, [r4, r3]
003fa3d8  4c 32 01 e3                                      movw r3, #0x124c
003fa3dc  03 30 94 e7                                      ldr r3, [r4, r3]
003fa3e0  78 20 95 e5                                      ldr r2, [r5, #0x78]
003fa3e4  03 30 81 e0                                      add r3, r1, r3
003fa3e8  02 04 53 e1                                      cmp r3, r2, lsl #8
003fa3ec  26 00 00 ba                                      blt #0x3fa48c
003fa3f0  60 32 01 e3                                      movw r3, #0x1260
003fa3f4  03 10 94 e7                                      ldr r1, [r4, r3]
003fa3f8  50 32 01 e3                                      movw r3, #0x1250
003fa3fc  03 30 94 e7                                      ldr r3, [r4, r3]
003fa400  7c 20 95 e5                                      ldr r2, [r5, #0x7c]
003fa404  03 30 81 e0                                      add r3, r1, r3
003fa408  02 04 53 e1                                      cmp r3, r2, lsl #8
003fa40c  1e 00 00 ba                                      blt #0x3fa48c
003fa410  64 32 01 e3                                      movw r3, #0x1264
003fa414  03 10 94 e7                                      ldr r1, [r4, r3]
003fa418  54 32 01 e3                                      movw r3, #0x1254
003fa41c  03 30 94 e7                                      ldr r3, [r4, r3]
003fa420  80 20 95 e5                                      ldr r2, [r5, #0x80]
003fa424  03 30 81 e0                                      add r3, r1, r3
003fa428  02 04 53 e1                                      cmp r3, r2, lsl #8
003fa42c  16 00 00 ba                                      blt #0x3fa48c
003fa430  68 32 01 e3                                      movw r3, #0x1268
003fa434  03 10 94 e7                                      ldr r1, [r4, r3]
003fa438  58 32 01 e3                                      movw r3, #0x1258
003fa43c  03 30 94 e7                                      ldr r3, [r4, r3]
003fa440  84 20 95 e5                                      ldr r2, [r5, #0x84]
003fa444  03 30 81 e0                                      add r3, r1, r3
003fa448  02 04 53 e1                                      cmp r3, r2, lsl #8
003fa44c  0e 00 00 ba                                      blt #0x3fa48c
003fa450  04 00 a0 e1                                      mov r0, r4
003fa454  e8 04 ff eb                                      bl #0x3bb7fc
003fa458  00 00 56 e1                                      cmp r6, r0
003fa45c  00 00 a0 13                                      movne r0, #0
003fa460  01 00 a0 03                                      moveq r0, #1
003fa464  09 00 00 ea                                      b #0x3fa490
003fa468  28 21 9f e5                                      ldr r2, [pc, #0x128]
003fa46c  02 20 93 e7                                      ldr r2, [r3, r2]
003fa470  00 20 92 e5                                      ldr r2, [r2]
003fa474  02 00 52 e3                                      cmp r2, #2
003fa478  00 40 84 05                                      streq r4, [r4]
003fa47c  04 00 a0 01                                      moveq r0, r4
003fa480  02 00 00 0a                                      beq #0x3fa490
003fa484  01 00 52 e3                                      cmp r2, #1
003fa488  32 00 00 0a                                      beq #0x3fa558
003fa48c  00 00 a0 e3                                      mov r0, #0
003fa490  08 d0 8d e2                                      add sp, sp, #8
003fa494  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fa498  00 30 94 e5                                      ldr r3, [r4]
003fa49c  04 00 a0 e1                                      mov r0, r4
003fa4a0  0f e0 a0 e1                                      mov lr, pc
003fa4a4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
003fa4a8  00 00 50 e3                                      cmp r0, #0
003fa4ac  01 00 a0 13                                      movne r0, #1
003fa4b0  f6 ff ff 1a                                      bne #0x3fa490
003fa4b4  a8 ff ff ea                                      b #0x3fa35c
003fa4b8  dc 00 9f e5                                      ldr r0, [pc, #0xdc]
003fa4bc  00 00 8f e0                                      add r0, pc, r0
003fa4c0  30 ff ff eb                                      bl #0x3fa188
003fa4c4  00 60 a0 e1                                      mov r6, r0
003fa4c8  bb ff ff ea                                      b #0x3fa3bc
003fa4cc  cc 00 9f e5                                      ldr r0, [pc, #0xcc]
003fa4d0  00 00 8f e0                                      add r0, pc, r0
003fa4d4  2b ff ff eb                                      bl #0x3fa188
003fa4d8  00 60 a0 e1                                      mov r6, r0
003fa4dc  b6 ff ff ea                                      b #0x3fa3bc
003fa4e0  bc 00 9f e5                                      ldr r0, [pc, #0xbc]
003fa4e4  00 00 8f e0                                      add r0, pc, r0
003fa4e8  26 ff ff eb                                      bl #0x3fa188
003fa4ec  00 60 a0 e1                                      mov r6, r0
003fa4f0  b1 ff ff ea                                      b #0x3fa3bc
003fa4f4  ac 00 9f e5                                      ldr r0, [pc, #0xac]
003fa4f8  00 00 8f e0                                      add r0, pc, r0
003fa4fc  21 ff ff eb                                      bl #0x3fa188
003fa500  00 60 a0 e1                                      mov r6, r0
003fa504  ac ff ff ea                                      b #0x3fa3bc
003fa508  9c 00 9f e5                                      ldr r0, [pc, #0x9c]
003fa50c  00 00 8f e0                                      add r0, pc, r0
003fa510  1c ff ff eb                                      bl #0x3fa188
003fa514  00 60 a0 e1                                      mov r6, r0
003fa518  a7 ff ff ea                                      b #0x3fa3bc
003fa51c  8c 00 9f e5                                      ldr r0, [pc, #0x8c]
003fa520  00 00 8f e0                                      add r0, pc, r0
003fa524  17 ff ff eb                                      bl #0x3fa188
003fa528  00 60 a0 e1                                      mov r6, r0
003fa52c  a2 ff ff ea                                      b #0x3fa3bc
003fa530  7c 00 9f e5                                      ldr r0, [pc, #0x7c]
003fa534  00 00 8f e0                                      add r0, pc, r0
003fa538  12 ff ff eb                                      bl #0x3fa188
003fa53c  00 60 a0 e1                                      mov r6, r0
003fa540  9d ff ff ea                                      b #0x3fa3bc
003fa544  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
003fa548  00 00 8f e0                                      add r0, pc, r0
003fa54c  0d ff ff eb                                      bl #0x3fa188
003fa550  00 60 a0 e1                                      mov r6, r0
003fa554  98 ff ff ea                                      b #0x3fa3bc
003fa558  5c 00 9f e5                                      ldr r0, [pc, #0x5c]
003fa55c  5c 10 9f e5                                      ldr r1, [pc, #0x5c]
003fa560  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003fa564  00 00 93 e7                                      ldr r0, [r3, r0]
003fa568  58 30 9f e5                                      ldr r3, [pc, #0x58]
003fa56c  ef c1 00 e3                                      movw ip, #0x1ef
003fa570  01 10 8f e0                                      add r1, pc, r1
003fa574  a8 00 80 e2                                      add r0, r0, #0xa8
003fa578  02 20 8f e0                                      add r2, pc, r2
003fa57c  03 30 8f e0                                      add r3, pc, r3
003fa580  00 c0 8d e5                                      str ip, [sp]
003fa584  9e 4e fc eb                                      bl #0x30e004
003fa588  04 00 a0 e1                                      mov r0, r4
003fa58c  bf ff ff ea                                      b #0x3fa490
; mapping-symbol data/literal pool
003fa590  4c a7 59 00 a8 cc 4c 00 c0 39 00 00 a4 98 4c 00  .byte 0x4c, 0xa7, 0x59, 0x00, 0xa8, 0xcc, 0x4c, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xa4, 0x98, 0x4c, 0x00
003fa5a0  40 cb 4c 00 0c cb 4c 00 e8 ca 4c 00 34 cb 4c 00  .byte 0x40, 0xcb, 0x4c, 0x00, 0x0c, 0xcb, 0x4c, 0x00, 0xe8, 0xca, 0x4c, 0x00, 0x34, 0xcb, 0x4c, 0x00
003fa5b0  10 cb 4c 00 6c ca 4c 00 78 ca 4c 00 c0 19 00 00  .byte 0x10, 0xcb, 0x4c, 0x00, 0x6c, 0xca, 0x4c, 0x00, 0x78, 0xca, 0x4c, 0x00, 0xc0, 0x19, 0x00, 0x00
003fa5c0  68 3e 4c 00 10 7b 4f 00 cc c9 4c 00              .byte 0x68, 0x3e, 0x4c, 0x00, 0x10, 0x7b, 0x4f, 0x00, 0xcc, 0xc9, 0x4c, 0x00

; FUNCTION 0x003fa5cc, declared_size=256, range_size=256, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance10GetFontDefEi
; demangled: ItemInstance::GetFontDef(int)
; decoder-mode: arm
003fa5cc  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003fa5d0  03 30 8f e0                                      add r3, pc, r3
003fa5d4  04 00 50 e3                                      cmp r0, #4
003fa5d8  00 f1 8f 90                                      addls pc, pc, r0, lsl #2
003fa5dc  0c 00 00 ea                                      b #0x3fa614
003fa5e0  0d 00 00 ea                                      b #0x3fa61c
003fa5e4  14 00 00 ea                                      b #0x3fa63c
003fa5e8  1b 00 00 ea                                      b #0x3fa65c
003fa5ec  22 00 00 ea                                      b #0x3fa67c
003fa5f0  ff ff ff ea                                      b #0x3fa5f4
003fa5f4  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003fa5f8  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003fa5fc  02 30 93 e7                                      ldr r3, [r3, r2]
003fa600  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
003fa604  01 10 8f e0                                      add r1, pc, r1
003fa608  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003fa60c  02 20 8f e0                                      add r2, pc, r2
003fa610  71 29 03 ea                                      b #0x4c4bdc
003fa614  02 00 a0 e3                                      mov r0, #2
003fa618  1e ff 2f e1                                      bx lr
003fa61c  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
003fa620  84 10 9f e5                                      ldr r1, [pc, #0x84]
003fa624  02 30 93 e7                                      ldr r3, [r3, r2]
003fa628  80 20 9f e5                                      ldr r2, [pc, #0x80]
003fa62c  01 10 8f e0                                      add r1, pc, r1
003fa630  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003fa634  02 20 8f e0                                      add r2, pc, r2
003fa638  67 29 03 ea                                      b #0x4c4bdc
003fa63c  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003fa640  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003fa644  02 30 93 e7                                      ldr r3, [r3, r2]
003fa648  68 20 9f e5                                      ldr r2, [pc, #0x68]
003fa64c  01 10 8f e0                                      add r1, pc, r1
003fa650  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003fa654  02 20 8f e0                                      add r2, pc, r2
003fa658  5f 29 03 ea                                      b #0x4c4bdc
003fa65c  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003fa660  54 10 9f e5                                      ldr r1, [pc, #0x54]
003fa664  02 30 93 e7                                      ldr r3, [r3, r2]
003fa668  50 20 9f e5                                      ldr r2, [pc, #0x50]
003fa66c  01 10 8f e0                                      add r1, pc, r1
003fa670  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003fa674  02 20 8f e0                                      add r2, pc, r2
003fa678  57 29 03 ea                                      b #0x4c4bdc
003fa67c  1c 20 9f e5                                      ldr r2, [pc, #0x1c]
003fa680  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003fa684  02 30 93 e7                                      ldr r3, [r3, r2]
003fa688  38 20 9f e5                                      ldr r2, [pc, #0x38]
003fa68c  01 10 8f e0                                      add r1, pc, r1
003fa690  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003fa694  02 20 8f e0                                      add r2, pc, r2
003fa698  4f 29 03 ea                                      b #0x4c4bdc
; mapping-symbol data/literal pool
003fa69c  c0 a4 59 00 f4 37 00 00 74 ca 4c 00 94 ca 4c 00  .byte 0xc0, 0xa4, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x74, 0xca, 0x4c, 0x00, 0x94, 0xca, 0x4c, 0x00
003fa6ac  4c ca 4c 00 54 ca 4c 00 2c ca 4c 00 bc 5e 4c 00  .byte 0x4c, 0xca, 0x4c, 0x00, 0x54, 0xca, 0x4c, 0x00, 0x2c, 0xca, 0x4c, 0x00, 0xbc, 0x5e, 0x4c, 0x00
003fa6bc  0c ca 4c 00 1c ca 4c 00 ec c9 4c 00 04 ca 4c 00  .byte 0x0c, 0xca, 0x4c, 0x00, 0x1c, 0xca, 0x4c, 0x00, 0xec, 0xc9, 0x4c, 0x00, 0x04, 0xca, 0x4c, 0x00

; FUNCTION 0x003fa6cc, declared_size=16, range_size=16, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance10GetFontDefEv
; demangled: ItemInstance::GetFontDef() const
; decoder-mode: arm
003fa6cc  10 40 2d e9                                      push {r4, lr}
003fa6d0  ea fd ff eb                                      bl #0x3f9e80
003fa6d4  10 40 bd e8                                      pop {r4, lr}
003fa6d8  bb ff ff ea                                      b #0x3fa5cc

; FUNCTION 0x003fa6dc, declared_size=52, range_size=52, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance8GetColorEi
; demangled: ItemInstance::GetColor(int)
; decoder-mode: arm
003fa6dc  24 30 9f e5                                      ldr r3, [pc, #0x24]
003fa6e0  24 20 9f e5                                      ldr r2, [pc, #0x24]
003fa6e4  10 40 2d e9                                      push {r4, lr}
003fa6e8  03 30 8f e0                                      add r3, pc, r3
003fa6ec  02 20 93 e7                                      ldr r2, [r3, r2]
003fa6f0  00 40 92 e5                                      ldr r4, [r2]
003fa6f4  b4 ff ff eb                                      bl #0x3fa5cc
003fa6f8  0c 30 a0 e3                                      mov r3, #0xc
003fa6fc  93 40 24 e0                                      mla r4, r3, r0, r4
003fa700  08 00 94 e5                                      ldr r0, [r4, #8]
003fa704  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003fa708  a8 a3 59 00 44 12 00 00                          .byte 0xa8, 0xa3, 0x59, 0x00, 0x44, 0x12, 0x00, 0x00

; FUNCTION 0x003fa710, declared_size=16, range_size=16, mode=arm
; class-group: ItemInstance
; alias: _ZNK12ItemInstance8GetColorEv
; demangled: ItemInstance::GetColor() const
; decoder-mode: arm
003fa710  10 40 2d e9                                      push {r4, lr}
003fa714  d9 fd ff eb                                      bl #0x3f9e80
003fa718  10 40 bd e8                                      pop {r4, lr}
003fa71c  ee ff ff ea                                      b #0x3fa6dc

; FUNCTION 0x003faa64, declared_size=76, range_size=76, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstanceD1Ev
; demangled: ItemInstance::~ItemInstance()
; decoder-mode: arm
003faa64  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003faa68  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003faa6c  10 40 2d e9                                      push {r4, lr}
003faa70  03 30 8f e0                                      add r3, pc, r3
003faa74  02 20 93 e7                                      ldr r2, [r3, r2]
003faa78  00 40 a0 e1                                      mov r4, r0
003faa7c  08 20 82 e2                                      add r2, r2, #8
003faa80  5c 20 80 e4                                      str r2, [r0], #0x5c
003faa84  dd ff ff eb                                      bl #0x3faa00
003faa88  38 00 84 e2                                      add r0, r4, #0x38
003faa8c  c6 63 fc eb                                      bl #0x3139ac
003faa90  20 00 84 e2                                      add r0, r4, #0x20
003faa94  c4 63 fc eb                                      bl #0x3139ac
003faa98  08 00 84 e2                                      add r0, r4, #8
003faa9c  c2 63 fc eb                                      bl #0x3139ac
003faaa0  04 00 a0 e1                                      mov r0, r4
003faaa4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003faaa8  20 a0 59 00 00 48 00 00                          .byte 0x20, 0xa0, 0x59, 0x00, 0x00, 0x48, 0x00, 0x00

; FUNCTION 0x003faab0, declared_size=28, range_size=28, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstanceD0Ev
; demangled: ItemInstance::~ItemInstance()
; decoder-mode: arm
003faab0  10 40 2d e9                                      push {r4, lr}
003faab4  00 40 a0 e1                                      mov r4, r0
003faab8  e9 ff ff eb                                      bl #0x3faa64
003faabc  04 00 a0 e1                                      mov r0, r4
003faac0  5e 56 fc eb                                      bl #0x310440
003faac4  04 00 a0 e1                                      mov r0, r4
003faac8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003faacc, declared_size=76, range_size=76, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstanceD2Ev
; demangled: ItemInstance::~ItemInstance()
; decoder-mode: arm
003faacc  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003faad0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003faad4  10 40 2d e9                                      push {r4, lr}
003faad8  03 30 8f e0                                      add r3, pc, r3
003faadc  02 20 93 e7                                      ldr r2, [r3, r2]
003faae0  00 40 a0 e1                                      mov r4, r0
003faae4  08 20 82 e2                                      add r2, r2, #8
003faae8  5c 20 80 e4                                      str r2, [r0], #0x5c
003faaec  c3 ff ff eb                                      bl #0x3faa00
003faaf0  38 00 84 e2                                      add r0, r4, #0x38
003faaf4  ac 63 fc eb                                      bl #0x3139ac
003faaf8  20 00 84 e2                                      add r0, r4, #0x20
003faafc  aa 63 fc eb                                      bl #0x3139ac
003fab00  08 00 84 e2                                      add r0, r4, #8
003fab04  a8 63 fc eb                                      bl #0x3139ac
003fab08  04 00 a0 e1                                      mov r0, r4
003fab0c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003fab10  b8 9f 59 00 00 48 00 00                          .byte 0xb8, 0x9f, 0x59, 0x00, 0x00, 0x48, 0x00, 0x00

; FUNCTION 0x003facdc, declared_size=1460, range_size=1460, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance11_UpdateReqsEv
; demangled: ItemInstance::_UpdateReqs()
; decoder-mode: arm
003facdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003face0  60 15 9f e5                                      ldr r1, [pc, #0x560]
003face4  38 60 80 e2                                      add r6, r0, #0x38
003face8  04 d0 4d e2                                      sub sp, sp, #4
003facec  01 10 8f e0                                      add r1, pc, r1
003facf0  00 40 a0 e1                                      mov r4, r0
003facf4  01 20 a0 e1                                      mov r2, r1
003facf8  06 00 a0 e1                                      mov r0, r6
003facfc  37 57 fc eb                                      bl #0x3109e0
003fad00  04 00 a0 e1                                      mov r0, r4
003fad04  3f fc ff eb                                      bl #0x3f9e08
003fad08  74 30 90 e5                                      ldr r3, [r0, #0x74]
003fad0c  38 55 9f e5                                      ldr r5, [pc, #0x538]
003fad10  00 00 53 e3                                      cmp r3, #0
003fad14  05 50 8f e0                                      add r5, pc, r5
003fad18  04 00 00 1a                                      bne #0x3fad30
003fad1c  04 00 a0 e1                                      mov r0, r4
003fad20  38 fc ff eb                                      bl #0x3f9e08
003fad24  78 30 90 e5                                      ldr r3, [r0, #0x78]
003fad28  00 00 53 e3                                      cmp r3, #0
003fad2c  ba 00 00 0a                                      beq #0x3fb01c
003fad30  04 00 a0 e1                                      mov r0, r4
003fad34  33 fc ff eb                                      bl #0x3f9e08
003fad38  58 30 90 e5                                      ldr r3, [r0, #0x58]
003fad3c  0e 00 53 e3                                      cmp r3, #0xe
003fad40  c9 00 00 0a                                      beq #0x3fb06c
003fad44  04 75 9f e5                                      ldr r7, [pc, #0x504]
003fad48  04 a5 9f e5                                      ldr sl, [pc, #0x504]
003fad4c  04 25 9f e5                                      ldr r2, [pc, #0x504]
003fad50  07 80 95 e7                                      ldr r8, [r5, r7]
003fad54  0a a0 8f e0                                      add sl, pc, sl
003fad58  02 20 8f e0                                      add r2, pc, r2
003fad5c  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003fad60  0a 10 a0 e1                                      mov r1, sl
003fad64  34 90 98 e5                                      ldr sb, [r8, #0x34]
003fad68  9b 27 03 eb                                      bl #0x4c4bdc
003fad6c  00 10 a0 e1                                      mov r1, r0
003fad70  09 00 a0 e1                                      mov r0, sb
003fad74  58 38 04 eb                                      bl #0x508edc
003fad78  00 90 a0 e1                                      mov sb, r0
003fad7c  34 4c fc eb                                      bl #0x30de54
003fad80  09 10 a0 e1                                      mov r1, sb
003fad84  00 20 89 e0                                      add r2, sb, r0
003fad88  06 00 a0 e1                                      mov r0, r6
003fad8c  13 57 fc eb                                      bl #0x3109e0
003fad90  c4 24 9f e5                                      ldr r2, [pc, #0x4c4]
003fad94  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003fad98  0a 10 a0 e1                                      mov r1, sl
003fad9c  02 20 8f e0                                      add r2, pc, r2
003fada0  34 90 98 e5                                      ldr sb, [r8, #0x34]
003fada4  8c 27 03 eb                                      bl #0x4c4bdc
003fada8  00 10 a0 e1                                      mov r1, r0
003fadac  09 00 a0 e1                                      mov r0, sb
003fadb0  49 38 04 eb                                      bl #0x508edc
003fadb4  00 90 a0 e1                                      mov sb, r0
003fadb8  04 00 a0 e1                                      mov r0, r4
003fadbc  11 fc ff eb                                      bl #0x3f9e08
003fadc0  74 30 90 e5                                      ldr r3, [r0, #0x74]
003fadc4  00 00 53 e3                                      cmp r3, #0
003fadc8  03 80 a0 01                                      moveq r8, r3
003fadcc  bf 00 00 1a                                      bne #0x3fb0d0
003fadd0  04 00 a0 e1                                      mov r0, r4
003fadd4  0b fc ff eb                                      bl #0x3f9e08
003fadd8  78 30 90 e5                                      ldr r3, [r0, #0x78]
003faddc  00 00 53 e3                                      cmp r3, #0
003fade0  16 00 00 0a                                      beq #0x3fae40
003fade4  00 00 58 e3                                      cmp r8, #0
003fade8  cc 00 00 1a                                      bne #0x3fb120
003fadec  07 80 95 e7                                      ldr r8, [r5, r7]
003fadf0  68 14 9f e5                                      ldr r1, [pc, #0x468]
003fadf4  68 24 9f e5                                      ldr r2, [pc, #0x468]
003fadf8  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003fadfc  01 10 8f e0                                      add r1, pc, r1
003fae00  02 20 8f e0                                      add r2, pc, r2
003fae04  34 a0 98 e5                                      ldr sl, [r8, #0x34]
003fae08  73 27 03 eb                                      bl #0x4c4bdc
003fae0c  00 10 a0 e1                                      mov r1, r0
003fae10  0a 00 a0 e1                                      mov r0, sl
003fae14  30 38 04 eb                                      bl #0x508edc
003fae18  00 a0 a0 e1                                      mov sl, r0
003fae1c  04 00 a0 e1                                      mov r0, r4
003fae20  34 80 98 e5                                      ldr r8, [r8, #0x34]
003fae24  f7 fb ff eb                                      bl #0x3f9e08
003fae28  0a 20 a0 e1                                      mov r2, sl
003fae2c  78 30 90 e5                                      ldr r3, [r0, #0x78]
003fae30  06 10 a0 e1                                      mov r1, r6
003fae34  08 00 a0 e1                                      mov r0, r8
003fae38  2d 38 04 eb                                      bl #0x508ef4
003fae3c  01 80 a0 e3                                      mov r8, #1
003fae40  04 00 a0 e1                                      mov r0, r4
003fae44  ef fb ff eb                                      bl #0x3f9e08
003fae48  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
003fae4c  00 00 53 e3                                      cmp r3, #0
003fae50  16 00 00 0a                                      beq #0x3faeb0
003fae54  00 00 58 e3                                      cmp r8, #0
003fae58  bc 00 00 1a                                      bne #0x3fb150
003fae5c  07 80 95 e7                                      ldr r8, [r5, r7]
003fae60  00 14 9f e5                                      ldr r1, [pc, #0x400]
003fae64  00 24 9f e5                                      ldr r2, [pc, #0x400]
003fae68  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003fae6c  01 10 8f e0                                      add r1, pc, r1
003fae70  02 20 8f e0                                      add r2, pc, r2
003fae74  34 a0 98 e5                                      ldr sl, [r8, #0x34]
003fae78  57 27 03 eb                                      bl #0x4c4bdc
003fae7c  00 10 a0 e1                                      mov r1, r0
003fae80  0a 00 a0 e1                                      mov r0, sl
003fae84  14 38 04 eb                                      bl #0x508edc
003fae88  00 a0 a0 e1                                      mov sl, r0
003fae8c  04 00 a0 e1                                      mov r0, r4
003fae90  34 80 98 e5                                      ldr r8, [r8, #0x34]
003fae94  db fb ff eb                                      bl #0x3f9e08
003fae98  0a 20 a0 e1                                      mov r2, sl
003fae9c  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
003faea0  06 10 a0 e1                                      mov r1, r6
003faea4  08 00 a0 e1                                      mov r0, r8
003faea8  11 38 04 eb                                      bl #0x508ef4
003faeac  01 80 a0 e3                                      mov r8, #1
003faeb0  04 00 a0 e1                                      mov r0, r4
003faeb4  d3 fb ff eb                                      bl #0x3f9e08
003faeb8  80 30 90 e5                                      ldr r3, [r0, #0x80]
003faebc  00 00 53 e3                                      cmp r3, #0
003faec0  16 00 00 0a                                      beq #0x3faf20
003faec4  00 00 58 e3                                      cmp r8, #0
003faec8  98 00 00 1a                                      bne #0x3fb130
003faecc  07 80 95 e7                                      ldr r8, [r5, r7]
003faed0  98 13 9f e5                                      ldr r1, [pc, #0x398]
003faed4  98 23 9f e5                                      ldr r2, [pc, #0x398]
003faed8  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003faedc  01 10 8f e0                                      add r1, pc, r1
003faee0  02 20 8f e0                                      add r2, pc, r2
003faee4  34 a0 98 e5                                      ldr sl, [r8, #0x34]
003faee8  3b 27 03 eb                                      bl #0x4c4bdc
003faeec  00 10 a0 e1                                      mov r1, r0
003faef0  0a 00 a0 e1                                      mov r0, sl
003faef4  f8 37 04 eb                                      bl #0x508edc
003faef8  00 a0 a0 e1                                      mov sl, r0
003faefc  04 00 a0 e1                                      mov r0, r4
003faf00  34 80 98 e5                                      ldr r8, [r8, #0x34]
003faf04  bf fb ff eb                                      bl #0x3f9e08
003faf08  0a 20 a0 e1                                      mov r2, sl
003faf0c  80 30 90 e5                                      ldr r3, [r0, #0x80]
003faf10  06 10 a0 e1                                      mov r1, r6
003faf14  08 00 a0 e1                                      mov r0, r8
003faf18  f5 37 04 eb                                      bl #0x508ef4
003faf1c  01 80 a0 e3                                      mov r8, #1
003faf20  04 00 a0 e1                                      mov r0, r4
003faf24  b7 fb ff eb                                      bl #0x3f9e08
003faf28  84 30 90 e5                                      ldr r3, [r0, #0x84]
003faf2c  00 00 53 e3                                      cmp r3, #0
003faf30  16 00 00 0a                                      beq #0x3faf90
003faf34  00 00 58 e3                                      cmp r8, #0
003faf38  80 00 00 1a                                      bne #0x3fb140
003faf3c  07 80 95 e7                                      ldr r8, [r5, r7]
003faf40  30 13 9f e5                                      ldr r1, [pc, #0x330]
003faf44  30 23 9f e5                                      ldr r2, [pc, #0x330]
003faf48  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003faf4c  01 10 8f e0                                      add r1, pc, r1
003faf50  02 20 8f e0                                      add r2, pc, r2
003faf54  34 a0 98 e5                                      ldr sl, [r8, #0x34]
003faf58  1f 27 03 eb                                      bl #0x4c4bdc
003faf5c  00 10 a0 e1                                      mov r1, r0
003faf60  0a 00 a0 e1                                      mov r0, sl
003faf64  dc 37 04 eb                                      bl #0x508edc
003faf68  00 a0 a0 e1                                      mov sl, r0
003faf6c  04 00 a0 e1                                      mov r0, r4
003faf70  34 80 98 e5                                      ldr r8, [r8, #0x34]
003faf74  a3 fb ff eb                                      bl #0x3f9e08
003faf78  0a 20 a0 e1                                      mov r2, sl
003faf7c  84 30 90 e5                                      ldr r3, [r0, #0x84]
003faf80  06 10 a0 e1                                      mov r1, r6
003faf84  08 00 a0 e1                                      mov r0, r8
003faf88  d9 37 04 eb                                      bl #0x508ef4
003faf8c  01 80 a0 e3                                      mov r8, #1
003faf90  04 00 a0 e1                                      mov r0, r4
003faf94  9b fb ff eb                                      bl #0x3f9e08
003faf98  88 30 90 e5                                      ldr r3, [r0, #0x88]
003faf9c  00 00 53 e3                                      cmp r3, #0
003fafa0  31 00 00 0a                                      beq #0x3fb06c
003fafa4  00 00 58 e3                                      cmp r8, #0
003fafa8  44 00 00 1a                                      bne #0x3fb0c0
003fafac  07 30 95 e7                                      ldr r3, [r5, r7]
003fafb0  c8 12 9f e5                                      ldr r1, [pc, #0x2c8]
003fafb4  c8 22 9f e5                                      ldr r2, [pc, #0x2c8]
003fafb8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003fafbc  01 10 8f e0                                      add r1, pc, r1
003fafc0  02 20 8f e0                                      add r2, pc, r2
003fafc4  34 80 93 e5                                      ldr r8, [r3, #0x34]
003fafc8  03 27 03 eb                                      bl #0x4c4bdc
003fafcc  00 10 a0 e1                                      mov r1, r0
003fafd0  08 00 a0 e1                                      mov r0, r8
003fafd4  c0 37 04 eb                                      bl #0x508edc
003fafd8  00 80 a0 e1                                      mov r8, r0
003fafdc  04 00 a0 e1                                      mov r0, r4
003fafe0  88 fb ff eb                                      bl #0x3f9e08
003fafe4  88 30 90 e5                                      ldr r3, [r0, #0x88]
003fafe8  01 30 43 e2                                      sub r3, r3, #1
003fafec  08 00 53 e3                                      cmp r3, #8
003faff0  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003faff4  25 00 00 ea                                      b #0x3fb090
003faff8  6f 00 00 ea                                      b #0x3fb1bc
003faffc  75 00 00 ea                                      b #0x3fb1d8
003fb000  56 00 00 ea                                      b #0x3fb160
003fb004  5c 00 00 ea                                      b #0x3fb17c
003fb008  19 00 00 ea                                      b #0x3fb074
003fb00c  62 00 00 ea                                      b #0x3fb19c
003fb010  7e 00 00 ea                                      b #0x3fb210
003fb014  84 00 00 ea                                      b #0x3fb22c
003fb018  75 00 00 ea                                      b #0x3fb1f4
003fb01c  04 00 a0 e1                                      mov r0, r4
003fb020  78 fb ff eb                                      bl #0x3f9e08
003fb024  7c 30 90 e5                                      ldr r3, [r0, #0x7c]
003fb028  00 00 53 e3                                      cmp r3, #0
003fb02c  3f ff ff 1a                                      bne #0x3fad30
003fb030  04 00 a0 e1                                      mov r0, r4
003fb034  73 fb ff eb                                      bl #0x3f9e08
003fb038  80 30 90 e5                                      ldr r3, [r0, #0x80]
003fb03c  00 00 53 e3                                      cmp r3, #0
003fb040  3a ff ff 1a                                      bne #0x3fad30
003fb044  04 00 a0 e1                                      mov r0, r4
003fb048  6e fb ff eb                                      bl #0x3f9e08
003fb04c  84 30 90 e5                                      ldr r3, [r0, #0x84]
003fb050  00 00 53 e3                                      cmp r3, #0
003fb054  35 ff ff 1a                                      bne #0x3fad30
003fb058  04 00 a0 e1                                      mov r0, r4
003fb05c  69 fb ff eb                                      bl #0x3f9e08
003fb060  88 30 90 e5                                      ldr r3, [r0, #0x88]
003fb064  00 00 53 e3                                      cmp r3, #0
003fb068  30 ff ff 1a                                      bne #0x3fad30
003fb06c  04 d0 8d e2                                      add sp, sp, #4
003fb070  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003fb074  0c 32 9f e5                                      ldr r3, [pc, #0x20c]
003fb078  03 30 95 e7                                      ldr r3, [r5, r3]
003fb07c  00 30 93 e5                                      ldr r3, [r3]
003fb080  47 3a 83 e2                                      add r3, r3, #0x47000
003fb084  d9 3e 83 e2                                      add r3, r3, #0xd90
003fb088  0c 30 83 e2                                      add r3, r3, #0xc
003fb08c  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb090  07 30 95 e7                                      ldr r3, [r5, r7]
003fb094  0b 10 a0 e1                                      mov r1, fp
003fb098  34 40 93 e5                                      ldr r4, [r3, #0x34]
003fb09c  04 00 a0 e1                                      mov r0, r4
003fb0a0  8d 37 04 eb                                      bl #0x508edc
003fb0a4  06 10 a0 e1                                      mov r1, r6
003fb0a8  00 30 a0 e1                                      mov r3, r0
003fb0ac  08 20 a0 e1                                      mov r2, r8
003fb0b0  04 00 a0 e1                                      mov r0, r4
003fb0b4  04 d0 8d e2                                      add sp, sp, #4
003fb0b8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003fb0bc  8c 37 04 ea                                      b #0x508ef4
003fb0c0  09 10 a0 e1                                      mov r1, sb
003fb0c4  06 00 a0 e1                                      mov r0, r6
003fb0c8  8a fb fd eb                                      bl #0x379ef8
003fb0cc  b6 ff ff ea                                      b #0x3fafac
003fb0d0  b4 21 9f e5                                      ldr r2, [pc, #0x1b4]
003fb0d4  0a 10 a0 e1                                      mov r1, sl
003fb0d8  2c 00 98 e5                                      ldr r0, [r8, #0x2c]
003fb0dc  02 20 8f e0                                      add r2, pc, r2
003fb0e0  34 a0 98 e5                                      ldr sl, [r8, #0x34]
003fb0e4  bc 26 03 eb                                      bl #0x4c4bdc
003fb0e8  00 10 a0 e1                                      mov r1, r0
003fb0ec  0a 00 a0 e1                                      mov r0, sl
003fb0f0  79 37 04 eb                                      bl #0x508edc
003fb0f4  00 a0 a0 e1                                      mov sl, r0
003fb0f8  04 00 a0 e1                                      mov r0, r4
003fb0fc  34 80 98 e5                                      ldr r8, [r8, #0x34]
003fb100  40 fb ff eb                                      bl #0x3f9e08
003fb104  0a 20 a0 e1                                      mov r2, sl
003fb108  74 30 90 e5                                      ldr r3, [r0, #0x74]
003fb10c  06 10 a0 e1                                      mov r1, r6
003fb110  08 00 a0 e1                                      mov r0, r8
003fb114  76 37 04 eb                                      bl #0x508ef4
003fb118  01 80 a0 e3                                      mov r8, #1
003fb11c  2b ff ff ea                                      b #0x3fadd0
003fb120  06 00 a0 e1                                      mov r0, r6
003fb124  09 10 a0 e1                                      mov r1, sb
003fb128  72 fb fd eb                                      bl #0x379ef8
003fb12c  2e ff ff ea                                      b #0x3fadec
003fb130  06 00 a0 e1                                      mov r0, r6
003fb134  09 10 a0 e1                                      mov r1, sb
003fb138  6e fb fd eb                                      bl #0x379ef8
003fb13c  62 ff ff ea                                      b #0x3faecc
003fb140  06 00 a0 e1                                      mov r0, r6
003fb144  09 10 a0 e1                                      mov r1, sb
003fb148  6a fb fd eb                                      bl #0x379ef8
003fb14c  7a ff ff ea                                      b #0x3faf3c
003fb150  06 00 a0 e1                                      mov r0, r6
003fb154  09 10 a0 e1                                      mov r1, sb
003fb158  66 fb fd eb                                      bl #0x379ef8
003fb15c  3e ff ff ea                                      b #0x3fae5c
003fb160  20 31 9f e5                                      ldr r3, [pc, #0x120]
003fb164  03 30 95 e7                                      ldr r3, [r5, r3]
003fb168  00 30 93 e5                                      ldr r3, [r3]
003fb16c  3a 3a 83 e2                                      add r3, r3, #0x3a000
003fb170  e9 3f 83 e2                                      add r3, r3, #0x3a4
003fb174  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb178  c4 ff ff ea                                      b #0x3fb090
003fb17c  04 31 9f e5                                      ldr r3, [pc, #0x104]
003fb180  03 30 95 e7                                      ldr r3, [r5, r3]
003fb184  00 30 93 e5                                      ldr r3, [r3]
003fb188  47 3a 83 e2                                      add r3, r3, #0x47000
003fb18c  69 3e 83 e2                                      add r3, r3, #0x690
003fb190  04 30 83 e2                                      add r3, r3, #4
003fb194  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb198  bc ff ff ea                                      b #0x3fb090
003fb19c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003fb1a0  03 30 95 e7                                      ldr r3, [r5, r3]
003fb1a4  00 30 93 e5                                      ldr r3, [r3]
003fb1a8  47 3a 83 e2                                      add r3, r3, #0x47000
003fb1ac  a1 3e 83 e2                                      add r3, r3, #0xa10
003fb1b0  08 30 83 e2                                      add r3, r3, #8
003fb1b4  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb1b8  b4 ff ff ea                                      b #0x3fb090
003fb1bc  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003fb1c0  03 30 95 e7                                      ldr r3, [r5, r3]
003fb1c4  00 30 93 e5                                      ldr r3, [r3]
003fb1c8  e7 3b 83 e2                                      add r3, r3, #0x39c00
003fb1cc  9c 30 83 e2                                      add r3, r3, #0x9c
003fb1d0  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb1d4  ad ff ff ea                                      b #0x3fb090
003fb1d8  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
003fb1dc  03 30 95 e7                                      ldr r3, [r5, r3]
003fb1e0  00 30 93 e5                                      ldr r3, [r3]
003fb1e4  3a 3a 83 e2                                      add r3, r3, #0x3a000
003fb1e8  20 30 83 e2                                      add r3, r3, #0x20
003fb1ec  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb1f0  a6 ff ff ea                                      b #0x3fb090
003fb1f4  8c 30 9f e5                                      ldr r3, [pc, #0x8c]
003fb1f8  03 30 95 e7                                      ldr r3, [r5, r3]
003fb1fc  00 30 93 e5                                      ldr r3, [r3]
003fb200  ff 3b 83 e2                                      add r3, r3, #0x3fc00
003fb204  c3 3f 83 e2                                      add r3, r3, #0x30c
003fb208  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb20c  9f ff ff ea                                      b #0x3fb090
003fb210  70 30 9f e5                                      ldr r3, [pc, #0x70]
003fb214  03 30 95 e7                                      ldr r3, [r5, r3]
003fb218  00 30 93 e5                                      ldr r3, [r3]
003fb21c  fe 3b 83 e2                                      add r3, r3, #0x3f800
003fb220  e2 3f 83 e2                                      add r3, r3, #0x388
003fb224  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb228  98 ff ff ea                                      b #0x3fb090
003fb22c  54 30 9f e5                                      ldr r3, [pc, #0x54]
003fb230  03 30 95 e7                                      ldr r3, [r5, r3]
003fb234  00 30 93 e5                                      ldr r3, [r3]
003fb238  01 37 83 e2                                      add r3, r3, #0x40000
003fb23c  29 3e 83 e2                                      add r3, r3, #0x290
003fb240  18 b0 93 e5                                      ldr fp, [r3, #0x18]
003fb244  91 ff ff ea                                      b #0x3fb090
; mapping-symbol data/literal pool
003fb248  1c 0b 4d 00 7c 9d 59 00 f4 37 00 00 d4 3e 4c 00  .byte 0x1c, 0x0b, 0x4d, 0x00, 0x7c, 0x9d, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xd4, 0x3e, 0x4c, 0x00
003fb258  f8 c3 4c 00 cc c3 4c 00 2c 3e 4c 00 c0 c2 4c 00  .byte 0xf8, 0xc3, 0x4c, 0x00, 0xcc, 0xc3, 0x4c, 0x00, 0x2c, 0x3e, 0x4c, 0x00, 0xc0, 0xc2, 0x4c, 0x00
003fb268  bc 3d 4c 00 70 c2 4c 00 4c 3d 4c 00 20 c2 4c 00  .byte 0xbc, 0x3d, 0x4c, 0x00, 0x70, 0xc2, 0x4c, 0x00, 0x4c, 0x3d, 0x4c, 0x00, 0x20, 0xc2, 0x4c, 0x00
003fb278  dc 3c 4c 00 d0 c1 4c 00 6c 3c 4c 00 78 c1 4c 00  .byte 0xdc, 0x3c, 0x4c, 0x00, 0xd0, 0xc1, 0x4c, 0x00, 0x6c, 0x3c, 0x4c, 0x00, 0x78, 0xc1, 0x4c, 0x00
003fb288  50 2b 00 00 cc bf 4c 00                          .byte 0x50, 0x2b, 0x00, 0x00, 0xcc, 0xbf, 0x4c, 0x00

; FUNCTION 0x003fb290, declared_size=528, range_size=528, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance12_UpdateStatsEv
; demangled: ItemInstance::_UpdateStats()
; decoder-mode: arm
003fb290  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003fb294  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
003fb298  20 50 80 e2                                      add r5, r0, #0x20
003fb29c  0c d0 4d e2                                      sub sp, sp, #0xc
003fb2a0  01 10 8f e0                                      add r1, pc, r1
003fb2a4  01 20 a0 e1                                      mov r2, r1
003fb2a8  00 40 a0 e1                                      mov r4, r0
003fb2ac  05 00 a0 e1                                      mov r0, r5
003fb2b0  ca 55 fc eb                                      bl #0x3109e0
003fb2b4  04 00 a0 e1                                      mov r0, r4
003fb2b8  d2 fa ff eb                                      bl #0x3f9e08
003fb2bc  58 20 90 e5                                      ldr r2, [r0, #0x58]
003fb2c0  b0 31 9f e5                                      ldr r3, [pc, #0x1b0]
003fb2c4  0c 00 52 e3                                      cmp r2, #0xc
003fb2c8  03 30 8f e0                                      add r3, pc, r3
003fb2cc  3b 00 00 8a                                      bhi #0x3fb3c0
003fb2d0  01 10 a0 e3                                      mov r1, #1
003fb2d4  11 22 a0 e1                                      lsl r2, r1, r2
003fb2d8  5e 0d 12 e3                                      tst r2, #0x1780
003fb2dc  17 00 00 0a                                      beq #0x3fb340
003fb2e0  94 21 9f e5                                      ldr r2, [pc, #0x194]
003fb2e4  94 11 9f e5                                      ldr r1, [pc, #0x194]
003fb2e8  02 60 93 e7                                      ldr r6, [r3, r2]
003fb2ec  90 21 9f e5                                      ldr r2, [pc, #0x190]
003fb2f0  01 10 8f e0                                      add r1, pc, r1
003fb2f4  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
003fb2f8  02 20 8f e0                                      add r2, pc, r2
003fb2fc  34 70 96 e5                                      ldr r7, [r6, #0x34]
003fb300  35 26 03 eb                                      bl #0x4c4bdc
003fb304  00 10 a0 e1                                      mov r1, r0
003fb308  07 00 a0 e1                                      mov r0, r7
003fb30c  f2 36 04 eb                                      bl #0x508edc
003fb310  00 70 a0 e1                                      mov r7, r0
003fb314  04 00 a0 e1                                      mov r0, r4
003fb318  34 40 96 e5                                      ldr r4, [r6, #0x34]
003fb31c  b9 fa ff eb                                      bl #0x3f9e08
003fb320  8c 30 90 e5                                      ldr r3, [r0, #0x8c]
003fb324  05 10 a0 e1                                      mov r1, r5
003fb328  04 00 a0 e1                                      mov r0, r4
003fb32c  07 20 a0 e1                                      mov r2, r7
003fb330  43 34 a0 e1                                      asr r3, r3, #8
003fb334  0c d0 8d e2                                      add sp, sp, #0xc
003fb338  f0 45 bd e8                                      pop {r4, r5, r6, r7, r8, sl, lr}
003fb33c  ec 36 04 ea                                      b #0x508ef4
003fb340  40 00 12 e3                                      tst r2, #0x40
003fb344  1f 00 00 1a                                      bne #0x3fb3c8
003fb348  3f 00 12 e3                                      tst r2, #0x3f
003fb34c  1b 00 00 0a                                      beq #0x3fb3c0
003fb350  24 21 9f e5                                      ldr r2, [pc, #0x124]
003fb354  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
003fb358  02 60 93 e7                                      ldr r6, [r3, r2]
003fb35c  28 21 9f e5                                      ldr r2, [pc, #0x128]
003fb360  01 10 8f e0                                      add r1, pc, r1
003fb364  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
003fb368  02 20 8f e0                                      add r2, pc, r2
003fb36c  34 70 96 e5                                      ldr r7, [r6, #0x34]
003fb370  19 26 03 eb                                      bl #0x4c4bdc
003fb374  00 10 a0 e1                                      mov r1, r0
003fb378  07 00 a0 e1                                      mov r0, r7
003fb37c  d6 36 04 eb                                      bl #0x508edc
003fb380  00 70 a0 e1                                      mov r7, r0
003fb384  04 00 a0 e1                                      mov r0, r4
003fb388  34 60 96 e5                                      ldr r6, [r6, #0x34]
003fb38c  9d fa ff eb                                      bl #0x3f9e08
003fb390  8c 30 90 e5                                      ldr r3, [r0, #0x8c]
003fb394  04 00 a0 e1                                      mov r0, r4
003fb398  43 44 a0 e1                                      asr r4, r3, #8
003fb39c  99 fa ff eb                                      bl #0x3f9e08
003fb3a0  90 c0 90 e5                                      ldr ip, [r0, #0x90]
003fb3a4  05 10 a0 e1                                      mov r1, r5
003fb3a8  06 00 a0 e1                                      mov r0, r6
003fb3ac  4c c4 a0 e1                                      asr ip, ip, #8
003fb3b0  07 20 a0 e1                                      mov r2, r7
003fb3b4  04 30 a0 e1                                      mov r3, r4
003fb3b8  00 c0 8d e5                                      str ip, [sp]
003fb3bc  cc 36 04 eb                                      bl #0x508ef4
003fb3c0  0c d0 8d e2                                      add sp, sp, #0xc
003fb3c4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003fb3c8  ac 20 9f e5                                      ldr r2, [pc, #0xac]
003fb3cc  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
003fb3d0  02 60 93 e7                                      ldr r6, [r3, r2]
003fb3d4  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
003fb3d8  07 70 8f e0                                      add r7, pc, r7
003fb3dc  07 10 a0 e1                                      mov r1, r7
003fb3e0  02 20 8f e0                                      add r2, pc, r2
003fb3e4  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
003fb3e8  34 80 96 e5                                      ldr r8, [r6, #0x34]
003fb3ec  fa 25 03 eb                                      bl #0x4c4bdc
003fb3f0  00 10 a0 e1                                      mov r1, r0
003fb3f4  08 00 a0 e1                                      mov r0, r8
003fb3f8  b7 36 04 eb                                      bl #0x508edc
003fb3fc  00 a0 a0 e1                                      mov sl, r0
003fb400  04 00 a0 e1                                      mov r0, r4
003fb404  34 80 96 e5                                      ldr r8, [r6, #0x34]
003fb408  7e fa ff eb                                      bl #0x3f9e08
003fb40c  8c 30 90 e5                                      ldr r3, [r0, #0x8c]
003fb410  0a 20 a0 e1                                      mov r2, sl
003fb414  05 10 a0 e1                                      mov r1, r5
003fb418  43 34 a0 e1                                      asr r3, r3, #8
003fb41c  08 00 a0 e1                                      mov r0, r8
003fb420  b3 36 04 eb                                      bl #0x508ef4
003fb424  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003fb428  05 00 a0 e1                                      mov r0, r5
003fb42c  01 10 8f e0                                      add r1, pc, r1
003fb430  01 20 81 e2                                      add r2, r1, #1
003fb434  f2 54 fc eb                                      bl #0x310804
003fb438  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003fb43c  07 10 a0 e1                                      mov r1, r7
003fb440  2c 00 96 e5                                      ldr r0, [r6, #0x2c]
003fb444  02 20 8f e0                                      add r2, pc, r2
003fb448  34 70 96 e5                                      ldr r7, [r6, #0x34]
003fb44c  e2 25 03 eb                                      bl #0x4c4bdc
003fb450  00 10 a0 e1                                      mov r1, r0
003fb454  07 00 a0 e1                                      mov r0, r7
003fb458  9f 36 04 eb                                      bl #0x508edc
003fb45c  00 70 a0 e1                                      mov r7, r0
003fb460  04 00 a0 e1                                      mov r0, r4
003fb464  34 40 96 e5                                      ldr r4, [r6, #0x34]
003fb468  66 fa ff eb                                      bl #0x3f9e08
003fb46c  90 30 90 e5                                      ldr r3, [r0, #0x90]
003fb470  ab ff ff ea                                      b #0x3fb324
; mapping-symbol data/literal pool
003fb474  68 05 4d 00 c8 97 59 00 f4 37 00 00 38 39 4c 00  .byte 0x68, 0x05, 0x4d, 0x00, 0xc8, 0x97, 0x59, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x38, 0x39, 0x4c, 0x00
003fb484  a8 be 4c 00 c8 38 4c 00 18 be 4c 00 50 38 4c 00  .byte 0xa8, 0xbe, 0x4c, 0x00, 0xc8, 0x38, 0x4c, 0x00, 0x18, 0xbe, 0x4c, 0x00, 0x50, 0x38, 0x4c, 0x00
003fb494  c0 bd 4c 00 04 60 4c 00 7c bd 4c 00              .byte 0xc0, 0xbd, 0x4c, 0x00, 0x04, 0x60, 0x4c, 0x00, 0x7c, 0xbd, 0x4c, 0x00

; FUNCTION 0x003fb754, declared_size=1284, range_size=1284, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance11_UpdateNameEv
; demangled: ItemInstance::_UpdateName()
; decoder-mode: arm
003fb754  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003fb758  bc 44 9f e5                                      ldr r4, [pc, #0x4bc]
003fb75c  bc 34 9f e5                                      ldr r3, [pc, #0x4bc]
003fb760  bc 64 9f e5                                      ldr r6, [pc, #0x4bc]
003fb764  04 40 8f e0                                      add r4, pc, r4
003fb768  03 30 94 e7                                      ldr r3, [r4, r3]
003fb76c  06 20 94 e7                                      ldr r2, [r4, r6]
003fb770  00 70 a0 e1                                      mov r7, r0
003fb774  00 30 93 e5                                      ldr r3, [r3]
003fb778  04 00 90 e5                                      ldr r0, [r0, #4]
003fb77c  a4 14 9f e5                                      ldr r1, [pc, #0x4a4]
003fb780  a4 50 a0 e3                                      mov r5, #0xa4
003fb784  95 30 25 e0                                      mla r5, r5, r0, r3
003fb788  00 30 92 e5                                      ldr r3, [r2]
003fb78c  01 10 8f e0                                      add r1, pc, r1
003fb790  08 a0 87 e2                                      add sl, r7, #8
003fb794  f4 d0 4d e2                                      sub sp, sp, #0xf4
003fb798  01 20 a0 e1                                      mov r2, r1
003fb79c  0a 00 a0 e1                                      mov r0, sl
003fb7a0  ec 30 8d e5                                      str r3, [sp, #0xec]
003fb7a4  8d 54 fc eb                                      bl #0x3109e0
003fb7a8  44 10 95 e5                                      ldr r1, [r5, #0x44]
003fb7ac  01 00 71 e3                                      cmn r1, #1
003fb7b0  c5 00 00 0a                                      beq #0x3fbacc
003fb7b4  70 24 9f e5                                      ldr r2, [pc, #0x470]
003fb7b8  02 30 94 e7                                      ldr r3, [r4, r2]
003fb7bc  04 20 8d e5                                      str r2, [sp, #4]
003fb7c0  34 00 93 e5                                      ldr r0, [r3, #0x34]
003fb7c4  c4 35 04 eb                                      bl #0x508edc
003fb7c8  60 34 9f e5                                      ldr r3, [pc, #0x460]
003fb7cc  14 00 8d e5                                      str r0, [sp, #0x14]
003fb7d0  03 30 94 e7                                      ldr r3, [r4, r3]
003fb7d4  00 10 93 e5                                      ldr r1, [r3]
003fb7d8  fd 4c fc eb                                      bl #0x30ebd4
003fb7dc  00 00 50 e3                                      cmp r0, #0
003fb7e0  08 00 8d e5                                      str r0, [sp, #8]
003fb7e4  00 90 a0 13                                      movne sb, #0
003fb7e8  01 b0 a0 13                                      movne fp, #1
003fb7ec  f3 00 00 0a                                      beq #0x3fbbc0
003fb7f0  48 10 95 e5                                      ldr r1, [r5, #0x48]
003fb7f4  01 00 71 e3                                      cmn r1, #1
003fb7f8  00 50 a0 03                                      moveq r5, #0
003fb7fc  04 00 00 0a                                      beq #0x3fb814
003fb800  04 20 9d e5                                      ldr r2, [sp, #4]
003fb804  02 30 94 e7                                      ldr r3, [r4, r2]
003fb808  34 00 93 e5                                      ldr r0, [r3, #0x34]
003fb80c  b2 35 04 eb                                      bl #0x508edc
003fb810  00 50 a0 e1                                      mov r5, r0
003fb814  18 14 9f e5                                      ldr r1, [pc, #0x418]
003fb818  d4 30 8d e2                                      add r3, sp, #0xd4
003fb81c  03 00 a0 e1                                      mov r0, r3
003fb820  01 10 8f e0                                      add r1, pc, r1
003fb824  40 20 8d e2                                      add r2, sp, #0x40
003fb828  00 30 8d e5                                      str r3, [sp]
003fb82c  2e 62 fc eb                                      bl #0x3140ec
003fb830  00 00 55 e3                                      cmp r5, #0
003fb834  0c 50 8d 05                                      streq r5, [sp, #0xc]
003fb838  52 00 00 0a                                      beq #0x3fb988
003fb83c  f4 33 9f e5                                      ldr r3, [pc, #0x3f4]
003fb840  05 00 a0 e1                                      mov r0, r5
003fb844  03 30 94 e7                                      ldr r3, [r4, r3]
003fb848  00 10 93 e5                                      ldr r1, [r3]
003fb84c  e0 4c fc eb                                      bl #0x30ebd4
003fb850  00 00 50 e3                                      cmp r0, #0
003fb854  0c 00 8d 05                                      streq r0, [sp, #0xc]
003fb858  00 80 a0 01                                      moveq r8, r0
003fb85c  03 00 00 0a                                      beq #0x3fb870
003fb860  00 10 55 e0                                      subs r1, r5, r0
003fb864  01 10 a0 13                                      movne r1, #1
003fb868  0c 10 8d e5                                      str r1, [sp, #0xc]
003fb86c  00 80 65 e0                                      rsb r8, r5, r0
003fb870  00 00 59 e3                                      cmp sb, #0
003fb874  02 90 a0 13                                      movne sb, #2
003fb878  bc 33 9f e5                                      ldr r3, [pc, #0x3bc]
003fb87c  00 00 5b e3                                      cmp fp, #0
003fb880  09 20 a0 11                                      movne r2, sb
003fb884  01 20 82 12                                      addne r2, r2, #1
003fb888  05 00 a0 e1                                      mov r0, r5
003fb88c  10 90 8d e5                                      str sb, [sp, #0x10]
003fb890  18 30 8d e5                                      str r3, [sp, #0x18]
003fb894  10 20 8d 15                                      strne r2, [sp, #0x10]
003fb898  6d 49 fc eb                                      bl #0x30de54
003fb89c  00 20 e0 e3                                      mvn r2, #0
003fb8a0  f0 90 8d e2                                      add sb, sp, #0xf0
003fb8a4  00 b0 a0 e1                                      mov fp, r0
003fb8a8  01 00 82 e2                                      add r0, r2, #1
003fb8ac  d0 20 29 e5                                      str r2, [sb, #-0xd0]!
003fb8b0  00 00 52 e3                                      cmp r2, #0
003fb8b4  0b 00 50 11                                      cmpne r0, fp
003fb8b8  08 30 89 e2                                      add r3, sb, #8
003fb8bc  00 10 a0 a3                                      movge r1, #0
003fb8c0  1c 80 8d e5                                      str r8, [sp, #0x1c]
003fb8c4  04 10 89 a5                                      strge r1, [sb, #4]
003fb8c8  03 80 a0 e1                                      mov r8, r3
003fb8cc  07 00 00 aa                                      bge #0x3fb8f0
003fb8d0  18 20 9d e5                                      ldr r2, [sp, #0x18]
003fb8d4  00 00 85 e0                                      add r0, r5, r0
003fb8d8  02 30 94 e7                                      ldr r3, [r4, r2]
003fb8dc  00 10 93 e5                                      ldr r1, [r3]
003fb8e0  bb 4c fc eb                                      bl #0x30ebd4
003fb8e4  00 00 50 e3                                      cmp r0, #0
003fb8e8  00 00 65 10                                      rsbne r0, r5, r0
003fb8ec  04 00 89 e5                                      str r0, [sb, #4]
003fb8f0  08 00 59 e1                                      cmp sb, r8
003fb8f4  08 00 00 0a                                      beq #0x3fb91c
003fb8f8  04 20 b9 e5                                      ldr r2, [sb, #4]!
003fb8fc  01 00 82 e2                                      add r0, r2, #1
003fb900  00 00 52 e3                                      cmp r2, #0
003fb904  0b 00 50 11                                      cmpne r0, fp
003fb908  00 10 a0 a3                                      movge r1, #0
003fb90c  04 10 89 a5                                      strge r1, [sb, #4]
003fb910  ee ff ff ba                                      blt #0x3fb8d0
003fb914  08 00 59 e1                                      cmp sb, r8
003fb918  f6 ff ff 1a                                      bne #0x3fb8f8
003fb91c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003fb920  1c 80 9d e5                                      ldr r8, [sp, #0x1c]
003fb924  10 20 9d e5                                      ldr r2, [sp, #0x10]
003fb928  00 00 53 e3                                      cmp r3, #0
003fb92c  0b 80 a0 01                                      moveq r8, fp
003fb930  f0 10 8d e2                                      add r1, sp, #0xf0
003fb934  30 80 8d e5                                      str r8, [sp, #0x30]
003fb938  02 31 81 e0                                      add r3, r1, r2, lsl #2
003fb93c  d0 b0 13 e5                                      ldr fp, [r3, #-0xd0]
003fb940  00 00 5b e3                                      cmp fp, #0
003fb944  02 00 00 0a                                      beq #0x3fb954
003fb948  cc 90 13 e5                                      ldr sb, [r3, #-0xcc]
003fb94c  00 00 59 e3                                      cmp sb, #0
003fb950  8c 00 00 1a                                      bne #0x3fbb88
003fb954  bc 90 8d e2                                      add sb, sp, #0xbc
003fb958  05 10 a0 e1                                      mov r1, r5
003fb95c  3c 20 8d e2                                      add r2, sp, #0x3c
003fb960  09 00 a0 e1                                      mov r0, sb
003fb964  e0 61 fc eb                                      bl #0x3140ec
003fb968  20 20 9d e5                                      ldr r2, [sp, #0x20]
003fb96c  08 30 a0 e1                                      mov r3, r8
003fb970  00 00 9d e5                                      ldr r0, [sp]
003fb974  01 20 82 e2                                      add r2, r2, #1
003fb978  09 10 a0 e1                                      mov r1, sb
003fb97c  67 fb ff eb                                      bl #0x3fa720
003fb980  09 00 a0 e1                                      mov r0, sb
003fb984  08 60 fc eb                                      bl #0x3139ac
003fb988  8c 80 8d e2                                      add r8, sp, #0x8c
003fb98c  08 00 a0 e1                                      mov r0, r8
003fb990  10 10 a0 e3                                      mov r1, #0x10
003fb994  9c 80 8d e5                                      str r8, [sp, #0x9c]
003fb998  a0 80 8d e5                                      str r8, [sp, #0xa0]
003fb99c  36 57 fc eb                                      bl #0x31167c
003fb9a0  9c 30 9d e5                                      ldr r3, [sp, #0x9c]
003fb9a4  94 12 9f e5                                      ldr r1, [pc, #0x294]
003fb9a8  74 90 8d e2                                      add sb, sp, #0x74
003fb9ac  00 20 a0 e3                                      mov r2, #0
003fb9b0  00 20 c3 e5                                      strb r2, [r3]
003fb9b4  01 10 8f e0                                      add r1, pc, r1
003fb9b8  34 20 8d e2                                      add r2, sp, #0x34
003fb9bc  09 00 a0 e1                                      mov r0, sb
003fb9c0  c9 61 fc eb                                      bl #0x3140ec
003fb9c4  04 30 9d e5                                      ldr r3, [sp, #4]
003fb9c8  09 10 a0 e1                                      mov r1, sb
003fb9cc  03 20 94 e7                                      ldr r2, [r4, r3]
003fb9d0  54 30 97 e5                                      ldr r3, [r7, #0x54]
003fb9d4  34 00 92 e5                                      ldr r0, [r2, #0x34]
003fb9d8  14 20 9d e5                                      ldr r2, [sp, #0x14]
003fb9dc  44 35 04 eb                                      bl #0x508ef4
003fb9e0  08 10 9d e5                                      ldr r1, [sp, #8]
003fb9e4  08 00 a0 e1                                      mov r0, r8
003fb9e8  00 00 51 e3                                      cmp r1, #0
003fb9ec  84 20 9d 05                                      ldreq r2, [sp, #0x84]
003fb9f0  08 20 9d 15                                      ldrne r2, [sp, #8]
003fb9f4  14 10 9d 15                                      ldrne r1, [sp, #0x14]
003fb9f8  88 30 9d 05                                      ldreq r3, [sp, #0x88]
003fb9fc  02 30 61 10                                      rsbne r3, r1, r2
003fba00  02 30 63 00                                      rsbeq r3, r3, r2
003fba04  09 10 a0 e1                                      mov r1, sb
003fba08  00 20 a0 e3                                      mov r2, #0
003fba0c  43 fb ff eb                                      bl #0x3fa720
003fba10  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
003fba14  0a 00 a0 e1                                      mov r0, sl
003fba18  01 10 8f e0                                      add r1, pc, r1
003fba1c  01 20 a0 e1                                      mov r2, r1
003fba20  ee 53 fc eb                                      bl #0x3109e0
003fba24  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003fba28  00 00 52 e3                                      cmp r2, #0
003fba2c  2d 00 00 1a                                      bne #0x3fbae8
003fba30  00 00 55 e3                                      cmp r5, #0
003fba34  1a 00 00 0a                                      beq #0x3fbaa4
003fba38  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
003fba3c  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
003fba40  5c 50 8d e2                                      add r5, sp, #0x5c
003fba44  05 00 a0 e1                                      mov r0, r5
003fba48  01 10 63 e0                                      rsb r1, r3, r1
003fba4c  02 10 81 e2                                      add r1, r1, #2
003fba50  6c 50 8d e5                                      str r5, [sp, #0x6c]
003fba54  70 50 8d e5                                      str r5, [sp, #0x70]
003fba58  07 57 fc eb                                      bl #0x31167c
003fba5c  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
003fba60  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003fba64  05 00 a0 e1                                      mov r0, r5
003fba68  00 10 c3 e5                                      strb r1, [r3]
003fba6c  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
003fba70  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
003fba74  62 53 fc eb                                      bl #0x310804
003fba78  c8 11 9f e5                                      ldr r1, [pc, #0x1c8]
003fba7c  05 00 a0 e1                                      mov r0, r5
003fba80  01 10 8f e0                                      add r1, pc, r1
003fba84  01 10 81 e2                                      add r1, r1, #1
003fba88  76 fb ff eb                                      bl #0x3fa868
003fba8c  0a 00 a0 e1                                      mov r0, sl
003fba90  70 10 9d e5                                      ldr r1, [sp, #0x70]
003fba94  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
003fba98  59 53 fc eb                                      bl #0x310804
003fba9c  05 00 a0 e1                                      mov r0, r5
003fbaa0  c1 5f fc eb                                      bl #0x3139ac
003fbaa4  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
003fbaa8  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
003fbaac  0a 00 a0 e1                                      mov r0, sl
003fbab0  53 53 fc eb                                      bl #0x310804
003fbab4  09 00 a0 e1                                      mov r0, sb
003fbab8  bb 5f fc eb                                      bl #0x3139ac
003fbabc  08 00 a0 e1                                      mov r0, r8
003fbac0  b9 5f fc eb                                      bl #0x3139ac
003fbac4  00 00 9d e5                                      ldr r0, [sp]
003fbac8  b7 5f fc eb                                      bl #0x3139ac
003fbacc  06 30 94 e7                                      ldr r3, [r4, r6]
003fbad0  ec 20 9d e5                                      ldr r2, [sp, #0xec]
003fbad4  00 30 93 e5                                      ldr r3, [r3]
003fbad8  03 00 52 e1                                      cmp r2, r3
003fbadc  4d 00 00 1a                                      bne #0x3fbc18
003fbae0  f4 d0 8d e2                                      add sp, sp, #0xf4
003fbae4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003fbae8  0a 00 a0 e1                                      mov r0, sl
003fbaec  a0 10 9d e5                                      ldr r1, [sp, #0xa0]
003fbaf0  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
003fbaf4  42 53 fc eb                                      bl #0x310804
003fbaf8  00 00 55 e3                                      cmp r5, #0
003fbafc  1a 00 00 0a                                      beq #0x3fbb6c
003fbb00  e8 30 9d e5                                      ldr r3, [sp, #0xe8]
003fbb04  e4 10 9d e5                                      ldr r1, [sp, #0xe4]
003fbb08  44 50 8d e2                                      add r5, sp, #0x44
003fbb0c  05 00 a0 e1                                      mov r0, r5
003fbb10  01 10 63 e0                                      rsb r1, r3, r1
003fbb14  02 10 81 e2                                      add r1, r1, #2
003fbb18  54 50 8d e5                                      str r5, [sp, #0x54]
003fbb1c  58 50 8d e5                                      str r5, [sp, #0x58]
003fbb20  d5 56 fc eb                                      bl #0x31167c
003fbb24  20 11 9f e5                                      ldr r1, [pc, #0x120]
003fbb28  54 30 9d e5                                      ldr r3, [sp, #0x54]
003fbb2c  00 20 a0 e3                                      mov r2, #0
003fbb30  01 10 8f e0                                      add r1, pc, r1
003fbb34  00 20 c3 e5                                      strb r2, [r3]
003fbb38  01 10 81 e2                                      add r1, r1, #1
003fbb3c  05 00 a0 e1                                      mov r0, r5
003fbb40  48 fb ff eb                                      bl #0x3fa868
003fbb44  e8 10 9d e5                                      ldr r1, [sp, #0xe8]
003fbb48  e4 20 9d e5                                      ldr r2, [sp, #0xe4]
003fbb4c  05 00 a0 e1                                      mov r0, r5
003fbb50  2b 53 fc eb                                      bl #0x310804
003fbb54  0a 00 a0 e1                                      mov r0, sl
003fbb58  58 10 9d e5                                      ldr r1, [sp, #0x58]
003fbb5c  54 20 9d e5                                      ldr r2, [sp, #0x54]
003fbb60  27 53 fc eb                                      bl #0x310804
003fbb64  05 00 a0 e1                                      mov r0, r5
003fbb68  8f 5f fc eb                                      bl #0x3139ac
003fbb6c  09 00 a0 e1                                      mov r0, sb
003fbb70  8d 5f fc eb                                      bl #0x3139ac
003fbb74  08 00 a0 e1                                      mov r0, r8
003fbb78  8b 5f fc eb                                      bl #0x3139ac
003fbb7c  00 00 9d e5                                      ldr r0, [sp]
003fbb80  89 5f fc eb                                      bl #0x3139ac
003fbb84  d0 ff ff ea                                      b #0x3fbacc
003fbb88  a4 80 8d e2                                      add r8, sp, #0xa4
003fbb8c  05 10 a0 e1                                      mov r1, r5
003fbb90  38 20 8d e2                                      add r2, sp, #0x38
003fbb94  08 00 a0 e1                                      mov r0, r8
003fbb98  53 61 fc eb                                      bl #0x3140ec
003fbb9c  09 30 6b e0                                      rsb r3, fp, sb
003fbba0  01 20 8b e2                                      add r2, fp, #1
003fbba4  01 30 43 e2                                      sub r3, r3, #1
003fbba8  00 00 9d e5                                      ldr r0, [sp]
003fbbac  08 10 a0 e1                                      mov r1, r8
003fbbb0  da fa ff eb                                      bl #0x3fa720
003fbbb4  08 00 a0 e1                                      mov r0, r8
003fbbb8  7b 5f fc eb                                      bl #0x3139ac
003fbbbc  71 ff ff ea                                      b #0x3fb988
003fbbc0  88 30 9f e5                                      ldr r3, [pc, #0x88]
003fbbc4  14 00 9d e5                                      ldr r0, [sp, #0x14]
003fbbc8  03 30 94 e7                                      ldr r3, [r4, r3]
003fbbcc  00 10 93 e5                                      ldr r1, [r3]
003fbbd0  ff 4b fc eb                                      bl #0x30ebd4
003fbbd4  00 00 50 e3                                      cmp r0, #0
003fbbd8  01 90 a0 13                                      movne sb, #1
003fbbdc  00 b0 a0 e1                                      mov fp, r0
003fbbe0  08 00 8d e5                                      str r0, [sp, #8]
003fbbe4  09 b0 a0 11                                      movne fp, sb
003fbbe8  00 ff ff 1a                                      bne #0x3fb7f0
003fbbec  60 30 9f e5                                      ldr r3, [pc, #0x60]
003fbbf0  14 00 9d e5                                      ldr r0, [sp, #0x14]
003fbbf4  03 30 94 e7                                      ldr r3, [r4, r3]
003fbbf8  00 10 93 e5                                      ldr r1, [r3]
003fbbfc  f4 4b fc eb                                      bl #0x30ebd4
003fbc00  00 00 50 e3                                      cmp r0, #0
003fbc04  08 00 8d e5                                      str r0, [sp, #8]
003fbc08  08 90 9d 05                                      ldreq sb, [sp, #8]
003fbc0c  01 90 a0 13                                      movne sb, #1
003fbc10  09 b0 a0 01                                      moveq fp, sb
003fbc14  f5 fe ff ea                                      b #0x3fb7f0
003fbc18  bc 49 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003fbc1c  2c 93 59 00 6c 28 00 00 ac 40 00 00 7c 00 4d 00  .byte 0x2c, 0x93, 0x59, 0x00, 0x6c, 0x28, 0x00, 0x00, 0xac, 0x40, 0x00, 0x00, 0x7c, 0x00, 0x4d, 0x00
003fbc2c  f4 37 00 00 f4 3d 00 00 e8 ff 4c 00 44 23 00 00  .byte 0xf4, 0x37, 0x00, 0x00, 0xf4, 0x3d, 0x00, 0x00, 0xe8, 0xff, 0x4c, 0x00, 0x44, 0x23, 0x00, 0x00
003fbc3c  fc 17 00 00 54 fe 4c 00 f0 fd 4c 00 b0 59 4c 00  .byte 0xfc, 0x17, 0x00, 0x00, 0x54, 0xfe, 0x4c, 0x00, 0xf0, 0xfd, 0x4c, 0x00, 0xb0, 0x59, 0x4c, 0x00
003fbc4c  00 59 4c 00 ec 39 00 00 e8 1b 00 00              .byte 0x00, 0x59, 0x4c, 0x00, 0xec, 0x39, 0x00, 0x00, 0xe8, 0x1b, 0x00, 0x00

; FUNCTION 0x003fbc58, declared_size=8, range_size=8, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance8SetValueEi
; demangled: ItemInstance::SetValue(int)
; decoder-mode: arm
003fbc58  54 10 80 e5                                      str r1, [r0, #0x54]
003fbc5c  bc fe ff ea                                      b #0x3fb754

; FUNCTION 0x003fbc60, declared_size=1364, range_size=1364, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance8AddPowerEii
; demangled: ItemInstance::AddPower(int, int)
; decoder-mode: arm
003fbc60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003fbc64  10 55 9f e5                                      ldr r5, [pc, #0x510]
003fbc68  10 35 9f e5                                      ldr r3, [pc, #0x510]
003fbc6c  9c d0 4d e2                                      sub sp, sp, #0x9c
003fbc70  05 50 8f e0                                      add r5, pc, r5
003fbc74  0c 30 8d e5                                      str r3, [sp, #0xc]
003fbc78  03 30 95 e7                                      ldr r3, [r5, r3]
003fbc7c  00 70 51 e2                                      subs r7, r1, #0
003fbc80  00 40 a0 e1                                      mov r4, r0
003fbc84  00 30 93 e5                                      ldr r3, [r3]
003fbc88  02 60 a0 e1                                      mov r6, r2
003fbc8c  94 30 8d e5                                      str r3, [sp, #0x94]
003fbc90  99 00 00 ba                                      blt #0x3fbefc
003fbc94  e8 34 9f e5                                      ldr r3, [pc, #0x4e8]
003fbc98  03 30 95 e7                                      ldr r3, [r5, r3]
003fbc9c  00 30 93 e5                                      ldr r3, [r3]
003fbca0  03 00 57 e1                                      cmp r7, r3
003fbca4  94 00 00 aa                                      bge #0x3fbefc
003fbca8  01 00 56 e3                                      cmp r6, #1
003fbcac  09 01 00 0a                                      beq #0x3fc0d8
003fbcb0  02 00 56 e3                                      cmp r6, #2
003fbcb4  07 60 a0 11                                      movne r6, r7
003fbcb8  06 70 a0 11                                      movne r7, r6
003fbcbc  1d 01 00 0a                                      beq #0x3fc138
003fbcc0  c0 34 9f e5                                      ldr r3, [pc, #0x4c0]
003fbcc4  28 80 a0 e3                                      mov r8, #0x28
003fbcc8  74 90 8d e2                                      add sb, sp, #0x74
003fbccc  03 30 95 e7                                      ldr r3, [r5, r3]
003fbcd0  08 a0 89 e2                                      add sl, sb, #8
003fbcd4  0a 00 a0 e1                                      mov r0, sl
003fbcd8  00 30 93 e5                                      ldr r3, [r3]
003fbcdc  10 10 a0 e3                                      mov r1, #0x10
003fbce0  5c b0 84 e2                                      add fp, r4, #0x5c
003fbce4  98 36 28 e0                                      mla r8, r8, r6, r3
003fbce8  00 60 a0 e3                                      mov r6, #0
003fbcec  1c 30 98 e5                                      ldr r3, [r8, #0x1c]
003fbcf0  74 70 8d e5                                      str r7, [sp, #0x74]
003fbcf4  8c a0 8d e5                                      str sl, [sp, #0x8c]
003fbcf8  78 30 8d e5                                      str r3, [sp, #0x78]
003fbcfc  90 a0 8d e5                                      str sl, [sp, #0x90]
003fbd00  5d 56 fc eb                                      bl #0x31167c
003fbd04  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003fbd08  09 10 a0 e1                                      mov r1, sb
003fbd0c  0b 00 a0 e1                                      mov r0, fp
003fbd10  00 60 c3 e5                                      strb r6, [r3]
003fbd14  49 fe ff eb                                      bl #0x3fb640
003fbd18  0a 00 a0 e1                                      mov r0, sl
003fbd1c  22 5f fc eb                                      bl #0x3139ac
003fbd20  0c 30 98 e5                                      ldr r3, [r8, #0xc]
003fbd24  06 00 53 e1                                      cmp r3, r6
003fbd28  da 00 00 0a                                      beq #0x3fc098
003fbd2c  58 14 9f e5                                      ldr r1, [pc, #0x458]
003fbd30  24 60 8d e5                                      str r6, [sp, #0x24]
003fbd34  28 60 8d e5                                      str r6, [sp, #0x28]
003fbd38  01 30 95 e7                                      ldr r3, [r5, r1]
003fbd3c  14 10 8d e5                                      str r1, [sp, #0x14]
003fbd40  2c 60 8d e5                                      str r6, [sp, #0x2c]
003fbd44  08 30 83 e2                                      add r3, r3, #8
003fbd48  20 30 8d e5                                      str r3, [sp, #0x20]
003fbd4c  0c 30 98 e5                                      ldr r3, [r8, #0xc]
003fbd50  06 00 53 e1                                      cmp r3, r6
003fbd54  20 20 8d 02                                      addeq r2, sp, #0x20
003fbd58  10 20 8d 05                                      streq r2, [sp, #0x10]
003fbd5c  2a 00 00 0a                                      beq #0x3fbe0c
003fbd60  55 25 05 e3                                      movw r2, #0x5555
003fbd64  20 10 8d e2                                      add r1, sp, #0x20
003fbd68  02 27 82 e1                                      orr r2, r2, r2, lsl #14
003fbd6c  06 30 a0 e1                                      mov r3, r6
003fbd70  10 10 8d e5                                      str r1, [sp, #0x10]
003fbd74  08 20 8d e5                                      str r2, [sp, #8]
003fbd78  0c 10 81 e2                                      add r1, r1, #0xc
003fbd7c  30 20 8d e2                                      add r2, sp, #0x30
003fbd80  03 70 a0 e1                                      mov r7, r3
003fbd84  18 10 8d e5                                      str r1, [sp, #0x18]
003fbd88  1c 20 8d e5                                      str r2, [sp, #0x1c]
003fbd8c  03 a0 a0 e1                                      mov sl, r3
003fbd90  01 00 00 ea                                      b #0x3fbd9c
003fbd94  28 60 9d e5                                      ldr r6, [sp, #0x28]
003fbd98  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003fbd9c  03 00 56 e1                                      cmp r6, r3
003fbda0  6b 00 00 0a                                      beq #0x3fbf54
003fbda4  00 30 a0 e3                                      mov r3, #0
003fbda8  00 30 86 e5                                      str r3, [r6]
003fbdac  08 a0 86 e5                                      str sl, [r6, #8]
003fbdb0  04 a0 86 e5                                      str sl, [r6, #4]
003fbdb4  28 60 9d e5                                      ldr r6, [sp, #0x28]
003fbdb8  0c 60 86 e2                                      add r6, r6, #0xc
003fbdbc  28 60 8d e5                                      str r6, [sp, #0x28]
003fbdc0  10 30 98 e5                                      ldr r3, [r8, #0x10]
003fbdc4  07 b2 a0 e1                                      lsl fp, r7, #4
003fbdc8  0c 90 46 e2                                      sub sb, r6, #0xc
003fbdcc  0b 30 83 e0                                      add r3, r3, fp
003fbdd0  08 00 93 e5                                      ldr r0, [r3, #8]
003fbdd4  e2 4a fc eb                                      bl #0x30e964
003fbdd8  ee 15 a0 e3                                      mov r1, #0x3b800000
003fbddc  e2 4b fc eb                                      bl #0x30ed6c
003fbde0  0c 00 06 e5                                      str r0, [r6, #-0xc]
003fbde4  10 30 98 e5                                      ldr r3, [r8, #0x10]
003fbde8  01 70 87 e2                                      add r7, r7, #1
003fbdec  0b b0 83 e0                                      add fp, r3, fp
003fbdf0  08 30 9b e5                                      ldr r3, [fp, #8]
003fbdf4  08 a0 89 e5                                      str sl, [sb, #8]
003fbdf8  43 34 a0 e1                                      asr r3, r3, #8
003fbdfc  04 30 89 e5                                      str r3, [sb, #4]
003fbe00  0c 30 98 e5                                      ldr r3, [r8, #0xc]
003fbe04  07 00 53 e1                                      cmp r3, r7
003fbe08  e1 ff ff 8a                                      bhi #0x3fbd94
003fbe0c  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
003fbe10  14 10 98 e5                                      ldr r1, [r8, #0x14]
003fbe14  60 70 94 e5                                      ldr r7, [r4, #0x60]
003fbe18  03 30 95 e7                                      ldr r3, [r5, r3]
003fbe1c  18 70 47 e2                                      sub r7, r7, #0x18
003fbe20  34 60 93 e5                                      ldr r6, [r3, #0x34]
003fbe24  06 00 a0 e1                                      mov r0, r6
003fbe28  2b 34 04 eb                                      bl #0x508edc
003fbe2c  07 10 a0 e1                                      mov r1, r7
003fbe30  00 20 a0 e1                                      mov r2, r0
003fbe34  10 30 9d e5                                      ldr r3, [sp, #0x10]
003fbe38  06 00 a0 e1                                      mov r0, r6
003fbe3c  2a 37 04 eb                                      bl #0x509aec
003fbe40  14 20 9d e5                                      ldr r2, [sp, #0x14]
003fbe44  10 10 9d e5                                      ldr r1, [sp, #0x10]
003fbe48  02 30 95 e7                                      ldr r3, [r5, r2]
003fbe4c  04 00 81 e2                                      add r0, r1, #4
003fbe50  08 30 83 e2                                      add r3, r3, #8
003fbe54  20 30 8d e5                                      str r3, [sp, #0x20]
003fbe58  2e fb ff eb                                      bl #0x3fab18
003fbe5c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
003fbe60  60 60 94 e5                                      ldr r6, [r4, #0x60]
003fbe64  06 60 63 e0                                      rsb r6, r3, r6
003fbe68  c6 62 a0 e1                                      asr r6, r6, #5
003fbe6c  01 00 56 e2                                      subs r0, r6, #1
003fbe70  19 00 00 0a                                      beq #0x3fbedc
003fbe74  01 10 40 e2                                      sub r1, r0, #1
003fbe78  81 12 83 e0                                      add r1, r3, r1, lsl #5
003fbe7c  80 02 83 e0                                      add r0, r3, r0, lsl #5
003fbe80  04 20 91 e5                                      ldr r2, [r1, #4]
003fbe84  04 30 90 e5                                      ldr r3, [r0, #4]
003fbe88  03 00 52 e1                                      cmp r2, r3
003fbe8c  12 00 00 da                                      ble #0x3fbedc
003fbe90  be 73 46 e2                                      sub r7, r6, #0xf8000002
003fbe94  fe 83 46 e2                                      sub r8, r6, #0xf8000003
003fbe98  88 82 a0 e1                                      lsl r8, r8, #5
003fbe9c  87 72 a0 e1                                      lsl r7, r7, #5
003fbea0  02 60 46 e2                                      sub r6, r6, #2
003fbea4  09 00 00 ea                                      b #0x3fbed0
003fbea8  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
003fbeac  01 60 46 e2                                      sub r6, r6, #1
003fbeb0  07 00 81 e0                                      add r0, r1, r7
003fbeb4  08 10 81 e0                                      add r1, r1, r8
003fbeb8  04 20 91 e5                                      ldr r2, [r1, #4]
003fbebc  04 30 90 e5                                      ldr r3, [r0, #4]
003fbec0  20 80 48 e2                                      sub r8, r8, #0x20
003fbec4  20 70 47 e2                                      sub r7, r7, #0x20
003fbec8  03 00 52 e1                                      cmp r2, r3
003fbecc  02 00 00 da                                      ble #0x3fbedc
003fbed0  a6 fd ff eb                                      bl #0x3fb570
003fbed4  00 00 56 e3                                      cmp r6, #0
003fbed8  f2 ff ff 1a                                      bne #0x3fbea8
003fbedc  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003fbee0  02 30 95 e7                                      ldr r3, [r5, r2]
003fbee4  94 20 9d e5                                      ldr r2, [sp, #0x94]
003fbee8  00 30 93 e5                                      ldr r3, [r3]
003fbeec  03 00 52 e1                                      cmp r2, r3
003fbef0  a0 00 00 1a                                      bne #0x3fc178
003fbef4  9c d0 8d e2                                      add sp, sp, #0x9c
003fbef8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003fbefc  90 32 9f e5                                      ldr r3, [pc, #0x290]
003fbf00  03 30 95 e7                                      ldr r3, [r5, r3]
003fbf04  00 30 93 e5                                      ldr r3, [r3]
003fbf08  02 00 53 e3                                      cmp r3, #2
003fbf0c  00 30 a0 03                                      moveq r3, #0
003fbf10  00 30 83 05                                      streq r3, [r3]
003fbf14  63 ff ff 0a                                      beq #0x3fbca8
003fbf18  01 00 53 e3                                      cmp r3, #1
003fbf1c  61 ff ff 1a                                      bne #0x3fbca8
003fbf20  70 02 9f e5                                      ldr r0, [pc, #0x270]
003fbf24  70 12 9f e5                                      ldr r1, [pc, #0x270]
003fbf28  70 22 9f e5                                      ldr r2, [pc, #0x270]
003fbf2c  00 00 95 e7                                      ldr r0, [r5, r0]
003fbf30  6c 32 9f e5                                      ldr r3, [pc, #0x26c]
003fbf34  5e c2 00 e3                                      movw ip, #0x25e
003fbf38  01 10 8f e0                                      add r1, pc, r1
003fbf3c  02 20 8f e0                                      add r2, pc, r2
003fbf40  03 30 8f e0                                      add r3, pc, r3
003fbf44  a8 00 80 e2                                      add r0, r0, #0xa8
003fbf48  00 c0 8d e5                                      str ip, [sp]
003fbf4c  2c 48 fc eb                                      bl #0x30e004
003fbf50  54 ff ff ea                                      b #0x3fbca8
003fbf54  24 30 9d e5                                      ldr r3, [sp, #0x24]
003fbf58  08 10 9d e5                                      ldr r1, [sp, #8]
003fbf5c  06 30 63 e0                                      rsb r3, r3, r6
003fbf60  43 31 a0 e1                                      asr r3, r3, #2
003fbf64  03 21 83 e0                                      add r2, r3, r3, lsl #2
003fbf68  02 22 82 e0                                      add r2, r2, r2, lsl #4
003fbf6c  02 24 82 e0                                      add r2, r2, r2, lsl #8
003fbf70  02 28 82 e0                                      add r2, r2, r2, lsl #16
003fbf74  82 20 83 e0                                      add r2, r3, r2, lsl #1
003fbf78  01 00 52 e3                                      cmp r2, #1
003fbf7c  02 30 82 20                                      addhs r3, r2, r2
003fbf80  01 30 82 32                                      addlo r3, r2, #1
003fbf84  01 00 53 e1                                      cmp r3, r1
003fbf88  3f 00 00 8a                                      bhi #0x3fc08c
003fbf8c  03 00 52 e1                                      cmp r2, r3
003fbf90  3d 00 00 8a                                      bhi #0x3fc08c
003fbf94  03 10 a0 e1                                      mov r1, r3
003fbf98  18 00 9d e5                                      ldr r0, [sp, #0x18]
003fbf9c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003fbfa0  30 30 8d e5                                      str r3, [sp, #0x30]
003fbfa4  2a fb ff eb                                      bl #0x3fac54
003fbfa8  24 c0 9d e5                                      ldr ip, [sp, #0x24]
003fbfac  00 90 a0 e1                                      mov sb, r0
003fbfb0  06 60 6c e0                                      rsb r6, ip, r6
003fbfb4  46 31 a0 e1                                      asr r3, r6, #2
003fbfb8  03 61 83 e0                                      add r6, r3, r3, lsl #2
003fbfbc  06 62 86 e0                                      add r6, r6, r6, lsl #4
003fbfc0  06 64 86 e0                                      add r6, r6, r6, lsl #8
003fbfc4  06 68 86 e0                                      add r6, r6, r6, lsl #16
003fbfc8  86 60 83 e0                                      add r6, r3, r6, lsl #1
003fbfcc  00 00 56 e3                                      cmp r6, #0
003fbfd0  00 30 a0 d1                                      movle r3, r0
003fbfd4  10 00 00 da                                      ble #0x3fc01c
003fbfd8  06 00 a0 e1                                      mov r0, r6
003fbfdc  00 30 a0 e3                                      mov r3, #0
003fbfe0  03 20 9c e7                                      ldr r2, [ip, r3]
003fbfe4  03 10 8c e0                                      add r1, ip, r3
003fbfe8  04 10 81 e2                                      add r1, r1, #4
003fbfec  03 20 89 e7                                      str r2, [sb, r3]
003fbff0  04 e0 91 e4                                      ldr lr, [r1], #4
003fbff4  03 20 89 e0                                      add r2, sb, r3
003fbff8  04 20 82 e2                                      add r2, r2, #4
003fbffc  04 e0 82 e4                                      str lr, [r2], #4
003fc000  00 10 91 e5                                      ldr r1, [r1]
003fc004  01 00 50 e2                                      subs r0, r0, #1
003fc008  0c 30 83 e2                                      add r3, r3, #0xc
003fc00c  00 10 82 e5                                      str r1, [r2]
003fc010  f2 ff ff 1a                                      bne #0x3fbfe0
003fc014  0c 20 a0 e3                                      mov r2, #0xc
003fc018  92 96 23 e0                                      mla r3, r2, r6, sb
003fc01c  08 a0 83 e5                                      str sl, [r3, #8]
003fc020  04 a0 83 e5                                      str sl, [r3, #4]
003fc024  03 60 a0 e1                                      mov r6, r3
003fc028  00 30 a0 e3                                      mov r3, #0
003fc02c  0c 30 86 e4                                      str r3, [r6], #0xc
003fc030  24 00 9d e5                                      ldr r0, [sp, #0x24]
003fc034  2c 30 9d e5                                      ldr r3, [sp, #0x2c]
003fc038  00 00 50 e3                                      cmp r0, #0
003fc03c  0b 00 00 0a                                      beq #0x3fc070
003fc040  03 30 60 e0                                      rsb r3, r0, r3
003fc044  43 31 a0 e1                                      asr r3, r3, #2
003fc048  0c 20 a0 e3                                      mov r2, #0xc
003fc04c  03 11 83 e0                                      add r1, r3, r3, lsl #2
003fc050  01 12 81 e0                                      add r1, r1, r1, lsl #4
003fc054  01 14 81 e0                                      add r1, r1, r1, lsl #8
003fc058  01 18 81 e0                                      add r1, r1, r1, lsl #16
003fc05c  81 10 83 e0                                      add r1, r3, r1, lsl #1
003fc060  92 01 01 e0                                      mul r1, r2, r1
003fc064  80 00 51 e3                                      cmp r1, #0x80
003fc068  18 00 00 8a                                      bhi #0x3fc0d0
003fc06c  a3 33 0c eb                                      bl #0x708f00
003fc070  30 30 9d e5                                      ldr r3, [sp, #0x30]
003fc074  0c 10 a0 e3                                      mov r1, #0xc
003fc078  24 90 8d e5                                      str sb, [sp, #0x24]
003fc07c  91 93 29 e0                                      mla sb, r1, r3, sb
003fc080  28 60 8d e5                                      str r6, [sp, #0x28]
003fc084  2c 90 8d e5                                      str sb, [sp, #0x2c]
003fc088  4c ff ff ea                                      b #0x3fbdc0
003fc08c  55 35 05 e3                                      movw r3, #0x5555
003fc090  03 37 83 e1                                      orr r3, r3, r3, lsl #14
003fc094  be ff ff ea                                      b #0x3fbf94
003fc098  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
003fc09c  14 10 98 e5                                      ldr r1, [r8, #0x14]
003fc0a0  60 60 94 e5                                      ldr r6, [r4, #0x60]
003fc0a4  03 30 95 e7                                      ldr r3, [r5, r3]
003fc0a8  18 60 46 e2                                      sub r6, r6, #0x18
003fc0ac  34 00 93 e5                                      ldr r0, [r3, #0x34]
003fc0b0  89 33 04 eb                                      bl #0x508edc
003fc0b4  00 70 a0 e1                                      mov r7, r0
003fc0b8  65 47 fc eb                                      bl #0x30de54
003fc0bc  07 10 a0 e1                                      mov r1, r7
003fc0c0  00 20 87 e0                                      add r2, r7, r0
003fc0c4  06 00 a0 e1                                      mov r0, r6
003fc0c8  44 52 fc eb                                      bl #0x3109e0
003fc0cc  62 ff ff ea                                      b #0x3fbe5c
003fc0d0  da 50 fc eb                                      bl #0x310440
003fc0d4  e5 ff ff ea                                      b #0x3fc070
003fc0d8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003fc0dc  34 80 8d e2                                      add r8, sp, #0x34
003fc0e0  08 00 a0 e1                                      mov r0, r8
003fc0e4  03 a0 95 e7                                      ldr sl, [r5, r3]
003fc0e8  07 60 a0 e1                                      mov r6, r7
003fc0ec  01 90 87 e2                                      add sb, r7, #1
003fc0f0  00 30 9a e5                                      ldr r3, [sl]
003fc0f4  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
003fc0f8  08 49 fc eb                                      bl #0x30e520
003fc0fc  08 00 a0 e1                                      mov r0, r8
003fc100  53 47 fc eb                                      bl #0x30de54
003fc104  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
003fc108  00 00 88 e0                                      add r0, r8, r0
003fc10c  06 20 a0 e3                                      mov r2, #6
003fc110  01 10 8f e0                                      add r1, pc, r1
003fc114  d3 49 fc eb                                      bl #0x30e868
003fc118  00 30 9a e5                                      ldr r3, [sl]
003fc11c  08 00 a0 e1                                      mov r0, r8
003fc120  09 11 93 e7                                      ldr r1, [r3, sb, lsl #2]
003fc124  7c 48 fc eb                                      bl #0x30e31c
003fc128  00 00 50 e3                                      cmp r0, #0
003fc12c  09 70 a0 01                                      moveq r7, sb
003fc130  07 60 a0 01                                      moveq r6, r7
003fc134  e1 fe ff ea                                      b #0x3fbcc0
003fc138  68 30 9f e5                                      ldr r3, [pc, #0x68]
003fc13c  34 80 8d e2                                      add r8, sp, #0x34
003fc140  08 00 a0 e1                                      mov r0, r8
003fc144  03 a0 95 e7                                      ldr sl, [r5, r3]
003fc148  07 60 a0 e1                                      mov r6, r7
003fc14c  02 90 87 e2                                      add sb, r7, #2
003fc150  00 30 9a e5                                      ldr r3, [sl]
003fc154  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
003fc158  f0 48 fc eb                                      bl #0x30e520
003fc15c  08 00 a0 e1                                      mov r0, r8
003fc160  3b 47 fc eb                                      bl #0x30de54
003fc164  44 10 9f e5                                      ldr r1, [pc, #0x44]
003fc168  00 00 88 e0                                      add r0, r8, r0
003fc16c  0a 20 a0 e3                                      mov r2, #0xa
003fc170  01 10 8f e0                                      add r1, pc, r1
003fc174  e6 ff ff ea                                      b #0x3fc114
003fc178  64 48 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003fc17c  20 8e 59 00 ac 40 00 00 88 11 00 00 e8 3b 00 00  .byte 0x20, 0x8e, 0x59, 0x00, 0xac, 0x40, 0x00, 0x00, 0x88, 0x11, 0x00, 0x00, 0xe8, 0x3b, 0x00, 0x00
003fc18c  88 40 00 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0x88, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003fc19c  a0 24 4c 00 a4 b2 4c 00 08 b0 4c 00 cc 12 00 00  .byte 0xa0, 0x24, 0x4c, 0x00, 0xa4, 0xb2, 0x4c, 0x00, 0x08, 0xb0, 0x4c, 0x00, 0xcc, 0x12, 0x00, 0x00
003fc1ac  10 b1 4c 00 b8 b0 4c 00                          .byte 0x10, 0xb1, 0x4c, 0x00, 0xb8, 0xb0, 0x4c, 0x00

; FUNCTION 0x003fc1b4, declared_size=184, range_size=184, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance18UpdateLocalizationEv
; demangled: ItemInstance::UpdateLocalization()
; decoder-mode: arm
003fc1b4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003fc1b8  00 40 a0 e1                                      mov r4, r0
003fc1bc  0c d0 4d e2                                      sub sp, sp, #0xc
003fc1c0  63 fd ff eb                                      bl #0x3fb754
003fc1c4  04 00 a0 e1                                      mov r0, r4
003fc1c8  30 fc ff eb                                      bl #0x3fb290
003fc1cc  04 00 a0 e1                                      mov r0, r4
003fc1d0  c1 fa ff eb                                      bl #0x3facdc
003fc1d4  04 00 a0 e1                                      mov r0, r4
003fc1d8  28 f7 ff eb                                      bl #0x3f9e80
003fc1dc  00 10 a0 e3                                      mov r1, #0
003fc1e0  00 50 a0 e1                                      mov r5, r0
003fc1e4  00 01 a0 e1                                      lsl r0, r0, #2
003fc1e8  df 50 fc eb                                      bl #0x31056c
003fc1ec  00 00 55 e3                                      cmp r5, #0
003fc1f0  00 60 a0 e1                                      mov r6, r0
003fc1f4  07 00 00 0a                                      beq #0x3fc218
003fc1f8  00 70 a0 e3                                      mov r7, #0
003fc1fc  07 10 a0 e1                                      mov r1, r7
003fc200  04 00 a0 e1                                      mov r0, r4
003fc204  8b f7 ff eb                                      bl #0x3fa038
003fc208  07 01 86 e7                                      str r0, [r6, r7, lsl #2]
003fc20c  01 70 87 e2                                      add r7, r7, #1
003fc210  05 00 57 e1                                      cmp r7, r5
003fc214  f8 ff ff 1a                                      bne #0x3fc1fc
003fc218  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
003fc21c  60 20 94 e5                                      ldr r2, [r4, #0x60]
003fc220  02 00 51 e1                                      cmp r1, r2
003fc224  02 00 00 0a                                      beq #0x3fc234
003fc228  5c 00 84 e2                                      add r0, r4, #0x5c
003fc22c  04 30 8d e2                                      add r3, sp, #4
003fc230  24 f8 ff eb                                      bl #0x3fa2c8
003fc234  00 00 55 e3                                      cmp r5, #0
003fc238  07 00 00 0a                                      beq #0x3fc25c
003fc23c  00 70 a0 e3                                      mov r7, #0
003fc240  07 11 96 e7                                      ldr r1, [r6, r7, lsl #2]
003fc244  04 00 a0 e1                                      mov r0, r4
003fc248  01 70 87 e2                                      add r7, r7, #1
003fc24c  00 20 e0 e3                                      mvn r2, #0
003fc250  82 fe ff eb                                      bl #0x3fbc60
003fc254  05 00 57 e1                                      cmp r7, r5
003fc258  f8 ff ff 1a                                      bne #0x3fc240
003fc25c  06 00 a0 e1                                      mov r0, r6
003fc260  76 50 fc eb                                      bl #0x310440
003fc264  0c d0 8d e2                                      add sp, sp, #0xc
003fc268  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x003fc26c, declared_size=372, range_size=372, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstanceC1Eij
; demangled: ItemInstance::ItemInstance(int, unsigned int)
; decoder-mode: arm
003fc26c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fc270  48 51 9f e5                                      ldr r5, [pc, #0x148]
003fc274  48 31 9f e5                                      ldr r3, [pc, #0x148]
003fc278  00 40 a0 e1                                      mov r4, r0
003fc27c  05 50 8f e0                                      add r5, pc, r5
003fc280  03 30 95 e7                                      ldr r3, [r5, r3]
003fc284  01 60 a0 e1                                      mov r6, r1
003fc288  08 10 80 e2                                      add r1, r0, #8
003fc28c  08 30 83 e2                                      add r3, r3, #8
003fc290  00 30 80 e5                                      str r3, [r0]
003fc294  08 d0 4d e2                                      sub sp, sp, #8
003fc298  01 00 a0 e1                                      mov r0, r1
003fc29c  18 10 84 e5                                      str r1, [r4, #0x18]
003fc2a0  1c 10 84 e5                                      str r1, [r4, #0x1c]
003fc2a4  04 60 84 e5                                      str r6, [r4, #4]
003fc2a8  10 10 a0 e3                                      mov r1, #0x10
003fc2ac  02 80 a0 e1                                      mov r8, r2
003fc2b0  f1 54 fc eb                                      bl #0x31167c
003fc2b4  18 20 94 e5                                      ldr r2, [r4, #0x18]
003fc2b8  00 70 a0 e3                                      mov r7, #0
003fc2bc  20 30 84 e2                                      add r3, r4, #0x20
003fc2c0  00 70 c2 e5                                      strb r7, [r2]
003fc2c4  03 00 a0 e1                                      mov r0, r3
003fc2c8  30 30 84 e5                                      str r3, [r4, #0x30]
003fc2cc  34 30 84 e5                                      str r3, [r4, #0x34]
003fc2d0  10 10 a0 e3                                      mov r1, #0x10
003fc2d4  e8 54 fc eb                                      bl #0x31167c
003fc2d8  30 20 94 e5                                      ldr r2, [r4, #0x30]
003fc2dc  38 30 84 e2                                      add r3, r4, #0x38
003fc2e0  03 00 a0 e1                                      mov r0, r3
003fc2e4  00 70 c2 e5                                      strb r7, [r2]
003fc2e8  10 10 a0 e3                                      mov r1, #0x10
003fc2ec  48 30 84 e5                                      str r3, [r4, #0x48]
003fc2f0  4c 30 84 e5                                      str r3, [r4, #0x4c]
003fc2f4  e0 54 fc eb                                      bl #0x31167c
003fc2f8  48 30 94 e5                                      ldr r3, [r4, #0x48]
003fc2fc  07 00 56 e1                                      cmp r6, r7
003fc300  00 70 c3 e5                                      strb r7, [r3]
003fc304  01 30 a0 e3                                      mov r3, #1
003fc308  68 30 c4 e5                                      strb r3, [r4, #0x68]
003fc30c  00 30 e0 e3                                      mvn r3, #0
003fc310  b0 85 c4 e1                                      strh r8, [r4, #0x50]
003fc314  69 70 c4 e5                                      strb r7, [r4, #0x69]
003fc318  54 70 84 e5                                      str r7, [r4, #0x54]
003fc31c  b8 35 c4 e1                                      strh r3, [r4, #0x58]
003fc320  5c 70 84 e5                                      str r7, [r4, #0x5c]
003fc324  60 70 84 e5                                      str r7, [r4, #0x60]
003fc328  64 70 84 e5                                      str r7, [r4, #0x64]
003fc32c  04 00 00 ba                                      blt #0x3fc344
003fc330  90 30 9f e5                                      ldr r3, [pc, #0x90]
003fc334  03 30 95 e7                                      ldr r3, [r5, r3]
003fc338  00 30 93 e5                                      ldr r3, [r3]
003fc33c  07 00 53 e1                                      cmp r3, r7
003fc340  08 00 00 1a                                      bne #0x3fc368
003fc344  80 30 9f e5                                      ldr r3, [pc, #0x80]
003fc348  03 30 95 e7                                      ldr r3, [r5, r3]
003fc34c  00 30 93 e5                                      ldr r3, [r3]
003fc350  02 00 53 e3                                      cmp r3, #2
003fc354  00 30 a0 03                                      moveq r3, #0
003fc358  00 30 83 05                                      streq r3, [r3]
003fc35c  01 00 00 0a                                      beq #0x3fc368
003fc360  01 00 53 e3                                      cmp r3, #1
003fc364  08 00 00 0a                                      beq #0x3fc38c
003fc368  04 00 a0 e1                                      mov r0, r4
003fc36c  f8 fc ff eb                                      bl #0x3fb754
003fc370  04 00 a0 e1                                      mov r0, r4
003fc374  c5 fb ff eb                                      bl #0x3fb290
003fc378  04 00 a0 e1                                      mov r0, r4
003fc37c  56 fa ff eb                                      bl #0x3facdc
003fc380  04 00 a0 e1                                      mov r0, r4
003fc384  08 d0 8d e2                                      add sp, sp, #8
003fc388  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fc38c  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003fc390  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003fc394  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003fc398  00 00 95 e7                                      ldr r0, [r5, r0]
003fc39c  38 30 9f e5                                      ldr r3, [pc, #0x38]
003fc3a0  54 c0 a0 e3                                      mov ip, #0x54
003fc3a4  01 10 8f e0                                      add r1, pc, r1
003fc3a8  02 20 8f e0                                      add r2, pc, r2
003fc3ac  03 30 8f e0                                      add r3, pc, r3
003fc3b0  a8 00 80 e2                                      add r0, r0, #0xa8
003fc3b4  00 c0 8d e5                                      str ip, [sp]
003fc3b8  11 47 fc eb                                      bl #0x30e004
003fc3bc  e9 ff ff ea                                      b #0x3fc368
; mapping-symbol data/literal pool
003fc3c0  14 88 59 00 00 48 00 00 60 0d 00 00 c0 39 00 00  .byte 0x14, 0x88, 0x59, 0x00, 0x00, 0x48, 0x00, 0x00, 0x60, 0x0d, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003fc3d0  c0 19 00 00 34 20 4c 00 90 ae 4c 00 9c ab 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x34, 0x20, 0x4c, 0x00, 0x90, 0xae, 0x4c, 0x00, 0x9c, 0xab, 0x4c, 0x00

; FUNCTION 0x003fc3e0, declared_size=180, range_size=180, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstance5SplitEi
; demangled: ItemInstance::Split(int)
; decoder-mode: arm
003fc3e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003fc3e4  01 60 a0 e1                                      mov r6, r1
003fc3e8  00 50 a0 e1                                      mov r5, r0
003fc3ec  99 f6 ff eb                                      bl #0x3f9e58
003fc3f0  00 00 50 e3                                      cmp r0, #0
003fc3f4  02 00 00 1a                                      bne #0x3fc404
003fc3f8  00 40 a0 e3                                      mov r4, #0
003fc3fc  04 00 a0 e1                                      mov r0, r4
003fc400  70 80 bd e8                                      pop {r4, r5, r6, pc}
003fc404  00 00 56 e3                                      cmp r6, #0
003fc408  fa ff ff da                                      ble #0x3fc3f8
003fc40c  f0 35 d5 e1                                      ldrsh r3, [r5, #0x50]
003fc410  03 00 56 e1                                      cmp r6, r3
003fc414  f7 ff ff aa                                      bge #0x3fc3f8
003fc418  00 10 66 e2                                      rsb r1, r6, #0
003fc41c  05 00 a0 e1                                      mov r0, r5
003fc420  55 f7 ff eb                                      bl #0x3fa17c
003fc424  00 10 a0 e3                                      mov r1, #0
003fc428  6c 00 a0 e3                                      mov r0, #0x6c
003fc42c  4f 50 fc eb                                      bl #0x310570
003fc430  06 20 a0 e1                                      mov r2, r6
003fc434  00 40 a0 e1                                      mov r4, r0
003fc438  04 10 95 e5                                      ldr r1, [r5, #4]
003fc43c  8a ff ff eb                                      bl #0x3fc26c
003fc440  00 60 a0 e3                                      mov r6, #0
003fc444  04 00 a0 e1                                      mov r0, r4
003fc448  54 10 95 e5                                      ldr r1, [r5, #0x54]
003fc44c  01 fe ff eb                                      bl #0x3fbc58
003fc450  68 60 c4 e5                                      strb r6, [r4, #0x68]
003fc454  05 00 00 ea                                      b #0x3fc470
003fc458  f6 f6 ff eb                                      bl #0x3fa038
003fc45c  00 20 e0 e3                                      mvn r2, #0
003fc460  00 10 a0 e1                                      mov r1, r0
003fc464  04 00 a0 e1                                      mov r0, r4
003fc468  fc fd ff eb                                      bl #0x3fbc60
003fc46c  01 60 86 e2                                      add r6, r6, #1
003fc470  05 00 a0 e1                                      mov r0, r5
003fc474  81 f6 ff eb                                      bl #0x3f9e80
003fc478  00 00 56 e1                                      cmp r6, r0
003fc47c  06 10 a0 e1                                      mov r1, r6
003fc480  05 00 a0 e1                                      mov r0, r5
003fc484  f3 ff ff 3a                                      blo #0x3fc458
003fc488  68 30 d5 e5                                      ldrb r3, [r5, #0x68]
003fc48c  68 30 c4 e5                                      strb r3, [r4, #0x68]
003fc490  d9 ff ff ea                                      b #0x3fc3fc

; FUNCTION 0x003fc494, declared_size=372, range_size=372, mode=arm
; class-group: ItemInstance
; alias: _ZN12ItemInstanceC2Eij
; demangled: ItemInstance::ItemInstance(int, unsigned int)
; decoder-mode: arm
003fc494  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fc498  48 51 9f e5                                      ldr r5, [pc, #0x148]
003fc49c  48 31 9f e5                                      ldr r3, [pc, #0x148]
003fc4a0  00 40 a0 e1                                      mov r4, r0
003fc4a4  05 50 8f e0                                      add r5, pc, r5
003fc4a8  03 30 95 e7                                      ldr r3, [r5, r3]
003fc4ac  01 60 a0 e1                                      mov r6, r1
003fc4b0  08 10 80 e2                                      add r1, r0, #8
003fc4b4  08 30 83 e2                                      add r3, r3, #8
003fc4b8  00 30 80 e5                                      str r3, [r0]
003fc4bc  08 d0 4d e2                                      sub sp, sp, #8
003fc4c0  01 00 a0 e1                                      mov r0, r1
003fc4c4  18 10 84 e5                                      str r1, [r4, #0x18]
003fc4c8  1c 10 84 e5                                      str r1, [r4, #0x1c]
003fc4cc  04 60 84 e5                                      str r6, [r4, #4]
003fc4d0  10 10 a0 e3                                      mov r1, #0x10
003fc4d4  02 80 a0 e1                                      mov r8, r2
003fc4d8  67 54 fc eb                                      bl #0x31167c
003fc4dc  18 20 94 e5                                      ldr r2, [r4, #0x18]
003fc4e0  00 70 a0 e3                                      mov r7, #0
003fc4e4  20 30 84 e2                                      add r3, r4, #0x20
003fc4e8  00 70 c2 e5                                      strb r7, [r2]
003fc4ec  03 00 a0 e1                                      mov r0, r3
003fc4f0  30 30 84 e5                                      str r3, [r4, #0x30]
003fc4f4  34 30 84 e5                                      str r3, [r4, #0x34]
003fc4f8  10 10 a0 e3                                      mov r1, #0x10
003fc4fc  5e 54 fc eb                                      bl #0x31167c
003fc500  30 20 94 e5                                      ldr r2, [r4, #0x30]
003fc504  38 30 84 e2                                      add r3, r4, #0x38
003fc508  03 00 a0 e1                                      mov r0, r3
003fc50c  00 70 c2 e5                                      strb r7, [r2]
003fc510  10 10 a0 e3                                      mov r1, #0x10
003fc514  48 30 84 e5                                      str r3, [r4, #0x48]
003fc518  4c 30 84 e5                                      str r3, [r4, #0x4c]
003fc51c  56 54 fc eb                                      bl #0x31167c
003fc520  48 30 94 e5                                      ldr r3, [r4, #0x48]
003fc524  07 00 56 e1                                      cmp r6, r7
003fc528  00 70 c3 e5                                      strb r7, [r3]
003fc52c  01 30 a0 e3                                      mov r3, #1
003fc530  68 30 c4 e5                                      strb r3, [r4, #0x68]
003fc534  00 30 e0 e3                                      mvn r3, #0
003fc538  b0 85 c4 e1                                      strh r8, [r4, #0x50]
003fc53c  69 70 c4 e5                                      strb r7, [r4, #0x69]
003fc540  54 70 84 e5                                      str r7, [r4, #0x54]
003fc544  b8 35 c4 e1                                      strh r3, [r4, #0x58]
003fc548  5c 70 84 e5                                      str r7, [r4, #0x5c]
003fc54c  60 70 84 e5                                      str r7, [r4, #0x60]
003fc550  64 70 84 e5                                      str r7, [r4, #0x64]
003fc554  04 00 00 ba                                      blt #0x3fc56c
003fc558  90 30 9f e5                                      ldr r3, [pc, #0x90]
003fc55c  03 30 95 e7                                      ldr r3, [r5, r3]
003fc560  00 30 93 e5                                      ldr r3, [r3]
003fc564  07 00 53 e1                                      cmp r3, r7
003fc568  08 00 00 1a                                      bne #0x3fc590
003fc56c  80 30 9f e5                                      ldr r3, [pc, #0x80]
003fc570  03 30 95 e7                                      ldr r3, [r5, r3]
003fc574  00 30 93 e5                                      ldr r3, [r3]
003fc578  02 00 53 e3                                      cmp r3, #2
003fc57c  00 30 a0 03                                      moveq r3, #0
003fc580  00 30 83 05                                      streq r3, [r3]
003fc584  01 00 00 0a                                      beq #0x3fc590
003fc588  01 00 53 e3                                      cmp r3, #1
003fc58c  08 00 00 0a                                      beq #0x3fc5b4
003fc590  04 00 a0 e1                                      mov r0, r4
003fc594  6e fc ff eb                                      bl #0x3fb754
003fc598  04 00 a0 e1                                      mov r0, r4
003fc59c  3b fb ff eb                                      bl #0x3fb290
003fc5a0  04 00 a0 e1                                      mov r0, r4
003fc5a4  cc f9 ff eb                                      bl #0x3facdc
003fc5a8  04 00 a0 e1                                      mov r0, r4
003fc5ac  08 d0 8d e2                                      add sp, sp, #8
003fc5b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fc5b4  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003fc5b8  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
003fc5bc  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
003fc5c0  00 00 95 e7                                      ldr r0, [r5, r0]
003fc5c4  38 30 9f e5                                      ldr r3, [pc, #0x38]
003fc5c8  54 c0 a0 e3                                      mov ip, #0x54
003fc5cc  01 10 8f e0                                      add r1, pc, r1
003fc5d0  02 20 8f e0                                      add r2, pc, r2
003fc5d4  03 30 8f e0                                      add r3, pc, r3
003fc5d8  a8 00 80 e2                                      add r0, r0, #0xa8
003fc5dc  00 c0 8d e5                                      str ip, [sp]
003fc5e0  87 46 fc eb                                      bl #0x30e004
003fc5e4  e9 ff ff ea                                      b #0x3fc590
; mapping-symbol data/literal pool
003fc5e8  ec 85 59 00 00 48 00 00 60 0d 00 00 c0 39 00 00  .byte 0xec, 0x85, 0x59, 0x00, 0x00, 0x48, 0x00, 0x00, 0x60, 0x0d, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
003fc5f8  c0 19 00 00 0c 1e 4c 00 68 ac 4c 00 74 a9 4c 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x0c, 0x1e, 0x4c, 0x00, 0x68, 0xac, 0x4c, 0x00, 0x74, 0xa9, 0x4c, 0x00
