; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x005763a4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriterC2EPNS0_10IWriteFileE
; demangled: glitch::io::CXMLWriter::CXMLWriter(glitch::io::IWriteFile*)
; decoder-mode: arm
005763a4  40 30 9f e5                                      ldr r3, [pc, #0x40]
005763a8  40 20 9f e5                                      ldr r2, [pc, #0x40]
005763ac  00 c0 a0 e3                                      mov ip, #0
005763b0  03 30 8f e0                                      add r3, pc, r3
005763b4  02 20 93 e7                                      ldr r2, [r3, r2]
005763b8  04 40 2d e5                                      str r4, [sp, #-4]!
005763bc  01 40 a0 e3                                      mov r4, #1
005763c0  08 20 82 e2                                      add r2, r2, #8
005763c4  00 00 51 e3                                      cmp r1, #0
005763c8  14 00 80 e8                                      stm r0, {r2, r4}
005763cc  10 c0 c0 e5                                      strb ip, [r0, #0x10]
005763d0  08 10 80 e5                                      str r1, [r0, #8]
005763d4  0c c0 80 e5                                      str ip, [r0, #0xc]
005763d8  04 30 91 15                                      ldrne r3, [r1, #4]
005763dc  04 30 83 10                                      addne r3, r3, r4
005763e0  04 30 81 15                                      strne r3, [r1, #4]
005763e4  10 00 bd e8                                      ldm sp!, {r4}
005763e8  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
005763ec  e0 e6 41 00 a0 4b 00 00                          .byte 0xe0, 0xe6, 0x41, 0x00, 0xa0, 0x4b, 0x00, 0x00

; FUNCTION 0x005763f4, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriterC1EPNS0_10IWriteFileE
; demangled: glitch::io::CXMLWriter::CXMLWriter(glitch::io::IWriteFile*)
; decoder-mode: arm
005763f4  40 30 9f e5                                      ldr r3, [pc, #0x40]
005763f8  40 20 9f e5                                      ldr r2, [pc, #0x40]
005763fc  00 c0 a0 e3                                      mov ip, #0
00576400  03 30 8f e0                                      add r3, pc, r3
00576404  02 20 93 e7                                      ldr r2, [r3, r2]
00576408  04 40 2d e5                                      str r4, [sp, #-4]!
0057640c  01 40 a0 e3                                      mov r4, #1
00576410  08 20 82 e2                                      add r2, r2, #8
00576414  00 00 51 e3                                      cmp r1, #0
00576418  14 00 80 e8                                      stm r0, {r2, r4}
0057641c  10 c0 c0 e5                                      strb ip, [r0, #0x10]
00576420  08 10 80 e5                                      str r1, [r0, #8]
00576424  0c c0 80 e5                                      str ip, [r0, #0xc]
00576428  04 30 91 15                                      ldrne r3, [r1, #4]
0057642c  04 30 83 10                                      addne r3, r3, r4
00576430  04 30 81 15                                      strne r3, [r1, #4]
00576434  10 00 bd e8                                      ldm sp!, {r4}
00576438  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
0057643c  90 e6 41 00 a0 4b 00 00                          .byte 0x90, 0xe6, 0x41, 0x00, 0xa0, 0x4b, 0x00, 0x00

; FUNCTION 0x00576444, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriterD2Ev
; demangled: glitch::io::CXMLWriter::~CXMLWriter()
; decoder-mode: arm
00576444  10 40 2d e9                                      push {r4, lr}
00576448  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0057644c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00576450  00 40 a0 e1                                      mov r4, r0
00576454  03 30 8f e0                                      add r3, pc, r3
00576458  08 00 90 e5                                      ldr r0, [r0, #8]
0057645c  02 20 93 e7                                      ldr r2, [r3, r2]
00576460  00 00 50 e3                                      cmp r0, #0
00576464  08 20 82 e2                                      add r2, r2, #8
00576468  00 20 84 e5                                      str r2, [r4]
0057646c  00 00 00 0a                                      beq #0x576474
00576470  43 9c f6 eb                                      bl #0x31d584
00576474  04 00 a0 e1                                      mov r0, r4
00576478  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057647c  3c e6 41 00 a0 4b 00 00                          .byte 0x3c, 0xe6, 0x41, 0x00, 0xa0, 0x4b, 0x00, 0x00

; FUNCTION 0x00576484, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriterD1Ev
; demangled: glitch::io::CXMLWriter::~CXMLWriter()
; decoder-mode: arm
00576484  10 40 2d e9                                      push {r4, lr}
00576488  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
0057648c  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
00576490  00 40 a0 e1                                      mov r4, r0
00576494  03 30 8f e0                                      add r3, pc, r3
00576498  08 00 90 e5                                      ldr r0, [r0, #8]
0057649c  02 20 93 e7                                      ldr r2, [r3, r2]
005764a0  00 00 50 e3                                      cmp r0, #0
005764a4  08 20 82 e2                                      add r2, r2, #8
005764a8  00 20 84 e5                                      str r2, [r4]
005764ac  00 00 00 0a                                      beq #0x5764b4
005764b0  33 9c f6 eb                                      bl #0x31d584
005764b4  04 00 a0 e1                                      mov r0, r4
005764b8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005764bc  fc e5 41 00 a0 4b 00 00                          .byte 0xfc, 0xe5, 0x41, 0x00, 0xa0, 0x4b, 0x00, 0x00

; FUNCTION 0x005764c4, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter12writeCommentEPKw
; demangled: glitch::io::CXMLWriter::writeComment(wchar_t const*)
; decoder-mode: arm
005764c4  70 40 2d e9                                      push {r4, r5, r6, lr}
005764c8  08 30 90 e5                                      ldr r3, [r0, #8]
005764cc  00 40 a0 e1                                      mov r4, r0
005764d0  01 50 a0 e1                                      mov r5, r1
005764d4  00 00 53 e3                                      cmp r3, #0
005764d8  00 00 51 13                                      cmpne r1, #0
005764dc  13 00 00 0a                                      beq #0x576530
005764e0  4c 10 9f e5                                      ldr r1, [pc, #0x4c]
005764e4  10 20 a0 e3                                      mov r2, #0x10
005764e8  03 00 a0 e1                                      mov r0, r3
005764ec  01 10 8f e0                                      add r1, pc, r1
005764f0  00 30 93 e5                                      ldr r3, [r3]
005764f4  0f e0 a0 e1                                      mov lr, pc
005764f8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005764fc  05 10 a0 e1                                      mov r1, r5
00576500  04 00 a0 e1                                      mov r0, r4
00576504  00 30 94 e5                                      ldr r3, [r4]
00576508  0f e0 a0 e1                                      mov lr, pc
0057650c  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00576510  08 30 94 e5                                      ldr r3, [r4, #8]
00576514  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00576518  0c 20 a0 e3                                      mov r2, #0xc
0057651c  03 00 a0 e1                                      mov r0, r3
00576520  01 10 8f e0                                      add r1, pc, r1
00576524  00 30 93 e5                                      ldr r3, [r3]
00576528  0f e0 a0 e1                                      mov lr, pc
0057652c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576530  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00576534  14 8b 36 00 f8 8a 36 00                          .byte 0x14, 0x8b, 0x36, 0x00, 0xf8, 0x8a, 0x36, 0x00

; FUNCTION 0x0057653c, declared_size=52, range_size=52, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter14writeLineBreakEv
; demangled: glitch::io::CXMLWriter::writeLineBreak()
; decoder-mode: arm
0057653c  10 40 2d e9                                      push {r4, lr}
00576540  08 30 90 e5                                      ldr r3, [r0, #8]
00576544  00 00 53 e3                                      cmp r3, #0
00576548  06 00 00 0a                                      beq #0x576568
0057654c  18 10 9f e5                                      ldr r1, [pc, #0x18]
00576550  03 00 a0 e1                                      mov r0, r3
00576554  04 20 a0 e3                                      mov r2, #4
00576558  00 30 93 e5                                      ldr r3, [r3]
0057655c  01 10 8f e0                                      add r1, pc, r1
00576560  0f e0 a0 e1                                      mov lr, pc
00576564  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576568  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057656c  cc 8a 36 00                                      .byte 0xcc, 0x8a, 0x36, 0x00

; FUNCTION 0x00576590, declared_size=260, range_size=260, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter15writeClosingTagEPKw
; demangled: glitch::io::CXMLWriter::writeClosingTag(wchar_t const*)
; decoder-mode: arm
00576590  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00576594  08 30 90 e5                                      ldr r3, [r0, #8]
00576598  00 40 a0 e1                                      mov r4, r0
0057659c  01 60 a0 e1                                      mov r6, r1
005765a0  00 00 53 e3                                      cmp r3, #0
005765a4  00 00 51 13                                      cmpne r1, #0
005765a8  35 00 00 0a                                      beq #0x576684
005765ac  0c 20 90 e5                                      ldr r2, [r0, #0xc]
005765b0  01 20 42 e2                                      sub r2, r2, #1
005765b4  00 00 52 e3                                      cmp r2, #0
005765b8  0c 20 80 e5                                      str r2, [r0, #0xc]
005765bc  11 00 00 da                                      ble #0x576608
005765c0  10 50 d0 e5                                      ldrb r5, [r0, #0x10]
005765c4  00 00 55 e3                                      cmp r5, #0
005765c8  0e 00 00 1a                                      bne #0x576608
005765cc  b4 70 9f e5                                      ldr r7, [pc, #0xb4]
005765d0  07 70 8f e0                                      add r7, pc, r7
005765d4  00 00 00 ea                                      b #0x5765dc
005765d8  08 30 94 e5                                      ldr r3, [r4, #8]
005765dc  03 00 a0 e1                                      mov r0, r3
005765e0  07 10 a0 e1                                      mov r1, r7
005765e4  00 30 93 e5                                      ldr r3, [r3]
005765e8  04 20 a0 e3                                      mov r2, #4
005765ec  0f e0 a0 e1                                      mov lr, pc
005765f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005765f4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005765f8  01 50 85 e2                                      add r5, r5, #1
005765fc  05 00 53 e1                                      cmp r3, r5
00576600  f4 ff ff ca                                      bgt #0x5765d8
00576604  08 30 94 e5                                      ldr r3, [r4, #8]
00576608  7c 10 9f e5                                      ldr r1, [pc, #0x7c]
0057660c  08 20 a0 e3                                      mov r2, #8
00576610  03 00 a0 e1                                      mov r0, r3
00576614  01 10 8f e0                                      add r1, pc, r1
00576618  00 30 93 e5                                      ldr r3, [r3]
0057661c  0f e0 a0 e1                                      mov lr, pc
00576620  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576624  08 50 94 e5                                      ldr r5, [r4, #8]
00576628  06 00 a0 e1                                      mov r0, r6
0057662c  00 30 95 e5                                      ldr r3, [r5]
00576630  0c 70 93 e5                                      ldr r7, [r3, #0xc]
00576634  93 61 f6 eb                                      bl #0x30ec88
00576638  06 10 a0 e1                                      mov r1, r6
0057663c  00 21 a0 e1                                      lsl r2, r0, #2
00576640  05 00 a0 e1                                      mov r0, r5
00576644  37 ff 2f e1                                      blx r7
00576648  08 30 94 e5                                      ldr r3, [r4, #8]
0057664c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00576650  04 20 a0 e3                                      mov r2, #4
00576654  03 00 a0 e1                                      mov r0, r3
00576658  01 10 8f e0                                      add r1, pc, r1
0057665c  00 30 93 e5                                      ldr r3, [r3]
00576660  0f e0 a0 e1                                      mov lr, pc
00576664  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576668  08 30 94 e5                                      ldr r3, [r4, #8]
0057666c  03 00 a0 e1                                      mov r0, r3
00576670  00 30 93 e5                                      ldr r3, [r3]
00576674  0f e0 a0 e1                                      mov lr, pc
00576678  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0057667c  00 30 a0 e3                                      mov r3, #0
00576680  10 30 c4 e5                                      strb r3, [r4, #0x10]
00576684  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00576688  60 8a 36 00 24 8a 36 00 c8 89 36 00              .byte 0x60, 0x8a, 0x36, 0x00, 0x24, 0x8a, 0x36, 0x00, 0xc8, 0x89, 0x36, 0x00

; FUNCTION 0x00576694, declared_size=196, range_size=196, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter14writeAttributeEPKwS3_
; demangled: glitch::io::CXMLWriter::writeAttribute(wchar_t const*, wchar_t const*)
; decoder-mode: arm
00576694  00 00 51 e3                                      cmp r1, #0
00576698  00 00 52 13                                      cmpne r2, #0
0057669c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005766a0  02 60 a0 e1                                      mov r6, r2
005766a4  01 50 a0 e1                                      mov r5, r1
005766a8  00 40 a0 e1                                      mov r4, r0
005766ac  25 00 00 0a                                      beq #0x576748
005766b0  08 30 90 e5                                      ldr r3, [r0, #8]
005766b4  90 10 9f e5                                      ldr r1, [pc, #0x90]
005766b8  04 20 a0 e3                                      mov r2, #4
005766bc  03 00 a0 e1                                      mov r0, r3
005766c0  01 10 8f e0                                      add r1, pc, r1
005766c4  00 30 93 e5                                      ldr r3, [r3]
005766c8  0f e0 a0 e1                                      mov lr, pc
005766cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005766d0  08 70 94 e5                                      ldr r7, [r4, #8]
005766d4  05 00 a0 e1                                      mov r0, r5
005766d8  00 30 97 e5                                      ldr r3, [r7]
005766dc  0c 80 93 e5                                      ldr r8, [r3, #0xc]
005766e0  68 61 f6 eb                                      bl #0x30ec88
005766e4  05 10 a0 e1                                      mov r1, r5
005766e8  00 21 a0 e1                                      lsl r2, r0, #2
005766ec  07 00 a0 e1                                      mov r0, r7
005766f0  38 ff 2f e1                                      blx r8
005766f4  08 30 94 e5                                      ldr r3, [r4, #8]
005766f8  50 10 9f e5                                      ldr r1, [pc, #0x50]
005766fc  08 20 a0 e3                                      mov r2, #8
00576700  03 00 a0 e1                                      mov r0, r3
00576704  01 10 8f e0                                      add r1, pc, r1
00576708  00 30 93 e5                                      ldr r3, [r3]
0057670c  0f e0 a0 e1                                      mov lr, pc
00576710  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576714  06 10 a0 e1                                      mov r1, r6
00576718  04 00 a0 e1                                      mov r0, r4
0057671c  00 30 94 e5                                      ldr r3, [r4]
00576720  0f e0 a0 e1                                      mov lr, pc
00576724  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00576728  08 30 94 e5                                      ldr r3, [r4, #8]
0057672c  20 10 9f e5                                      ldr r1, [pc, #0x20]
00576730  04 20 a0 e3                                      mov r2, #4
00576734  03 00 a0 e1                                      mov r0, r3
00576738  01 10 8f e0                                      add r1, pc, r1
0057673c  00 30 93 e5                                      ldr r3, [r3]
00576740  0f e0 a0 e1                                      mov lr, pc
00576744  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576748  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0057674c  a8 7d 36 00 44 89 36 00 20 89 36 00              .byte 0xa8, 0x7d, 0x36, 0x00, 0x44, 0x89, 0x36, 0x00, 0x20, 0x89, 0x36, 0x00

; FUNCTION 0x00576758, declared_size=560, range_size=560, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter12writeElementEPKwbRSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEESF_
; demangled: glitch::io::CXMLWriter::writeElement(wchar_t const*, bool, std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >&, std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00576758  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0057675c  08 c0 90 e5                                      ldr ip, [r0, #8]
00576760  00 40 a0 e1                                      mov r4, r0
00576764  01 90 a0 e1                                      mov sb, r1
00576768  00 00 5c e3                                      cmp ip, #0
0057676c  00 00 51 13                                      cmpne r1, #0
00576770  02 50 a0 e1                                      mov r5, r2
00576774  00 60 a0 13                                      movne r6, #0
00576778  01 60 a0 03                                      moveq r6, #1
0057677c  03 80 a0 e1                                      mov r8, r3
00576780  20 70 9d e5                                      ldr r7, [sp, #0x20]
00576784  3a 00 00 0a                                      beq #0x576874
00576788  0c 30 90 e5                                      ldr r3, [r0, #0xc]
0057678c  00 00 53 e3                                      cmp r3, #0
00576790  0e 00 00 da                                      ble #0x5767d0
00576794  dc a1 9f e5                                      ldr sl, [pc, #0x1dc]
00576798  0a a0 8f e0                                      add sl, pc, sl
0057679c  00 00 00 ea                                      b #0x5767a4
005767a0  08 c0 94 e5                                      ldr ip, [r4, #8]
005767a4  00 30 9c e5                                      ldr r3, [ip]
005767a8  0c 00 a0 e1                                      mov r0, ip
005767ac  0a 10 a0 e1                                      mov r1, sl
005767b0  04 20 a0 e3                                      mov r2, #4
005767b4  0f e0 a0 e1                                      mov lr, pc
005767b8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005767bc  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005767c0  01 60 86 e2                                      add r6, r6, #1
005767c4  06 00 53 e1                                      cmp r3, r6
005767c8  f4 ff ff ca                                      bgt #0x5767a0
005767cc  08 c0 94 e5                                      ldr ip, [r4, #8]
005767d0  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
005767d4  00 30 9c e5                                      ldr r3, [ip]
005767d8  0c 00 a0 e1                                      mov r0, ip
005767dc  04 20 a0 e3                                      mov r2, #4
005767e0  01 10 8f e0                                      add r1, pc, r1
005767e4  0f e0 a0 e1                                      mov lr, pc
005767e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005767ec  08 a0 94 e5                                      ldr sl, [r4, #8]
005767f0  09 00 a0 e1                                      mov r0, sb
005767f4  00 30 9a e5                                      ldr r3, [sl]
005767f8  0c 60 93 e5                                      ldr r6, [r3, #0xc]
005767fc  21 61 f6 eb                                      bl #0x30ec88
00576800  09 10 a0 e1                                      mov r1, sb
00576804  00 21 a0 e1                                      lsl r2, r0, #2
00576808  0a 00 a0 e1                                      mov r0, sl
0057680c  36 ff 2f e1                                      blx r6
00576810  09 00 98 e8                                      ldm r8, {r0, r3}
00576814  03 30 60 e0                                      rsb r3, r0, r3
00576818  c3 31 a0 e1                                      asr r3, r3, #3
0057681c  83 21 a0 e1                                      lsl r2, r3, #3
00576820  02 20 63 e0                                      rsb r2, r3, r2
00576824  02 23 82 e0                                      add r2, r2, r2, lsl #6
00576828  82 21 83 e0                                      add r2, r3, r2, lsl #3
0057682c  82 17 a0 e1                                      lsl r1, r2, #0xf
00576830  01 20 62 e0                                      rsb r2, r2, r1
00576834  82 31 83 e0                                      add r3, r3, r2, lsl #3
00576838  00 00 53 e3                                      cmp r3, #0
0057683c  0d 00 00 1a                                      bne #0x576878
00576840  00 00 55 e3                                      cmp r5, #0
00576844  3d 00 00 0a                                      beq #0x576940
00576848  08 30 94 e5                                      ldr r3, [r4, #8]
0057684c  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00576850  0c 20 a0 e3                                      mov r2, #0xc
00576854  03 00 a0 e1                                      mov r0, r3
00576858  01 10 8f e0                                      add r1, pc, r1
0057685c  00 30 93 e5                                      ldr r3, [r3]
00576860  0f e0 a0 e1                                      mov lr, pc
00576864  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576868  00 30 a0 e3                                      mov r3, #0
0057686c  10 30 c4 e5                                      strb r3, [r4, #0x10]
00576870  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00576874  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00576878  00 30 97 e5                                      ldr r3, [r7]
0057687c  04 20 97 e5                                      ldr r2, [r7, #4]
00576880  02 20 63 e0                                      rsb r2, r3, r2
00576884  c2 21 a0 e1                                      asr r2, r2, #3
00576888  82 11 a0 e1                                      lsl r1, r2, #3
0057688c  01 10 62 e0                                      rsb r1, r2, r1
00576890  01 13 81 e0                                      add r1, r1, r1, lsl #6
00576894  81 11 82 e0                                      add r1, r2, r1, lsl #3
00576898  81 c7 a0 e1                                      lsl ip, r1, #0xf
0057689c  0c 10 61 e0                                      rsb r1, r1, ip
005768a0  81 21 82 e0                                      add r2, r2, r1, lsl #3
005768a4  00 00 52 e3                                      cmp r2, #0
005768a8  00 a0 a0 13                                      movne sl, #0
005768ac  0a 60 a0 11                                      movne r6, sl
005768b0  e2 ff ff 0a                                      beq #0x576840
005768b4  0a 30 83 e0                                      add r3, r3, sl
005768b8  0a 00 80 e0                                      add r0, r0, sl
005768bc  44 10 90 e5                                      ldr r1, [r0, #0x44]
005768c0  44 20 93 e5                                      ldr r2, [r3, #0x44]
005768c4  04 00 a0 e1                                      mov r0, r4
005768c8  71 ff ff eb                                      bl #0x576694
005768cc  09 00 98 e8                                      ldm r8, {r0, r3}
005768d0  01 60 86 e2                                      add r6, r6, #1
005768d4  48 a0 8a e2                                      add sl, sl, #0x48
005768d8  03 30 60 e0                                      rsb r3, r0, r3
005768dc  c3 31 a0 e1                                      asr r3, r3, #3
005768e0  83 21 a0 e1                                      lsl r2, r3, #3
005768e4  02 20 63 e0                                      rsb r2, r3, r2
005768e8  02 23 82 e0                                      add r2, r2, r2, lsl #6
005768ec  82 21 83 e0                                      add r2, r3, r2, lsl #3
005768f0  82 17 a0 e1                                      lsl r1, r2, #0xf
005768f4  01 20 62 e0                                      rsb r2, r2, r1
005768f8  82 31 83 e0                                      add r3, r3, r2, lsl #3
005768fc  03 00 56 e1                                      cmp r6, r3
00576900  ce ff ff 2a                                      bhs #0x576840
00576904  00 30 97 e5                                      ldr r3, [r7]
00576908  04 20 97 e5                                      ldr r2, [r7, #4]
0057690c  02 20 63 e0                                      rsb r2, r3, r2
00576910  c2 21 a0 e1                                      asr r2, r2, #3
00576914  82 11 a0 e1                                      lsl r1, r2, #3
00576918  01 10 62 e0                                      rsb r1, r2, r1
0057691c  01 13 81 e0                                      add r1, r1, r1, lsl #6
00576920  81 11 82 e0                                      add r1, r2, r1, lsl #3
00576924  81 c7 a0 e1                                      lsl ip, r1, #0xf
00576928  0c 10 61 e0                                      rsb r1, r1, ip
0057692c  81 21 82 e0                                      add r2, r2, r1, lsl #3
00576930  02 00 56 e1                                      cmp r6, r2
00576934  de ff ff 3a                                      blo #0x5768b4
00576938  00 00 55 e3                                      cmp r5, #0
0057693c  c1 ff ff 1a                                      bne #0x576848
00576940  08 30 94 e5                                      ldr r3, [r4, #8]
00576944  38 10 9f e5                                      ldr r1, [pc, #0x38]
00576948  04 20 a0 e3                                      mov r2, #4
0057694c  03 00 a0 e1                                      mov r0, r3
00576950  01 10 8f e0                                      add r1, pc, r1
00576954  00 30 93 e5                                      ldr r3, [r3]
00576958  0f e0 a0 e1                                      mov lr, pc
0057695c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576960  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00576964  01 30 83 e2                                      add r3, r3, #1
00576968  0c 30 84 e5                                      str r3, [r4, #0xc]
0057696c  00 30 a0 e3                                      mov r3, #0
00576970  10 30 c4 e5                                      strb r3, [r4, #0x10]
00576974  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00576978  98 88 36 00 80 88 36 00 10 88 36 00 d0 86 36 00  .byte 0x98, 0x88, 0x36, 0x00, 0x80, 0x88, 0x36, 0x00, 0x10, 0x88, 0x36, 0x00, 0xd0, 0x86, 0x36, 0x00

; FUNCTION 0x00576988, declared_size=376, range_size=376, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter12writeElementEPKwbS3_S3_S3_S3_S3_S3_S3_S3_S3_S3_
; demangled: glitch::io::CXMLWriter::writeElement(wchar_t const*, bool, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*, wchar_t const*)
; decoder-mode: arm
00576988  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0057698c  08 c0 90 e5                                      ldr ip, [r0, #8]
00576990  00 40 a0 e1                                      mov r4, r0
00576994  01 50 a0 e1                                      mov r5, r1
00576998  00 00 5c e3                                      cmp ip, #0
0057699c  00 00 51 13                                      cmpne r1, #0
005769a0  02 a0 a0 e1                                      mov sl, r2
005769a4  00 60 a0 13                                      movne r6, #0
005769a8  01 60 a0 03                                      moveq r6, #1
005769ac  03 80 a0 e1                                      mov r8, r3
005769b0  44 00 00 0a                                      beq #0x576ac8
005769b4  0c 30 90 e5                                      ldr r3, [r0, #0xc]
005769b8  00 00 53 e3                                      cmp r3, #0
005769bc  0e 00 00 da                                      ble #0x5769fc
005769c0  28 71 9f e5                                      ldr r7, [pc, #0x128]
005769c4  07 70 8f e0                                      add r7, pc, r7
005769c8  00 00 00 ea                                      b #0x5769d0
005769cc  08 c0 94 e5                                      ldr ip, [r4, #8]
005769d0  00 30 9c e5                                      ldr r3, [ip]
005769d4  0c 00 a0 e1                                      mov r0, ip
005769d8  07 10 a0 e1                                      mov r1, r7
005769dc  04 20 a0 e3                                      mov r2, #4
005769e0  0f e0 a0 e1                                      mov lr, pc
005769e4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
005769e8  0c 30 94 e5                                      ldr r3, [r4, #0xc]
005769ec  01 60 86 e2                                      add r6, r6, #1
005769f0  06 00 53 e1                                      cmp r3, r6
005769f4  f4 ff ff ca                                      bgt #0x5769cc
005769f8  08 c0 94 e5                                      ldr ip, [r4, #8]
005769fc  f0 10 9f e5                                      ldr r1, [pc, #0xf0]
00576a00  00 30 9c e5                                      ldr r3, [ip]
00576a04  0c 00 a0 e1                                      mov r0, ip
00576a08  04 20 a0 e3                                      mov r2, #4
00576a0c  01 10 8f e0                                      add r1, pc, r1
00576a10  0f e0 a0 e1                                      mov lr, pc
00576a14  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576a18  08 70 94 e5                                      ldr r7, [r4, #8]
00576a1c  05 00 a0 e1                                      mov r0, r5
00576a20  00 30 97 e5                                      ldr r3, [r7]
00576a24  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00576a28  96 60 f6 eb                                      bl #0x30ec88
00576a2c  05 10 a0 e1                                      mov r1, r5
00576a30  00 21 a0 e1                                      lsl r2, r0, #2
00576a34  07 00 a0 e1                                      mov r0, r7
00576a38  36 ff 2f e1                                      blx r6
00576a3c  04 00 a0 e1                                      mov r0, r4
00576a40  08 10 a0 e1                                      mov r1, r8
00576a44  20 20 9d e5                                      ldr r2, [sp, #0x20]
00576a48  11 ff ff eb                                      bl #0x576694
00576a4c  04 00 a0 e1                                      mov r0, r4
00576a50  24 10 9d e5                                      ldr r1, [sp, #0x24]
00576a54  28 20 9d e5                                      ldr r2, [sp, #0x28]
00576a58  0d ff ff eb                                      bl #0x576694
00576a5c  04 00 a0 e1                                      mov r0, r4
00576a60  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00576a64  30 20 9d e5                                      ldr r2, [sp, #0x30]
00576a68  09 ff ff eb                                      bl #0x576694
00576a6c  04 00 a0 e1                                      mov r0, r4
00576a70  34 10 9d e5                                      ldr r1, [sp, #0x34]
00576a74  38 20 9d e5                                      ldr r2, [sp, #0x38]
00576a78  05 ff ff eb                                      bl #0x576694
00576a7c  04 00 a0 e1                                      mov r0, r4
00576a80  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
00576a84  40 20 9d e5                                      ldr r2, [sp, #0x40]
00576a88  01 ff ff eb                                      bl #0x576694
00576a8c  00 00 5a e3                                      cmp sl, #0
00576a90  0d 00 00 1a                                      bne #0x576acc
00576a94  08 30 94 e5                                      ldr r3, [r4, #8]
00576a98  58 10 9f e5                                      ldr r1, [pc, #0x58]
00576a9c  04 20 a0 e3                                      mov r2, #4
00576aa0  03 00 a0 e1                                      mov r0, r3
00576aa4  01 10 8f e0                                      add r1, pc, r1
00576aa8  00 30 93 e5                                      ldr r3, [r3]
00576aac  0f e0 a0 e1                                      mov lr, pc
00576ab0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576ab4  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00576ab8  01 30 83 e2                                      add r3, r3, #1
00576abc  0c 30 84 e5                                      str r3, [r4, #0xc]
00576ac0  00 30 a0 e3                                      mov r3, #0
00576ac4  10 30 c4 e5                                      strb r3, [r4, #0x10]
00576ac8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00576acc  08 30 94 e5                                      ldr r3, [r4, #8]
00576ad0  24 10 9f e5                                      ldr r1, [pc, #0x24]
00576ad4  0c 20 a0 e3                                      mov r2, #0xc
00576ad8  03 00 a0 e1                                      mov r0, r3
00576adc  01 10 8f e0                                      add r1, pc, r1
00576ae0  00 30 93 e5                                      ldr r3, [r3]
00576ae4  0f e0 a0 e1                                      mov lr, pc
00576ae8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576aec  f3 ff ff ea                                      b #0x576ac0
; mapping-symbol data/literal pool
00576af0  6c 86 36 00 54 86 36 00 7c 85 36 00 8c 85 36 00  .byte 0x6c, 0x86, 0x36, 0x00, 0x54, 0x86, 0x36, 0x00, 0x7c, 0x85, 0x36, 0x00, 0x8c, 0x85, 0x36, 0x00

; FUNCTION 0x00576b00, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter14writeXMLHeaderEv
; demangled: glitch::io::CXMLWriter::writeXMLHeader()
; decoder-mode: arm
00576b00  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00576b04  08 30 90 e5                                      ldr r3, [r0, #8]
00576b08  0c d0 4d e2                                      sub sp, sp, #0xc
00576b0c  00 40 a0 e1                                      mov r4, r0
00576b10  00 00 53 e3                                      cmp r3, #0
00576b14  18 00 00 0a                                      beq #0x576b7c
00576b18  08 10 8d e2                                      add r1, sp, #8
00576b1c  ff 2e 0f e3                                      movw r2, #0xfeff
00576b20  04 20 21 e5                                      str r2, [r1, #-4]!
00576b24  03 00 a0 e1                                      mov r0, r3
00576b28  04 20 a0 e3                                      mov r2, #4
00576b2c  00 30 93 e5                                      ldr r3, [r3]
00576b30  0f e0 a0 e1                                      mov lr, pc
00576b34  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576b38  08 50 94 e5                                      ldr r5, [r4, #8]
00576b3c  40 70 9f e5                                      ldr r7, [pc, #0x40]
00576b40  00 30 95 e5                                      ldr r3, [r5]
00576b44  07 70 8f e0                                      add r7, pc, r7
00576b48  07 00 a0 e1                                      mov r0, r7
00576b4c  0c 60 93 e5                                      ldr r6, [r3, #0xc]
00576b50  4c 60 f6 eb                                      bl #0x30ec88
00576b54  07 10 a0 e1                                      mov r1, r7
00576b58  00 21 a0 e1                                      lsl r2, r0, #2
00576b5c  05 00 a0 e1                                      mov r0, r5
00576b60  36 ff 2f e1                                      blx r6
00576b64  00 30 94 e5                                      ldr r3, [r4]
00576b68  04 00 a0 e1                                      mov r0, r4
00576b6c  0f e0 a0 e1                                      mov lr, pc
00576b70  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00576b74  00 30 a0 e3                                      mov r3, #0
00576b78  10 30 c4 e5                                      strb r3, [r4, #0x10]
00576b7c  0c d0 8d e2                                      add sp, sp, #0xc
00576b80  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
; mapping-symbol data/literal pool
00576b84  34 85 36 00                                      .byte 0x34, 0x85, 0x36, 0x00

; FUNCTION 0x00576b88, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriterD0Ev
; demangled: glitch::io::CXMLWriter::~CXMLWriter()
; decoder-mode: arm
00576b88  10 40 2d e9                                      push {r4, lr}
00576b8c  00 40 a0 e1                                      mov r4, r0
00576b90  3b fe ff eb                                      bl #0x576484
00576b94  04 00 a0 e1                                      mov r0, r4
00576b98  c4 5d f6 eb                                      bl #0x30e2b0
00576b9c  04 00 a0 e1                                      mov r0, r4
00576ba0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00576bb8, declared_size=312, range_size=312, mode=arm
; class-group: glitch::io::CXMLWriter
; alias: _ZN6glitch2io10CXMLWriter9writeTextEPKw
; demangled: glitch::io::CXMLWriter::writeText(wchar_t const*)
; decoder-mode: arm
00576bb8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00576bbc  08 30 90 e5                                      ldr r3, [r0, #8]
00576bc0  50 d0 4d e2                                      sub sp, sp, #0x50
00576bc4  00 80 a0 e1                                      mov r8, r0
00576bc8  00 00 53 e3                                      cmp r3, #0
00576bcc  00 00 51 13                                      cmpne r1, #0
00576bd0  00 20 a0 13                                      movne r2, #0
00576bd4  01 20 a0 03                                      moveq r2, #1
00576bd8  37 00 00 0a                                      beq #0x576cbc
00576bdc  00 20 8d e5                                      str r2, [sp]
00576be0  40 d0 8d e5                                      str sp, [sp, #0x40]
00576be4  44 d0 8d e5                                      str sp, [sp, #0x44]
00576be8  00 00 91 e5                                      ldr r0, [r1]
00576bec  0d 70 a0 e1                                      mov r7, sp
00576bf0  00 00 50 e3                                      cmp r0, #0
00576bf4  1f 00 00 0a                                      beq #0x576c78
00576bf8  e8 40 9f e5                                      ldr r4, [pc, #0xe8]
00576bfc  e8 a0 9f e5                                      ldr sl, [pc, #0xe8]
00576c00  01 50 a0 e1                                      mov r5, r1
00576c04  04 40 8f e0                                      add r4, pc, r4
00576c08  0a a0 8f e0                                      add sl, pc, sl
00576c0c  48 60 8d e2                                      add r6, sp, #0x48
00576c10  26 00 50 e3                                      cmp r0, #0x26
00576c14  00 10 a0 03                                      moveq r1, #0
00576c18  29 00 00 0a                                      beq #0x576cc4
00576c1c  00 30 a0 e3                                      mov r3, #0
00576c20  01 00 00 ea                                      b #0x576c2c
00576c24  02 00 50 e1                                      cmp r0, r2
00576c28  25 00 00 0a                                      beq #0x576cc4
00576c2c  01 30 83 e2                                      add r3, r3, #1
00576c30  83 21 94 e7                                      ldr r2, [r4, r3, lsl #3]
00576c34  83 11 a0 e1                                      lsl r1, r3, #3
00576c38  00 00 52 e3                                      cmp r2, #0
00576c3c  f8 ff ff 1a                                      bne #0x576c24
00576c40  48 20 8d e5                                      str r2, [sp, #0x48]
00576c44  4c 20 8d e5                                      str r2, [sp, #0x4c]
00576c48  00 30 95 e5                                      ldr r3, [r5]
00576c4c  06 00 a0 e1                                      mov r0, r6
00576c50  48 30 8d e5                                      str r3, [sp, #0x48]
00576c54  0b 60 f6 eb                                      bl #0x30ec88
00576c58  06 10 a0 e1                                      mov r1, r6
00576c5c  00 21 86 e0                                      add r2, r6, r0, lsl #2
00576c60  0d 00 a0 e1                                      mov r0, sp
00576c64  f7 a7 f6 eb                                      bl #0x320c48
00576c68  04 00 b5 e5                                      ldr r0, [r5, #4]!
00576c6c  00 00 50 e3                                      cmp r0, #0
00576c70  e6 ff ff 1a                                      bne #0x576c10
00576c74  08 30 98 e5                                      ldr r3, [r8, #8]
00576c78  44 20 9d e5                                      ldr r2, [sp, #0x44]
00576c7c  40 c0 9d e5                                      ldr ip, [sp, #0x40]
00576c80  03 00 a0 e1                                      mov r0, r3
00576c84  02 10 a0 e1                                      mov r1, r2
00576c88  0c 20 62 e0                                      rsb r2, r2, ip
00576c8c  00 30 93 e5                                      ldr r3, [r3]
00576c90  03 20 c2 e3                                      bic r2, r2, #3
00576c94  0f e0 a0 e1                                      mov lr, pc
00576c98  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576c9c  44 00 9d e5                                      ldr r0, [sp, #0x44]
00576ca0  01 30 a0 e3                                      mov r3, #1
00576ca4  10 30 c8 e5                                      strb r3, [r8, #0x10]
00576ca8  07 00 50 e1                                      cmp r0, r7
00576cac  02 00 00 0a                                      beq #0x576cbc
00576cb0  00 00 50 e3                                      cmp r0, #0
00576cb4  00 00 00 0a                                      beq #0x576cbc
00576cb8  e4 65 f6 eb                                      bl #0x310450
00576cbc  50 d0 8d e2                                      add sp, sp, #0x50
00576cc0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00576cc4  01 10 8a e0                                      add r1, sl, r1
00576cc8  04 90 91 e5                                      ldr sb, [r1, #4]
00576ccc  09 00 a0 e1                                      mov r0, sb
00576cd0  ec 5f f6 eb                                      bl #0x30ec88
00576cd4  09 10 a0 e1                                      mov r1, sb
00576cd8  00 21 89 e0                                      add r2, sb, r0, lsl #2
00576cdc  0d 00 a0 e1                                      mov r0, sp
00576ce0  d8 a7 f6 eb                                      bl #0x320c48
00576ce4  df ff ff ea                                      b #0x576c68
; mapping-symbol data/literal pool
00576ce8  74 07 3e 00 70 07 3e 00                          .byte 0x74, 0x07, 0x3e, 0x00, 0x70, 0x07, 0x3e, 0x00
