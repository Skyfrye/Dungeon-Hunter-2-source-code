; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003a0cec, declared_size=60, range_size=60, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer9GetScriptEv
; demangled: DestructibleContainer::GetScript() const
; decoder-mode: arm
003a0cec  74 23 90 e5                                      ldr r2, [r0, #0x374]
003a0cf0  28 30 9f e5                                      ldr r3, [pc, #0x28]
003a0cf4  01 00 72 e3                                      cmn r2, #1
003a0cf8  03 30 8f e0                                      add r3, pc, r3
003a0cfc  00 00 a0 03                                      moveq r0, #0
003a0d00  1e ff 2f 01                                      bxeq lr
003a0d04  18 10 9f e5                                      ldr r1, [pc, #0x18]
003a0d08  01 30 93 e7                                      ldr r3, [r3, r1]
003a0d0c  44 10 a0 e3                                      mov r1, #0x44
003a0d10  00 30 93 e5                                      ldr r3, [r3]
003a0d14  91 32 22 e0                                      mla r2, r1, r2, r3
003a0d18  30 00 92 e5                                      ldr r0, [r2, #0x30]
003a0d1c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003a0d20  98 3d 5f 00 54 38 00 00                          .byte 0x98, 0x3d, 0x5f, 0x00, 0x54, 0x38, 0x00, 0x00

; FUNCTION 0x003a0d28, declared_size=56, range_size=56, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer9GetVisualEv
; demangled: DestructibleContainer::GetVisual() const
; decoder-mode: arm
003a0d28  74 03 90 e5                                      ldr r0, [r0, #0x374]
003a0d2c  24 30 9f e5                                      ldr r3, [pc, #0x24]
003a0d30  01 00 70 e3                                      cmn r0, #1
003a0d34  03 30 8f e0                                      add r3, pc, r3
003a0d38  1e ff 2f 01                                      bxeq lr
003a0d3c  18 20 9f e5                                      ldr r2, [pc, #0x18]
003a0d40  02 30 93 e7                                      ldr r3, [r3, r2]
003a0d44  44 20 a0 e3                                      mov r2, #0x44
003a0d48  00 30 93 e5                                      ldr r3, [r3]
003a0d4c  92 30 20 e0                                      mla r0, r2, r0, r3
003a0d50  3c 00 90 e5                                      ldr r0, [r0, #0x3c]
003a0d54  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003a0d58  5c 3d 5f 00 54 38 00 00                          .byte 0x5c, 0x3d, 0x5f, 0x00, 0x54, 0x38, 0x00, 0x00

; FUNCTION 0x003a0d60, declared_size=8, range_size=8, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer18GetInteractionTypeEP10GameObject
; demangled: DestructibleContainer::GetInteractionType(GameObject*) const
; decoder-mode: arm
003a0d60  08 00 a0 e3                                      mov r0, #8
003a0d64  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a0d68, declared_size=4, range_size=4, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainer9DoEffectsEv
; demangled: DestructibleContainer::DoEffects()
; decoder-mode: arm
003a0d68  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a0da0, declared_size=740, range_size=740, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainer8InteractEP10GameObject
; demangled: DestructibleContainer::Interact(GameObject*)
; decoder-mode: arm
003a0da0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003a0da4  f4 36 90 e5                                      ldr r3, [r0, #0x6f4]
003a0da8  94 52 9f e5                                      ldr r5, [pc, #0x294]
003a0dac  48 d0 4d e2                                      sub sp, sp, #0x48
003a0db0  00 00 53 e3                                      cmp r3, #0
003a0db4  00 40 a0 e1                                      mov r4, r0
003a0db8  01 60 a0 e1                                      mov r6, r1
003a0dbc  05 50 8f e0                                      add r5, pc, r5
003a0dc0  28 00 00 0a                                      beq #0x3a0e68
003a0dc4  d8 22 90 e5                                      ldr r2, [r0, #0x2d8]
003a0dc8  01 10 43 e2                                      sub r1, r3, #1
003a0dcc  f4 16 80 e5                                      str r1, [r0, #0x6f4]
003a0dd0  00 00 52 e3                                      cmp r2, #0
003a0dd4  09 00 00 0a                                      beq #0x3a0e00
003a0dd8  38 c0 92 e5                                      ldr ip, [r2, #0x38]
003a0ddc  f0 06 90 e5                                      ldr r0, [r0, #0x6f0]
003a0de0  00 30 a0 e3                                      mov r3, #0
003a0de4  03 20 a0 e1                                      mov r2, r3
003a0de8  00 10 61 e0                                      rsb r1, r1, r0
003a0dec  0c 00 a0 e1                                      mov r0, ip
003a0df0  00 c0 9c e5                                      ldr ip, [ip]
003a0df4  00 30 8d e5                                      str r3, [sp]
003a0df8  0f e0 a0 e1                                      mov lr, pc
003a0dfc  1c f0 9c e5                                      ldr pc, [ip, #0x1c]
003a0e00  40 22 9f e5                                      ldr r2, [pc, #0x240]
003a0e04  00 30 94 e5                                      ldr r3, [r4]
003a0e08  04 00 a0 e1                                      mov r0, r4
003a0e0c  02 20 95 e7                                      ldr r2, [r5, r2]
003a0e10  00 70 92 e5                                      ldr r7, [r2]
003a0e14  0f e0 a0 e1                                      mov lr, pc
003a0e18  d8 f0 93 e5                                      ldr pc, [r3, #0xd8]
003a0e1c  68 e1 94 e5                                      ldr lr, [r4, #0x168]
003a0e20  60 61 94 e5                                      ldr r6, [r4, #0x160]
003a0e24  64 51 94 e5                                      ldr r5, [r4, #0x164]
003a0e28  bf c4 a0 e3                                      mov ip, #0xbf000000
003a0e2c  02 c5 8c e2                                      add ip, ip, #0x800000
003a0e30  00 10 a0 e1                                      mov r1, r0
003a0e34  38 e0 8d e5                                      str lr, [sp, #0x38]
003a0e38  07 00 a0 e1                                      mov r0, r7
003a0e3c  01 e0 a0 e3                                      mov lr, #1
003a0e40  30 20 8d e2                                      add r2, sp, #0x30
003a0e44  00 30 a0 e3                                      mov r3, #0
003a0e48  30 60 8d e5                                      str r6, [sp, #0x30]
003a0e4c  34 50 8d e5                                      str r5, [sp, #0x34]
003a0e50  00 e0 8d e5                                      str lr, [sp]
003a0e54  08 c0 8d e5                                      str ip, [sp, #8]
003a0e58  04 c0 8d e5                                      str ip, [sp, #4]
003a0e5c  dd 29 ff eb                                      bl #0x36b5d8
003a0e60  48 d0 8d e2                                      add sp, sp, #0x48
003a0e64  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003a0e68  dc 71 9f e5                                      ldr r7, [pc, #0x1dc]
003a0e6c  07 00 95 e7                                      ldr r0, [r5, r7]
003a0e70  c7 f9 fd eb                                      bl #0x31f594
003a0e74  00 80 50 e2                                      subs r8, r0, #0
003a0e78  5a 00 00 0a                                      beq #0x3a0fe8
003a0e7c  00 30 94 e5                                      ldr r3, [r4]
003a0e80  04 00 a0 e1                                      mov r0, r4
003a0e84  0f e0 a0 e1                                      mov lr, pc
003a0e88  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
003a0e8c  07 70 95 e7                                      ldr r7, [r5, r7]
003a0e90  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
003a0e94  b8 21 9f e5                                      ldr r2, [pc, #0x1b8]
003a0e98  00 90 a0 e1                                      mov sb, r0
003a0e9c  01 10 8f e0                                      add r1, pc, r1
003a0ea0  02 20 8f e0                                      add r2, pc, r2
003a0ea4  2c 00 97 e5                                      ldr r0, [r7, #0x2c]
003a0ea8  64 a0 94 e5                                      ldr sl, [r4, #0x64]
003a0eac  4a 8f 04 eb                                      bl #0x4c4bdc
003a0eb0  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
003a0eb4  48 10 8d e2                                      add r1, sp, #0x48
003a0eb8  18 00 8d e5                                      str r0, [sp, #0x18]
003a0ebc  03 30 95 e7                                      ldr r3, [r5, r3]
003a0ec0  08 00 a0 e1                                      mov r0, r8
003a0ec4  00 80 a0 e3                                      mov r8, #0
003a0ec8  08 30 83 e2                                      add r3, r3, #8
003a0ecc  34 30 21 e5                                      str r3, [r1, #-0x34]!
003a0ed0  00 30 e0 e3                                      mvn r3, #0
003a0ed4  28 30 8d e5                                      str r3, [sp, #0x28]
003a0ed8  20 a0 8d e5                                      str sl, [sp, #0x20]
003a0edc  2c 90 8d e5                                      str sb, [sp, #0x2c]
003a0ee0  1c 60 8d e5                                      str r6, [sp, #0x1c]
003a0ee4  24 80 cd e5                                      strb r8, [sp, #0x24]
003a0ee8  25 80 cd e5                                      strb r8, [sp, #0x25]
003a0eec  67 60 fe eb                                      bl #0x339090
003a0ef0  64 31 9f e5                                      ldr r3, [pc, #0x164]
003a0ef4  04 00 a0 e1                                      mov r0, r4
003a0ef8  06 10 a0 e1                                      mov r1, r6
003a0efc  03 30 95 e7                                      ldr r3, [r5, r3]
003a0f00  3c 40 8d e2                                      add r4, sp, #0x3c
003a0f04  08 30 83 e2                                      add r3, r3, #8
003a0f08  14 30 8d e5                                      str r3, [sp, #0x14]
003a0f0c  09 ff ff eb                                      bl #0x3a0b38
003a0f10  04 00 a0 e1                                      mov r0, r4
003a0f14  06 10 a0 e1                                      mov r1, r6
003a0f18  83 73 fe eb                                      bl #0x33dd2c
003a0f1c  04 00 a0 e1                                      mov r0, r4
003a0f20  0b 7c fe eb                                      bl #0x33ff54
003a0f24  00 40 50 e2                                      subs r4, r0, #0
003a0f28  cc ff ff 0a                                      beq #0x3a0e60
003a0f2c  00 30 94 e5                                      ldr r3, [r4]
003a0f30  0f e0 a0 e1                                      mov lr, pc
003a0f34  28 f0 93 e5                                      ldr pc, [r3, #0x28]
003a0f38  08 00 50 e1                                      cmp r0, r8
003a0f3c  c7 ff ff 0a                                      beq #0x3a0e60
003a0f40  56 6e 84 e2                                      add r6, r4, #0x560
003a0f44  06 00 a0 e1                                      mov r0, r6
003a0f48  d9 10 a0 e3                                      mov r1, #0xd9
003a0f4c  01 20 a0 e3                                      mov r2, #1
003a0f50  10 fe 00 eb                                      bl #0x3e0798
003a0f54  04 31 9f e5                                      ldr r3, [pc, #0x104]
003a0f58  06 00 a0 e1                                      mov r0, r6
003a0f5c  d9 10 a0 e3                                      mov r1, #0xd9
003a0f60  03 30 95 e7                                      ldr r3, [r5, r3]
003a0f64  08 20 a0 e1                                      mov r2, r8
003a0f68  00 60 93 e5                                      ldr r6, [r3]
003a0f6c  db f9 00 eb                                      bl #0x3df6e0
003a0f70  c7 00 50 e3                                      cmp r0, #0xc7
003a0f74  b9 ff ff da                                      ble #0x3a0e60
003a0f78  40 00 97 e5                                      ldr r0, [r7, #0x40]
003a0f7c  04 10 a0 e1                                      mov r1, r4
003a0f80  1d 38 ff eb                                      bl #0x36effc
003a0f84  08 00 50 e1                                      cmp r0, r8
003a0f88  b4 ff ff 0a                                      beq #0x3a0e60
003a0f8c  d0 30 9f e5                                      ldr r3, [pc, #0xd0]
003a0f90  03 30 95 e7                                      ldr r3, [r5, r3]
003a0f94  00 70 93 e5                                      ldr r7, [r3]
003a0f98  08 00 57 e1                                      cmp r7, r8
003a0f9c  26 00 00 0a                                      beq #0x3a103c
003a0fa0  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
003a0fa4  03 30 95 e7                                      ldr r3, [r5, r3]
003a0fa8  bc 50 9f e5                                      ldr r5, [pc, #0xbc]
003a0fac  00 40 93 e5                                      ldr r4, [r3]
003a0fb0  05 50 8f e0                                      add r5, pc, r5
003a0fb4  02 00 00 ea                                      b #0x3a0fc4
003a0fb8  01 80 88 e2                                      add r8, r8, #1
003a0fbc  07 00 58 e1                                      cmp r8, r7
003a0fc0  1d 00 00 0a                                      beq #0x3a103c
003a0fc4  08 11 94 e7                                      ldr r1, [r4, r8, lsl #2]
003a0fc8  05 00 a0 e1                                      mov r0, r5
003a0fcc  d2 b4 fd eb                                      bl #0x30e31c
003a0fd0  00 00 50 e3                                      cmp r0, #0
003a0fd4  f7 ff ff 1a                                      bne #0x3a0fb8
003a0fd8  08 10 a0 e1                                      mov r1, r8
003a0fdc  06 00 a0 e1                                      mov r0, r6
003a0fe0  f4 80 ff eb                                      bl #0x3813b8
003a0fe4  9d ff ff ea                                      b #0x3a0e60
003a0fe8  80 30 9f e5                                      ldr r3, [pc, #0x80]
003a0fec  03 30 95 e7                                      ldr r3, [r5, r3]
003a0ff0  00 30 93 e5                                      ldr r3, [r3]
003a0ff4  02 00 53 e3                                      cmp r3, #2
003a0ff8  00 80 88 05                                      streq r8, [r8]
003a0ffc  9e ff ff 0a                                      beq #0x3a0e7c
003a1000  01 00 53 e3                                      cmp r3, #1
003a1004  9c ff ff 1a                                      bne #0x3a0e7c
003a1008  64 00 9f e5                                      ldr r0, [pc, #0x64]
003a100c  64 10 9f e5                                      ldr r1, [pc, #0x64]
003a1010  64 20 9f e5                                      ldr r2, [pc, #0x64]
003a1014  00 00 95 e7                                      ldr r0, [r5, r0]
003a1018  60 30 9f e5                                      ldr r3, [pc, #0x60]
003a101c  e7 c0 a0 e3                                      mov ip, #0xe7
003a1020  01 10 8f e0                                      add r1, pc, r1
003a1024  02 20 8f e0                                      add r2, pc, r2
003a1028  03 30 8f e0                                      add r3, pc, r3
003a102c  a8 00 80 e2                                      add r0, r0, #0xa8
003a1030  00 c0 8d e5                                      str ip, [sp]
003a1034  f2 b3 fd eb                                      bl #0x30e004
003a1038  8f ff ff ea                                      b #0x3a0e7c
003a103c  00 10 e0 e3                                      mvn r1, #0
003a1040  e5 ff ff ea                                      b #0x3a0fdc
; mapping-symbol data/literal pool
003a1044  d4 3c 5f 00 a4 0d 00 00 f4 37 00 00 cc 1a 52 00  .byte 0xd4, 0x3c, 0x5f, 0x00, 0xa4, 0x0d, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x1a, 0x52, 0x00
003a1054  50 21 52 00 90 16 00 00 b0 0b 00 00 70 1d 00 00  .byte 0x50, 0x21, 0x52, 0x00, 0x90, 0x16, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00, 0x70, 0x1d, 0x00, 0x00
003a1064  fc 0e 00 00 2c 10 00 00 58 20 52 00 c0 39 00 00  .byte 0xfc, 0x0e, 0x00, 0x00, 0x2c, 0x10, 0x00, 0x00, 0x58, 0x20, 0x52, 0x00, 0xc0, 0x39, 0x00, 0x00
003a1074  c0 19 00 00 b8 d3 51 00 34 e9 56 00 68 1f 52 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb8, 0xd3, 0x51, 0x00, 0x34, 0xe9, 0x56, 0x00, 0x68, 0x1f, 0x52, 0x00

; FUNCTION 0x003a10f8, declared_size=72, range_size=72, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer11KeepPhysicsEv
; demangled: DestructibleContainer::KeepPhysics() const
; decoder-mode: arm
003a10f8  10 40 2d e9                                      push {r4, lr}
003a10fc  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a1100  df ff ff eb                                      bl #0x3a1084
003a1104  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
003a1108  01 00 70 e3                                      cmn r0, #1
003a110c  04 40 8f e0                                      add r4, pc, r4
003a1110  06 00 00 0a                                      beq #0x3a1130
003a1114  20 30 9f e5                                      ldr r3, [pc, #0x20]
003a1118  44 20 a0 e3                                      mov r2, #0x44
003a111c  03 30 94 e7                                      ldr r3, [r4, r3]
003a1120  00 30 93 e5                                      ldr r3, [r3]
003a1124  92 30 20 e0                                      mla r0, r2, r0, r3
003a1128  20 00 d0 e5                                      ldrb r0, [r0, #0x20]
003a112c  10 80 bd e8                                      pop {r4, pc}
003a1130  00 00 a0 e3                                      mov r0, #0
003a1134  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a1138  84 39 5f 00 54 38 00 00                          .byte 0x84, 0x39, 0x5f, 0x00, 0x54, 0x38, 0x00, 0x00

; FUNCTION 0x003a1140, declared_size=64, range_size=64, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer8GetSoundEv
; demangled: DestructibleContainer::GetSound() const
; decoder-mode: arm
003a1140  10 40 2d e9                                      push {r4, lr}
003a1144  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a1148  cd ff ff eb                                      bl #0x3a1084
003a114c  24 40 9f e5                                      ldr r4, [pc, #0x24]
003a1150  01 00 70 e3                                      cmn r0, #1
003a1154  04 40 8f e0                                      add r4, pc, r4
003a1158  05 00 00 0a                                      beq #0x3a1174
003a115c  18 30 9f e5                                      ldr r3, [pc, #0x18]
003a1160  44 20 a0 e3                                      mov r2, #0x44
003a1164  03 30 94 e7                                      ldr r3, [r4, r3]
003a1168  00 30 93 e5                                      ldr r3, [r3]
003a116c  92 30 20 e0                                      mla r0, r2, r0, r3
003a1170  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
003a1174  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a1178  3c 39 5f 00 54 38 00 00                          .byte 0x3c, 0x39, 0x5f, 0x00, 0x54, 0x38, 0x00, 0x00

; FUNCTION 0x003a1180, declared_size=64, range_size=64, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer7GetLootEv
; demangled: DestructibleContainer::GetLoot() const
; decoder-mode: arm
003a1180  10 40 2d e9                                      push {r4, lr}
003a1184  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a1188  bd ff ff eb                                      bl #0x3a1084
003a118c  24 40 9f e5                                      ldr r4, [pc, #0x24]
003a1190  01 00 70 e3                                      cmn r0, #1
003a1194  04 40 8f e0                                      add r4, pc, r4
003a1198  05 00 00 0a                                      beq #0x3a11b4
003a119c  18 30 9f e5                                      ldr r3, [pc, #0x18]
003a11a0  44 20 a0 e3                                      mov r2, #0x44
003a11a4  03 30 94 e7                                      ldr r3, [r4, r3]
003a11a8  00 30 93 e5                                      ldr r3, [r3]
003a11ac  92 30 20 e0                                      mla r0, r2, r0, r3
003a11b0  28 00 90 e5                                      ldr r0, [r0, #0x28]
003a11b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a11b8  fc 38 5f 00 54 38 00 00                          .byte 0xfc, 0x38, 0x5f, 0x00, 0x54, 0x38, 0x00, 0x00

; FUNCTION 0x003a11c0, declared_size=28, range_size=28, mode=arm
; class-group: DestructibleContainer
; alias: _ZNK21DestructibleContainer9GetDataIdEv
; demangled: DestructibleContainer::GetDataId() const
; decoder-mode: arm
003a11c0  88 33 90 e5                                      ldr r3, [r0, #0x388]
003a11c4  8c 03 90 e5                                      ldr r0, [r0, #0x38c]
003a11c8  00 00 53 e1                                      cmp r3, r0
003a11cc  00 00 00 0a                                      beq #0x3a11d4
003a11d0  ab ff ff ea                                      b #0x3a1084
003a11d4  00 00 e0 e3                                      mvn r0, #0
003a11d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003a11dc, declared_size=140, range_size=140, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainer8InitPostEv
; demangled: DestructibleContainer::InitPost()
; decoder-mode: arm
003a11dc  30 40 2d e9                                      push {r4, r5, lr}
003a11e0  00 40 a0 e1                                      mov r4, r0
003a11e4  0c d0 4d e2                                      sub sp, sp, #0xc
003a11e8  c8 f9 ff eb                                      bl #0x39f910
003a11ec  d8 52 94 e5                                      ldr r5, [r4, #0x2d8]
003a11f0  64 30 9f e5                                      ldr r3, [pc, #0x64]
003a11f4  00 00 55 e3                                      cmp r5, #0
003a11f8  03 30 8f e0                                      add r3, pc, r3
003a11fc  14 00 00 0a                                      beq #0x3a1254
003a1200  38 20 95 e5                                      ldr r2, [r5, #0x38]
003a1204  54 00 9f e5                                      ldr r0, [pc, #0x54]
003a1208  54 10 9f e5                                      ldr r1, [pc, #0x54]
003a120c  00 c0 92 e5                                      ldr ip, [r2]
003a1210  00 40 8d e5                                      str r4, [sp]
003a1214  01 10 93 e7                                      ldr r1, [r3, r1]
003a1218  00 30 93 e7                                      ldr r3, [r3, r0]
003a121c  02 00 a0 e1                                      mov r0, r2
003a1220  04 20 a0 e1                                      mov r2, r4
003a1224  0f e0 a0 e1                                      mov lr, pc
003a1228  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
003a122c  38 30 95 e5                                      ldr r3, [r5, #0x38]
003a1230  00 10 a0 e3                                      mov r1, #0
003a1234  03 00 a0 e1                                      mov r0, r3
003a1238  00 30 93 e5                                      ldr r3, [r3]
003a123c  0f e0 a0 e1                                      mov lr, pc
003a1240  10 f0 93 e5                                      ldr pc, [r3, #0x10]
003a1244  03 00 50 e3                                      cmp r0, #3
003a1248  03 00 40 82                                      subhi r0, r0, #3
003a124c  f4 06 84 85                                      strhi r0, [r4, #0x6f4]
003a1250  f0 06 84 85                                      strhi r0, [r4, #0x6f0]
003a1254  0c d0 8d e2                                      add sp, sp, #0xc
003a1258  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
003a125c  98 38 5f 00 9c 21 00 00 00 4c 00 00              .byte 0x98, 0x38, 0x5f, 0x00, 0x9c, 0x21, 0x00, 0x00, 0x00, 0x4c, 0x00, 0x00

; FUNCTION 0x003a1268, declared_size=8, range_size=8, mode=arm
; class-group: DestructibleContainer
; alias: _ZThn4_N21DestructibleContainer17DeclarePropertiesEv
; demangled: non-virtual thunk to DestructibleContainer::DeclareProperties()
; decoder-mode: arm
003a1268  04 00 40 e2                                      sub r0, r0, #4
003a126c  ff ff ff ea                                      b #0x3a1270

; FUNCTION 0x003a1270, declared_size=4, range_size=4, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainer17DeclarePropertiesEv
; demangled: DestructibleContainer::DeclareProperties()
; decoder-mode: arm
003a1270  71 fd ff ea                                      b #0x3a083c

; FUNCTION 0x003a1274, declared_size=412, range_size=412, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainer15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
; demangled: DestructibleContainer::__EventCallback(glitch::collada::STriggeredEvent const&, void*)
; decoder-mode: arm
003a1274  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
003a1278  01 50 a0 e1                                      mov r5, r1
003a127c  04 70 90 e5                                      ldr r7, [r0, #4]
003a1280  54 11 9f e5                                      ldr r1, [pc, #0x154]
003a1284  2c d0 4d e2                                      sub sp, sp, #0x2c
003a1288  00 60 a0 e1                                      mov r6, r0
003a128c  01 10 8f e0                                      add r1, pc, r1
003a1290  07 00 a0 e1                                      mov r0, r7
003a1294  20 b4 fd eb                                      bl #0x30e31c
003a1298  40 41 9f e5                                      ldr r4, [pc, #0x140]
003a129c  00 00 50 e3                                      cmp r0, #0
003a12a0  04 40 8f e0                                      add r4, pc, r4
003a12a4  34 00 00 0a                                      beq #0x3a137c
003a12a8  34 11 9f e5                                      ldr r1, [pc, #0x134]
003a12ac  07 00 a0 e1                                      mov r0, r7
003a12b0  01 10 8f e0                                      add r1, pc, r1
003a12b4  18 b4 fd eb                                      bl #0x30e31c
003a12b8  00 00 50 e3                                      cmp r0, #0
003a12bc  29 00 00 1a                                      bne #0x3a1368
003a12c0  20 71 9f e5                                      ldr r7, [pc, #0x120]
003a12c4  07 00 94 e7                                      ldr r0, [r4, r7]
003a12c8  b1 f8 fd eb                                      bl #0x31f594
003a12cc  00 80 50 e2                                      subs r8, r0, #0
003a12d0  2c 00 00 0a                                      beq #0x3a1388
003a12d4  00 30 95 e5                                      ldr r3, [r5]
003a12d8  05 00 a0 e1                                      mov r0, r5
003a12dc  0f e0 a0 e1                                      mov lr, pc
003a12e0  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
003a12e4  07 30 94 e7                                      ldr r3, [r4, r7]
003a12e8  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
003a12ec  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
003a12f0  00 a0 a0 e1                                      mov sl, r0
003a12f4  01 10 8f e0                                      add r1, pc, r1
003a12f8  2c 00 93 e5                                      ldr r0, [r3, #0x2c]
003a12fc  02 20 8f e0                                      add r2, pc, r2
003a1300  64 70 95 e5                                      ldr r7, [r5, #0x64]
003a1304  34 8e 04 eb                                      bl #0x4c4bdc
003a1308  e4 20 9f e5                                      ldr r2, [pc, #0xe4]
003a130c  28 10 8d e2                                      add r1, sp, #0x28
003a1310  00 30 a0 e3                                      mov r3, #0
003a1314  02 20 94 e7                                      ldr r2, [r4, r2]
003a1318  10 00 8d e5                                      str r0, [sp, #0x10]
003a131c  08 00 a0 e1                                      mov r0, r8
003a1320  08 20 82 e2                                      add r2, r2, #8
003a1324  1c 20 21 e5                                      str r2, [r1, #-0x1c]!
003a1328  00 20 e0 e3                                      mvn r2, #0
003a132c  1d 30 cd e5                                      strb r3, [sp, #0x1d]
003a1330  14 30 8d e5                                      str r3, [sp, #0x14]
003a1334  1c 30 cd e5                                      strb r3, [sp, #0x1c]
003a1338  18 70 8d e5                                      str r7, [sp, #0x18]
003a133c  20 20 8d e5                                      str r2, [sp, #0x20]
003a1340  24 a0 8d e5                                      str sl, [sp, #0x24]
003a1344  51 5f fe eb                                      bl #0x339090
003a1348  a8 30 9f e5                                      ldr r3, [pc, #0xa8]
003a134c  06 00 a0 e1                                      mov r0, r6
003a1350  05 10 a0 e1                                      mov r1, r5
003a1354  03 30 94 e7                                      ldr r3, [r4, r3]
003a1358  08 30 83 e2                                      add r3, r3, #8
003a135c  0c 30 8d e5                                      str r3, [sp, #0xc]
003a1360  3f fe ff eb                                      bl #0x3a0c64
003a1364  02 00 00 ea                                      b #0x3a1374
003a1368  06 00 a0 e1                                      mov r0, r6
003a136c  05 10 a0 e1                                      mov r1, r5
003a1370  3b fe ff eb                                      bl #0x3a0c64
003a1374  2c d0 8d e2                                      add sp, sp, #0x2c
003a1378  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003a137c  05 00 a0 e1                                      mov r0, r5
003a1380  78 fe ff eb                                      bl #0x3a0d68
003a1384  fa ff ff ea                                      b #0x3a1374
003a1388  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003a138c  03 30 94 e7                                      ldr r3, [r4, r3]
003a1390  00 30 93 e5                                      ldr r3, [r3]
003a1394  02 00 53 e3                                      cmp r3, #2
003a1398  00 80 88 05                                      streq r8, [r8]
003a139c  cc ff ff 0a                                      beq #0x3a12d4
003a13a0  01 00 53 e3                                      cmp r3, #1
003a13a4  ca ff ff 1a                                      bne #0x3a12d4
003a13a8  50 00 9f e5                                      ldr r0, [pc, #0x50]
003a13ac  50 10 9f e5                                      ldr r1, [pc, #0x50]
003a13b0  50 20 9f e5                                      ldr r2, [pc, #0x50]
003a13b4  00 00 94 e7                                      ldr r0, [r4, r0]
003a13b8  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
003a13bc  45 c0 a0 e3                                      mov ip, #0x45
003a13c0  01 10 8f e0                                      add r1, pc, r1
003a13c4  02 20 8f e0                                      add r2, pc, r2
003a13c8  03 30 8f e0                                      add r3, pc, r3
003a13cc  a8 00 80 e2                                      add r0, r0, #0xa8
003a13d0  00 c0 8d e5                                      str ip, [sp]
003a13d4  0a b3 fd eb                                      bl #0x30e004
003a13d8  bd ff ff ea                                      b #0x3a12d4
; mapping-symbol data/literal pool
003a13dc  14 fb 51 00 f0 37 5f 00 d8 1c 52 00 f4 37 00 00  .byte 0x14, 0xfb, 0x51, 0x00, 0xf0, 0x37, 0x5f, 0x00, 0xd8, 0x1c, 0x52, 0x00, 0xf4, 0x37, 0x00, 0x00
003a13ec  74 16 52 00 f4 1c 52 00 90 16 00 00 b0 0b 00 00  .byte 0x74, 0x16, 0x52, 0x00, 0xf4, 0x1c, 0x52, 0x00, 0x90, 0x16, 0x00, 0x00, 0xb0, 0x0b, 0x00, 0x00
003a13fc  c0 39 00 00 c0 19 00 00 18 d0 51 00 94 e5 56 00  .byte 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x18, 0xd0, 0x51, 0x00, 0x94, 0xe5, 0x56, 0x00
003a140c  c8 1b 52 00                                      .byte 0xc8, 0x1b, 0x52, 0x00

; FUNCTION 0x003a1410, declared_size=8, range_size=8, mode=arm
; class-group: DestructibleContainer
; alias: _ZThn36_N21DestructibleContainerD1Ev
; demangled: non-virtual thunk to DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
003a1410  24 00 40 e2                                      sub r0, r0, #0x24
003a1414  ff ff ff ea                                      b #0x3a1418

; FUNCTION 0x003a1418, declared_size=64, range_size=64, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainerD1Ev
; demangled: DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
003a1418  30 20 9f e5                                      ldr r2, [pc, #0x30]
003a141c  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a1420  10 40 2d e9                                      push {r4, lr}
003a1424  02 20 8f e0                                      add r2, pc, r2
003a1428  03 30 92 e7                                      ldr r3, [r2, r3]
003a142c  00 40 a0 e1                                      mov r4, r0
003a1430  01 2c 83 e2                                      add r2, r3, #0x100
003a1434  08 10 83 e2                                      add r1, r3, #8
003a1438  f4 30 83 e2                                      add r3, r3, #0xf4
003a143c  0a 00 80 e8                                      stm r0, {r1, r3}
003a1440  24 20 80 e5                                      str r2, [r0, #0x24]
003a1444  53 fc ff eb                                      bl #0x3a0598
003a1448  04 00 a0 e1                                      mov r0, r4
003a144c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a1450  6c 36 5f 00 b8 18 00 00                          .byte 0x6c, 0x36, 0x5f, 0x00, 0xb8, 0x18, 0x00, 0x00

; FUNCTION 0x003a1458, declared_size=8, range_size=8, mode=arm
; class-group: DestructibleContainer
; alias: _ZThn36_N21DestructibleContainerD0Ev
; demangled: non-virtual thunk to DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
003a1458  24 00 40 e2                                      sub r0, r0, #0x24
003a145c  ff ff ff ea                                      b #0x3a1460

; FUNCTION 0x003a1460, declared_size=28, range_size=28, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainerD0Ev
; demangled: DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
003a1460  10 40 2d e9                                      push {r4, lr}
003a1464  00 40 a0 e1                                      mov r4, r0
003a1468  ea ff ff eb                                      bl #0x3a1418
003a146c  04 00 a0 e1                                      mov r0, r4
003a1470  f2 bb fd eb                                      bl #0x310440
003a1474  04 00 a0 e1                                      mov r0, r4
003a1478  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003a147c, declared_size=64, range_size=64, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainerD2Ev
; demangled: DestructibleContainer::~DestructibleContainer()
; decoder-mode: arm
003a147c  30 20 9f e5                                      ldr r2, [pc, #0x30]
003a1480  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a1484  10 40 2d e9                                      push {r4, lr}
003a1488  02 20 8f e0                                      add r2, pc, r2
003a148c  03 30 92 e7                                      ldr r3, [r2, r3]
003a1490  00 40 a0 e1                                      mov r4, r0
003a1494  01 2c 83 e2                                      add r2, r3, #0x100
003a1498  08 10 83 e2                                      add r1, r3, #8
003a149c  f4 30 83 e2                                      add r3, r3, #0xf4
003a14a0  0a 00 80 e8                                      stm r0, {r1, r3}
003a14a4  24 20 80 e5                                      str r2, [r0, #0x24]
003a14a8  3a fc ff eb                                      bl #0x3a0598
003a14ac  04 00 a0 e1                                      mov r0, r4
003a14b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003a14b4  08 36 5f 00 b8 18 00 00                          .byte 0x08, 0x36, 0x5f, 0x00, 0xb8, 0x18, 0x00, 0x00

; FUNCTION 0x003a14bc, declared_size=76, range_size=76, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainerC1EN10ObjectBase6GO_IDSE
; demangled: DestructibleContainer::DestructibleContainer(ObjectBase::GO_IDS)
; decoder-mode: arm
003a14bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003a14c0  38 50 9f e5                                      ldr r5, [pc, #0x38]
003a14c4  00 40 a0 e1                                      mov r4, r0
003a14c8  ae fc ff eb                                      bl #0x3a0788
003a14cc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a14d0  05 50 8f e0                                      add r5, pc, r5
003a14d4  00 20 a0 e3                                      mov r2, #0
003a14d8  03 30 95 e7                                      ldr r3, [r5, r3]
003a14dc  f4 26 84 e5                                      str r2, [r4, #0x6f4]
003a14e0  f0 26 84 e5                                      str r2, [r4, #0x6f0]
003a14e4  08 10 83 e2                                      add r1, r3, #8
003a14e8  01 2c 83 e2                                      add r2, r3, #0x100
003a14ec  f4 30 83 e2                                      add r3, r3, #0xf4
003a14f0  0a 00 84 e8                                      stm r4, {r1, r3}
003a14f4  24 20 84 e5                                      str r2, [r4, #0x24]
003a14f8  04 00 a0 e1                                      mov r0, r4
003a14fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a1500  c0 35 5f 00 b8 18 00 00                          .byte 0xc0, 0x35, 0x5f, 0x00, 0xb8, 0x18, 0x00, 0x00

; FUNCTION 0x003a1508, declared_size=76, range_size=76, mode=arm
; class-group: DestructibleContainer
; alias: _ZN21DestructibleContainerC2EN10ObjectBase6GO_IDSE
; demangled: DestructibleContainer::DestructibleContainer(ObjectBase::GO_IDS)
; decoder-mode: arm
003a1508  70 40 2d e9                                      push {r4, r5, r6, lr}
003a150c  38 50 9f e5                                      ldr r5, [pc, #0x38]
003a1510  00 40 a0 e1                                      mov r4, r0
003a1514  9b fc ff eb                                      bl #0x3a0788
003a1518  30 30 9f e5                                      ldr r3, [pc, #0x30]
003a151c  05 50 8f e0                                      add r5, pc, r5
003a1520  00 20 a0 e3                                      mov r2, #0
003a1524  03 30 95 e7                                      ldr r3, [r5, r3]
003a1528  f4 26 84 e5                                      str r2, [r4, #0x6f4]
003a152c  f0 26 84 e5                                      str r2, [r4, #0x6f0]
003a1530  08 10 83 e2                                      add r1, r3, #8
003a1534  01 2c 83 e2                                      add r2, r3, #0x100
003a1538  f4 30 83 e2                                      add r3, r3, #0xf4
003a153c  0a 00 84 e8                                      stm r4, {r1, r3}
003a1540  24 20 84 e5                                      str r2, [r4, #0x24]
003a1544  04 00 a0 e1                                      mov r0, r4
003a1548  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003a154c  74 35 5f 00 b8 18 00 00                          .byte 0x74, 0x35, 0x5f, 0x00, 0xb8, 0x18, 0x00, 0x00
