; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004d9c9c, declared_size=40, range_size=40, mode=arm
; class-group: Structs::TriggerObject
; alias: _ZN7Structs13TriggerObject8finalizeEv
; demangled: Structs::TriggerObject::finalize()
; decoder-mode: arm
004d9c9c  10 40 2d e9                                      push {r4, lr}
004d9ca0  00 40 a0 e1                                      mov r4, r0
004d9ca4  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d9ca8  00 00 50 e3                                      cmp r0, #0
004d9cac  03 00 00 0a                                      beq #0x4d9cc0
004d9cb0  e2 d9 f8 eb                                      bl #0x310440
004d9cb4  00 30 a0 e3                                      mov r3, #0
004d9cb8  08 30 84 e5                                      str r3, [r4, #8]
004d9cbc  0c 30 84 e5                                      str r3, [r4, #0xc]
004d9cc0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9cc4, declared_size=64, range_size=64, mode=arm
; class-group: Structs::TriggerObject
; alias: _ZN7Structs13TriggerObjectD1Ev
; demangled: Structs::TriggerObject::~TriggerObject()
; decoder-mode: arm
004d9cc4  10 40 2d e9                                      push {r4, lr}
004d9cc8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9ccc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9cd0  00 40 a0 e1                                      mov r4, r0
004d9cd4  03 30 8f e0                                      add r3, pc, r3
004d9cd8  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d9cdc  02 20 93 e7                                      ldr r2, [r3, r2]
004d9ce0  00 00 50 e3                                      cmp r0, #0
004d9ce4  08 20 82 e2                                      add r2, r2, #8
004d9ce8  00 20 84 e5                                      str r2, [r4]
004d9cec  00 00 00 0a                                      beq #0x4d9cf4
004d9cf0  d2 d9 f8 eb                                      bl #0x310440
004d9cf4  04 00 a0 e1                                      mov r0, r4
004d9cf8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9cfc  bc ad 4b 00 f4 10 00 00                          .byte 0xbc, 0xad, 0x4b, 0x00, 0xf4, 0x10, 0x00, 0x00

; FUNCTION 0x004d9d04, declared_size=28, range_size=28, mode=arm
; class-group: Structs::TriggerObject
; alias: _ZN7Structs13TriggerObjectD0Ev
; demangled: Structs::TriggerObject::~TriggerObject()
; decoder-mode: arm
004d9d04  10 40 2d e9                                      push {r4, lr}
004d9d08  00 40 a0 e1                                      mov r4, r0
004d9d0c  ec ff ff eb                                      bl #0x4d9cc4
004d9d10  04 00 a0 e1                                      mov r0, r4
004d9d14  c9 d9 f8 eb                                      bl #0x310440
004d9d18  04 00 a0 e1                                      mov r0, r4
004d9d1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x004d9d20, declared_size=64, range_size=64, mode=arm
; class-group: Structs::TriggerObject
; alias: _ZN7Structs13TriggerObjectD2Ev
; demangled: Structs::TriggerObject::~TriggerObject()
; decoder-mode: arm
004d9d20  10 40 2d e9                                      push {r4, lr}
004d9d24  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
004d9d28  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
004d9d2c  00 40 a0 e1                                      mov r4, r0
004d9d30  03 30 8f e0                                      add r3, pc, r3
004d9d34  0c 00 90 e5                                      ldr r0, [r0, #0xc]
004d9d38  02 20 93 e7                                      ldr r2, [r3, r2]
004d9d3c  00 00 50 e3                                      cmp r0, #0
004d9d40  08 20 82 e2                                      add r2, r2, #8
004d9d44  00 20 84 e5                                      str r2, [r4]
004d9d48  00 00 00 0a                                      beq #0x4d9d50
004d9d4c  bb d9 f8 eb                                      bl #0x310440
004d9d50  04 00 a0 e1                                      mov r0, r4
004d9d54  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
004d9d58  60 ad 4b 00 f4 10 00 00                          .byte 0x60, 0xad, 0x4b, 0x00, 0xf4, 0x10, 0x00, 0x00

; FUNCTION 0x004fd448, declared_size=464, range_size=464, mode=arm
; class-group: Structs::TriggerObject
; alias: _ZN7Structs13TriggerObject4readEP11IStreamBase
; demangled: Structs::TriggerObject::read(IStreamBase*)
; decoder-mode: arm
004fd448  70 40 2d e9                                      push {r4, r5, r6, lr}
004fd44c  00 40 a0 e1                                      mov r4, r0
004fd450  08 d0 4d e2                                      sub sp, sp, #8
004fd454  01 00 a0 e1                                      mov r0, r1
004fd458  01 50 a0 e1                                      mov r5, r1
004fd45c  04 10 84 e2                                      add r1, r4, #4
004fd460  0a 6f fd eb                                      bl #0x459090
004fd464  01 30 a0 e3                                      mov r3, #1
004fd468  00 00 53 e3                                      cmp r3, #0
004fd46c  04 30 8d e5                                      str r3, [sp, #4]
004fd470  0f 00 00 1a                                      bne #0x4fd4b4
004fd474  05 30 84 e2                                      add r3, r4, #5
004fd478  06 20 84 e2                                      add r2, r4, #6
004fd47c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd480  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd484  02 00 53 e1                                      cmp r3, r2
004fd488  01 10 20 e0                                      eor r1, r0, r1
004fd48c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd490  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd494  00 10 21 e0                                      eor r1, r1, r0
004fd498  01 10 c2 e5                                      strb r1, [r2, #1]
004fd49c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd4a0  01 20 42 e2                                      sub r2, r2, #1
004fd4a4  00 10 21 e0                                      eor r1, r1, r0
004fd4a8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd4ac  01 30 83 e2                                      add r3, r3, #1
004fd4b0  f1 ff ff 3a                                      blo #0x4fd47c
004fd4b4  05 00 a0 e1                                      mov r0, r5
004fd4b8  08 10 84 e2                                      add r1, r4, #8
004fd4bc  37 87 fb eb                                      bl #0x3df1a0
004fd4c0  01 30 a0 e3                                      mov r3, #1
004fd4c4  00 00 53 e3                                      cmp r3, #0
004fd4c8  04 30 8d e5                                      str r3, [sp, #4]
004fd4cc  0f 00 00 1a                                      bne #0x4fd510
004fd4d0  09 30 84 e2                                      add r3, r4, #9
004fd4d4  0a 20 84 e2                                      add r2, r4, #0xa
004fd4d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd4dc  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd4e0  02 00 53 e1                                      cmp r3, r2
004fd4e4  01 10 20 e0                                      eor r1, r0, r1
004fd4e8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd4ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd4f0  00 10 21 e0                                      eor r1, r1, r0
004fd4f4  01 10 c2 e5                                      strb r1, [r2, #1]
004fd4f8  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd4fc  01 20 42 e2                                      sub r2, r2, #1
004fd500  00 10 21 e0                                      eor r1, r1, r0
004fd504  01 10 43 e5                                      strb r1, [r3, #-1]
004fd508  01 30 83 e2                                      add r3, r3, #1
004fd50c  f1 ff ff 3a                                      blo #0x4fd4d8
004fd510  0c 00 94 e5                                      ldr r0, [r4, #0xc]
004fd514  00 00 50 e3                                      cmp r0, #0
004fd518  00 00 00 0a                                      beq #0x4fd520
004fd51c  c7 4b f8 eb                                      bl #0x310440
004fd520  08 00 94 e5                                      ldr r0, [r4, #8]
004fd524  01 10 a0 e3                                      mov r1, #1
004fd528  00 60 a0 e3                                      mov r6, #0
004fd52c  01 00 80 e0                                      add r0, r0, r1
004fd530  0d 4c f8 eb                                      bl #0x31056c
004fd534  08 20 94 e5                                      ldr r2, [r4, #8]
004fd538  00 10 a0 e1                                      mov r1, r0
004fd53c  0c 00 84 e5                                      str r0, [r4, #0xc]
004fd540  06 30 a0 e1                                      mov r3, r6
004fd544  05 00 a0 e1                                      mov r0, r5
004fd548  c1 67 f8 eb                                      bl #0x317454
004fd54c  08 30 94 e5                                      ldr r3, [r4, #8]
004fd550  0c 20 94 e5                                      ldr r2, [r4, #0xc]
004fd554  05 00 a0 e1                                      mov r0, r5
004fd558  10 10 84 e2                                      add r1, r4, #0x10
004fd55c  03 60 c2 e7                                      strb r6, [r2, r3]
004fd560  ca 6e fd eb                                      bl #0x459090
004fd564  01 30 a0 e3                                      mov r3, #1
004fd568  06 00 53 e1                                      cmp r3, r6
004fd56c  04 30 8d e5                                      str r3, [sp, #4]
004fd570  0f 00 00 1a                                      bne #0x4fd5b4
004fd574  11 30 84 e2                                      add r3, r4, #0x11
004fd578  12 20 84 e2                                      add r2, r4, #0x12
004fd57c  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd580  01 10 53 e5                                      ldrb r1, [r3, #-1]
004fd584  03 00 52 e1                                      cmp r2, r3
004fd588  01 10 20 e0                                      eor r1, r0, r1
004fd58c  01 10 43 e5                                      strb r1, [r3, #-1]
004fd590  01 00 d2 e5                                      ldrb r0, [r2, #1]
004fd594  00 10 21 e0                                      eor r1, r1, r0
004fd598  01 10 c2 e5                                      strb r1, [r2, #1]
004fd59c  01 00 53 e5                                      ldrb r0, [r3, #-1]
004fd5a0  01 20 42 e2                                      sub r2, r2, #1
004fd5a4  00 10 21 e0                                      eor r1, r1, r0
004fd5a8  01 10 43 e5                                      strb r1, [r3, #-1]
004fd5ac  01 30 83 e2                                      add r3, r3, #1
004fd5b0  f1 ff ff 8a                                      bhi #0x4fd57c
004fd5b4  05 00 a0 e1                                      mov r0, r5
004fd5b8  14 10 84 e2                                      add r1, r4, #0x14
004fd5bc  b3 6e fd eb                                      bl #0x459090
004fd5c0  01 30 a0 e3                                      mov r3, #1
004fd5c4  00 00 53 e3                                      cmp r3, #0
004fd5c8  04 30 8d e5                                      str r3, [sp, #4]
004fd5cc  0f 00 00 1a                                      bne #0x4fd610
004fd5d0  16 30 84 e2                                      add r3, r4, #0x16
004fd5d4  15 40 84 e2                                      add r4, r4, #0x15
004fd5d8  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd5dc  01 20 54 e5                                      ldrb r2, [r4, #-1]
004fd5e0  04 00 53 e1                                      cmp r3, r4
004fd5e4  02 20 21 e0                                      eor r2, r1, r2
004fd5e8  01 20 44 e5                                      strb r2, [r4, #-1]
004fd5ec  01 10 d3 e5                                      ldrb r1, [r3, #1]
004fd5f0  01 20 22 e0                                      eor r2, r2, r1
004fd5f4  01 20 c3 e5                                      strb r2, [r3, #1]
004fd5f8  01 10 54 e5                                      ldrb r1, [r4, #-1]
004fd5fc  01 30 43 e2                                      sub r3, r3, #1
004fd600  01 20 22 e0                                      eor r2, r2, r1
004fd604  01 20 44 e5                                      strb r2, [r4, #-1]
004fd608  01 40 84 e2                                      add r4, r4, #1
004fd60c  f1 ff ff 8a                                      bhi #0x4fd5d8
004fd610  08 d0 8d e2                                      add sp, sp, #8
004fd614  70 80 bd e8                                      pop {r4, r5, r6, pc}
