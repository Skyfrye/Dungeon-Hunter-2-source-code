; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0086f2f0, declared_size=72, range_size=72, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE19_M_range_initializeEPKcS7_
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_range_initialize(char const*, char const*)
; decoder-mode: arm
0086f2f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0086f2f4  02 50 61 e0                                      rsb r5, r1, r2
0086f2f8  01 40 a0 e1                                      mov r4, r1
0086f2fc  02 70 a0 e1                                      mov r7, r2
0086f300  01 10 85 e2                                      add r1, r5, #1
0086f304  00 60 a0 e1                                      mov r6, r0
0086f308  e4 ff ff eb                                      bl #0x86f2a0
0086f30c  04 00 57 e1                                      cmp r7, r4
0086f310  14 00 96 e5                                      ldr r0, [r6, #0x14]
0086f314  03 00 00 0a                                      beq #0x86f328
0086f318  04 10 a0 e1                                      mov r1, r4
0086f31c  05 20 a0 e1                                      mov r2, r5
0086f320  50 7d ea eb                                      bl #0x30e868
0086f324  05 00 80 e0                                      add r0, r0, r5
0086f328  00 30 a0 e3                                      mov r3, #0
0086f32c  10 00 86 e5                                      str r0, [r6, #0x10]
0086f330  00 30 c0 e5                                      strb r3, [r0]
0086f334  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0086f338, declared_size=52, range_size=52, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEEC1EPKcRKS4_
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::basic_string(char const*, vox::SAllocator<char, (vox::VoxMemHint)0> const&)
; decoder-mode: arm
0086f338  70 40 2d e9                                      push {r4, r5, r6, lr}
0086f33c  00 40 a0 e1                                      mov r4, r0
0086f340  10 00 84 e5                                      str r0, [r4, #0x10]
0086f344  14 00 84 e5                                      str r0, [r4, #0x14]
0086f348  01 00 a0 e1                                      mov r0, r1
0086f34c  01 50 a0 e1                                      mov r5, r1
0086f350  bf 7a ea eb                                      bl #0x30de54
0086f354  05 10 a0 e1                                      mov r1, r5
0086f358  00 20 85 e0                                      add r2, r5, r0
0086f35c  04 00 a0 e1                                      mov r0, r4
0086f360  e2 ff ff eb                                      bl #0x86f2f0
0086f364  04 00 a0 e1                                      mov r0, r4
0086f368  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0087134c, declared_size=100, range_size=100, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE20_M_compute_next_sizeEj
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
0087134c  70 40 2d e9                                      push {r4, r5, r6, lr}
00871350  14 20 90 e5                                      ldr r2, [r0, #0x14]
00871354  10 40 90 e5                                      ldr r4, [r0, #0x10]
00871358  fe 3f 0f e3                                      movw r3, #0xfffe
0087135c  ff 3f 4f e3                                      movt r3, #0xffff
00871360  04 40 62 e0                                      rsb r4, r2, r4
00871364  03 30 64 e0                                      rsb r3, r4, r3
00871368  01 00 53 e1                                      cmp r3, r1
0087136c  01 50 a0 e1                                      mov r5, r1
00871370  09 00 00 3a                                      blo #0x87139c
00871374  01 00 84 e2                                      add r0, r4, #1
00871378  04 00 55 e1                                      cmp r5, r4
0087137c  05 00 80 20                                      addhs r0, r0, r5
00871380  04 00 80 30                                      addlo r0, r0, r4
00871384  01 00 70 e3                                      cmn r0, #1
00871388  01 00 00 0a                                      beq #0x871394
0087138c  04 00 50 e1                                      cmp r0, r4
00871390  00 00 00 2a                                      bhs #0x871398
00871394  01 00 e0 e3                                      mvn r0, #1
00871398  70 80 bd e8                                      pop {r4, r5, r6, pc}
0087139c  08 00 9f e5                                      ldr r0, [pc, #8]
008713a0  00 00 8f e0                                      add r0, pc, r0
008713a4  d7 33 01 eb                                      bl #0x8be308
008713a8  f1 ff ff ea                                      b #0x871374
; mapping-symbol data/literal pool
008713ac  b8 d0 04 00                                      .byte 0xb8, 0xd0, 0x04, 0x00

; FUNCTION 0x00871718, declared_size=316, range_size=316, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE9_M_appendEPKcS7_
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_append(char const*, char const*)
; decoder-mode: arm
00871718  02 00 51 e1                                      cmp r1, r2
0087171c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00871720  01 40 a0 e1                                      mov r4, r1
00871724  00 50 a0 e1                                      mov r5, r0
00871728  1d 00 00 0a                                      beq #0x8717a4
0087172c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00871730  02 60 61 e0                                      rsb r6, r1, r2
00871734  00 00 53 e1                                      cmp r3, r0
00871738  10 10 90 05                                      ldreq r1, [r0, #0x10]
0087173c  00 30 90 15                                      ldrne r3, [r0]
00871740  10 10 90 15                                      ldrne r1, [r0, #0x10]
00871744  10 30 80 02                                      addeq r3, r0, #0x10
00871748  03 30 61 e0                                      rsb r3, r1, r3
0087174c  03 00 56 e1                                      cmp r6, r3
00871750  15 00 00 2a                                      bhs #0x8717ac
00871754  01 30 84 e2                                      add r3, r4, #1
00871758  02 20 63 e0                                      rsb r2, r3, r2
0087175c  00 00 52 e3                                      cmp r2, #0
00871760  01 30 a0 e1                                      mov r3, r1
00871764  06 00 00 da                                      ble #0x871784
00871768  04 20 82 e0                                      add r2, r2, r4
0087176c  04 30 a0 e1                                      mov r3, r4
00871770  01 00 f3 e5                                      ldrb r0, [r3, #1]!
00871774  02 00 53 e1                                      cmp r3, r2
00871778  01 00 e1 e5                                      strb r0, [r1, #1]!
0087177c  fb ff ff 1a                                      bne #0x871770
00871780  10 30 95 e5                                      ldr r3, [r5, #0x10]
00871784  00 20 a0 e3                                      mov r2, #0
00871788  06 20 c3 e7                                      strb r2, [r3, r6]
0087178c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00871790  00 20 d4 e5                                      ldrb r2, [r4]
00871794  00 20 c3 e5                                      strb r2, [r3]
00871798  10 30 95 e5                                      ldr r3, [r5, #0x10]
0087179c  06 60 83 e0                                      add r6, r3, r6
008717a0  10 60 85 e5                                      str r6, [r5, #0x10]
008717a4  05 00 a0 e1                                      mov r0, r5
008717a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008717ac  06 10 a0 e1                                      mov r1, r6
008717b0  e5 fe ff eb                                      bl #0x87134c
008717b4  00 10 a0 e3                                      mov r1, #0
008717b8  00 70 a0 e1                                      mov r7, r0
008717bc  a1 7b ea eb                                      bl #0x310648
008717c0  14 10 95 e5                                      ldr r1, [r5, #0x14]
008717c4  10 20 95 e5                                      ldr r2, [r5, #0x10]
008717c8  00 a0 a0 e1                                      mov sl, r0
008717cc  02 20 61 e0                                      rsb r2, r1, r2
008717d0  00 00 52 e3                                      cmp r2, #0
008717d4  00 80 a0 d1                                      movle r8, r0
008717d8  06 00 00 da                                      ble #0x8717f8
008717dc  00 80 a0 e3                                      mov r8, #0
008717e0  08 30 d1 e7                                      ldrb r3, [r1, r8]
008717e4  08 30 ca e7                                      strb r3, [sl, r8]
008717e8  01 80 88 e2                                      add r8, r8, #1
008717ec  02 00 58 e1                                      cmp r8, r2
008717f0  fa ff ff 1a                                      bne #0x8717e0
008717f4  08 80 8a e0                                      add r8, sl, r8
008717f8  00 00 56 e3                                      cmp r6, #0
008717fc  06 00 00 da                                      ble #0x87181c
00871800  00 30 a0 e3                                      mov r3, #0
00871804  03 20 d4 e7                                      ldrb r2, [r4, r3]
00871808  03 20 c8 e7                                      strb r2, [r8, r3]
0087180c  01 30 83 e2                                      add r3, r3, #1
00871810  03 00 56 e1                                      cmp r6, r3
00871814  fa ff ff 1a                                      bne #0x871804
00871818  06 80 88 e0                                      add r8, r8, r6
0087181c  00 30 a0 e3                                      mov r3, #0
00871820  00 30 c8 e5                                      strb r3, [r8]
00871824  14 00 95 e5                                      ldr r0, [r5, #0x14]
00871828  00 00 55 e1                                      cmp r5, r0
0087182c  02 00 00 0a                                      beq #0x87183c
00871830  03 00 50 e1                                      cmp r0, r3
00871834  00 00 00 0a                                      beq #0x87183c
00871838  01 7b ea eb                                      bl #0x310444
0087183c  07 70 8a e0                                      add r7, sl, r7
00871840  00 70 85 e5                                      str r7, [r5]
00871844  10 80 85 e5                                      str r8, [r5, #0x10]
00871848  14 a0 85 e5                                      str sl, [r5, #0x14]
0087184c  05 00 a0 e1                                      mov r0, r5
00871850  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00888b70, declared_size=192, range_size=192, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE9_M_assignEPKcS7_
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_assign(char const*, char const*)
; decoder-mode: arm
00888b70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00888b74  00 40 a0 e1                                      mov r4, r0
00888b78  10 30 90 e5                                      ldr r3, [r0, #0x10]
00888b7c  14 00 90 e5                                      ldr r0, [r0, #0x14]
00888b80  02 50 61 e0                                      rsb r5, r1, r2
00888b84  02 60 a0 e1                                      mov r6, r2
00888b88  03 20 60 e0                                      rsb r2, r0, r3
00888b8c  02 00 55 e1                                      cmp r5, r2
00888b90  01 70 a0 e1                                      mov r7, r1
00888b94  0c 00 00 8a                                      bhi #0x888bcc
00888b98  00 00 55 e3                                      cmp r5, #0
00888b9c  12 00 00 1a                                      bne #0x888bec
00888ba0  05 20 80 e0                                      add r2, r0, r5
00888ba4  03 00 52 e1                                      cmp r2, r3
00888ba8  05 00 00 0a                                      beq #0x888bc4
00888bac  00 10 d3 e5                                      ldrb r1, [r3]
00888bb0  02 30 63 e0                                      rsb r3, r3, r2
00888bb4  05 10 c0 e7                                      strb r1, [r0, r5]
00888bb8  10 20 94 e5                                      ldr r2, [r4, #0x10]
00888bbc  03 30 82 e0                                      add r3, r2, r3
00888bc0  10 30 84 e5                                      str r3, [r4, #0x10]
00888bc4  04 00 a0 e1                                      mov r0, r4
00888bc8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00888bcc  00 00 52 e3                                      cmp r2, #0
00888bd0  0d 00 00 1a                                      bne #0x888c0c
00888bd4  02 10 87 e0                                      add r1, r7, r2
00888bd8  04 00 a0 e1                                      mov r0, r4
00888bdc  06 20 a0 e1                                      mov r2, r6
00888be0  cc a2 ff eb                                      bl #0x871718
00888be4  04 00 a0 e1                                      mov r0, r4
00888be8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00888bec  05 20 a0 e1                                      mov r2, r5
00888bf0  1c 17 ea eb                                      bl #0x30e868
00888bf4  14 00 94 e5                                      ldr r0, [r4, #0x14]
00888bf8  10 30 94 e5                                      ldr r3, [r4, #0x10]
00888bfc  05 20 80 e0                                      add r2, r0, r5
00888c00  03 00 52 e1                                      cmp r2, r3
00888c04  e8 ff ff 1a                                      bne #0x888bac
00888c08  ed ff ff ea                                      b #0x888bc4
00888c0c  15 17 ea eb                                      bl #0x30e868
00888c10  14 30 94 e5                                      ldr r3, [r4, #0x14]
00888c14  10 20 94 e5                                      ldr r2, [r4, #0x10]
00888c18  04 00 a0 e1                                      mov r0, r4
00888c1c  02 20 63 e0                                      rsb r2, r3, r2
00888c20  02 10 87 e0                                      add r1, r7, r2
00888c24  06 20 a0 e1                                      mov r2, r6
00888c28  ba a2 ff eb                                      bl #0x871718
00888c2c  ec ff ff ea                                      b #0x888be4

; FUNCTION 0x00894ac0, declared_size=132, range_size=132, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE10_M_reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::_M_reserve(unsigned int)
; decoder-mode: arm
00894ac0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00894ac4  01 50 a0 e1                                      mov r5, r1
00894ac8  00 40 a0 e1                                      mov r4, r0
00894acc  00 10 a0 e3                                      mov r1, #0
00894ad0  05 00 a0 e1                                      mov r0, r5
00894ad4  db ee e9 eb                                      bl #0x310648
00894ad8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00894adc  10 20 94 e5                                      ldr r2, [r4, #0x10]
00894ae0  00 60 a0 e1                                      mov r6, r0
00894ae4  02 20 61 e0                                      rsb r2, r1, r2
00894ae8  00 00 52 e3                                      cmp r2, #0
00894aec  00 70 a0 d1                                      movle r7, r0
00894af0  06 00 00 da                                      ble #0x894b10
00894af4  00 70 a0 e3                                      mov r7, #0
00894af8  07 30 d1 e7                                      ldrb r3, [r1, r7]
00894afc  07 30 c6 e7                                      strb r3, [r6, r7]
00894b00  01 70 87 e2                                      add r7, r7, #1
00894b04  02 00 57 e1                                      cmp r7, r2
00894b08  fa ff ff 1a                                      bne #0x894af8
00894b0c  07 70 86 e0                                      add r7, r6, r7
00894b10  00 30 a0 e3                                      mov r3, #0
00894b14  00 30 c7 e5                                      strb r3, [r7]
00894b18  14 00 94 e5                                      ldr r0, [r4, #0x14]
00894b1c  04 00 50 e1                                      cmp r0, r4
00894b20  02 00 00 0a                                      beq #0x894b30
00894b24  03 00 50 e1                                      cmp r0, r3
00894b28  00 00 00 0a                                      beq #0x894b30
00894b2c  44 ee e9 eb                                      bl #0x310444
00894b30  05 50 86 e0                                      add r5, r6, r5
00894b34  14 60 84 e5                                      str r6, [r4, #0x14]
00894b38  00 50 84 e5                                      str r5, [r4]
00894b3c  10 70 84 e5                                      str r7, [r4, #0x10]
00894b40  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00894b44, declared_size=104, range_size=104, mode=arm
; class-group: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >
; alias: _ZNSbIcSt11char_traitsIcEN3vox10SAllocatorIcLNS1_10VoxMemHintE0EEEE7reserveEj
; demangled: std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >::reserve(unsigned int)
; decoder-mode: arm
00894b44  01 00 71 e3                                      cmn r1, #1
00894b48  70 40 2d e9                                      push {r4, r5, r6, lr}
00894b4c  01 50 a0 e1                                      mov r5, r1
00894b50  00 40 a0 e1                                      mov r4, r0
00894b54  0f 00 00 0a                                      beq #0x894b98
00894b58  14 30 94 e5                                      ldr r3, [r4, #0x14]
00894b5c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00894b60  01 10 63 e0                                      rsb r1, r3, r1
00894b64  01 00 55 e1                                      cmp r5, r1
00894b68  01 50 a0 31                                      movlo r5, r1
00894b6c  04 00 53 e1                                      cmp r3, r4
00894b70  00 20 94 15                                      ldrne r2, [r4]
00894b74  01 10 85 e2                                      add r1, r5, #1
00894b78  10 30 a0 03                                      moveq r3, #0x10
00894b7c  02 30 63 10                                      rsbne r3, r3, r2
00894b80  03 00 51 e1                                      cmp r1, r3
00894b84  00 00 00 2a                                      bhs #0x894b8c
00894b88  70 80 bd e8                                      pop {r4, r5, r6, pc}
00894b8c  04 00 a0 e1                                      mov r0, r4
00894b90  70 40 bd e8                                      pop {r4, r5, r6, lr}
00894b94  c9 ff ff ea                                      b #0x894ac0
00894b98  08 00 9f e5                                      ldr r0, [pc, #8]
00894b9c  00 00 8f e0                                      add r0, pc, r0
00894ba0  d8 a5 00 eb                                      bl #0x8be308
00894ba4  eb ff ff ea                                      b #0x894b58
; mapping-symbol data/literal pool
00894ba8  bc 98 02 00                                      .byte 0xbc, 0x98, 0x02, 0x00
