; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008713fc, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEEC1ERKS4_
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::vector(std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
008713fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00871400  88 00 91 e8                                      ldm r1, {r3, r7}
00871404  01 60 a0 e1                                      mov r6, r1
00871408  00 10 a0 e3                                      mov r1, #0
0087140c  07 70 63 e0                                      rsb r7, r3, r7
00871410  03 70 c7 e3                                      bic r7, r7, #3
00871414  00 40 a0 e1                                      mov r4, r0
00871418  00 10 80 e5                                      str r1, [r0]
0087141c  04 10 80 e5                                      str r1, [r0, #4]
00871420  08 10 80 e5                                      str r1, [r0, #8]
00871424  07 00 a0 e1                                      mov r0, r7
00871428  86 7c ea eb                                      bl #0x310648
0087142c  07 70 80 e0                                      add r7, r0, r7
00871430  08 70 84 e5                                      str r7, [r4, #8]
00871434  00 00 84 e5                                      str r0, [r4]
00871438  04 00 84 e5                                      str r0, [r4, #4]
0087143c  22 00 96 e8                                      ldm r6, {r1, r5}
00871440  00 30 a0 e1                                      mov r3, r0
00871444  05 00 51 e1                                      cmp r1, r5
00871448  03 00 00 0a                                      beq #0x87145c
0087144c  05 50 61 e0                                      rsb r5, r1, r5
00871450  05 20 a0 e1                                      mov r2, r5
00871454  03 75 ea eb                                      bl #0x30e868
00871458  05 30 80 e0                                      add r3, r0, r5
0087145c  04 30 84 e5                                      str r3, [r4, #4]
00871460  04 00 a0 e1                                      mov r0, r4
00871464  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00871dc0, declared_size=248, range_size=248, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEEaSERKS4_
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::operator=(std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> > const&)
; decoder-mode: arm
00871dc0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00871dc4  00 00 51 e1                                      cmp r1, r0
00871dc8  0c d0 4d e2                                      sub sp, sp, #0xc
00871dcc  01 60 a0 e1                                      mov r6, r1
00871dd0  00 40 a0 e1                                      mov r4, r0
00871dd4  16 00 00 0a                                      beq #0x871e34
00871dd8  0c 00 91 e8                                      ldm r1, {r2, r3}
00871ddc  00 70 90 e5                                      ldr r7, [r0]
00871de0  08 10 90 e5                                      ldr r1, [r0, #8]
00871de4  03 c0 62 e0                                      rsb ip, r2, r3
00871de8  4c 51 a0 e1                                      asr r5, ip, #2
00871dec  01 10 67 e0                                      rsb r1, r7, r1
00871df0  41 01 55 e1                                      cmp r5, r1, asr #2
00871df4  19 00 00 8a                                      bhi #0x871e60
00871df8  04 00 90 e5                                      ldr r0, [r0, #4]
00871dfc  00 10 67 e0                                      rsb r1, r7, r0
00871e00  41 11 a0 e1                                      asr r1, r1, #2
00871e04  01 00 55 e1                                      cmp r5, r1
00871e08  0c 00 00 9a                                      bls #0x871e40
00871e0c  01 11 82 e0                                      add r1, r2, r1, lsl #2
00871e10  02 c0 51 e0                                      subs ip, r1, r2
00871e14  1c 00 00 1a                                      bne #0x871e8c
00871e18  03 00 51 e1                                      cmp r1, r3
00871e1c  02 00 00 0a                                      beq #0x871e2c
00871e20  03 20 61 e0                                      rsb r2, r1, r3
00871e24  8f 72 ea eb                                      bl #0x30e868
00871e28  00 70 94 e5                                      ldr r7, [r4]
00871e2c  05 51 87 e0                                      add r5, r7, r5, lsl #2
00871e30  04 50 84 e5                                      str r5, [r4, #4]
00871e34  04 00 a0 e1                                      mov r0, r4
00871e38  0c d0 8d e2                                      add sp, sp, #0xc
00871e3c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00871e40  00 00 5c e3                                      cmp ip, #0
00871e44  f8 ff ff 0a                                      beq #0x871e2c
00871e48  07 00 a0 e1                                      mov r0, r7
00871e4c  02 10 a0 e1                                      mov r1, r2
00871e50  0c 20 a0 e1                                      mov r2, ip
00871e54  37 70 ea eb                                      bl #0x30df38
00871e58  00 70 94 e5                                      ldr r7, [r4]
00871e5c  f2 ff ff ea                                      b #0x871e2c
00871e60  08 10 8d e2                                      add r1, sp, #8
00871e64  04 50 21 e5                                      str r5, [r1, #-4]!
00871e68  cb fd ff eb                                      bl #0x87159c
00871e6c  00 70 a0 e1                                      mov r7, r0
00871e70  00 00 94 e5                                      ldr r0, [r4]
00871e74  72 79 ea eb                                      bl #0x310444
00871e78  04 30 9d e5                                      ldr r3, [sp, #4]
00871e7c  00 70 84 e5                                      str r7, [r4]
00871e80  03 31 87 e0                                      add r3, r7, r3, lsl #2
00871e84  08 30 84 e5                                      str r3, [r4, #8]
00871e88  e7 ff ff ea                                      b #0x871e2c
00871e8c  02 10 a0 e1                                      mov r1, r2
00871e90  07 00 a0 e1                                      mov r0, r7
00871e94  0c 20 a0 e1                                      mov r2, ip
00871e98  26 70 ea eb                                      bl #0x30df38
00871e9c  04 00 94 e5                                      ldr r0, [r4, #4]
00871ea0  00 70 94 e5                                      ldr r7, [r4]
00871ea4  0c 00 96 e8                                      ldm r6, {r2, r3}
00871ea8  00 10 67 e0                                      rsb r1, r7, r0
00871eac  03 10 c1 e3                                      bic r1, r1, #3
00871eb0  01 10 82 e0                                      add r1, r2, r1
00871eb4  d7 ff ff ea                                      b #0x871e18

; FUNCTION 0x00872c40, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.1
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
00872c40  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00872c44  00 40 a0 e1                                      mov r4, r0
00872c48  00 30 94 e5                                      ldr r3, [r4]
00872c4c  04 00 90 e5                                      ldr r0, [r0, #4]
00872c50  01 60 a0 e1                                      mov r6, r1
00872c54  02 80 a0 e1                                      mov r8, r2
00872c58  00 30 63 e0                                      rsb r3, r3, r0
00872c5c  43 31 a0 e1                                      asr r3, r3, #2
00872c60  01 00 53 e3                                      cmp r3, #1
00872c64  03 70 83 20                                      addhs r7, r3, r3
00872c68  01 70 83 32                                      addlo r7, r3, #1
00872c6c  07 01 77 e3                                      cmn r7, #0xc0000001
00872c70  11 00 00 8a                                      bhi #0x872cbc
00872c74  07 00 53 e1                                      cmp r3, r7
00872c78  07 71 a0 91                                      lslls r7, r7, #2
00872c7c  0e 00 00 8a                                      bhi #0x872cbc
00872c80  00 10 a0 e3                                      mov r1, #0
00872c84  07 00 a0 e1                                      mov r0, r7
00872c88  6e 76 ea eb                                      bl #0x310648
00872c8c  00 10 94 e5                                      ldr r1, [r4]
00872c90  00 50 a0 e1                                      mov r5, r0
00872c94  01 60 56 e0                                      subs r6, r6, r1
00872c98  00 60 a0 01                                      moveq r6, r0
00872c9c  0f 00 00 1a                                      bne #0x872ce0
00872ca0  00 30 98 e5                                      ldr r3, [r8]
00872ca4  07 70 85 e0                                      add r7, r5, r7
00872ca8  04 30 86 e4                                      str r3, [r6], #4
00872cac  00 00 94 e5                                      ldr r0, [r4]
00872cb0  e3 75 ea eb                                      bl #0x310444
00872cb4  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00872cb8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00872cbc  03 70 e0 e3                                      mvn r7, #3
00872cc0  00 10 a0 e3                                      mov r1, #0
00872cc4  07 00 a0 e1                                      mov r0, r7
00872cc8  5e 76 ea eb                                      bl #0x310648
00872ccc  00 10 94 e5                                      ldr r1, [r4]
00872cd0  00 50 a0 e1                                      mov r5, r0
00872cd4  01 60 56 e0                                      subs r6, r6, r1
00872cd8  00 60 a0 01                                      moveq r6, r0
00872cdc  ef ff ff 0a                                      beq #0x872ca0
00872ce0  06 20 a0 e1                                      mov r2, r6
00872ce4  93 6c ea eb                                      bl #0x30df38
00872ce8  06 60 80 e0                                      add r6, r0, r6
00872cec  eb ff ff ea                                      b #0x872ca0

; FUNCTION 0x008837ec, declared_size=144, range_size=144, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.4
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.4]
; decoder-mode: arm
008837ec  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008837f0  00 40 a0 e1                                      mov r4, r0
008837f4  00 30 94 e5                                      ldr r3, [r4]
008837f8  04 00 90 e5                                      ldr r0, [r0, #4]
008837fc  01 60 a0 e1                                      mov r6, r1
00883800  02 80 a0 e1                                      mov r8, r2
00883804  00 30 63 e0                                      rsb r3, r3, r0
00883808  43 31 a0 e1                                      asr r3, r3, #2
0088380c  01 00 53 e3                                      cmp r3, #1
00883810  03 70 83 20                                      addhs r7, r3, r3
00883814  01 70 83 32                                      addlo r7, r3, #1
00883818  07 01 77 e3                                      cmn r7, #0xc0000001
0088381c  14 00 00 8a                                      bhi #0x883874
00883820  07 00 53 e1                                      cmp r3, r7
00883824  07 71 a0 91                                      lslls r7, r7, #2
00883828  11 00 00 8a                                      bhi #0x883874
0088382c  00 10 a0 e3                                      mov r1, #0
00883830  07 00 a0 e1                                      mov r0, r7
00883834  83 33 ea eb                                      bl #0x310648
00883838  00 10 94 e5                                      ldr r1, [r4]
0088383c  00 50 a0 e1                                      mov r5, r0
00883840  01 60 56 e0                                      subs r6, r6, r1
00883844  00 60 a0 01                                      moveq r6, r0
00883848  02 00 00 0a                                      beq #0x883858
0088384c  06 20 a0 e1                                      mov r2, r6
00883850  b8 29 ea eb                                      bl #0x30df38
00883854  06 60 80 e0                                      add r6, r0, r6
00883858  00 30 98 e5                                      ldr r3, [r8]
0088385c  07 70 85 e0                                      add r7, r5, r7
00883860  04 30 86 e4                                      str r3, [r6], #4
00883864  00 00 94 e5                                      ldr r0, [r4]
00883868  f5 32 ea eb                                      bl #0x310444
0088386c  e0 00 84 e8                                      stm r4, {r5, r6, r7}
00883870  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00883874  03 70 e0 e3                                      mvn r7, #3
00883878  eb ff ff ea                                      b #0x88382c

; FUNCTION 0x0088babc, declared_size=176, range_size=176, mode=arm
; class-group: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >
; alias: _ZNSt6vectorIiN3vox10SAllocatorIiLNS0_10VoxMemHintE0EEEE18_M_insert_overflowEPiRKiRKSt11__true_typejb.clone.1
; demangled: std::vector<int, vox::SAllocator<int, (vox::VoxMemHint)0> >::_M_insert_overflow(int*, int const&, std::__true_type const&, unsigned int, bool) [clone .clone.1]
; decoder-mode: arm
0088babc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0088bac0  00 40 a0 e1                                      mov r4, r0
0088bac4  00 30 94 e5                                      ldr r3, [r4]
0088bac8  04 00 90 e5                                      ldr r0, [r0, #4]
0088bacc  01 60 a0 e1                                      mov r6, r1
0088bad0  02 80 a0 e1                                      mov r8, r2
0088bad4  00 30 63 e0                                      rsb r3, r3, r0
0088bad8  43 31 a0 e1                                      asr r3, r3, #2
0088badc  01 00 53 e3                                      cmp r3, #1
0088bae0  03 70 83 20                                      addhs r7, r3, r3
0088bae4  01 70 83 32                                      addlo r7, r3, #1
0088bae8  07 01 77 e3                                      cmn r7, #0xc0000001
0088baec  11 00 00 8a                                      bhi #0x88bb38
0088baf0  07 00 53 e1                                      cmp r3, r7
0088baf4  07 71 a0 91                                      lslls r7, r7, #2
0088baf8  0e 00 00 8a                                      bhi #0x88bb38
0088bafc  00 10 a0 e3                                      mov r1, #0
0088bb00  07 00 a0 e1                                      mov r0, r7
0088bb04  cf 12 ea eb                                      bl #0x310648
0088bb08  00 10 94 e5                                      ldr r1, [r4]
0088bb0c  00 50 a0 e1                                      mov r5, r0
0088bb10  01 60 56 e0                                      subs r6, r6, r1
0088bb14  00 60 a0 01                                      moveq r6, r0
0088bb18  0f 00 00 1a                                      bne #0x88bb5c
0088bb1c  00 30 98 e5                                      ldr r3, [r8]
0088bb20  07 70 85 e0                                      add r7, r5, r7
0088bb24  04 30 86 e4                                      str r3, [r6], #4
0088bb28  00 00 94 e5                                      ldr r0, [r4]
0088bb2c  44 12 ea eb                                      bl #0x310444
0088bb30  e0 00 84 e8                                      stm r4, {r5, r6, r7}
0088bb34  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0088bb38  03 70 e0 e3                                      mvn r7, #3
0088bb3c  00 10 a0 e3                                      mov r1, #0
0088bb40  07 00 a0 e1                                      mov r0, r7
0088bb44  bf 12 ea eb                                      bl #0x310648
0088bb48  00 10 94 e5                                      ldr r1, [r4]
0088bb4c  00 50 a0 e1                                      mov r5, r0
0088bb50  01 60 56 e0                                      subs r6, r6, r1
0088bb54  00 60 a0 01                                      moveq r6, r0
0088bb58  ef ff ff 0a                                      beq #0x88bb1c
0088bb5c  06 20 a0 e1                                      mov r2, r6
0088bb60  f4 08 ea eb                                      bl #0x30df38
0088bb64  06 60 80 e0                                      add r6, r0, r6
0088bb68  eb ff ff ea                                      b #0x88bb1c
