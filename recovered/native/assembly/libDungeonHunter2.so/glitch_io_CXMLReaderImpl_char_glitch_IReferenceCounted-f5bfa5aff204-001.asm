; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572634, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17readToNextElementEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::readToNextElement()
; decoder-mode: arm
00572634  10 40 2d e9                                      push {r4, lr}
00572638  00 40 a0 e1                                      mov r4, r0
0057263c  00 30 94 e5                                      ldr r3, [r4]
00572640  04 00 a0 e1                                      mov r0, r4
00572644  0f e0 a0 e1                                      mov lr, pc
00572648  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0057264c  00 30 50 e2                                      subs r3, r0, #0
00572650  04 00 a0 e1                                      mov r0, r4
00572654  05 00 00 0a                                      beq #0x572670
00572658  00 30 94 e5                                      ldr r3, [r4]
0057265c  0f e0 a0 e1                                      mov lr, pc
00572660  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00572664  01 00 50 e3                                      cmp r0, #1
00572668  f3 ff ff 1a                                      bne #0x57263c
0057266c  10 80 bd e8                                      pop {r4, pc}
00572670  03 00 a0 e1                                      mov r0, r3
00572674  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00572678, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE11getNodeTypeEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getNodeType() const
; decoder-mode: arm
00572678  18 00 90 e5                                      ldr r0, [r0, #0x18]
0057267c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572680, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17getAttributeCountEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeCount() const
; decoder-mode: arm
00572680  64 30 90 e5                                      ldr r3, [r0, #0x64]
00572684  68 20 90 e5                                      ldr r2, [r0, #0x68]
00572688  02 30 63 e0                                      rsb r3, r3, r2
0057268c  43 32 a0 e1                                      asr r3, r3, #4
00572690  03 01 83 e0                                      add r0, r3, r3, lsl #2
00572694  00 02 80 e0                                      add r0, r0, r0, lsl #4
00572698  00 04 80 e0                                      add r0, r0, r0, lsl #8
0057269c  00 08 80 e0                                      add r0, r0, r0, lsl #16
005726a0  80 00 83 e0                                      add r0, r3, r0, lsl #1
005726a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x005726a8, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE16getAttributeNameEi
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeName(int) const
; decoder-mode: arm
005726a8  64 30 90 e5                                      ldr r3, [r0, #0x64]
005726ac  68 20 90 e5                                      ldr r2, [r0, #0x68]
005726b0  02 20 63 e0                                      rsb r2, r3, r2
005726b4  42 22 a0 e1                                      asr r2, r2, #4
005726b8  02 01 82 e0                                      add r0, r2, r2, lsl #2
005726bc  00 02 80 e0                                      add r0, r0, r0, lsl #4
005726c0  00 04 80 e0                                      add r0, r0, r0, lsl #8
005726c4  00 08 80 e0                                      add r0, r0, r0, lsl #16
005726c8  80 20 82 e0                                      add r2, r2, r0, lsl #1
005726cc  02 00 51 e1                                      cmp r1, r2
005726d0  30 20 a0 33                                      movlo r2, #0x30
005726d4  92 31 23 30                                      mlalo r3, r2, r1, r3
005726d8  00 00 a0 23                                      movhs r0, #0
005726dc  14 00 93 35                                      ldrlo r0, [r3, #0x14]
005726e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005726e4, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17getAttributeValueEi
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValue(int) const
; decoder-mode: arm
005726e4  64 30 90 e5                                      ldr r3, [r0, #0x64]
005726e8  68 20 90 e5                                      ldr r2, [r0, #0x68]
005726ec  02 20 63 e0                                      rsb r2, r3, r2
005726f0  42 22 a0 e1                                      asr r2, r2, #4
005726f4  02 01 82 e0                                      add r0, r2, r2, lsl #2
005726f8  00 02 80 e0                                      add r0, r0, r0, lsl #4
005726fc  00 04 80 e0                                      add r0, r0, r0, lsl #8
00572700  00 08 80 e0                                      add r0, r0, r0, lsl #16
00572704  80 20 82 e0                                      add r2, r2, r0, lsl #1
00572708  02 00 51 e1                                      cmp r1, r2
0057270c  30 20 a0 33                                      movlo r2, #0x30
00572710  92 31 23 30                                      mlalo r3, r2, r1, r3
00572714  00 00 a0 23                                      movhs r0, #0
00572718  2c 00 93 35                                      ldrlo r0, [r3, #0x2c]
0057271c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572720, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22getAttributeValueAsIntEPKc
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValueAsInt(char const*) const
; decoder-mode: arm
00572720  10 40 2d e9                                      push {r4, lr}
00572724  00 30 90 e5                                      ldr r3, [r0]
00572728  0f e0 a0 e1                                      mov lr, pc
0057272c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00572730  65 6f f6 eb                                      bl #0x30e4cc
00572734  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00572738, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22getAttributeValueAsIntEi
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValueAsInt(int) const
; decoder-mode: arm
00572738  10 40 2d e9                                      push {r4, lr}
0057273c  00 30 90 e5                                      ldr r3, [r0]
00572740  0f e0 a0 e1                                      mov lr, pc
00572744  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00572748  5f 6f f6 eb                                      bl #0x30e4cc
0057274c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00572750, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE11getNodeNameEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getNodeName() const
; decoder-mode: arm
00572750  38 00 90 e5                                      ldr r0, [r0, #0x38]
00572754  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572758, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE11getNodeDataEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getNodeData() const
; decoder-mode: arm
00572758  38 00 90 e5                                      ldr r0, [r0, #0x38]
0057275c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572760, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE14isEmptyElementEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::isEmptyElement() const
; decoder-mode: arm
00572760  54 00 d0 e5                                      ldrb r0, [r0, #0x54]
00572764  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572768, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15getSourceFormatEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getSourceFormat() const
; decoder-mode: arm
00572768  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
0057276c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572770, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15getParserFormatEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getParserFormat() const
; decoder-mode: arm
00572770  20 00 90 e5                                      ldr r0, [r0, #0x20]
00572774  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572e78, declared_size=312, range_size=312, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE8readFileEPNS0_17IFileReadCallBackE
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::readFile(glitch::io::IFileReadCallBack*)
; decoder-mode: arm
00572e78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00572e7c  00 60 a0 e1                                      mov r6, r0
00572e80  00 30 91 e5                                      ldr r3, [r1]
00572e84  01 00 a0 e1                                      mov r0, r1
00572e88  01 50 a0 e1                                      mov r5, r1
00572e8c  0f e0 a0 e1                                      mov lr, pc
00572e90  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00572e94  00 80 50 e2                                      subs r8, r0, #0
00572e98  2e 00 00 ba                                      blt #0x572f58
00572e9c  04 70 88 e2                                      add r7, r8, #4
00572ea0  00 10 a0 e3                                      mov r1, #0
00572ea4  07 00 a0 e1                                      mov r0, r7
00572ea8  be 04 ff eb                                      bl #0x5341a8
00572eac  00 40 a0 e1                                      mov r4, r0
00572eb0  00 30 95 e5                                      ldr r3, [r5]
00572eb4  05 00 a0 e1                                      mov r0, r5
00572eb8  08 20 a0 e1                                      mov r2, r8
00572ebc  04 10 a0 e1                                      mov r1, r4
00572ec0  0f e0 a0 e1                                      mov lr, pc
00572ec4  08 f0 93 e5                                      ldr pc, [r3, #8]
00572ec8  00 50 50 e2                                      subs r5, r0, #0
00572ecc  05 00 00 1a                                      bne #0x572ee8
00572ed0  00 00 54 e3                                      cmp r4, #0
00572ed4  1f 00 00 0a                                      beq #0x572f58
00572ed8  04 00 a0 e1                                      mov r0, r4
00572edc  75 6c f6 eb                                      bl #0x30e0b8
00572ee0  05 00 a0 e1                                      mov r0, r5
00572ee4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00572ee8  07 20 84 e0                                      add r2, r4, r7
00572eec  00 30 a0 e3                                      mov r3, #0
00572ef0  04 30 42 e5                                      strb r3, [r2, #-4]
00572ef4  01 30 42 e5                                      strb r3, [r2, #-1]
00572ef8  02 30 42 e5                                      strb r3, [r2, #-2]
00572efc  03 30 42 e5                                      strb r3, [r2, #-3]
00572f00  00 20 94 e5                                      ldr r2, [r4]
00572f04  02 08 72 e3                                      cmn r2, #0x20000
00572f08  47 31 a0 01                                      asreq r3, r7, #2
00572f0c  04 20 a0 03                                      moveq r2, #4
00572f10  1e 00 00 0a                                      beq #0x572f90
00572f14  ff 1e 0f e3                                      movw r1, #0xfeff
00572f18  01 00 52 e1                                      cmp r2, r1
00572f1c  19 00 00 0a                                      beq #0x572f88
00572f20  b0 20 d4 e1                                      ldrh r2, [r4]
00572f24  fe 0f 0f e3                                      movw r0, #0xfffe
00572f28  00 00 52 e1                                      cmp r2, r0
00572f2c  c7 30 a0 01                                      asreq r3, r7, #1
00572f30  02 20 a0 03                                      moveq r2, #2
00572f34  0b 00 00 0a                                      beq #0x572f68
00572f38  01 00 52 e1                                      cmp r2, r1
00572f3c  07 00 00 0a                                      beq #0x572f60
00572f40  14 70 86 e5                                      str r7, [r6, #0x14]
00572f44  1c 30 86 e5                                      str r3, [r6, #0x1c]
00572f48  08 40 86 e5                                      str r4, [r6, #8]
00572f4c  10 40 86 e5                                      str r4, [r6, #0x10]
00572f50  01 00 a0 e3                                      mov r0, #1
00572f54  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00572f58  00 00 a0 e3                                      mov r0, #0
00572f5c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00572f60  c7 30 a0 e1                                      asr r3, r7, #1
00572f64  03 20 a0 e3                                      mov r2, #3
00572f68  1c 20 86 e5                                      str r2, [r6, #0x1c]
00572f6c  06 00 a0 e1                                      mov r0, r6
00572f70  04 20 a0 e1                                      mov r2, r4
00572f74  01 30 43 e2                                      sub r3, r3, #1
00572f78  02 10 84 e2                                      add r1, r4, #2
00572f7c  84 ff ff eb                                      bl #0x572d94
00572f80  01 00 a0 e3                                      mov r0, #1
00572f84  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00572f88  47 31 a0 e1                                      asr r3, r7, #2
00572f8c  05 20 a0 e3                                      mov r2, #5
00572f90  1c 20 86 e5                                      str r2, [r6, #0x1c]
00572f94  06 00 a0 e1                                      mov r0, r6
00572f98  04 20 a0 e1                                      mov r2, r4
00572f9c  01 30 43 e2                                      sub r3, r3, #1
00572fa0  04 10 84 e2                                      add r1, r4, #4
00572fa4  3e ff ff eb                                      bl #0x572ca4
00572fa8  01 00 a0 e3                                      mov r0, #1
00572fac  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00573eb0, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEED1Ev
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::~CXMLReaderImpl()
; decoder-mode: arm
00573eb0  10 40 2d e9                                      push {r4, lr}
00573eb4  74 30 9f e5                                      ldr r3, [pc, #0x74]
00573eb8  74 20 9f e5                                      ldr r2, [pc, #0x74]
00573ebc  00 40 a0 e1                                      mov r4, r0
00573ec0  03 30 8f e0                                      add r3, pc, r3
00573ec4  08 00 90 e5                                      ldr r0, [r0, #8]
00573ec8  02 20 93 e7                                      ldr r2, [r3, r2]
00573ecc  00 00 50 e3                                      cmp r0, #0
00573ed0  08 20 82 e2                                      add r2, r2, #8
00573ed4  00 20 84 e5                                      str r2, [r4]
00573ed8  00 00 00 0a                                      beq #0x573ee0
00573edc  75 68 f6 eb                                      bl #0x30e0b8
00573ee0  64 00 84 e2                                      add r0, r4, #0x64
00573ee4  d3 ff ff eb                                      bl #0x573e38
00573ee8  58 00 84 e2                                      add r0, r4, #0x58
00573eec  bd c0 ff eb                                      bl #0x5641e8
00573ef0  3c 30 84 e2                                      add r3, r4, #0x3c
00573ef4  14 00 93 e5                                      ldr r0, [r3, #0x14]
00573ef8  03 00 50 e1                                      cmp r0, r3
00573efc  02 00 00 0a                                      beq #0x573f0c
00573f00  00 00 50 e3                                      cmp r0, #0
00573f04  00 00 00 0a                                      beq #0x573f0c
00573f08  50 71 f6 eb                                      bl #0x310450
00573f0c  24 30 84 e2                                      add r3, r4, #0x24
00573f10  14 00 93 e5                                      ldr r0, [r3, #0x14]
00573f14  03 00 50 e1                                      cmp r0, r3
00573f18  02 00 00 0a                                      beq #0x573f28
00573f1c  00 00 50 e3                                      cmp r0, #0
00573f20  00 00 00 0a                                      beq #0x573f28
00573f24  49 71 f6 eb                                      bl #0x310450
00573f28  04 00 a0 e1                                      mov r0, r4
00573f2c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00573f30  d0 0b 42 00 b0 31 00 00                          .byte 0xd0, 0x0b, 0x42, 0x00, 0xb0, 0x31, 0x00, 0x00

; FUNCTION 0x00573f38, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEED0Ev
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::~CXMLReaderImpl()
; decoder-mode: arm
00573f38  10 40 2d e9                                      push {r4, lr}
00573f3c  00 40 a0 e1                                      mov r4, r0
00573f40  da ff ff eb                                      bl #0x573eb0
00573f44  04 00 a0 e1                                      mov r0, r4
00573f48  d8 68 f6 eb                                      bl #0x30e2b0
00573f4c  04 00 a0 e1                                      mov r0, r4
00573f50  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00573f54, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22parseClosingXMLElementEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::parseClosingXMLElement()
; decoder-mode: arm
00573f54  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00573f58  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
00573f5c  f4 60 9f e5                                      ldr r6, [pc, #0xf4]
00573f60  64 10 90 e5                                      ldr r1, [r0, #0x64]
00573f64  05 50 8f e0                                      add r5, pc, r5
00573f68  06 30 95 e7                                      ldr r3, [r5, r6]
00573f6c  68 20 90 e5                                      ldr r2, [r0, #0x68]
00573f70  20 d0 4d e2                                      sub sp, sp, #0x20
00573f74  00 30 93 e5                                      ldr r3, [r3]
00573f78  02 00 51 e1                                      cmp r1, r2
00573f7c  00 40 a0 e1                                      mov r4, r0
00573f80  1c 30 8d e5                                      str r3, [sp, #0x1c]
00573f84  02 30 a0 e3                                      mov r3, #2
00573f88  18 30 80 e5                                      str r3, [r0, #0x18]
00573f8c  00 30 a0 e3                                      mov r3, #0
00573f90  54 30 c0 e5                                      strb r3, [r0, #0x54]
00573f94  02 00 00 0a                                      beq #0x573fa4
00573f98  64 00 80 e2                                      add r0, r0, #0x64
00573f9c  0d 30 a0 e1                                      mov r3, sp
00573fa0  7d ff ff eb                                      bl #0x573d9c
00573fa4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00573fa8  01 10 83 e2                                      add r1, r3, #1
00573fac  0c 10 84 e5                                      str r1, [r4, #0xc]
00573fb0  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
00573fb4  3e 00 52 e3                                      cmp r2, #0x3e
00573fb8  00 20 a0 03                                      moveq r2, #0
00573fbc  06 00 00 0a                                      beq #0x573fdc
00573fc0  02 30 83 e2                                      add r3, r3, #2
00573fc4  0c 30 84 e5                                      str r3, [r4, #0xc]
00573fc8  03 20 a0 e1                                      mov r2, r3
00573fcc  d1 00 d3 e0                                      ldrsb r0, [r3], #1
00573fd0  3e 00 50 e3                                      cmp r0, #0x3e
00573fd4  fa ff ff 1a                                      bne #0x573fc4
00573fd8  02 20 61 e0                                      rsb r2, r1, r2
00573fdc  04 70 8d e2                                      add r7, sp, #4
00573fe0  02 20 81 e0                                      add r2, r1, r2
00573fe4  24 80 84 e2                                      add r8, r4, #0x24
00573fe8  07 00 a0 e1                                      mov r0, r7
00573fec  14 70 8d e5                                      str r7, [sp, #0x14]
00573ff0  18 70 8d e5                                      str r7, [sp, #0x18]
00573ff4  fe c7 f6 eb                                      bl #0x325ff4
00573ff8  07 00 58 e1                                      cmp r8, r7
00573ffc  03 00 00 0a                                      beq #0x574010
00574000  08 00 a0 e1                                      mov r0, r8
00574004  18 10 9d e5                                      ldr r1, [sp, #0x18]
00574008  14 20 9d e5                                      ldr r2, [sp, #0x14]
0057400c  dd b2 f6 eb                                      bl #0x320b88
00574010  18 00 9d e5                                      ldr r0, [sp, #0x18]
00574014  07 00 50 e1                                      cmp r0, r7
00574018  02 00 00 0a                                      beq #0x574028
0057401c  00 00 50 e3                                      cmp r0, #0
00574020  00 00 00 0a                                      beq #0x574028
00574024  09 71 f6 eb                                      bl #0x310450
00574028  0c 10 94 e5                                      ldr r1, [r4, #0xc]
0057402c  06 30 95 e7                                      ldr r3, [r5, r6]
00574030  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00574034  01 10 81 e2                                      add r1, r1, #1
00574038  0c 10 84 e5                                      str r1, [r4, #0xc]
0057403c  00 30 93 e5                                      ldr r3, [r3]
00574040  03 00 52 e1                                      cmp r2, r3
00574044  01 00 00 1a                                      bne #0x574050
00574048  20 d0 8d e2                                      add sp, sp, #0x20
0057404c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00574050  ae 68 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00574054  2c 0b 42 00 ac 40 00 00                          .byte 0x2c, 0x0b, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0057405c, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE12parseCommentEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::parseComment()
; decoder-mode: arm
0057405c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00574060  f4 50 9f e5                                      ldr r5, [pc, #0xf4]
00574064  f4 70 9f e5                                      ldr r7, [pc, #0xf4]
00574068  0c 20 90 e5                                      ldr r2, [r0, #0xc]
0057406c  05 50 8f e0                                      add r5, pc, r5
00574070  07 30 95 e7                                      ldr r3, [r5, r7]
00574074  00 40 a0 e1                                      mov r4, r0
00574078  01 10 82 e2                                      add r1, r2, #1
0057407c  00 30 93 e5                                      ldr r3, [r3]
00574080  04 00 a0 e3                                      mov r0, #4
00574084  20 d0 4d e2                                      sub sp, sp, #0x20
00574088  18 00 84 e5                                      str r0, [r4, #0x18]
0057408c  02 20 82 e2                                      add r2, r2, #2
00574090  1c 30 8d e5                                      str r3, [sp, #0x1c]
00574094  01 00 a0 e3                                      mov r0, #1
00574098  0c 10 84 e5                                      str r1, [r4, #0xc]
0057409c  d1 30 52 e1                                      ldrsb r3, [r2, #-1]
005740a0  3e 00 53 e3                                      cmp r3, #0x3e
005740a4  01 00 40 02                                      subeq r0, r0, #1
005740a8  01 00 00 0a                                      beq #0x5740b4
005740ac  3c 00 53 e3                                      cmp r3, #0x3c
005740b0  01 00 80 02                                      addeq r0, r0, #1
005740b4  00 00 50 e3                                      cmp r0, #0
005740b8  0c 20 84 e5                                      str r2, [r4, #0xc]
005740bc  02 30 a0 e1                                      mov r3, r2
005740c0  01 20 82 e2                                      add r2, r2, #1
005740c4  f4 ff ff 1a                                      bne #0x57409c
005740c8  fe 2f 0f e3                                      movw r2, #0xfffe
005740cc  ff 2f 4f e3                                      movt r2, #0xffff
005740d0  03 30 43 e2                                      sub r3, r3, #3
005740d4  02 20 61 e0                                      rsb r2, r1, r2
005740d8  04 60 8d e2                                      add r6, sp, #4
005740dc  02 10 81 e2                                      add r1, r1, #2
005740e0  02 20 83 e0                                      add r2, r3, r2
005740e4  0c 30 84 e5                                      str r3, [r4, #0xc]
005740e8  02 20 81 e0                                      add r2, r1, r2
005740ec  24 80 84 e2                                      add r8, r4, #0x24
005740f0  06 00 a0 e1                                      mov r0, r6
005740f4  14 60 8d e5                                      str r6, [sp, #0x14]
005740f8  18 60 8d e5                                      str r6, [sp, #0x18]
005740fc  bc c7 f6 eb                                      bl #0x325ff4
00574100  06 00 58 e1                                      cmp r8, r6
00574104  03 00 00 0a                                      beq #0x574118
00574108  08 00 a0 e1                                      mov r0, r8
0057410c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00574110  14 20 9d e5                                      ldr r2, [sp, #0x14]
00574114  9b b2 f6 eb                                      bl #0x320b88
00574118  18 00 9d e5                                      ldr r0, [sp, #0x18]
0057411c  06 00 50 e1                                      cmp r0, r6
00574120  02 00 00 0a                                      beq #0x574130
00574124  00 00 50 e3                                      cmp r0, #0
00574128  00 00 00 0a                                      beq #0x574130
0057412c  c7 70 f6 eb                                      bl #0x310450
00574130  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00574134  07 30 95 e7                                      ldr r3, [r5, r7]
00574138  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0057413c  03 10 81 e2                                      add r1, r1, #3
00574140  0c 10 84 e5                                      str r1, [r4, #0xc]
00574144  00 30 93 e5                                      ldr r3, [r3]
00574148  03 00 52 e1                                      cmp r2, r3
0057414c  01 00 00 1a                                      bne #0x574158
00574150  20 d0 8d e2                                      add sp, sp, #0x20
00574154  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00574158  6c 68 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0057415c  24 0a 42 00 ac 40 00 00                          .byte 0x24, 0x0a, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00574164, declared_size=292, range_size=292, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE18getAttributeByNameEPKc
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeByName(char const*) const
; decoder-mode: arm
00574164  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00574168  10 b1 9f e5                                      ldr fp, [pc, #0x110]
0057416c  10 21 9f e5                                      ldr r2, [pc, #0x110]
00574170  2c d0 4d e2                                      sub sp, sp, #0x2c
00574174  0b b0 8f e0                                      add fp, pc, fp
00574178  02 30 9b e7                                      ldr r3, [fp, r2]
0057417c  00 40 51 e2                                      subs r4, r1, #0
00574180  00 20 8d e5                                      str r2, [sp]
00574184  00 30 93 e5                                      ldr r3, [r3]
00574188  00 50 a0 e1                                      mov r5, r0
0057418c  24 30 8d e5                                      str r3, [sp, #0x24]
00574190  2b 00 00 0a                                      beq #0x574244
00574194  0c 30 8d e2                                      add r3, sp, #0xc
00574198  03 00 a0 e1                                      mov r0, r3
0057419c  08 20 8d e2                                      add r2, sp, #8
005741a0  04 30 8d e5                                      str r3, [sp, #4]
005741a4  a4 c7 f6 eb                                      bl #0x32603c
005741a8  68 30 95 e5                                      ldr r3, [r5, #0x68]
005741ac  64 80 95 e5                                      ldr r8, [r5, #0x64]
005741b0  03 30 68 e0                                      rsb r3, r8, r3
005741b4  43 32 a0 e1                                      asr r3, r3, #4
005741b8  03 a1 83 e0                                      add sl, r3, r3, lsl #2
005741bc  0a a2 8a e0                                      add sl, sl, sl, lsl #4
005741c0  0a a4 8a e0                                      add sl, sl, sl, lsl #8
005741c4  0a a8 8a e0                                      add sl, sl, sl, lsl #16
005741c8  8a a0 83 e0                                      add sl, r3, sl, lsl #1
005741cc  00 00 5a e3                                      cmp sl, #0
005741d0  26 00 00 da                                      ble #0x574270
005741d4  20 90 9d e5                                      ldr sb, [sp, #0x20]
005741d8  1c 70 9d e5                                      ldr r7, [sp, #0x1c]
005741dc  00 50 a0 e3                                      mov r5, #0
005741e0  05 60 a0 e1                                      mov r6, r5
005741e4  07 70 69 e0                                      rsb r7, sb, r7
005741e8  03 00 00 ea                                      b #0x5741fc
005741ec  01 60 86 e2                                      add r6, r6, #1
005741f0  0a 00 56 e1                                      cmp r6, sl
005741f4  30 50 85 e2                                      add r5, r5, #0x30
005741f8  1a 00 00 0a                                      beq #0x574268
005741fc  05 40 88 e0                                      add r4, r8, r5
00574200  14 00 94 e5                                      ldr r0, [r4, #0x14]
00574204  10 30 94 e5                                      ldr r3, [r4, #0x10]
00574208  03 30 60 e0                                      rsb r3, r0, r3
0057420c  07 00 53 e1                                      cmp r3, r7
00574210  f5 ff ff 1a                                      bne #0x5741ec
00574214  09 10 a0 e1                                      mov r1, sb
00574218  07 20 a0 e1                                      mov r2, r7
0057421c  ef 68 f6 eb                                      bl #0x30e5e0
00574220  00 00 50 e3                                      cmp r0, #0
00574224  f0 ff ff 1a                                      bne #0x5741ec
00574228  04 20 9d e5                                      ldr r2, [sp, #4]
0057422c  02 00 59 e1                                      cmp sb, r2
00574230  03 00 00 0a                                      beq #0x574244
00574234  00 00 59 e3                                      cmp sb, #0
00574238  01 00 00 0a                                      beq #0x574244
0057423c  09 00 a0 e1                                      mov r0, sb
00574240  82 70 f6 eb                                      bl #0x310450
00574244  00 20 9d e5                                      ldr r2, [sp]
00574248  04 00 a0 e1                                      mov r0, r4
0057424c  02 30 9b e7                                      ldr r3, [fp, r2]
00574250  24 20 9d e5                                      ldr r2, [sp, #0x24]
00574254  00 30 93 e5                                      ldr r3, [r3]
00574258  03 00 52 e1                                      cmp r2, r3
0057425c  06 00 00 1a                                      bne #0x57427c
00574260  2c d0 8d e2                                      add sp, sp, #0x2c
00574264  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00574268  00 40 a0 e3                                      mov r4, #0
0057426c  ed ff ff ea                                      b #0x574228
00574270  20 90 9d e5                                      ldr sb, [sp, #0x20]
00574274  00 40 a0 e3                                      mov r4, #0
00574278  ea ff ff ea                                      b #0x574228
0057427c  23 68 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00574280  1c 09 42 00 ac 40 00 00                          .byte 0x1c, 0x09, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00574288, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE21getAttributeValueSafeEPKc
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValueSafe(char const*) const
; decoder-mode: arm
00574288  10 40 2d e9                                      push {r4, lr}
0057428c  00 40 a0 e1                                      mov r4, r0
00574290  b3 ff ff eb                                      bl #0x574164
00574294  00 00 50 e3                                      cmp r0, #0
00574298  50 00 94 05                                      ldreq r0, [r4, #0x50]
0057429c  2c 00 90 15                                      ldrne r0, [r0, #0x2c]
005742a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005742a4, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17getAttributeValueEPKc
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValue(char const*) const
; decoder-mode: arm
005742a4  10 40 2d e9                                      push {r4, lr}
005742a8  ad ff ff eb                                      bl #0x574164
005742ac  00 00 50 e3                                      cmp r0, #0
005742b0  2c 00 90 15                                      ldrne r0, [r0, #0x2c]
005742b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005742b8, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE24getAttributeValueAsFloatEPKc
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValueAsFloat(char const*) const
; decoder-mode: arm
005742b8  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005742bc  88 40 9f e5                                      ldr r4, [pc, #0x88]
005742c0  88 50 9f e5                                      ldr r5, [pc, #0x88]
005742c4  24 d0 4d e2                                      sub sp, sp, #0x24
005742c8  04 40 8f e0                                      add r4, pc, r4
005742cc  05 30 94 e7                                      ldr r3, [r4, r5]
005742d0  00 30 93 e5                                      ldr r3, [r3]
005742d4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005742d8  a1 ff ff eb                                      bl #0x574164
005742dc  00 00 50 e3                                      cmp r0, #0
005742e0  00 70 a0 03                                      moveq r7, #0
005742e4  0f 00 00 0a                                      beq #0x574328
005742e8  04 60 8d e2                                      add r6, sp, #4
005742ec  2c 10 90 e5                                      ldr r1, [r0, #0x2c]
005742f0  0d 20 a0 e1                                      mov r2, sp
005742f4  06 00 a0 e1                                      mov r0, r6
005742f8  4f c7 f6 eb                                      bl #0x32603c
005742fc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00574300  00 10 a0 e3                                      mov r1, #0
00574304  e8 68 f6 eb                                      bl #0x30e6ac
00574308  e4 68 f6 eb                                      bl #0x30e6a0
0057430c  00 70 a0 e1                                      mov r7, r0
00574310  18 00 9d e5                                      ldr r0, [sp, #0x18]
00574314  06 00 50 e1                                      cmp r0, r6
00574318  02 00 00 0a                                      beq #0x574328
0057431c  00 00 50 e3                                      cmp r0, #0
00574320  00 00 00 0a                                      beq #0x574328
00574324  49 70 f6 eb                                      bl #0x310450
00574328  05 30 94 e7                                      ldr r3, [r4, r5]
0057432c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00574330  07 00 a0 e1                                      mov r0, r7
00574334  00 30 93 e5                                      ldr r3, [r3]
00574338  03 00 52 e1                                      cmp r2, r3
0057433c  01 00 00 1a                                      bne #0x574348
00574340  24 d0 8d e2                                      add sp, sp, #0x24
00574344  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00574348  f0 67 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0057434c  c8 07 42 00 ac 40 00 00                          .byte 0xc8, 0x07, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00574354, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE24getAttributeValueAsFloatEi
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::getAttributeValueAsFloat(int) const
; decoder-mode: arm
00574354  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00574358  88 40 9f e5                                      ldr r4, [pc, #0x88]
0057435c  88 50 9f e5                                      ldr r5, [pc, #0x88]
00574360  2c d0 4d e2                                      sub sp, sp, #0x2c
00574364  04 40 8f e0                                      add r4, pc, r4
00574368  05 30 94 e7                                      ldr r3, [r4, r5]
0057436c  00 30 93 e5                                      ldr r3, [r3]
00574370  24 30 8d e5                                      str r3, [sp, #0x24]
00574374  00 30 90 e5                                      ldr r3, [r0]
00574378  0f e0 a0 e1                                      mov lr, pc
0057437c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00574380  00 10 50 e2                                      subs r1, r0, #0
00574384  00 70 a0 03                                      moveq r7, #0
00574388  0d 00 00 0a                                      beq #0x5743c4
0057438c  0c 60 8d e2                                      add r6, sp, #0xc
00574390  08 20 8d e2                                      add r2, sp, #8
00574394  06 00 a0 e1                                      mov r0, r6
00574398  27 c7 f6 eb                                      bl #0x32603c
0057439c  20 00 9d e5                                      ldr r0, [sp, #0x20]
005743a0  04 10 8d e2                                      add r1, sp, #4
005743a4  07 ba f6 eb                                      bl #0x322bc8
005743a8  20 00 9d e5                                      ldr r0, [sp, #0x20]
005743ac  04 70 9d e5                                      ldr r7, [sp, #4]
005743b0  06 00 50 e1                                      cmp r0, r6
005743b4  02 00 00 0a                                      beq #0x5743c4
005743b8  00 00 50 e3                                      cmp r0, #0
005743bc  00 00 00 0a                                      beq #0x5743c4
005743c0  22 70 f6 eb                                      bl #0x310450
005743c4  05 30 94 e7                                      ldr r3, [r4, r5]
005743c8  24 20 9d e5                                      ldr r2, [sp, #0x24]
005743cc  07 00 a0 e1                                      mov r0, r7
005743d0  00 30 93 e5                                      ldr r3, [r3]
005743d4  03 00 52 e1                                      cmp r2, r3
005743d8  01 00 00 1a                                      bne #0x5743e4
005743dc  2c d0 8d e2                                      add sp, sp, #0x2c
005743e0  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005743e4  c9 67 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005743e8  2c 07 42 00 ac 40 00 00                          .byte 0x2c, 0x07, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x0057539c, declared_size=1108, range_size=1108, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE24replaceSpecialCharactersERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::replaceSpecialCharacters(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
0057539c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005753a0  40 34 9f e5                                      ldr r3, [pc, #0x440]
005753a4  40 c4 9f e5                                      ldr ip, [pc, #0x440]
005753a8  e4 d0 4d e2                                      sub sp, sp, #0xe4
005753ac  03 30 8f e0                                      add r3, pc, r3
005753b0  02 70 a0 e1                                      mov r7, r2
005753b4  0c 20 93 e7                                      ldr r2, [r3, ip]
005753b8  24 30 8d e5                                      str r3, [sp, #0x24]
005753bc  34 c0 8d e5                                      str ip, [sp, #0x34]
005753c0  10 c0 97 e5                                      ldr ip, [r7, #0x10]
005753c4  14 30 97 e5                                      ldr r3, [r7, #0x14]
005753c8  00 20 92 e5                                      ldr r2, [r2]
005753cc  30 00 8d e5                                      str r0, [sp, #0x30]
005753d0  03 00 5c e1                                      cmp ip, r3
005753d4  dc 20 8d e5                                      str r2, [sp, #0xdc]
005753d8  01 50 a0 e1                                      mov r5, r1
005753dc  ec 00 00 0a                                      beq #0x575794
005753e0  e0 20 8d e2                                      add r2, sp, #0xe0
005753e4  26 10 a0 e3                                      mov r1, #0x26
005753e8  88 10 62 e5                                      strb r1, [r2, #-0x88]!
005753ec  03 00 a0 e1                                      mov r0, r3
005753f0  0c 10 a0 e1                                      mov r1, ip
005753f4  5c 30 8d e2                                      add r3, sp, #0x5c
005753f8  01 66 f7 eb                                      bl #0x34ec04
005753fc  10 c0 97 e5                                      ldr ip, [r7, #0x10]
00575400  0c 00 50 e1                                      cmp r0, ip
00575404  14 30 97 05                                      ldreq r3, [r7, #0x14]
00575408  e1 00 00 0a                                      beq #0x575794
0057540c  14 30 97 e5                                      ldr r3, [r7, #0x14]
00575410  00 60 63 e0                                      rsb r6, r3, r0
00575414  01 00 76 e3                                      cmn r6, #1
00575418  dd 00 00 0a                                      beq #0x575794
0057541c  c4 10 8d e2                                      add r1, sp, #0xc4
00575420  01 00 a0 e1                                      mov r0, r1
00575424  14 10 8d e5                                      str r1, [sp, #0x14]
00575428  10 10 a0 e3                                      mov r1, #0x10
0057542c  d4 00 8d e5                                      str r0, [sp, #0xd4]
00575430  d8 00 8d e5                                      str r0, [sp, #0xd8]
00575434  5b ad f6 eb                                      bl #0x3209a8
00575438  d4 20 9d e5                                      ldr r2, [sp, #0xd4]
0057543c  00 30 a0 e3                                      mov r3, #0
00575440  10 30 8d e5                                      str r3, [sp, #0x10]
00575444  7c c0 8d e2                                      add ip, sp, #0x7c
00575448  00 30 c2 e5                                      strb r3, [r2]
0057544c  48 10 8d e2                                      add r1, sp, #0x48
00575450  ac 20 8d e2                                      add r2, sp, #0xac
00575454  10 30 97 e5                                      ldr r3, [r7, #0x10]
00575458  14 80 97 e5                                      ldr r8, [r7, #0x14]
0057545c  20 c0 8d e5                                      str ip, [sp, #0x20]
00575460  2c 10 8d e5                                      str r1, [sp, #0x2c]
00575464  0c 20 8d e5                                      str r2, [sp, #0xc]
00575468  4c c0 8d e2                                      add ip, sp, #0x4c
0057546c  94 10 8d e2                                      add r1, sp, #0x94
00575470  38 20 8d e2                                      add r2, sp, #0x38
00575474  18 c0 8d e5                                      str ip, [sp, #0x18]
00575478  1c 10 8d e5                                      str r1, [sp, #0x1c]
0057547c  28 20 8d e5                                      str r2, [sp, #0x28]
00575480  02 20 43 e2                                      sub r2, r3, #2
00575484  02 20 68 e0                                      rsb r2, r8, r2
00575488  06 00 52 e1                                      cmp r2, r6
0057548c  18 00 00 ca                                      bgt #0x5754f4
00575490  10 20 9d e5                                      ldr r2, [sp, #0x10]
00575494  03 80 68 e0                                      rsb r8, r8, r3
00575498  01 30 48 e2                                      sub r3, r8, #1
0057549c  03 00 52 e1                                      cmp r2, r3
005754a0  a8 00 00 ba                                      blt #0x575748
005754a4  14 10 9d e5                                      ldr r1, [sp, #0x14]
005754a8  30 00 9d e5                                      ldr r0, [sp, #0x30]
005754ac  0d b6 ff eb                                      bl #0x562ce8
005754b0  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
005754b4  14 10 9d e5                                      ldr r1, [sp, #0x14]
005754b8  01 00 50 e1                                      cmp r0, r1
005754bc  02 00 00 0a                                      beq #0x5754cc
005754c0  00 00 50 e3                                      cmp r0, #0
005754c4  00 00 00 0a                                      beq #0x5754cc
005754c8  e0 6b f6 eb                                      bl #0x310450
005754cc  24 10 9d e5                                      ldr r1, [sp, #0x24]
005754d0  34 c0 9d e5                                      ldr ip, [sp, #0x34]
005754d4  dc 20 9d e5                                      ldr r2, [sp, #0xdc]
005754d8  30 00 9d e5                                      ldr r0, [sp, #0x30]
005754dc  0c 30 91 e7                                      ldr r3, [r1, ip]
005754e0  00 30 93 e5                                      ldr r3, [r3]
005754e4  03 00 52 e1                                      cmp r2, r3
005754e8  bd 00 00 1a                                      bne #0x5757e4
005754ec  e4 d0 8d e2                                      add sp, sp, #0xe4
005754f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005754f4  58 a0 95 e5                                      ldr sl, [r5, #0x58]
005754f8  5c 30 95 e5                                      ldr r3, [r5, #0x5c]
005754fc  03 30 6a e0                                      rsb r3, sl, r3
00575500  c3 31 a0 e1                                      asr r3, r3, #3
00575504  03 b1 83 e0                                      add fp, r3, r3, lsl #2
00575508  0b b2 8b e0                                      add fp, fp, fp, lsl #4
0057550c  0b b4 8b e0                                      add fp, fp, fp, lsl #8
00575510  0b b8 8b e0                                      add fp, fp, fp, lsl #16
00575514  8b b0 83 e0                                      add fp, r3, fp, lsl #1
00575518  00 00 5b e3                                      cmp fp, #0
0057551c  01 30 86 d2                                      addle r3, r6, #1
00575520  6e 00 00 da                                      ble #0x5756e0
00575524  01 30 86 e2                                      add r3, r6, #1
00575528  00 40 a0 e3                                      mov r4, #0
0057552c  03 80 88 e0                                      add r8, r8, r3
00575530  04 90 a0 e1                                      mov sb, r4
00575534  04 20 8a e0                                      add r2, sl, r4
00575538  14 00 92 e5                                      ldr r0, [r2, #0x14]
0057553c  10 e0 92 e5                                      ldr lr, [r2, #0x10]
00575540  01 10 d0 e5                                      ldrb r1, [r0, #1]
00575544  0e e0 60 e0                                      rsb lr, r0, lr
00575548  01 e0 4e e2                                      sub lr, lr, #1
0057554c  00 00 51 e3                                      cmp r1, #0
00575550  4a 00 00 1a                                      bne #0x575680
00575554  00 00 a0 e3                                      mov r0, #0
00575558  00 20 a0 e1                                      mov r2, r0
0057555c  02 00 5e e1                                      cmp lr, r2
00575560  04 00 00 0a                                      beq #0x575578
00575564  00 00 51 e3                                      cmp r1, #0
00575568  58 00 00 1a                                      bne #0x5756d0
0057556c  d0 20 98 e1                                      ldrsb r2, [r8, r0]
00575570  00 00 52 e3                                      cmp r2, #0
00575574  55 00 00 1a                                      bne #0x5756d0
00575578  10 20 9d e5                                      ldr r2, [sp, #0x10]
0057557c  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00575580  07 10 a0 e1                                      mov r1, r7
00575584  06 30 62 e0                                      rsb r3, r2, r6
00575588  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0057558c  00 c0 8d e5                                      str ip, [sp]
00575590  cb db ff eb                                      bl #0x56c4c4
00575594  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
00575598  14 00 9d e5                                      ldr r0, [sp, #0x14]
0057559c  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
005755a0  29 ad f6 eb                                      bl #0x320a4c
005755a4  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
005755a8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005755ac  01 00 50 e1                                      cmp r0, r1
005755b0  02 00 00 0a                                      beq #0x5755c0
005755b4  00 00 50 e3                                      cmp r0, #0
005755b8  00 00 00 0a                                      beq #0x5755c0
005755bc  a3 6b f6 eb                                      bl #0x310450
005755c0  58 30 95 e5                                      ldr r3, [r5, #0x58]
005755c4  00 20 a0 e3                                      mov r2, #0
005755c8  b8 23 cd e1                                      strh r2, [sp, #0x38]
005755cc  04 30 83 e0                                      add r3, r3, r4
005755d0  14 30 93 e5                                      ldr r3, [r3, #0x14]
005755d4  28 10 9d e5                                      ldr r1, [sp, #0x28]
005755d8  60 20 8d e2                                      add r2, sp, #0x60
005755dc  00 30 d3 e5                                      ldrb r3, [r3]
005755e0  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
005755e4  38 30 cd e5                                      strb r3, [sp, #0x38]
005755e8  93 c2 f6 eb                                      bl #0x32603c
005755ec  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
005755f0  14 00 9d e5                                      ldr r0, [sp, #0x14]
005755f4  a8 10 9d e5                                      ldr r1, [sp, #0xa8]
005755f8  13 ad f6 eb                                      bl #0x320a4c
005755fc  58 30 95 e5                                      ldr r3, [r5, #0x58]
00575600  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00575604  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00575608  04 40 83 e0                                      add r4, r3, r4
0057560c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00575610  10 20 94 e5                                      ldr r2, [r4, #0x10]
00575614  0c 00 50 e1                                      cmp r0, ip
00575618  02 30 63 e0                                      rsb r3, r3, r2
0057561c  06 40 83 e0                                      add r4, r3, r6
00575620  02 00 00 0a                                      beq #0x575630
00575624  00 00 50 e3                                      cmp r0, #0
00575628  00 00 00 0a                                      beq #0x575630
0057562c  87 6b f6 eb                                      bl #0x310450
00575630  10 10 97 e5                                      ldr r1, [r7, #0x10]
00575634  14 00 97 e5                                      ldr r0, [r7, #0x14]
00575638  01 80 60 e0                                      rsb r8, r0, r1
0057563c  08 00 54 e1                                      cmp r4, r8
00575640  3b 00 00 2a                                      bhs #0x575734
00575644  e0 20 8d e2                                      add r2, sp, #0xe0
00575648  26 30 a0 e3                                      mov r3, #0x26
0057564c  9c 30 62 e5                                      strb r3, [r2, #-0x9c]!
00575650  04 00 80 e0                                      add r0, r0, r4
00575654  40 30 8d e2                                      add r3, sp, #0x40
00575658  69 65 f7 eb                                      bl #0x34ec04
0057565c  10 30 97 e5                                      ldr r3, [r7, #0x10]
00575660  03 00 50 e1                                      cmp r0, r3
00575664  30 00 00 0a                                      beq #0x57572c
00575668  14 80 97 e5                                      ldr r8, [r7, #0x14]
0057566c  10 40 8d e5                                      str r4, [sp, #0x10]
00575670  00 60 68 e0                                      rsb r6, r8, r0
00575674  01 00 76 e3                                      cmn r6, #1
00575678  80 ff ff 1a                                      bne #0x575480
0057567c  83 ff ff ea                                      b #0x575490
00575680  d0 20 d8 e1                                      ldrsb r2, [r8]
00575684  00 00 52 e3                                      cmp r2, #0
00575688  00 00 5e 13                                      cmpne lr, #0
0057568c  b0 ff ff da                                      ble #0x575554
00575690  71 10 af e6                                      sxtb r1, r1
00575694  02 00 51 e1                                      cmp r1, r2
00575698  0c 00 00 1a                                      bne #0x5756d0
0057569c  00 20 a0 e3                                      mov r2, #0
005756a0  02 10 d0 e5                                      ldrb r1, [r0, #2]
005756a4  01 20 82 e2                                      add r2, r2, #1
005756a8  00 00 51 e3                                      cmp r1, #0
005756ac  1c 00 00 0a                                      beq #0x575724
005756b0  d2 c0 98 e1                                      ldrsb ip, [r8, r2]
005756b4  00 00 5c e3                                      cmp ip, #0
005756b8  02 00 5e 11                                      cmpne lr, r2
005756bc  18 00 00 da                                      ble #0x575724
005756c0  71 10 af e6                                      sxtb r1, r1
005756c4  0c 00 51 e1                                      cmp r1, ip
005756c8  01 00 80 e2                                      add r0, r0, #1
005756cc  f3 ff ff 0a                                      beq #0x5756a0
005756d0  01 90 89 e2                                      add sb, sb, #1
005756d4  0b 00 59 e1                                      cmp sb, fp
005756d8  18 40 84 e2                                      add r4, r4, #0x18
005756dc  94 ff ff 1a                                      bne #0x575534
005756e0  10 20 9d e5                                      ldr r2, [sp, #0x10]
005756e4  2c c0 9d e5                                      ldr ip, [sp, #0x2c]
005756e8  07 10 a0 e1                                      mov r1, r7
005756ec  03 40 a0 e1                                      mov r4, r3
005756f0  20 00 9d e5                                      ldr r0, [sp, #0x20]
005756f4  03 30 62 e0                                      rsb r3, r2, r3
005756f8  00 c0 8d e5                                      str ip, [sp]
005756fc  70 db ff eb                                      bl #0x56c4c4
00575700  90 10 9d e5                                      ldr r1, [sp, #0x90]
00575704  14 00 9d e5                                      ldr r0, [sp, #0x14]
00575708  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0057570c  ce ac f6 eb                                      bl #0x320a4c
00575710  90 00 9d e5                                      ldr r0, [sp, #0x90]
00575714  20 10 9d e5                                      ldr r1, [sp, #0x20]
00575718  01 00 50 e1                                      cmp r0, r1
0057571c  c0 ff ff 1a                                      bne #0x575624
00575720  c2 ff ff ea                                      b #0x575630
00575724  02 00 a0 e1                                      mov r0, r2
00575728  8b ff ff ea                                      b #0x57555c
0057572c  14 80 97 e5                                      ldr r8, [r7, #0x14]
00575730  00 80 68 e0                                      rsb r8, r8, r0
00575734  10 40 8d e5                                      str r4, [sp, #0x10]
00575738  10 20 9d e5                                      ldr r2, [sp, #0x10]
0057573c  01 30 48 e2                                      sub r3, r8, #1
00575740  03 00 52 e1                                      cmp r2, r3
00575744  56 ff ff aa                                      bge #0x5754a4
00575748  10 20 9d e5                                      ldr r2, [sp, #0x10]
0057574c  64 40 8d e2                                      add r4, sp, #0x64
00575750  3c c0 8d e2                                      add ip, sp, #0x3c
00575754  08 30 62 e0                                      rsb r3, r2, r8
00575758  07 10 a0 e1                                      mov r1, r7
0057575c  04 00 a0 e1                                      mov r0, r4
00575760  00 c0 8d e5                                      str ip, [sp]
00575764  56 db ff eb                                      bl #0x56c4c4
00575768  14 00 9d e5                                      ldr r0, [sp, #0x14]
0057576c  78 10 9d e5                                      ldr r1, [sp, #0x78]
00575770  74 20 9d e5                                      ldr r2, [sp, #0x74]
00575774  b4 ac f6 eb                                      bl #0x320a4c
00575778  78 00 9d e5                                      ldr r0, [sp, #0x78]
0057577c  04 00 50 e1                                      cmp r0, r4
00575780  47 ff ff 0a                                      beq #0x5754a4
00575784  00 00 50 e3                                      cmp r0, #0
00575788  45 ff ff 0a                                      beq #0x5754a4
0057578c  2f 6b f6 eb                                      bl #0x310450
00575790  43 ff ff ea                                      b #0x5754a4
00575794  03 00 5c e1                                      cmp ip, r3
00575798  0d 00 00 0a                                      beq #0x5757d4
0057579c  e0 20 8d e2                                      add r2, sp, #0xe0
005757a0  26 10 a0 e3                                      mov r1, #0x26
005757a4  90 10 62 e5                                      strb r1, [r2, #-0x90]!
005757a8  03 00 a0 e1                                      mov r0, r3
005757ac  0c 10 a0 e1                                      mov r1, ip
005757b0  54 30 8d e2                                      add r3, sp, #0x54
005757b4  12 65 f7 eb                                      bl #0x34ec04
005757b8  10 30 97 e5                                      ldr r3, [r7, #0x10]
005757bc  03 00 50 e1                                      cmp r0, r3
005757c0  03 00 00 0a                                      beq #0x5757d4
005757c4  14 60 97 e5                                      ldr r6, [r7, #0x14]
005757c8  00 60 66 e0                                      rsb r6, r6, r0
005757cc  01 00 76 e3                                      cmn r6, #1
005757d0  11 ff ff 1a                                      bne #0x57541c
005757d4  07 10 a0 e1                                      mov r1, r7
005757d8  30 00 9d e5                                      ldr r0, [sp, #0x30]
005757dc  41 b5 ff eb                                      bl #0x562ce8
005757e0  39 ff ff ea                                      b #0x5754cc
005757e4  c9 62 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005757e8  e4 f6 41 00 ac 40 00 00                          .byte 0xe4, 0xf6, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005757f0, declared_size=296, range_size=296, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE7setTextEPcS4_
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::setText(char*, char*)
; decoder-mode: arm
005757f0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005757f4  14 41 9f e5                                      ldr r4, [pc, #0x114]
005757f8  14 81 9f e5                                      ldr r8, [pc, #0x114]
005757fc  02 30 61 e0                                      rsb r3, r1, r2
00575800  04 40 8f e0                                      add r4, pc, r4
00575804  08 c0 94 e7                                      ldr ip, [r4, r8]
00575808  3c d0 4d e2                                      sub sp, sp, #0x3c
0057580c  02 00 53 e3                                      cmp r3, #2
00575810  00 c0 9c e5                                      ldr ip, [ip]
00575814  00 60 a0 e1                                      mov r6, r0
00575818  34 c0 8d e5                                      str ip, [sp, #0x34]
0057581c  0b 00 00 ca                                      bgt #0x575850
00575820  01 00 52 e1                                      cmp r2, r1
00575824  34 00 00 0a                                      beq #0x5758fc
00575828  01 c0 a0 e1                                      mov ip, r1
0057582c  d0 00 dc e1                                      ldrsb r0, [ip]
00575830  20 00 50 e3                                      cmp r0, #0x20
00575834  09 00 50 13                                      cmpne r0, #9
00575838  2c 00 00 0a                                      beq #0x5758f0
0057583c  0a 00 50 e3                                      cmp r0, #0xa
00575840  0d 00 50 13                                      cmpne r0, #0xd
00575844  29 00 00 0a                                      beq #0x5758f0
00575848  02 00 5c e1                                      cmp ip, r2
0057584c  2a 00 00 0a                                      beq #0x5758fc
00575850  1c 50 8d e2                                      add r5, sp, #0x1c
00575854  03 20 81 e0                                      add r2, r1, r3
00575858  05 00 a0 e1                                      mov r0, r5
0057585c  04 70 8d e2                                      add r7, sp, #4
00575860  2c 50 8d e5                                      str r5, [sp, #0x2c]
00575864  30 50 8d e5                                      str r5, [sp, #0x30]
00575868  24 a0 86 e2                                      add sl, r6, #0x24
0057586c  e0 c1 f6 eb                                      bl #0x325ff4
00575870  07 00 a0 e1                                      mov r0, r7
00575874  06 10 a0 e1                                      mov r1, r6
00575878  05 20 a0 e1                                      mov r2, r5
0057587c  c6 fe ff eb                                      bl #0x57539c
00575880  07 00 5a e1                                      cmp sl, r7
00575884  03 00 00 0a                                      beq #0x575898
00575888  0a 00 a0 e1                                      mov r0, sl
0057588c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00575890  14 20 9d e5                                      ldr r2, [sp, #0x14]
00575894  bb ac f6 eb                                      bl #0x320b88
00575898  18 00 9d e5                                      ldr r0, [sp, #0x18]
0057589c  07 00 50 e1                                      cmp r0, r7
005758a0  02 00 00 0a                                      beq #0x5758b0
005758a4  00 00 50 e3                                      cmp r0, #0
005758a8  00 00 00 0a                                      beq #0x5758b0
005758ac  e7 6a f6 eb                                      bl #0x310450
005758b0  30 00 9d e5                                      ldr r0, [sp, #0x30]
005758b4  03 30 a0 e3                                      mov r3, #3
005758b8  18 30 86 e5                                      str r3, [r6, #0x18]
005758bc  05 00 50 e1                                      cmp r0, r5
005758c0  0f 00 00 0a                                      beq #0x575904
005758c4  00 00 50 e3                                      cmp r0, #0
005758c8  0d 00 00 0a                                      beq #0x575904
005758cc  df 6a f6 eb                                      bl #0x310450
005758d0  01 00 a0 e3                                      mov r0, #1
005758d4  08 30 94 e7                                      ldr r3, [r4, r8]
005758d8  34 20 9d e5                                      ldr r2, [sp, #0x34]
005758dc  00 30 93 e5                                      ldr r3, [r3]
005758e0  03 00 52 e1                                      cmp r2, r3
005758e4  08 00 00 1a                                      bne #0x57590c
005758e8  3c d0 8d e2                                      add sp, sp, #0x3c
005758ec  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005758f0  01 c0 8c e2                                      add ip, ip, #1
005758f4  02 00 5c e1                                      cmp ip, r2
005758f8  cb ff ff 1a                                      bne #0x57582c
005758fc  00 00 a0 e3                                      mov r0, #0
00575900  f3 ff ff ea                                      b #0x5758d4
00575904  01 00 a0 e3                                      mov r0, #1
00575908  f1 ff ff ea                                      b #0x5758d4
0057590c  7f 62 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00575910  90 f2 41 00 ac 40 00 00                          .byte 0x90, 0xf2, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00575918, declared_size=1104, range_size=1104, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22parseOpeningXMLElementEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::parseOpeningXMLElement()
; decoder-mode: arm
00575918  40 14 9f e5                                      ldr r1, [pc, #0x440]
0057591c  40 24 9f e5                                      ldr r2, [pc, #0x440]
00575920  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00575924  01 10 8f e0                                      add r1, pc, r1
00575928  02 30 91 e7                                      ldr r3, [r1, r2]
0057592c  bc d0 4d e2                                      sub sp, sp, #0xbc
00575930  10 10 8d e5                                      str r1, [sp, #0x10]
00575934  00 30 93 e5                                      ldr r3, [r3]
00575938  18 20 8d e5                                      str r2, [sp, #0x18]
0057593c  64 10 90 e5                                      ldr r1, [r0, #0x64]
00575940  68 20 90 e5                                      ldr r2, [r0, #0x68]
00575944  b4 30 8d e5                                      str r3, [sp, #0xb4]
00575948  01 30 a0 e3                                      mov r3, #1
0057594c  18 30 80 e5                                      str r3, [r0, #0x18]
00575950  00 30 a0 e3                                      mov r3, #0
00575954  54 30 c0 e5                                      strb r3, [r0, #0x54]
00575958  02 00 51 e1                                      cmp r1, r2
0057595c  64 30 80 e2                                      add r3, r0, #0x64
00575960  00 40 a0 e1                                      mov r4, r0
00575964  0c 30 8d e5                                      str r3, [sp, #0xc]
00575968  02 00 00 0a                                      beq #0x575978
0057596c  03 00 a0 e1                                      mov r0, r3
00575970  20 30 8d e2                                      add r3, sp, #0x20
00575974  08 f9 ff eb                                      bl #0x573d9c
00575978  0c 00 94 e5                                      ldr r0, [r4, #0xc]
0057597c  14 00 8d e5                                      str r0, [sp, #0x14]
00575980  d0 30 d0 e1                                      ldrsb r3, [r0]
00575984  3e 00 53 e3                                      cmp r3, #0x3e
00575988  02 00 00 0a                                      beq #0x575998
0057598c  20 00 53 e3                                      cmp r3, #0x20
00575990  09 00 53 13                                      cmpne r3, #9
00575994  ce 00 00 1a                                      bne #0x575cd4
00575998  14 b0 9d e5                                      ldr fp, [sp, #0x14]
0057599c  24 50 8d e2                                      add r5, sp, #0x24
005759a0  6c 10 8d e2                                      add r1, sp, #0x6c
005759a4  3e 00 53 e3                                      cmp r3, #0x3e
005759a8  1c b0 8d e5                                      str fp, [sp, #0x1c]
005759ac  18 60 85 e2                                      add r6, r5, #0x18
005759b0  9c a0 8d e2                                      add sl, sp, #0x9c
005759b4  84 70 8d e2                                      add r7, sp, #0x84
005759b8  08 10 8d e5                                      str r1, [sp, #8]
005759bc  4e 00 00 0a                                      beq #0x575afc
005759c0  20 00 53 e3                                      cmp r3, #0x20
005759c4  09 00 53 13                                      cmpne r3, #9
005759c8  45 00 00 0a                                      beq #0x575ae4
005759cc  0a 00 53 e3                                      cmp r3, #0xa
005759d0  0d 00 53 13                                      cmpne r3, #0xd
005759d4  42 00 00 0a                                      beq #0x575ae4
005759d8  2f 00 53 e3                                      cmp r3, #0x2f
005759dc  d5 00 00 0a                                      beq #0x575d38
005759e0  3d 00 53 e3                                      cmp r3, #0x3d
005759e4  0b 90 a0 01                                      moveq sb, fp
005759e8  06 00 00 0a                                      beq #0x575a08
005759ec  0b 90 a0 e1                                      mov sb, fp
005759f0  01 90 89 e2                                      add sb, sb, #1
005759f4  0c 90 84 e5                                      str sb, [r4, #0xc]
005759f8  d0 30 d9 e1                                      ldrsb r3, [sb]
005759fc  20 00 53 e3                                      cmp r3, #0x20
00575a00  09 00 53 13                                      cmpne r3, #9
00575a04  1c 00 00 1a                                      bne #0x575a7c
00575a08  01 20 89 e2                                      add r2, sb, #1
00575a0c  0c 20 84 e5                                      str r2, [r4, #0xc]
00575a10  01 00 d9 e5                                      ldrb r0, [sb, #1]
00575a14  70 10 af e6                                      sxtb r1, r0
00575a18  27 00 51 e3                                      cmp r1, #0x27
00575a1c  22 00 51 13                                      cmpne r1, #0x22
00575a20  21 00 00 1a                                      bne #0x575aac
00575a24  00 00 50 e3                                      cmp r0, #0
00575a28  0a 00 00 0a                                      beq #0x575a58
00575a2c  01 80 82 e2                                      add r8, r2, #1
00575a30  0c 80 84 e5                                      str r8, [r4, #0xc]
00575a34  01 30 d2 e5                                      ldrb r3, [r2, #1]
00575a38  73 20 af e6                                      sxtb r2, r3
00575a3c  01 00 52 e1                                      cmp r2, r1
00575a40  00 20 a0 03                                      moveq r2, #0
00575a44  08 30 a0 01                                      moveq r3, r8
00575a48  04 20 8d 05                                      streq r2, [sp, #4]
00575a4c  52 00 00 0a                                      beq #0x575b9c
00575a50  00 00 53 e3                                      cmp r3, #0
00575a54  44 00 00 1a                                      bne #0x575b6c
00575a58  10 20 9d e5                                      ldr r2, [sp, #0x10]
00575a5c  18 10 9d e5                                      ldr r1, [sp, #0x18]
00575a60  01 30 92 e7                                      ldr r3, [r2, r1]
00575a64  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
00575a68  00 30 93 e5                                      ldr r3, [r3]
00575a6c  03 00 52 e1                                      cmp r2, r3
00575a70  b9 00 00 1a                                      bne #0x575d5c
00575a74  bc d0 8d e2                                      add sp, sp, #0xbc
00575a78  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00575a7c  0a 00 53 e3                                      cmp r3, #0xa
00575a80  0d 00 53 13                                      cmpne r3, #0xd
00575a84  df ff ff 0a                                      beq #0x575a08
00575a88  3d 00 53 e3                                      cmp r3, #0x3d
00575a8c  d7 ff ff 1a                                      bne #0x5759f0
00575a90  01 20 89 e2                                      add r2, sb, #1
00575a94  0c 20 84 e5                                      str r2, [r4, #0xc]
00575a98  01 00 d9 e5                                      ldrb r0, [sb, #1]
00575a9c  70 10 af e6                                      sxtb r1, r0
00575aa0  27 00 51 e3                                      cmp r1, #0x27
00575aa4  22 00 51 13                                      cmpne r1, #0x22
00575aa8  dd ff ff 0a                                      beq #0x575a24
00575aac  00 00 50 e3                                      cmp r0, #0
00575ab0  e8 ff ff 0a                                      beq #0x575a58
00575ab4  02 30 89 e2                                      add r3, sb, #2
00575ab8  0c 30 84 e5                                      str r3, [r4, #0xc]
00575abc  00 00 d3 e5                                      ldrb r0, [r3]
00575ac0  03 20 a0 e1                                      mov r2, r3
00575ac4  70 10 af e6                                      sxtb r1, r0
00575ac8  27 00 51 e3                                      cmp r1, #0x27
00575acc  22 00 51 13                                      cmpne r1, #0x22
00575ad0  d3 ff ff 0a                                      beq #0x575a24
00575ad4  00 00 50 e3                                      cmp r0, #0
00575ad8  01 30 83 e2                                      add r3, r3, #1
00575adc  dd ff ff 0a                                      beq #0x575a58
00575ae0  f4 ff ff ea                                      b #0x575ab8
00575ae4  01 b0 8b e2                                      add fp, fp, #1
00575ae8  0c b0 84 e5                                      str fp, [r4, #0xc]
00575aec  0c b0 94 e5                                      ldr fp, [r4, #0xc]
00575af0  d0 30 db e1                                      ldrsb r3, [fp]
00575af4  3e 00 53 e3                                      cmp r3, #0x3e
00575af8  b0 ff ff 1a                                      bne #0x5759c0
00575afc  14 20 9d e5                                      ldr r2, [sp, #0x14]
00575b00  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00575b04  03 00 52 e1                                      cmp r2, r3
00575b08  82 00 00 3a                                      blo #0x575d18
00575b0c  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00575b10  54 50 8d e2                                      add r5, sp, #0x54
00575b14  14 10 9d e5                                      ldr r1, [sp, #0x14]
00575b18  24 60 84 e2                                      add r6, r4, #0x24
00575b1c  05 00 a0 e1                                      mov r0, r5
00575b20  64 50 8d e5                                      str r5, [sp, #0x64]
00575b24  68 50 8d e5                                      str r5, [sp, #0x68]
00575b28  31 c1 f6 eb                                      bl #0x325ff4
00575b2c  05 00 56 e1                                      cmp r6, r5
00575b30  03 00 00 0a                                      beq #0x575b44
00575b34  06 00 a0 e1                                      mov r0, r6
00575b38  68 10 9d e5                                      ldr r1, [sp, #0x68]
00575b3c  64 20 9d e5                                      ldr r2, [sp, #0x64]
00575b40  10 ac f6 eb                                      bl #0x320b88
00575b44  68 00 9d e5                                      ldr r0, [sp, #0x68]
00575b48  05 00 50 e1                                      cmp r0, r5
00575b4c  02 00 00 0a                                      beq #0x575b5c
00575b50  00 00 50 e3                                      cmp r0, #0
00575b54  00 00 00 0a                                      beq #0x575b5c
00575b58  3c 6a f6 eb                                      bl #0x310450
00575b5c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00575b60  01 30 83 e2                                      add r3, r3, #1
00575b64  0c 30 84 e5                                      str r3, [r4, #0xc]
00575b68  ba ff ff ea                                      b #0x575a58
00575b6c  08 30 a0 e1                                      mov r3, r8
00575b70  01 00 00 ea                                      b #0x575b7c
00575b74  00 00 52 e3                                      cmp r2, #0
00575b78  b6 ff ff 0a                                      beq #0x575a58
00575b7c  01 30 83 e2                                      add r3, r3, #1
00575b80  0c 30 84 e5                                      str r3, [r4, #0xc]
00575b84  00 20 d3 e5                                      ldrb r2, [r3]
00575b88  72 00 af e6                                      sxtb r0, r2
00575b8c  01 00 50 e1                                      cmp r0, r1
00575b90  f7 ff ff 1a                                      bne #0x575b74
00575b94  03 00 68 e0                                      rsb r0, r8, r3
00575b98  04 00 8d e5                                      str r0, [sp, #4]
00575b9c  01 30 83 e2                                      add r3, r3, #1
00575ba0  0c 30 84 e5                                      str r3, [r4, #0xc]
00575ba4  05 00 a0 e1                                      mov r0, r5
00575ba8  10 10 a0 e3                                      mov r1, #0x10
00575bac  34 50 8d e5                                      str r5, [sp, #0x34]
00575bb0  38 50 8d e5                                      str r5, [sp, #0x38]
00575bb4  7b ab f6 eb                                      bl #0x3209a8
00575bb8  34 30 9d e5                                      ldr r3, [sp, #0x34]
00575bbc  00 20 a0 e3                                      mov r2, #0
00575bc0  06 00 a0 e1                                      mov r0, r6
00575bc4  00 20 c3 e5                                      strb r2, [r3]
00575bc8  10 10 a0 e3                                      mov r1, #0x10
00575bcc  4c 60 8d e5                                      str r6, [sp, #0x4c]
00575bd0  50 60 8d e5                                      str r6, [sp, #0x50]
00575bd4  73 ab f6 eb                                      bl #0x3209a8
00575bd8  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
00575bdc  00 00 a0 e3                                      mov r0, #0
00575be0  0b 10 a0 e1                                      mov r1, fp
00575be4  00 00 c3 e5                                      strb r0, [r3]
00575be8  09 20 a0 e1                                      mov r2, sb
00575bec  0a 00 a0 e1                                      mov r0, sl
00575bf0  ac a0 8d e5                                      str sl, [sp, #0xac]
00575bf4  b0 a0 8d e5                                      str sl, [sp, #0xb0]
00575bf8  fd c0 f6 eb                                      bl #0x325ff4
00575bfc  05 00 a0 e1                                      mov r0, r5
00575c00  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
00575c04  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00575c08  de ab f6 eb                                      bl #0x320b88
00575c0c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
00575c10  0a 00 50 e1                                      cmp r0, sl
00575c14  02 00 00 0a                                      beq #0x575c24
00575c18  00 00 50 e3                                      cmp r0, #0
00575c1c  00 00 00 0a                                      beq #0x575c24
00575c20  0a 6a f6 eb                                      bl #0x310450
00575c24  04 30 9d e5                                      ldr r3, [sp, #4]
00575c28  08 10 a0 e1                                      mov r1, r8
00575c2c  07 00 a0 e1                                      mov r0, r7
00575c30  03 20 88 e0                                      add r2, r8, r3
00575c34  94 70 8d e5                                      str r7, [sp, #0x94]
00575c38  98 70 8d e5                                      str r7, [sp, #0x98]
00575c3c  ec c0 f6 eb                                      bl #0x325ff4
00575c40  08 00 9d e5                                      ldr r0, [sp, #8]
00575c44  04 10 a0 e1                                      mov r1, r4
00575c48  07 20 a0 e1                                      mov r2, r7
00575c4c  d2 fd ff eb                                      bl #0x57539c
00575c50  80 10 9d e5                                      ldr r1, [sp, #0x80]
00575c54  06 00 a0 e1                                      mov r0, r6
00575c58  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
00575c5c  c9 ab f6 eb                                      bl #0x320b88
00575c60  80 00 9d e5                                      ldr r0, [sp, #0x80]
00575c64  08 10 9d e5                                      ldr r1, [sp, #8]
00575c68  01 00 50 e1                                      cmp r0, r1
00575c6c  02 00 00 0a                                      beq #0x575c7c
00575c70  00 00 50 e3                                      cmp r0, #0
00575c74  00 00 00 0a                                      beq #0x575c7c
00575c78  f4 69 f6 eb                                      bl #0x310450
00575c7c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00575c80  05 10 a0 e1                                      mov r1, r5
00575c84  ee f7 ff eb                                      bl #0x573c44
00575c88  98 00 9d e5                                      ldr r0, [sp, #0x98]
00575c8c  07 00 50 e1                                      cmp r0, r7
00575c90  02 00 00 0a                                      beq #0x575ca0
00575c94  00 00 50 e3                                      cmp r0, #0
00575c98  00 00 00 0a                                      beq #0x575ca0
00575c9c  eb 69 f6 eb                                      bl #0x310450
00575ca0  50 00 9d e5                                      ldr r0, [sp, #0x50]
00575ca4  06 00 50 e1                                      cmp r0, r6
00575ca8  02 00 00 0a                                      beq #0x575cb8
00575cac  00 00 50 e3                                      cmp r0, #0
00575cb0  00 00 00 0a                                      beq #0x575cb8
00575cb4  e5 69 f6 eb                                      bl #0x310450
00575cb8  38 00 9d e5                                      ldr r0, [sp, #0x38]
00575cbc  05 00 50 e1                                      cmp r0, r5
00575cc0  89 ff ff 0a                                      beq #0x575aec
00575cc4  00 00 50 e3                                      cmp r0, #0
00575cc8  87 ff ff 0a                                      beq #0x575aec
00575ccc  df 69 f6 eb                                      bl #0x310450
00575cd0  85 ff ff ea                                      b #0x575aec
00575cd4  0a 00 53 e3                                      cmp r3, #0xa
00575cd8  0d 00 53 13                                      cmpne r3, #0xd
00575cdc  00 b0 a0 11                                      movne fp, r0
00575ce0  03 00 00 1a                                      bne #0x575cf4
00575ce4  2b ff ff ea                                      b #0x575998
00575ce8  0a 00 53 e3                                      cmp r3, #0xa
00575cec  0d 00 53 13                                      cmpne r3, #0xd
00575cf0  29 ff ff 0a                                      beq #0x57599c
00575cf4  01 b0 8b e2                                      add fp, fp, #1
00575cf8  0c b0 84 e5                                      str fp, [r4, #0xc]
00575cfc  d0 30 db e1                                      ldrsb r3, [fp]
00575d00  3e 00 53 e3                                      cmp r3, #0x3e
00575d04  24 ff ff 0a                                      beq #0x57599c
00575d08  20 00 53 e3                                      cmp r3, #0x20
00575d0c  09 00 53 13                                      cmpne r3, #9
00575d10  21 ff ff 0a                                      beq #0x57599c
00575d14  f3 ff ff ea                                      b #0x575ce8
00575d18  d1 30 53 e1                                      ldrsb r3, [r3, #-1]
00575d1c  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00575d20  2f 00 53 e3                                      cmp r3, #0x2f
00575d24  01 30 a0 03                                      moveq r3, #1
00575d28  01 20 40 e2                                      sub r2, r0, #1
00575d2c  54 30 c4 05                                      strbeq r3, [r4, #0x54]
00575d30  75 ff ff 1a                                      bne #0x575b0c
00575d34  75 ff ff ea                                      b #0x575b10
00575d38  01 30 a0 e3                                      mov r3, #1
00575d3c  01 b0 8b e2                                      add fp, fp, #1
00575d40  0c b0 84 e5                                      str fp, [r4, #0xc]
00575d44  54 30 c4 e5                                      strb r3, [r4, #0x54]
00575d48  14 20 9d e5                                      ldr r2, [sp, #0x14]
00575d4c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
00575d50  03 00 52 e1                                      cmp r2, r3
00575d54  6c ff ff 2a                                      bhs #0x575b0c
00575d58  ee ff ff ea                                      b #0x575d18
00575d5c  6b 61 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00575d60  6c f1 41 00 ac 40 00 00                          .byte 0x6c, 0xf1, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00575d68, declared_size=468, range_size=468, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE10parseCDATAEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::parseCDATA()
; decoder-mode: arm
00575d68  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00575d6c  c0 41 9f e5                                      ldr r4, [pc, #0x1c0]
00575d70  c0 51 9f e5                                      ldr r5, [pc, #0x1c0]
00575d74  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00575d78  04 40 8f e0                                      add r4, pc, r4
00575d7c  05 30 94 e7                                      ldr r3, [r4, r5]
00575d80  3c d0 4d e2                                      sub sp, sp, #0x3c
00575d84  00 70 a0 e1                                      mov r7, r0
00575d88  00 30 93 e5                                      ldr r3, [r3]
00575d8c  34 30 8d e5                                      str r3, [sp, #0x34]
00575d90  d1 30 d2 e1                                      ldrsb r3, [r2, #1]
00575d94  5b 00 53 e3                                      cmp r3, #0x5b
00575d98  00 00 a0 13                                      movne r0, #0
00575d9c  06 00 00 0a                                      beq #0x575dbc
00575da0  05 30 94 e7                                      ldr r3, [r4, r5]
00575da4  34 20 9d e5                                      ldr r2, [sp, #0x34]
00575da8  00 30 93 e5                                      ldr r3, [r3]
00575dac  03 00 52 e1                                      cmp r2, r3
00575db0  5e 00 00 1a                                      bne #0x575f30
00575db4  3c d0 8d e2                                      add sp, sp, #0x3c
00575db8  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00575dbc  05 30 a0 e3                                      mov r3, #5
00575dc0  18 30 87 e5                                      str r3, [r7, #0x18]
00575dc4  00 00 d2 e5                                      ldrb r0, [r2]
00575dc8  02 10 a0 e1                                      mov r1, r2
00575dcc  00 00 50 e3                                      cmp r0, #0
00575dd0  0b 00 00 0a                                      beq #0x575e04
00575dd4  01 30 a0 e3                                      mov r3, #1
00575dd8  03 10 82 e0                                      add r1, r2, r3
00575ddc  0c 10 87 e5                                      str r1, [r7, #0xc]
00575de0  03 00 d2 e7                                      ldrb r0, [r2, r3]
00575de4  07 00 53 e3                                      cmp r3, #7
00575de8  00 c0 a0 c3                                      movgt ip, #0
00575dec  01 c0 a0 d3                                      movle ip, #1
00575df0  01 30 83 e2                                      add r3, r3, #1
00575df4  00 00 50 e3                                      cmp r0, #0
00575df8  00 c0 a0 03                                      moveq ip, #0
00575dfc  00 00 5c e3                                      cmp ip, #0
00575e00  f4 ff ff 1a                                      bne #0x575dd8
00575e04  00 00 50 e3                                      cmp r0, #0
00575e08  32 00 00 0a                                      beq #0x575ed8
00575e0c  0c 30 97 e5                                      ldr r3, [r7, #0xc]
00575e10  d0 00 d3 e1                                      ldrsb r0, [r3]
00575e14  00 00 50 e3                                      cmp r0, #0
00575e18  1b 00 00 0a                                      beq #0x575e8c
00575e1c  02 30 43 e2                                      sub r3, r3, #2
00575e20  0b 00 00 ea                                      b #0x575e54
00575e24  01 c0 a0 e3                                      mov ip, #1
00575e28  00 20 a0 e3                                      mov r2, #0
00575e2c  03 00 83 e2                                      add r0, r3, #3
00575e30  0c 00 87 e5                                      str r0, [r7, #0xc]
00575e34  03 00 d3 e5                                      ldrb r0, [r3, #3]
00575e38  01 30 83 e2                                      add r3, r3, #1
00575e3c  70 00 af e6                                      sxtb r0, r0
00575e40  00 00 50 e3                                      cmp r0, #0
00575e44  00 c0 a0 03                                      moveq ip, #0
00575e48  01 c0 0c 12                                      andne ip, ip, #1
00575e4c  00 00 5c e3                                      cmp ip, #0
00575e50  0b 00 00 0a                                      beq #0x575e84
00575e54  3e 00 50 e3                                      cmp r0, #0x3e
00575e58  f1 ff ff 1a                                      bne #0x575e24
00575e5c  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
00575e60  5d 00 52 e3                                      cmp r2, #0x5d
00575e64  ee ff ff 1a                                      bne #0x575e24
00575e68  d0 00 d3 e1                                      ldrsb r0, [r3]
00575e6c  03 20 a0 e1                                      mov r2, r3
00575e70  5d 00 50 e3                                      cmp r0, #0x5d
00575e74  ea ff ff 1a                                      bne #0x575e24
00575e78  01 c0 73 e2                                      rsbs ip, r3, #1
00575e7c  00 c0 a0 33                                      movlo ip, #0
00575e80  e9 ff ff ea                                      b #0x575e2c
00575e84  00 00 52 e3                                      cmp r2, #0
00575e88  14 00 00 1a                                      bne #0x575ee0
00575e8c  04 60 8d e2                                      add r6, sp, #4
00575e90  06 00 a0 e1                                      mov r0, r6
00575e94  10 10 a0 e3                                      mov r1, #0x10
00575e98  14 60 8d e5                                      str r6, [sp, #0x14]
00575e9c  18 60 8d e5                                      str r6, [sp, #0x18]
00575ea0  c0 aa f6 eb                                      bl #0x3209a8
00575ea4  14 30 9d e5                                      ldr r3, [sp, #0x14]
00575ea8  24 70 87 e2                                      add r7, r7, #0x24
00575eac  00 20 a0 e3                                      mov r2, #0
00575eb0  06 00 57 e1                                      cmp r7, r6
00575eb4  00 20 c3 e5                                      strb r2, [r3]
00575eb8  03 00 00 0a                                      beq #0x575ecc
00575ebc  07 00 a0 e1                                      mov r0, r7
00575ec0  18 10 9d e5                                      ldr r1, [sp, #0x18]
00575ec4  14 20 9d e5                                      ldr r2, [sp, #0x14]
00575ec8  2e ab f6 eb                                      bl #0x320b88
00575ecc  18 00 9d e5                                      ldr r0, [sp, #0x18]
00575ed0  06 00 50 e1                                      cmp r0, r6
00575ed4  10 00 00 1a                                      bne #0x575f1c
00575ed8  01 00 a0 e3                                      mov r0, #1
00575edc  af ff ff ea                                      b #0x575da0
00575ee0  1c 60 8d e2                                      add r6, sp, #0x1c
00575ee4  24 70 87 e2                                      add r7, r7, #0x24
00575ee8  06 00 a0 e1                                      mov r0, r6
00575eec  2c 60 8d e5                                      str r6, [sp, #0x2c]
00575ef0  30 60 8d e5                                      str r6, [sp, #0x30]
00575ef4  3e c0 f6 eb                                      bl #0x325ff4
00575ef8  06 00 57 e1                                      cmp r7, r6
00575efc  03 00 00 0a                                      beq #0x575f10
00575f00  07 00 a0 e1                                      mov r0, r7
00575f04  30 10 9d e5                                      ldr r1, [sp, #0x30]
00575f08  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00575f0c  1d ab f6 eb                                      bl #0x320b88
00575f10  30 00 9d e5                                      ldr r0, [sp, #0x30]
00575f14  06 00 50 e1                                      cmp r0, r6
00575f18  ee ff ff 0a                                      beq #0x575ed8
00575f1c  00 00 50 e3                                      cmp r0, #0
00575f20  ec ff ff 0a                                      beq #0x575ed8
00575f24  49 69 f6 eb                                      bl #0x310450
00575f28  01 00 a0 e3                                      mov r0, #1
00575f2c  9b ff ff ea                                      b #0x575da0
00575f30  f6 60 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00575f34  18 ed 41 00 ac 40 00 00                          .byte 0x18, 0xed, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00575f3c, declared_size=268, range_size=268, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE16parseCurrentNodeEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::parseCurrentNode()
; decoder-mode: arm
00575f3c  10 40 2d e9                                      push {r4, lr}
00575f40  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00575f44  00 40 a0 e1                                      mov r4, r0
00575f48  00 00 d1 e5                                      ldrb r0, [r1]
00575f4c  00 00 50 e3                                      cmp r0, #0
00575f50  3c 00 50 13                                      cmpne r0, #0x3c
00575f54  01 20 a0 01                                      moveq r2, r1
00575f58  06 00 00 0a                                      beq #0x575f78
00575f5c  01 20 a0 e1                                      mov r2, r1
00575f60  01 20 82 e2                                      add r2, r2, #1
00575f64  0c 20 84 e5                                      str r2, [r4, #0xc]
00575f68  00 00 d2 e5                                      ldrb r0, [r2]
00575f6c  00 00 50 e3                                      cmp r0, #0
00575f70  3c 00 50 13                                      cmpne r0, #0x3c
00575f74  f9 ff ff 1a                                      bne #0x575f60
00575f78  00 00 50 e3                                      cmp r0, #0
00575f7c  19 00 00 0a                                      beq #0x575fe8
00575f80  02 30 61 e0                                      rsb r3, r1, r2
00575f84  00 00 53 e3                                      cmp r3, #0
00575f88  03 00 00 da                                      ble #0x575f9c
00575f8c  04 00 a0 e1                                      mov r0, r4
00575f90  16 fe ff eb                                      bl #0x5757f0
00575f94  00 00 50 e3                                      cmp r0, #0
00575f98  11 00 00 1a                                      bne #0x575fe4
00575f9c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00575fa0  01 10 83 e2                                      add r1, r3, #1
00575fa4  0c 10 84 e5                                      str r1, [r4, #0xc]
00575fa8  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
00575fac  2f 00 52 e3                                      cmp r2, #0x2f
00575fb0  1c 00 00 0a                                      beq #0x576028
00575fb4  3f 00 52 e3                                      cmp r2, #0x3f
00575fb8  0b 00 00 0a                                      beq #0x575fec
00575fbc  21 00 52 e3                                      cmp r2, #0x21
00575fc0  03 00 00 0a                                      beq #0x575fd4
00575fc4  04 00 a0 e1                                      mov r0, r4
00575fc8  52 fe ff eb                                      bl #0x575918
00575fcc  01 00 a0 e3                                      mov r0, #1
00575fd0  10 80 bd e8                                      pop {r4, pc}
00575fd4  04 00 a0 e1                                      mov r0, r4
00575fd8  62 ff ff eb                                      bl #0x575d68
00575fdc  00 00 50 e3                                      cmp r0, #0
00575fe0  14 00 00 0a                                      beq #0x576038
00575fe4  01 00 a0 e3                                      mov r0, #1
00575fe8  10 80 bd e8                                      pop {r4, pc}
00575fec  06 20 a0 e3                                      mov r2, #6
00575ff0  18 20 84 e5                                      str r2, [r4, #0x18]
00575ff4  d1 20 d3 e1                                      ldrsb r2, [r3, #1]
00575ff8  3e 00 52 e3                                      cmp r2, #0x3e
00575ffc  05 00 00 0a                                      beq #0x576018
00576000  02 30 83 e2                                      add r3, r3, #2
00576004  0c 30 84 e5                                      str r3, [r4, #0xc]
00576008  03 10 a0 e1                                      mov r1, r3
0057600c  d1 20 d3 e0                                      ldrsb r2, [r3], #1
00576010  3e 00 52 e3                                      cmp r2, #0x3e
00576014  fa ff ff 1a                                      bne #0x576004
00576018  01 10 81 e2                                      add r1, r1, #1
0057601c  0c 10 84 e5                                      str r1, [r4, #0xc]
00576020  01 00 a0 e3                                      mov r0, #1
00576024  10 80 bd e8                                      pop {r4, pc}
00576028  04 00 a0 e1                                      mov r0, r4
0057602c  c8 f7 ff eb                                      bl #0x573f54
00576030  01 00 a0 e3                                      mov r0, #1
00576034  10 80 bd e8                                      pop {r4, pc}
00576038  04 00 a0 e1                                      mov r0, r4
0057603c  06 f8 ff eb                                      bl #0x57405c
00576040  01 00 a0 e3                                      mov r0, #1
00576044  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00576048, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE4readEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::read()
; decoder-mode: arm
00576048  10 40 2d e9                                      push {r4, lr}
0057604c  08 d0 4d e2                                      sub sp, sp, #8
00576050  00 30 90 e5                                      ldr r3, [r0]
00576054  00 40 a0 e1                                      mov r4, r0
00576058  0f e0 a0 e1                                      mov lr, pc
0057605c  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00576060  00 00 50 e3                                      cmp r0, #0
00576064  0d 00 00 0a                                      beq #0x5760a0
00576068  64 10 94 e5                                      ldr r1, [r4, #0x64]
0057606c  68 20 94 e5                                      ldr r2, [r4, #0x68]
00576070  02 30 a0 e3                                      mov r3, #2
00576074  18 30 84 e5                                      str r3, [r4, #0x18]
00576078  02 00 51 e1                                      cmp r1, r2
0057607c  00 30 a0 e3                                      mov r3, #0
00576080  54 30 c4 e5                                      strb r3, [r4, #0x54]
00576084  02 00 00 0a                                      beq #0x576094
00576088  64 00 84 e2                                      add r0, r4, #0x64
0057608c  04 30 8d e2                                      add r3, sp, #4
00576090  41 f7 ff eb                                      bl #0x573d9c
00576094  01 00 a0 e3                                      mov r0, #1
00576098  08 d0 8d e2                                      add sp, sp, #8
0057609c  10 80 bd e8                                      pop {r4, pc}
005760a0  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005760a4  00 00 53 e3                                      cmp r3, #0
005760a8  08 00 00 0a                                      beq #0x5760d0
005760ac  10 10 94 e5                                      ldr r1, [r4, #0x10]
005760b0  14 20 94 e5                                      ldr r2, [r4, #0x14]
005760b4  03 10 61 e0                                      rsb r1, r1, r3
005760b8  01 20 42 e2                                      sub r2, r2, #1
005760bc  02 00 51 e1                                      cmp r1, r2
005760c0  02 00 00 2a                                      bhs #0x5760d0
005760c4  d0 30 d3 e1                                      ldrsb r3, [r3]
005760c8  00 00 53 e3                                      cmp r3, #0
005760cc  01 00 00 1a                                      bne #0x5760d8
005760d0  00 00 a0 e3                                      mov r0, #0
005760d4  ef ff ff ea                                      b #0x576098
005760d8  04 00 a0 e1                                      mov r0, r4
005760dc  96 ff ff eb                                      bl #0x575f3c
005760e0  ec ff ff ea                                      b #0x576098

; FUNCTION 0x005760e4, declared_size=396, range_size=396, mode=arm
; class-group: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE26createSpecialCharacterListEv
; demangled: glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>::createSpecialCharacterList()
; decoder-mode: arm
005760e4  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005760e8  64 41 9f e5                                      ldr r4, [pc, #0x164]
005760ec  64 71 9f e5                                      ldr r7, [pc, #0x164]
005760f0  64 21 9f e5                                      ldr r2, [pc, #0x164]
005760f4  04 40 8f e0                                      add r4, pc, r4
005760f8  07 30 94 e7                                      ldr r3, [r4, r7]
005760fc  94 d0 4d e2                                      sub sp, sp, #0x94
00576100  74 60 8d e2                                      add r6, sp, #0x74
00576104  00 30 93 e5                                      ldr r3, [r3]
00576108  02 10 94 e7                                      ldr r1, [r4, r2]
0057610c  58 50 80 e2                                      add r5, r0, #0x58
00576110  10 20 8d e2                                      add r2, sp, #0x10
00576114  06 00 a0 e1                                      mov r0, r6
00576118  8c 30 8d e5                                      str r3, [sp, #0x8c]
0057611c  c6 bf f6 eb                                      bl #0x32603c
00576120  05 00 a0 e1                                      mov r0, r5
00576124  06 10 a0 e1                                      mov r1, r6
00576128  e9 bc ff eb                                      bl #0x5654d4
0057612c  88 00 9d e5                                      ldr r0, [sp, #0x88]
00576130  06 00 50 e1                                      cmp r0, r6
00576134  02 00 00 0a                                      beq #0x576144
00576138  00 00 50 e3                                      cmp r0, #0
0057613c  00 00 00 0a                                      beq #0x576144
00576140  c2 68 f6 eb                                      bl #0x310450
00576144  14 31 9f e5                                      ldr r3, [pc, #0x114]
00576148  5c 60 8d e2                                      add r6, sp, #0x5c
0057614c  0c 20 8d e2                                      add r2, sp, #0xc
00576150  03 10 94 e7                                      ldr r1, [r4, r3]
00576154  06 00 a0 e1                                      mov r0, r6
00576158  b7 bf f6 eb                                      bl #0x32603c
0057615c  05 00 a0 e1                                      mov r0, r5
00576160  06 10 a0 e1                                      mov r1, r6
00576164  da bc ff eb                                      bl #0x5654d4
00576168  70 00 9d e5                                      ldr r0, [sp, #0x70]
0057616c  06 00 50 e1                                      cmp r0, r6
00576170  02 00 00 0a                                      beq #0x576180
00576174  00 00 50 e3                                      cmp r0, #0
00576178  00 00 00 0a                                      beq #0x576180
0057617c  b3 68 f6 eb                                      bl #0x310450
00576180  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00576184  44 60 8d e2                                      add r6, sp, #0x44
00576188  08 20 8d e2                                      add r2, sp, #8
0057618c  03 10 94 e7                                      ldr r1, [r4, r3]
00576190  06 00 a0 e1                                      mov r0, r6
00576194  a8 bf f6 eb                                      bl #0x32603c
00576198  05 00 a0 e1                                      mov r0, r5
0057619c  06 10 a0 e1                                      mov r1, r6
005761a0  cb bc ff eb                                      bl #0x5654d4
005761a4  58 00 9d e5                                      ldr r0, [sp, #0x58]
005761a8  06 00 50 e1                                      cmp r0, r6
005761ac  02 00 00 0a                                      beq #0x5761bc
005761b0  00 00 50 e3                                      cmp r0, #0
005761b4  00 00 00 0a                                      beq #0x5761bc
005761b8  a4 68 f6 eb                                      bl #0x310450
005761bc  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
005761c0  2c 60 8d e2                                      add r6, sp, #0x2c
005761c4  04 20 8d e2                                      add r2, sp, #4
005761c8  03 10 94 e7                                      ldr r1, [r4, r3]
005761cc  06 00 a0 e1                                      mov r0, r6
005761d0  99 bf f6 eb                                      bl #0x32603c
005761d4  05 00 a0 e1                                      mov r0, r5
005761d8  06 10 a0 e1                                      mov r1, r6
005761dc  bc bc ff eb                                      bl #0x5654d4
005761e0  40 00 9d e5                                      ldr r0, [sp, #0x40]
005761e4  06 00 50 e1                                      cmp r0, r6
005761e8  02 00 00 0a                                      beq #0x5761f8
005761ec  00 00 50 e3                                      cmp r0, #0
005761f0  00 00 00 0a                                      beq #0x5761f8
005761f4  95 68 f6 eb                                      bl #0x310450
005761f8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
005761fc  14 60 8d e2                                      add r6, sp, #0x14
00576200  0d 20 a0 e1                                      mov r2, sp
00576204  03 10 94 e7                                      ldr r1, [r4, r3]
00576208  06 00 a0 e1                                      mov r0, r6
0057620c  8a bf f6 eb                                      bl #0x32603c
00576210  05 00 a0 e1                                      mov r0, r5
00576214  06 10 a0 e1                                      mov r1, r6
00576218  ad bc ff eb                                      bl #0x5654d4
0057621c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00576220  06 00 50 e1                                      cmp r0, r6
00576224  02 00 00 0a                                      beq #0x576234
00576228  00 00 50 e3                                      cmp r0, #0
0057622c  00 00 00 0a                                      beq #0x576234
00576230  86 68 f6 eb                                      bl #0x310450
00576234  07 30 94 e7                                      ldr r3, [r4, r7]
00576238  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
0057623c  00 30 93 e5                                      ldr r3, [r3]
00576240  03 00 52 e1                                      cmp r2, r3
00576244  01 00 00 1a                                      bne #0x576250
00576248  94 d0 8d e2                                      add sp, sp, #0x94
0057624c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00576250  2e 60 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00576254  9c e9 41 00 ac 40 00 00 fc 37 00 00 ac 37 00 00  .byte 0x9c, 0xe9, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00, 0xfc, 0x37, 0x00, 0x00, 0xac, 0x37, 0x00, 0x00
00576264  18 31 00 00 9c 37 00 00 c0 0a 00 00              .byte 0x18, 0x31, 0x00, 0x00, 0x9c, 0x37, 0x00, 0x00, 0xc0, 0x0a, 0x00, 0x00
