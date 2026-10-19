; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00455cc0, declared_size=696, range_size=696, mode=arm
; class-group: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >
; alias: _ZNSt6vectorIN13ScriptManager10ScriptCmdsESaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >::_M_fill_insert_aux(ScriptManager::ScriptCmds*, unsigned int, ScriptManager::ScriptCmds const&, std::__false_type const&)
; decoder-mode: arm
00455cc0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00455cc4  00 40 90 e5                                      ldr r4, [r0]
00455cc8  18 d0 4d e2                                      sub sp, sp, #0x18
00455ccc  00 c0 a0 e1                                      mov ip, r0
00455cd0  04 00 53 e1                                      cmp r3, r4
00455cd4  01 50 a0 e1                                      mov r5, r1
00455cd8  02 40 a0 e1                                      mov r4, r2
00455cdc  04 60 90 35                                      ldrlo r6, [r0, #4]
00455ce0  10 00 00 3a                                      blo #0x455d28
00455ce4  04 60 90 e5                                      ldr r6, [r0, #4]
00455ce8  06 00 53 e1                                      cmp r3, r6
00455cec  0d 00 00 2a                                      bhs #0x455d28
00455cf0  03 c0 a0 e1                                      mov ip, r3
00455cf4  04 50 9c e4                                      ldr r5, [ip], #4
00455cf8  04 40 93 e5                                      ldr r4, [r3, #4]
00455cfc  18 30 8d e2                                      add r3, sp, #0x18
00455d00  04 e0 9c e5                                      ldr lr, [ip, #4]
00455d04  0c c0 8d e2                                      add ip, sp, #0xc
00455d08  04 40 8c e4                                      str r4, [ip], #4
00455d0c  00 e0 8c e5                                      str lr, [ip]
00455d10  10 50 23 e5                                      str r5, [r3, #-0x10]!
00455d14  14 c0 8d e2                                      add ip, sp, #0x14
00455d18  00 c0 8d e5                                      str ip, [sp]
00455d1c  e7 ff ff eb                                      bl #0x455cc0
00455d20  18 d0 8d e2                                      add sp, sp, #0x18
00455d24  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00455d28  06 20 65 e0                                      rsb r2, r5, r6
00455d2c  42 21 a0 e1                                      asr r2, r2, #2
00455d30  02 71 82 e0                                      add r7, r2, r2, lsl #2
00455d34  07 72 87 e0                                      add r7, r7, r7, lsl #4
00455d38  07 74 87 e0                                      add r7, r7, r7, lsl #8
00455d3c  07 78 87 e0                                      add r7, r7, r7, lsl #16
00455d40  87 70 82 e0                                      add r7, r2, r7, lsl #1
00455d44  07 00 54 e1                                      cmp r4, r7
00455d48  47 00 00 2a                                      bhs #0x455e6c
00455d4c  0c 20 a0 e3                                      mov r2, #0xc
00455d50  92 04 04 e0                                      mul r4, r2, r4
00455d54  44 21 a0 e1                                      asr r2, r4, #2
00455d58  06 80 64 e0                                      rsb r8, r4, r6
00455d5c  02 71 82 e0                                      add r7, r2, r2, lsl #2
00455d60  07 72 87 e0                                      add r7, r7, r7, lsl #4
00455d64  07 74 87 e0                                      add r7, r7, r7, lsl #8
00455d68  07 78 87 e0                                      add r7, r7, r7, lsl #16
00455d6c  87 70 82 e0                                      add r7, r2, r7, lsl #1
00455d70  00 00 57 e3                                      cmp r7, #0
00455d74  06 00 a0 d1                                      movle r0, r6
00455d78  0e 00 00 da                                      ble #0x455db8
00455d7c  00 20 a0 e3                                      mov r2, #0
00455d80  02 10 98 e7                                      ldr r1, [r8, r2]
00455d84  02 00 88 e0                                      add r0, r8, r2
00455d88  04 00 80 e2                                      add r0, r0, #4
00455d8c  02 10 86 e7                                      str r1, [r6, r2]
00455d90  04 a0 90 e4                                      ldr sl, [r0], #4
00455d94  02 10 86 e0                                      add r1, r6, r2
00455d98  04 10 81 e2                                      add r1, r1, #4
00455d9c  04 a0 81 e4                                      str sl, [r1], #4
00455da0  00 00 90 e5                                      ldr r0, [r0]
00455da4  01 70 57 e2                                      subs r7, r7, #1
00455da8  0c 20 82 e2                                      add r2, r2, #0xc
00455dac  00 00 81 e5                                      str r0, [r1]
00455db0  f2 ff ff 1a                                      bne #0x455d80
00455db4  04 00 9c e5                                      ldr r0, [ip, #4]
00455db8  08 20 65 e0                                      rsb r2, r5, r8
00455dbc  42 21 a0 e1                                      asr r2, r2, #2
00455dc0  04 00 80 e0                                      add r0, r0, r4
00455dc4  02 11 82 e0                                      add r1, r2, r2, lsl #2
00455dc8  04 00 8c e5                                      str r0, [ip, #4]
00455dcc  01 12 81 e0                                      add r1, r1, r1, lsl #4
00455dd0  01 14 81 e0                                      add r1, r1, r1, lsl #8
00455dd4  01 18 81 e0                                      add r1, r1, r1, lsl #16
00455dd8  81 10 82 e0                                      add r1, r2, r1, lsl #1
00455ddc  00 00 51 e3                                      cmp r1, #0
00455de0  0a 00 00 da                                      ble #0x455e10
00455de4  08 20 a0 e1                                      mov r2, r8
00455de8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
00455dec  01 10 51 e2                                      subs r1, r1, #1
00455df0  0c 00 06 e5                                      str r0, [r6, #-0xc]
00455df4  08 00 12 e5                                      ldr r0, [r2, #-8]
00455df8  08 00 06 e5                                      str r0, [r6, #-8]
00455dfc  04 00 12 e5                                      ldr r0, [r2, #-4]
00455e00  0c 20 42 e2                                      sub r2, r2, #0xc
00455e04  04 00 06 e5                                      str r0, [r6, #-4]
00455e08  0c 60 46 e2                                      sub r6, r6, #0xc
00455e0c  f5 ff ff 1a                                      bne #0x455de8
00455e10  44 41 a0 e1                                      asr r4, r4, #2
00455e14  04 21 84 e0                                      add r2, r4, r4, lsl #2
00455e18  02 22 82 e0                                      add r2, r2, r2, lsl #4
00455e1c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00455e20  02 28 82 e0                                      add r2, r2, r2, lsl #16
00455e24  82 40 84 e0                                      add r4, r4, r2, lsl #1
00455e28  00 00 54 e3                                      cmp r4, #0
00455e2c  bb ff ff da                                      ble #0x455d20
00455e30  04 00 83 e2                                      add r0, r3, #4
00455e34  00 10 a0 e3                                      mov r1, #0
00455e38  04 60 80 e2                                      add r6, r0, #4
00455e3c  00 c0 93 e5                                      ldr ip, [r3]
00455e40  01 20 85 e0                                      add r2, r5, r1
00455e44  04 20 82 e2                                      add r2, r2, #4
00455e48  01 c0 85 e7                                      str ip, [r5, r1]
00455e4c  00 c0 90 e5                                      ldr ip, [r0]
00455e50  01 40 54 e2                                      subs r4, r4, #1
00455e54  0c 10 81 e2                                      add r1, r1, #0xc
00455e58  04 c0 82 e4                                      str ip, [r2], #4
00455e5c  00 c0 96 e5                                      ldr ip, [r6]
00455e60  00 c0 82 e5                                      str ip, [r2]
00455e64  f4 ff ff 1a                                      bne #0x455e3c
00455e68  ac ff ff ea                                      b #0x455d20
00455e6c  0c 20 a0 e3                                      mov r2, #0xc
00455e70  04 40 67 e0                                      rsb r4, r7, r4
00455e74  92 64 24 e0                                      mla r4, r2, r4, r6
00455e78  04 20 66 e0                                      rsb r2, r6, r4
00455e7c  42 21 a0 e1                                      asr r2, r2, #2
00455e80  02 81 82 e0                                      add r8, r2, r2, lsl #2
00455e84  08 82 88 e0                                      add r8, r8, r8, lsl #4
00455e88  08 84 88 e0                                      add r8, r8, r8, lsl #8
00455e8c  08 88 88 e0                                      add r8, r8, r8, lsl #16
00455e90  88 80 82 e0                                      add r8, r2, r8, lsl #1
00455e94  00 00 58 e3                                      cmp r8, #0
00455e98  0d 00 00 da                                      ble #0x455ed4
00455e9c  04 00 83 e2                                      add r0, r3, #4
00455ea0  00 10 a0 e3                                      mov r1, #0
00455ea4  04 90 80 e2                                      add sb, r0, #4
00455ea8  00 a0 93 e5                                      ldr sl, [r3]
00455eac  01 20 86 e0                                      add r2, r6, r1
00455eb0  04 20 82 e2                                      add r2, r2, #4
00455eb4  01 a0 86 e7                                      str sl, [r6, r1]
00455eb8  00 a0 90 e5                                      ldr sl, [r0]
00455ebc  01 80 58 e2                                      subs r8, r8, #1
00455ec0  0c 10 81 e2                                      add r1, r1, #0xc
00455ec4  04 a0 82 e4                                      str sl, [r2], #4
00455ec8  00 a0 99 e5                                      ldr sl, [sb]
00455ecc  00 a0 82 e5                                      str sl, [r2]
00455ed0  f4 ff ff 1a                                      bne #0x455ea8
00455ed4  00 00 57 e3                                      cmp r7, #0
00455ed8  04 40 8c e5                                      str r4, [ip, #4]
00455edc  21 00 00 da                                      ble #0x455f68
00455ee0  07 60 a0 e1                                      mov r6, r7
00455ee4  00 20 a0 e3                                      mov r2, #0
00455ee8  02 10 95 e7                                      ldr r1, [r5, r2]
00455eec  02 00 85 e0                                      add r0, r5, r2
00455ef0  04 00 80 e2                                      add r0, r0, #4
00455ef4  02 10 84 e7                                      str r1, [r4, r2]
00455ef8  04 80 90 e4                                      ldr r8, [r0], #4
00455efc  02 10 84 e0                                      add r1, r4, r2
00455f00  04 10 81 e2                                      add r1, r1, #4
00455f04  04 80 81 e4                                      str r8, [r1], #4
00455f08  00 00 90 e5                                      ldr r0, [r0]
00455f0c  01 60 56 e2                                      subs r6, r6, #1
00455f10  0c 20 82 e2                                      add r2, r2, #0xc
00455f14  00 00 81 e5                                      str r0, [r1]
00455f18  f2 ff ff 1a                                      bne #0x455ee8
00455f1c  04 20 9c e5                                      ldr r2, [ip, #4]
00455f20  0c 10 a0 e3                                      mov r1, #0xc
00455f24  04 00 83 e2                                      add r0, r3, #4
00455f28  91 27 22 e0                                      mla r2, r1, r7, r2
00455f2c  04 40 80 e2                                      add r4, r0, #4
00455f30  06 10 a0 e1                                      mov r1, r6
00455f34  04 20 8c e5                                      str r2, [ip, #4]
00455f38  00 c0 93 e5                                      ldr ip, [r3]
00455f3c  01 20 85 e0                                      add r2, r5, r1
00455f40  04 20 82 e2                                      add r2, r2, #4
00455f44  01 c0 85 e7                                      str ip, [r5, r1]
00455f48  00 c0 90 e5                                      ldr ip, [r0]
00455f4c  01 70 57 e2                                      subs r7, r7, #1
00455f50  0c 10 81 e2                                      add r1, r1, #0xc
00455f54  04 c0 82 e4                                      str ip, [r2], #4
00455f58  00 c0 94 e5                                      ldr ip, [r4]
00455f5c  00 c0 82 e5                                      str ip, [r2]
00455f60  f4 ff ff 1a                                      bne #0x455f38
00455f64  6d ff ff ea                                      b #0x455d20
00455f68  0c 30 a0 e3                                      mov r3, #0xc
00455f6c  93 47 24 e0                                      mla r4, r3, r7, r4
00455f70  04 40 8c e5                                      str r4, [ip, #4]
00455f74  69 ff ff ea                                      b #0x455d20

; FUNCTION 0x00458f34, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >
; alias: _ZNSt6vectorIN13ScriptManager10ScriptCmdsESaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00458f34  70 40 2d e9                                      push {r4, r5, r6, lr}
00458f38  14 00 90 e8                                      ldm r0, {r2, r4}
00458f3c  55 35 05 e3                                      movw r3, #0x5555
00458f40  55 35 41 e3                                      movt r3, #0x1555
00458f44  04 20 62 e0                                      rsb r2, r2, r4
00458f48  42 21 a0 e1                                      asr r2, r2, #2
00458f4c  01 50 a0 e1                                      mov r5, r1
00458f50  02 41 82 e0                                      add r4, r2, r2, lsl #2
00458f54  04 42 84 e0                                      add r4, r4, r4, lsl #4
00458f58  04 44 84 e0                                      add r4, r4, r4, lsl #8
00458f5c  04 48 84 e0                                      add r4, r4, r4, lsl #16
00458f60  84 40 82 e0                                      add r4, r2, r4, lsl #1
00458f64  03 30 64 e0                                      rsb r3, r4, r3
00458f68  01 00 53 e1                                      cmp r3, r1
00458f6c  0b 00 00 3a                                      blo #0x458fa0
00458f70  55 35 05 e3                                      movw r3, #0x5555
00458f74  05 00 54 e1                                      cmp r4, r5
00458f78  04 00 84 20                                      addhs r0, r4, r4
00458f7c  05 00 84 30                                      addlo r0, r4, r5
00458f80  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00458f84  03 00 50 e1                                      cmp r0, r3
00458f88  01 00 00 8a                                      bhi #0x458f94
00458f8c  04 00 50 e1                                      cmp r0, r4
00458f90  01 00 00 2a                                      bhs #0x458f9c
00458f94  55 05 05 e3                                      movw r0, #0x5555
00458f98  00 07 80 e1                                      orr r0, r0, r0, lsl #14
00458f9c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00458fa0  08 00 9f e5                                      ldr r0, [pc, #8]
00458fa4  00 00 8f e0                                      add r0, pc, r0
00458fa8  a4 bf 0a eb                                      bl #0x708e40
00458fac  ef ff ff ea                                      b #0x458f70
; mapping-symbol data/literal pool
00458fb0  c4 54 46 00                                      .byte 0xc4, 0x54, 0x46, 0x00

; FUNCTION 0x0045a7c8, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >
; alias: _ZNSt6vectorIN13ScriptManager10ScriptCmdsESaIS1_EED1Ev
; demangled: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >::~vector()
; decoder-mode: arm
0045a7c8  10 40 2d e9                                      push {r4, lr}
0045a7cc  00 40 a0 e1                                      mov r4, r0
0045a7d0  00 00 90 e5                                      ldr r0, [r0]
0045a7d4  00 00 50 e3                                      cmp r0, #0
0045a7d8  0c 00 00 0a                                      beq #0x45a810
0045a7dc  08 30 94 e5                                      ldr r3, [r4, #8]
0045a7e0  03 30 60 e0                                      rsb r3, r0, r3
0045a7e4  43 31 a0 e1                                      asr r3, r3, #2
0045a7e8  03 11 83 e0                                      add r1, r3, r3, lsl #2
0045a7ec  01 12 81 e0                                      add r1, r1, r1, lsl #4
0045a7f0  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045a7f4  01 18 81 e0                                      add r1, r1, r1, lsl #16
0045a7f8  81 30 83 e0                                      add r3, r3, r1, lsl #1
0045a7fc  0c 10 a0 e3                                      mov r1, #0xc
0045a800  91 03 01 e0                                      mul r1, r1, r3
0045a804  80 00 51 e3                                      cmp r1, #0x80
0045a808  02 00 00 8a                                      bhi #0x45a818
0045a80c  bb b9 0a eb                                      bl #0x708f00
0045a810  04 00 a0 e1                                      mov r0, r4
0045a814  10 80 bd e8                                      pop {r4, pc}
0045a818  08 d7 fa eb                                      bl #0x310440
0045a81c  04 00 a0 e1                                      mov r0, r4
0045a820  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0045af64, declared_size=676, range_size=676, mode=arm
; class-group: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >
; alias: _ZNSt6vectorIN13ScriptManager10ScriptCmdsESaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >::_M_fill_insert(ScriptManager::ScriptCmds*, unsigned int, ScriptManager::ScriptCmds const&)
; decoder-mode: arm
0045af64  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0045af68  00 70 52 e2                                      subs r7, r2, #0
0045af6c  10 d0 4d e2                                      sub sp, sp, #0x10
0045af70  00 50 a0 e1                                      mov r5, r0
0045af74  01 40 a0 e1                                      mov r4, r1
0045af78  03 60 a0 e1                                      mov r6, r3
0045af7c  8a 00 00 0a                                      beq #0x45b1ac
0045af80  00 50 90 e9                                      ldmib r0, {ip, lr}
0045af84  0e c0 6c e0                                      rsb ip, ip, lr
0045af88  4c c1 a0 e1                                      asr ip, ip, #2
0045af8c  0c e1 8c e0                                      add lr, ip, ip, lsl #2
0045af90  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0045af94  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0045af98  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0045af9c  8e c0 8c e0                                      add ip, ip, lr, lsl #1
0045afa0  0c 00 57 e1                                      cmp r7, ip
0045afa4  82 00 00 9a                                      bls #0x45b1b4
0045afa8  07 10 a0 e1                                      mov r1, r7
0045afac  e0 f7 ff eb                                      bl #0x458f34
0045afb0  10 20 8d e2                                      add r2, sp, #0x10
0045afb4  00 10 a0 e1                                      mov r1, r0
0045afb8  08 00 22 e5                                      str r0, [r2, #-8]!
0045afbc  08 00 85 e2                                      add r0, r5, #8
0045afc0  aa fd ff eb                                      bl #0x45a670
0045afc4  00 c0 95 e5                                      ldr ip, [r5]
0045afc8  00 80 a0 e1                                      mov r8, r0
0045afcc  04 30 6c e0                                      rsb r3, ip, r4
0045afd0  43 31 a0 e1                                      asr r3, r3, #2
0045afd4  03 a1 83 e0                                      add sl, r3, r3, lsl #2
0045afd8  0a a2 8a e0                                      add sl, sl, sl, lsl #4
0045afdc  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0045afe0  0a a8 8a e0                                      add sl, sl, sl, lsl #16
0045afe4  8a a0 83 e0                                      add sl, r3, sl, lsl #1
0045afe8  00 00 5a e3                                      cmp sl, #0
0045afec  00 a0 a0 d1                                      movle sl, r0
0045aff0  10 00 00 da                                      ble #0x45b038
0045aff4  0a 00 a0 e1                                      mov r0, sl
0045aff8  00 30 a0 e3                                      mov r3, #0
0045affc  03 20 9c e7                                      ldr r2, [ip, r3]
0045b000  03 10 8c e0                                      add r1, ip, r3
0045b004  04 10 81 e2                                      add r1, r1, #4
0045b008  03 20 88 e7                                      str r2, [r8, r3]
0045b00c  04 90 91 e4                                      ldr sb, [r1], #4
0045b010  03 20 88 e0                                      add r2, r8, r3
0045b014  04 20 82 e2                                      add r2, r2, #4
0045b018  04 90 82 e4                                      str sb, [r2], #4
0045b01c  00 10 91 e5                                      ldr r1, [r1]
0045b020  01 00 50 e2                                      subs r0, r0, #1
0045b024  0c 30 83 e2                                      add r3, r3, #0xc
0045b028  00 10 82 e5                                      str r1, [r2]
0045b02c  f2 ff ff 1a                                      bne #0x45affc
0045b030  0c 30 a0 e3                                      mov r3, #0xc
0045b034  93 8a 2a e0                                      mla sl, r3, sl, r8
0045b038  01 00 57 e3                                      cmp r7, #1
0045b03c  67 00 00 0a                                      beq #0x45b1e0
0045b040  0c 30 a0 e3                                      mov r3, #0xc
0045b044  93 a7 27 e0                                      mla r7, r3, r7, sl
0045b048  07 30 6a e0                                      rsb r3, sl, r7
0045b04c  43 31 a0 e1                                      asr r3, r3, #2
0045b050  03 11 83 e0                                      add r1, r3, r3, lsl #2
0045b054  01 12 81 e0                                      add r1, r1, r1, lsl #4
0045b058  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045b05c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0045b060  81 10 83 e0                                      add r1, r3, r1, lsl #1
0045b064  00 00 51 e3                                      cmp r1, #0
0045b068  0d 00 00 da                                      ble #0x45b0a4
0045b06c  04 c0 86 e2                                      add ip, r6, #4
0045b070  00 20 a0 e3                                      mov r2, #0
0045b074  04 90 8c e2                                      add sb, ip, #4
0045b078  00 00 96 e5                                      ldr r0, [r6]
0045b07c  02 30 8a e0                                      add r3, sl, r2
0045b080  04 30 83 e2                                      add r3, r3, #4
0045b084  02 00 8a e7                                      str r0, [sl, r2]
0045b088  00 00 9c e5                                      ldr r0, [ip]
0045b08c  01 10 51 e2                                      subs r1, r1, #1
0045b090  0c 20 82 e2                                      add r2, r2, #0xc
0045b094  04 00 83 e4                                      str r0, [r3], #4
0045b098  00 00 99 e5                                      ldr r0, [sb]
0045b09c  00 00 83 e5                                      str r0, [r3]
0045b0a0  f4 ff ff 1a                                      bne #0x45b078
0045b0a4  04 30 95 e5                                      ldr r3, [r5, #4]
0045b0a8  03 20 64 e0                                      rsb r2, r4, r3
0045b0ac  42 21 a0 e1                                      asr r2, r2, #2
0045b0b0  02 61 82 e0                                      add r6, r2, r2, lsl #2
0045b0b4  06 62 86 e0                                      add r6, r6, r6, lsl #4
0045b0b8  06 64 86 e0                                      add r6, r6, r6, lsl #8
0045b0bc  06 68 86 e0                                      add r6, r6, r6, lsl #16
0045b0c0  86 60 82 e0                                      add r6, r2, r6, lsl #1
0045b0c4  00 00 56 e3                                      cmp r6, #0
0045b0c8  11 00 00 da                                      ble #0x45b114
0045b0cc  06 00 a0 e1                                      mov r0, r6
0045b0d0  00 30 a0 e3                                      mov r3, #0
0045b0d4  03 20 94 e7                                      ldr r2, [r4, r3]
0045b0d8  03 10 84 e0                                      add r1, r4, r3
0045b0dc  04 10 81 e2                                      add r1, r1, #4
0045b0e0  03 20 87 e7                                      str r2, [r7, r3]
0045b0e4  04 c0 91 e4                                      ldr ip, [r1], #4
0045b0e8  03 20 87 e0                                      add r2, r7, r3
0045b0ec  04 20 82 e2                                      add r2, r2, #4
0045b0f0  04 c0 82 e4                                      str ip, [r2], #4
0045b0f4  00 10 91 e5                                      ldr r1, [r1]
0045b0f8  01 00 50 e2                                      subs r0, r0, #1
0045b0fc  0c 30 83 e2                                      add r3, r3, #0xc
0045b100  00 10 82 e5                                      str r1, [r2]
0045b104  f2 ff ff 1a                                      bne #0x45b0d4
0045b108  0c 30 a0 e3                                      mov r3, #0xc
0045b10c  93 76 27 e0                                      mla r7, r3, r6, r7
0045b110  04 30 95 e5                                      ldr r3, [r5, #4]
0045b114  00 00 95 e5                                      ldr r0, [r5]
0045b118  03 00 50 e1                                      cmp r0, r3
0045b11c  0e 00 00 0a                                      beq #0x45b15c
0045b120  0c 20 43 e2                                      sub r2, r3, #0xc
0045b124  02 20 60 e0                                      rsb r2, r0, r2
0045b128  22 21 a0 e1                                      lsr r2, r2, #2
0045b12c  02 11 82 e0                                      add r1, r2, r2, lsl #2
0045b130  81 12 81 e0                                      add r1, r1, r1, lsl #5
0045b134  81 10 82 e0                                      add r1, r2, r1, lsl #1
0045b138  81 12 81 e0                                      add r1, r1, r1, lsl #5
0045b13c  81 c7 a0 e1                                      lsl ip, r1, #0xf
0045b140  0c 10 61 e0                                      rsb r1, r1, ip
0045b144  81 20 82 e0                                      add r2, r2, r1, lsl #1
0045b148  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0045b14c  0b 10 e0 e3                                      mvn r1, #0xb
0045b150  91 02 02 e0                                      mul r2, r1, r2
0045b154  01 20 82 e0                                      add r2, r2, r1
0045b158  02 30 83 e0                                      add r3, r3, r2
0045b15c  00 00 53 e3                                      cmp r3, #0
0045b160  08 20 95 e5                                      ldr r2, [r5, #8]
0045b164  0b 00 00 0a                                      beq #0x45b198
0045b168  02 30 63 e0                                      rsb r3, r3, r2
0045b16c  43 31 a0 e1                                      asr r3, r3, #2
0045b170  03 11 83 e0                                      add r1, r3, r3, lsl #2
0045b174  01 12 81 e0                                      add r1, r1, r1, lsl #4
0045b178  01 14 81 e0                                      add r1, r1, r1, lsl #8
0045b17c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0045b180  81 30 83 e0                                      add r3, r3, r1, lsl #1
0045b184  0c 10 a0 e3                                      mov r1, #0xc
0045b188  91 03 01 e0                                      mul r1, r1, r3
0045b18c  80 00 51 e3                                      cmp r1, #0x80
0045b190  0b 00 00 8a                                      bhi #0x45b1c4
0045b194  59 b7 0a eb                                      bl #0x708f00
0045b198  08 30 9d e5                                      ldr r3, [sp, #8]
0045b19c  0c 20 a0 e3                                      mov r2, #0xc
0045b1a0  00 80 85 e5                                      str r8, [r5]
0045b1a4  92 83 28 e0                                      mla r8, r2, r3, r8
0045b1a8  80 01 85 e9                                      stmib r5, {r7, r8}
0045b1ac  10 d0 8d e2                                      add sp, sp, #0x10
0045b1b0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0045b1b4  0c c0 8d e2                                      add ip, sp, #0xc
0045b1b8  00 c0 8d e5                                      str ip, [sp]
0045b1bc  bf ea ff eb                                      bl #0x455cc0
0045b1c0  f9 ff ff ea                                      b #0x45b1ac
0045b1c4  9d d4 fa eb                                      bl #0x310440
0045b1c8  08 30 9d e5                                      ldr r3, [sp, #8]
0045b1cc  0c 20 a0 e3                                      mov r2, #0xc
0045b1d0  00 80 85 e5                                      str r8, [r5]
0045b1d4  92 83 28 e0                                      mla r8, r2, r3, r8
0045b1d8  80 01 85 e9                                      stmib r5, {r7, r8}
0045b1dc  f2 ff ff ea                                      b #0x45b1ac
0045b1e0  06 20 a0 e1                                      mov r2, r6
0045b1e4  04 10 92 e4                                      ldr r1, [r2], #4
0045b1e8  0a 30 a0 e1                                      mov r3, sl
0045b1ec  0c 70 8a e2                                      add r7, sl, #0xc
0045b1f0  04 10 83 e4                                      str r1, [r3], #4
0045b1f4  04 10 96 e5                                      ldr r1, [r6, #4]
0045b1f8  04 10 8a e5                                      str r1, [sl, #4]
0045b1fc  04 20 92 e5                                      ldr r2, [r2, #4]
0045b200  04 20 83 e5                                      str r2, [r3, #4]
0045b204  a6 ff ff ea                                      b #0x45b0a4

; FUNCTION 0x0045b208, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >
; alias: _ZNSt6vectorIN13ScriptManager10ScriptCmdsESaIS1_EE6resizeEjRKS1_
; demangled: std::vector<ScriptManager::ScriptCmds, std::allocator<ScriptManager::ScriptCmds> >::resize(unsigned int, ScriptManager::ScriptCmds const&)
; decoder-mode: arm
0045b208  70 00 2d e9                                      push {r4, r5, r6}
0045b20c  04 40 90 e5                                      ldr r4, [r0, #4]
0045b210  00 50 90 e5                                      ldr r5, [r0]
0045b214  02 30 a0 e1                                      mov r3, r2
0045b218  04 20 65 e0                                      rsb r2, r5, r4
0045b21c  42 21 a0 e1                                      asr r2, r2, #2
0045b220  02 61 82 e0                                      add r6, r2, r2, lsl #2
0045b224  06 62 86 e0                                      add r6, r6, r6, lsl #4
0045b228  06 64 86 e0                                      add r6, r6, r6, lsl #8
0045b22c  06 68 86 e0                                      add r6, r6, r6, lsl #16
0045b230  86 20 82 e0                                      add r2, r2, r6, lsl #1
0045b234  02 00 51 e1                                      cmp r1, r2
0045b238  05 00 00 2a                                      bhs #0x45b254
0045b23c  0c 30 a0 e3                                      mov r3, #0xc
0045b240  93 51 25 e0                                      mla r5, r3, r1, r5
0045b244  04 00 55 e1                                      cmp r5, r4
0045b248  04 50 80 15                                      strne r5, [r0, #4]
0045b24c  70 00 bd e8                                      pop {r4, r5, r6}
0045b250  1e ff 2f e1                                      bx lr
0045b254  01 20 62 e0                                      rsb r2, r2, r1
0045b258  04 10 a0 e1                                      mov r1, r4
0045b25c  70 00 bd e8                                      pop {r4, r5, r6}
0045b260  3f ff ff ea                                      b #0x45af64
