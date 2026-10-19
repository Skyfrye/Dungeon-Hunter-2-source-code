; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00573414, declared_size=156, range_size=156, mode=arm
; class-group: std::vector<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io14CXMLReaderImplIwNS0_17IReferenceCountedEE10SAttributeENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE8_M_eraseEPS5_SC_RKSt12__false_type
; demangled: std::vector<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >::_M_erase(glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, std::__false_type const&)
; decoder-mode: arm
00573414  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00573418  04 30 90 e5                                      ldr r3, [r0, #4]
0057341c  10 d0 4d e2                                      sub sp, sp, #0x10
00573420  01 50 a0 e1                                      mov r5, r1
00573424  00 40 a0 e1                                      mov r4, r0
00573428  03 10 a0 e1                                      mov r1, r3
0057342c  02 00 a0 e1                                      mov r0, r2
00573430  00 c0 a0 e3                                      mov ip, #0
00573434  05 20 a0 e1                                      mov r2, r5
00573438  0c 30 8d e2                                      add r3, sp, #0xc
0057343c  00 c0 8d e5                                      str ip, [sp]
00573440  a9 ff ff eb                                      bl #0x5732ec
00573444  04 70 94 e5                                      ldr r7, [r4, #4]
00573448  00 80 a0 e1                                      mov r8, r0
0057344c  00 00 57 e1                                      cmp r7, r0
00573450  12 00 00 0a                                      beq #0x5734a0
00573454  00 60 a0 e1                                      mov r6, r0
00573458  48 20 86 e2                                      add r2, r6, #0x48
0057345c  44 30 92 e5                                      ldr r3, [r2, #0x44]
00573460  02 00 53 e1                                      cmp r3, r2
00573464  03 00 a0 e1                                      mov r0, r3
00573468  02 00 00 0a                                      beq #0x573478
0057346c  00 00 53 e3                                      cmp r3, #0
00573470  00 00 00 0a                                      beq #0x573478
00573474  f5 73 f6 eb                                      bl #0x310450
00573478  44 30 96 e5                                      ldr r3, [r6, #0x44]
0057347c  06 00 53 e1                                      cmp r3, r6
00573480  03 00 a0 e1                                      mov r0, r3
00573484  90 60 86 e2                                      add r6, r6, #0x90
00573488  02 00 00 0a                                      beq #0x573498
0057348c  00 00 53 e3                                      cmp r3, #0
00573490  00 00 00 0a                                      beq #0x573498
00573494  ed 73 f6 eb                                      bl #0x310450
00573498  06 00 57 e1                                      cmp r7, r6
0057349c  ed ff ff 1a                                      bne #0x573458
005734a0  04 80 84 e5                                      str r8, [r4, #4]
005734a4  05 00 a0 e1                                      mov r0, r5
005734a8  10 d0 8d e2                                      add sp, sp, #0x10
005734ac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005734b0, declared_size=352, range_size=352, mode=arm
; class-group: std::vector<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io14CXMLReaderImplIwNS0_17IReferenceCountedEE10SAttributeENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEE9push_backERKS5_
; demangled: std::vector<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >::push_back(glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute const&)
; decoder-mode: arm
005734b0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005734b4  04 80 90 e5                                      ldr r8, [r0, #4]
005734b8  08 30 90 e5                                      ldr r3, [r0, #8]
005734bc  14 d0 4d e2                                      sub sp, sp, #0x14
005734c0  00 40 a0 e1                                      mov r4, r0
005734c4  03 00 58 e1                                      cmp r8, r3
005734c8  01 50 a0 e1                                      mov r5, r1
005734cc  09 00 00 0a                                      beq #0x5734f8
005734d0  08 00 a0 e1                                      mov r0, r8
005734d4  96 fd ff eb                                      bl #0x572b34
005734d8  48 00 88 e2                                      add r0, r8, #0x48
005734dc  48 10 85 e2                                      add r1, r5, #0x48
005734e0  93 fd ff eb                                      bl #0x572b34
005734e4  04 30 94 e5                                      ldr r3, [r4, #4]
005734e8  90 30 83 e2                                      add r3, r3, #0x90
005734ec  04 30 84 e5                                      str r3, [r4, #4]
005734f0  14 d0 8d e2                                      add sp, sp, #0x14
005734f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005734f8  00 20 90 e5                                      ldr r2, [r0]
005734fc  71 3c 01 e3                                      movw r3, #0x1c71
00573500  03 36 83 e1                                      orr r3, r3, r3, lsl #12
00573504  08 20 62 e0                                      rsb r2, r2, r8
00573508  42 22 a0 e1                                      asr r2, r2, #4
0057350c  82 11 a0 e1                                      lsl r1, r2, #3
00573510  01 10 62 e0                                      rsb r1, r2, r1
00573514  01 13 81 e0                                      add r1, r1, r1, lsl #6
00573518  81 11 82 e0                                      add r1, r2, r1, lsl #3
0057351c  81 07 a0 e1                                      lsl r0, r1, #0xf
00573520  00 10 61 e0                                      rsb r1, r1, r0
00573524  81 21 82 e0                                      add r2, r2, r1, lsl #3
00573528  01 00 52 e3                                      cmp r2, #1
0057352c  02 10 82 20                                      addhs r1, r2, r2
00573530  01 10 82 32                                      addlo r1, r2, #1
00573534  03 00 51 e1                                      cmp r1, r3
00573538  2f 00 00 9a                                      bls #0x5735fc
0057353c  6f 70 e0 e3                                      mvn r7, #0x6f
00573540  00 10 a0 e3                                      mov r1, #0
00573544  07 00 a0 e1                                      mov r0, r7
00573548  06 74 f6 eb                                      bl #0x310568
0057354c  00 60 a0 e1                                      mov r6, r0
00573550  00 c0 a0 e3                                      mov ip, #0
00573554  08 10 a0 e1                                      mov r1, r8
00573558  06 20 a0 e1                                      mov r2, r6
0057355c  0c 30 8d e2                                      add r3, sp, #0xc
00573560  00 00 94 e5                                      ldr r0, [r4]
00573564  00 c0 8d e5                                      str ip, [sp]
00573568  93 fd ff eb                                      bl #0x572bbc
0057356c  05 10 a0 e1                                      mov r1, r5
00573570  00 80 a0 e1                                      mov r8, r0
00573574  6e fd ff eb                                      bl #0x572b34
00573578  48 10 85 e2                                      add r1, r5, #0x48
0057357c  48 00 88 e2                                      add r0, r8, #0x48
00573580  6b fd ff eb                                      bl #0x572b34
00573584  04 50 94 e5                                      ldr r5, [r4, #4]
00573588  00 a0 94 e5                                      ldr sl, [r4]
0057358c  90 80 88 e2                                      add r8, r8, #0x90
00573590  0a 00 55 e1                                      cmp r5, sl
00573594  12 00 00 0a                                      beq #0x5735e4
00573598  90 50 45 e2                                      sub r5, r5, #0x90
0057359c  48 20 85 e2                                      add r2, r5, #0x48
005735a0  44 30 92 e5                                      ldr r3, [r2, #0x44]
005735a4  02 00 53 e1                                      cmp r3, r2
005735a8  03 00 a0 e1                                      mov r0, r3
005735ac  02 00 00 0a                                      beq #0x5735bc
005735b0  00 00 53 e3                                      cmp r3, #0
005735b4  00 00 00 0a                                      beq #0x5735bc
005735b8  a4 73 f6 eb                                      bl #0x310450
005735bc  44 30 95 e5                                      ldr r3, [r5, #0x44]
005735c0  05 00 53 e1                                      cmp r3, r5
005735c4  03 00 a0 e1                                      mov r0, r3
005735c8  02 00 00 0a                                      beq #0x5735d8
005735cc  00 00 53 e3                                      cmp r3, #0
005735d0  00 00 00 0a                                      beq #0x5735d8
005735d4  9d 73 f6 eb                                      bl #0x310450
005735d8  05 00 5a e1                                      cmp sl, r5
005735dc  ed ff ff 1a                                      bne #0x573598
005735e0  00 a0 94 e5                                      ldr sl, [r4]
005735e4  0a 00 a0 e1                                      mov r0, sl
005735e8  07 70 86 e0                                      add r7, r6, r7
005735ec  97 73 f6 eb                                      bl #0x310450
005735f0  08 70 84 e5                                      str r7, [r4, #8]
005735f4  40 01 84 e8                                      stm r4, {r6, r8}
005735f8  bc ff ff ea                                      b #0x5734f0
005735fc  01 00 52 e1                                      cmp r2, r1
00573600  cd ff ff 8a                                      bhi #0x57353c
00573604  90 70 a0 e3                                      mov r7, #0x90
00573608  97 01 07 e0                                      mul r7, r7, r1
0057360c  cb ff ff ea                                      b #0x573540

; FUNCTION 0x00573610, declared_size=120, range_size=120, mode=arm
; class-group: std::vector<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >
; alias: _ZNSt6vectorIN6glitch2io14CXMLReaderImplIwNS0_17IReferenceCountedEE10SAttributeENS0_4core10SAllocatorIS5_LNS0_6memory13E_MEMORY_HINTE0EEEED1Ev
; demangled: std::vector<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, glitch::core::SAllocator<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute, (glitch::memory::E_MEMORY_HINT)0> >::~vector()
; decoder-mode: arm
00573610  70 40 2d e9                                      push {r4, r5, r6, lr}
00573614  04 40 90 e5                                      ldr r4, [r0, #4]
00573618  00 50 90 e5                                      ldr r5, [r0]
0057361c  00 60 a0 e1                                      mov r6, r0
00573620  05 00 54 e1                                      cmp r4, r5
00573624  11 00 00 0a                                      beq #0x573670
00573628  90 40 44 e2                                      sub r4, r4, #0x90
0057362c  48 20 84 e2                                      add r2, r4, #0x48
00573630  44 30 92 e5                                      ldr r3, [r2, #0x44]
00573634  02 00 53 e1                                      cmp r3, r2
00573638  03 00 a0 e1                                      mov r0, r3
0057363c  02 00 00 0a                                      beq #0x57364c
00573640  00 00 53 e3                                      cmp r3, #0
00573644  00 00 00 0a                                      beq #0x57364c
00573648  80 73 f6 eb                                      bl #0x310450
0057364c  44 30 94 e5                                      ldr r3, [r4, #0x44]
00573650  04 00 53 e1                                      cmp r3, r4
00573654  03 00 a0 e1                                      mov r0, r3
00573658  02 00 00 0a                                      beq #0x573668
0057365c  00 00 53 e3                                      cmp r3, #0
00573660  00 00 00 0a                                      beq #0x573668
00573664  79 73 f6 eb                                      bl #0x310450
00573668  04 00 55 e1                                      cmp r5, r4
0057366c  ed ff ff 1a                                      bne #0x573628
00573670  00 00 96 e5                                      ldr r0, [r6]
00573674  00 00 50 e3                                      cmp r0, #0
00573678  00 00 00 0a                                      beq #0x573680
0057367c  73 73 f6 eb                                      bl #0x310450
00573680  06 00 a0 e1                                      mov r0, r6
00573684  70 80 bd e8                                      pop {r4, r5, r6, pc}
