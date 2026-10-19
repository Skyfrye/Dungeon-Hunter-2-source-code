; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00700a18, declared_size=188, range_size=188, mode=arm
; class-group: std::vector<std::pair<unsigned short, unsigned short>, glitch::core::SAllocator<std::pair<unsigned short, unsigned short>, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorISt4pairIttEN6glitch4core10SAllocatorIS1_LNS2_6memory13E_MEMORY_HINTE0EEEE18_M_insert_overflowEPS1_RKS1_RKSt11__true_typejb.clone.5
; demangled: std::vector<std::pair<unsigned short, unsigned short>, glitch::core::SAllocator<std::pair<unsigned short, unsigned short>, (glitch::memory::E_MEMORY_HINT)0> >::_M_insert_overflow(std::pair<unsigned short, unsigned short>*, std::pair<unsigned short, unsigned short> const&, std::__true_type const&, unsigned int, bool) [clone .clone.5]
; decoder-mode: arm
00700a18  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00700a1c  00 40 a0 e1                                      mov r4, r0
00700a20  00 30 94 e5                                      ldr r3, [r4]
00700a24  04 00 90 e5                                      ldr r0, [r0, #4]
00700a28  01 60 a0 e1                                      mov r6, r1
00700a2c  02 70 a0 e1                                      mov r7, r2
00700a30  00 30 63 e0                                      rsb r3, r3, r0
00700a34  43 31 a0 e1                                      asr r3, r3, #2
00700a38  01 00 53 e3                                      cmp r3, #1
00700a3c  03 80 83 20                                      addhs r8, r3, r3
00700a40  01 80 83 32                                      addlo r8, r3, #1
00700a44  07 01 78 e3                                      cmn r8, #0xc0000001
00700a48  14 00 00 8a                                      bhi #0x700aa0
00700a4c  08 00 53 e1                                      cmp r3, r8
00700a50  08 81 a0 91                                      lslls r8, r8, #2
00700a54  11 00 00 8a                                      bhi #0x700aa0
00700a58  00 10 a0 e3                                      mov r1, #0
00700a5c  08 00 a0 e1                                      mov r0, r8
00700a60  c0 3e f0 eb                                      bl #0x310568
00700a64  00 10 94 e5                                      ldr r1, [r4]
00700a68  00 50 a0 e1                                      mov r5, r0
00700a6c  01 60 56 e0                                      subs r6, r6, r1
00700a70  00 60 a0 01                                      moveq r6, r0
00700a74  12 00 00 1a                                      bne #0x700ac4
00700a78  b0 30 d7 e1                                      ldrh r3, [r7]
00700a7c  08 80 85 e0                                      add r8, r5, r8
00700a80  b0 30 c6 e1                                      strh r3, [r6]
00700a84  b2 70 d7 e1                                      ldrh r7, [r7, #2]
00700a88  b2 70 c6 e1                                      strh r7, [r6, #2]
00700a8c  00 00 94 e5                                      ldr r0, [r4]
00700a90  04 60 86 e2                                      add r6, r6, #4
00700a94  6d 3e f0 eb                                      bl #0x310450
00700a98  60 01 84 e8                                      stm r4, {r5, r6, r8}
00700a9c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00700aa0  03 80 e0 e3                                      mvn r8, #3
00700aa4  00 10 a0 e3                                      mov r1, #0
00700aa8  08 00 a0 e1                                      mov r0, r8
00700aac  ad 3e f0 eb                                      bl #0x310568
00700ab0  00 10 94 e5                                      ldr r1, [r4]
00700ab4  00 50 a0 e1                                      mov r5, r0
00700ab8  01 60 56 e0                                      subs r6, r6, r1
00700abc  00 60 a0 01                                      moveq r6, r0
00700ac0  ec ff ff 0a                                      beq #0x700a78
00700ac4  06 20 a0 e1                                      mov r2, r6
00700ac8  1a 35 f0 eb                                      bl #0x30df38
00700acc  06 60 80 e0                                      add r6, r0, r6
00700ad0  e8 ff ff ea                                      b #0x700a78
