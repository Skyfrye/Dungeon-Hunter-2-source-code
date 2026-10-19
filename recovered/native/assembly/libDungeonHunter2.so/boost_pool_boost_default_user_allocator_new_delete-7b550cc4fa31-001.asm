; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005a2c2c, declared_size=424, range_size=424, mode=arm
; class-group: boost::pool<boost::default_user_allocator_new_delete>
; alias: _ZN5boost4poolINS_33default_user_allocator_new_deleteEE26ordered_malloc_need_resizeEv
; demangled: boost::pool<boost::default_user_allocator_new_delete>::ordered_malloc_need_resize()
; decoder-mode: arm
005a2c2c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005a2c30  94 51 9f e5                                      ldr r5, [pc, #0x194]
005a2c34  0c 70 90 e5                                      ldr r7, [r0, #0xc]
005a2c38  00 60 a0 e1                                      mov r6, r0
005a2c3c  04 40 a0 e3                                      mov r4, #4
005a2c40  07 00 a0 e1                                      mov r0, r7
005a2c44  05 50 8f e0                                      add r5, pc, r5
005a2c48  04 10 a0 e1                                      mov r1, r4
005a2c4c  b6 af f5 eb                                      bl #0x30eb2c
005a2c50  04 30 a0 e1                                      mov r3, r4
005a2c54  00 40 51 e2                                      subs r4, r1, #0
005a2c58  03 00 a0 e1                                      mov r0, r3
005a2c5c  f9 ff ff 1a                                      bne #0x5a2c48
005a2c60  03 10 a0 e1                                      mov r1, r3
005a2c64  07 00 a0 e1                                      mov r0, r7
005a2c68  f7 af f5 eb                                      bl #0x30ec4c
005a2c6c  10 a0 96 e5                                      ldr sl, [r6, #0x10]
005a2c70  00 71 a0 e1                                      lsl r7, r0, #2
005a2c74  54 31 9f e5                                      ldr r3, [pc, #0x154]
005a2c78  9a 07 0a e0                                      mul sl, sl, r7
005a2c7c  03 10 95 e7                                      ldr r1, [r5, r3]
005a2c80  08 80 8a e2                                      add r8, sl, #8
005a2c84  08 00 a0 e1                                      mov r0, r8
005a2c88  62 af f5 eb                                      bl #0x30ea18
005a2c8c  00 50 50 e2                                      subs r5, r0, #0
005a2c90  4b 00 00 0a                                      beq #0x5a2dc4
005a2c94  10 30 96 e5                                      ldr r3, [r6, #0x10]
005a2c98  0a 00 67 e0                                      rsb r0, r7, sl
005a2c9c  07 10 a0 e1                                      mov r1, r7
005a2ca0  83 30 a0 e1                                      lsl r3, r3, #1
005a2ca4  10 30 86 e5                                      str r3, [r6, #0x10]
005a2ca8  e7 af f5 eb                                      bl #0x30ec4c
005a2cac  97 00 00 e0                                      mul r0, r7, r0
005a2cb0  00 30 96 e5                                      ldr r3, [r6]
005a2cb4  00 c0 85 e0                                      add ip, r5, r0
005a2cb8  0c 00 55 e1                                      cmp r5, ip
005a2cbc  00 30 85 e7                                      str r3, [r5, r0]
005a2cc0  12 00 00 0a                                      beq #0x5a2d10
005a2cc4  00 70 67 e2                                      rsb r7, r7, #0
005a2cc8  07 20 8c e0                                      add r2, ip, r7
005a2ccc  02 00 55 e1                                      cmp r5, r2
005a2cd0  05 00 a0 01                                      moveq r0, r5
005a2cd4  0c 00 00 0a                                      beq #0x5a2d0c
005a2cd8  07 30 82 e0                                      add r3, r2, r7
005a2cdc  03 10 a0 e1                                      mov r1, r3
005a2ce0  02 00 00 ea                                      b #0x5a2cf0
005a2ce4  02 c0 a0 e1                                      mov ip, r2
005a2ce8  03 20 a0 e1                                      mov r2, r3
005a2cec  07 30 83 e0                                      add r3, r3, r7
005a2cf0  07 10 81 e0                                      add r1, r1, r7
005a2cf4  01 00 67 e0                                      rsb r0, r7, r1
005a2cf8  00 00 55 e1                                      cmp r5, r0
005a2cfc  00 c0 82 e5                                      str ip, [r2]
005a2d00  03 00 a0 e1                                      mov r0, r3
005a2d04  f6 ff ff 1a                                      bne #0x5a2ce4
005a2d08  02 c0 a0 e1                                      mov ip, r2
005a2d0c  00 c0 80 e5                                      str ip, [r0]
005a2d10  04 30 96 e5                                      ldr r3, [r6, #4]
005a2d14  00 50 86 e5                                      str r5, [r6]
005a2d18  00 00 53 e3                                      cmp r3, #0
005a2d1c  1e 00 00 0a                                      beq #0x5a2d9c
005a2d20  03 00 55 e1                                      cmp r5, r3
005a2d24  1c 00 00 3a                                      blo #0x5a2d9c
005a2d28  08 20 96 e5                                      ldr r2, [r6, #8]
005a2d2c  04 20 42 e2                                      sub r2, r2, #4
005a2d30  02 20 83 e0                                      add r2, r3, r2
005a2d34  04 30 12 e5                                      ldr r3, [r2, #-4]
005a2d38  04 10 42 e2                                      sub r1, r2, #4
005a2d3c  00 00 53 e3                                      cmp r3, #0
005a2d40  0a 00 00 0a                                      beq #0x5a2d70
005a2d44  03 00 55 e1                                      cmp r5, r3
005a2d48  08 00 00 3a                                      blo #0x5a2d70
005a2d4c  00 20 92 e5                                      ldr r2, [r2]
005a2d50  04 20 42 e2                                      sub r2, r2, #4
005a2d54  02 20 83 e0                                      add r2, r3, r2
005a2d58  04 30 12 e5                                      ldr r3, [r2, #-4]
005a2d5c  04 10 42 e2                                      sub r1, r2, #4
005a2d60  00 00 53 e3                                      cmp r3, #0
005a2d64  01 00 00 0a                                      beq #0x5a2d70
005a2d68  05 00 53 e1                                      cmp r3, r5
005a2d6c  f6 ff ff 9a                                      bls #0x5a2d4c
005a2d70  00 c0 92 e5                                      ldr ip, [r2]
005a2d74  04 00 48 e2                                      sub r0, r8, #4
005a2d78  00 40 85 e0                                      add r4, r5, r0
005a2d7c  04 30 04 e5                                      str r3, [r4, #-4]
005a2d80  00 c0 85 e7                                      str ip, [r5, r0]
005a2d84  00 50 81 e5                                      str r5, [r1]
005a2d88  00 80 82 e5                                      str r8, [r2]
005a2d8c  00 00 96 e5                                      ldr r0, [r6]
005a2d90  00 30 90 e5                                      ldr r3, [r0]
005a2d94  00 30 86 e5                                      str r3, [r6]
005a2d98  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a2d9c  04 20 48 e2                                      sub r2, r8, #4
005a2da0  02 10 85 e0                                      add r1, r5, r2
005a2da4  04 30 01 e5                                      str r3, [r1, #-4]
005a2da8  08 30 96 e5                                      ldr r3, [r6, #8]
005a2dac  02 30 85 e7                                      str r3, [r5, r2]
005a2db0  00 00 96 e5                                      ldr r0, [r6]
005a2db4  20 01 86 e9                                      stmib r6, {r5, r8}
005a2db8  00 30 90 e5                                      ldr r3, [r0]
005a2dbc  00 30 86 e5                                      str r3, [r6]
005a2dc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005a2dc4  04 00 a0 e1                                      mov r0, r4
005a2dc8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
005a2dcc  4c 1e 3f 00 04 47 00 00                          .byte 0x4c, 0x1e, 0x3f, 0x00, 0x04, 0x47, 0x00, 0x00
