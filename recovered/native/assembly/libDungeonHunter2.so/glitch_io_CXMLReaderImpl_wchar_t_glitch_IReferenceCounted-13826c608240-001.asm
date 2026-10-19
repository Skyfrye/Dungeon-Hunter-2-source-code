; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00572778, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17readToNextElementEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::readToNextElement()
; decoder-mode: arm
00572778  10 40 2d e9                                      push {r4, lr}
0057277c  00 40 a0 e1                                      mov r4, r0
00572780  00 30 94 e5                                      ldr r3, [r4]
00572784  04 00 a0 e1                                      mov r0, r4
00572788  0f e0 a0 e1                                      mov lr, pc
0057278c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00572790  00 30 50 e2                                      subs r3, r0, #0
00572794  04 00 a0 e1                                      mov r0, r4
00572798  05 00 00 0a                                      beq #0x5727b4
0057279c  00 30 94 e5                                      ldr r3, [r4]
005727a0  0f e0 a0 e1                                      mov lr, pc
005727a4  14 f0 93 e5                                      ldr pc, [r3, #0x14]
005727a8  01 00 50 e3                                      cmp r0, #1
005727ac  f3 ff ff 1a                                      bne #0x572780
005727b0  10 80 bd e8                                      pop {r4, pc}
005727b4  03 00 a0 e1                                      mov r0, r3
005727b8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005727bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE11getNodeTypeEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getNodeType() const
; decoder-mode: arm
005727bc  18 00 90 e5                                      ldr r0, [r0, #0x18]
005727c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005727c4, declared_size=48, range_size=48, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17getAttributeCountEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeCount() const
; decoder-mode: arm
005727c4  c8 20 90 e5                                      ldr r2, [r0, #0xc8]
005727c8  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
005727cc  02 30 63 e0                                      rsb r3, r3, r2
005727d0  43 32 a0 e1                                      asr r3, r3, #4
005727d4  83 21 a0 e1                                      lsl r2, r3, #3
005727d8  02 20 63 e0                                      rsb r2, r3, r2
005727dc  02 23 82 e0                                      add r2, r2, r2, lsl #6
005727e0  82 21 83 e0                                      add r2, r3, r2, lsl #3
005727e4  82 17 a0 e1                                      lsl r1, r2, #0xf
005727e8  01 20 62 e0                                      rsb r2, r2, r1
005727ec  82 01 83 e0                                      add r0, r3, r2, lsl #3
005727f0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005727f4, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE16getAttributeNameEi
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeName(int) const
; decoder-mode: arm
005727f4  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
005727f8  c8 20 90 e5                                      ldr r2, [r0, #0xc8]
005727fc  02 20 63 e0                                      rsb r2, r3, r2
00572800  42 22 a0 e1                                      asr r2, r2, #4
00572804  82 01 a0 e1                                      lsl r0, r2, #3
00572808  00 00 62 e0                                      rsb r0, r2, r0
0057280c  00 03 80 e0                                      add r0, r0, r0, lsl #6
00572810  80 01 82 e0                                      add r0, r2, r0, lsl #3
00572814  80 c7 a0 e1                                      lsl ip, r0, #0xf
00572818  0c 00 60 e0                                      rsb r0, r0, ip
0057281c  80 21 82 e0                                      add r2, r2, r0, lsl #3
00572820  02 00 51 e1                                      cmp r1, r2
00572824  90 20 a0 33                                      movlo r2, #0x90
00572828  92 31 23 30                                      mlalo r3, r2, r1, r3
0057282c  00 00 a0 23                                      movhs r0, #0
00572830  44 00 93 35                                      ldrlo r0, [r3, #0x44]
00572834  1e ff 2f e1                                      bx lr

; FUNCTION 0x00572838, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17getAttributeValueEi
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValue(int) const
; decoder-mode: arm
00572838  c4 30 90 e5                                      ldr r3, [r0, #0xc4]
0057283c  c8 20 90 e5                                      ldr r2, [r0, #0xc8]
00572840  02 20 63 e0                                      rsb r2, r3, r2
00572844  42 22 a0 e1                                      asr r2, r2, #4
00572848  82 01 a0 e1                                      lsl r0, r2, #3
0057284c  00 00 62 e0                                      rsb r0, r2, r0
00572850  00 03 80 e0                                      add r0, r0, r0, lsl #6
00572854  80 01 82 e0                                      add r0, r2, r0, lsl #3
00572858  80 c7 a0 e1                                      lsl ip, r0, #0xf
0057285c  0c 00 60 e0                                      rsb r0, r0, ip
00572860  80 21 82 e0                                      add r2, r2, r0, lsl #3
00572864  02 00 51 e1                                      cmp r1, r2
00572868  90 20 a0 33                                      movlo r2, #0x90
0057286c  92 31 23 30                                      mlalo r3, r2, r1, r3
00572870  00 00 a0 23                                      movhs r0, #0
00572874  8c 00 93 35                                      ldrlo r0, [r3, #0x8c]
00572878  1e ff 2f e1                                      bx lr

; FUNCTION 0x0057287c, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22getAttributeValueAsIntEPKw
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValueAsInt(wchar_t const*) const
; decoder-mode: arm
0057287c  10 40 2d e9                                      push {r4, lr}
00572880  00 30 90 e5                                      ldr r3, [r0]
00572884  0f e0 a0 e1                                      mov lr, pc
00572888  34 f0 93 e5                                      ldr pc, [r3, #0x34]
0057288c  0e 6f f6 eb                                      bl #0x30e4cc
00572890  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00572894, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22getAttributeValueAsIntEi
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValueAsInt(int) const
; decoder-mode: arm
00572894  10 40 2d e9                                      push {r4, lr}
00572898  00 30 90 e5                                      ldr r3, [r0]
0057289c  0f e0 a0 e1                                      mov lr, pc
005728a0  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005728a4  08 6f f6 eb                                      bl #0x30e4cc
005728a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005728ac, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE11getNodeNameEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getNodeName() const
; decoder-mode: arm
005728ac  68 00 90 e5                                      ldr r0, [r0, #0x68]
005728b0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005728b4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE11getNodeDataEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getNodeData() const
; decoder-mode: arm
005728b4  68 00 90 e5                                      ldr r0, [r0, #0x68]
005728b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005728bc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE14isEmptyElementEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::isEmptyElement() const
; decoder-mode: arm
005728bc  b4 00 d0 e5                                      ldrb r0, [r0, #0xb4]
005728c0  1e ff 2f e1                                      bx lr

; FUNCTION 0x005728c4, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15getSourceFormatEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getSourceFormat() const
; decoder-mode: arm
005728c4  1c 00 90 e5                                      ldr r0, [r0, #0x1c]
005728c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005728cc, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15getParserFormatEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getParserFormat() const
; decoder-mode: arm
005728cc  20 00 90 e5                                      ldr r0, [r0, #0x20]
005728d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x00573104, declared_size=320, range_size=320, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE8readFileEPNS0_17IFileReadCallBackE
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::readFile(glitch::io::IFileReadCallBack*)
; decoder-mode: arm
00573104  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00573108  00 70 a0 e1                                      mov r7, r0
0057310c  00 30 91 e5                                      ldr r3, [r1]
00573110  01 00 a0 e1                                      mov r0, r1
00573114  01 50 a0 e1                                      mov r5, r1
00573118  0f e0 a0 e1                                      mov lr, pc
0057311c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00573120  00 80 50 e2                                      subs r8, r0, #0
00573124  30 00 00 ba                                      blt #0x5731ec
00573128  04 60 88 e2                                      add r6, r8, #4
0057312c  00 10 a0 e3                                      mov r1, #0
00573130  06 00 a0 e1                                      mov r0, r6
00573134  1b 04 ff eb                                      bl #0x5341a8
00573138  00 40 a0 e1                                      mov r4, r0
0057313c  00 30 95 e5                                      ldr r3, [r5]
00573140  05 00 a0 e1                                      mov r0, r5
00573144  08 20 a0 e1                                      mov r2, r8
00573148  04 10 a0 e1                                      mov r1, r4
0057314c  0f e0 a0 e1                                      mov lr, pc
00573150  08 f0 93 e5                                      ldr pc, [r3, #8]
00573154  00 50 50 e2                                      subs r5, r0, #0
00573158  05 00 00 1a                                      bne #0x573174
0057315c  00 00 54 e3                                      cmp r4, #0
00573160  21 00 00 0a                                      beq #0x5731ec
00573164  04 00 a0 e1                                      mov r0, r4
00573168  d2 6b f6 eb                                      bl #0x30e0b8
0057316c  05 00 a0 e1                                      mov r0, r5
00573170  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00573174  06 20 84 e0                                      add r2, r4, r6
00573178  00 30 a0 e3                                      mov r3, #0
0057317c  04 30 42 e5                                      strb r3, [r2, #-4]
00573180  01 30 42 e5                                      strb r3, [r2, #-1]
00573184  02 30 42 e5                                      strb r3, [r2, #-2]
00573188  03 30 42 e5                                      strb r3, [r2, #-3]
0057318c  00 20 94 e5                                      ldr r2, [r4]
00573190  02 08 72 e3                                      cmn r2, #0x20000
00573194  46 31 a0 01                                      asreq r3, r6, #2
00573198  04 20 a0 03                                      moveq r2, #4
0057319c  20 00 00 0a                                      beq #0x573224
005731a0  ff 1e 0f e3                                      movw r1, #0xfeff
005731a4  01 00 52 e1                                      cmp r2, r1
005731a8  1b 00 00 0a                                      beq #0x57321c
005731ac  b0 20 d4 e1                                      ldrh r2, [r4]
005731b0  fe 0f 0f e3                                      movw r0, #0xfffe
005731b4  00 00 52 e1                                      cmp r2, r0
005731b8  c6 30 a0 01                                      asreq r3, r6, #1
005731bc  02 20 a0 03                                      moveq r2, #2
005731c0  0d 00 00 0a                                      beq #0x5731fc
005731c4  01 00 52 e1                                      cmp r2, r1
005731c8  09 00 00 0a                                      beq #0x5731f4
005731cc  1c 30 87 e5                                      str r3, [r7, #0x1c]
005731d0  07 00 a0 e1                                      mov r0, r7
005731d4  04 10 a0 e1                                      mov r1, r4
005731d8  06 30 a0 e1                                      mov r3, r6
005731dc  04 20 a0 e1                                      mov r2, r4
005731e0  ab ff ff eb                                      bl #0x573094
005731e4  01 00 a0 e3                                      mov r0, #1
005731e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005731ec  00 00 a0 e3                                      mov r0, #0
005731f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005731f4  c6 30 a0 e1                                      asr r3, r6, #1
005731f8  03 20 a0 e3                                      mov r2, #3
005731fc  1c 20 87 e5                                      str r2, [r7, #0x1c]
00573200  07 00 a0 e1                                      mov r0, r7
00573204  04 20 a0 e1                                      mov r2, r4
00573208  01 30 43 e2                                      sub r3, r3, #1
0057320c  02 10 84 e2                                      add r1, r4, #2
00573210  66 ff ff eb                                      bl #0x572fb0
00573214  01 00 a0 e3                                      mov r0, #1
00573218  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0057321c  46 31 a0 e1                                      asr r3, r6, #2
00573220  05 20 a0 e3                                      mov r2, #5
00573224  1c 20 87 e5                                      str r2, [r7, #0x1c]
00573228  07 00 a0 e1                                      mov r0, r7
0057322c  04 20 a0 e1                                      mov r2, r4
00573230  01 30 43 e2                                      sub r3, r3, #1
00573234  04 10 84 e2                                      add r1, r4, #4
00573238  d7 fc ff eb                                      bl #0x57259c
0057323c  01 00 a0 e3                                      mov r0, #1
00573240  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0057378c, declared_size=200, range_size=200, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE12parseCommentEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::parseComment()
; decoder-mode: arm
0057378c  70 40 2d e9                                      push {r4, r5, r6, lr}
00573790  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00573794  04 30 a0 e3                                      mov r3, #4
00573798  00 40 a0 e1                                      mov r4, r0
0057379c  03 10 82 e0                                      add r1, r2, r3
005737a0  18 30 80 e5                                      str r3, [r0, #0x18]
005737a4  0c 10 80 e5                                      str r1, [r0, #0xc]
005737a8  48 d0 4d e2                                      sub sp, sp, #0x48
005737ac  08 20 82 e2                                      add r2, r2, #8
005737b0  01 00 a0 e3                                      mov r0, #1
005737b4  04 30 12 e5                                      ldr r3, [r2, #-4]
005737b8  3e 00 53 e3                                      cmp r3, #0x3e
005737bc  01 00 40 02                                      subeq r0, r0, #1
005737c0  01 00 00 0a                                      beq #0x5737cc
005737c4  3c 00 53 e3                                      cmp r3, #0x3c
005737c8  01 00 80 02                                      addeq r0, r0, #1
005737cc  00 00 50 e3                                      cmp r0, #0
005737d0  0c 20 84 e5                                      str r2, [r4, #0xc]
005737d4  02 30 a0 e1                                      mov r3, r2
005737d8  04 20 82 e2                                      add r2, r2, #4
005737dc  f4 ff ff 1a                                      bne #0x5737b4
005737e0  0c 30 43 e2                                      sub r3, r3, #0xc
005737e4  03 20 61 e0                                      rsb r2, r1, r3
005737e8  03 20 c2 e3                                      bic r2, r2, #3
005737ec  0c 30 84 e5                                      str r3, [r4, #0xc]
005737f0  02 20 81 e0                                      add r2, r1, r2
005737f4  0d 50 a0 e1                                      mov r5, sp
005737f8  24 60 84 e2                                      add r6, r4, #0x24
005737fc  0d 00 a0 e1                                      mov r0, sp
00573800  08 10 81 e2                                      add r1, r1, #8
00573804  40 d0 8d e5                                      str sp, [sp, #0x40]
00573808  44 d0 8d e5                                      str sp, [sp, #0x44]
0057380c  86 c9 f6 eb                                      bl #0x325e2c
00573810  05 00 56 e1                                      cmp r6, r5
00573814  03 00 00 0a                                      beq #0x573828
00573818  06 00 a0 e1                                      mov r0, r6
0057381c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00573820  40 20 9d e5                                      ldr r2, [sp, #0x40]
00573824  5d be f6 eb                                      bl #0x3231a0
00573828  44 00 9d e5                                      ldr r0, [sp, #0x44]
0057382c  05 00 50 e1                                      cmp r0, r5
00573830  02 00 00 0a                                      beq #0x573840
00573834  00 00 50 e3                                      cmp r0, #0
00573838  00 00 00 0a                                      beq #0x573840
0057383c  03 73 f6 eb                                      bl #0x310450
00573840  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00573844  0c 30 83 e2                                      add r3, r3, #0xc
00573848  0c 30 84 e5                                      str r3, [r4, #0xc]
0057384c  48 d0 8d e2                                      add sp, sp, #0x48
00573850  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00573854, declared_size=212, range_size=212, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22parseClosingXMLElementEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::parseClosingXMLElement()
; decoder-mode: arm
00573854  70 40 2d e9                                      push {r4, r5, r6, lr}
00573858  c4 10 90 e5                                      ldr r1, [r0, #0xc4]
0057385c  c8 20 90 e5                                      ldr r2, [r0, #0xc8]
00573860  02 30 a0 e3                                      mov r3, #2
00573864  18 30 80 e5                                      str r3, [r0, #0x18]
00573868  02 00 51 e1                                      cmp r1, r2
0057386c  00 30 a0 e3                                      mov r3, #0
00573870  50 d0 4d e2                                      sub sp, sp, #0x50
00573874  00 40 a0 e1                                      mov r4, r0
00573878  b4 30 c0 e5                                      strb r3, [r0, #0xb4]
0057387c  02 00 00 0a                                      beq #0x57388c
00573880  c4 00 80 e2                                      add r0, r0, #0xc4
00573884  4c 30 8d e2                                      add r3, sp, #0x4c
00573888  e1 fe ff eb                                      bl #0x573414
0057388c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00573890  04 10 83 e2                                      add r1, r3, #4
00573894  0c 10 84 e5                                      str r1, [r4, #0xc]
00573898  04 20 93 e5                                      ldr r2, [r3, #4]
0057389c  3e 00 52 e3                                      cmp r2, #0x3e
005738a0  00 20 a0 03                                      moveq r2, #0
005738a4  07 00 00 0a                                      beq #0x5738c8
005738a8  08 30 83 e2                                      add r3, r3, #8
005738ac  0c 30 84 e5                                      str r3, [r4, #0xc]
005738b0  03 20 a0 e1                                      mov r2, r3
005738b4  04 00 93 e4                                      ldr r0, [r3], #4
005738b8  3e 00 50 e3                                      cmp r0, #0x3e
005738bc  fa ff ff 1a                                      bne #0x5738ac
005738c0  02 20 61 e0                                      rsb r2, r1, r2
005738c4  03 20 c2 e3                                      bic r2, r2, #3
005738c8  04 50 8d e2                                      add r5, sp, #4
005738cc  02 20 81 e0                                      add r2, r1, r2
005738d0  24 60 84 e2                                      add r6, r4, #0x24
005738d4  05 00 a0 e1                                      mov r0, r5
005738d8  44 50 8d e5                                      str r5, [sp, #0x44]
005738dc  48 50 8d e5                                      str r5, [sp, #0x48]
005738e0  51 c9 f6 eb                                      bl #0x325e2c
005738e4  05 00 56 e1                                      cmp r6, r5
005738e8  03 00 00 0a                                      beq #0x5738fc
005738ec  06 00 a0 e1                                      mov r0, r6
005738f0  48 10 9d e5                                      ldr r1, [sp, #0x48]
005738f4  44 20 9d e5                                      ldr r2, [sp, #0x44]
005738f8  28 be f6 eb                                      bl #0x3231a0
005738fc  48 00 9d e5                                      ldr r0, [sp, #0x48]
00573900  05 00 50 e1                                      cmp r0, r5
00573904  02 00 00 0a                                      beq #0x573914
00573908  00 00 50 e3                                      cmp r0, #0
0057390c  00 00 00 0a                                      beq #0x573914
00573910  ce 72 f6 eb                                      bl #0x310450
00573914  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00573918  04 30 83 e2                                      add r3, r3, #4
0057391c  0c 30 84 e5                                      str r3, [r4, #0xc]
00573920  50 d0 8d e2                                      add sp, sp, #0x50
00573924  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00573928, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEED1Ev
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::~CXMLReaderImpl()
; decoder-mode: arm
00573928  10 40 2d e9                                      push {r4, lr}
0057392c  74 30 9f e5                                      ldr r3, [pc, #0x74]
00573930  74 20 9f e5                                      ldr r2, [pc, #0x74]
00573934  00 40 a0 e1                                      mov r4, r0
00573938  03 30 8f e0                                      add r3, pc, r3
0057393c  08 00 90 e5                                      ldr r0, [r0, #8]
00573940  02 20 93 e7                                      ldr r2, [r3, r2]
00573944  00 00 50 e3                                      cmp r0, #0
00573948  08 20 82 e2                                      add r2, r2, #8
0057394c  00 20 84 e5                                      str r2, [r4]
00573950  00 00 00 0a                                      beq #0x573958
00573954  d7 69 f6 eb                                      bl #0x30e0b8
00573958  c4 00 84 e2                                      add r0, r4, #0xc4
0057395c  2b ff ff eb                                      bl #0x573610
00573960  b8 00 84 e2                                      add r0, r4, #0xb8
00573964  67 74 ff eb                                      bl #0x550b08
00573968  6c 30 84 e2                                      add r3, r4, #0x6c
0057396c  44 00 93 e5                                      ldr r0, [r3, #0x44]
00573970  03 00 50 e1                                      cmp r0, r3
00573974  02 00 00 0a                                      beq #0x573984
00573978  00 00 50 e3                                      cmp r0, #0
0057397c  00 00 00 0a                                      beq #0x573984
00573980  b2 72 f6 eb                                      bl #0x310450
00573984  24 30 84 e2                                      add r3, r4, #0x24
00573988  44 00 93 e5                                      ldr r0, [r3, #0x44]
0057398c  03 00 50 e1                                      cmp r0, r3
00573990  02 00 00 0a                                      beq #0x5739a0
00573994  00 00 50 e3                                      cmp r0, #0
00573998  00 00 00 0a                                      beq #0x5739a0
0057399c  ab 72 f6 eb                                      bl #0x310450
005739a0  04 00 a0 e1                                      mov r0, r4
005739a4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005739a8  58 11 42 00 04 40 00 00                          .byte 0x58, 0x11, 0x42, 0x00, 0x04, 0x40, 0x00, 0x00

; FUNCTION 0x005739b0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEED0Ev
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::~CXMLReaderImpl()
; decoder-mode: arm
005739b0  10 40 2d e9                                      push {r4, lr}
005739b4  00 40 a0 e1                                      mov r4, r0
005739b8  da ff ff eb                                      bl #0x573928
005739bc  04 00 a0 e1                                      mov r0, r4
005739c0  3a 6a f6 eb                                      bl #0x30e2b0
005739c4  04 00 a0 e1                                      mov r0, r4
005739c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005739cc, declared_size=200, range_size=200, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE18getAttributeByNameEPKw
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeByName(wchar_t const*) const
; decoder-mode: arm
005739cc  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005739d0  00 60 51 e2                                      subs r6, r1, #0
005739d4  54 d0 4d e2                                      sub sp, sp, #0x54
005739d8  00 40 a0 e1                                      mov r4, r0
005739dc  27 00 00 0a                                      beq #0x573a80
005739e0  04 50 8d e2                                      add r5, sp, #4
005739e4  05 00 a0 e1                                      mov r0, r5
005739e8  4c 20 8d e2                                      add r2, sp, #0x4c
005739ec  42 c9 f6 eb                                      bl #0x325efc
005739f0  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
005739f4  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
005739f8  03 30 60 e0                                      rsb r3, r0, r3
005739fc  8f 00 53 e3                                      cmp r3, #0x8f
00573a00  21 00 00 da                                      ble #0x573a8c
00573a04  00 60 a0 e3                                      mov r6, #0
00573a08  06 70 a0 e1                                      mov r7, r6
00573a0c  0d 00 00 ea                                      b #0x573a48
00573a10  c4 00 94 e5                                      ldr r0, [r4, #0xc4]
00573a14  c8 30 94 e5                                      ldr r3, [r4, #0xc8]
00573a18  90 60 86 e2                                      add r6, r6, #0x90
00573a1c  03 30 60 e0                                      rsb r3, r0, r3
00573a20  43 32 a0 e1                                      asr r3, r3, #4
00573a24  83 21 a0 e1                                      lsl r2, r3, #3
00573a28  02 20 63 e0                                      rsb r2, r3, r2
00573a2c  02 23 82 e0                                      add r2, r2, r2, lsl #6
00573a30  82 21 83 e0                                      add r2, r3, r2, lsl #3
00573a34  82 17 a0 e1                                      lsl r1, r2, #0xf
00573a38  01 20 62 e0                                      rsb r2, r2, r1
00573a3c  82 31 83 e0                                      add r3, r3, r2, lsl #3
00573a40  03 00 57 e1                                      cmp r7, r3
00573a44  10 00 00 aa                                      bge #0x573a8c
00573a48  06 00 80 e0                                      add r0, r0, r6
00573a4c  05 10 a0 e1                                      mov r1, r5
00573a50  16 2c ff eb                                      bl #0x53eab0
00573a54  00 00 50 e3                                      cmp r0, #0
00573a58  01 70 87 e2                                      add r7, r7, #1
00573a5c  eb ff ff 0a                                      beq #0x573a10
00573a60  c4 30 94 e5                                      ldr r3, [r4, #0xc4]
00573a64  06 60 83 e0                                      add r6, r3, r6
00573a68  48 00 9d e5                                      ldr r0, [sp, #0x48]
00573a6c  05 00 50 e1                                      cmp r0, r5
00573a70  02 00 00 0a                                      beq #0x573a80
00573a74  00 00 50 e3                                      cmp r0, #0
00573a78  00 00 00 0a                                      beq #0x573a80
00573a7c  73 72 f6 eb                                      bl #0x310450
00573a80  06 00 a0 e1                                      mov r0, r6
00573a84  54 d0 8d e2                                      add sp, sp, #0x54
00573a88  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00573a8c  00 60 a0 e3                                      mov r6, #0
00573a90  f4 ff ff ea                                      b #0x573a68

; FUNCTION 0x00573a94, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE21getAttributeValueSafeEPKw
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValueSafe(wchar_t const*) const
; decoder-mode: arm
00573a94  10 40 2d e9                                      push {r4, lr}
00573a98  00 40 a0 e1                                      mov r4, r0
00573a9c  ca ff ff eb                                      bl #0x5739cc
00573aa0  00 00 50 e3                                      cmp r0, #0
00573aa4  b0 00 94 05                                      ldreq r0, [r4, #0xb0]
00573aa8  8c 00 90 15                                      ldrne r0, [r0, #0x8c]
00573aac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00573ab0, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17getAttributeValueEPKw
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValue(wchar_t const*) const
; decoder-mode: arm
00573ab0  10 40 2d e9                                      push {r4, lr}
00573ab4  c4 ff ff eb                                      bl #0x5739cc
00573ab8  00 00 50 e3                                      cmp r0, #0
00573abc  8c 00 90 15                                      ldrne r0, [r0, #0x8c]
00573ac0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005743f0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE24getAttributeValueAsFloatEi
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValueAsFloat(int) const
; decoder-mode: arm
005743f0  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005743f4  84 40 9f e5                                      ldr r4, [pc, #0x84]
005743f8  84 50 9f e5                                      ldr r5, [pc, #0x84]
005743fc  24 d0 4d e2                                      sub sp, sp, #0x24
00574400  04 40 8f e0                                      add r4, pc, r4
00574404  05 30 94 e7                                      ldr r3, [r4, r5]
00574408  00 30 93 e5                                      ldr r3, [r3]
0057440c  1c 30 8d e5                                      str r3, [sp, #0x1c]
00574410  00 30 90 e5                                      ldr r3, [r0]
00574414  0f e0 a0 e1                                      mov lr, pc
00574418  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0057441c  00 10 50 e2                                      subs r1, r0, #0
00574420  00 70 a0 03                                      moveq r7, #0
00574424  0c 00 00 0a                                      beq #0x57445c
00574428  04 60 8d e2                                      add r6, sp, #4
0057442c  06 00 a0 e1                                      mov r0, r6
00574430  08 ca f6 eb                                      bl #0x326c58
00574434  18 00 9d e5                                      ldr r0, [sp, #0x18]
00574438  0d 10 a0 e1                                      mov r1, sp
0057443c  e1 b9 f6 eb                                      bl #0x322bc8
00574440  18 00 9d e5                                      ldr r0, [sp, #0x18]
00574444  00 70 9d e5                                      ldr r7, [sp]
00574448  06 00 50 e1                                      cmp r0, r6
0057444c  02 00 00 0a                                      beq #0x57445c
00574450  00 00 50 e3                                      cmp r0, #0
00574454  00 00 00 0a                                      beq #0x57445c
00574458  fc 6f f6 eb                                      bl #0x310450
0057445c  05 30 94 e7                                      ldr r3, [r4, r5]
00574460  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00574464  07 00 a0 e1                                      mov r0, r7
00574468  00 30 93 e5                                      ldr r3, [r3]
0057446c  03 00 52 e1                                      cmp r2, r3
00574470  01 00 00 1a                                      bne #0x57447c
00574474  24 d0 8d e2                                      add sp, sp, #0x24
00574478  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0057447c  a3 67 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00574480  90 06 42 00 ac 40 00 00                          .byte 0x90, 0x06, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00574488, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE24getAttributeValueAsFloatEPKw
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::getAttributeValueAsFloat(wchar_t const*) const
; decoder-mode: arm
00574488  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0057448c  84 40 9f e5                                      ldr r4, [pc, #0x84]
00574490  84 50 9f e5                                      ldr r5, [pc, #0x84]
00574494  24 d0 4d e2                                      sub sp, sp, #0x24
00574498  04 40 8f e0                                      add r4, pc, r4
0057449c  05 30 94 e7                                      ldr r3, [r4, r5]
005744a0  00 30 93 e5                                      ldr r3, [r3]
005744a4  1c 30 8d e5                                      str r3, [sp, #0x1c]
005744a8  47 fd ff eb                                      bl #0x5739cc
005744ac  00 00 50 e3                                      cmp r0, #0
005744b0  00 70 a0 03                                      moveq r7, #0
005744b4  0e 00 00 0a                                      beq #0x5744f4
005744b8  04 60 8d e2                                      add r6, sp, #4
005744bc  8c 10 90 e5                                      ldr r1, [r0, #0x8c]
005744c0  06 00 a0 e1                                      mov r0, r6
005744c4  e3 c9 f6 eb                                      bl #0x326c58
005744c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005744cc  00 10 a0 e3                                      mov r1, #0
005744d0  75 68 f6 eb                                      bl #0x30e6ac
005744d4  71 68 f6 eb                                      bl #0x30e6a0
005744d8  00 70 a0 e1                                      mov r7, r0
005744dc  18 00 9d e5                                      ldr r0, [sp, #0x18]
005744e0  06 00 50 e1                                      cmp r0, r6
005744e4  02 00 00 0a                                      beq #0x5744f4
005744e8  00 00 50 e3                                      cmp r0, #0
005744ec  00 00 00 0a                                      beq #0x5744f4
005744f0  d6 6f f6 eb                                      bl #0x310450
005744f4  05 30 94 e7                                      ldr r3, [r4, r5]
005744f8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005744fc  07 00 a0 e1                                      mov r0, r7
00574500  00 30 93 e5                                      ldr r3, [r3]
00574504  03 00 52 e1                                      cmp r2, r3
00574508  01 00 00 1a                                      bne #0x574514
0057450c  24 d0 8d e2                                      add sp, sp, #0x24
00574510  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00574514  7d 67 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00574518  f8 05 42 00 ac 40 00 00                          .byte 0xf8, 0x05, 0x42, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00574520, declared_size=908, range_size=908, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE24replaceSpecialCharactersERSbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::replaceSpecialCharacters(std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00574520  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00574524  6d df 4d e2                                      sub sp, sp, #0x1b4
00574528  2c 00 8d e5                                      str r0, [sp, #0x2c]
0057452c  01 50 a0 e1                                      mov r5, r1
00574530  02 00 a0 e1                                      mov r0, r2
00574534  00 10 a0 e3                                      mov r1, #0
00574538  08 20 8d e5                                      str r2, [sp, #8]
0057453c  40 fb ff eb                                      bl #0x573244
00574540  01 00 70 e3                                      cmn r0, #1
00574544  00 60 a0 e1                                      mov r6, r0
00574548  cd 00 00 0a                                      beq #0x574884
0057454c  15 1e 8d e2                                      add r1, sp, #0x150
00574550  01 00 a0 e1                                      mov r0, r1
00574554  14 10 8d e5                                      str r1, [sp, #0x14]
00574558  10 10 a0 e3                                      mov r1, #0x10
0057455c  90 01 8d e5                                      str r0, [sp, #0x190]
00574560  94 01 8d e5                                      str r0, [sp, #0x194]
00574564  ed b0 f6 eb                                      bl #0x320920
00574568  90 21 9d e5                                      ldr r2, [sp, #0x190]
0057456c  00 30 a0 e3                                      mov r3, #0
00574570  10 30 8d e5                                      str r3, [sp, #0x10]
00574574  69 cf 8d e2                                      add ip, sp, #0x1a4
00574578  00 30 82 e5                                      str r3, [r2]
0057457c  78 30 8d e2                                      add r3, sp, #0x78
00574580  20 30 8d e5                                      str r3, [sp, #0x20]
00574584  28 c0 8d e5                                      str ip, [sp, #0x28]
00574588  42 1f 8d e2                                      add r1, sp, #0x108
0057458c  6a 2f 8d e2                                      add r2, sp, #0x1a8
00574590  c0 30 8d e2                                      add r3, sp, #0xc0
00574594  66 cf 8d e2                                      add ip, sp, #0x198
00574598  0c 10 8d e5                                      str r1, [sp, #0xc]
0057459c  18 20 8d e5                                      str r2, [sp, #0x18]
005745a0  1c 30 8d e5                                      str r3, [sp, #0x1c]
005745a4  24 c0 8d e5                                      str ip, [sp, #0x24]
005745a8  08 10 9d e5                                      ldr r1, [sp, #8]
005745ac  44 80 91 e5                                      ldr r8, [r1, #0x44]
005745b0  40 30 91 e5                                      ldr r3, [r1, #0x40]
005745b4  03 30 68 e0                                      rsb r3, r8, r3
005745b8  43 31 a0 e1                                      asr r3, r3, #2
005745bc  02 20 43 e2                                      sub r2, r3, #2
005745c0  06 00 52 e1                                      cmp r2, r6
005745c4  10 00 00 ca                                      bgt #0x57460c
005745c8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005745cc  01 20 43 e2                                      sub r2, r3, #1
005745d0  02 00 5c e1                                      cmp ip, r2
005745d4  6f 00 00 ba                                      blt #0x574798
005745d8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005745dc  14 10 9d e5                                      ldr r1, [sp, #0x14]
005745e0  53 f9 ff eb                                      bl #0x572b34
005745e4  94 01 9d e5                                      ldr r0, [sp, #0x194]
005745e8  14 20 9d e5                                      ldr r2, [sp, #0x14]
005745ec  02 00 50 e1                                      cmp r0, r2
005745f0  02 00 00 0a                                      beq #0x574600
005745f4  00 00 50 e3                                      cmp r0, #0
005745f8  00 00 00 0a                                      beq #0x574600
005745fc  93 6f f6 eb                                      bl #0x310450
00574600  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00574604  6d df 8d e2                                      add sp, sp, #0x1b4
00574608  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0057460c  b8 a0 95 e5                                      ldr sl, [r5, #0xb8]
00574610  bc 30 95 e5                                      ldr r3, [r5, #0xbc]
00574614  03 30 6a e0                                      rsb r3, sl, r3
00574618  c3 31 a0 e1                                      asr r3, r3, #3
0057461c  83 21 a0 e1                                      lsl r2, r3, #3
00574620  02 20 63 e0                                      rsb r2, r3, r2
00574624  02 23 82 e0                                      add r2, r2, r2, lsl #6
00574628  82 21 83 e0                                      add r2, r3, r2, lsl #3
0057462c  82 b7 a0 e1                                      lsl fp, r2, #0xf
00574630  0b b0 62 e0                                      rsb fp, r2, fp
00574634  8b b1 83 e0                                      add fp, r3, fp, lsl #3
00574638  00 00 5b e3                                      cmp fp, #0
0057463c  01 30 86 d2                                      addle r3, r6, #1
00574640  7e 00 00 da                                      ble #0x574840
00574644  01 30 86 e2                                      add r3, r6, #1
00574648  00 40 a0 e3                                      mov r4, #0
0057464c  03 81 88 e0                                      add r8, r8, r3, lsl #2
00574650  04 90 a0 e1                                      mov sb, r4
00574654  04 20 8a e0                                      add r2, sl, r4
00574658  44 00 92 e5                                      ldr r0, [r2, #0x44]
0057465c  40 70 92 e5                                      ldr r7, [r2, #0x40]
00574660  04 10 90 e5                                      ldr r1, [r0, #4]
00574664  07 70 60 e0                                      rsb r7, r0, r7
00574668  47 71 a0 e1                                      asr r7, r7, #2
0057466c  00 00 51 e3                                      cmp r1, #0
00574670  01 70 47 e2                                      sub r7, r7, #1
00574674  5a 00 00 1a                                      bne #0x5747e4
00574678  00 c0 a0 e3                                      mov ip, #0
0057467c  0c 20 a0 e1                                      mov r2, ip
00574680  02 00 57 e1                                      cmp r7, r2
00574684  04 00 00 0a                                      beq #0x57469c
00574688  00 00 51 e3                                      cmp r1, #0
0057468c  67 00 00 1a                                      bne #0x574830
00574690  0c 20 98 e7                                      ldr r2, [r8, ip]
00574694  00 00 52 e3                                      cmp r2, #0
00574698  64 00 00 1a                                      bne #0x574830
0057469c  10 20 9d e5                                      ldr r2, [sp, #0x10]
005746a0  18 c0 9d e5                                      ldr ip, [sp, #0x18]
005746a4  08 10 9d e5                                      ldr r1, [sp, #8]
005746a8  06 30 62 e0                                      rsb r3, r2, r6
005746ac  0c 00 9d e5                                      ldr r0, [sp, #0xc]
005746b0  00 c0 8d e5                                      str ip, [sp]
005746b4  60 f9 ff eb                                      bl #0x572c3c
005746b8  4c 11 9d e5                                      ldr r1, [sp, #0x14c]
005746bc  14 00 9d e5                                      ldr r0, [sp, #0x14]
005746c0  48 21 9d e5                                      ldr r2, [sp, #0x148]
005746c4  5f b1 f6 eb                                      bl #0x320c48
005746c8  4c 01 9d e5                                      ldr r0, [sp, #0x14c]
005746cc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005746d0  01 00 50 e1                                      cmp r0, r1
005746d4  02 00 00 0a                                      beq #0x5746e4
005746d8  00 00 50 e3                                      cmp r0, #0
005746dc  00 00 00 0a                                      beq #0x5746e4
005746e0  5a 6f f6 eb                                      bl #0x310450
005746e4  b8 30 95 e5                                      ldr r3, [r5, #0xb8]
005746e8  00 20 a0 e3                                      mov r2, #0
005746ec  98 21 8d e5                                      str r2, [sp, #0x198]
005746f0  9c 21 8d e5                                      str r2, [sp, #0x19c]
005746f4  04 30 83 e0                                      add r3, r3, r4
005746f8  44 30 93 e5                                      ldr r3, [r3, #0x44]
005746fc  24 10 9d e5                                      ldr r1, [sp, #0x24]
00574700  6b 2f 8d e2                                      add r2, sp, #0x1ac
00574704  00 30 93 e5                                      ldr r3, [r3]
00574708  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0057470c  98 31 8d e5                                      str r3, [sp, #0x198]
00574710  f9 c5 f6 eb                                      bl #0x325efc
00574714  14 00 9d e5                                      ldr r0, [sp, #0x14]
00574718  04 11 9d e5                                      ldr r1, [sp, #0x104]
0057471c  00 21 9d e5                                      ldr r2, [sp, #0x100]
00574720  48 b1 f6 eb                                      bl #0x320c48
00574724  b8 30 95 e5                                      ldr r3, [r5, #0xb8]
00574728  04 01 9d e5                                      ldr r0, [sp, #0x104]
0057472c  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00574730  04 40 83 e0                                      add r4, r3, r4
00574734  44 30 94 e5                                      ldr r3, [r4, #0x44]
00574738  40 40 94 e5                                      ldr r4, [r4, #0x40]
0057473c  0c 00 50 e1                                      cmp r0, ip
00574740  04 40 63 e0                                      rsb r4, r3, r4
00574744  44 41 86 e0                                      add r4, r6, r4, asr #2
00574748  02 00 00 0a                                      beq #0x574758
0057474c  00 00 50 e3                                      cmp r0, #0
00574750  00 00 00 0a                                      beq #0x574758
00574754  3d 6f f6 eb                                      bl #0x310450
00574758  08 00 9d e5                                      ldr r0, [sp, #8]
0057475c  04 10 a0 e1                                      mov r1, r4
00574760  b7 fa ff eb                                      bl #0x573244
00574764  01 00 70 e3                                      cmn r0, #1
00574768  00 60 a0 e1                                      mov r6, r0
0057476c  10 40 8d e5                                      str r4, [sp, #0x10]
00574770  8c ff ff 1a                                      bne #0x5745a8
00574774  08 20 9d e5                                      ldr r2, [sp, #8]
00574778  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0057477c  44 30 92 e5                                      ldr r3, [r2, #0x44]
00574780  40 20 92 e5                                      ldr r2, [r2, #0x40]
00574784  02 30 63 e0                                      rsb r3, r3, r2
00574788  43 31 a0 e1                                      asr r3, r3, #2
0057478c  01 20 43 e2                                      sub r2, r3, #1
00574790  02 00 5c e1                                      cmp ip, r2
00574794  8f ff ff aa                                      bge #0x5745d8
00574798  10 20 9d e5                                      ldr r2, [sp, #0x10]
0057479c  30 40 8d e2                                      add r4, sp, #0x30
005747a0  1a ce 8d e2                                      add ip, sp, #0x1a0
005747a4  03 30 62 e0                                      rsb r3, r2, r3
005747a8  08 10 9d e5                                      ldr r1, [sp, #8]
005747ac  04 00 a0 e1                                      mov r0, r4
005747b0  00 c0 8d e5                                      str ip, [sp]
005747b4  20 f9 ff eb                                      bl #0x572c3c
005747b8  14 00 9d e5                                      ldr r0, [sp, #0x14]
005747bc  74 10 9d e5                                      ldr r1, [sp, #0x74]
005747c0  70 20 9d e5                                      ldr r2, [sp, #0x70]
005747c4  1f b1 f6 eb                                      bl #0x320c48
005747c8  74 00 9d e5                                      ldr r0, [sp, #0x74]
005747cc  04 00 50 e1                                      cmp r0, r4
005747d0  80 ff ff 0a                                      beq #0x5745d8
005747d4  00 00 50 e3                                      cmp r0, #0
005747d8  7e ff ff 0a                                      beq #0x5745d8
005747dc  1b 6f f6 eb                                      bl #0x310450
005747e0  7c ff ff ea                                      b #0x5745d8
005747e4  00 20 98 e5                                      ldr r2, [r8]
005747e8  00 00 52 e3                                      cmp r2, #0
005747ec  00 00 57 13                                      cmpne r7, #0
005747f0  a0 ff ff da                                      ble #0x574678
005747f4  01 00 52 e1                                      cmp r2, r1
005747f8  0c 00 00 1a                                      bne #0x574830
005747fc  00 20 a0 e3                                      mov r2, #0
00574800  08 10 90 e5                                      ldr r1, [r0, #8]
00574804  01 20 82 e2                                      add r2, r2, #1
00574808  02 c1 a0 e1                                      lsl ip, r2, #2
0057480c  00 00 51 e3                                      cmp r1, #0
00574810  9a ff ff 0a                                      beq #0x574680
00574814  02 e1 98 e7                                      ldr lr, [r8, r2, lsl #2]
00574818  04 00 80 e2                                      add r0, r0, #4
0057481c  00 00 5e e3                                      cmp lr, #0
00574820  02 00 57 11                                      cmpne r7, r2
00574824  95 ff ff da                                      ble #0x574680
00574828  0e 00 51 e1                                      cmp r1, lr
0057482c  f3 ff ff 0a                                      beq #0x574800
00574830  01 90 89 e2                                      add sb, sb, #1
00574834  0b 00 59 e1                                      cmp sb, fp
00574838  48 40 84 e2                                      add r4, r4, #0x48
0057483c  84 ff ff 1a                                      bne #0x574654
00574840  10 20 9d e5                                      ldr r2, [sp, #0x10]
00574844  28 c0 9d e5                                      ldr ip, [sp, #0x28]
00574848  08 10 9d e5                                      ldr r1, [sp, #8]
0057484c  03 40 a0 e1                                      mov r4, r3
00574850  20 00 9d e5                                      ldr r0, [sp, #0x20]
00574854  03 30 62 e0                                      rsb r3, r2, r3
00574858  00 c0 8d e5                                      str ip, [sp]
0057485c  f6 f8 ff eb                                      bl #0x572c3c
00574860  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
00574864  14 00 9d e5                                      ldr r0, [sp, #0x14]
00574868  b8 20 9d e5                                      ldr r2, [sp, #0xb8]
0057486c  f5 b0 f6 eb                                      bl #0x320c48
00574870  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
00574874  20 10 9d e5                                      ldr r1, [sp, #0x20]
00574878  01 00 50 e1                                      cmp r0, r1
0057487c  b2 ff ff 1a                                      bne #0x57474c
00574880  b4 ff ff ea                                      b #0x574758
00574884  08 00 9d e5                                      ldr r0, [sp, #8]
00574888  00 10 a0 e3                                      mov r1, #0
0057488c  6c fa ff eb                                      bl #0x573244
00574890  01 00 70 e3                                      cmn r0, #1
00574894  00 60 a0 e1                                      mov r6, r0
00574898  2b ff ff 1a                                      bne #0x57454c
0057489c  08 10 9d e5                                      ldr r1, [sp, #8]
005748a0  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
005748a4  a2 f8 ff eb                                      bl #0x572b34
005748a8  54 ff ff ea                                      b #0x574600

; FUNCTION 0x005748ac, declared_size=244, range_size=244, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE7setTextEPwS4_
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::setText(wchar_t*, wchar_t*)
; decoder-mode: arm
005748ac  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
005748b0  02 30 61 e0                                      rsb r3, r1, r2
005748b4  0b 00 53 e3                                      cmp r3, #0xb
005748b8  94 d0 4d e2                                      sub sp, sp, #0x94
005748bc  00 50 a0 e1                                      mov r5, r0
005748c0  0b 00 00 ca                                      bgt #0x5748f4
005748c4  01 00 52 e1                                      cmp r2, r1
005748c8  30 00 00 0a                                      beq #0x574990
005748cc  01 c0 a0 e1                                      mov ip, r1
005748d0  00 00 9c e5                                      ldr r0, [ip]
005748d4  20 00 50 e3                                      cmp r0, #0x20
005748d8  09 00 50 13                                      cmpne r0, #9
005748dc  28 00 00 0a                                      beq #0x574984
005748e0  0a 00 50 e3                                      cmp r0, #0xa
005748e4  0d 00 50 13                                      cmpne r0, #0xd
005748e8  25 00 00 0a                                      beq #0x574984
005748ec  02 00 5c e1                                      cmp ip, r2
005748f0  26 00 00 0a                                      beq #0x574990
005748f4  48 40 8d e2                                      add r4, sp, #0x48
005748f8  03 30 c3 e3                                      bic r3, r3, #3
005748fc  03 20 81 e0                                      add r2, r1, r3
00574900  04 00 a0 e1                                      mov r0, r4
00574904  0d 60 a0 e1                                      mov r6, sp
00574908  88 40 8d e5                                      str r4, [sp, #0x88]
0057490c  8c 40 8d e5                                      str r4, [sp, #0x8c]
00574910  24 70 85 e2                                      add r7, r5, #0x24
00574914  44 c5 f6 eb                                      bl #0x325e2c
00574918  0d 00 a0 e1                                      mov r0, sp
0057491c  05 10 a0 e1                                      mov r1, r5
00574920  04 20 a0 e1                                      mov r2, r4
00574924  fd fe ff eb                                      bl #0x574520
00574928  06 00 57 e1                                      cmp r7, r6
0057492c  03 00 00 0a                                      beq #0x574940
00574930  07 00 a0 e1                                      mov r0, r7
00574934  44 10 9d e5                                      ldr r1, [sp, #0x44]
00574938  40 20 9d e5                                      ldr r2, [sp, #0x40]
0057493c  17 ba f6 eb                                      bl #0x3231a0
00574940  44 00 9d e5                                      ldr r0, [sp, #0x44]
00574944  06 00 50 e1                                      cmp r0, r6
00574948  02 00 00 0a                                      beq #0x574958
0057494c  00 00 50 e3                                      cmp r0, #0
00574950  00 00 00 0a                                      beq #0x574958
00574954  bd 6e f6 eb                                      bl #0x310450
00574958  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
0057495c  03 30 a0 e3                                      mov r3, #3
00574960  18 30 85 e5                                      str r3, [r5, #0x18]
00574964  04 00 50 e1                                      cmp r0, r4
00574968  0a 00 00 0a                                      beq #0x574998
0057496c  00 00 50 e3                                      cmp r0, #0
00574970  08 00 00 0a                                      beq #0x574998
00574974  b5 6e f6 eb                                      bl #0x310450
00574978  01 00 a0 e3                                      mov r0, #1
0057497c  94 d0 8d e2                                      add sp, sp, #0x94
00574980  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00574984  04 c0 8c e2                                      add ip, ip, #4
00574988  0c 00 52 e1                                      cmp r2, ip
0057498c  cf ff ff 1a                                      bne #0x5748d0
00574990  00 00 a0 e3                                      mov r0, #0
00574994  f8 ff ff ea                                      b #0x57497c
00574998  01 00 a0 e3                                      mov r0, #1
0057499c  f6 ff ff ea                                      b #0x57497c

; FUNCTION 0x005749a0, declared_size=1032, range_size=1032, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22parseOpeningXMLElementEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::parseOpeningXMLElement()
; decoder-mode: arm
005749a0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005749a4  c4 10 90 e5                                      ldr r1, [r0, #0xc4]
005749a8  c8 20 90 e5                                      ldr r2, [r0, #0xc8]
005749ac  01 30 a0 e3                                      mov r3, #1
005749b0  18 30 80 e5                                      str r3, [r0, #0x18]
005749b4  00 30 a0 e3                                      mov r3, #0
005749b8  b4 30 c0 e5                                      strb r3, [r0, #0xb4]
005749bc  75 df 4d e2                                      sub sp, sp, #0x1d4
005749c0  00 40 a0 e1                                      mov r4, r0
005749c4  02 00 51 e1                                      cmp r1, r2
005749c8  c4 00 80 e2                                      add r0, r0, #0xc4
005749cc  0c 00 8d e5                                      str r0, [sp, #0xc]
005749d0  01 00 00 0a                                      beq #0x5749dc
005749d4  73 3f 8d e2                                      add r3, sp, #0x1cc
005749d8  8d fa ff eb                                      bl #0x573414
005749dc  0c 10 94 e5                                      ldr r1, [r4, #0xc]
005749e0  10 10 8d e5                                      str r1, [sp, #0x10]
005749e4  00 30 91 e5                                      ldr r3, [r1]
005749e8  3e 00 53 e3                                      cmp r3, #0x3e
005749ec  02 00 00 0a                                      beq #0x5749fc
005749f0  20 00 53 e3                                      cmp r3, #0x20
005749f4  09 00 53 13                                      cmpne r3, #9
005749f8  c9 00 00 1a                                      bne #0x574d24
005749fc  10 b0 9d e5                                      ldr fp, [sp, #0x10]
00574a00  1c 50 8d e2                                      add r5, sp, #0x1c
00574a04  f4 20 8d e2                                      add r2, sp, #0xf4
00574a08  3e 00 53 e3                                      cmp r3, #0x3e
00574a0c  14 b0 8d e5                                      str fp, [sp, #0x14]
00574a10  48 60 85 e2                                      add r6, r5, #0x48
00574a14  61 af 8d e2                                      add sl, sp, #0x184
00574a18  4f 7f 8d e2                                      add r7, sp, #0x13c
00574a1c  08 20 8d e5                                      str r2, [sp, #8]
00574a20  43 00 00 0a                                      beq #0x574b34
00574a24  20 00 53 e3                                      cmp r3, #0x20
00574a28  09 00 53 13                                      cmpne r3, #9
00574a2c  3a 00 00 0a                                      beq #0x574b1c
00574a30  0a 00 53 e3                                      cmp r3, #0xa
00574a34  0d 00 53 13                                      cmpne r3, #0xd
00574a38  37 00 00 0a                                      beq #0x574b1c
00574a3c  2f 00 53 e3                                      cmp r3, #0x2f
00574a40  cf 00 00 0a                                      beq #0x574d84
00574a44  3d 00 53 e3                                      cmp r3, #0x3d
00574a48  0b 90 a0 01                                      moveq sb, fp
00574a4c  06 00 00 0a                                      beq #0x574a6c
00574a50  0b 90 a0 e1                                      mov sb, fp
00574a54  04 90 89 e2                                      add sb, sb, #4
00574a58  0c 90 84 e5                                      str sb, [r4, #0xc]
00574a5c  00 30 99 e5                                      ldr r3, [sb]
00574a60  20 00 53 e3                                      cmp r3, #0x20
00574a64  09 00 53 13                                      cmpne r3, #9
00574a68  13 00 00 1a                                      bne #0x574abc
00574a6c  04 30 89 e2                                      add r3, sb, #4
00574a70  0c 30 84 e5                                      str r3, [r4, #0xc]
00574a74  04 20 99 e5                                      ldr r2, [sb, #4]
00574a78  27 00 52 e3                                      cmp r2, #0x27
00574a7c  22 00 52 13                                      cmpne r2, #0x22
00574a80  18 00 00 1a                                      bne #0x574ae8
00574a84  00 00 52 e3                                      cmp r2, #0
00574a88  09 00 00 0a                                      beq #0x574ab4
00574a8c  04 80 83 e2                                      add r8, r3, #4
00574a90  0c 80 84 e5                                      str r8, [r4, #0xc]
00574a94  04 30 93 e5                                      ldr r3, [r3, #4]
00574a98  02 00 53 e1                                      cmp r3, r2
00574a9c  00 00 a0 03                                      moveq r0, #0
00574aa0  08 30 a0 01                                      moveq r3, r8
00574aa4  04 00 8d 05                                      streq r0, [sp, #4]
00574aa8  4d 00 00 0a                                      beq #0x574be4
00574aac  00 00 53 e3                                      cmp r3, #0
00574ab0  3f 00 00 1a                                      bne #0x574bb4
00574ab4  75 df 8d e2                                      add sp, sp, #0x1d4
00574ab8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00574abc  0a 00 53 e3                                      cmp r3, #0xa
00574ac0  0d 00 53 13                                      cmpne r3, #0xd
00574ac4  e8 ff ff 0a                                      beq #0x574a6c
00574ac8  3d 00 53 e3                                      cmp r3, #0x3d
00574acc  e0 ff ff 1a                                      bne #0x574a54
00574ad0  04 30 89 e2                                      add r3, sb, #4
00574ad4  0c 30 84 e5                                      str r3, [r4, #0xc]
00574ad8  04 20 99 e5                                      ldr r2, [sb, #4]
00574adc  27 00 52 e3                                      cmp r2, #0x27
00574ae0  22 00 52 13                                      cmpne r2, #0x22
00574ae4  e6 ff ff 0a                                      beq #0x574a84
00574ae8  00 00 52 e3                                      cmp r2, #0
00574aec  f0 ff ff 0a                                      beq #0x574ab4
00574af0  08 10 89 e2                                      add r1, sb, #8
00574af4  0c 10 84 e5                                      str r1, [r4, #0xc]
00574af8  00 20 91 e5                                      ldr r2, [r1]
00574afc  01 30 a0 e1                                      mov r3, r1
00574b00  04 10 81 e2                                      add r1, r1, #4
00574b04  27 00 52 e3                                      cmp r2, #0x27
00574b08  22 00 52 13                                      cmpne r2, #0x22
00574b0c  dc ff ff 0a                                      beq #0x574a84
00574b10  00 00 52 e3                                      cmp r2, #0
00574b14  e6 ff ff 0a                                      beq #0x574ab4
00574b18  f5 ff ff ea                                      b #0x574af4
00574b1c  04 b0 8b e2                                      add fp, fp, #4
00574b20  0c b0 84 e5                                      str fp, [r4, #0xc]
00574b24  0c b0 94 e5                                      ldr fp, [r4, #0xc]
00574b28  00 30 9b e5                                      ldr r3, [fp]
00574b2c  3e 00 53 e3                                      cmp r3, #0x3e
00574b30  bb ff ff 1a                                      bne #0x574a24
00574b34  10 20 9d e5                                      ldr r2, [sp, #0x10]
00574b38  14 30 9d e5                                      ldr r3, [sp, #0x14]
00574b3c  03 00 52 e1                                      cmp r2, r3
00574b40  88 00 00 3a                                      blo #0x574d68
00574b44  14 30 9d e5                                      ldr r3, [sp, #0x14]
00574b48  10 00 9d e5                                      ldr r0, [sp, #0x10]
00574b4c  ac 50 8d e2                                      add r5, sp, #0xac
00574b50  24 60 84 e2                                      add r6, r4, #0x24
00574b54  03 30 60 e0                                      rsb r3, r0, r3
00574b58  03 20 c3 e3                                      bic r2, r3, #3
00574b5c  00 10 a0 e1                                      mov r1, r0
00574b60  02 20 80 e0                                      add r2, r0, r2
00574b64  05 00 a0 e1                                      mov r0, r5
00574b68  ec 50 8d e5                                      str r5, [sp, #0xec]
00574b6c  f0 50 8d e5                                      str r5, [sp, #0xf0]
00574b70  ad c4 f6 eb                                      bl #0x325e2c
00574b74  05 00 56 e1                                      cmp r6, r5
00574b78  03 00 00 0a                                      beq #0x574b8c
00574b7c  06 00 a0 e1                                      mov r0, r6
00574b80  f0 10 9d e5                                      ldr r1, [sp, #0xf0]
00574b84  ec 20 9d e5                                      ldr r2, [sp, #0xec]
00574b88  84 b9 f6 eb                                      bl #0x3231a0
00574b8c  f0 00 9d e5                                      ldr r0, [sp, #0xf0]
00574b90  05 00 50 e1                                      cmp r0, r5
00574b94  02 00 00 0a                                      beq #0x574ba4
00574b98  00 00 50 e3                                      cmp r0, #0
00574b9c  00 00 00 0a                                      beq #0x574ba4
00574ba0  2a 6e f6 eb                                      bl #0x310450
00574ba4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00574ba8  04 30 83 e2                                      add r3, r3, #4
00574bac  0c 30 84 e5                                      str r3, [r4, #0xc]
00574bb0  bf ff ff ea                                      b #0x574ab4
00574bb4  08 30 a0 e1                                      mov r3, r8
00574bb8  01 00 00 ea                                      b #0x574bc4
00574bbc  00 00 51 e3                                      cmp r1, #0
00574bc0  bb ff ff 0a                                      beq #0x574ab4
00574bc4  04 30 83 e2                                      add r3, r3, #4
00574bc8  0c 30 84 e5                                      str r3, [r4, #0xc]
00574bcc  00 10 93 e5                                      ldr r1, [r3]
00574bd0  02 00 51 e1                                      cmp r1, r2
00574bd4  f8 ff ff 1a                                      bne #0x574bbc
00574bd8  03 20 68 e0                                      rsb r2, r8, r3
00574bdc  03 20 c2 e3                                      bic r2, r2, #3
00574be0  04 20 8d e5                                      str r2, [sp, #4]
00574be4  04 30 83 e2                                      add r3, r3, #4
00574be8  0c 30 84 e5                                      str r3, [r4, #0xc]
00574bec  05 00 a0 e1                                      mov r0, r5
00574bf0  10 10 a0 e3                                      mov r1, #0x10
00574bf4  5c 50 8d e5                                      str r5, [sp, #0x5c]
00574bf8  60 50 8d e5                                      str r5, [sp, #0x60]
00574bfc  47 af f6 eb                                      bl #0x320920
00574c00  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
00574c04  00 20 a0 e3                                      mov r2, #0
00574c08  06 00 a0 e1                                      mov r0, r6
00574c0c  00 20 83 e5                                      str r2, [r3]
00574c10  10 10 a0 e3                                      mov r1, #0x10
00574c14  a4 60 8d e5                                      str r6, [sp, #0xa4]
00574c18  a8 60 8d e5                                      str r6, [sp, #0xa8]
00574c1c  3f af f6 eb                                      bl #0x320920
00574c20  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00574c24  09 90 6b e0                                      rsb sb, fp, sb
00574c28  00 00 a0 e3                                      mov r0, #0
00574c2c  03 20 c9 e3                                      bic r2, sb, #3
00574c30  00 00 83 e5                                      str r0, [r3]
00574c34  0b 10 a0 e1                                      mov r1, fp
00574c38  02 20 8b e0                                      add r2, fp, r2
00574c3c  0a 00 a0 e1                                      mov r0, sl
00574c40  c4 a1 8d e5                                      str sl, [sp, #0x1c4]
00574c44  c8 a1 8d e5                                      str sl, [sp, #0x1c8]
00574c48  77 c4 f6 eb                                      bl #0x325e2c
00574c4c  05 00 a0 e1                                      mov r0, r5
00574c50  c8 11 9d e5                                      ldr r1, [sp, #0x1c8]
00574c54  c4 21 9d e5                                      ldr r2, [sp, #0x1c4]
00574c58  50 b9 f6 eb                                      bl #0x3231a0
00574c5c  c8 01 9d e5                                      ldr r0, [sp, #0x1c8]
00574c60  0a 00 50 e1                                      cmp r0, sl
00574c64  02 00 00 0a                                      beq #0x574c74
00574c68  00 00 50 e3                                      cmp r0, #0
00574c6c  00 00 00 0a                                      beq #0x574c74
00574c70  f6 6d f6 eb                                      bl #0x310450
00574c74  04 30 9d e5                                      ldr r3, [sp, #4]
00574c78  08 10 a0 e1                                      mov r1, r8
00574c7c  07 00 a0 e1                                      mov r0, r7
00574c80  03 20 88 e0                                      add r2, r8, r3
00574c84  7c 71 8d e5                                      str r7, [sp, #0x17c]
00574c88  80 71 8d e5                                      str r7, [sp, #0x180]
00574c8c  66 c4 f6 eb                                      bl #0x325e2c
00574c90  08 00 9d e5                                      ldr r0, [sp, #8]
00574c94  04 10 a0 e1                                      mov r1, r4
00574c98  07 20 a0 e1                                      mov r2, r7
00574c9c  1f fe ff eb                                      bl #0x574520
00574ca0  38 11 9d e5                                      ldr r1, [sp, #0x138]
00574ca4  06 00 a0 e1                                      mov r0, r6
00574ca8  34 21 9d e5                                      ldr r2, [sp, #0x134]
00574cac  3b b9 f6 eb                                      bl #0x3231a0
00574cb0  38 01 9d e5                                      ldr r0, [sp, #0x138]
00574cb4  08 10 9d e5                                      ldr r1, [sp, #8]
00574cb8  01 00 50 e1                                      cmp r0, r1
00574cbc  02 00 00 0a                                      beq #0x574ccc
00574cc0  00 00 50 e3                                      cmp r0, #0
00574cc4  00 00 00 0a                                      beq #0x574ccc
00574cc8  e0 6d f6 eb                                      bl #0x310450
00574ccc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00574cd0  05 10 a0 e1                                      mov r1, r5
00574cd4  f5 f9 ff eb                                      bl #0x5734b0
00574cd8  80 01 9d e5                                      ldr r0, [sp, #0x180]
00574cdc  07 00 50 e1                                      cmp r0, r7
00574ce0  02 00 00 0a                                      beq #0x574cf0
00574ce4  00 00 50 e3                                      cmp r0, #0
00574ce8  00 00 00 0a                                      beq #0x574cf0
00574cec  d7 6d f6 eb                                      bl #0x310450
00574cf0  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00574cf4  06 00 50 e1                                      cmp r0, r6
00574cf8  02 00 00 0a                                      beq #0x574d08
00574cfc  00 00 50 e3                                      cmp r0, #0
00574d00  00 00 00 0a                                      beq #0x574d08
00574d04  d1 6d f6 eb                                      bl #0x310450
00574d08  60 00 9d e5                                      ldr r0, [sp, #0x60]
00574d0c  05 00 50 e1                                      cmp r0, r5
00574d10  83 ff ff 0a                                      beq #0x574b24
00574d14  00 00 50 e3                                      cmp r0, #0
00574d18  81 ff ff 0a                                      beq #0x574b24
00574d1c  cb 6d f6 eb                                      bl #0x310450
00574d20  7f ff ff ea                                      b #0x574b24
00574d24  0a 00 53 e3                                      cmp r3, #0xa
00574d28  0d 00 53 13                                      cmpne r3, #0xd
00574d2c  01 b0 a0 11                                      movne fp, r1
00574d30  03 00 00 1a                                      bne #0x574d44
00574d34  30 ff ff ea                                      b #0x5749fc
00574d38  0a 00 53 e3                                      cmp r3, #0xa
00574d3c  0d 00 53 13                                      cmpne r3, #0xd
00574d40  2e ff ff 0a                                      beq #0x574a00
00574d44  04 b0 8b e2                                      add fp, fp, #4
00574d48  0c b0 84 e5                                      str fp, [r4, #0xc]
00574d4c  00 30 9b e5                                      ldr r3, [fp]
00574d50  3e 00 53 e3                                      cmp r3, #0x3e
00574d54  29 ff ff 0a                                      beq #0x574a00
00574d58  20 00 53 e3                                      cmp r3, #0x20
00574d5c  09 00 53 13                                      cmpne r3, #9
00574d60  26 ff ff 0a                                      beq #0x574a00
00574d64  f3 ff ff ea                                      b #0x574d38
00574d68  04 20 13 e5                                      ldr r2, [r3, #-4]
00574d6c  04 30 43 e2                                      sub r3, r3, #4
00574d70  2f 00 52 e3                                      cmp r2, #0x2f
00574d74  01 20 a0 03                                      moveq r2, #1
00574d78  b4 20 c4 05                                      strbeq r2, [r4, #0xb4]
00574d7c  70 ff ff 1a                                      bne #0x574b44
00574d80  70 ff ff ea                                      b #0x574b48
00574d84  01 30 a0 e3                                      mov r3, #1
00574d88  04 b0 8b e2                                      add fp, fp, #4
00574d8c  0c b0 84 e5                                      str fp, [r4, #0xc]
00574d90  b4 30 c4 e5                                      strb r3, [r4, #0xb4]
00574d94  10 20 9d e5                                      ldr r2, [sp, #0x10]
00574d98  14 30 9d e5                                      ldr r3, [sp, #0x14]
00574d9c  03 00 52 e1                                      cmp r2, r3
00574da0  67 ff ff 2a                                      bhs #0x574b44
00574da4  ef ff ff ea                                      b #0x574d68

; FUNCTION 0x00574da8, declared_size=416, range_size=416, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE10parseCDATAEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::parseCDATA()
; decoder-mode: arm
00574da8  30 40 2d e9                                      push {r4, r5, lr}
00574dac  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00574db0  00 50 a0 e1                                      mov r5, r0
00574db4  94 d0 4d e2                                      sub sp, sp, #0x94
00574db8  04 30 91 e5                                      ldr r3, [r1, #4]
00574dbc  5b 00 53 e3                                      cmp r3, #0x5b
00574dc0  00 00 a0 13                                      movne r0, #0
00574dc4  01 00 00 0a                                      beq #0x574dd0
00574dc8  94 d0 8d e2                                      add sp, sp, #0x94
00574dcc  30 80 bd e8                                      pop {r4, r5, pc}
00574dd0  05 30 a0 e3                                      mov r3, #5
00574dd4  18 30 85 e5                                      str r3, [r5, #0x18]
00574dd8  00 20 91 e5                                      ldr r2, [r1]
00574ddc  00 00 52 e3                                      cmp r2, #0
00574de0  0b 00 00 0a                                      beq #0x574e14
00574de4  00 30 a0 e3                                      mov r3, #0
00574de8  04 10 81 e2                                      add r1, r1, #4
00574dec  0c 10 85 e5                                      str r1, [r5, #0xc]
00574df0  00 20 91 e5                                      ldr r2, [r1]
00574df4  01 30 83 e2                                      add r3, r3, #1
00574df8  07 00 53 e3                                      cmp r3, #7
00574dfc  00 00 a0 c3                                      movgt r0, #0
00574e00  01 00 a0 d3                                      movle r0, #1
00574e04  00 00 52 e3                                      cmp r2, #0
00574e08  00 00 a0 03                                      moveq r0, #0
00574e0c  00 00 50 e3                                      cmp r0, #0
00574e10  f4 ff ff 1a                                      bne #0x574de8
00574e14  00 00 52 e3                                      cmp r2, #0
00574e18  31 00 00 0a                                      beq #0x574ee4
00574e1c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00574e20  00 00 93 e5                                      ldr r0, [r3]
00574e24  00 00 50 e3                                      cmp r0, #0
00574e28  1a 00 00 0a                                      beq #0x574e98
00574e2c  08 30 43 e2                                      sub r3, r3, #8
00574e30  0a 00 00 ea                                      b #0x574e60
00574e34  01 c0 a0 e3                                      mov ip, #1
00574e38  00 20 a0 e3                                      mov r2, #0
00574e3c  0c 00 83 e2                                      add r0, r3, #0xc
00574e40  0c 00 85 e5                                      str r0, [r5, #0xc]
00574e44  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00574e48  04 30 83 e2                                      add r3, r3, #4
00574e4c  00 00 50 e3                                      cmp r0, #0
00574e50  00 c0 a0 03                                      moveq ip, #0
00574e54  01 c0 0c 12                                      andne ip, ip, #1
00574e58  00 00 5c e3                                      cmp ip, #0
00574e5c  0b 00 00 0a                                      beq #0x574e90
00574e60  3e 00 50 e3                                      cmp r0, #0x3e
00574e64  f2 ff ff 1a                                      bne #0x574e34
00574e68  04 20 93 e5                                      ldr r2, [r3, #4]
00574e6c  5d 00 52 e3                                      cmp r2, #0x5d
00574e70  ef ff ff 1a                                      bne #0x574e34
00574e74  00 00 93 e5                                      ldr r0, [r3]
00574e78  03 20 a0 e1                                      mov r2, r3
00574e7c  5d 00 50 e3                                      cmp r0, #0x5d
00574e80  eb ff ff 1a                                      bne #0x574e34
00574e84  01 c0 73 e2                                      rsbs ip, r3, #1
00574e88  00 c0 a0 33                                      movlo ip, #0
00574e8c  ea ff ff ea                                      b #0x574e3c
00574e90  00 00 52 e3                                      cmp r2, #0
00574e94  14 00 00 1a                                      bne #0x574eec
00574e98  0d 00 a0 e1                                      mov r0, sp
00574e9c  10 10 a0 e3                                      mov r1, #0x10
00574ea0  40 d0 8d e5                                      str sp, [sp, #0x40]
00574ea4  44 d0 8d e5                                      str sp, [sp, #0x44]
00574ea8  9c ae f6 eb                                      bl #0x320920
00574eac  40 30 9d e5                                      ldr r3, [sp, #0x40]
00574eb0  0d 40 a0 e1                                      mov r4, sp
00574eb4  24 50 85 e2                                      add r5, r5, #0x24
00574eb8  00 20 a0 e3                                      mov r2, #0
00574ebc  04 00 55 e1                                      cmp r5, r4
00574ec0  00 20 83 e5                                      str r2, [r3]
00574ec4  03 00 00 0a                                      beq #0x574ed8
00574ec8  05 00 a0 e1                                      mov r0, r5
00574ecc  44 10 9d e5                                      ldr r1, [sp, #0x44]
00574ed0  40 20 9d e5                                      ldr r2, [sp, #0x40]
00574ed4  b1 b8 f6 eb                                      bl #0x3231a0
00574ed8  44 00 9d e5                                      ldr r0, [sp, #0x44]
00574edc  04 00 50 e1                                      cmp r0, r4
00574ee0  13 00 00 1a                                      bne #0x574f34
00574ee4  01 00 a0 e3                                      mov r0, #1
00574ee8  b6 ff ff ea                                      b #0x574dc8
00574eec  02 20 61 e0                                      rsb r2, r1, r2
00574ef0  48 40 8d e2                                      add r4, sp, #0x48
00574ef4  03 20 c2 e3                                      bic r2, r2, #3
00574ef8  24 50 85 e2                                      add r5, r5, #0x24
00574efc  02 20 81 e0                                      add r2, r1, r2
00574f00  04 00 a0 e1                                      mov r0, r4
00574f04  88 40 8d e5                                      str r4, [sp, #0x88]
00574f08  8c 40 8d e5                                      str r4, [sp, #0x8c]
00574f0c  c6 c3 f6 eb                                      bl #0x325e2c
00574f10  04 00 55 e1                                      cmp r5, r4
00574f14  03 00 00 0a                                      beq #0x574f28
00574f18  05 00 a0 e1                                      mov r0, r5
00574f1c  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
00574f20  88 20 9d e5                                      ldr r2, [sp, #0x88]
00574f24  9d b8 f6 eb                                      bl #0x3231a0
00574f28  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
00574f2c  04 00 50 e1                                      cmp r0, r4
00574f30  eb ff ff 0a                                      beq #0x574ee4
00574f34  00 00 50 e3                                      cmp r0, #0
00574f38  e9 ff ff 0a                                      beq #0x574ee4
00574f3c  43 6d f6 eb                                      bl #0x310450
00574f40  01 00 a0 e3                                      mov r0, #1
00574f44  9f ff ff ea                                      b #0x574dc8

; FUNCTION 0x00574f48, declared_size=292, range_size=292, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE16parseCurrentNodeEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::parseCurrentNode()
; decoder-mode: arm
00574f48  10 40 2d e9                                      push {r4, lr}
00574f4c  0c 10 90 e5                                      ldr r1, [r0, #0xc]
00574f50  00 40 a0 e1                                      mov r4, r0
00574f54  00 00 91 e5                                      ldr r0, [r1]
00574f58  00 00 50 e3                                      cmp r0, #0
00574f5c  3c 00 50 13                                      cmpne r0, #0x3c
00574f60  01 20 a0 01                                      moveq r2, r1
00574f64  06 00 00 0a                                      beq #0x574f84
00574f68  01 20 a0 e1                                      mov r2, r1
00574f6c  04 20 82 e2                                      add r2, r2, #4
00574f70  0c 20 84 e5                                      str r2, [r4, #0xc]
00574f74  00 00 92 e5                                      ldr r0, [r2]
00574f78  00 00 50 e3                                      cmp r0, #0
00574f7c  3c 00 50 13                                      cmpne r0, #0x3c
00574f80  f9 ff ff 1a                                      bne #0x574f6c
00574f84  00 00 50 e3                                      cmp r0, #0
00574f88  15 00 00 0a                                      beq #0x574fe4
00574f8c  02 30 61 e0                                      rsb r3, r1, r2
00574f90  03 00 53 e3                                      cmp r3, #3
00574f94  13 00 00 ca                                      bgt #0x574fe8
00574f98  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00574f9c  04 10 83 e2                                      add r1, r3, #4
00574fa0  0c 10 84 e5                                      str r1, [r4, #0xc]
00574fa4  04 20 93 e5                                      ldr r2, [r3, #4]
00574fa8  2f 00 52 e3                                      cmp r2, #0x2f
00574fac  17 00 00 0a                                      beq #0x575010
00574fb0  3f 00 52 e3                                      cmp r2, #0x3f
00574fb4  19 00 00 0a                                      beq #0x575020
00574fb8  21 00 52 e3                                      cmp r2, #0x21
00574fbc  03 00 00 0a                                      beq #0x574fd0
00574fc0  04 00 a0 e1                                      mov r0, r4
00574fc4  75 fe ff eb                                      bl #0x5749a0
00574fc8  01 00 a0 e3                                      mov r0, #1
00574fcc  10 80 bd e8                                      pop {r4, pc}
00574fd0  04 00 a0 e1                                      mov r0, r4
00574fd4  73 ff ff eb                                      bl #0x574da8
00574fd8  00 00 50 e3                                      cmp r0, #0
00574fdc  1e 00 00 0a                                      beq #0x57505c
00574fe0  01 00 a0 e3                                      mov r0, #1
00574fe4  10 80 bd e8                                      pop {r4, pc}
00574fe8  04 00 a0 e1                                      mov r0, r4
00574fec  2e fe ff eb                                      bl #0x5748ac
00574ff0  00 00 50 e3                                      cmp r0, #0
00574ff4  f9 ff ff 1a                                      bne #0x574fe0
00574ff8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00574ffc  04 10 83 e2                                      add r1, r3, #4
00575000  0c 10 84 e5                                      str r1, [r4, #0xc]
00575004  04 20 93 e5                                      ldr r2, [r3, #4]
00575008  2f 00 52 e3                                      cmp r2, #0x2f
0057500c  e7 ff ff 1a                                      bne #0x574fb0
00575010  04 00 a0 e1                                      mov r0, r4
00575014  0e fa ff eb                                      bl #0x573854
00575018  01 00 a0 e3                                      mov r0, #1
0057501c  10 80 bd e8                                      pop {r4, pc}
00575020  06 20 a0 e3                                      mov r2, #6
00575024  18 20 84 e5                                      str r2, [r4, #0x18]
00575028  04 20 93 e5                                      ldr r2, [r3, #4]
0057502c  3e 00 52 e3                                      cmp r2, #0x3e
00575030  05 00 00 0a                                      beq #0x57504c
00575034  08 30 83 e2                                      add r3, r3, #8
00575038  0c 30 84 e5                                      str r3, [r4, #0xc]
0057503c  03 10 a0 e1                                      mov r1, r3
00575040  04 20 93 e4                                      ldr r2, [r3], #4
00575044  3e 00 52 e3                                      cmp r2, #0x3e
00575048  fa ff ff 1a                                      bne #0x575038
0057504c  04 10 81 e2                                      add r1, r1, #4
00575050  0c 10 84 e5                                      str r1, [r4, #0xc]
00575054  01 00 a0 e3                                      mov r0, #1
00575058  10 80 bd e8                                      pop {r4, pc}
0057505c  04 00 a0 e1                                      mov r0, r4
00575060  c9 f9 ff eb                                      bl #0x57378c
00575064  01 00 a0 e3                                      mov r0, #1
00575068  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0057506c, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE4readEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::read()
; decoder-mode: arm
0057506c  10 40 2d e9                                      push {r4, lr}
00575070  08 d0 4d e2                                      sub sp, sp, #8
00575074  00 30 90 e5                                      ldr r3, [r0]
00575078  00 40 a0 e1                                      mov r4, r0
0057507c  0f e0 a0 e1                                      mov lr, pc
00575080  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00575084  00 00 50 e3                                      cmp r0, #0
00575088  0d 00 00 0a                                      beq #0x5750c4
0057508c  c4 10 94 e5                                      ldr r1, [r4, #0xc4]
00575090  c8 20 94 e5                                      ldr r2, [r4, #0xc8]
00575094  02 30 a0 e3                                      mov r3, #2
00575098  18 30 84 e5                                      str r3, [r4, #0x18]
0057509c  02 00 51 e1                                      cmp r1, r2
005750a0  00 30 a0 e3                                      mov r3, #0
005750a4  b4 30 c4 e5                                      strb r3, [r4, #0xb4]
005750a8  02 00 00 0a                                      beq #0x5750b8
005750ac  c4 00 84 e2                                      add r0, r4, #0xc4
005750b0  04 30 8d e2                                      add r3, sp, #4
005750b4  d6 f8 ff eb                                      bl #0x573414
005750b8  01 00 a0 e3                                      mov r0, #1
005750bc  08 d0 8d e2                                      add sp, sp, #8
005750c0  10 80 bd e8                                      pop {r4, pc}
005750c4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005750c8  00 00 53 e3                                      cmp r3, #0
005750cc  08 00 00 0a                                      beq #0x5750f4
005750d0  10 10 94 e5                                      ldr r1, [r4, #0x10]
005750d4  14 20 94 e5                                      ldr r2, [r4, #0x14]
005750d8  03 10 61 e0                                      rsb r1, r1, r3
005750dc  01 20 42 e2                                      sub r2, r2, #1
005750e0  41 01 52 e1                                      cmp r2, r1, asr #2
005750e4  02 00 00 9a                                      bls #0x5750f4
005750e8  00 30 93 e5                                      ldr r3, [r3]
005750ec  00 00 53 e3                                      cmp r3, #0
005750f0  01 00 00 1a                                      bne #0x5750fc
005750f4  00 00 a0 e3                                      mov r0, #0
005750f8  ef ff ff ea                                      b #0x5750bc
005750fc  04 00 a0 e1                                      mov r0, r4
00575100  90 ff ff eb                                      bl #0x574f48
00575104  ec ff ff ea                                      b #0x5750bc

; FUNCTION 0x00575108, declared_size=352, range_size=352, mode=arm
; class-group: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>
; alias: _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE26createSpecialCharacterListEv
; demangled: glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::createSpecialCharacterList()
; decoder-mode: arm
00575108  70 40 2d e9                                      push {r4, r5, r6, lr}
0057510c  3c 41 9f e5                                      ldr r4, [pc, #0x13c]
00575110  3c 31 9f e5                                      ldr r3, [pc, #0x13c]
00575114  06 dd 4d e2                                      sub sp, sp, #0x180
00575118  49 6f 8d e2                                      add r6, sp, #0x124
0057511c  04 40 8f e0                                      add r4, pc, r4
00575120  03 10 94 e7                                      ldr r1, [r4, r3]
00575124  b8 50 80 e2                                      add r5, r0, #0xb8
00575128  5f 2f 8d e2                                      add r2, sp, #0x17c
0057512c  06 00 a0 e1                                      mov r0, r6
00575130  71 c3 f6 eb                                      bl #0x325efc
00575134  05 00 a0 e1                                      mov r0, r5
00575138  06 10 a0 e1                                      mov r1, r6
0057513c  01 70 ff eb                                      bl #0x551148
00575140  68 01 9d e5                                      ldr r0, [sp, #0x168]
00575144  06 00 50 e1                                      cmp r0, r6
00575148  02 00 00 0a                                      beq #0x575158
0057514c  00 00 50 e3                                      cmp r0, #0
00575150  00 00 00 0a                                      beq #0x575158
00575154  bd 6c f6 eb                                      bl #0x310450
00575158  f8 30 9f e5                                      ldr r3, [pc, #0xf8]
0057515c  dc 60 8d e2                                      add r6, sp, #0xdc
00575160  5e 2f 8d e2                                      add r2, sp, #0x178
00575164  03 10 94 e7                                      ldr r1, [r4, r3]
00575168  06 00 a0 e1                                      mov r0, r6
0057516c  62 c3 f6 eb                                      bl #0x325efc
00575170  05 00 a0 e1                                      mov r0, r5
00575174  06 10 a0 e1                                      mov r1, r6
00575178  f2 6f ff eb                                      bl #0x551148
0057517c  20 01 9d e5                                      ldr r0, [sp, #0x120]
00575180  06 00 50 e1                                      cmp r0, r6
00575184  02 00 00 0a                                      beq #0x575194
00575188  00 00 50 e3                                      cmp r0, #0
0057518c  00 00 00 0a                                      beq #0x575194
00575190  ae 6c f6 eb                                      bl #0x310450
00575194  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00575198  94 60 8d e2                                      add r6, sp, #0x94
0057519c  5d 2f 8d e2                                      add r2, sp, #0x174
005751a0  03 10 94 e7                                      ldr r1, [r4, r3]
005751a4  06 00 a0 e1                                      mov r0, r6
005751a8  53 c3 f6 eb                                      bl #0x325efc
005751ac  05 00 a0 e1                                      mov r0, r5
005751b0  06 10 a0 e1                                      mov r1, r6
005751b4  e3 6f ff eb                                      bl #0x551148
005751b8  d8 00 9d e5                                      ldr r0, [sp, #0xd8]
005751bc  06 00 50 e1                                      cmp r0, r6
005751c0  02 00 00 0a                                      beq #0x5751d0
005751c4  00 00 50 e3                                      cmp r0, #0
005751c8  00 00 00 0a                                      beq #0x5751d0
005751cc  9f 6c f6 eb                                      bl #0x310450
005751d0  88 30 9f e5                                      ldr r3, [pc, #0x88]
005751d4  4c 60 8d e2                                      add r6, sp, #0x4c
005751d8  17 2e 8d e2                                      add r2, sp, #0x170
005751dc  03 10 94 e7                                      ldr r1, [r4, r3]
005751e0  06 00 a0 e1                                      mov r0, r6
005751e4  44 c3 f6 eb                                      bl #0x325efc
005751e8  05 00 a0 e1                                      mov r0, r5
005751ec  06 10 a0 e1                                      mov r1, r6
005751f0  d4 6f ff eb                                      bl #0x551148
005751f4  90 00 9d e5                                      ldr r0, [sp, #0x90]
005751f8  06 00 50 e1                                      cmp r0, r6
005751fc  02 00 00 0a                                      beq #0x57520c
00575200  00 00 50 e3                                      cmp r0, #0
00575204  00 00 00 0a                                      beq #0x57520c
00575208  90 6c f6 eb                                      bl #0x310450
0057520c  50 30 9f e5                                      ldr r3, [pc, #0x50]
00575210  04 60 8d e2                                      add r6, sp, #4
00575214  5b 2f 8d e2                                      add r2, sp, #0x16c
00575218  03 10 94 e7                                      ldr r1, [r4, r3]
0057521c  06 00 a0 e1                                      mov r0, r6
00575220  35 c3 f6 eb                                      bl #0x325efc
00575224  05 00 a0 e1                                      mov r0, r5
00575228  06 10 a0 e1                                      mov r1, r6
0057522c  c5 6f ff eb                                      bl #0x551148
00575230  48 00 9d e5                                      ldr r0, [sp, #0x48]
00575234  06 00 50 e1                                      cmp r0, r6
00575238  02 00 00 0a                                      beq #0x575248
0057523c  00 00 50 e3                                      cmp r0, #0
00575240  00 00 00 0a                                      beq #0x575248
00575244  81 6c f6 eb                                      bl #0x310450
00575248  06 dd 8d e2                                      add sp, sp, #0x180
0057524c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00575250  74 f9 41 00 f8 20 00 00 98 37 00 00 54 3a 00 00  .byte 0x74, 0xf9, 0x41, 0x00, 0xf8, 0x20, 0x00, 0x00, 0x98, 0x37, 0x00, 0x00, 0x54, 0x3a, 0x00, 0x00
00575260  04 21 00 00 44 3d 00 00                          .byte 0x04, 0x21, 0x00, 0x00, 0x44, 0x3d, 0x00, 0x00
