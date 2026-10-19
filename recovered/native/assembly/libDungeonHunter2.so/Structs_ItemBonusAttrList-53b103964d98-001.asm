; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d5678, declared_size=40, range_size=40, mode=arm
; class-group: Structs::ItemBonusAttrList
; alias: _ZN7Structs17ItemBonusAttrList8finalizeEv
; demangled: Structs::ItemBonusAttrList::finalize()
; decoder-mode: arm
004d5678  10 40 2d e9                                      push {r4, lr}
004d567c  00 40 a0 e1                                      mov r4, r0
004d5680  08 00 90 e5                                      ldr r0, [r0, #8]
004d5684  00 00 50 e3                                      cmp r0, #0
004d5688  03 00 00 0a                                      beq #0x4d569c
004d568c  6b eb f8 eb                                      bl #0x310440
004d5690  00 30 a0 e3                                      mov r3, #0
004d5694  04 30 84 e5                                      str r3, [r4, #4]
004d5698  08 30 84 e5                                      str r3, [r4, #8]
004d569c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d56a0, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemBonusAttrList
; alias: _ZN7Structs17ItemBonusAttrListD1Ev
; demangled: Structs::ItemBonusAttrList::~ItemBonusAttrList()
; decoder-mode: arm
004d56a0  10 40 2d e9                                      push {r4, lr}
004d56a4  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d56a8  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d56ac  00 40 a0 e1                                      mov r4, r0
004d56b0  03 30 8f e0                                      add r3, pc, r3
004d56b4  08 00 90 e5                                      ldr r0, [r0, #8]
004d56b8  02 20 93 e7                                      ldr r2, [r3, r2]
004d56bc  00 00 50 e3                                      cmp r0, #0
004d56c0  08 20 82 e2                                      add r2, r2, #8
004d56c4  00 20 84 e5                                      str r2, [r4]
004d56c8  00 00 00 0a                                      beq #0x4d56d0
004d56cc  5b eb f8 eb                                      bl #0x310440
004d56d0  04 00 a0 e1                                      mov r0, r4
004d56d4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d56d8  e0 f3 4b 00 18 1a 00 00                          .byte 0xe0, 0xf3, 0x4b, 0x00, 0x18, 0x1a, 0x00, 0x00

; FUNCTION 0x004d56e0, declared_size=28, range_size=28, mode=arm
; class-group: Structs::ItemBonusAttrList
; alias: _ZN7Structs17ItemBonusAttrListD0Ev
; demangled: Structs::ItemBonusAttrList::~ItemBonusAttrList()
; decoder-mode: arm
004d56e0  10 40 2d e9                                      push {r4, lr}
004d56e4  00 40 a0 e1                                      mov r4, r0
004d56e8  ec ff ff eb                                      bl #0x4d56a0
004d56ec  04 00 a0 e1                                      mov r0, r4
004d56f0  52 eb f8 eb                                      bl #0x310440
004d56f4  04 00 a0 e1                                      mov r0, r4
004d56f8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d56fc, declared_size=64, range_size=64, mode=arm
; class-group: Structs::ItemBonusAttrList
; alias: _ZN7Structs17ItemBonusAttrListD2Ev
; demangled: Structs::ItemBonusAttrList::~ItemBonusAttrList()
; decoder-mode: arm
004d56fc  10 40 2d e9                                      push {r4, lr}
004d5700  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d5704  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d5708  00 40 a0 e1                                      mov r4, r0
004d570c  03 30 8f e0                                      add r3, pc, r3
004d5710  08 00 90 e5                                      ldr r0, [r0, #8]
004d5714  02 20 93 e7                                      ldr r2, [r3, r2]
004d5718  00 00 50 e3                                      cmp r0, #0
004d571c  08 20 82 e2                                      add r2, r2, #8
004d5720  00 20 84 e5                                      str r2, [r4]
004d5724  00 00 00 0a                                      beq #0x4d572c
004d5728  44 eb f8 eb                                      bl #0x310440
004d572c  04 00 a0 e1                                      mov r0, r4
004d5730  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d5734  84 f3 4b 00 18 1a 00 00                          .byte 0x84, 0xf3, 0x4b, 0x00, 0x18, 0x1a, 0x00, 0x00

; FUNCTION 0x004ea954, declared_size=292, range_size=292, mode=arm
; class-group: Structs::ItemBonusAttrList
; alias: _ZN7Structs17ItemBonusAttrList4readEP11IStreamBase
; demangled: Structs::ItemBonusAttrList::read(IStreamBase*)
; decoder-mode: arm
004ea954  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ea958  00 50 a0 e1                                      mov r5, r0
004ea95c  08 d0 4d e2                                      sub sp, sp, #8
004ea960  01 00 a0 e1                                      mov r0, r1
004ea964  01 80 a0 e1                                      mov r8, r1
004ea968  04 10 85 e2                                      add r1, r5, #4
004ea96c  0b d2 fb eb                                      bl #0x3df1a0
004ea970  01 30 a0 e3                                      mov r3, #1
004ea974  00 00 53 e3                                      cmp r3, #0
004ea978  04 30 8d e5                                      str r3, [sp, #4]
004ea97c  0f 00 00 1a                                      bne #0x4ea9c0
004ea980  05 30 85 e2                                      add r3, r5, #5
004ea984  06 20 85 e2                                      add r2, r5, #6
004ea988  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ea98c  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ea990  02 00 53 e1                                      cmp r3, r2
004ea994  01 10 20 e0                                      eor r1, r0, r1
004ea998  01 10 43 e5                                      strb r1, [r3, #-1]
004ea99c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ea9a0  00 10 21 e0                                      eor r1, r1, r0
004ea9a4  01 10 c2 e5                                      strb r1, [r2, #1]
004ea9a8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ea9ac  01 20 42 e2                                      sub r2, r2, #1
004ea9b0  00 10 21 e0                                      eor r1, r1, r0
004ea9b4  01 10 43 e5                                      strb r1, [r3, #-1]
004ea9b8  01 30 83 e2                                      add r3, r3, #1
004ea9bc  f1 ff ff 3a                                      blo #0x4ea988
004ea9c0  08 00 95 e5                                      ldr r0, [r5, #8]
004ea9c4  00 00 50 e3                                      cmp r0, #0
004ea9c8  00 00 00 0a                                      beq #0x4ea9d0
004ea9cc  9b 96 f8 eb                                      bl #0x310440
004ea9d0  04 00 95 e5                                      ldr r0, [r5, #4]
004ea9d4  01 10 a0 e3                                      mov r1, #1
004ea9d8  00 01 a0 e1                                      lsl r0, r0, #2
004ea9dc  e2 96 f8 eb                                      bl #0x31056c
004ea9e0  04 30 95 e5                                      ldr r3, [r5, #4]
004ea9e4  08 00 85 e5                                      str r0, [r5, #8]
004ea9e8  00 00 53 e3                                      cmp r3, #0
004ea9ec  1f 00 00 0a                                      beq #0x4eaa70
004ea9f0  00 40 a0 e3                                      mov r4, #0
004ea9f4  01 70 a0 e3                                      mov r7, #1
004ea9f8  04 61 a0 e1                                      lsl r6, r4, #2
004ea9fc  06 10 80 e0                                      add r1, r0, r6
004eaa00  08 00 a0 e1                                      mov r0, r8
004eaa04  a1 b9 fd eb                                      bl #0x459090
004eaa08  04 70 8d e5                                      str r7, [sp, #4]
004eaa0c  00 00 57 e3                                      cmp r7, #0
004eaa10  08 30 95 e5                                      ldr r3, [r5, #8]
004eaa14  10 00 00 1a                                      bne #0x4eaa5c
004eaa18  06 60 83 e0                                      add r6, r3, r6
004eaa1c  02 30 86 e2                                      add r3, r6, #2
004eaa20  01 60 86 e2                                      add r6, r6, #1
004eaa24  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eaa28  01 20 56 e5                                      ldrb r2, [r6, #-1]
004eaa2c  06 00 53 e1                                      cmp r3, r6
004eaa30  02 20 21 e0                                      eor r2, r1, r2
004eaa34  01 20 46 e5                                      strb r2, [r6, #-1]
004eaa38  01 10 d3 e5                                      ldrb r1, [r3, #1]
004eaa3c  01 20 22 e0                                      eor r2, r2, r1
004eaa40  01 20 c3 e5                                      strb r2, [r3, #1]
004eaa44  01 10 56 e5                                      ldrb r1, [r6, #-1]
004eaa48  01 30 43 e2                                      sub r3, r3, #1
004eaa4c  01 20 22 e0                                      eor r2, r2, r1
004eaa50  01 20 46 e5                                      strb r2, [r6, #-1]
004eaa54  01 60 86 e2                                      add r6, r6, #1
004eaa58  f1 ff ff 8a                                      bhi #0x4eaa24
004eaa5c  04 30 95 e5                                      ldr r3, [r5, #4]
004eaa60  01 40 84 e2                                      add r4, r4, #1
004eaa64  04 00 53 e1                                      cmp r3, r4
004eaa68  08 00 95 85                                      ldrhi r0, [r5, #8]
004eaa6c  e1 ff ff 8a                                      bhi #0x4ea9f8
004eaa70  08 d0 8d e2                                      add sp, sp, #8
004eaa74  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
