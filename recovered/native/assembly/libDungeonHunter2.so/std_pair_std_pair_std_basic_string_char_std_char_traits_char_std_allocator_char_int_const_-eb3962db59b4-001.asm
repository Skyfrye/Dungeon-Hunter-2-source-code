; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003d2ef0, declared_size=76, range_size=76, mode=arm
; class-group: std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>
; alias: _ZNSt4pairIKS_ISsiEN6CharAI9GroupInfoEED1Ev
; demangled: std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>::~pair()
; decoder-mode: arm
003d2ef0  10 40 2d e9                                      push {r4, lr}
003d2ef4  00 40 a0 e1                                      mov r4, r0
003d2ef8  1c 00 80 e2                                      add r0, r0, #0x1c
003d2efc  6f ff ff eb                                      bl #0x3d2cc0
003d2f00  14 00 94 e5                                      ldr r0, [r4, #0x14]
003d2f04  04 00 50 e1                                      cmp r0, r4
003d2f08  06 00 00 0a                                      beq #0x3d2f28
003d2f0c  00 00 50 e3                                      cmp r0, #0
003d2f10  04 00 00 0a                                      beq #0x3d2f28
003d2f14  00 10 94 e5                                      ldr r1, [r4]
003d2f18  01 10 60 e0                                      rsb r1, r0, r1
003d2f1c  80 00 51 e3                                      cmp r1, #0x80
003d2f20  02 00 00 8a                                      bhi #0x3d2f30
003d2f24  f5 d7 0c eb                                      bl #0x708f00
003d2f28  04 00 a0 e1                                      mov r0, r4
003d2f2c  10 80 bd e8                                      pop {r4, pc}
003d2f30  42 f5 fc eb                                      bl #0x310440
003d2f34  04 00 a0 e1                                      mov r0, r4
003d2f38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003d3124, declared_size=64, range_size=64, mode=arm
; class-group: std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>
; alias: _ZNSt4pairIKS_ISsiEN6CharAI9GroupInfoEEC1ERS1_RKS3_
; demangled: std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>::pair(std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const&, CharAI::GroupInfo const&)
; decoder-mode: arm
003d3124  70 40 2d e9                                      push {r4, r5, r6, lr}
003d3128  00 40 a0 e1                                      mov r4, r0
003d312c  10 00 84 e5                                      str r0, [r4, #0x10]
003d3130  14 00 84 e5                                      str r0, [r4, #0x14]
003d3134  01 50 a0 e1                                      mov r5, r1
003d3138  02 60 a0 e1                                      mov r6, r2
003d313c  14 10 91 e5                                      ldr r1, [r1, #0x14]
003d3140  10 20 95 e5                                      ldr r2, [r5, #0x10]
003d3144  67 f9 fc eb                                      bl #0x3116e8
003d3148  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d314c  06 10 a0 e1                                      mov r1, r6
003d3150  1c 00 84 e2                                      add r0, r4, #0x1c
003d3154  18 30 84 e5                                      str r3, [r4, #0x18]
003d3158  20 ff ff eb                                      bl #0x3d2de0
003d315c  04 00 a0 e1                                      mov r0, r4
003d3160  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003d3164, declared_size=60, range_size=60, mode=arm
; class-group: std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>
; alias: _ZNSt4pairIKS_ISsiEN6CharAI9GroupInfoEEC1ERKS4_
; demangled: std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo>::pair(std::pair<std::pair<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, int> const, CharAI::GroupInfo> const&)
; decoder-mode: arm
003d3164  70 40 2d e9                                      push {r4, r5, r6, lr}
003d3168  00 40 a0 e1                                      mov r4, r0
003d316c  01 50 a0 e1                                      mov r5, r1
003d3170  10 00 84 e5                                      str r0, [r4, #0x10]
003d3174  14 00 84 e5                                      str r0, [r4, #0x14]
003d3178  10 20 95 e5                                      ldr r2, [r5, #0x10]
003d317c  14 10 91 e5                                      ldr r1, [r1, #0x14]
003d3180  58 f9 fc eb                                      bl #0x3116e8
003d3184  18 30 95 e5                                      ldr r3, [r5, #0x18]
003d3188  1c 10 85 e2                                      add r1, r5, #0x1c
003d318c  1c 00 84 e2                                      add r0, r4, #0x1c
003d3190  18 30 84 e5                                      str r3, [r4, #0x18]
003d3194  11 ff ff eb                                      bl #0x3d2de0
003d3198  04 00 a0 e1                                      mov r0, r4
003d319c  70 80 bd e8                                      pop {r4, r5, r6, pc}
