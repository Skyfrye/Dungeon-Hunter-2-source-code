; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572bbc, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute* std::priv
; alias: _ZNSt4priv7__ucopyIPN6glitch2io14CXMLReaderImplIwNS1_17IReferenceCountedEE10SAttributeES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute* std::priv::__ucopy<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, int>(glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
00572bbc  01 30 60 e0                                      rsb r3, r0, r1
00572bc0  43 32 a0 e1                                      asr r3, r3, #4
00572bc4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00572bc8  02 a0 a0 e1                                      mov sl, r2
00572bcc  83 21 a0 e1                                      lsl r2, r3, #3
00572bd0  02 20 63 e0                                      rsb r2, r3, r2
00572bd4  02 23 82 e0                                      add r2, r2, r2, lsl #6
00572bd8  00 40 a0 e1                                      mov r4, r0
00572bdc  82 21 83 e0                                      add r2, r3, r2, lsl #3
00572be0  82 97 a0 e1                                      lsl sb, r2, #0xf
00572be4  09 90 62 e0                                      rsb sb, r2, sb
00572be8  89 91 83 e0                                      add sb, r3, sb, lsl #3
00572bec  00 00 59 e3                                      cmp sb, #0
00572bf0  09 60 a0 c1                                      movgt r6, sb
00572bf4  00 50 a0 c3                                      movgt r5, #0
00572bf8  0d 00 00 da                                      ble #0x572c34
00572bfc  05 70 84 e0                                      add r7, r4, r5
00572c00  05 80 8a e0                                      add r8, sl, r5
00572c04  07 10 a0 e1                                      mov r1, r7
00572c08  08 00 a0 e1                                      mov r0, r8
00572c0c  c8 ff ff eb                                      bl #0x572b34
00572c10  48 00 88 e2                                      add r0, r8, #0x48
00572c14  48 10 87 e2                                      add r1, r7, #0x48
00572c18  c5 ff ff eb                                      bl #0x572b34
00572c1c  01 60 56 e2                                      subs r6, r6, #1
00572c20  90 50 85 e2                                      add r5, r5, #0x90
00572c24  f4 ff ff 1a                                      bne #0x572bfc
00572c28  90 00 a0 e3                                      mov r0, #0x90
00572c2c  90 a9 20 e0                                      mla r0, r0, sb, sl
00572c30  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00572c34  0a 00 a0 e1                                      mov r0, sl
00572c38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x005732ec, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute* std::priv
; alias: _ZNSt4priv6__copyIPN6glitch2io14CXMLReaderImplIwNS1_17IReferenceCountedEE10SAttributeES7_iEET0_T_S9_S8_RKSt26random_access_iterator_tagPT1_
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute* std::priv::__copy<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, int>(glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::SAttribute*, std::random_access_iterator_tag const&, int*)
; decoder-mode: arm
005732ec  01 30 60 e0                                      rsb r3, r0, r1
005732f0  43 32 a0 e1                                      asr r3, r3, #4
005732f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005732f8  02 70 a0 e1                                      mov r7, r2
005732fc  83 21 a0 e1                                      lsl r2, r3, #3
00573300  02 20 63 e0                                      rsb r2, r3, r2
00573304  02 23 82 e0                                      add r2, r2, r2, lsl #6
00573308  00 40 a0 e1                                      mov r4, r0
0057330c  82 21 83 e0                                      add r2, r3, r2, lsl #3
00573310  82 87 a0 e1                                      lsl r8, r2, #0xf
00573314  08 80 62 e0                                      rsb r8, r2, r8
00573318  88 81 83 e0                                      add r8, r3, r8, lsl #3
0057331c  00 00 58 e3                                      cmp r8, #0
00573320  15 00 00 da                                      ble #0x57337c
00573324  08 60 a0 e1                                      mov r6, r8
00573328  07 50 a0 e1                                      mov r5, r7
0057332c  00 00 00 ea                                      b #0x573334
00573330  90 40 84 e2                                      add r4, r4, #0x90
00573334  04 00 55 e1                                      cmp r5, r4
00573338  05 00 a0 e1                                      mov r0, r5
0057333c  02 00 00 0a                                      beq #0x57334c
00573340  44 10 94 e5                                      ldr r1, [r4, #0x44]
00573344  40 20 94 e5                                      ldr r2, [r4, #0x40]
00573348  94 bf f6 eb                                      bl #0x3231a0
0057334c  48 00 85 e2                                      add r0, r5, #0x48
00573350  48 30 84 e2                                      add r3, r4, #0x48
00573354  03 00 50 e1                                      cmp r0, r3
00573358  02 00 00 0a                                      beq #0x573368
0057335c  8c 10 94 e5                                      ldr r1, [r4, #0x8c]
00573360  88 20 94 e5                                      ldr r2, [r4, #0x88]
00573364  8d bf f6 eb                                      bl #0x3231a0
00573368  01 60 56 e2                                      subs r6, r6, #1
0057336c  90 50 85 e2                                      add r5, r5, #0x90
00573370  ee ff ff 1a                                      bne #0x573330
00573374  90 30 a0 e3                                      mov r3, #0x90
00573378  93 78 27 e0                                      mla r7, r3, r8, r7
0057337c  07 00 a0 e1                                      mov r0, r7
00573380  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
