; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0038e868, declared_size=100, range_size=100, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>
; alias: _ZNSt4pairIKSsN14ObjectSearcher16BackupObjectListEEC1ERS0_RKS2_
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>::pair(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&, ObjectSearcher::BackupObjectList const&)
; decoder-mode: arm
0038e868  70 40 2d e9                                      push {r4, r5, r6, lr}
0038e86c  00 40 a0 e1                                      mov r4, r0
0038e870  10 00 84 e5                                      str r0, [r4, #0x10]
0038e874  14 00 84 e5                                      str r0, [r4, #0x14]
0038e878  02 60 a0 e1                                      mov r6, r2
0038e87c  40 50 9f e5                                      ldr r5, [pc, #0x40]
0038e880  10 20 91 e5                                      ldr r2, [r1, #0x10]
0038e884  14 10 91 e5                                      ldr r1, [r1, #0x14]
0038e888  96 0b fe eb                                      bl #0x3116e8
0038e88c  34 30 9f e5                                      ldr r3, [pc, #0x34]
0038e890  05 50 8f e0                                      add r5, pc, r5
0038e894  1c 00 84 e2                                      add r0, r4, #0x1c
0038e898  03 30 95 e7                                      ldr r3, [r5, r3]
0038e89c  04 10 86 e2                                      add r1, r6, #4
0038e8a0  08 30 83 e2                                      add r3, r3, #8
0038e8a4  18 30 84 e5                                      str r3, [r4, #0x18]
0038e8a8  74 ff ff eb                                      bl #0x38e680
0038e8ac  10 30 96 e5                                      ldr r3, [r6, #0x10]
0038e8b0  04 00 a0 e1                                      mov r0, r4
0038e8b4  28 30 84 e5                                      str r3, [r4, #0x28]
0038e8b8  14 30 96 e5                                      ldr r3, [r6, #0x14]
0038e8bc  2c 30 84 e5                                      str r3, [r4, #0x2c]
0038e8c0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038e8c4  00 62 60 00 60 1a 00 00                          .byte 0x00, 0x62, 0x60, 0x00, 0x60, 0x1a, 0x00, 0x00

; FUNCTION 0x0038e8cc, declared_size=100, range_size=100, mode=arm
; class-group: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>
; alias: _ZNSt4pairIKSsN14ObjectSearcher16BackupObjectListEEC1ERKS3_
; demangled: std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList>::pair(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> > const, ObjectSearcher::BackupObjectList> const&)
; decoder-mode: arm
0038e8cc  70 40 2d e9                                      push {r4, r5, r6, lr}
0038e8d0  00 40 a0 e1                                      mov r4, r0
0038e8d4  01 50 a0 e1                                      mov r5, r1
0038e8d8  10 00 84 e5                                      str r0, [r4, #0x10]
0038e8dc  14 00 84 e5                                      str r0, [r4, #0x14]
0038e8e0  10 20 95 e5                                      ldr r2, [r5, #0x10]
0038e8e4  14 10 91 e5                                      ldr r1, [r1, #0x14]
0038e8e8  38 60 9f e5                                      ldr r6, [pc, #0x38]
0038e8ec  7d 0b fe eb                                      bl #0x3116e8
0038e8f0  34 30 9f e5                                      ldr r3, [pc, #0x34]
0038e8f4  06 60 8f e0                                      add r6, pc, r6
0038e8f8  1c 00 84 e2                                      add r0, r4, #0x1c
0038e8fc  03 30 96 e7                                      ldr r3, [r6, r3]
0038e900  1c 10 85 e2                                      add r1, r5, #0x1c
0038e904  08 30 83 e2                                      add r3, r3, #8
0038e908  18 30 84 e5                                      str r3, [r4, #0x18]
0038e90c  5b ff ff eb                                      bl #0x38e680
0038e910  28 30 95 e5                                      ldr r3, [r5, #0x28]
0038e914  04 00 a0 e1                                      mov r0, r4
0038e918  28 30 84 e5                                      str r3, [r4, #0x28]
0038e91c  2c 30 95 e5                                      ldr r3, [r5, #0x2c]
0038e920  2c 30 84 e5                                      str r3, [r4, #0x2c]
0038e924  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0038e928  9c 61 60 00 60 1a 00 00                          .byte 0x9c, 0x61, 0x60, 0x00, 0x60, 0x1a, 0x00, 0x00
