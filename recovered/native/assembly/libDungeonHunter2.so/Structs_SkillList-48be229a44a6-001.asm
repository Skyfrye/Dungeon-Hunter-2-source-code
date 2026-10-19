; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d10e0, declared_size=40, range_size=40, mode=arm
; class-group: Structs::SkillList
; alias: _ZN7Structs9SkillList8finalizeEv
; demangled: Structs::SkillList::finalize()
; decoder-mode: arm
004d10e0  10 40 2d e9                                      push {r4, lr}
004d10e4  00 40 a0 e1                                      mov r4, r0
004d10e8  08 00 90 e5                                      ldr r0, [r0, #8]
004d10ec  00 00 50 e3                                      cmp r0, #0
004d10f0  03 00 00 0a                                      beq #0x4d1104
004d10f4  d1 fc f8 eb                                      bl #0x310440
004d10f8  00 30 a0 e3                                      mov r3, #0
004d10fc  04 30 84 e5                                      str r3, [r4, #4]
004d1100  08 30 84 e5                                      str r3, [r4, #8]
004d1104  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1108, declared_size=64, range_size=64, mode=arm
; class-group: Structs::SkillList
; alias: _ZN7Structs9SkillListD1Ev
; demangled: Structs::SkillList::~SkillList()
; decoder-mode: arm
004d1108  10 40 2d e9                                      push {r4, lr}
004d110c  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d1110  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d1114  00 40 a0 e1                                      mov r4, r0
004d1118  03 30 8f e0                                      add r3, pc, r3
004d111c  08 00 90 e5                                      ldr r0, [r0, #8]
004d1120  02 20 93 e7                                      ldr r2, [r3, r2]
004d1124  00 00 50 e3                                      cmp r0, #0
004d1128  08 20 82 e2                                      add r2, r2, #8
004d112c  00 20 84 e5                                      str r2, [r4]
004d1130  00 00 00 0a                                      beq #0x4d1138
004d1134  c1 fc f8 eb                                      bl #0x310440
004d1138  04 00 a0 e1                                      mov r0, r4
004d113c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d1140  78 39 4c 00 c4 16 00 00                          .byte 0x78, 0x39, 0x4c, 0x00, 0xc4, 0x16, 0x00, 0x00

; FUNCTION 0x004d1148, declared_size=28, range_size=28, mode=arm
; class-group: Structs::SkillList
; alias: _ZN7Structs9SkillListD0Ev
; demangled: Structs::SkillList::~SkillList()
; decoder-mode: arm
004d1148  10 40 2d e9                                      push {r4, lr}
004d114c  00 40 a0 e1                                      mov r4, r0
004d1150  ec ff ff eb                                      bl #0x4d1108
004d1154  04 00 a0 e1                                      mov r0, r4
004d1158  b8 fc f8 eb                                      bl #0x310440
004d115c  04 00 a0 e1                                      mov r0, r4
004d1160  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d1164, declared_size=64, range_size=64, mode=arm
; class-group: Structs::SkillList
; alias: _ZN7Structs9SkillListD2Ev
; demangled: Structs::SkillList::~SkillList()
; decoder-mode: arm
004d1164  10 40 2d e9                                      push {r4, lr}
004d1168  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d116c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d1170  00 40 a0 e1                                      mov r4, r0
004d1174  03 30 8f e0                                      add r3, pc, r3
004d1178  08 00 90 e5                                      ldr r0, [r0, #8]
004d117c  02 20 93 e7                                      ldr r2, [r3, r2]
004d1180  00 00 50 e3                                      cmp r0, #0
004d1184  08 20 82 e2                                      add r2, r2, #8
004d1188  00 20 84 e5                                      str r2, [r4]
004d118c  00 00 00 0a                                      beq #0x4d1194
004d1190  aa fc f8 eb                                      bl #0x310440
004d1194  04 00 a0 e1                                      mov r0, r4
004d1198  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d119c  1c 39 4c 00 c4 16 00 00                          .byte 0x1c, 0x39, 0x4c, 0x00, 0xc4, 0x16, 0x00, 0x00

; FUNCTION 0x004ea830, declared_size=292, range_size=292, mode=arm
; class-group: Structs::SkillList
; alias: _ZN7Structs9SkillList4readEP11IStreamBase
; demangled: Structs::SkillList::read(IStreamBase*)
; decoder-mode: arm
004ea830  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004ea834  00 50 a0 e1                                      mov r5, r0
004ea838  08 d0 4d e2                                      sub sp, sp, #8
004ea83c  01 00 a0 e1                                      mov r0, r1
004ea840  01 80 a0 e1                                      mov r8, r1
004ea844  04 10 85 e2                                      add r1, r5, #4
004ea848  54 d2 fb eb                                      bl #0x3df1a0
004ea84c  01 30 a0 e3                                      mov r3, #1
004ea850  00 00 53 e3                                      cmp r3, #0
004ea854  04 30 8d e5                                      str r3, [sp, #4]
004ea858  0f 00 00 1a                                      bne #0x4ea89c
004ea85c  05 30 85 e2                                      add r3, r5, #5
004ea860  06 20 85 e2                                      add r2, r5, #6
004ea864  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ea868  01 10 53 e5                                      ldrb r1, [r3, #-1]
004ea86c  02 00 53 e1                                      cmp r3, r2
004ea870  01 10 20 e0                                      eor r1, r0, r1
004ea874  01 10 43 e5                                      strb r1, [r3, #-1]
004ea878  01 00 d2 e5                                      ldrb r0, [r2, #1]
004ea87c  00 10 21 e0                                      eor r1, r1, r0
004ea880  01 10 c2 e5                                      strb r1, [r2, #1]
004ea884  01 00 53 e5                                      ldrb r0, [r3, #-1]
004ea888  01 20 42 e2                                      sub r2, r2, #1
004ea88c  00 10 21 e0                                      eor r1, r1, r0
004ea890  01 10 43 e5                                      strb r1, [r3, #-1]
004ea894  01 30 83 e2                                      add r3, r3, #1
004ea898  f1 ff ff 3a                                      blo #0x4ea864
004ea89c  08 00 95 e5                                      ldr r0, [r5, #8]
004ea8a0  00 00 50 e3                                      cmp r0, #0
004ea8a4  00 00 00 0a                                      beq #0x4ea8ac
004ea8a8  e4 96 f8 eb                                      bl #0x310440
004ea8ac  04 00 95 e5                                      ldr r0, [r5, #4]
004ea8b0  01 10 a0 e3                                      mov r1, #1
004ea8b4  00 01 a0 e1                                      lsl r0, r0, #2
004ea8b8  2b 97 f8 eb                                      bl #0x31056c
004ea8bc  04 30 95 e5                                      ldr r3, [r5, #4]
004ea8c0  08 00 85 e5                                      str r0, [r5, #8]
004ea8c4  00 00 53 e3                                      cmp r3, #0
004ea8c8  1f 00 00 0a                                      beq #0x4ea94c
004ea8cc  00 40 a0 e3                                      mov r4, #0
004ea8d0  01 70 a0 e3                                      mov r7, #1
004ea8d4  04 61 a0 e1                                      lsl r6, r4, #2
004ea8d8  06 10 80 e0                                      add r1, r0, r6
004ea8dc  08 00 a0 e1                                      mov r0, r8
004ea8e0  ea b9 fd eb                                      bl #0x459090
004ea8e4  04 70 8d e5                                      str r7, [sp, #4]
004ea8e8  00 00 57 e3                                      cmp r7, #0
004ea8ec  08 30 95 e5                                      ldr r3, [r5, #8]
004ea8f0  10 00 00 1a                                      bne #0x4ea938
004ea8f4  06 60 83 e0                                      add r6, r3, r6
004ea8f8  02 30 86 e2                                      add r3, r6, #2
004ea8fc  01 60 86 e2                                      add r6, r6, #1
004ea900  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ea904  01 20 56 e5                                      ldrb r2, [r6, #-1]
004ea908  06 00 53 e1                                      cmp r3, r6
004ea90c  02 20 21 e0                                      eor r2, r1, r2
004ea910  01 20 46 e5                                      strb r2, [r6, #-1]
004ea914  01 10 d3 e5                                      ldrb r1, [r3, #1]
004ea918  01 20 22 e0                                      eor r2, r2, r1
004ea91c  01 20 c3 e5                                      strb r2, [r3, #1]
004ea920  01 10 56 e5                                      ldrb r1, [r6, #-1]
004ea924  01 30 43 e2                                      sub r3, r3, #1
004ea928  01 20 22 e0                                      eor r2, r2, r1
004ea92c  01 20 46 e5                                      strb r2, [r6, #-1]
004ea930  01 60 86 e2                                      add r6, r6, #1
004ea934  f1 ff ff 8a                                      bhi #0x4ea900
004ea938  04 30 95 e5                                      ldr r3, [r5, #4]
004ea93c  01 40 84 e2                                      add r4, r4, #1
004ea940  04 00 53 e1                                      cmp r3, r4
004ea944  08 00 95 85                                      ldrhi r0, [r5, #8]
004ea948  e1 ff ff 8a                                      bhi #0x4ea8d4
004ea94c  08 d0 8d e2                                      add sp, sp, #8
004ea950  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
