; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056ee7c, declared_size=152, range_size=152, mode=arm
; class-group: boost::detail::shared_count
; alias: _ZN5boost6detail12shared_countC1ERKS1_
; demangled: boost::detail::shared_count::shared_count(boost::detail::shared_count const&)
; decoder-mode: arm
0056ee7c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056ee80  00 70 91 e5                                      ldr r7, [r1]
0056ee84  80 30 9f e5                                      ldr r3, [pc, #0x80]
0056ee88  00 80 a0 e1                                      mov r8, r0
0056ee8c  00 00 57 e3                                      cmp r7, #0
0056ee90  00 70 80 e5                                      str r7, [r0]
0056ee94  03 30 8f e0                                      add r3, pc, r3
0056ee98  19 00 00 0a                                      beq #0x56ef04
0056ee9c  7d 2c 00 e3                                      movw r2, #0xc7d
0056eea0  04 10 87 e2                                      add r1, r7, #4
0056eea4  ce 27 4c e3                                      movt r2, #0xc7ce
0056eea8  92 01 82 e0                                      umull r0, r2, r2, r1
0056eeac  29 90 a0 e3                                      mov sb, #0x29
0056eeb0  a2 22 a0 e1                                      lsr r2, r2, #5
0056eeb4  99 12 69 e0                                      mls sb, sb, r2, r1
0056eeb8  50 20 9f e5                                      ldr r2, [pc, #0x50]
0056eebc  01 60 a0 e3                                      mov r6, #1
0056eec0  02 a0 93 e7                                      ldr sl, [r3, r2]
0056eec4  09 51 8a e0                                      add r5, sl, sb, lsl #2
0056eec8  96 30 05 e1                                      swp r3, r6, [r5]
0056eecc  00 00 53 e3                                      cmp r3, #0
0056eed0  06 00 00 0a                                      beq #0x56eef0
0056eed4  00 40 a0 e3                                      mov r4, #0
0056eed8  04 00 a0 e1                                      mov r0, r4
0056eedc  d4 ff ff eb                                      bl #0x56ee34
0056eee0  01 40 84 e2                                      add r4, r4, #1
0056eee4  96 30 05 e1                                      swp r3, r6, [r5]
0056eee8  00 00 53 e3                                      cmp r3, #0
0056eeec  f9 ff ff 1a                                      bne #0x56eed8
0056eef0  04 30 97 e5                                      ldr r3, [r7, #4]
0056eef4  01 30 83 e2                                      add r3, r3, #1
0056eef8  04 30 87 e5                                      str r3, [r7, #4]
0056eefc  00 30 a0 e3                                      mov r3, #0
0056ef00  09 31 8a e7                                      str r3, [sl, sb, lsl #2]
0056ef04  08 00 a0 e1                                      mov r0, r8
0056ef08  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
0056ef0c  fc 5b 42 00 14 18 00 00                          .byte 0xfc, 0x5b, 0x42, 0x00, 0x14, 0x18, 0x00, 0x00

; FUNCTION 0x0056ef58, declared_size=88, range_size=88, mode=arm
; class-group: boost::detail::shared_count
; alias: _ZN5boost6detail12shared_countC1IcEEPT_
; demangled: boost::detail::shared_count::shared_count<char>(char*)
; decoder-mode: arm
0056ef58  00 30 a0 e3                                      mov r3, #0
0056ef5c  70 40 2d e9                                      push {r4, r5, r6, lr}
0056ef60  00 50 a0 e1                                      mov r5, r0
0056ef64  00 30 80 e5                                      str r3, [r0]
0056ef68  10 00 a0 e3                                      mov r0, #0x10
0056ef6c  01 60 a0 e1                                      mov r6, r1
0056ef70  45 7e f6 eb                                      bl #0x30e88c
0056ef74  2c 40 9f e5                                      ldr r4, [pc, #0x2c]
0056ef78  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0056ef7c  01 20 a0 e3                                      mov r2, #1
0056ef80  04 40 8f e0                                      add r4, pc, r4
0056ef84  03 30 94 e7                                      ldr r3, [r4, r3]
0056ef88  08 20 80 e5                                      str r2, [r0, #8]
0056ef8c  0c 60 80 e5                                      str r6, [r0, #0xc]
0056ef90  08 30 83 e2                                      add r3, r3, #8
0056ef94  00 30 80 e5                                      str r3, [r0]
0056ef98  04 20 80 e5                                      str r2, [r0, #4]
0056ef9c  00 00 85 e5                                      str r0, [r5]
0056efa0  05 00 a0 e1                                      mov r0, r5
0056efa4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0056efa8  10 5b 42 00 30 1b 00 00                          .byte 0x10, 0x5b, 0x42, 0x00, 0x30, 0x1b, 0x00, 0x00
