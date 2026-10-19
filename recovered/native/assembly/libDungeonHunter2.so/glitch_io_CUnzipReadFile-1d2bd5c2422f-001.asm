; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00576db8, declared_size=8, range_size=8, mode=arm
; class-group: glitch::io::CUnzipReadFile
; alias: _ZNK6glitch2io14CUnzipReadFile11getFileNameEv
; demangled: glitch::io::CUnzipReadFile::getFileName() const
; decoder-mode: arm
00576db8  44 00 90 e5                                      ldr r0, [r0, #0x44]
00576dbc  1e ff 2f e1                                      bx lr

; FUNCTION 0x00577374, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CUnzipReadFile
; alias: _ZN6glitch2io14CUnzipReadFileD1Ev
; demangled: glitch::io::CUnzipReadFile::~CUnzipReadFile()
; decoder-mode: arm
00577374  44 30 9f e5                                      ldr r3, [pc, #0x44]
00577378  44 20 9f e5                                      ldr r2, [pc, #0x44]
0057737c  10 40 2d e9                                      push {r4, lr}
00577380  03 30 8f e0                                      add r3, pc, r3
00577384  02 20 93 e7                                      ldr r2, [r3, r2]
00577388  00 10 a0 e1                                      mov r1, r0
0057738c  00 40 a0 e1                                      mov r4, r0
00577390  08 20 82 e2                                      add r2, r2, #8
00577394  30 20 81 e4                                      str r2, [r1], #0x30
00577398  14 00 91 e5                                      ldr r0, [r1, #0x14]
0057739c  01 00 50 e1                                      cmp r0, r1
005773a0  02 00 00 0a                                      beq #0x5773b0
005773a4  00 00 50 e3                                      cmp r0, #0
005773a8  00 00 00 0a                                      beq #0x5773b0
005773ac  27 64 f6 eb                                      bl #0x310450
005773b0  04 00 a0 e1                                      mov r0, r4
005773b4  c7 e4 ff eb                                      bl #0x5706d8
005773b8  04 00 a0 e1                                      mov r0, r4
005773bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005773c0  10 d7 41 00 94 3d 00 00                          .byte 0x10, 0xd7, 0x41, 0x00, 0x94, 0x3d, 0x00, 0x00

; FUNCTION 0x005773c8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CUnzipReadFile
; alias: _ZN6glitch2io14CUnzipReadFileD0Ev
; demangled: glitch::io::CUnzipReadFile::~CUnzipReadFile()
; decoder-mode: arm
005773c8  10 40 2d e9                                      push {r4, lr}
005773cc  00 40 a0 e1                                      mov r4, r0
005773d0  e7 ff ff eb                                      bl #0x577374
005773d4  04 00 a0 e1                                      mov r0, r4
005773d8  b4 5b f6 eb                                      bl #0x30e2b0
005773dc  04 00 a0 e1                                      mov r0, r4
005773e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005779cc, declared_size=124, range_size=124, mode=arm
; class-group: glitch::io::CUnzipReadFile
; alias: _ZN6glitch2io14CUnzipReadFileC1ERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPKc
; demangled: glitch::io::CUnzipReadFile::CUnzipReadFile(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, char const*)
; decoder-mode: arm
005779cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005779d0  02 60 a0 e1                                      mov r6, r2
005779d4  14 10 91 e5                                      ldr r1, [r1, #0x14]
005779d8  00 20 a0 e3                                      mov r2, #0
005779dc  5c 50 9f e5                                      ldr r5, [pc, #0x5c]
005779e0  00 40 a0 e1                                      mov r4, r0
005779e4  a2 e3 ff eb                                      bl #0x570874
005779e8  54 30 9f e5                                      ldr r3, [pc, #0x54]
005779ec  05 50 8f e0                                      add r5, pc, r5
005779f0  04 70 a0 e1                                      mov r7, r4
005779f4  03 30 95 e7                                      ldr r3, [r5, r3]
005779f8  10 10 a0 e3                                      mov r1, #0x10
005779fc  08 30 83 e2                                      add r3, r3, #8
00577a00  30 30 87 e4                                      str r3, [r7], #0x30
00577a04  07 00 a0 e1                                      mov r0, r7
00577a08  40 70 84 e5                                      str r7, [r4, #0x40]
00577a0c  44 70 84 e5                                      str r7, [r4, #0x44]
00577a10  e4 a3 f6 eb                                      bl #0x3209a8
00577a14  40 30 94 e5                                      ldr r3, [r4, #0x40]
00577a18  00 20 a0 e3                                      mov r2, #0
00577a1c  06 00 a0 e1                                      mov r0, r6
00577a20  00 20 c3 e5                                      strb r2, [r3]
00577a24  0a 59 f6 eb                                      bl #0x30de54
00577a28  06 10 a0 e1                                      mov r1, r6
00577a2c  00 20 86 e0                                      add r2, r6, r0
00577a30  07 00 a0 e1                                      mov r0, r7
00577a34  53 a4 f6 eb                                      bl #0x320b88
00577a38  04 00 a0 e1                                      mov r0, r4
00577a3c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00577a40  a4 d0 41 00 94 3d 00 00                          .byte 0xa4, 0xd0, 0x41, 0x00, 0x94, 0x3d, 0x00, 0x00
