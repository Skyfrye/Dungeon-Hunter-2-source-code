; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572abc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch2io14CXMLReaderImplIcNS1_17IReferenceCountedEE10SAttributeES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute* std::priv::__ucopy<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, int>(glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00572abc  01 30 60 e0                                      rsb r3, r0, r1
00572ac0  43 32 a0 e1                                      asr r3, r3, #4
00572ac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00572ac8  03 91 83 e0                                      add sb, r3, r3, lsl #2
00572acc  00 40 a0 e1                                      mov r4, r0
00572ad0  09 92 89 e0                                      add sb, sb, sb, lsl #4
00572ad4  02 a0 a0 e1                                      mov sl, r2
00572ad8  09 94 89 e0                                      add sb, sb, sb, lsl #8
00572adc  09 98 89 e0                                      add sb, sb, sb, lsl #16
00572ae0  89 90 83 e0                                      add sb, r3, sb, lsl #1
00572ae4  00 00 59 e3                                      cmp sb, #0
00572ae8  09 60 a0 c1                                      movgt r6, sb
00572aec  00 50 a0 c3                                      movgt r5, #0
00572af0  0d 00 00 da                                      ble #0x572b2c
00572af4  05 70 84 e0                                      add r7, r4, r5
00572af8  05 80 8a e0                                      add r8, sl, r5
00572afc  07 10 a0 e1                                      mov r1, r7
00572b00  08 00 a0 e1                                      mov r0, r8
00572b04  77 c0 ff eb                                      bl #0x562ce8
00572b08  18 00 88 e2                                      add r0, r8, #0x18
00572b0c  18 10 87 e2                                      add r1, r7, #0x18
00572b10  74 c0 ff eb                                      bl #0x562ce8
00572b14  01 60 56 e2                                      subs r6, r6, #1
00572b18  30 50 85 e2                                      add r5, r5, #0x30
00572b1c  f4 ff ff 1a                                      bne #0x572af4
00572b20  30 00 a0 e3                                      mov r0, #0x30
00572b24  90 a9 20 e0                                      mla r0, r0, sb, sl
00572b28  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00572b2c  02 00 a0 e1                                      mov r0, r2
00572b30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00573384, declared_size=144, range_size=144, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch2io14CXMLReaderImplIcNS1_17IReferenceCountedEE10SAttributeES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute* std::priv::__copy<glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, int>(glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::SAttribute*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00573384  01 30 60 e0                                      rsb r3, r0, r1
00573388  43 32 a0 e1                                      asr r3, r3, #4
0057338c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00573390  03 81 83 e0                                      add r8, r3, r3, lsl #2
00573394  00 40 a0 e1                                      mov r4, r0
00573398  08 82 88 e0                                      add r8, r8, r8, lsl #4
0057339c  02 70 a0 e1                                      mov r7, r2
005733a0  08 84 88 e0                                      add r8, r8, r8, lsl #8
005733a4  08 88 88 e0                                      add r8, r8, r8, lsl #16
005733a8  88 80 83 e0                                      add r8, r3, r8, lsl #1
005733ac  00 00 58 e3                                      cmp r8, #0
005733b0  15 00 00 da                                      ble #0x57340c
005733b4  02 50 a0 e1                                      mov r5, r2
005733b8  08 60 a0 e1                                      mov r6, r8
005733bc  00 00 00 ea                                      b #0x5733c4
005733c0  30 40 84 e2                                      add r4, r4, #0x30
005733c4  04 00 55 e1                                      cmp r5, r4
005733c8  05 00 a0 e1                                      mov r0, r5
005733cc  02 00 00 0a                                      beq #0x5733dc
005733d0  14 10 94 e5                                      ldr r1, [r4, #0x14]
005733d4  10 20 94 e5                                      ldr r2, [r4, #0x10]
005733d8  ea b5 f6 eb                                      bl #0x320b88
005733dc  18 00 85 e2                                      add r0, r5, #0x18
005733e0  18 30 84 e2                                      add r3, r4, #0x18
005733e4  03 00 50 e1                                      cmp r0, r3
005733e8  02 00 00 0a                                      beq #0x5733f8
005733ec  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
005733f0  28 20 94 e5                                      ldr r2, [r4, #0x28]
005733f4  e3 b5 f6 eb                                      bl #0x320b88
005733f8  01 60 56 e2                                      subs r6, r6, #1
005733fc  30 50 85 e2                                      add r5, r5, #0x30
00573400  ee ff ff 1a                                      bne #0x5733c0
00573404  30 30 a0 e3                                      mov r3, #0x30
00573408  93 78 27 e0                                      mla r7, r3, r8, r7
0057340c  07 00 a0 e1                                      mov r0, r7
00573410  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
