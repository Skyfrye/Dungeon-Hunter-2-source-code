; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0057259c, declared_size=152, range_size=152, mode=arm
; class-group: void glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15convertTextDataImEEvPT_Pci
; demangled: void glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::convertTextData<unsigned long>(unsigned long*, char*, int)
; decoder-mode: arm
0057259c  20 c0 90 e5                                      ldr ip, [r0, #0x20]
005725a0  70 00 2d e9                                      push {r4, r5, r6}
005725a4  03 00 5c e3                                      cmp ip, #3
005725a8  01 00 5c 13                                      cmpne ip, #1
005725ac  01 c0 a0 93                                      movls ip, #1
005725b0  02 00 00 9a                                      bls #0x5725c0
005725b4  05 00 5c e3                                      cmp ip, #5
005725b8  00 c0 a0 13                                      movne ip, #0
005725bc  01 c0 a0 03                                      moveq ip, #1
005725c0  1c 40 90 e5                                      ldr r4, [r0, #0x1c]
005725c4  03 00 54 e3                                      cmp r4, #3
005725c8  01 00 54 13                                      cmpne r4, #1
005725cc  01 40 a0 93                                      movls r4, #1
005725d0  02 00 00 9a                                      bls #0x5725e0
005725d4  05 00 54 e3                                      cmp r4, #5
005725d8  00 40 a0 13                                      movne r4, #0
005725dc  01 40 a0 03                                      moveq r4, #1
005725e0  04 00 5c e1                                      cmp ip, r4
005725e4  0d 00 00 0a                                      beq #0x572620
005725e8  00 c0 91 e5                                      ldr ip, [r1]
005725ec  00 00 5c e3                                      cmp ip, #0
005725f0  0a 00 00 0a                                      beq #0x572620
005725f4  01 40 a0 e1                                      mov r4, r1
005725f8  2c 5c a0 e1                                      lsr r5, ip, #0x18
005725fc  0c 5c 85 e1                                      orr r5, r5, ip, lsl #24
00572600  ff 68 0c e2                                      and r6, ip, #0xff0000
00572604  26 54 85 e1                                      orr r5, r5, r6, lsr #8
00572608  ff cc 0c e2                                      and ip, ip, #0xff00
0057260c  0c c4 85 e1                                      orr ip, r5, ip, lsl #8
00572610  00 c0 84 e5                                      str ip, [r4]
00572614  04 c0 b4 e5                                      ldr ip, [r4, #4]!
00572618  00 00 5c e3                                      cmp ip, #0
0057261c  f5 ff ff 1a                                      bne #0x5725f8
00572620  14 30 80 e5                                      str r3, [r0, #0x14]
00572624  10 10 80 e5                                      str r1, [r0, #0x10]
00572628  08 20 80 e5                                      str r2, [r0, #8]
0057262c  70 00 bd e8                                      pop {r4, r5, r6}
00572630  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572fb0, declared_size=228, range_size=228, mode=arm
; class-group: void glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15convertTextDataItEEvPT_Pci
; demangled: void glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::convertTextData<unsigned short>(unsigned short*, char*, int)
; decoder-mode: arm
00572fb0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00572fb4  00 40 a0 e1                                      mov r4, r0
00572fb8  20 00 90 e5                                      ldr r0, [r0, #0x20]
00572fbc  01 50 a0 e1                                      mov r5, r1
00572fc0  02 60 a0 e1                                      mov r6, r2
00572fc4  03 00 50 e3                                      cmp r0, #3
00572fc8  01 00 50 13                                      cmpne r0, #1
00572fcc  03 70 a0 e1                                      mov r7, r3
00572fd0  01 00 a0 93                                      movls r0, #1
00572fd4  02 00 00 9a                                      bls #0x572fe4
00572fd8  05 00 50 e3                                      cmp r0, #5
00572fdc  00 00 a0 13                                      movne r0, #0
00572fe0  01 00 a0 03                                      moveq r0, #1
00572fe4  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
00572fe8  03 00 53 e3                                      cmp r3, #3
00572fec  01 00 53 13                                      cmpne r3, #1
00572ff0  01 30 a0 93                                      movls r3, #1
00572ff4  02 00 00 9a                                      bls #0x573004
00572ff8  05 00 53 e3                                      cmp r3, #5
00572ffc  00 30 a0 13                                      movne r3, #0
00573000  01 30 a0 03                                      moveq r3, #1
00573004  03 00 50 e1                                      cmp r0, r3
00573008  09 00 00 0a                                      beq #0x573034
0057300c  b0 30 d5 e1                                      ldrh r3, [r5]
00573010  00 00 53 e3                                      cmp r3, #0
00573014  06 00 00 0a                                      beq #0x573034
00573018  05 20 a0 e1                                      mov r2, r5
0057301c  43 14 a0 e1                                      asr r1, r3, #8
00573020  03 34 81 e1                                      orr r3, r1, r3, lsl #8
00573024  b0 30 c2 e1                                      strh r3, [r2]
00573028  b2 30 f2 e1                                      ldrh r3, [r2, #2]!
0057302c  00 00 53 e3                                      cmp r3, #0
00573030  f9 ff ff 1a                                      bne #0x57301c
00573034  07 01 a0 e1                                      lsl r0, r7, #2
00573038  00 10 a0 e3                                      mov r1, #0
0057303c  59 04 ff eb                                      bl #0x5341a8
00573040  00 00 57 e3                                      cmp r7, #0
00573044  08 00 84 e5                                      str r0, [r4, #8]
00573048  09 00 00 da                                      ble #0x573074
0057304c  87 10 a0 e1                                      lsl r1, r7, #1
00573050  00 30 a0 e3                                      mov r3, #0
00573054  00 00 00 ea                                      b #0x57305c
00573058  08 00 94 e5                                      ldr r0, [r4, #8]
0057305c  b3 20 95 e1                                      ldrh r2, [r5, r3]
00573060  83 20 80 e7                                      str r2, [r0, r3, lsl #1]
00573064  02 30 83 e2                                      add r3, r3, #2
00573068  01 00 53 e1                                      cmp r3, r1
0057306c  f9 ff ff 1a                                      bne #0x573058
00573070  08 00 94 e5                                      ldr r0, [r4, #8]
00573074  00 00 56 e3                                      cmp r6, #0
00573078  14 70 84 e5                                      str r7, [r4, #0x14]
0057307c  10 00 84 e5                                      str r0, [r4, #0x10]
00573080  02 00 00 0a                                      beq #0x573090
00573084  06 00 a0 e1                                      mov r0, r6
00573088  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0057308c  09 6c f6 ea                                      b #0x30e0b8
00573090  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00573094, declared_size=112, range_size=112, mode=arm
; class-group: void glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15convertTextDataIcEEvPT_Pci
; demangled: void glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::convertTextData<char>(char*, char*, int)
; decoder-mode: arm
00573094  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00573098  00 50 a0 e1                                      mov r5, r0
0057309c  01 60 a0 e1                                      mov r6, r1
005730a0  03 01 a0 e1                                      lsl r0, r3, #2
005730a4  00 10 a0 e3                                      mov r1, #0
005730a8  03 40 a0 e1                                      mov r4, r3
005730ac  02 70 a0 e1                                      mov r7, r2
005730b0  3c 04 ff eb                                      bl #0x5341a8
005730b4  00 00 54 e3                                      cmp r4, #0
005730b8  08 00 85 e5                                      str r0, [r5, #8]
005730bc  08 00 00 da                                      ble #0x5730e4
005730c0  00 30 a0 e3                                      mov r3, #0
005730c4  00 00 00 ea                                      b #0x5730cc
005730c8  08 00 95 e5                                      ldr r0, [r5, #8]
005730cc  d3 20 96 e1                                      ldrsb r2, [r6, r3]
005730d0  03 21 80 e7                                      str r2, [r0, r3, lsl #2]
005730d4  01 30 83 e2                                      add r3, r3, #1
005730d8  04 00 53 e1                                      cmp r3, r4
005730dc  f9 ff ff 1a                                      bne #0x5730c8
005730e0  08 00 95 e5                                      ldr r0, [r5, #8]
005730e4  00 00 57 e3                                      cmp r7, #0
005730e8  14 40 85 e5                                      str r4, [r5, #0x14]
005730ec  10 00 85 e5                                      str r0, [r5, #0x10]
005730f0  02 00 00 0a                                      beq #0x573100
005730f4  07 00 a0 e1                                      mov r0, r7
005730f8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
005730fc  ed 6b f6 ea                                      b #0x30e0b8
00573100  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
