; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0041fa00, declared_size=680, range_size=680, mode=arm
; class-group: AbstractTableModel
; alias: _ZN18AbstractTableModel15UpdateTableDataEi
; demangled: AbstractTableModel::UpdateTableData(int)
; decoder-mode: arm
0041fa00  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0041fa04  08 70 90 e5                                      ldr r7, [r0, #8]
0041fa08  14 30 d0 e5                                      ldrb r3, [r0, #0x14]
0041fa0c  00 40 a0 e1                                      mov r4, r0
0041fa10  07 10 81 e0                                      add r1, r1, r7
0041fa14  00 00 53 e3                                      cmp r3, #0
0041fa18  08 10 80 e5                                      str r1, [r0, #8]
0041fa1c  10 30 90 e5                                      ldr r3, [r0, #0x10]
0041fa20  16 00 d0 e5                                      ldrb r0, [r0, #0x16]
0041fa24  18 d0 4d e2                                      sub sp, sp, #0x18
0041fa28  02 60 83 12                                      addne r6, r3, #2
0041fa2c  03 60 a0 01                                      moveq r6, r3
0041fa30  00 00 50 e3                                      cmp r0, #0
0041fa34  0c 20 94 05                                      ldreq r2, [r4, #0xc]
0041fa38  5e 00 00 0a                                      beq #0x41fbb8
0041fa3c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0041fa40  03 00 52 e1                                      cmp r2, r3
0041fa44  5b 00 00 ba                                      blt #0x41fbb8
0041fa48  00 00 51 e3                                      cmp r1, #0
0041fa4c  02 20 81 b0                                      addlt r2, r1, r2
0041fa50  08 20 84 b5                                      strlt r2, [r4, #8]
0041fa54  03 00 00 ba                                      blt #0x41fa68
0041fa58  02 00 51 e1                                      cmp r1, r2
0041fa5c  01 00 00 ba                                      blt #0x41fa68
0041fa60  01 20 62 e0                                      rsb r2, r2, r1
0041fa64  08 20 84 e5                                      str r2, [r4, #8]
0041fa68  00 00 56 e3                                      cmp r6, #0
0041fa6c  00 50 a0 c3                                      movgt r5, #0
0041fa70  01 00 00 ca                                      bgt #0x41fa7c
0041fa74  21 00 00 ea                                      b #0x41fb00
0041fa78  16 00 d4 e5                                      ldrb r0, [r4, #0x16]
0041fa7c  18 30 94 e5                                      ldr r3, [r4, #0x18]
0041fa80  08 20 94 e5                                      ldr r2, [r4, #8]
0041fa84  15 10 d4 e5                                      ldrb r1, [r4, #0x15]
0041fa88  02 20 63 e0                                      rsb r2, r3, r2
0041fa8c  00 00 51 e3                                      cmp r1, #0
0041fa90  05 20 82 e0                                      add r2, r2, r5
0041fa94  03 00 00 0a                                      beq #0x41faa8
0041fa98  05 00 53 e1                                      cmp r3, r5
0041fa9c  01 20 82 c2                                      addgt r2, r2, #1
0041faa0  00 00 00 ca                                      bgt #0x41faa8
0041faa4  01 20 42 b2                                      sublt r2, r2, #1
0041faa8  00 00 50 e3                                      cmp r0, #0
0041faac  04 00 00 0a                                      beq #0x41fac4
0041fab0  10 30 94 e5                                      ldr r3, [r4, #0x10]
0041fab4  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0041fab8  03 00 51 e1                                      cmp r1, r3
0041fabc  01 30 a0 a3                                      movge r3, #1
0041fac0  06 00 00 aa                                      bge #0x41fae0
0041fac4  00 00 52 e3                                      cmp r2, #0
0041fac8  00 30 a0 b3                                      movlt r3, #0
0041facc  03 00 00 ba                                      blt #0x41fae0
0041fad0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0041fad4  03 00 52 e1                                      cmp r2, r3
0041fad8  00 30 a0 a3                                      movge r3, #0
0041fadc  01 30 a0 b3                                      movlt r3, #1
0041fae0  05 10 a0 e1                                      mov r1, r5
0041fae4  00 c0 94 e5                                      ldr ip, [r4]
0041fae8  01 50 85 e2                                      add r5, r5, #1
0041faec  04 00 a0 e1                                      mov r0, r4
0041faf0  0f e0 a0 e1                                      mov lr, pc
0041faf4  00 f0 9c e5                                      ldr pc, [ip]
0041faf8  06 00 55 e1                                      cmp r5, r6
0041fafc  dd ff ff 1a                                      bne #0x41fa78
0041fb00  1c 00 84 e2                                      add r0, r4, #0x1c
0041fb04  91 20 00 eb                                      bl #0x427d50
0041fb08  00 50 a0 e1                                      mov r5, r0
0041fb0c  4c 00 84 e2                                      add r0, r4, #0x4c
0041fb10  8e 20 00 eb                                      bl #0x427d50
0041fb14  16 30 d4 e5                                      ldrb r3, [r4, #0x16]
0041fb18  00 60 a0 e1                                      mov r6, r0
0041fb1c  00 00 53 e3                                      cmp r3, #0
0041fb20  03 00 00 0a                                      beq #0x41fb34
0041fb24  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0041fb28  10 30 94 e5                                      ldr r3, [r4, #0x10]
0041fb2c  03 00 52 e1                                      cmp r2, r3
0041fb30  50 00 00 aa                                      bge #0x41fc78
0041fb34  05 00 94 e9                                      ldmib r4, {r0, r2}
0041fb38  05 10 a0 e1                                      mov r1, r5
0041fb3c  00 00 52 e3                                      cmp r2, #0
0041fb40  00 20 a0 d3                                      movle r2, #0
0041fb44  01 20 a0 c3                                      movgt r2, #1
0041fb48  af 2f 0e eb                                      bl #0x7aba0c
0041fb4c  08 30 94 e5                                      ldr r3, [r4, #8]
0041fb50  00 00 53 e3                                      cmp r3, #0
0041fb54  00 30 a0 d3                                      movle r3, #0
0041fb58  01 30 a0 c3                                      movgt r3, #1
0041fb5c  9b 30 c5 e5                                      strb r3, [r5, #0x9b]
0041fb60  15 30 d4 e5                                      ldrb r3, [r4, #0x15]
0041fb64  00 00 53 e3                                      cmp r3, #0
0041fb68  31 00 00 0a                                      beq #0x41fc34
0041fb6c  0d 00 94 e9                                      ldmib r4, {r0, r2, r3}
0041fb70  01 30 43 e2                                      sub r3, r3, #1
0041fb74  03 00 52 e1                                      cmp r2, r3
0041fb78  00 20 a0 a3                                      movge r2, #0
0041fb7c  01 20 a0 b3                                      movlt r2, #1
0041fb80  06 10 a0 e1                                      mov r1, r6
0041fb84  a0 2f 0e eb                                      bl #0x7aba0c
0041fb88  0c 30 94 e5                                      ldr r3, [r4, #0xc]
0041fb8c  08 20 94 e5                                      ldr r2, [r4, #8]
0041fb90  01 30 43 e2                                      sub r3, r3, #1
0041fb94  03 00 52 e1                                      cmp r2, r3
0041fb98  00 30 a0 a3                                      movge r3, #0
0041fb9c  01 30 a0 b3                                      movlt r3, #1
0041fba0  9b 30 c6 e5                                      strb r3, [r6, #0x9b]
0041fba4  08 00 94 e5                                      ldr r0, [r4, #8]
0041fba8  07 00 50 e0                                      subs r0, r0, r7
0041fbac  01 00 a0 13                                      movne r0, #1
0041fbb0  18 d0 8d e2                                      add sp, sp, #0x18
0041fbb4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0041fbb8  15 c0 d4 e5                                      ldrb ip, [r4, #0x15]
0041fbbc  00 00 5c e3                                      cmp ip, #0
0041fbc0  0b 00 00 0a                                      beq #0x41fbf4
0041fbc4  00 30 a0 e3                                      mov r3, #0
0041fbc8  00 00 51 e3                                      cmp r1, #0
0041fbcc  01 20 42 e2                                      sub r2, r2, #1
0041fbd0  14 30 8d e5                                      str r3, [sp, #0x14]
0041fbd4  10 20 8d e5                                      str r2, [sp, #0x10]
0041fbd8  14 30 8d b2                                      addlt r3, sp, #0x14
0041fbdc  08 30 84 a2                                      addge r3, r4, #8
0041fbe0  00 30 93 e5                                      ldr r3, [r3]
0041fbe4  03 00 52 e1                                      cmp r2, r3
0041fbe8  08 20 84 d5                                      strle r2, [r4, #8]
0041fbec  08 30 84 c5                                      strgt r3, [r4, #8]
0041fbf0  9c ff ff ea                                      b #0x41fa68
0041fbf4  02 30 63 e0                                      rsb r3, r3, r2
0041fbf8  00 00 51 e3                                      cmp r1, #0
0041fbfc  00 20 a0 e3                                      mov r2, #0
0041fc00  0c c0 8d e5                                      str ip, [sp, #0xc]
0041fc04  08 30 8d e5                                      str r3, [sp, #8]
0041fc08  0c 10 8d b2                                      addlt r1, sp, #0xc
0041fc0c  08 10 84 a2                                      addge r1, r4, #8
0041fc10  04 20 8d e5                                      str r2, [sp, #4]
0041fc14  00 00 53 e3                                      cmp r3, #0
0041fc18  02 30 a0 b1                                      movlt r3, r2
0041fc1c  00 20 91 e5                                      ldr r2, [r1]
0041fc20  08 c0 8d a2                                      addge ip, sp, #8
0041fc24  04 c0 8d b2                                      addlt ip, sp, #4
0041fc28  02 00 53 e1                                      cmp r3, r2
0041fc2c  00 20 9c b5                                      ldrlt r2, [ip]
0041fc30  8b ff ff ea                                      b #0x41fa64
0041fc34  10 10 94 e5                                      ldr r1, [r4, #0x10]
0041fc38  0d 00 94 e9                                      ldmib r4, {r0, r2, r3}
0041fc3c  02 20 81 e0                                      add r2, r1, r2
0041fc40  03 00 52 e1                                      cmp r2, r3
0041fc44  00 20 a0 a3                                      movge r2, #0
0041fc48  01 20 a0 b3                                      movlt r2, #1
0041fc4c  06 10 a0 e1                                      mov r1, r6
0041fc50  6d 2f 0e eb                                      bl #0x7aba0c
0041fc54  10 10 94 e5                                      ldr r1, [r4, #0x10]
0041fc58  08 30 94 e5                                      ldr r3, [r4, #8]
0041fc5c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
0041fc60  03 30 81 e0                                      add r3, r1, r3
0041fc64  02 00 53 e1                                      cmp r3, r2
0041fc68  00 30 a0 a3                                      movge r3, #0
0041fc6c  01 30 a0 b3                                      movlt r3, #1
0041fc70  9b 30 c6 e5                                      strb r3, [r6, #0x9b]
0041fc74  ca ff ff ea                                      b #0x41fba4
0041fc78  01 80 a0 e3                                      mov r8, #1
0041fc7c  04 00 94 e5                                      ldr r0, [r4, #4]
0041fc80  05 10 a0 e1                                      mov r1, r5
0041fc84  08 20 a0 e1                                      mov r2, r8
0041fc88  5f 2f 0e eb                                      bl #0x7aba0c
0041fc8c  9b 80 c5 e5                                      strb r8, [r5, #0x9b]
0041fc90  04 00 94 e5                                      ldr r0, [r4, #4]
0041fc94  06 10 a0 e1                                      mov r1, r6
0041fc98  08 20 a0 e1                                      mov r2, r8
0041fc9c  5a 2f 0e eb                                      bl #0x7aba0c
0041fca0  9b 80 c6 e5                                      strb r8, [r6, #0x9b]
0041fca4  be ff ff ea                                      b #0x41fba4

; FUNCTION 0x0041fca8, declared_size=148, range_size=148, mode=arm
; class-group: AbstractTableModel
; alias: _ZN18AbstractTableModel13_doScrollDownEv
; demangled: AbstractTableModel::_doScrollDown()
; decoder-mode: arm
0041fca8  70 40 2d e9                                      push {r4, r5, r6, lr}
0041fcac  00 10 e0 e3                                      mvn r1, #0
0041fcb0  00 40 a0 e1                                      mov r4, r0
0041fcb4  51 ff ff eb                                      bl #0x41fa00
0041fcb8  00 00 50 e3                                      cmp r0, #0
0041fcbc  18 00 00 0a                                      beq #0x41fd24
0041fcc0  15 30 d4 e5                                      ldrb r3, [r4, #0x15]
0041fcc4  00 00 53 e3                                      cmp r3, #0
0041fcc8  06 00 00 1a                                      bne #0x41fce8
0041fccc  54 10 9f e5                                      ldr r1, [pc, #0x54]
0041fcd0  54 20 9f e5                                      ldr r2, [pc, #0x54]
0041fcd4  04 00 94 e5                                      ldr r0, [r4, #4]
0041fcd8  01 10 8f e0                                      add r1, pc, r1
0041fcdc  02 20 8f e0                                      add r2, pc, r2
0041fce0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041fce4  8b 2f 0e ea                                      b #0x7abb18
0041fce8  40 50 9f e5                                      ldr r5, [pc, #0x40]
0041fcec  40 10 9f e5                                      ldr r1, [pc, #0x40]
0041fcf0  04 00 94 e5                                      ldr r0, [r4, #4]
0041fcf4  05 50 8f e0                                      add r5, pc, r5
0041fcf8  05 20 a0 e1                                      mov r2, r5
0041fcfc  01 10 8f e0                                      add r1, pc, r1
0041fd00  00 30 a0 e3                                      mov r3, #0
0041fd04  83 2f 0e eb                                      bl #0x7abb18
0041fd08  28 10 9f e5                                      ldr r1, [pc, #0x28]
0041fd0c  04 00 94 e5                                      ldr r0, [r4, #4]
0041fd10  05 20 a0 e1                                      mov r2, r5
0041fd14  01 10 8f e0                                      add r1, pc, r1
0041fd18  00 30 a0 e3                                      mov r3, #0
0041fd1c  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041fd20  7c 2f 0e ea                                      b #0x7abb18
0041fd24  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041fd28  40 d5 4c 00 3c 92 4a 00 24 92 4a 00 0c 92 4a 00  .byte 0x40, 0xd5, 0x4c, 0x00, 0x3c, 0x92, 0x4a, 0x00, 0x24, 0x92, 0x4a, 0x00, 0x0c, 0x92, 0x4a, 0x00
0041fd38  14 92 4a 00                                      .byte 0x14, 0x92, 0x4a, 0x00

; FUNCTION 0x0041fd3c, declared_size=148, range_size=148, mode=arm
; class-group: AbstractTableModel
; alias: _ZN18AbstractTableModel11_doScrollUpEv
; demangled: AbstractTableModel::_doScrollUp()
; decoder-mode: arm
0041fd3c  70 40 2d e9                                      push {r4, r5, r6, lr}
0041fd40  01 10 a0 e3                                      mov r1, #1
0041fd44  00 40 a0 e1                                      mov r4, r0
0041fd48  2c ff ff eb                                      bl #0x41fa00
0041fd4c  00 00 50 e3                                      cmp r0, #0
0041fd50  18 00 00 0a                                      beq #0x41fdb8
0041fd54  15 30 d4 e5                                      ldrb r3, [r4, #0x15]
0041fd58  00 00 53 e3                                      cmp r3, #0
0041fd5c  06 00 00 1a                                      bne #0x41fd7c
0041fd60  54 10 9f e5                                      ldr r1, [pc, #0x54]
0041fd64  54 20 9f e5                                      ldr r2, [pc, #0x54]
0041fd68  04 00 94 e5                                      ldr r0, [r4, #4]
0041fd6c  01 10 8f e0                                      add r1, pc, r1
0041fd70  02 20 8f e0                                      add r2, pc, r2
0041fd74  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041fd78  66 2f 0e ea                                      b #0x7abb18
0041fd7c  40 50 9f e5                                      ldr r5, [pc, #0x40]
0041fd80  40 10 9f e5                                      ldr r1, [pc, #0x40]
0041fd84  04 00 94 e5                                      ldr r0, [r4, #4]
0041fd88  05 50 8f e0                                      add r5, pc, r5
0041fd8c  05 20 a0 e1                                      mov r2, r5
0041fd90  01 10 8f e0                                      add r1, pc, r1
0041fd94  00 30 a0 e3                                      mov r3, #0
0041fd98  5e 2f 0e eb                                      bl #0x7abb18
0041fd9c  28 10 9f e5                                      ldr r1, [pc, #0x28]
0041fda0  04 00 94 e5                                      ldr r0, [r4, #4]
0041fda4  05 20 a0 e1                                      mov r2, r5
0041fda8  01 10 8f e0                                      add r1, pc, r1
0041fdac  00 30 a0 e3                                      mov r3, #0
0041fdb0  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041fdb4  57 2f 0e ea                                      b #0x7abb18
0041fdb8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0041fdbc  ac d4 4c 00 c8 91 4a 00 b0 91 4a 00 78 91 4a 00  .byte 0xac, 0xd4, 0x4c, 0x00, 0xc8, 0x91, 0x4a, 0x00, 0xb0, 0x91, 0x4a, 0x00, 0x78, 0x91, 0x4a, 0x00
0041fdcc  80 91 4a 00                                      .byte 0x80, 0x91, 0x4a, 0x00

; FUNCTION 0x0041fdd0, declared_size=92, range_size=92, mode=arm
; class-group: AbstractTableModel
; alias: _ZN18AbstractTableModel17ProcessTableEventERN8RenderFX5EventE
; demangled: AbstractTableModel::ProcessTableEvent(RenderFX::Event&)
; decoder-mode: arm
0041fdd0  08 30 91 e5                                      ldr r3, [r1, #8]
0041fdd4  70 40 2d e9                                      push {r4, r5, r6, lr}
0041fdd8  02 00 53 e3                                      cmp r3, #2
0041fddc  01 40 a0 e1                                      mov r4, r1
0041fde0  00 50 a0 e1                                      mov r5, r0
0041fde4  00 00 00 0a                                      beq #0x41fdec
0041fde8  70 80 bd e8                                      pop {r4, r5, r6, pc}
0041fdec  1c 00 80 e2                                      add r0, r0, #0x1c
0041fdf0  00 60 91 e5                                      ldr r6, [r1]
0041fdf4  d5 1f 00 eb                                      bl #0x427d50
0041fdf8  00 00 56 e1                                      cmp r6, r0
0041fdfc  07 00 00 0a                                      beq #0x41fe20
0041fe00  4c 00 85 e2                                      add r0, r5, #0x4c
0041fe04  00 40 94 e5                                      ldr r4, [r4]
0041fe08  d0 1f 00 eb                                      bl #0x427d50
0041fe0c  00 00 54 e1                                      cmp r4, r0
0041fe10  f4 ff ff 1a                                      bne #0x41fde8
0041fe14  05 00 a0 e1                                      mov r0, r5
0041fe18  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041fe1c  c6 ff ff ea                                      b #0x41fd3c
0041fe20  05 00 a0 e1                                      mov r0, r5
0041fe24  70 40 bd e8                                      pop {r4, r5, r6, lr}
0041fe28  9e ff ff ea                                      b #0x41fca8

; FUNCTION 0x0041fe2c, declared_size=88, range_size=88, mode=arm
; class-group: AbstractTableModel
; alias: _ZN18AbstractTableModel9InitTableEP6MenuFXiibbb
; demangled: AbstractTableModel::InitTable(MenuFX*, int, int, bool, bool, bool)
; decoder-mode: arm
0041fe2c  30 00 2d e9                                      push {r4, r5}
0041fe30  0c 40 dd e5                                      ldrb r4, [sp, #0xc]
0041fe34  08 c0 dd e5                                      ldrb ip, [sp, #8]
0041fe38  10 50 dd e5                                      ldrb r5, [sp, #0x10]
0041fe3c  00 00 54 e3                                      cmp r4, #0
0041fe40  04 10 80 e5                                      str r1, [r0, #4]
0041fe44  0c 20 80 e5                                      str r2, [r0, #0xc]
0041fe48  16 50 c0 e5                                      strb r5, [r0, #0x16]
0041fe4c  10 30 80 e5                                      str r3, [r0, #0x10]
0041fe50  14 c0 c0 e5                                      strb ip, [r0, #0x14]
0041fe54  15 40 c0 e5                                      strb r4, [r0, #0x15]
0041fe58  06 00 00 0a                                      beq #0x41fe78
0041fe5c  00 00 5c e3                                      cmp ip, #0
0041fe60  a3 3f 83 10                                      addne r3, r3, r3, lsr #31
0041fe64  c3 c0 a0 11                                      asrne ip, r3, #1
0041fe68  00 10 a0 e3                                      mov r1, #0
0041fe6c  18 c0 80 e5                                      str ip, [r0, #0x18]
0041fe70  30 00 bd e8                                      pop {r4, r5}
0041fe74  e1 fe ff ea                                      b #0x41fa00
0041fe78  00 00 5c e3                                      cmp ip, #0
0041fe7c  02 c0 a0 13                                      movne ip, #2
0041fe80  f8 ff ff ea                                      b #0x41fe68
