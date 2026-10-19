; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x004699a0, declared_size=376, range_size=376, mode=arm
; class-group: void std::bitset<64u>
; alias: _ZNKSt6bitsetILj64EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRSbIT_T0_T1_E
; demangled: void std::bitset<64u>::_M_copy_to_string<char, std::char_traits<char>, std::allocator<char> >(std::basic_string<char, std::char_traits<char>, std::allocator<char> >&) const
; decoder-mode: arm
004699a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
004699a4  64 61 9f e5                                      ldr r6, [pc, #0x164]
004699a8  64 71 9f e5                                      ldr r7, [pc, #0x164]
004699ac  01 50 a0 e1                                      mov r5, r1
004699b0  06 60 8f e0                                      add r6, pc, r6
004699b4  07 10 96 e7                                      ldr r1, [r6, r7]
004699b8  14 30 95 e5                                      ldr r3, [r5, #0x14]
004699bc  10 20 95 e5                                      ldr r2, [r5, #0x10]
004699c0  00 10 91 e5                                      ldr r1, [r1]
004699c4  20 d0 4d e2                                      sub sp, sp, #0x20
004699c8  02 20 63 e0                                      rsb r2, r3, r2
004699cc  3f 00 52 e3                                      cmp r2, #0x3f
004699d0  00 40 a0 e1                                      mov r4, r0
004699d4  1c 10 8d e5                                      str r1, [sp, #0x1c]
004699d8  30 00 00 8a                                      bhi #0x469aa0
004699dc  05 00 53 e1                                      cmp r3, r5
004699e0  04 00 00 0a                                      beq #0x4699f8
004699e4  00 10 95 e5                                      ldr r1, [r5]
004699e8  01 10 63 e0                                      rsb r1, r3, r1
004699ec  01 10 41 e2                                      sub r1, r1, #1
004699f0  40 00 51 e3                                      cmp r1, #0x40
004699f4  39 00 00 8a                                      bhi #0x469ae0
004699f8  04 80 8d e2                                      add r8, sp, #4
004699fc  08 00 a0 e1                                      mov r0, r8
00469a00  41 10 a0 e3                                      mov r1, #0x41
00469a04  14 80 8d e5                                      str r8, [sp, #0x14]
00469a08  18 80 8d e5                                      str r8, [sp, #0x18]
00469a0c  1a 9f fa eb                                      bl #0x31167c
00469a10  18 20 9d e5                                      ldr r2, [sp, #0x18]
00469a14  00 30 a0 e3                                      mov r3, #0
00469a18  30 10 a0 e3                                      mov r1, #0x30
00469a1c  40 00 82 e2                                      add r0, r2, #0x40
00469a20  03 10 c2 e7                                      strb r1, [r2, r3]
00469a24  01 30 83 e2                                      add r3, r3, #1
00469a28  40 00 53 e3                                      cmp r3, #0x40
00469a2c  fb ff ff 1a                                      bne #0x469a20
00469a30  00 30 a0 e3                                      mov r3, #0
00469a34  14 00 8d e5                                      str r0, [sp, #0x14]
00469a38  08 10 a0 e1                                      mov r1, r8
00469a3c  05 00 a0 e1                                      mov r0, r5
00469a40  40 30 c2 e5                                      strb r3, [r2, #0x40]
00469a44  8d 27 ff eb                                      bl #0x433880
00469a48  08 00 a0 e1                                      mov r0, r8
00469a4c  d6 a7 fa eb                                      bl #0x3139ac
00469a50  00 30 a0 e3                                      mov r3, #0
00469a54  01 00 a0 e3                                      mov r0, #1
00469a58  31 c0 a0 e3                                      mov ip, #0x31
00469a5c  a3 22 a0 e1                                      lsr r2, r3, #5
00469a60  02 21 94 e7                                      ldr r2, [r4, r2, lsl #2]
00469a64  1f 10 03 e2                                      and r1, r3, #0x1f
00469a68  10 21 12 e0                                      ands r2, r2, r0, lsl r1
00469a6c  14 10 95 15                                      ldrne r1, [r5, #0x14]
00469a70  3f 20 63 12                                      rsbne r2, r3, #0x3f
00469a74  01 30 83 e2                                      add r3, r3, #1
00469a78  02 c0 c1 17                                      strbne ip, [r1, r2]
00469a7c  40 00 53 e3                                      cmp r3, #0x40
00469a80  f5 ff ff 1a                                      bne #0x469a5c
00469a84  07 30 96 e7                                      ldr r3, [r6, r7]
00469a88  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00469a8c  00 30 93 e5                                      ldr r3, [r3]
00469a90  03 00 52 e1                                      cmp r2, r3
00469a94  1c 00 00 1a                                      bne #0x469b0c
00469a98  20 d0 8d e2                                      add sp, sp, #0x20
00469a9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00469aa0  03 00 a0 e1                                      mov r0, r3
00469aa4  30 10 a0 e3                                      mov r1, #0x30
00469aa8  40 20 a0 e3                                      mov r2, #0x40
00469aac  6b 92 fa eb                                      bl #0x30e460
00469ab0  14 20 95 e5                                      ldr r2, [r5, #0x14]
00469ab4  10 30 95 e5                                      ldr r3, [r5, #0x10]
00469ab8  40 10 82 e2                                      add r1, r2, #0x40
00469abc  03 00 51 e1                                      cmp r1, r3
00469ac0  e2 ff ff 0a                                      beq #0x469a50
00469ac4  00 00 d3 e5                                      ldrb r0, [r3]
00469ac8  01 30 63 e0                                      rsb r3, r3, r1
00469acc  40 00 c2 e5                                      strb r0, [r2, #0x40]
00469ad0  10 20 95 e5                                      ldr r2, [r5, #0x10]
00469ad4  03 30 82 e0                                      add r3, r2, r3
00469ad8  10 30 85 e5                                      str r3, [r5, #0x10]
00469adc  db ff ff ea                                      b #0x469a50
00469ae0  03 00 a0 e1                                      mov r0, r3
00469ae4  30 10 a0 e3                                      mov r1, #0x30
00469ae8  5c 92 fa eb                                      bl #0x30e460
00469aec  10 10 95 e5                                      ldr r1, [r5, #0x10]
00469af0  14 30 95 e5                                      ldr r3, [r5, #0x14]
00469af4  05 00 a0 e1                                      mov r0, r5
00469af8  30 20 a0 e3                                      mov r2, #0x30
00469afc  01 10 63 e0                                      rsb r1, r3, r1
00469b00  40 10 61 e2                                      rsb r1, r1, #0x40
00469b04  1f 02 fb eb                                      bl #0x32a388
00469b08  d0 ff ff ea                                      b #0x469a50
00469b0c  ff 91 fa eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00469b10  e0 b0 52 00 ac 40 00 00                          .byte 0xe0, 0xb0, 0x52, 0x00, 0xac, 0x40, 0x00, 0x00
