; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0088bf2c, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox10BankXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEED1Ev
; demangled: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >::~vector()
; decoder-mode: arm
0088bf2c  70 40 2d e9                                      push {r4, r5, r6, lr}
0088bf30  04 40 90 e5                                      ldr r4, [r0, #4]
0088bf34  00 50 90 e5                                      ldr r5, [r0]
0088bf38  00 60 a0 e1                                      mov r6, r0
0088bf3c  05 00 54 e1                                      cmp r4, r5
0088bf40  0a 00 00 0a                                      beq #0x88bf70
0088bf44  28 40 44 e2                                      sub r4, r4, #0x28
0088bf48  10 20 84 e2                                      add r2, r4, #0x10
0088bf4c  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088bf50  02 00 53 e1                                      cmp r3, r2
0088bf54  03 00 a0 e1                                      mov r0, r3
0088bf58  02 00 00 0a                                      beq #0x88bf68
0088bf5c  00 00 53 e3                                      cmp r3, #0
0088bf60  00 00 00 0a                                      beq #0x88bf68
0088bf64  36 11 ea eb                                      bl #0x310444
0088bf68  04 00 55 e1                                      cmp r5, r4
0088bf6c  f4 ff ff 1a                                      bne #0x88bf44
0088bf70  00 00 96 e5                                      ldr r0, [r6]
0088bf74  00 00 50 e3                                      cmp r0, #0
0088bf78  00 00 00 0a                                      beq #0x88bf80
0088bf7c  30 11 ea eb                                      bl #0x310444
0088bf80  06 00 a0 e1                                      mov r0, r6
0088bf84  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0088bfdc, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox10BankXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEE8_M_eraseEPS1_S6_RKSt12__false_type
; demangled: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >::_M_erase(vox::BankXMLDef*, vox::BankXMLDef*, std::__false_type const&)
; decoder-mode: arm
0088bfdc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088bfe0  04 30 90 e5                                      ldr r3, [r0, #4]
0088bfe4  10 d0 4d e2                                      sub sp, sp, #0x10
0088bfe8  01 50 a0 e1                                      mov r5, r1
0088bfec  00 40 a0 e1                                      mov r4, r0
0088bff0  03 10 a0 e1                                      mov r1, r3
0088bff4  02 00 a0 e1                                      mov r0, r2
0088bff8  00 c0 a0 e3                                      mov ip, #0
0088bffc  05 20 a0 e1                                      mov r2, r5
0088c000  0c 30 8d e2                                      add r3, sp, #0xc
0088c004  00 c0 8d e5                                      str ip, [sp]
0088c008  8e fd ff eb                                      bl #0x88b648
0088c00c  04 70 94 e5                                      ldr r7, [r4, #4]
0088c010  00 80 a0 e1                                      mov r8, r0
0088c014  00 00 57 e1                                      cmp r7, r0
0088c018  0b 00 00 0a                                      beq #0x88c04c
0088c01c  00 60 a0 e1                                      mov r6, r0
0088c020  10 20 86 e2                                      add r2, r6, #0x10
0088c024  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c028  28 60 86 e2                                      add r6, r6, #0x28
0088c02c  02 00 53 e1                                      cmp r3, r2
0088c030  03 00 a0 e1                                      mov r0, r3
0088c034  02 00 00 0a                                      beq #0x88c044
0088c038  00 00 53 e3                                      cmp r3, #0
0088c03c  00 00 00 0a                                      beq #0x88c044
0088c040  ff 10 ea eb                                      bl #0x310444
0088c044  06 00 57 e1                                      cmp r7, r6
0088c048  f4 ff ff 1a                                      bne #0x88c020
0088c04c  04 80 84 e5                                      str r8, [r4, #4]
0088c050  05 00 a0 e1                                      mov r0, r5
0088c054  10 d0 8d e2                                      add sp, sp, #0x10
0088c058  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0088c05c, declared_size=460, range_size=460, mode=arm
; class-group: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox10BankXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEaSERKS5_
; demangled: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >::operator=(std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
0088c05c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088c060  00 00 51 e1                                      cmp r1, r0
0088c064  18 d0 4d e2                                      sub sp, sp, #0x18
0088c068  01 50 a0 e1                                      mov r5, r1
0088c06c  00 40 a0 e1                                      mov r4, r0
0088c070  36 00 00 0a                                      beq #0x88c150
0088c074  04 30 91 e5                                      ldr r3, [r1, #4]
0088c078  00 c0 91 e5                                      ldr ip, [r1]
0088c07c  00 20 90 e5                                      ldr r2, [r0]
0088c080  08 10 90 e5                                      ldr r1, [r0, #8]
0088c084  03 e0 6c e0                                      rsb lr, ip, r3
0088c088  ce e1 a0 e1                                      asr lr, lr, #3
0088c08c  01 10 62 e0                                      rsb r1, r2, r1
0088c090  c1 11 a0 e1                                      asr r1, r1, #3
0088c094  8e 60 8e e0                                      add r6, lr, lr, lsl #1
0088c098  81 70 81 e0                                      add r7, r1, r1, lsl #1
0088c09c  06 62 86 e0                                      add r6, r6, r6, lsl #4
0088c0a0  07 72 87 e0                                      add r7, r7, r7, lsl #4
0088c0a4  06 64 86 e0                                      add r6, r6, r6, lsl #8
0088c0a8  07 74 87 e0                                      add r7, r7, r7, lsl #8
0088c0ac  06 68 86 e0                                      add r6, r6, r6, lsl #16
0088c0b0  07 78 87 e0                                      add r7, r7, r7, lsl #16
0088c0b4  06 61 8e e0                                      add r6, lr, r6, lsl #2
0088c0b8  07 11 81 e0                                      add r1, r1, r7, lsl #2
0088c0bc  01 00 56 e1                                      cmp r6, r1
0088c0c0  3b 00 00 8a                                      bhi #0x88c1b4
0088c0c4  04 00 90 e5                                      ldr r0, [r0, #4]
0088c0c8  00 00 62 e0                                      rsb r0, r2, r0
0088c0cc  c0 01 a0 e1                                      asr r0, r0, #3
0088c0d0  80 10 80 e0                                      add r1, r0, r0, lsl #1
0088c0d4  01 12 81 e0                                      add r1, r1, r1, lsl #4
0088c0d8  01 14 81 e0                                      add r1, r1, r1, lsl #8
0088c0dc  01 18 81 e0                                      add r1, r1, r1, lsl #16
0088c0e0  01 11 80 e0                                      add r1, r0, r1, lsl #2
0088c0e4  01 00 56 e1                                      cmp r6, r1
0088c0e8  1b 00 00 8a                                      bhi #0x88c15c
0088c0ec  0c 00 a0 e1                                      mov r0, ip
0088c0f0  03 10 a0 e1                                      mov r1, r3
0088c0f4  00 c0 a0 e3                                      mov ip, #0
0088c0f8  14 30 8d e2                                      add r3, sp, #0x14
0088c0fc  00 c0 8d e5                                      str ip, [sp]
0088c100  76 fd ff eb                                      bl #0x88b6e0
0088c104  04 70 94 e5                                      ldr r7, [r4, #4]
0088c108  00 50 a0 e1                                      mov r5, r0
0088c10c  00 00 57 e1                                      cmp r7, r0
0088c110  0a 00 00 0a                                      beq #0x88c140
0088c114  10 20 85 e2                                      add r2, r5, #0x10
0088c118  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c11c  28 50 85 e2                                      add r5, r5, #0x28
0088c120  02 00 53 e1                                      cmp r3, r2
0088c124  03 00 a0 e1                                      mov r0, r3
0088c128  02 00 00 0a                                      beq #0x88c138
0088c12c  00 00 53 e3                                      cmp r3, #0
0088c130  00 00 00 0a                                      beq #0x88c138
0088c134  c2 10 ea eb                                      bl #0x310444
0088c138  05 00 57 e1                                      cmp r7, r5
0088c13c  f4 ff ff 1a                                      bne #0x88c114
0088c140  00 80 94 e5                                      ldr r8, [r4]
0088c144  28 30 a0 e3                                      mov r3, #0x28
0088c148  93 86 26 e0                                      mla r6, r3, r6, r8
0088c14c  04 60 84 e5                                      str r6, [r4, #4]
0088c150  04 00 a0 e1                                      mov r0, r4
0088c154  18 d0 8d e2                                      add sp, sp, #0x18
0088c158  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088c15c  28 80 a0 e3                                      mov r8, #0x28
0088c160  98 c1 21 e0                                      mla r1, r8, r1, ip
0088c164  00 70 a0 e3                                      mov r7, #0
0088c168  10 30 8d e2                                      add r3, sp, #0x10
0088c16c  0c 00 a0 e1                                      mov r0, ip
0088c170  00 70 8d e5                                      str r7, [sp]
0088c174  59 fd ff eb                                      bl #0x88b6e0
0088c178  04 20 94 e5                                      ldr r2, [r4, #4]
0088c17c  00 c0 94 e5                                      ldr ip, [r4]
0088c180  03 00 95 e8                                      ldm r5, {r0, r1}
0088c184  02 c0 6c e0                                      rsb ip, ip, r2
0088c188  cc c1 a0 e1                                      asr ip, ip, #3
0088c18c  0c 30 8d e2                                      add r3, sp, #0xc
0088c190  8c e0 8c e0                                      add lr, ip, ip, lsl #1
0088c194  00 70 8d e5                                      str r7, [sp]
0088c198  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0088c19c  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0088c1a0  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0088c1a4  0e c1 8c e0                                      add ip, ip, lr, lsl #2
0088c1a8  98 0c 20 e0                                      mla r0, r8, ip, r0
0088c1ac  99 fb ff eb                                      bl #0x88b018
0088c1b0  e2 ff ff ea                                      b #0x88c140
0088c1b4  18 10 8d e2                                      add r1, sp, #0x18
0088c1b8  10 60 21 e5                                      str r6, [r1, #-0x10]!
0088c1bc  0c 20 a0 e1                                      mov r2, ip
0088c1c0  bb fb ff eb                                      bl #0x88b0b4
0088c1c4  04 50 94 e5                                      ldr r5, [r4, #4]
0088c1c8  00 70 94 e5                                      ldr r7, [r4]
0088c1cc  00 80 a0 e1                                      mov r8, r0
0088c1d0  07 00 55 e1                                      cmp r5, r7
0088c1d4  0b 00 00 0a                                      beq #0x88c208
0088c1d8  28 50 45 e2                                      sub r5, r5, #0x28
0088c1dc  10 20 85 e2                                      add r2, r5, #0x10
0088c1e0  14 30 92 e5                                      ldr r3, [r2, #0x14]
0088c1e4  02 00 53 e1                                      cmp r3, r2
0088c1e8  03 00 a0 e1                                      mov r0, r3
0088c1ec  02 00 00 0a                                      beq #0x88c1fc
0088c1f0  00 00 53 e3                                      cmp r3, #0
0088c1f4  00 00 00 0a                                      beq #0x88c1fc
0088c1f8  91 10 ea eb                                      bl #0x310444
0088c1fc  05 00 57 e1                                      cmp r7, r5
0088c200  f4 ff ff 1a                                      bne #0x88c1d8
0088c204  00 50 94 e5                                      ldr r5, [r4]
0088c208  05 00 a0 e1                                      mov r0, r5
0088c20c  8c 10 ea eb                                      bl #0x310444
0088c210  08 30 9d e5                                      ldr r3, [sp, #8]
0088c214  28 20 a0 e3                                      mov r2, #0x28
0088c218  00 80 84 e5                                      str r8, [r4]
0088c21c  92 83 23 e0                                      mla r3, r2, r3, r8
0088c220  08 30 84 e5                                      str r3, [r4, #8]
0088c224  c6 ff ff ea                                      b #0x88c144

; FUNCTION 0x0088c760, declared_size=248, range_size=248, mode=arm
; class-group: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIN3vox10BankXMLDefENS0_10SAllocatorIS1_LNS0_10VoxMemHintE0EEEEC1Ej
; demangled: std::vector<vox::BankXMLDef, vox::SAllocator<vox::BankXMLDef, (vox::VoxMemHint)0> >::vector(unsigned int)
; decoder-mode: arm
0088c760  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0088c764  e0 60 9f e5                                      ldr r6, [pc, #0xe0]
0088c768  e0 90 9f e5                                      ldr sb, [pc, #0xe0]
0088c76c  28 70 a0 e3                                      mov r7, #0x28
0088c770  06 60 8f e0                                      add r6, pc, r6
0088c774  09 30 96 e7                                      ldr r3, [r6, sb]
0088c778  97 01 07 e0                                      mul r7, r7, r1
0088c77c  00 30 93 e5                                      ldr r3, [r3]
0088c780  00 50 a0 e3                                      mov r5, #0
0088c784  40 d0 4d e2                                      sub sp, sp, #0x40
0088c788  00 40 a0 e1                                      mov r4, r0
0088c78c  00 50 80 e5                                      str r5, [r0]
0088c790  04 50 80 e5                                      str r5, [r0, #4]
0088c794  08 50 80 e5                                      str r5, [r0, #8]
0088c798  05 10 a0 e1                                      mov r1, r5
0088c79c  07 00 a0 e1                                      mov r0, r7
0088c7a0  3c 30 8d e5                                      str r3, [sp, #0x3c]
0088c7a4  a7 0f ea eb                                      bl #0x310648
0088c7a8  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
0088c7ac  07 30 80 e0                                      add r3, r0, r7
0088c7b0  08 30 84 e5                                      str r3, [r4, #8]
0088c7b4  14 a0 8d e2                                      add sl, sp, #0x14
0088c7b8  03 30 a0 e3                                      mov r3, #3
0088c7bc  00 00 84 e5                                      str r0, [r4]
0088c7c0  04 00 84 e5                                      str r0, [r4, #4]
0088c7c4  10 80 8a e2                                      add r8, sl, #0x10
0088c7c8  18 30 8d e5                                      str r3, [sp, #0x18]
0088c7cc  02 31 e0 e3                                      mvn r3, #0x80000000
0088c7d0  01 10 8f e0                                      add r1, pc, r1
0088c7d4  10 20 8d e2                                      add r2, sp, #0x10
0088c7d8  1c 30 8d e5                                      str r3, [sp, #0x1c]
0088c7dc  08 00 a0 e1                                      mov r0, r8
0088c7e0  06 31 a0 e3                                      mov r3, #0x80000001
0088c7e4  20 30 8d e5                                      str r3, [sp, #0x20]
0088c7e8  14 50 8d e5                                      str r5, [sp, #0x14]
0088c7ec  d1 8a ff eb                                      bl #0x86f338
0088c7f0  00 00 94 e5                                      ldr r0, [r4]
0088c7f4  0a 20 a0 e1                                      mov r2, sl
0088c7f8  0c 30 8d e2                                      add r3, sp, #0xc
0088c7fc  07 70 80 e0                                      add r7, r0, r7
0088c800  07 10 a0 e1                                      mov r1, r7
0088c804  00 50 8d e5                                      str r5, [sp]
0088c808  e2 f9 ff eb                                      bl #0x88af98
0088c80c  38 00 9d e5                                      ldr r0, [sp, #0x38]
0088c810  04 70 84 e5                                      str r7, [r4, #4]
0088c814  08 00 50 e1                                      cmp r0, r8
0088c818  02 00 00 0a                                      beq #0x88c828
0088c81c  05 00 50 e1                                      cmp r0, r5
0088c820  00 00 00 0a                                      beq #0x88c828
0088c824  06 0f ea eb                                      bl #0x310444
0088c828  09 30 96 e7                                      ldr r3, [r6, sb]
0088c82c  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
0088c830  04 00 a0 e1                                      mov r0, r4
0088c834  00 30 93 e5                                      ldr r3, [r3]
0088c838  03 00 52 e1                                      cmp r2, r3
0088c83c  01 00 00 1a                                      bne #0x88c848
0088c840  40 d0 8d e2                                      add sp, sp, #0x40
0088c844  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0088c848  b0 06 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0088c84c  20 83 10 00 ac 40 00 00 38 f0 03 00              .byte 0x20, 0x83, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0xf0, 0x03, 0x00
