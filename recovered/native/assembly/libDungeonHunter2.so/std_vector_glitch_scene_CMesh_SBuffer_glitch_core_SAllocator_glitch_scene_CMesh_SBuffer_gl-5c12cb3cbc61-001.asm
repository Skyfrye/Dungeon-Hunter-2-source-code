; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x006bbe48, declared_size=148, range_size=148, mode=arm
; class-group: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS3_SA_RKSt12__false_type
; demangled: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::scene::CMesh::SBuffer*, glitch::scene::CMesh::SBuffer*, std::__false_type const&)
; decoder-mode: arm
006bbe48  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bbe4c  04 40 90 e5                                      ldr r4, [r0, #4]
006bbe50  00 50 a0 e1                                      mov r5, r0
006bbe54  02 80 a0 e1                                      mov r8, r2
006bbe58  04 30 62 e0                                      rsb r3, r2, r4
006bbe5c  43 31 a0 e1                                      asr r3, r3, #2
006bbe60  01 70 a0 e1                                      mov r7, r1
006bbe64  03 a1 83 e0                                      add sl, r3, r3, lsl #2
006bbe68  0a a2 8a e0                                      add sl, sl, sl, lsl #4
006bbe6c  0a a4 8a e0                                      add sl, sl, sl, lsl #8
006bbe70  0a a8 8a e0                                      add sl, sl, sl, lsl #16
006bbe74  8a a0 83 e0                                      add sl, r3, sl, lsl #1
006bbe78  00 00 5a e3                                      cmp sl, #0
006bbe7c  01 a0 a0 d1                                      movle sl, r1
006bbe80  0a 00 00 da                                      ble #0x6bbeb0
006bbe84  0a 60 a0 e1                                      mov r6, sl
006bbe88  00 40 a0 e3                                      mov r4, #0
006bbe8c  04 00 87 e0                                      add r0, r7, r4
006bbe90  04 10 88 e0                                      add r1, r8, r4
006bbe94  8a ff ff eb                                      bl #0x6bbcc4
006bbe98  01 60 56 e2                                      subs r6, r6, #1
006bbe9c  0c 40 84 e2                                      add r4, r4, #0xc
006bbea0  f9 ff ff 1a                                      bne #0x6bbe8c
006bbea4  0c 30 a0 e3                                      mov r3, #0xc
006bbea8  93 7a 2a e0                                      mla sl, r3, sl, r7
006bbeac  04 40 95 e5                                      ldr r4, [r5, #4]
006bbeb0  0a 00 54 e1                                      cmp r4, sl
006bbeb4  05 00 00 0a                                      beq #0x6bbed0
006bbeb8  0a 60 a0 e1                                      mov r6, sl
006bbebc  06 00 a0 e1                                      mov r0, r6
006bbec0  0c 60 86 e2                                      add r6, r6, #0xc
006bbec4  d3 ff ff eb                                      bl #0x6bbe18
006bbec8  06 00 54 e1                                      cmp r4, r6
006bbecc  fa ff ff 1a                                      bne #0x6bbebc
006bbed0  04 a0 85 e5                                      str sl, [r5, #4]
006bbed4  07 00 a0 e1                                      mov r0, r7
006bbed8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x006bbfb0, declared_size=596, range_size=596, mode=arm
; class-group: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEaSERKS9_
; demangled: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::operator=(std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> > const&)
; decoder-mode: arm
006bbfb0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bbfb4  00 00 51 e1                                      cmp r1, r0
006bbfb8  08 d0 4d e2                                      sub sp, sp, #8
006bbfbc  01 90 a0 e1                                      mov sb, r1
006bbfc0  00 40 a0 e1                                      mov r4, r0
006bbfc4  35 00 00 0a                                      beq #0x6bc0a0
006bbfc8  04 30 91 e5                                      ldr r3, [r1, #4]
006bbfcc  00 a0 91 e5                                      ldr sl, [r1]
006bbfd0  00 60 90 e5                                      ldr r6, [r0]
006bbfd4  08 20 90 e5                                      ldr r2, [r0, #8]
006bbfd8  03 10 6a e0                                      rsb r1, sl, r3
006bbfdc  41 11 a0 e1                                      asr r1, r1, #2
006bbfe0  02 20 66 e0                                      rsb r2, r6, r2
006bbfe4  42 21 a0 e1                                      asr r2, r2, #2
006bbfe8  01 51 81 e0                                      add r5, r1, r1, lsl #2
006bbfec  02 c1 82 e0                                      add ip, r2, r2, lsl #2
006bbff0  05 52 85 e0                                      add r5, r5, r5, lsl #4
006bbff4  0c c2 8c e0                                      add ip, ip, ip, lsl #4
006bbff8  05 54 85 e0                                      add r5, r5, r5, lsl #8
006bbffc  0c c4 8c e0                                      add ip, ip, ip, lsl #8
006bc000  05 58 85 e0                                      add r5, r5, r5, lsl #16
006bc004  0c c8 8c e0                                      add ip, ip, ip, lsl #16
006bc008  85 50 81 e0                                      add r5, r1, r5, lsl #1
006bc00c  8c 20 82 e0                                      add r2, r2, ip, lsl #1
006bc010  02 00 55 e1                                      cmp r5, r2
006bc014  05 80 a0 e1                                      mov r8, r5
006bc018  62 00 00 8a                                      bhi #0x6bc1a8
006bc01c  04 70 90 e5                                      ldr r7, [r0, #4]
006bc020  07 10 66 e0                                      rsb r1, r6, r7
006bc024  41 11 a0 e1                                      asr r1, r1, #2
006bc028  01 21 81 e0                                      add r2, r1, r1, lsl #2
006bc02c  02 22 82 e0                                      add r2, r2, r2, lsl #4
006bc030  02 24 82 e0                                      add r2, r2, r2, lsl #8
006bc034  02 28 82 e0                                      add r2, r2, r2, lsl #16
006bc038  82 10 81 e0                                      add r1, r1, r2, lsl #1
006bc03c  01 00 55 e1                                      cmp r5, r1
006bc040  19 00 00 8a                                      bhi #0x6bc0ac
006bc044  00 00 55 e3                                      cmp r5, #0
006bc048  0e 00 00 da                                      ble #0x6bc088
006bc04c  00 70 a0 e3                                      mov r7, #0
006bc050  07 00 86 e0                                      add r0, r6, r7
006bc054  07 10 8a e0                                      add r1, sl, r7
006bc058  19 ff ff eb                                      bl #0x6bbcc4
006bc05c  01 80 58 e2                                      subs r8, r8, #1
006bc060  0c 70 87 e2                                      add r7, r7, #0xc
006bc064  f9 ff ff 1a                                      bne #0x6bc050
006bc068  0c 30 a0 e3                                      mov r3, #0xc
006bc06c  93 65 26 e0                                      mla r6, r3, r5, r6
006bc070  04 70 94 e5                                      ldr r7, [r4, #4]
006bc074  07 00 56 e1                                      cmp r6, r7
006bc078  04 00 00 0a                                      beq #0x6bc090
006bc07c  06 00 a0 e1                                      mov r0, r6
006bc080  0c 60 86 e2                                      add r6, r6, #0xc
006bc084  63 ff ff eb                                      bl #0x6bbe18
006bc088  07 00 56 e1                                      cmp r6, r7
006bc08c  fa ff ff 1a                                      bne #0x6bc07c
006bc090  00 60 94 e5                                      ldr r6, [r4]
006bc094  0c 30 a0 e3                                      mov r3, #0xc
006bc098  93 65 26 e0                                      mla r6, r3, r5, r6
006bc09c  04 60 84 e5                                      str r6, [r4, #4]
006bc0a0  04 00 a0 e1                                      mov r0, r4
006bc0a4  08 d0 8d e2                                      add sp, sp, #8
006bc0a8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bc0ac  0c 20 a0 e3                                      mov r2, #0xc
006bc0b0  92 a1 22 e0                                      mla r2, r2, r1, sl
006bc0b4  02 10 6a e0                                      rsb r1, sl, r2
006bc0b8  41 11 a0 e1                                      asr r1, r1, #2
006bc0bc  01 81 81 e0                                      add r8, r1, r1, lsl #2
006bc0c0  08 82 88 e0                                      add r8, r8, r8, lsl #4
006bc0c4  08 84 88 e0                                      add r8, r8, r8, lsl #8
006bc0c8  08 88 88 e0                                      add r8, r8, r8, lsl #16
006bc0cc  88 80 81 e0                                      add r8, r1, r8, lsl #1
006bc0d0  00 00 58 e3                                      cmp r8, #0
006bc0d4  12 00 00 da                                      ble #0x6bc124
006bc0d8  00 70 a0 e3                                      mov r7, #0
006bc0dc  07 00 86 e0                                      add r0, r6, r7
006bc0e0  07 10 8a e0                                      add r1, sl, r7
006bc0e4  f6 fe ff eb                                      bl #0x6bbcc4
006bc0e8  01 80 58 e2                                      subs r8, r8, #1
006bc0ec  0c 70 87 e2                                      add r7, r7, #0xc
006bc0f0  f9 ff ff 1a                                      bne #0x6bc0dc
006bc0f4  c0 00 94 e8                                      ldm r4, {r6, r7}
006bc0f8  00 c0 99 e5                                      ldr ip, [sb]
006bc0fc  0c 20 a0 e3                                      mov r2, #0xc
006bc100  07 10 66 e0                                      rsb r1, r6, r7
006bc104  41 11 a0 e1                                      asr r1, r1, #2
006bc108  04 30 99 e5                                      ldr r3, [sb, #4]
006bc10c  01 01 81 e0                                      add r0, r1, r1, lsl #2
006bc110  00 02 80 e0                                      add r0, r0, r0, lsl #4
006bc114  00 04 80 e0                                      add r0, r0, r0, lsl #8
006bc118  00 08 80 e0                                      add r0, r0, r0, lsl #16
006bc11c  80 10 81 e0                                      add r1, r1, r0, lsl #1
006bc120  92 c1 22 e0                                      mla r2, r2, r1, ip
006bc124  03 30 62 e0                                      rsb r3, r2, r3
006bc128  43 11 a0 e1                                      asr r1, r3, #2
006bc12c  01 31 81 e0                                      add r3, r1, r1, lsl #2
006bc130  03 32 83 e0                                      add r3, r3, r3, lsl #4
006bc134  03 34 83 e0                                      add r3, r3, r3, lsl #8
006bc138  03 38 83 e0                                      add r3, r3, r3, lsl #16
006bc13c  83 30 81 e0                                      add r3, r1, r3, lsl #1
006bc140  00 00 53 e3                                      cmp r3, #0
006bc144  01 00 00 ca                                      bgt #0x6bc150
006bc148  d1 ff ff ea                                      b #0x6bc094
006bc14c  0c 70 87 e2                                      add r7, r7, #0xc
006bc150  00 10 92 e5                                      ldr r1, [r2]
006bc154  00 10 87 e5                                      str r1, [r7]
006bc158  00 00 51 e3                                      cmp r1, #0
006bc15c  04 00 91 15                                      ldrne r0, [r1, #4]
006bc160  01 00 80 12                                      addne r0, r0, #1
006bc164  04 00 81 15                                      strne r0, [r1, #4]
006bc168  04 10 92 e5                                      ldr r1, [r2, #4]
006bc16c  00 00 51 e3                                      cmp r1, #0
006bc170  04 10 87 e5                                      str r1, [r7, #4]
006bc174  00 00 91 15                                      ldrne r0, [r1]
006bc178  01 00 80 12                                      addne r0, r0, #1
006bc17c  00 00 81 15                                      strne r0, [r1]
006bc180  08 10 92 e5                                      ldr r1, [r2, #8]
006bc184  0c 20 82 e2                                      add r2, r2, #0xc
006bc188  00 00 51 e3                                      cmp r1, #0
006bc18c  08 10 87 e5                                      str r1, [r7, #8]
006bc190  00 00 91 15                                      ldrne r0, [r1]
006bc194  01 00 80 12                                      addne r0, r0, #1
006bc198  00 00 81 15                                      strne r0, [r1]
006bc19c  01 30 53 e2                                      subs r3, r3, #1
006bc1a0  e9 ff ff 1a                                      bne #0x6bc14c
006bc1a4  b9 ff ff ea                                      b #0x6bc090
006bc1a8  08 10 8d e2                                      add r1, sp, #8
006bc1ac  04 50 21 e5                                      str r5, [r1, #-4]!
006bc1b0  0a 20 a0 e1                                      mov r2, sl
006bc1b4  53 ff ff eb                                      bl #0x6bbf08
006bc1b8  04 70 94 e5                                      ldr r7, [r4, #4]
006bc1bc  00 80 94 e5                                      ldr r8, [r4]
006bc1c0  00 60 a0 e1                                      mov r6, r0
006bc1c4  08 00 57 e1                                      cmp r7, r8
006bc1c8  05 00 00 0a                                      beq #0x6bc1e4
006bc1cc  0c 70 47 e2                                      sub r7, r7, #0xc
006bc1d0  07 00 a0 e1                                      mov r0, r7
006bc1d4  0f ff ff eb                                      bl #0x6bbe18
006bc1d8  07 00 58 e1                                      cmp r8, r7
006bc1dc  fa ff ff 1a                                      bne #0x6bc1cc
006bc1e0  00 70 94 e5                                      ldr r7, [r4]
006bc1e4  07 00 a0 e1                                      mov r0, r7
006bc1e8  98 50 f1 eb                                      bl #0x310450
006bc1ec  04 30 9d e5                                      ldr r3, [sp, #4]
006bc1f0  0c 20 a0 e3                                      mov r2, #0xc
006bc1f4  00 60 84 e5                                      str r6, [r4]
006bc1f8  92 63 23 e0                                      mla r3, r2, r3, r6
006bc1fc  08 30 84 e5                                      str r3, [r4, #8]
006bc200  a3 ff ff ea                                      b #0x6bc094

; FUNCTION 0x006bc204, declared_size=68, range_size=68, mode=arm
; class-group: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
006bc204  70 40 2d e9                                      push {r4, r5, r6, lr}
006bc208  04 40 90 e5                                      ldr r4, [r0, #4]
006bc20c  00 50 90 e5                                      ldr r5, [r0]
006bc210  00 60 a0 e1                                      mov r6, r0
006bc214  05 00 54 e1                                      cmp r4, r5
006bc218  04 00 00 0a                                      beq #0x6bc230
006bc21c  0c 40 44 e2                                      sub r4, r4, #0xc
006bc220  04 00 a0 e1                                      mov r0, r4
006bc224  fb fe ff eb                                      bl #0x6bbe18
006bc228  04 00 55 e1                                      cmp r5, r4
006bc22c  fa ff ff 1a                                      bne #0x6bc21c
006bc230  00 00 96 e5                                      ldr r0, [r6]
006bc234  00 00 50 e3                                      cmp r0, #0
006bc238  00 00 00 0a                                      beq #0x6bc240
006bc23c  83 50 f1 eb                                      bl #0x310450
006bc240  06 00 a0 e1                                      mov r0, r6
006bc244  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x006bc470, declared_size=500, range_size=500, mode=arm
; class-group: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch5scene5CMesh7SBufferENS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS3_
; demangled: std::vector<glitch::scene::CMesh::SBuffer, glitch::core::SAllocator<glitch::scene::CMesh::SBuffer, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::scene::CMesh::SBuffer const&)
; decoder-mode: arm
006bc470  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006bc474  48 00 90 e9                                      ldmib r0, {r3, r6}
006bc478  00 40 a0 e1                                      mov r4, r0
006bc47c  01 50 a0 e1                                      mov r5, r1
006bc480  06 00 53 e1                                      cmp r3, r6
006bc484  15 00 00 0a                                      beq #0x6bc4e0
006bc488  00 20 91 e5                                      ldr r2, [r1]
006bc48c  00 20 83 e5                                      str r2, [r3]
006bc490  00 00 52 e3                                      cmp r2, #0
006bc494  04 10 92 15                                      ldrne r1, [r2, #4]
006bc498  01 10 81 12                                      addne r1, r1, #1
006bc49c  04 10 82 15                                      strne r1, [r2, #4]
006bc4a0  04 20 95 e5                                      ldr r2, [r5, #4]
006bc4a4  04 20 83 e5                                      str r2, [r3, #4]
006bc4a8  00 00 52 e3                                      cmp r2, #0
006bc4ac  00 10 92 15                                      ldrne r1, [r2]
006bc4b0  01 10 81 12                                      addne r1, r1, #1
006bc4b4  00 10 82 15                                      strne r1, [r2]
006bc4b8  08 20 95 e5                                      ldr r2, [r5, #8]
006bc4bc  08 20 83 e5                                      str r2, [r3, #8]
006bc4c0  00 00 52 e3                                      cmp r2, #0
006bc4c4  00 30 92 15                                      ldrne r3, [r2]
006bc4c8  01 30 83 12                                      addne r3, r3, #1
006bc4cc  00 30 82 15                                      strne r3, [r2]
006bc4d0  04 30 90 e5                                      ldr r3, [r0, #4]
006bc4d4  0c 30 83 e2                                      add r3, r3, #0xc
006bc4d8  04 30 80 e5                                      str r3, [r0, #4]
006bc4dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bc4e0  00 20 90 e5                                      ldr r2, [r0]
006bc4e4  55 35 05 e3                                      movw r3, #0x5555
006bc4e8  03 37 83 e1                                      orr r3, r3, r3, lsl #14
006bc4ec  06 20 62 e0                                      rsb r2, r2, r6
006bc4f0  42 21 a0 e1                                      asr r2, r2, #2
006bc4f4  02 11 82 e0                                      add r1, r2, r2, lsl #2
006bc4f8  01 12 81 e0                                      add r1, r1, r1, lsl #4
006bc4fc  01 14 81 e0                                      add r1, r1, r1, lsl #8
006bc500  01 18 81 e0                                      add r1, r1, r1, lsl #16
006bc504  81 20 82 e0                                      add r2, r2, r1, lsl #1
006bc508  01 00 52 e3                                      cmp r2, #1
006bc50c  02 10 82 20                                      addhs r1, r2, r2
006bc510  01 10 82 32                                      addlo r1, r2, #1
006bc514  03 00 51 e1                                      cmp r1, r3
006bc518  4c 00 00 9a                                      bls #0x6bc650
006bc51c  03 70 e0 e3                                      mvn r7, #3
006bc520  07 00 a0 e1                                      mov r0, r7
006bc524  00 10 a0 e3                                      mov r1, #0
006bc528  0e 50 f1 eb                                      bl #0x310568
006bc52c  00 30 94 e5                                      ldr r3, [r4]
006bc530  00 80 a0 e1                                      mov r8, r0
006bc534  06 60 63 e0                                      rsb r6, r3, r6
006bc538  46 21 a0 e1                                      asr r2, r6, #2
006bc53c  02 61 82 e0                                      add r6, r2, r2, lsl #2
006bc540  06 62 86 e0                                      add r6, r6, r6, lsl #4
006bc544  06 64 86 e0                                      add r6, r6, r6, lsl #8
006bc548  06 68 86 e0                                      add r6, r6, r6, lsl #16
006bc54c  86 60 82 e0                                      add r6, r2, r6, lsl #1
006bc550  00 00 56 e3                                      cmp r6, #0
006bc554  00 a0 a0 d1                                      movle sl, r0
006bc558  19 00 00 da                                      ble #0x6bc5c4
006bc55c  06 00 a0 e1                                      mov r0, r6
006bc560  08 20 a0 e1                                      mov r2, r8
006bc564  00 10 93 e5                                      ldr r1, [r3]
006bc568  00 10 82 e5                                      str r1, [r2]
006bc56c  00 00 51 e3                                      cmp r1, #0
006bc570  04 c0 91 15                                      ldrne ip, [r1, #4]
006bc574  01 c0 8c 12                                      addne ip, ip, #1
006bc578  04 c0 81 15                                      strne ip, [r1, #4]
006bc57c  04 10 93 e5                                      ldr r1, [r3, #4]
006bc580  04 10 82 e5                                      str r1, [r2, #4]
006bc584  00 00 51 e3                                      cmp r1, #0
006bc588  00 c0 91 15                                      ldrne ip, [r1]
006bc58c  01 c0 8c 12                                      addne ip, ip, #1
006bc590  00 c0 81 15                                      strne ip, [r1]
006bc594  08 10 93 e5                                      ldr r1, [r3, #8]
006bc598  0c 30 83 e2                                      add r3, r3, #0xc
006bc59c  00 00 51 e3                                      cmp r1, #0
006bc5a0  08 10 82 e5                                      str r1, [r2, #8]
006bc5a4  00 c0 91 15                                      ldrne ip, [r1]
006bc5a8  0c 20 82 e2                                      add r2, r2, #0xc
006bc5ac  01 c0 8c 12                                      addne ip, ip, #1
006bc5b0  00 c0 81 15                                      strne ip, [r1]
006bc5b4  01 00 50 e2                                      subs r0, r0, #1
006bc5b8  e9 ff ff 1a                                      bne #0x6bc564
006bc5bc  0c a0 a0 e3                                      mov sl, #0xc
006bc5c0  9a 86 2a e0                                      mla sl, sl, r6, r8
006bc5c4  00 30 95 e5                                      ldr r3, [r5]
006bc5c8  00 30 8a e5                                      str r3, [sl]
006bc5cc  00 00 53 e3                                      cmp r3, #0
006bc5d0  04 20 93 15                                      ldrne r2, [r3, #4]
006bc5d4  01 20 82 12                                      addne r2, r2, #1
006bc5d8  04 20 83 15                                      strne r2, [r3, #4]
006bc5dc  04 30 95 e5                                      ldr r3, [r5, #4]
006bc5e0  04 30 8a e5                                      str r3, [sl, #4]
006bc5e4  00 00 53 e3                                      cmp r3, #0
006bc5e8  00 20 93 15                                      ldrne r2, [r3]
006bc5ec  01 20 82 12                                      addne r2, r2, #1
006bc5f0  00 20 83 15                                      strne r2, [r3]
006bc5f4  08 30 95 e5                                      ldr r3, [r5, #8]
006bc5f8  08 30 8a e5                                      str r3, [sl, #8]
006bc5fc  00 00 53 e3                                      cmp r3, #0
006bc600  00 20 93 15                                      ldrne r2, [r3]
006bc604  0c a0 8a e2                                      add sl, sl, #0xc
006bc608  01 20 82 12                                      addne r2, r2, #1
006bc60c  00 20 83 15                                      strne r2, [r3]
006bc610  04 50 94 e5                                      ldr r5, [r4, #4]
006bc614  00 60 94 e5                                      ldr r6, [r4]
006bc618  06 00 55 e1                                      cmp r5, r6
006bc61c  05 00 00 0a                                      beq #0x6bc638
006bc620  0c 50 45 e2                                      sub r5, r5, #0xc
006bc624  05 00 a0 e1                                      mov r0, r5
006bc628  fa fd ff eb                                      bl #0x6bbe18
006bc62c  05 00 56 e1                                      cmp r6, r5
006bc630  fa ff ff 1a                                      bne #0x6bc620
006bc634  00 60 94 e5                                      ldr r6, [r4]
006bc638  06 00 a0 e1                                      mov r0, r6
006bc63c  07 70 88 e0                                      add r7, r8, r7
006bc640  82 4f f1 eb                                      bl #0x310450
006bc644  08 70 84 e5                                      str r7, [r4, #8]
006bc648  00 05 84 e8                                      stm r4, {r8, sl}
006bc64c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006bc650  01 00 52 e1                                      cmp r2, r1
006bc654  b0 ff ff 8a                                      bhi #0x6bc51c
006bc658  0c 70 a0 e3                                      mov r7, #0xc
006bc65c  97 01 07 e0                                      mul r7, r7, r1
006bc660  ae ff ff ea                                      b #0x6bc520
