; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032a78c, declared_size=288, range_size=288, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs10_M_appendTIPKcEERSsT_S3_RKSt20forward_iterator_tag
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_appendT<char const*>(char const*, char const*, std::forward_iterator_tag const&)
; decoder-mode: arm
0032a78c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0032a790  02 00 51 e1                                      cmp r1, r2
0032a794  0c d0 4d e2                                      sub sp, sp, #0xc
0032a798  01 60 a0 e1                                      mov r6, r1
0032a79c  00 40 a0 e1                                      mov r4, r0
0032a7a0  23 00 00 0a                                      beq #0x32a834
0032a7a4  14 30 90 e5                                      ldr r3, [r0, #0x14]
0032a7a8  02 50 61 e0                                      rsb r5, r1, r2
0032a7ac  00 00 53 e1                                      cmp r3, r0
0032a7b0  10 30 90 05                                      ldreq r3, [r0, #0x10]
0032a7b4  00 10 90 15                                      ldrne r1, [r0]
0032a7b8  10 30 90 15                                      ldrne r3, [r0, #0x10]
0032a7bc  10 10 80 02                                      addeq r1, r0, #0x10
0032a7c0  01 10 63 e0                                      rsb r1, r3, r1
0032a7c4  01 00 55 e1                                      cmp r5, r1
0032a7c8  1c 00 00 3a                                      blo #0x32a840
0032a7cc  05 10 a0 e1                                      mov r1, r5
0032a7d0  f2 97 ff eb                                      bl #0x3107a0
0032a7d4  00 80 50 e2                                      subs r8, r0, #0
0032a7d8  08 70 a0 01                                      moveq r7, r8
0032a7dc  27 00 00 1a                                      bne #0x32a880
0032a7e0  14 10 94 e5                                      ldr r1, [r4, #0x14]
0032a7e4  10 a0 94 e5                                      ldr sl, [r4, #0x10]
0032a7e8  0a 00 51 e1                                      cmp r1, sl
0032a7ec  07 00 a0 01                                      moveq r0, r7
0032a7f0  04 00 00 0a                                      beq #0x32a808
0032a7f4  0a a0 61 e0                                      rsb sl, r1, sl
0032a7f8  07 00 a0 e1                                      mov r0, r7
0032a7fc  0a 20 a0 e1                                      mov r2, sl
0032a800  18 90 ff eb                                      bl #0x30e868
0032a804  0a 00 80 e0                                      add r0, r0, sl
0032a808  05 20 a0 e1                                      mov r2, r5
0032a80c  06 10 a0 e1                                      mov r1, r6
0032a810  14 90 ff eb                                      bl #0x30e868
0032a814  00 30 a0 e3                                      mov r3, #0
0032a818  05 30 c0 e7                                      strb r3, [r0, r5]
0032a81c  05 50 80 e0                                      add r5, r0, r5
0032a820  04 00 a0 e1                                      mov r0, r4
0032a824  60 a4 ff eb                                      bl #0x3139ac
0032a828  00 80 84 e5                                      str r8, [r4]
0032a82c  10 50 84 e5                                      str r5, [r4, #0x10]
0032a830  14 70 84 e5                                      str r7, [r4, #0x14]
0032a834  04 00 a0 e1                                      mov r0, r4
0032a838  0c d0 8d e2                                      add sp, sp, #0xc
0032a83c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0032a840  00 00 d6 e5                                      ldrb r0, [r6]
0032a844  01 10 86 e2                                      add r1, r6, #1
0032a848  01 00 52 e1                                      cmp r2, r1
0032a84c  00 00 c3 e5                                      strb r0, [r3]
0032a850  10 00 94 e5                                      ldr r0, [r4, #0x10]
0032a854  03 00 00 0a                                      beq #0x32a868
0032a858  01 00 80 e2                                      add r0, r0, #1
0032a85c  02 20 61 e0                                      rsb r2, r1, r2
0032a860  00 90 ff eb                                      bl #0x30e868
0032a864  10 00 94 e5                                      ldr r0, [r4, #0x10]
0032a868  00 30 a0 e3                                      mov r3, #0
0032a86c  05 30 c0 e7                                      strb r3, [r0, r5]
0032a870  10 30 94 e5                                      ldr r3, [r4, #0x10]
0032a874  05 50 83 e0                                      add r5, r3, r5
0032a878  10 50 84 e5                                      str r5, [r4, #0x10]
0032a87c  ec ff ff ea                                      b #0x32a834
0032a880  80 00 58 e3                                      cmp r8, #0x80
0032a884  04 80 8d e5                                      str r8, [sp, #4]
0032a888  05 00 00 8a                                      bhi #0x32a8a4
0032a88c  04 00 8d e2                                      add r0, sp, #4
0032a890  8a 79 0f eb                                      bl #0x708ec0
0032a894  04 80 9d e5                                      ldr r8, [sp, #4]
0032a898  00 70 a0 e1                                      mov r7, r0
0032a89c  08 80 80 e0                                      add r8, r0, r8
0032a8a0  ce ff ff ea                                      b #0x32a7e0
0032a8a4  ea 96 ff eb                                      bl #0x310454
0032a8a8  f9 ff ff ea                                      b #0x32a894

; FUNCTION 0x003fa868, declared_size=304, range_size=304, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::basic_string<char, std::char_traits<char>, std::allocator<char> >
; alias: _ZNSs10_M_appendTIPKcEERSsT_S3_RKSt20forward_iterator_tag.clone.3
; demangled: std::basic_string<char, std::char_traits<char>, std::allocator<char> >& std::basic_string<char, std::char_traits<char>, std::allocator<char> >::_M_appendT<char const*>(char const*, char const*, std::forward_iterator_tag const&) [clone .clone.3]
; decoder-mode: arm
003fa868  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003fa86c  18 51 9f e5                                      ldr r5, [pc, #0x118]
003fa870  08 d0 4d e2                                      sub sp, sp, #8
003fa874  01 20 a0 e1                                      mov r2, r1
003fa878  05 50 8f e0                                      add r5, pc, r5
003fa87c  05 00 51 e1                                      cmp r1, r5
003fa880  00 40 a0 e1                                      mov r4, r0
003fa884  1a 00 00 0a                                      beq #0x3fa8f4
003fa888  14 30 90 e5                                      ldr r3, [r0, #0x14]
003fa88c  01 50 65 e0                                      rsb r5, r5, r1
003fa890  00 00 53 e1                                      cmp r3, r0
003fa894  10 30 90 05                                      ldreq r3, [r0, #0x10]
003fa898  00 10 90 15                                      ldrne r1, [r0]
003fa89c  10 30 90 15                                      ldrne r3, [r0, #0x10]
003fa8a0  10 10 80 02                                      addeq r1, r0, #0x10
003fa8a4  01 10 63 e0                                      rsb r1, r3, r1
003fa8a8  01 00 55 e1                                      cmp r5, r1
003fa8ac  13 00 00 2a                                      bhs #0x3fa900
003fa8b0  d8 10 9f e5                                      ldr r1, [pc, #0xd8]
003fa8b4  20 00 a0 e3                                      mov r0, #0x20
003fa8b8  00 00 c3 e5                                      strb r0, [r3]
003fa8bc  01 10 8f e0                                      add r1, pc, r1
003fa8c0  01 10 81 e2                                      add r1, r1, #1
003fa8c4  01 00 52 e1                                      cmp r2, r1
003fa8c8  10 00 94 e5                                      ldr r0, [r4, #0x10]
003fa8cc  03 00 00 0a                                      beq #0x3fa8e0
003fa8d0  01 00 80 e2                                      add r0, r0, #1
003fa8d4  02 20 61 e0                                      rsb r2, r1, r2
003fa8d8  e2 4f fc eb                                      bl #0x30e868
003fa8dc  10 00 94 e5                                      ldr r0, [r4, #0x10]
003fa8e0  00 30 a0 e3                                      mov r3, #0
003fa8e4  05 30 c0 e7                                      strb r3, [r0, r5]
003fa8e8  10 30 94 e5                                      ldr r3, [r4, #0x10]
003fa8ec  05 50 83 e0                                      add r5, r3, r5
003fa8f0  10 50 84 e5                                      str r5, [r4, #0x10]
003fa8f4  04 00 a0 e1                                      mov r0, r4
003fa8f8  08 d0 8d e2                                      add sp, sp, #8
003fa8fc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003fa900  05 10 a0 e1                                      mov r1, r5
003fa904  a5 57 fc eb                                      bl #0x3107a0
003fa908  00 70 50 e2                                      subs r7, r0, #0
003fa90c  07 60 a0 01                                      moveq r6, r7
003fa910  16 00 00 1a                                      bne #0x3fa970
003fa914  14 10 94 e5                                      ldr r1, [r4, #0x14]
003fa918  10 80 94 e5                                      ldr r8, [r4, #0x10]
003fa91c  08 00 51 e1                                      cmp r1, r8
003fa920  06 00 a0 01                                      moveq r0, r6
003fa924  04 00 00 0a                                      beq #0x3fa93c
003fa928  08 80 61 e0                                      rsb r8, r1, r8
003fa92c  06 00 a0 e1                                      mov r0, r6
003fa930  08 20 a0 e1                                      mov r2, r8
003fa934  cb 4f fc eb                                      bl #0x30e868
003fa938  08 00 80 e0                                      add r0, r0, r8
003fa93c  50 10 9f e5                                      ldr r1, [pc, #0x50]
003fa940  05 20 a0 e1                                      mov r2, r5
003fa944  01 10 8f e0                                      add r1, pc, r1
003fa948  c6 4f fc eb                                      bl #0x30e868
003fa94c  00 30 a0 e3                                      mov r3, #0
003fa950  05 30 c0 e7                                      strb r3, [r0, r5]
003fa954  05 50 80 e0                                      add r5, r0, r5
003fa958  04 00 a0 e1                                      mov r0, r4
003fa95c  12 64 fc eb                                      bl #0x3139ac
003fa960  00 70 84 e5                                      str r7, [r4]
003fa964  10 50 84 e5                                      str r5, [r4, #0x10]
003fa968  14 60 84 e5                                      str r6, [r4, #0x14]
003fa96c  e0 ff ff ea                                      b #0x3fa8f4
003fa970  08 00 8d e2                                      add r0, sp, #8
003fa974  04 70 20 e5                                      str r7, [r0, #-4]!
003fa978  05 64 fc eb                                      bl #0x313994
003fa97c  04 70 9d e5                                      ldr r7, [sp, #4]
003fa980  00 60 a0 e1                                      mov r6, r0
003fa984  07 70 80 e0                                      add r7, r0, r7
003fa988  e1 ff ff ea                                      b #0x3fa914
; mapping-symbol data/literal pool
003fa98c  b8 6b 4c 00 74 6b 4c 00 ec 6a 4c 00              .byte 0xb8, 0x6b, 0x4c, 0x00, 0x74, 0x6b, 0x4c, 0x00, 0xec, 0x6a, 0x4c, 0x00
