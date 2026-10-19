; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00576cf0, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader12getFileCountEv
; demangled: glitch::io::CZipReader::getFileCount()
; decoder-mode: arm
00576cf0  18 20 90 e5                                      ldr r2, [r0, #0x18]
00576cf4  14 30 90 e5                                      ldr r3, [r0, #0x14]
00576cf8  02 30 63 e0                                      rsb r3, r3, r2
00576cfc  43 31 a0 e1                                      asr r3, r3, #2
00576d00  83 21 83 e0                                      add r2, r3, r3, lsl #3
00576d04  82 30 83 e0                                      add r3, r3, r2, lsl #1
00576d08  83 24 a0 e1                                      lsl r2, r3, #9
00576d0c  02 30 63 e0                                      rsb r3, r3, r2
00576d10  03 39 83 e0                                      add r3, r3, r3, lsl #18
00576d14  00 00 63 e2                                      rsb r0, r3, #0
00576d18  1e ff 2f e1                                      bx lr

; FUNCTION 0x00576d1c, declared_size=16, range_size=16, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZNK6glitch2io10CZipReader11getFileInfoEi
; demangled: glitch::io::CZipReader::getFileInfo(int) const
; decoder-mode: arm
00576d1c  14 30 90 e5                                      ldr r3, [r0, #0x14]
00576d20  6c 00 a0 e3                                      mov r0, #0x6c
00576d24  90 31 20 e0                                      mla r0, r0, r1, r3
00576d28  1e ff 2f e1                                      bx lr

; FUNCTION 0x00576d2c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader7isValidEPNS0_9IReadFileE
; demangled: glitch::io::CZipReader::isValid(glitch::io::IReadFile*)
; decoder-mode: arm
00576d2c  30 40 2d e9                                      push {r4, r5, lr}
00576d30  7c 20 9f e5                                      ldr r2, [pc, #0x7c]
00576d34  0c d0 4d e2                                      sub sp, sp, #0xc
00576d38  00 30 90 e5                                      ldr r3, [r0]
00576d3c  02 20 9f e7                                      ldr r2, [pc, r2]
00576d40  04 20 8d e5                                      str r2, [sp, #4]
00576d44  00 40 a0 e1                                      mov r4, r0
00576d48  0f e0 a0 e1                                      mov lr, pc
00576d4c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00576d50  00 10 a0 e3                                      mov r1, #0
00576d54  00 50 a0 e1                                      mov r5, r0
00576d58  01 20 a0 e1                                      mov r2, r1
00576d5c  00 30 94 e5                                      ldr r3, [r4]
00576d60  04 00 a0 e1                                      mov r0, r4
00576d64  0f e0 a0 e1                                      mov lr, pc
00576d68  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00576d6c  0d 10 a0 e1                                      mov r1, sp
00576d70  00 30 94 e5                                      ldr r3, [r4]
00576d74  04 20 a0 e3                                      mov r2, #4
00576d78  04 00 a0 e1                                      mov r0, r4
00576d7c  0f e0 a0 e1                                      mov lr, pc
00576d80  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00576d84  00 30 94 e5                                      ldr r3, [r4]
00576d88  04 00 a0 e1                                      mov r0, r4
00576d8c  05 10 a0 e1                                      mov r1, r5
00576d90  00 20 a0 e3                                      mov r2, #0
00576d94  0f e0 a0 e1                                      mov lr, pc
00576d98  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00576d9c  09 00 9d e8                                      ldm sp, {r0, r3}
00576da0  03 00 50 e1                                      cmp r0, r3
00576da4  00 00 a0 13                                      movne r0, #0
00576da8  01 00 a0 03                                      moveq r0, #1
00576dac  0c d0 8d e2                                      add sp, sp, #0xc
00576db0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00576db4  f8 83 36 00                                      .byte 0xf8, 0x83, 0x36, 0x00

; FUNCTION 0x00576ef4, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader7isValidEPKc
; demangled: glitch::io::CZipReader::isValid(char const*)
; decoder-mode: arm
00576ef4  70 40 2d e9                                      push {r4, r5, r6, lr}
00576ef8  2d e6 ff eb                                      bl #0x5707b4
00576efc  00 50 a0 e1                                      mov r5, r0
00576f00  89 ff ff eb                                      bl #0x576d2c
00576f04  00 40 a0 e1                                      mov r4, r0
00576f08  05 00 a0 e1                                      mov r0, r5
00576f0c  9c 99 f6 eb                                      bl #0x31d584
00576f10  04 00 a0 e1                                      mov r0, r4
00576f14  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00576f18, declared_size=652, range_size=652, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8openFileEi
; demangled: glitch::io::CZipReader::openFile(int)
; decoder-mode: arm
00576f18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00576f1c  6c 50 a0 e3                                      mov r5, #0x6c
00576f20  95 01 05 e0                                      mul r5, r5, r1
00576f24  14 20 90 e5                                      ldr r2, [r0, #0x14]
00576f28  44 d0 4d e2                                      sub sp, sp, #0x44
00576f2c  00 40 a0 e1                                      mov r4, r0
00576f30  05 20 82 e0                                      add r2, r2, r5
00576f34  f4 65 d2 e1                                      ldrsh r6, [r2, #0x54]
00576f38  00 00 56 e3                                      cmp r6, #0
00576f3c  1a 00 00 1a                                      bne #0x576fac
00576f40  08 30 90 e5                                      ldr r3, [r0, #8]
00576f44  48 10 92 e5                                      ldr r1, [r2, #0x48]
00576f48  06 20 a0 e1                                      mov r2, r6
00576f4c  03 00 a0 e1                                      mov r0, r3
00576f50  00 30 93 e5                                      ldr r3, [r3]
00576f54  0f e0 a0 e1                                      mov lr, pc
00576f58  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00576f5c  10 10 94 e5                                      ldr r1, [r4, #0x10]
00576f60  01 10 11 e2                                      ands r1, r1, #1
00576f64  57 00 00 0a                                      beq #0x5770c8
00576f68  14 30 94 e5                                      ldr r3, [r4, #0x14]
00576f6c  06 10 a0 e1                                      mov r1, r6
00576f70  50 00 a0 e3                                      mov r0, #0x50
00576f74  05 50 83 e0                                      add r5, r3, r5
00576f78  b2 36 d5 e1                                      ldrh r3, [r5, #0x62]
00576f7c  b4 66 d5 e1                                      ldrh r6, [r5, #0x64]
00576f80  2c 50 95 e5                                      ldr r5, [r5, #0x2c]
00576f84  06 68 83 e1                                      orr r6, r3, r6, lsl #16
00576f88  87 f4 fe eb                                      bl #0x5341ac
00576f8c  08 10 94 e5                                      ldr r1, [r4, #8]
00576f90  00 80 a0 e1                                      mov r8, r0
00576f94  06 20 a0 e1                                      mov r2, r6
00576f98  05 30 a0 e1                                      mov r3, r5
00576f9c  00 50 8d e5                                      str r5, [sp]
00576fa0  1a f6 04 eb                                      bl #0x6b4810
00576fa4  08 00 a0 e1                                      mov r0, r8
00576fa8  07 00 00 ea                                      b #0x576fcc
00576fac  08 00 56 e3                                      cmp r6, #8
00576fb0  07 00 00 0a                                      beq #0x576fd4
00576fb4  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
00576fb8  2c 10 92 e5                                      ldr r1, [r2, #0x2c]
00576fbc  03 20 a0 e3                                      mov r2, #3
00576fc0  00 00 8f e0                                      add r0, pc, r0
00576fc4  47 4f 02 eb                                      bl #0x60ace8
00576fc8  00 00 a0 e3                                      mov r0, #0
00576fcc  44 d0 8d e2                                      add sp, sp, #0x44
00576fd0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00576fd4  b2 16 d2 e1                                      ldrh r1, [r2, #0x62]
00576fd8  b4 a6 d2 e1                                      ldrh sl, [r2, #0x64]
00576fdc  b0 66 d2 e1                                      ldrh r6, [r2, #0x60]
00576fe0  be 35 d2 e1                                      ldrh r3, [r2, #0x5e]
00576fe4  0a a8 81 e1                                      orr sl, r1, sl, lsl #16
00576fe8  0a 00 a0 e1                                      mov r0, sl
00576fec  00 10 a0 e3                                      mov r1, #0
00576ff0  06 68 83 e1                                      orr r6, r3, r6, lsl #16
00576ff4  6b f4 fe eb                                      bl #0x5341a8
00576ff8  00 b0 50 e2                                      subs fp, r0, #0
00576ffc  51 00 00 0a                                      beq #0x577148
00577000  06 00 a0 e1                                      mov r0, r6
00577004  00 10 a0 e3                                      mov r1, #0
00577008  66 f4 fe eb                                      bl #0x5341a8
0057700c  00 70 50 e2                                      subs r7, r0, #0
00577010  55 00 00 0a                                      beq #0x57716c
00577014  14 10 94 e5                                      ldr r1, [r4, #0x14]
00577018  08 30 94 e5                                      ldr r3, [r4, #8]
0057701c  00 20 a0 e3                                      mov r2, #0
00577020  05 10 81 e0                                      add r1, r1, r5
00577024  48 10 91 e5                                      ldr r1, [r1, #0x48]
00577028  03 00 a0 e1                                      mov r0, r3
0057702c  00 30 93 e5                                      ldr r3, [r3]
00577030  0f e0 a0 e1                                      mov lr, pc
00577034  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00577038  08 30 94 e5                                      ldr r3, [r4, #8]
0057703c  07 10 a0 e1                                      mov r1, r7
00577040  06 20 a0 e1                                      mov r2, r6
00577044  03 00 a0 e1                                      mov r0, r3
00577048  00 30 93 e5                                      ldr r3, [r3]
0057704c  0f e0 a0 e1                                      mov lr, pc
00577050  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00577054  38 21 9f e5                                      ldr r2, [pc, #0x138]
00577058  08 90 8d e2                                      add sb, sp, #8
0057705c  00 80 a0 e3                                      mov r8, #0
00577060  02 20 8f e0                                      add r2, pc, r2
00577064  09 00 a0 e1                                      mov r0, sb
00577068  0e 10 e0 e3                                      mvn r1, #0xe
0057706c  38 30 a0 e3                                      mov r3, #0x38
00577070  0c 60 8d e5                                      str r6, [sp, #0xc]
00577074  08 70 8d e5                                      str r7, [sp, #8]
00577078  14 b0 8d e5                                      str fp, [sp, #0x14]
0057707c  18 a0 8d e5                                      str sl, [sp, #0x18]
00577080  28 80 8d e5                                      str r8, [sp, #0x28]
00577084  2c 80 8d e5                                      str r8, [sp, #0x2c]
00577088  b5 ed 03 eb                                      bl #0x672764
0057708c  08 00 50 e1                                      cmp r0, r8
00577090  1b 00 00 0a                                      beq #0x577104
00577094  07 00 a0 e1                                      mov r0, r7
00577098  06 5c f6 eb                                      bl #0x30e0b8
0057709c  14 30 94 e5                                      ldr r3, [r4, #0x14]
005770a0  f0 00 9f e5                                      ldr r0, [pc, #0xf0]
005770a4  03 20 a0 e3                                      mov r2, #3
005770a8  05 50 83 e0                                      add r5, r3, r5
005770ac  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
005770b0  00 00 8f e0                                      add r0, pc, r0
005770b4  0b 4f 02 eb                                      bl #0x60ace8
005770b8  0b 00 a0 e1                                      mov r0, fp
005770bc  fd 5b f6 eb                                      bl #0x30e0b8
005770c0  08 00 a0 e1                                      mov r0, r8
005770c4  c0 ff ff ea                                      b #0x576fcc
005770c8  14 30 94 e5                                      ldr r3, [r4, #0x14]
005770cc  50 00 a0 e3                                      mov r0, #0x50
005770d0  05 50 83 e0                                      add r5, r3, r5
005770d4  b2 36 d5 e1                                      ldrh r3, [r5, #0x62]
005770d8  b4 66 d5 e1                                      ldrh r6, [r5, #0x64]
005770dc  2c 50 95 e5                                      ldr r5, [r5, #0x2c]
005770e0  06 68 83 e1                                      orr r6, r3, r6, lsl #16
005770e4  30 f4 fe eb                                      bl #0x5341ac
005770e8  08 10 94 e5                                      ldr r1, [r4, #8]
005770ec  00 80 a0 e1                                      mov r8, r0
005770f0  06 20 a0 e1                                      mov r2, r6
005770f4  05 30 a0 e1                                      mov r3, r5
005770f8  31 f6 04 eb                                      bl #0x6b49c4
005770fc  08 00 a0 e1                                      mov r0, r8
00577100  b1 ff ff ea                                      b #0x576fcc
00577104  04 10 a0 e3                                      mov r1, #4
00577108  09 00 a0 e1                                      mov r0, sb
0057710c  8d ef 03 eb                                      bl #0x672f48
00577110  09 00 a0 e1                                      mov r0, sb
00577114  de ed 03 eb                                      bl #0x672894
00577118  09 00 a0 e1                                      mov r0, sb
0057711c  dc ed 03 eb                                      bl #0x672894
00577120  07 00 a0 e1                                      mov r0, r7
00577124  e3 5b f6 eb                                      bl #0x30e0b8
00577128  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057712c  0b 00 a0 e1                                      mov r0, fp
00577130  0a 10 a0 e1                                      mov r1, sl
00577134  05 50 83 e0                                      add r5, r3, r5
00577138  14 20 95 e5                                      ldr r2, [r5, #0x14]
0057713c  01 30 a0 e3                                      mov r3, #1
00577140  8a e0 ff eb                                      bl #0x56f370
00577144  a0 ff ff ea                                      b #0x576fcc
00577148  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057714c  48 00 9f e5                                      ldr r0, [pc, #0x48]
00577150  03 20 a0 e3                                      mov r2, #3
00577154  05 50 83 e0                                      add r5, r3, r5
00577158  00 00 8f e0                                      add r0, pc, r0
0057715c  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00577160  e0 4e 02 eb                                      bl #0x60ace8
00577164  0b 00 a0 e1                                      mov r0, fp
00577168  97 ff ff ea                                      b #0x576fcc
0057716c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00577170  28 00 9f e5                                      ldr r0, [pc, #0x28]
00577174  03 20 a0 e3                                      mov r2, #3
00577178  05 50 83 e0                                      add r5, r3, r5
0057717c  00 00 8f e0                                      add r0, pc, r0
00577180  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00577184  d7 4e 02 eb                                      bl #0x60ace8
00577188  07 00 a0 e1                                      mov r0, r7
0057718c  8e ff ff ea                                      b #0x576fcc
; mapping-symbol data/literal pool
00577190  c0 81 36 00 00 81 36 00 b8 80 36 00 e0 7f 36 00  .byte 0xc0, 0x81, 0x36, 0x00, 0x00, 0x81, 0x36, 0x00, 0xb8, 0x80, 0x36, 0x00, 0xe0, 0x7f, 0x36, 0x00
005771a0  bc 7f 36 00                                      .byte 0xbc, 0x7f, 0x36, 0x00

; FUNCTION 0x00577488, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderD1Ev
; demangled: glitch::io::CZipReader::~CZipReader()
; decoder-mode: arm
00577488  10 40 2d e9                                      push {r4, lr}
0057748c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00577490  34 20 9f e5                                      ldr r2, [pc, #0x34]
00577494  00 40 a0 e1                                      mov r4, r0
00577498  03 30 8f e0                                      add r3, pc, r3
0057749c  08 00 90 e5                                      ldr r0, [r0, #8]
005774a0  02 20 93 e7                                      ldr r2, [r3, r2]
005774a4  00 00 50 e3                                      cmp r0, #0
005774a8  08 20 82 e2                                      add r2, r2, #8
005774ac  00 20 84 e5                                      str r2, [r4]
005774b0  00 00 00 0a                                      beq #0x5774b8
005774b4  32 98 f6 eb                                      bl #0x31d584
005774b8  14 00 84 e2                                      add r0, r4, #0x14
005774bc  e0 ff ff eb                                      bl #0x577444
005774c0  04 00 a0 e1                                      mov r0, r4
005774c4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005774c8  f8 d5 41 00 b0 24 00 00                          .byte 0xf8, 0xd5, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; FUNCTION 0x005774d0, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderD0Ev
; demangled: glitch::io::CZipReader::~CZipReader()
; decoder-mode: arm
005774d0  10 40 2d e9                                      push {r4, lr}
005774d4  00 40 a0 e1                                      mov r4, r0
005774d8  ea ff ff eb                                      bl #0x577488
005774dc  04 00 a0 e1                                      mov r0, r4
005774e0  72 5b f6 eb                                      bl #0x30e2b0
005774e4  04 00 a0 e1                                      mov r0, r4
005774e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005774ec, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderD2Ev
; demangled: glitch::io::CZipReader::~CZipReader()
; decoder-mode: arm
005774ec  10 40 2d e9                                      push {r4, lr}
005774f0  34 30 9f e5                                      ldr r3, [pc, #0x34]
005774f4  34 20 9f e5                                      ldr r2, [pc, #0x34]
005774f8  00 40 a0 e1                                      mov r4, r0
005774fc  03 30 8f e0                                      add r3, pc, r3
00577500  08 00 90 e5                                      ldr r0, [r0, #8]
00577504  02 20 93 e7                                      ldr r2, [r3, r2]
00577508  00 00 50 e3                                      cmp r0, #0
0057750c  08 20 82 e2                                      add r2, r2, #8
00577510  00 20 84 e5                                      str r2, [r4]
00577514  00 00 00 0a                                      beq #0x57751c
00577518  19 98 f6 eb                                      bl #0x31d584
0057751c  14 00 84 e2                                      add r0, r4, #0x14
00577520  c7 ff ff eb                                      bl #0x577444
00577524  04 00 a0 e1                                      mov r0, r4
00577528  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0057752c  94 d5 41 00 b0 24 00 00                          .byte 0x94, 0xd5, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; FUNCTION 0x00577b50, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
; demangled: glitch::io::CZipReader::deletePathFromFilename(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00577b50  70 40 2d e9                                      push {r4, r5, r6, lr}
00577b54  14 20 91 e5                                      ldr r2, [r1, #0x14]
00577b58  10 50 91 e5                                      ldr r5, [r1, #0x10]
00577b5c  01 40 a0 e1                                      mov r4, r1
00577b60  05 50 62 e0                                      rsb r5, r2, r5
00577b64  d5 30 92 e1                                      ldrsb r3, [r2, r5]
00577b68  05 50 82 e0                                      add r5, r2, r5
00577b6c  2f 00 53 e3                                      cmp r3, #0x2f
00577b70  5c 00 53 13                                      cmpne r3, #0x5c
00577b74  09 00 00 1a                                      bne #0x577ba0
00577b78  02 00 55 e1                                      cmp r5, r2
00577b7c  0f 00 00 0a                                      beq #0x577bc0
00577b80  01 50 85 e2                                      add r5, r5, #1
00577b84  05 00 a0 e1                                      mov r0, r5
00577b88  b1 58 f6 eb                                      bl #0x30de54
00577b8c  05 10 a0 e1                                      mov r1, r5
00577b90  00 20 85 e0                                      add r2, r5, r0
00577b94  04 00 a0 e1                                      mov r0, r4
00577b98  70 40 bd e8                                      pop {r4, r5, r6, lr}
00577b9c  f9 a3 f6 ea                                      b #0x320b88
00577ba0  02 00 55 e1                                      cmp r5, r2
00577ba4  06 00 00 0a                                      beq #0x577bc4
00577ba8  d1 30 75 e1                                      ldrsb r3, [r5, #-1]!
00577bac  5c 00 53 e3                                      cmp r3, #0x5c
00577bb0  2f 00 53 13                                      cmpne r3, #0x2f
00577bb4  ef ff ff 0a                                      beq #0x577b78
00577bb8  02 00 55 e1                                      cmp r5, r2
00577bbc  f9 ff ff 1a                                      bne #0x577ba8
00577bc0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00577bc4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00577bc8, declared_size=492, range_size=492, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader15extractFilenameEPNS0_13SZipFileEntryE
; demangled: glitch::io::CZipReader::extractFilename(glitch::io::SZipFileEntry*)
; decoder-mode: arm
00577bc8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00577bcc  d0 51 9f e5                                      ldr r5, [pc, #0x1d0]
00577bd0  d0 61 9f e5                                      ldr r6, [pc, #0x1d0]
00577bd4  f6 a6 d1 e1                                      ldrsh sl, [r1, #0x66]
00577bd8  05 50 8f e0                                      add r5, pc, r5
00577bdc  06 30 95 e7                                      ldr r3, [r5, r6]
00577be0  24 d0 4d e2                                      sub sp, sp, #0x24
00577be4  00 00 5a e3                                      cmp sl, #0
00577be8  00 30 93 e5                                      ldr r3, [r3]
00577bec  01 40 a0 e1                                      mov r4, r1
00577bf0  00 70 a0 e1                                      mov r7, r0
00577bf4  1c 30 8d e5                                      str r3, [sp, #0x1c]
00577bf8  4d 00 00 0a                                      beq #0x577d34
00577bfc  0c 30 d0 e5                                      ldrb r3, [r0, #0xc]
00577c00  00 00 53 e3                                      cmp r3, #0
00577c04  14 80 91 05                                      ldreq r8, [r1, #0x14]
00577c08  15 00 00 0a                                      beq #0x577c64
00577c0c  10 80 91 e5                                      ldr r8, [r1, #0x10]
00577c10  14 10 91 e5                                      ldr r1, [r1, #0x14]
00577c14  01 00 58 e1                                      cmp r8, r1
00577c18  11 00 00 0a                                      beq #0x577c64
00577c1c  00 30 a0 e3                                      mov r3, #0
00577c20  00 00 00 ea                                      b #0x577c28
00577c24  08 10 a0 e1                                      mov r1, r8
00577c28  03 20 d1 e7                                      ldrb r2, [r1, r3]
00577c2c  03 10 81 e0                                      add r1, r1, r3
00577c30  01 30 83 e2                                      add r3, r3, #1
00577c34  72 00 ef e6                                      uxtb r0, r2
00577c38  41 c0 40 e2                                      sub ip, r0, #0x41
00577c3c  7c c0 ef e6                                      uxtb ip, ip
00577c40  19 00 5c e3                                      cmp ip, #0x19
00577c44  20 20 80 92                                      addls r2, r0, #0x20
00577c48  72 20 ef 96                                      uxtbls r2, r2
00577c4c  00 20 c1 e5                                      strb r2, [r1]
00577c50  14 80 94 e5                                      ldr r8, [r4, #0x14]
00577c54  10 20 94 e5                                      ldr r2, [r4, #0x10]
00577c58  02 20 68 e0                                      rsb r2, r8, r2
00577c5c  02 00 53 e1                                      cmp r3, r2
00577c60  ef ff ff 3a                                      blo #0x577c24
00577c64  da 30 98 e1                                      ldrsb r3, [r8, sl]
00577c68  0a a0 88 e0                                      add sl, r8, sl
00577c6c  2f 00 53 e3                                      cmp r3, #0x2f
00577c70  04 00 00 0a                                      beq #0x577c88
00577c74  08 00 5a e1                                      cmp sl, r8
00577c78  34 00 00 0a                                      beq #0x577d50
00577c7c  d1 30 7a e1                                      ldrsb r3, [sl, #-1]!
00577c80  2f 00 53 e3                                      cmp r3, #0x2f
00577c84  fa ff ff 1a                                      bne #0x577c74
00577c88  0a 00 58 e1                                      cmp r8, sl
00577c8c  2f 00 00 0a                                      beq #0x577d50
00577c90  01 a0 8a e2                                      add sl, sl, #1
00577c94  0a 00 a0 e1                                      mov r0, sl
00577c98  6d 58 f6 eb                                      bl #0x30de54
00577c9c  18 90 84 e2                                      add sb, r4, #0x18
00577ca0  00 20 8a e0                                      add r2, sl, r0
00577ca4  0a 10 a0 e1                                      mov r1, sl
00577ca8  09 00 a0 e1                                      mov r0, sb
00577cac  b5 a3 f6 eb                                      bl #0x320b88
00577cb0  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00577cb4  30 b0 84 e2                                      add fp, r4, #0x30
00577cb8  0b 00 a0 e1                                      mov r0, fp
00577cbc  01 10 8f e0                                      add r1, pc, r1
00577cc0  01 20 a0 e1                                      mov r2, r1
00577cc4  af a3 f6 eb                                      bl #0x320b88
00577cc8  14 10 94 e5                                      ldr r1, [r4, #0x14]
00577ccc  10 30 94 e5                                      ldr r3, [r4, #0x10]
00577cd0  04 80 8d e2                                      add r8, sp, #4
00577cd4  0a 20 61 e0                                      rsb r2, r1, sl
00577cd8  03 30 61 e0                                      rsb r3, r1, r3
00577cdc  03 00 52 e1                                      cmp r2, r3
00577ce0  02 20 81 90                                      addls r2, r1, r2
00577ce4  03 20 81 80                                      addhi r2, r1, r3
00577ce8  08 00 a0 e1                                      mov r0, r8
00577cec  14 80 8d e5                                      str r8, [sp, #0x14]
00577cf0  18 80 8d e5                                      str r8, [sp, #0x18]
00577cf4  be b8 f6 eb                                      bl #0x325ff4
00577cf8  08 00 5b e1                                      cmp fp, r8
00577cfc  03 00 00 0a                                      beq #0x577d10
00577d00  0b 00 a0 e1                                      mov r0, fp
00577d04  18 10 9d e5                                      ldr r1, [sp, #0x18]
00577d08  14 20 9d e5                                      ldr r2, [sp, #0x14]
00577d0c  9d a3 f6 eb                                      bl #0x320b88
00577d10  18 00 9d e5                                      ldr r0, [sp, #0x18]
00577d14  08 00 50 e1                                      cmp r0, r8
00577d18  18 00 00 0a                                      beq #0x577d80
00577d1c  00 00 50 e3                                      cmp r0, #0
00577d20  16 00 00 0a                                      beq #0x577d80
00577d24  c9 61 f6 eb                                      bl #0x310450
00577d28  0d 30 d7 e5                                      ldrb r3, [r7, #0xd]
00577d2c  00 00 53 e3                                      cmp r3, #0
00577d30  15 00 00 0a                                      beq #0x577d8c
00577d34  06 30 95 e7                                      ldr r3, [r5, r6]
00577d38  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00577d3c  00 30 93 e5                                      ldr r3, [r3]
00577d40  03 00 52 e1                                      cmp r2, r3
00577d44  15 00 00 1a                                      bne #0x577da0
00577d48  24 d0 8d e2                                      add sp, sp, #0x24
00577d4c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00577d50  08 00 a0 e1                                      mov r0, r8
00577d54  3e 58 f6 eb                                      bl #0x30de54
00577d58  18 90 84 e2                                      add sb, r4, #0x18
00577d5c  00 20 88 e0                                      add r2, r8, r0
00577d60  08 10 a0 e1                                      mov r1, r8
00577d64  09 00 a0 e1                                      mov r0, sb
00577d68  86 a3 f6 eb                                      bl #0x320b88
00577d6c  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
00577d70  30 00 84 e2                                      add r0, r4, #0x30
00577d74  01 10 8f e0                                      add r1, pc, r1
00577d78  01 20 a0 e1                                      mov r2, r1
00577d7c  81 a3 f6 eb                                      bl #0x320b88
00577d80  0d 30 d7 e5                                      ldrb r3, [r7, #0xd]
00577d84  00 00 53 e3                                      cmp r3, #0
00577d88  e9 ff ff 1a                                      bne #0x577d34
00577d8c  09 00 a0 e1                                      mov r0, sb
00577d90  10 20 94 e5                                      ldr r2, [r4, #0x10]
00577d94  14 10 94 e5                                      ldr r1, [r4, #0x14]
00577d98  7a a3 f6 eb                                      bl #0x320b88
00577d9c  e4 ff ff ea                                      b #0x577d34
00577da0  5a 59 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00577da4  b8 ce 41 00 ac 40 00 00 4c 3b 35 00 94 3a 35 00  .byte 0xb8, 0xce, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00, 0x4c, 0x3b, 0x35, 0x00, 0x94, 0x3a, 0x35, 0x00

; FUNCTION 0x00577db4, declared_size=496, range_size=496, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader15scanLocalHeaderEv
; demangled: glitch::io::CZipReader::scanLocalHeader()
; decoder-mode: arm
00577db4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00577db8  dc 51 9f e5                                      ldr r5, [pc, #0x1dc]
00577dbc  dc 81 9f e5                                      ldr r8, [pc, #0x1dc]
00577dc0  47 de 4d e2                                      sub sp, sp, #0x470
00577dc4  05 50 8f e0                                      add r5, pc, r5
00577dc8  08 30 95 e7                                      ldr r3, [r5, r8]
00577dcc  04 d0 4d e2                                      sub sp, sp, #4
00577dd0  01 6b 8d e2                                      add r6, sp, #0x400
00577dd4  00 30 93 e5                                      ldr r3, [r3]
00577dd8  00 70 a0 e1                                      mov r7, r0
00577ddc  06 00 a0 e1                                      mov r0, r6
00577de0  6c 34 8d e5                                      str r3, [sp, #0x46c]
00577de4  47 fd ff eb                                      bl #0x577308
00577de8  08 30 97 e5                                      ldr r3, [r7, #8]
00577dec  00 40 a0 e3                                      mov r4, #0
00577df0  01 0b 8d e2                                      add r0, sp, #0x400
00577df4  b8 46 c0 e1                                      strh r4, [r0, #0x68]
00577df8  48 44 8d e5                                      str r4, [sp, #0x448]
00577dfc  4c 44 8d e5                                      str r4, [sp, #0x44c]
00577e00  50 44 8d e5                                      str r4, [sp, #0x450]
00577e04  54 44 8d e5                                      str r4, [sp, #0x454]
00577e08  58 44 8d e5                                      str r4, [sp, #0x458]
00577e0c  5c 44 8d e5                                      str r4, [sp, #0x45c]
00577e10  60 44 8d e5                                      str r4, [sp, #0x460]
00577e14  64 44 8d e5                                      str r4, [sp, #0x464]
00577e18  03 00 a0 e1                                      mov r0, r3
00577e1c  1e 20 a0 e3                                      mov r2, #0x1e
00577e20  00 30 93 e5                                      ldr r3, [r3]
00577e24  4c 10 86 e2                                      add r1, r6, #0x4c
00577e28  0f e0 a0 e1                                      mov lr, pc
00577e2c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00577e30  4c 24 9d e5                                      ldr r2, [sp, #0x44c]
00577e34  50 3b 04 e3                                      movw r3, #0x4b50
00577e38  03 34 40 e3                                      movt r3, #0x403
00577e3c  03 00 52 e1                                      cmp r2, r3
00577e40  04 a0 a0 e1                                      mov sl, r4
00577e44  0a 00 00 0a                                      beq #0x577e74
00577e48  06 00 a0 e1                                      mov r0, r6
00577e4c  64 fd ff eb                                      bl #0x5773e4
00577e50  08 30 95 e7                                      ldr r3, [r5, r8]
00577e54  6c 24 9d e5                                      ldr r2, [sp, #0x46c]
00577e58  04 00 a0 e1                                      mov r0, r4
00577e5c  00 30 93 e5                                      ldr r3, [r3]
00577e60  03 00 52 e1                                      cmp r2, r3
00577e64  4b 00 00 1a                                      bne #0x577f98
00577e68  74 d0 8d e2                                      add sp, sp, #0x74
00577e6c  01 db 8d e2                                      add sp, sp, #0x400
00577e70  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00577e74  01 2b 8d e2                                      add r2, sp, #0x400
00577e78  f6 16 d2 e1                                      ldrsh r1, [r2, #0x66]
00577e7c  06 00 a0 e1                                      mov r0, r6
00577e80  02 10 81 e2                                      add r1, r1, #2
00577e84  e1 fb ff eb                                      bl #0x576e10
00577e88  08 30 97 e5                                      ldr r3, [r7, #8]
00577e8c  01 cb 8d e2                                      add ip, sp, #0x400
00577e90  f6 26 dc e1                                      ldrsh r2, [ip, #0x66]
00577e94  0d 10 a0 e1                                      mov r1, sp
00577e98  03 00 a0 e1                                      mov r0, r3
00577e9c  00 30 93 e5                                      ldr r3, [r3]
00577ea0  0f e0 a0 e1                                      mov lr, pc
00577ea4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00577ea8  01 0b 8d e2                                      add r0, sp, #0x400
00577eac  f6 36 d0 e1                                      ldrsh r3, [r0, #0x66]
00577eb0  47 1e 8d e2                                      add r1, sp, #0x470
00577eb4  b9 24 a0 e3                                      mov r2, #0xb9000000
00577eb8  03 30 81 e0                                      add r3, r1, r3
00577ebc  42 aa c3 e7                                      strb sl, [r3, r2, asr #20]
00577ec0  0d 00 a0 e1                                      mov r0, sp
00577ec4  e2 57 f6 eb                                      bl #0x30de54
00577ec8  0d 10 a0 e1                                      mov r1, sp
00577ecc  00 20 8d e0                                      add r2, sp, r0
00577ed0  06 00 a0 e1                                      mov r0, r6
00577ed4  2b a3 f6 eb                                      bl #0x320b88
00577ed8  06 10 a0 e1                                      mov r1, r6
00577edc  07 00 a0 e1                                      mov r0, r7
00577ee0  38 ff ff eb                                      bl #0x577bc8
00577ee4  01 2b 8d e2                                      add r2, sp, #0x400
00577ee8  b8 16 d2 e1                                      ldrh r1, [r2, #0x68]
00577eec  00 00 51 e3                                      cmp r1, #0
00577ef0  18 00 00 1a                                      bne #0x577f58
00577ef4  01 cb 8d e2                                      add ip, sp, #0x400
00577ef8  b2 35 dc e1                                      ldrh r3, [ip, #0x52]
00577efc  08 00 13 e3                                      tst r3, #8
00577f00  1c 00 00 1a                                      bne #0x577f78
00577f04  08 30 97 e5                                      ldr r3, [r7, #8]
00577f08  01 40 a0 e3                                      mov r4, #1
00577f0c  03 00 a0 e1                                      mov r0, r3
00577f10  00 30 93 e5                                      ldr r3, [r3]
00577f14  0f e0 a0 e1                                      mov lr, pc
00577f18  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00577f1c  01 1b 8d e2                                      add r1, sp, #0x400
00577f20  08 30 97 e5                                      ldr r3, [r7, #8]
00577f24  be 25 d1 e1                                      ldrh r2, [r1, #0x5e]
00577f28  b0 16 d1 e1                                      ldrh r1, [r1, #0x60]
00577f2c  48 04 8d e5                                      str r0, [sp, #0x448]
00577f30  03 00 a0 e1                                      mov r0, r3
00577f34  01 18 82 e1                                      orr r1, r2, r1, lsl #16
00577f38  00 30 93 e5                                      ldr r3, [r3]
00577f3c  04 20 a0 e1                                      mov r2, r4
00577f40  0f e0 a0 e1                                      mov lr, pc
00577f44  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00577f48  14 00 87 e2                                      add r0, r7, #0x14
00577f4c  06 10 a0 e1                                      mov r1, r6
00577f50  4d fe ff eb                                      bl #0x57788c
00577f54  bb ff ff ea                                      b #0x577e48
00577f58  08 30 97 e5                                      ldr r3, [r7, #8]
00577f5c  71 10 bf e6                                      sxth r1, r1
00577f60  01 20 a0 e3                                      mov r2, #1
00577f64  03 00 a0 e1                                      mov r0, r3
00577f68  00 30 93 e5                                      ldr r3, [r3]
00577f6c  0f e0 a0 e1                                      mov lr, pc
00577f70  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00577f74  de ff ff ea                                      b #0x577ef4
00577f78  08 30 97 e5                                      ldr r3, [r7, #8]
00577f7c  5a 10 86 e2                                      add r1, r6, #0x5a
00577f80  0c 20 a0 e3                                      mov r2, #0xc
00577f84  03 00 a0 e1                                      mov r0, r3
00577f88  00 30 93 e5                                      ldr r3, [r3]
00577f8c  0f e0 a0 e1                                      mov lr, pc
00577f90  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00577f94  da ff ff ea                                      b #0x577f04
00577f98  dc 58 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00577f9c  cc cc 41 00 ac 40 00 00                          .byte 0xcc, 0xcc, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00577fa4, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderC1EPNS0_9IReadFileEbb
; demangled: glitch::io::CZipReader::CZipReader(glitch::io::IReadFile*, bool, bool)
; decoder-mode: arm
00577fa4  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
00577fa8  70 40 2d e9                                      push {r4, r5, r6, lr}
00577fac  98 50 9f e5                                      ldr r5, [pc, #0x98]
00577fb0  0c c0 8f e0                                      add ip, pc, ip
00577fb4  00 40 a0 e1                                      mov r4, r0
00577fb8  05 50 9c e7                                      ldr r5, [ip, r5]
00577fbc  00 00 a0 e3                                      mov r0, #0
00577fc0  01 60 a0 e3                                      mov r6, #1
00577fc4  08 50 85 e2                                      add r5, r5, #8
00577fc8  00 00 51 e3                                      cmp r1, #0
00577fcc  60 00 84 e8                                      stm r4, {r5, r6}
00577fd0  0c 20 c4 e5                                      strb r2, [r4, #0xc]
00577fd4  0d 30 c4 e5                                      strb r3, [r4, #0xd]
00577fd8  1c 00 84 e5                                      str r0, [r4, #0x1c]
00577fdc  08 10 84 e5                                      str r1, [r4, #8]
00577fe0  10 00 84 e5                                      str r0, [r4, #0x10]
00577fe4  14 00 84 e5                                      str r0, [r4, #0x14]
00577fe8  18 00 84 e5                                      str r0, [r4, #0x18]
00577fec  13 00 00 0a                                      beq #0x578040
00577ff0  04 30 91 e5                                      ldr r3, [r1, #4]
00577ff4  06 30 83 e0                                      add r3, r3, r6
00577ff8  04 30 81 e5                                      str r3, [r1, #4]
00577ffc  04 00 a0 e1                                      mov r0, r4
00578000  6b ff ff eb                                      bl #0x577db4
00578004  00 00 50 e3                                      cmp r0, #0
00578008  fb ff ff 1a                                      bne #0x577ffc
0057800c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00578010  18 30 94 e5                                      ldr r3, [r4, #0x18]
00578014  03 30 60 e0                                      rsb r3, r0, r3
00578018  43 31 a0 e1                                      asr r3, r3, #2
0057801c  83 11 83 e0                                      add r1, r3, r3, lsl #3
00578020  81 30 83 e0                                      add r3, r3, r1, lsl #1
00578024  83 14 a0 e1                                      lsl r1, r3, #9
00578028  01 10 63 e0                                      rsb r1, r3, r1
0057802c  01 19 81 e0                                      add r1, r1, r1, lsl #18
00578030  00 10 61 e2                                      rsb r1, r1, #0
00578034  01 00 51 e3                                      cmp r1, #1
00578038  00 00 00 9a                                      bls #0x578040
0057803c  da fd ff eb                                      bl #0x5777ac
00578040  04 00 a0 e1                                      mov r0, r4
00578044  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00578048  e0 ca 41 00 b0 24 00 00                          .byte 0xe0, 0xca, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; FUNCTION 0x00578050, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderC2EPNS0_9IReadFileEbb
; demangled: glitch::io::CZipReader::CZipReader(glitch::io::IReadFile*, bool, bool)
; decoder-mode: arm
00578050  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
00578054  70 40 2d e9                                      push {r4, r5, r6, lr}
00578058  98 50 9f e5                                      ldr r5, [pc, #0x98]
0057805c  0c c0 8f e0                                      add ip, pc, ip
00578060  00 40 a0 e1                                      mov r4, r0
00578064  05 50 9c e7                                      ldr r5, [ip, r5]
00578068  00 00 a0 e3                                      mov r0, #0
0057806c  01 60 a0 e3                                      mov r6, #1
00578070  08 50 85 e2                                      add r5, r5, #8
00578074  00 00 51 e3                                      cmp r1, #0
00578078  60 00 84 e8                                      stm r4, {r5, r6}
0057807c  0c 20 c4 e5                                      strb r2, [r4, #0xc]
00578080  0d 30 c4 e5                                      strb r3, [r4, #0xd]
00578084  1c 00 84 e5                                      str r0, [r4, #0x1c]
00578088  08 10 84 e5                                      str r1, [r4, #8]
0057808c  10 00 84 e5                                      str r0, [r4, #0x10]
00578090  14 00 84 e5                                      str r0, [r4, #0x14]
00578094  18 00 84 e5                                      str r0, [r4, #0x18]
00578098  13 00 00 0a                                      beq #0x5780ec
0057809c  04 30 91 e5                                      ldr r3, [r1, #4]
005780a0  06 30 83 e0                                      add r3, r3, r6
005780a4  04 30 81 e5                                      str r3, [r1, #4]
005780a8  04 00 a0 e1                                      mov r0, r4
005780ac  40 ff ff eb                                      bl #0x577db4
005780b0  00 00 50 e3                                      cmp r0, #0
005780b4  fb ff ff 1a                                      bne #0x5780a8
005780b8  14 00 94 e5                                      ldr r0, [r4, #0x14]
005780bc  18 30 94 e5                                      ldr r3, [r4, #0x18]
005780c0  03 30 60 e0                                      rsb r3, r0, r3
005780c4  43 31 a0 e1                                      asr r3, r3, #2
005780c8  83 11 83 e0                                      add r1, r3, r3, lsl #3
005780cc  81 30 83 e0                                      add r3, r3, r1, lsl #1
005780d0  83 14 a0 e1                                      lsl r1, r3, #9
005780d4  01 10 63 e0                                      rsb r1, r3, r1
005780d8  01 19 81 e0                                      add r1, r1, r1, lsl #18
005780dc  00 10 61 e2                                      rsb r1, r1, #0
005780e0  01 00 51 e3                                      cmp r1, #1
005780e4  00 00 00 9a                                      bls #0x5780ec
005780e8  af fd ff eb                                      bl #0x5777ac
005780ec  04 00 a0 e1                                      mov r0, r4
005780f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005780f4  34 ca 41 00 b0 24 00 00                          .byte 0x34, 0xca, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; FUNCTION 0x0057826c, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderC1EPKcbb
; demangled: glitch::io::CZipReader::CZipReader(char const*, bool, bool)
; decoder-mode: arm
0057826c  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
00578270  70 40 2d e9                                      push {r4, r5, r6, lr}
00578274  98 e0 9f e5                                      ldr lr, [pc, #0x98]
00578278  0c c0 8f e0                                      add ip, pc, ip
0057827c  00 40 a0 e1                                      mov r4, r0
00578280  0e e0 9c e7                                      ldr lr, [ip, lr]
00578284  00 00 a0 e3                                      mov r0, #0
00578288  01 50 a0 e3                                      mov r5, #1
0057828c  08 e0 8e e2                                      add lr, lr, #8
00578290  1c 00 84 e5                                      str r0, [r4, #0x1c]
00578294  10 00 84 e5                                      str r0, [r4, #0x10]
00578298  14 00 84 e5                                      str r0, [r4, #0x14]
0057829c  18 00 84 e5                                      str r0, [r4, #0x18]
005782a0  04 50 84 e5                                      str r5, [r4, #4]
005782a4  00 e0 84 e5                                      str lr, [r4]
005782a8  0c 20 c4 e5                                      strb r2, [r4, #0xc]
005782ac  0d 30 c4 e5                                      strb r3, [r4, #0xd]
005782b0  01 00 a0 e1                                      mov r0, r1
005782b4  3e e1 ff eb                                      bl #0x5707b4
005782b8  00 00 50 e3                                      cmp r0, #0
005782bc  08 00 84 e5                                      str r0, [r4, #8]
005782c0  10 00 00 0a                                      beq #0x578308
005782c4  04 00 a0 e1                                      mov r0, r4
005782c8  b9 fe ff eb                                      bl #0x577db4
005782cc  00 00 50 e3                                      cmp r0, #0
005782d0  fb ff ff 1a                                      bne #0x5782c4
005782d4  14 00 94 e5                                      ldr r0, [r4, #0x14]
005782d8  18 30 94 e5                                      ldr r3, [r4, #0x18]
005782dc  03 30 60 e0                                      rsb r3, r0, r3
005782e0  43 31 a0 e1                                      asr r3, r3, #2
005782e4  83 11 83 e0                                      add r1, r3, r3, lsl #3
005782e8  81 30 83 e0                                      add r3, r3, r1, lsl #1
005782ec  83 14 a0 e1                                      lsl r1, r3, #9
005782f0  01 10 63 e0                                      rsb r1, r3, r1
005782f4  01 19 81 e0                                      add r1, r1, r1, lsl #18
005782f8  00 10 61 e2                                      rsb r1, r1, #0
005782fc  01 00 51 e3                                      cmp r1, #1
00578300  00 00 00 9a                                      bls #0x578308
00578304  28 fd ff eb                                      bl #0x5777ac
00578308  04 00 a0 e1                                      mov r0, r4
0057830c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00578310  18 c8 41 00 b0 24 00 00                          .byte 0x18, 0xc8, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; FUNCTION 0x00578318, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReaderC2EPKcbb
; demangled: glitch::io::CZipReader::CZipReader(char const*, bool, bool)
; decoder-mode: arm
00578318  9c c0 9f e5                                      ldr ip, [pc, #0x9c]
0057831c  70 40 2d e9                                      push {r4, r5, r6, lr}
00578320  98 e0 9f e5                                      ldr lr, [pc, #0x98]
00578324  0c c0 8f e0                                      add ip, pc, ip
00578328  00 40 a0 e1                                      mov r4, r0
0057832c  0e e0 9c e7                                      ldr lr, [ip, lr]
00578330  00 00 a0 e3                                      mov r0, #0
00578334  01 50 a0 e3                                      mov r5, #1
00578338  08 e0 8e e2                                      add lr, lr, #8
0057833c  1c 00 84 e5                                      str r0, [r4, #0x1c]
00578340  10 00 84 e5                                      str r0, [r4, #0x10]
00578344  14 00 84 e5                                      str r0, [r4, #0x14]
00578348  18 00 84 e5                                      str r0, [r4, #0x18]
0057834c  04 50 84 e5                                      str r5, [r4, #4]
00578350  00 e0 84 e5                                      str lr, [r4]
00578354  0c 20 c4 e5                                      strb r2, [r4, #0xc]
00578358  0d 30 c4 e5                                      strb r3, [r4, #0xd]
0057835c  01 00 a0 e1                                      mov r0, r1
00578360  13 e1 ff eb                                      bl #0x5707b4
00578364  00 00 50 e3                                      cmp r0, #0
00578368  08 00 84 e5                                      str r0, [r4, #8]
0057836c  10 00 00 0a                                      beq #0x5783b4
00578370  04 00 a0 e1                                      mov r0, r4
00578374  8e fe ff eb                                      bl #0x577db4
00578378  00 00 50 e3                                      cmp r0, #0
0057837c  fb ff ff 1a                                      bne #0x578370
00578380  14 00 94 e5                                      ldr r0, [r4, #0x14]
00578384  18 30 94 e5                                      ldr r3, [r4, #0x18]
00578388  03 30 60 e0                                      rsb r3, r0, r3
0057838c  43 31 a0 e1                                      asr r3, r3, #2
00578390  83 11 83 e0                                      add r1, r3, r3, lsl #3
00578394  81 30 83 e0                                      add r3, r3, r1, lsl #1
00578398  83 14 a0 e1                                      lsl r1, r3, #9
0057839c  01 10 63 e0                                      rsb r1, r3, r1
005783a0  01 19 81 e0                                      add r1, r1, r1, lsl #18
005783a4  00 10 61 e2                                      rsb r1, r1, #0
005783a8  01 00 51 e3                                      cmp r1, #1
005783ac  00 00 00 9a                                      bls #0x5783b4
005783b0  fd fc ff eb                                      bl #0x5777ac
005783b4  04 00 a0 e1                                      mov r0, r4
005783b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
005783bc  6c c7 41 00 b0 24 00 00                          .byte 0x6c, 0xc7, 0x41, 0x00, 0xb0, 0x24, 0x00, 0x00

; FUNCTION 0x00578520, declared_size=260, range_size=260, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8findFileEPKc
; demangled: glitch::io::CZipReader::findFile(char const*)
; decoder-mode: arm
00578520  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00578524  f0 40 9f e5                                      ldr r4, [pc, #0xf0]
00578528  f0 70 9f e5                                      ldr r7, [pc, #0xf0]
0057852c  70 d0 4d e2                                      sub sp, sp, #0x70
00578530  04 40 8f e0                                      add r4, pc, r4
00578534  07 30 94 e7                                      ldr r3, [r4, r7]
00578538  01 80 a0 e1                                      mov r8, r1
0057853c  00 60 a0 e1                                      mov r6, r0
00578540  00 30 93 e5                                      ldr r3, [r3]
00578544  0d 00 a0 e1                                      mov r0, sp
00578548  0d 50 a0 e1                                      mov r5, sp
0057854c  6c 30 8d e5                                      str r3, [sp, #0x6c]
00578550  6c fb ff eb                                      bl #0x577308
00578554  08 00 a0 e1                                      mov r0, r8
00578558  3d 56 f6 eb                                      bl #0x30de54
0057855c  08 10 a0 e1                                      mov r1, r8
00578560  00 20 88 e0                                      add r2, r8, r0
00578564  18 00 8d e2                                      add r0, sp, #0x18
00578568  86 a1 f6 eb                                      bl #0x320b88
0057856c  0c 30 d6 e5                                      ldrb r3, [r6, #0xc]
00578570  00 00 53 e3                                      cmp r3, #0
00578574  13 00 00 0a                                      beq #0x5785c8
00578578  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
0057857c  28 30 9d e5                                      ldr r3, [sp, #0x28]
00578580  03 00 52 e1                                      cmp r2, r3
00578584  0f 00 00 0a                                      beq #0x5785c8
00578588  00 30 a0 e3                                      mov r3, #0
0057858c  03 10 d2 e7                                      ldrb r1, [r2, r3]
00578590  03 20 82 e0                                      add r2, r2, r3
00578594  01 30 83 e2                                      add r3, r3, #1
00578598  71 00 ef e6                                      uxtb r0, r1
0057859c  41 c0 40 e2                                      sub ip, r0, #0x41
005785a0  7c c0 ef e6                                      uxtb ip, ip
005785a4  19 00 5c e3                                      cmp ip, #0x19
005785a8  20 10 80 92                                      addls r1, r0, #0x20
005785ac  71 10 ef 96                                      uxtbls r1, r1
005785b0  00 10 c2 e5                                      strb r1, [r2]
005785b4  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
005785b8  28 10 9d e5                                      ldr r1, [sp, #0x28]
005785bc  01 10 62 e0                                      rsb r1, r2, r1
005785c0  01 00 53 e1                                      cmp r3, r1
005785c4  f0 ff ff 3a                                      blo #0x57858c
005785c8  0d 30 d6 e5                                      ldrb r3, [r6, #0xd]
005785cc  00 00 53 e3                                      cmp r3, #0
005785d0  02 00 00 0a                                      beq #0x5785e0
005785d4  06 00 a0 e1                                      mov r0, r6
005785d8  18 10 85 e2                                      add r1, r5, #0x18
005785dc  5b fd ff eb                                      bl #0x577b50
005785e0  14 00 86 e2                                      add r0, r6, #0x14
005785e4  0d 10 a0 e1                                      mov r1, sp
005785e8  75 ff ff eb                                      bl #0x5783c4
005785ec  00 60 a0 e1                                      mov r6, r0
005785f0  0d 00 a0 e1                                      mov r0, sp
005785f4  7a fb ff eb                                      bl #0x5773e4
005785f8  07 30 94 e7                                      ldr r3, [r4, r7]
005785fc  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00578600  06 00 a0 e1                                      mov r0, r6
00578604  00 30 93 e5                                      ldr r3, [r3]
00578608  03 00 52 e1                                      cmp r2, r3
0057860c  01 00 00 1a                                      bne #0x578618
00578610  70 d0 8d e2                                      add sp, sp, #0x70
00578614  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00578618  3c 57 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0057861c  60 c5 41 00 ac 40 00 00                          .byte 0x60, 0xc5, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00578624, declared_size=44, range_size=44, mode=arm
; class-group: glitch::io::CZipReader
; alias: _ZN6glitch2io10CZipReader8openFileEPKc
; demangled: glitch::io::CZipReader::openFile(char const*)
; decoder-mode: arm
00578624  10 40 2d e9                                      push {r4, lr}
00578628  00 40 a0 e1                                      mov r4, r0
0057862c  bb ff ff eb                                      bl #0x578520
00578630  01 00 70 e3                                      cmn r0, #1
00578634  00 10 a0 e1                                      mov r1, r0
00578638  02 00 00 0a                                      beq #0x578648
0057863c  04 00 a0 e1                                      mov r0, r4
00578640  10 40 bd e8                                      pop {r4, lr}
00578644  33 fa ff ea                                      b #0x576f18
00578648  00 00 a0 e3                                      mov r0, #0
0057864c  10 80 bd e8                                      pop {r4, pc}
