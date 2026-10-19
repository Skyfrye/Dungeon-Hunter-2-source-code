; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d3dc4, declared_size=100, range_size=100, mode=arm
; class-group: Structs::TileOffsetList
; alias: _ZN7Structs14TileOffsetList8finalizeEv
; demangled: Structs::TileOffsetList::finalize()
; decoder-mode: arm
004d3dc4  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3dc8  08 30 90 e5                                      ldr r3, [r0, #8]
004d3dcc  00 50 a0 e1                                      mov r5, r0
004d3dd0  00 00 53 e3                                      cmp r3, #0
004d3dd4  12 00 00 0a                                      beq #0x4d3e24
004d3dd8  04 00 13 e5                                      ldr r0, [r3, #-4]
004d3ddc  80 01 83 e0                                      add r0, r3, r0, lsl #3
004d3de0  00 00 53 e1                                      cmp r3, r0
004d3de4  01 00 00 1a                                      bne #0x4d3df0
004d3de8  08 00 00 ea                                      b #0x4d3e10
004d3dec  04 00 a0 e1                                      mov r0, r4
004d3df0  08 40 40 e2                                      sub r4, r0, #8
004d3df4  08 30 10 e5                                      ldr r3, [r0, #-8]
004d3df8  04 00 a0 e1                                      mov r0, r4
004d3dfc  0f e0 a0 e1                                      mov lr, pc
004d3e00  00 f0 93 e5                                      ldr pc, [r3]
004d3e04  08 00 95 e5                                      ldr r0, [r5, #8]
004d3e08  04 00 50 e1                                      cmp r0, r4
004d3e0c  f6 ff ff 1a                                      bne #0x4d3dec
004d3e10  08 00 40 e2                                      sub r0, r0, #8
004d3e14  89 f1 f8 eb                                      bl #0x310440
004d3e18  00 30 a0 e3                                      mov r3, #0
004d3e1c  04 30 85 e5                                      str r3, [r5, #4]
004d3e20  08 30 85 e5                                      str r3, [r5, #8]
004d3e24  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x004d3e28, declared_size=124, range_size=124, mode=arm
; class-group: Structs::TileOffsetList
; alias: _ZN7Structs14TileOffsetListD1Ev
; demangled: Structs::TileOffsetList::~TileOffsetList()
; decoder-mode: arm
004d3e28  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3e2c  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d3e30  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d3e34  08 10 90 e5                                      ldr r1, [r0, #8]
004d3e38  03 30 8f e0                                      add r3, pc, r3
004d3e3c  02 20 93 e7                                      ldr r2, [r3, r2]
004d3e40  00 00 51 e3                                      cmp r1, #0
004d3e44  00 50 a0 e1                                      mov r5, r0
004d3e48  08 20 82 e2                                      add r2, r2, #8
004d3e4c  00 20 80 e5                                      str r2, [r0]
004d3e50  0f 00 00 0a                                      beq #0x4d3e94
004d3e54  04 00 11 e5                                      ldr r0, [r1, #-4]
004d3e58  80 01 81 e0                                      add r0, r1, r0, lsl #3
004d3e5c  00 00 51 e1                                      cmp r1, r0
004d3e60  01 00 00 1a                                      bne #0x4d3e6c
004d3e64  08 00 00 ea                                      b #0x4d3e8c
004d3e68  04 00 a0 e1                                      mov r0, r4
004d3e6c  08 40 40 e2                                      sub r4, r0, #8
004d3e70  08 30 10 e5                                      ldr r3, [r0, #-8]
004d3e74  04 00 a0 e1                                      mov r0, r4
004d3e78  0f e0 a0 e1                                      mov lr, pc
004d3e7c  00 f0 93 e5                                      ldr pc, [r3]
004d3e80  08 00 95 e5                                      ldr r0, [r5, #8]
004d3e84  04 00 50 e1                                      cmp r0, r4
004d3e88  f6 ff ff 1a                                      bne #0x4d3e68
004d3e8c  08 00 40 e2                                      sub r0, r0, #8
004d3e90  6a f1 f8 eb                                      bl #0x310440
004d3e94  05 00 a0 e1                                      mov r0, r5
004d3e98  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d3e9c  58 0c 4c 00 38 18 00 00                          .byte 0x58, 0x0c, 0x4c, 0x00, 0x38, 0x18, 0x00, 0x00

; FUNCTION 0x004d3ea4, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TileOffsetList
; alias: _ZN7Structs14TileOffsetListD0Ev
; demangled: Structs::TileOffsetList::~TileOffsetList()
; decoder-mode: arm
004d3ea4  10 40 2d e9                                      push {r4, lr}
004d3ea8  00 40 a0 e1                                      mov r4, r0
004d3eac  dd ff ff eb                                      bl #0x4d3e28
004d3eb0  04 00 a0 e1                                      mov r0, r4
004d3eb4  61 f1 f8 eb                                      bl #0x310440
004d3eb8  04 00 a0 e1                                      mov r0, r4
004d3ebc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d3ec0, declared_size=124, range_size=124, mode=arm
; class-group: Structs::TileOffsetList
; alias: _ZN7Structs14TileOffsetListD2Ev
; demangled: Structs::TileOffsetList::~TileOffsetList()
; decoder-mode: arm
004d3ec0  70 40 2d e9                                      push {r4, r5, r6, lr}
004d3ec4  68 30 9f e5                                      ldr r3, [pc, #0x68]
004d3ec8  68 20 9f e5                                      ldr r2, [pc, #0x68]
004d3ecc  08 10 90 e5                                      ldr r1, [r0, #8]
004d3ed0  03 30 8f e0                                      add r3, pc, r3
004d3ed4  02 20 93 e7                                      ldr r2, [r3, r2]
004d3ed8  00 00 51 e3                                      cmp r1, #0
004d3edc  00 50 a0 e1                                      mov r5, r0
004d3ee0  08 20 82 e2                                      add r2, r2, #8
004d3ee4  00 20 80 e5                                      str r2, [r0]
004d3ee8  0f 00 00 0a                                      beq #0x4d3f2c
004d3eec  04 00 11 e5                                      ldr r0, [r1, #-4]
004d3ef0  80 01 81 e0                                      add r0, r1, r0, lsl #3
004d3ef4  00 00 51 e1                                      cmp r1, r0
004d3ef8  01 00 00 1a                                      bne #0x4d3f04
004d3efc  08 00 00 ea                                      b #0x4d3f24
004d3f00  04 00 a0 e1                                      mov r0, r4
004d3f04  08 40 40 e2                                      sub r4, r0, #8
004d3f08  08 30 10 e5                                      ldr r3, [r0, #-8]
004d3f0c  04 00 a0 e1                                      mov r0, r4
004d3f10  0f e0 a0 e1                                      mov lr, pc
004d3f14  00 f0 93 e5                                      ldr pc, [r3]
004d3f18  08 00 95 e5                                      ldr r0, [r5, #8]
004d3f1c  04 00 50 e1                                      cmp r0, r4
004d3f20  f6 ff ff 1a                                      bne #0x4d3f00
004d3f24  08 00 40 e2                                      sub r0, r0, #8
004d3f28  44 f1 f8 eb                                      bl #0x310440
004d3f2c  05 00 a0 e1                                      mov r0, r5
004d3f30  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
004d3f34  c0 0b 4c 00 38 18 00 00                          .byte 0xc0, 0x0b, 0x4c, 0x00, 0x38, 0x18, 0x00, 0x00

; FUNCTION 0x004dc4e0, declared_size=344, range_size=344, mode=arm
; class-group: Structs::TileOffsetList
; alias: _ZN7Structs14TileOffsetList4readEP11IStreamBase
; demangled: Structs::TileOffsetList::read(IStreamBase*)
; decoder-mode: arm
004dc4e0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
004dc4e4  00 50 a0 e1                                      mov r5, r0
004dc4e8  0c d0 4d e2                                      sub sp, sp, #0xc
004dc4ec  01 00 a0 e1                                      mov r0, r1
004dc4f0  01 60 a0 e1                                      mov r6, r1
004dc4f4  34 71 9f e5                                      ldr r7, [pc, #0x134]
004dc4f8  04 10 85 e2                                      add r1, r5, #4
004dc4fc  27 0b fc eb                                      bl #0x3df1a0
004dc500  01 30 a0 e3                                      mov r3, #1
004dc504  00 00 53 e3                                      cmp r3, #0
004dc508  04 30 8d e5                                      str r3, [sp, #4]
004dc50c  07 70 8f e0                                      add r7, pc, r7
004dc510  0f 00 00 1a                                      bne #0x4dc554
004dc514  05 30 85 e2                                      add r3, r5, #5
004dc518  06 20 85 e2                                      add r2, r5, #6
004dc51c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc520  01 10 53 e5                                      ldrb r1, [r3, #-1]
004dc524  02 00 53 e1                                      cmp r3, r2
004dc528  01 10 20 e0                                      eor r1, r0, r1
004dc52c  01 10 43 e5                                      strb r1, [r3, #-1]
004dc530  01 00 d2 e5                                      ldrb r0, [r2, #1]
004dc534  00 10 21 e0                                      eor r1, r1, r0
004dc538  01 10 c2 e5                                      strb r1, [r2, #1]
004dc53c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004dc540  01 20 42 e2                                      sub r2, r2, #1
004dc544  00 10 21 e0                                      eor r1, r1, r0
004dc548  01 10 43 e5                                      strb r1, [r3, #-1]
004dc54c  01 30 83 e2                                      add r3, r3, #1
004dc550  f1 ff ff 3a                                      blo #0x4dc51c
004dc554  08 30 95 e5                                      ldr r3, [r5, #8]
004dc558  00 00 53 e3                                      cmp r3, #0
004dc55c  0f 00 00 0a                                      beq #0x4dc5a0
004dc560  04 00 13 e5                                      ldr r0, [r3, #-4]
004dc564  80 01 83 e0                                      add r0, r3, r0, lsl #3
004dc568  00 00 53 e1                                      cmp r3, r0
004dc56c  01 00 00 1a                                      bne #0x4dc578
004dc570  08 00 00 ea                                      b #0x4dc598
004dc574  04 00 a0 e1                                      mov r0, r4
004dc578  08 40 40 e2                                      sub r4, r0, #8
004dc57c  08 30 10 e5                                      ldr r3, [r0, #-8]
004dc580  04 00 a0 e1                                      mov r0, r4
004dc584  0f e0 a0 e1                                      mov lr, pc
004dc588  00 f0 93 e5                                      ldr pc, [r3]
004dc58c  08 00 95 e5                                      ldr r0, [r5, #8]
004dc590  04 00 50 e1                                      cmp r0, r4
004dc594  f6 ff ff 1a                                      bne #0x4dc574
004dc598  08 00 40 e2                                      sub r0, r0, #8
004dc59c  a7 cf f8 eb                                      bl #0x310440
004dc5a0  04 40 95 e5                                      ldr r4, [r5, #4]
004dc5a4  01 10 a0 e3                                      mov r1, #1
004dc5a8  01 00 84 e0                                      add r0, r4, r1
004dc5ac  80 01 a0 e1                                      lsl r0, r0, #3
004dc5b0  ed cf f8 eb                                      bl #0x31056c
004dc5b4  08 30 a0 e3                                      mov r3, #8
004dc5b8  00 00 54 e3                                      cmp r4, #0
004dc5bc  18 00 80 e8                                      stm r0, {r3, r4}
004dc5c0  03 30 80 e0                                      add r3, r0, r3
004dc5c4  07 00 00 0a                                      beq #0x4dc5e8
004dc5c8  64 10 9f e5                                      ldr r1, [pc, #0x64]
004dc5cc  00 20 a0 e3                                      mov r2, #0
004dc5d0  01 10 97 e7                                      ldr r1, [r7, r1]
004dc5d4  08 10 81 e2                                      add r1, r1, #8
004dc5d8  01 20 82 e2                                      add r2, r2, #1
004dc5dc  04 00 52 e1                                      cmp r2, r4
004dc5e0  08 10 a0 e5                                      str r1, [r0, #8]!
004dc5e4  fb ff ff 1a                                      bne #0x4dc5d8
004dc5e8  04 20 95 e5                                      ldr r2, [r5, #4]
004dc5ec  08 30 85 e5                                      str r3, [r5, #8]
004dc5f0  00 00 52 e3                                      cmp r2, #0
004dc5f4  0b 00 00 0a                                      beq #0x4dc628
004dc5f8  00 40 a0 e3                                      mov r4, #0
004dc5fc  00 00 00 ea                                      b #0x4dc604
004dc600  08 30 95 e5                                      ldr r3, [r5, #8]
004dc604  84 01 83 e0                                      add r0, r3, r4, lsl #3
004dc608  06 10 a0 e1                                      mov r1, r6
004dc60c  84 31 93 e7                                      ldr r3, [r3, r4, lsl #3]
004dc610  0f e0 a0 e1                                      mov lr, pc
004dc614  0c f0 93 e5                                      ldr pc, [r3, #0xc]
004dc618  04 30 95 e5                                      ldr r3, [r5, #4]
004dc61c  01 40 84 e2                                      add r4, r4, #1
004dc620  04 00 53 e1                                      cmp r3, r4
004dc624  f5 ff ff 8a                                      bhi #0x4dc600
004dc628  0c d0 8d e2                                      add sp, sp, #0xc
004dc62c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
004dc630  84 85 4b 00 0c 4a 00 00                          .byte 0x84, 0x85, 0x4b, 0x00, 0x0c, 0x4a, 0x00, 0x00
