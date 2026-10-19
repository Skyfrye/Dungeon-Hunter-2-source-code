; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056c2d8, declared_size=32, range_size=32, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io16createFileSystemEv
; demangled: glitch::io::createFileSystem()
; decoder-mode: arm
0056c2d8  10 40 2d e9                                      push {r4, lr}
0056c2dc  00 10 a0 e3                                      mov r1, #0
0056c2e0  2c 00 a0 e3                                      mov r0, #0x2c
0056c2e4  b0 1f ff eb                                      bl #0x5341ac
0056c2e8  00 40 a0 e1                                      mov r4, r0
0056c2ec  6d ff ff eb                                      bl #0x56c0a8
0056c2f0  04 00 a0 e1                                      mov r0, r4
0056c2f4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056f370, declared_size=72, range_size=72, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io20createMemoryReadFileEPvlPKcb
; demangled: glitch::io::createMemoryReadFile(void*, long, char const*, bool)
; decoder-mode: arm
0056f370  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056f374  00 80 a0 e1                                      mov r8, r0
0056f378  08 d0 4d e2                                      sub sp, sp, #8
0056f37c  01 70 a0 e1                                      mov r7, r1
0056f380  38 00 a0 e3                                      mov r0, #0x38
0056f384  00 10 a0 e3                                      mov r1, #0
0056f388  02 60 a0 e1                                      mov r6, r2
0056f38c  03 50 a0 e1                                      mov r5, r3
0056f390  85 13 ff eb                                      bl #0x5341ac
0056f394  08 10 a0 e1                                      mov r1, r8
0056f398  00 40 a0 e1                                      mov r4, r0
0056f39c  07 20 a0 e1                                      mov r2, r7
0056f3a0  06 30 a0 e1                                      mov r3, r6
0056f3a4  00 50 8d e5                                      str r5, [sp]
0056f3a8  cf ff ff eb                                      bl #0x56f2ec
0056f3ac  04 00 a0 e1                                      mov r0, r4
0056f3b0  08 d0 8d e2                                      add sp, sp, #8
0056f3b4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005707b4, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io14createReadFileEPKc
; demangled: glitch::io::createReadFile(char const*)
; decoder-mode: arm
005707b4  70 40 2d e9                                      push {r4, r5, r6, lr}
005707b8  00 10 a0 e3                                      mov r1, #0
005707bc  00 50 a0 e1                                      mov r5, r0
005707c0  30 00 a0 e3                                      mov r0, #0x30
005707c4  78 0e ff eb                                      bl #0x5341ac
005707c8  05 10 a0 e1                                      mov r1, r5
005707cc  00 40 a0 e1                                      mov r4, r0
005707d0  00 20 a0 e3                                      mov r2, #0
005707d4  d6 ff ff eb                                      bl #0x570734
005707d8  00 30 94 e5                                      ldr r3, [r4]
005707dc  04 00 a0 e1                                      mov r0, r4
005707e0  0f e0 a0 e1                                      mov lr, pc
005707e4  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
005707e8  00 50 50 e2                                      subs r5, r0, #0
005707ec  01 00 00 0a                                      beq #0x5707f8
005707f0  04 00 a0 e1                                      mov r0, r4
005707f4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005707f8  04 00 a0 e1                                      mov r0, r4
005707fc  60 b3 f6 eb                                      bl #0x31d584
00570800  05 00 a0 e1                                      mov r0, r5
00570804  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00570bf4, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io15createWriteFileEPKcb
; demangled: glitch::io::createWriteFile(char const*, bool)
; decoder-mode: arm
00570bf4  70 40 2d e9                                      push {r4, r5, r6, lr}
00570bf8  01 50 a0 e1                                      mov r5, r1
00570bfc  00 60 a0 e1                                      mov r6, r0
00570c00  00 10 a0 e3                                      mov r1, #0
00570c04  28 00 a0 e3                                      mov r0, #0x28
00570c08  67 0d ff eb                                      bl #0x5341ac
00570c0c  05 20 a0 e1                                      mov r2, r5
00570c10  00 40 a0 e1                                      mov r4, r0
00570c14  06 10 a0 e1                                      mov r1, r6
00570c18  d2 ff ff eb                                      bl #0x570b68
00570c1c  20 50 94 e5                                      ldr r5, [r4, #0x20]
00570c20  00 00 55 e3                                      cmp r5, #0
00570c24  01 00 00 0a                                      beq #0x570c30
00570c28  04 00 a0 e1                                      mov r0, r4
00570c2c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00570c30  04 00 a0 e1                                      mov r0, r4
00570c34  52 b2 f6 eb                                      bl #0x31d584
00570c38  05 00 a0 e1                                      mov r0, r5
00570c3c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00575268, declared_size=308, range_size=308, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io16createIXMLReaderEPNS0_9IReadFileE
; demangled: glitch::io::createIXMLReader(glitch::io::IReadFile*)
; decoder-mode: arm
00575268  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0057526c  1c 61 9f e5                                      ldr r6, [pc, #0x11c]
00575270  00 40 50 e2                                      subs r4, r0, #0
00575274  06 60 8f e0                                      add r6, pc, r6
00575278  42 00 00 0a                                      beq #0x575388
0057527c  00 10 a0 e3                                      mov r1, #0
00575280  08 00 a0 e3                                      mov r0, #8
00575284  c8 fb fe eb                                      bl #0x5341ac
00575288  04 31 9f e5                                      ldr r3, [pc, #0x104]
0057528c  00 70 a0 e1                                      mov r7, r0
00575290  04 40 80 e5                                      str r4, [r0, #4]
00575294  03 30 96 e7                                      ldr r3, [r6, r3]
00575298  00 10 a0 e3                                      mov r1, #0
0057529c  d0 00 a0 e3                                      mov r0, #0xd0
005752a0  08 30 83 e2                                      add r3, r3, #8
005752a4  00 30 87 e5                                      str r3, [r7]
005752a8  04 30 94 e5                                      ldr r3, [r4, #4]
005752ac  01 50 a0 e1                                      mov r5, r1
005752b0  01 30 83 e2                                      add r3, r3, #1
005752b4  04 30 84 e5                                      str r3, [r4, #4]
005752b8  bb fb fe eb                                      bl #0x5341ac
005752bc  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
005752c0  00 40 a0 e1                                      mov r4, r0
005752c4  24 30 80 e2                                      add r3, r0, #0x24
005752c8  02 20 96 e7                                      ldr r2, [r6, r2]
005752cc  01 10 a0 e3                                      mov r1, #1
005752d0  04 10 80 e5                                      str r1, [r0, #4]
005752d4  08 20 82 e2                                      add r2, r2, #8
005752d8  03 00 a0 e1                                      mov r0, r3
005752dc  00 20 84 e5                                      str r2, [r4]
005752e0  64 30 84 e5                                      str r3, [r4, #0x64]
005752e4  68 30 84 e5                                      str r3, [r4, #0x68]
005752e8  08 50 84 e5                                      str r5, [r4, #8]
005752ec  0c 50 84 e5                                      str r5, [r4, #0xc]
005752f0  10 50 84 e5                                      str r5, [r4, #0x10]
005752f4  14 50 84 e5                                      str r5, [r4, #0x14]
005752f8  18 50 84 e5                                      str r5, [r4, #0x18]
005752fc  1c 50 84 e5                                      str r5, [r4, #0x1c]
00575300  20 50 84 e5                                      str r5, [r4, #0x20]
00575304  10 10 a0 e3                                      mov r1, #0x10
00575308  84 ad f6 eb                                      bl #0x320920
0057530c  64 20 94 e5                                      ldr r2, [r4, #0x64]
00575310  6c 30 84 e2                                      add r3, r4, #0x6c
00575314  03 00 a0 e1                                      mov r0, r3
00575318  00 50 82 e5                                      str r5, [r2]
0057531c  10 10 a0 e3                                      mov r1, #0x10
00575320  ac 30 84 e5                                      str r3, [r4, #0xac]
00575324  b0 30 84 e5                                      str r3, [r4, #0xb0]
00575328  7c ad f6 eb                                      bl #0x320920
0057532c  ac 30 94 e5                                      ldr r3, [r4, #0xac]
00575330  07 10 a0 e1                                      mov r1, r7
00575334  04 00 a0 e1                                      mov r0, r4
00575338  00 50 83 e5                                      str r5, [r3]
0057533c  05 30 a0 e3                                      mov r3, #5
00575340  20 30 84 e5                                      str r3, [r4, #0x20]
00575344  cc 50 84 e5                                      str r5, [r4, #0xcc]
00575348  b8 50 84 e5                                      str r5, [r4, #0xb8]
0057534c  bc 50 84 e5                                      str r5, [r4, #0xbc]
00575350  c0 50 84 e5                                      str r5, [r4, #0xc0]
00575354  c4 50 84 e5                                      str r5, [r4, #0xc4]
00575358  c8 50 84 e5                                      str r5, [r4, #0xc8]
0057535c  68 f7 ff eb                                      bl #0x573104
00575360  00 30 97 e5                                      ldr r3, [r7]
00575364  07 00 a0 e1                                      mov r0, r7
00575368  0f e0 a0 e1                                      mov lr, pc
0057536c  04 f0 93 e5                                      ldr pc, [r3, #4]
00575370  04 00 a0 e1                                      mov r0, r4
00575374  63 ff ff eb                                      bl #0x575108
00575378  10 30 94 e5                                      ldr r3, [r4, #0x10]
0057537c  04 00 a0 e1                                      mov r0, r4
00575380  0c 30 84 e5                                      str r3, [r4, #0xc]
00575384  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00575388  04 00 a0 e1                                      mov r0, r4
0057538c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00575390  1c f8 41 00 88 0f 00 00 04 40 00 00              .byte 0x1c, 0xf8, 0x41, 0x00, 0x88, 0x0f, 0x00, 0x00, 0x04, 0x40, 0x00, 0x00

; FUNCTION 0x00576270, declared_size=304, range_size=304, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io20createIXMLReaderUTF8EPNS0_9IReadFileE
; demangled: glitch::io::createIXMLReaderUTF8(glitch::io::IReadFile*)
; decoder-mode: arm
00576270  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00576274  18 61 9f e5                                      ldr r6, [pc, #0x118]
00576278  00 40 50 e2                                      subs r4, r0, #0
0057627c  06 60 8f e0                                      add r6, pc, r6
00576280  41 00 00 0a                                      beq #0x57638c
00576284  00 10 a0 e3                                      mov r1, #0
00576288  08 00 a0 e3                                      mov r0, #8
0057628c  c6 f7 fe eb                                      bl #0x5341ac
00576290  00 31 9f e5                                      ldr r3, [pc, #0x100]
00576294  00 70 a0 e1                                      mov r7, r0
00576298  04 40 80 e5                                      str r4, [r0, #4]
0057629c  03 30 96 e7                                      ldr r3, [r6, r3]
005762a0  01 80 a0 e3                                      mov r8, #1
005762a4  00 10 a0 e3                                      mov r1, #0
005762a8  08 30 83 e2                                      add r3, r3, #8
005762ac  00 30 87 e5                                      str r3, [r7]
005762b0  04 30 94 e5                                      ldr r3, [r4, #4]
005762b4  70 00 a0 e3                                      mov r0, #0x70
005762b8  01 50 a0 e1                                      mov r5, r1
005762bc  08 30 83 e0                                      add r3, r3, r8
005762c0  04 30 84 e5                                      str r3, [r4, #4]
005762c4  b8 f7 fe eb                                      bl #0x5341ac
005762c8  cc 20 9f e5                                      ldr r2, [pc, #0xcc]
005762cc  00 40 a0 e1                                      mov r4, r0
005762d0  24 30 80 e2                                      add r3, r0, #0x24
005762d4  02 20 96 e7                                      ldr r2, [r6, r2]
005762d8  03 00 a0 e1                                      mov r0, r3
005762dc  34 30 84 e5                                      str r3, [r4, #0x34]
005762e0  08 20 82 e2                                      add r2, r2, #8
005762e4  00 20 84 e5                                      str r2, [r4]
005762e8  38 30 84 e5                                      str r3, [r4, #0x38]
005762ec  04 80 84 e5                                      str r8, [r4, #4]
005762f0  08 50 84 e5                                      str r5, [r4, #8]
005762f4  0c 50 84 e5                                      str r5, [r4, #0xc]
005762f8  10 50 84 e5                                      str r5, [r4, #0x10]
005762fc  14 50 84 e5                                      str r5, [r4, #0x14]
00576300  18 50 84 e5                                      str r5, [r4, #0x18]
00576304  1c 50 84 e5                                      str r5, [r4, #0x1c]
00576308  20 50 84 e5                                      str r5, [r4, #0x20]
0057630c  10 10 a0 e3                                      mov r1, #0x10
00576310  a4 a9 f6 eb                                      bl #0x3209a8
00576314  34 20 94 e5                                      ldr r2, [r4, #0x34]
00576318  3c 30 84 e2                                      add r3, r4, #0x3c
0057631c  03 00 a0 e1                                      mov r0, r3
00576320  00 50 c2 e5                                      strb r5, [r2]
00576324  10 10 a0 e3                                      mov r1, #0x10
00576328  4c 30 84 e5                                      str r3, [r4, #0x4c]
0057632c  50 30 84 e5                                      str r3, [r4, #0x50]
00576330  9c a9 f6 eb                                      bl #0x3209a8
00576334  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00576338  07 10 a0 e1                                      mov r1, r7
0057633c  04 00 a0 e1                                      mov r0, r4
00576340  00 50 c3 e5                                      strb r5, [r3]
00576344  6c 50 84 e5                                      str r5, [r4, #0x6c]
00576348  20 80 84 e5                                      str r8, [r4, #0x20]
0057634c  58 50 84 e5                                      str r5, [r4, #0x58]
00576350  5c 50 84 e5                                      str r5, [r4, #0x5c]
00576354  60 50 84 e5                                      str r5, [r4, #0x60]
00576358  64 50 84 e5                                      str r5, [r4, #0x64]
0057635c  68 50 84 e5                                      str r5, [r4, #0x68]
00576360  c4 f2 ff eb                                      bl #0x572e78
00576364  00 30 97 e5                                      ldr r3, [r7]
00576368  07 00 a0 e1                                      mov r0, r7
0057636c  0f e0 a0 e1                                      mov lr, pc
00576370  04 f0 93 e5                                      ldr pc, [r3, #4]
00576374  04 00 a0 e1                                      mov r0, r4
00576378  59 ff ff eb                                      bl #0x5760e4
0057637c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00576380  04 00 a0 e1                                      mov r0, r4
00576384  0c 30 84 e5                                      str r3, [r4, #0xc]
00576388  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0057638c  04 00 a0 e1                                      mov r0, r4
00576390  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00576394  14 e8 41 00 88 0f 00 00 b0 31 00 00              .byte 0x14, 0xe8, 0x41, 0x00, 0x88, 0x0f, 0x00, 0x00, 0xb0, 0x31, 0x00, 0x00

; FUNCTION 0x00578670, declared_size=348, range_size=348, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io10fromStringERKSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEEPNS_5video12IVideoDriverE
; demangled: glitch::io::fromString(std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> > const&, glitch::video::IVideoDriver*)
; decoder-mode: arm
00578670  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00578674  48 41 9f e5                                      ldr r4, [pc, #0x148]
00578678  48 71 9f e5                                      ldr r7, [pc, #0x148]
0057867c  54 d0 4d e2                                      sub sp, sp, #0x54
00578680  04 40 8f e0                                      add r4, pc, r4
00578684  07 30 94 e7                                      ldr r3, [r4, r7]
00578688  00 80 a0 e3                                      mov r8, #0
0057868c  00 90 52 e2                                      subs sb, r2, #0
00578690  00 30 93 e5                                      ldr r3, [r3]
00578694  00 60 a0 e1                                      mov r6, r0
00578698  00 80 80 e5                                      str r8, [r0]
0057869c  01 50 a0 e1                                      mov r5, r1
005786a0  4c 30 8d e5                                      str r3, [sp, #0x4c]
005786a4  3d 00 00 0a                                      beq #0x5787a0
005786a8  10 10 91 e5                                      ldr r1, [r1, #0x10]
005786ac  14 00 95 e5                                      ldr r0, [r5, #0x14]
005786b0  00 00 51 e1                                      cmp r1, r0
005786b4  39 00 00 0a                                      beq #0x5787a0
005786b8  50 20 8d e2                                      add r2, sp, #0x50
005786bc  3b 30 a0 e3                                      mov r3, #0x3b
005786c0  3c 30 62 e5                                      strb r3, [r2, #-0x3c]!
005786c4  18 30 8d e2                                      add r3, sp, #0x18
005786c8  4d 59 f7 eb                                      bl #0x34ec04
005786cc  10 30 95 e5                                      ldr r3, [r5, #0x10]
005786d0  34 a0 8d e2                                      add sl, sp, #0x34
005786d4  10 c0 8d e2                                      add ip, sp, #0x10
005786d8  03 00 50 e1                                      cmp r0, r3
005786dc  14 30 95 15                                      ldrne r3, [r5, #0x14]
005786e0  08 b0 a0 01                                      moveq fp, r8
005786e4  00 30 e0 03                                      mvneq r3, #0
005786e8  00 30 63 10                                      rsbne r3, r3, r0
005786ec  01 b0 83 12                                      addne fp, r3, #1
005786f0  05 10 a0 e1                                      mov r1, r5
005786f4  00 20 a0 e3                                      mov r2, #0
005786f8  0a 00 a0 e1                                      mov r0, sl
005786fc  1c 80 8d e2                                      add r8, sp, #0x1c
00578700  00 c0 8d e5                                      str ip, [sp]
00578704  6e cf ff eb                                      bl #0x56c4c4
00578708  0c c0 8d e2                                      add ip, sp, #0xc
0057870c  05 10 a0 e1                                      mov r1, r5
00578710  0b 20 a0 e1                                      mov r2, fp
00578714  00 30 e0 e3                                      mvn r3, #0
00578718  08 00 a0 e1                                      mov r0, r8
0057871c  00 c0 8d e5                                      str ip, [sp]
00578720  67 cf ff eb                                      bl #0x56c4c4
00578724  48 20 9d e5                                      ldr r2, [sp, #0x48]
00578728  08 00 8d e2                                      add r0, sp, #8
0057872c  30 30 9d e5                                      ldr r3, [sp, #0x30]
00578730  e0 10 99 e5                                      ldr r1, [sb, #0xe0]
00578734  b5 d2 01 eb                                      bl #0x5ed210
00578738  08 30 9d e5                                      ldr r3, [sp, #8]
0057873c  00 00 53 e3                                      cmp r3, #0
00578740  04 20 93 15                                      ldrne r2, [r3, #4]
00578744  01 20 82 12                                      addne r2, r2, #1
00578748  04 20 83 15                                      strne r2, [r3, #4]
0057874c  00 00 96 e5                                      ldr r0, [r6]
00578750  00 30 86 e5                                      str r3, [r6]
00578754  00 00 50 e3                                      cmp r0, #0
00578758  00 00 00 0a                                      beq #0x578760
0057875c  88 93 f6 eb                                      bl #0x31d584
00578760  08 00 9d e5                                      ldr r0, [sp, #8]
00578764  00 00 50 e3                                      cmp r0, #0
00578768  00 00 00 0a                                      beq #0x578770
0057876c  84 93 f6 eb                                      bl #0x31d584
00578770  30 00 9d e5                                      ldr r0, [sp, #0x30]
00578774  08 00 50 e1                                      cmp r0, r8
00578778  02 00 00 0a                                      beq #0x578788
0057877c  00 00 50 e3                                      cmp r0, #0
00578780  00 00 00 0a                                      beq #0x578788
00578784  31 5f f6 eb                                      bl #0x310450
00578788  48 00 9d e5                                      ldr r0, [sp, #0x48]
0057878c  0a 00 50 e1                                      cmp r0, sl
00578790  02 00 00 0a                                      beq #0x5787a0
00578794  00 00 50 e3                                      cmp r0, #0
00578798  00 00 00 0a                                      beq #0x5787a0
0057879c  2b 5f f6 eb                                      bl #0x310450
005787a0  07 30 94 e7                                      ldr r3, [r4, r7]
005787a4  4c 20 9d e5                                      ldr r2, [sp, #0x4c]
005787a8  06 00 a0 e1                                      mov r0, r6
005787ac  00 30 93 e5                                      ldr r3, [r3]
005787b0  03 00 52 e1                                      cmp r2, r3
005787b4  01 00 00 1a                                      bne #0x5787c0
005787b8  54 d0 8d e2                                      add sp, sp, #0x54
005787bc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005787c0  d2 56 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005787c4  10 c4 41 00 ac 40 00 00                          .byte 0x10, 0xc4, 0x41, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x005787cc, declared_size=340, range_size=340, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io8toStringERKN5boost13intrusive_ptrINS_5video8ITextureEEEPNS3_12IVideoDriverE
; demangled: glitch::io::toString(boost::intrusive_ptr<glitch::video::ITexture> const&, glitch::video::IVideoDriver*)
; decoder-mode: arm
005787cc  70 40 2d e9                                      push {r4, r5, r6, lr}
005787d0  00 40 a0 e1                                      mov r4, r0
005787d4  01 50 a0 e1                                      mov r5, r1
005787d8  10 00 84 e5                                      str r0, [r4, #0x10]
005787dc  10 10 a0 e3                                      mov r1, #0x10
005787e0  14 00 84 e5                                      str r0, [r4, #0x14]
005787e4  02 60 a0 e1                                      mov r6, r2
005787e8  6e a0 f6 eb                                      bl #0x3209a8
005787ec  10 20 94 e5                                      ldr r2, [r4, #0x10]
005787f0  00 10 a0 e3                                      mov r1, #0
005787f4  18 31 9f e5                                      ldr r3, [pc, #0x118]
005787f8  00 10 c2 e5                                      strb r1, [r2]
005787fc  00 20 95 e5                                      ldr r2, [r5]
00578800  03 30 8f e0                                      add r3, pc, r3
00578804  01 00 52 e1                                      cmp r2, r1
00578808  30 00 00 0a                                      beq #0x5788d0
0057880c  01 00 56 e1                                      cmp r6, r1
00578810  2e 00 00 0a                                      beq #0x5788d0
00578814  e0 00 96 e5                                      ldr r0, [r6, #0xe0]
00578818  bc 13 d2 e1                                      ldrh r1, [r2, #0x3c]
0057881c  1c c0 90 e5                                      ldr ip, [r0, #0x1c]
00578820  18 20 90 e5                                      ldr r2, [r0, #0x18]
00578824  0c 00 62 e0                                      rsb r0, r2, ip
00578828  c0 01 51 e1                                      cmp r1, r0, asr #3
0057882c  81 31 82 30                                      addlo r3, r2, r1, lsl #3
00578830  28 00 00 2a                                      bhs #0x5788d8
00578834  00 30 93 e5                                      ldr r3, [r3]
00578838  00 00 53 e3                                      cmp r3, #0
0057883c  28 00 00 0a                                      beq #0x5788e4
00578840  81 21 82 e0                                      add r2, r2, r1, lsl #3
00578844  04 30 92 e5                                      ldr r3, [r2, #4]
00578848  28 20 93 e5                                      ldr r2, [r3, #0x28]
0057884c  2c 60 93 e5                                      ldr r6, [r3, #0x2c]
00578850  02 00 56 e1                                      cmp r6, r2
00578854  22 00 00 0a                                      beq #0x5788e4
00578858  00 00 56 e3                                      cmp r6, #0
0057885c  20 00 00 0a                                      beq #0x5788e4
00578860  06 00 a0 e1                                      mov r0, r6
00578864  7a 55 f6 eb                                      bl #0x30de54
00578868  00 20 86 e0                                      add r2, r6, r0
0057886c  06 10 a0 e1                                      mov r1, r6
00578870  04 00 a0 e1                                      mov r0, r4
00578874  c3 a0 f6 eb                                      bl #0x320b88
00578878  14 30 94 e5                                      ldr r3, [r4, #0x14]
0057887c  03 00 54 e1                                      cmp r4, r3
00578880  10 30 94 05                                      ldreq r3, [r4, #0x10]
00578884  00 10 94 15                                      ldrne r1, [r4]
00578888  10 30 94 15                                      ldrne r3, [r4, #0x10]
0057888c  10 10 84 02                                      addeq r1, r4, #0x10
00578890  01 10 63 e0                                      rsb r1, r3, r1
00578894  01 00 51 e3                                      cmp r1, #1
00578898  16 00 00 0a                                      beq #0x5788f8
0057889c  00 20 a0 e3                                      mov r2, #0
005788a0  01 20 c3 e5                                      strb r2, [r3, #1]
005788a4  10 30 94 e5                                      ldr r3, [r4, #0x10]
005788a8  3b 20 a0 e3                                      mov r2, #0x3b
005788ac  04 00 a0 e1                                      mov r0, r4
005788b0  00 20 c3 e5                                      strb r2, [r3]
005788b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
005788b8  01 30 83 e2                                      add r3, r3, #1
005788bc  10 30 84 e5                                      str r3, [r4, #0x10]
005788c0  00 30 95 e5                                      ldr r3, [r5]
005788c4  18 20 93 e5                                      ldr r2, [r3, #0x18]
005788c8  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
005788cc  5e a0 f6 eb                                      bl #0x320a4c
005788d0  04 00 a0 e1                                      mov r0, r4
005788d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005788d8  38 00 9f e5                                      ldr r0, [pc, #0x38]
005788dc  00 30 93 e7                                      ldr r3, [r3, r0]
005788e0  d3 ff ff ea                                      b #0x578834
005788e4  30 20 9f e5                                      ldr r2, [pc, #0x30]
005788e8  02 20 8f e0                                      add r2, pc, r2
005788ec  02 60 a0 e1                                      mov r6, r2
005788f0  06 20 82 e2                                      add r2, r2, #6
005788f4  dc ff ff ea                                      b #0x57886c
005788f8  04 00 a0 e1                                      mov r0, r4
005788fc  95 9e f6 eb                                      bl #0x320358
00578900  00 10 a0 e1                                      mov r1, r0
00578904  04 00 a0 e1                                      mov r0, r4
00578908  85 f5 fa eb                                      bl #0x435f24
0057890c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00578910  e1 ff ff ea                                      b #0x57889c
; mapping-symbol data/literal pool
00578914  90 c2 41 00 e8 10 00 00 18 35 36 00              .byte 0x90, 0xc2, 0x41, 0x00, 0xe8, 0x10, 0x00, 0x00, 0x18, 0x35, 0x36, 0x00

; FUNCTION 0x006b4a70, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io19createLimitReadFileEPKcPNS0_9IReadFileEl
; demangled: glitch::io::createLimitReadFile(char const*, glitch::io::IReadFile*, long)
; decoder-mode: arm
006b4a70  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
006b4a74  00 50 a0 e1                                      mov r5, r0
006b4a78  01 60 a0 e1                                      mov r6, r1
006b4a7c  50 00 a0 e3                                      mov r0, #0x50
006b4a80  00 10 a0 e3                                      mov r1, #0
006b4a84  02 70 a0 e1                                      mov r7, r2
006b4a88  c7 fd f9 eb                                      bl #0x5341ac
006b4a8c  06 10 a0 e1                                      mov r1, r6
006b4a90  00 40 a0 e1                                      mov r4, r0
006b4a94  07 20 a0 e1                                      mov r2, r7
006b4a98  05 30 a0 e1                                      mov r3, r5
006b4a9c  c8 ff ff eb                                      bl #0x6b49c4
006b4aa0  04 00 a0 e1                                      mov r0, r4
006b4aa4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x006b58a8, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io22getVertexStreamsStrideERKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEE
; demangled: glitch::io::getVertexStreamsStride(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&)
; decoder-mode: arm
006b58a8  f8 4f 2d e9                                      push {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b58ac  00 40 90 e5                                      ldr r4, [r0]
006b58b0  d0 70 9f e5                                      ldr r7, [pc, #0xd0]
006b58b4  10 30 94 e5                                      ldr r3, [r4, #0x10]
006b58b8  14 90 84 e2                                      add sb, r4, #0x14
006b58bc  07 70 8f e0                                      add r7, pc, r7
006b58c0  03 00 59 e1                                      cmp sb, r3
006b58c4  00 60 a0 03                                      moveq r6, #0
006b58c8  28 00 00 0a                                      beq #0x6b5970
006b58cc  24 b0 84 e2                                      add fp, r4, #0x24
006b58d0  03 b0 6b e0                                      rsb fp, fp, r3
006b58d4  2b b2 a0 e1                                      lsr fp, fp, #4
006b58d8  ac a0 9f e5                                      ldr sl, [pc, #0xac]
006b58dc  10 80 84 e2                                      add r8, r4, #0x10
006b58e0  0b 82 88 e0                                      add r8, r8, fp, lsl #4
006b58e4  00 60 a0 e3                                      mov r6, #0
006b58e8  14 30 94 e5                                      ldr r3, [r4, #0x14]
006b58ec  06 00 a0 e1                                      mov r0, r6
006b58f0  00 00 53 e3                                      cmp r3, #0
006b58f4  0a 00 00 0a                                      beq #0x6b5924
006b58f8  be 31 d4 e1                                      ldrh r3, [r4, #0x1e]
006b58fc  0a 20 97 e7                                      ldr r2, [r7, sl]
006b5900  03 50 d2 e7                                      ldrb r5, [r2, r3]
006b5904  05 10 a0 e1                                      mov r1, r5
006b5908  87 64 f1 eb                                      bl #0x30eb2c
006b590c  05 00 61 e0                                      rsb r0, r1, r5
006b5910  05 10 a0 e1                                      mov r1, r5
006b5914  84 64 f1 eb                                      bl #0x30eb2c
006b5918  b0 32 d4 e1                                      ldrh r3, [r4, #0x20]
006b591c  93 65 26 e0                                      mla r6, r3, r5, r6
006b5920  01 60 86 e0                                      add r6, r6, r1
006b5924  10 40 84 e2                                      add r4, r4, #0x10
006b5928  08 00 54 e1                                      cmp r4, r8
006b592c  ed ff ff 1a                                      bne #0x6b58e8
006b5930  01 b0 8b e2                                      add fp, fp, #1
006b5934  0b b2 89 e0                                      add fp, sb, fp, lsl #4
006b5938  00 30 99 e5                                      ldr r3, [sb]
006b593c  00 00 53 e3                                      cmp r3, #0
006b5940  0c 00 00 0a                                      beq #0x6b5978
006b5944  40 20 9f e5                                      ldr r2, [pc, #0x40]
006b5948  ba 30 d9 e1                                      ldrh r3, [sb, #0xa]
006b594c  06 00 a0 e1                                      mov r0, r6
006b5950  02 20 97 e7                                      ldr r2, [r7, r2]
006b5954  03 40 d2 e7                                      ldrb r4, [r2, r3]
006b5958  04 10 a0 e1                                      mov r1, r4
006b595c  72 64 f1 eb                                      bl #0x30eb2c
006b5960  04 00 61 e0                                      rsb r0, r1, r4
006b5964  04 10 a0 e1                                      mov r1, r4
006b5968  6f 64 f1 eb                                      bl #0x30eb2c
006b596c  06 60 81 e0                                      add r6, r1, r6
006b5970  06 00 a0 e1                                      mov r0, r6
006b5974  f8 8f bd e8                                      pop {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b5978  10 90 89 e2                                      add sb, sb, #0x10
006b597c  0b 00 59 e1                                      cmp sb, fp
006b5980  ec ff ff 1a                                      bne #0x6b5938
006b5984  f9 ff ff ea                                      b #0x6b5970
; mapping-symbol data/literal pool
006b5988  d4 f1 2d 00 08 11 00 00                          .byte 0xd4, 0xf1, 0x2d, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x006b5dd4, declared_size=960, range_size=960, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io4saveERKNS_5video16CPrimitiveStreamEPNS0_10IWriteFileEb
; demangled: glitch::io::save(glitch::video::CPrimitiveStream const&, glitch::io::IWriteFile*, bool)
; decoder-mode: arm
006b5dd4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
006b5dd8  00 70 52 e2                                      subs r7, r2, #0
006b5ddc  14 d0 4d e2                                      sub sp, sp, #0x14
006b5de0  00 60 a0 e1                                      mov r6, r0
006b5de4  01 40 a0 e1                                      mov r4, r1
006b5de8  71 00 00 0a                                      beq #0x6b5fb4
006b5dec  b6 31 d0 e1                                      ldrh r3, [r0, #0x16]
006b5df0  00 10 a0 e3                                      mov r1, #0
006b5df4  04 10 cd e5                                      strb r1, [sp, #4]
006b5df8  23 24 a0 e1                                      lsr r2, r3, #8
006b5dfc  05 10 cd e5                                      strb r1, [sp, #5]
006b5e00  06 20 cd e5                                      strb r2, [sp, #6]
006b5e04  07 30 cd e5                                      strb r3, [sp, #7]
006b5e08  04 30 9d e5                                      ldr r3, [sp, #4]
006b5e0c  0c 50 8d e2                                      add r5, sp, #0xc
006b5e10  05 10 a0 e1                                      mov r1, r5
006b5e14  0c 30 8d e5                                      str r3, [sp, #0xc]
006b5e18  00 30 94 e5                                      ldr r3, [r4]
006b5e1c  04 20 a0 e3                                      mov r2, #4
006b5e20  04 00 a0 e1                                      mov r0, r4
006b5e24  0f e0 a0 e1                                      mov lr, pc
006b5e28  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5e2c  b4 31 d6 e1                                      ldrh r3, [r6, #0x14]
006b5e30  00 10 a0 e3                                      mov r1, #0
006b5e34  04 10 cd e5                                      strb r1, [sp, #4]
006b5e38  23 24 a0 e1                                      lsr r2, r3, #8
006b5e3c  05 10 cd e5                                      strb r1, [sp, #5]
006b5e40  06 20 cd e5                                      strb r2, [sp, #6]
006b5e44  07 30 cd e5                                      strb r3, [sp, #7]
006b5e48  04 20 9d e5                                      ldr r2, [sp, #4]
006b5e4c  00 30 94 e5                                      ldr r3, [r4]
006b5e50  05 10 a0 e1                                      mov r1, r5
006b5e54  0c 20 8d e5                                      str r2, [sp, #0xc]
006b5e58  04 00 a0 e1                                      mov r0, r4
006b5e5c  04 20 a0 e3                                      mov r2, #4
006b5e60  0f e0 a0 e1                                      mov lr, pc
006b5e64  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5e68  08 30 96 e5                                      ldr r3, [r6, #8]
006b5e6c  05 10 a0 e1                                      mov r1, r5
006b5e70  04 20 a0 e3                                      mov r2, #4
006b5e74  23 ec a0 e1                                      lsr lr, r3, #0x18
006b5e78  53 c8 e7 e7                                      ubfx ip, r3, #0x10, #8
006b5e7c  53 04 e7 e7                                      ubfx r0, r3, #8, #8
006b5e80  04 e0 cd e5                                      strb lr, [sp, #4]
006b5e84  06 00 cd e5                                      strb r0, [sp, #6]
006b5e88  05 c0 cd e5                                      strb ip, [sp, #5]
006b5e8c  07 30 cd e5                                      strb r3, [sp, #7]
006b5e90  04 c0 9d e5                                      ldr ip, [sp, #4]
006b5e94  00 30 94 e5                                      ldr r3, [r4]
006b5e98  04 00 a0 e1                                      mov r0, r4
006b5e9c  0c c0 8d e5                                      str ip, [sp, #0xc]
006b5ea0  0f e0 a0 e1                                      mov lr, pc
006b5ea4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5ea8  06 00 a0 e1                                      mov r0, r6
006b5eac  13 a9 fb eb                                      bl #0x5a0300
006b5eb0  20 1c a0 e1                                      lsr r1, r0, #0x18
006b5eb4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
006b5eb8  50 34 e7 e7                                      ubfx r3, r0, #8, #8
006b5ebc  04 10 cd e5                                      strb r1, [sp, #4]
006b5ec0  07 00 cd e5                                      strb r0, [sp, #7]
006b5ec4  05 20 cd e5                                      strb r2, [sp, #5]
006b5ec8  06 30 cd e5                                      strb r3, [sp, #6]
006b5ecc  04 20 9d e5                                      ldr r2, [sp, #4]
006b5ed0  00 30 94 e5                                      ldr r3, [r4]
006b5ed4  05 10 a0 e1                                      mov r1, r5
006b5ed8  0c 20 8d e5                                      str r2, [sp, #0xc]
006b5edc  04 00 a0 e1                                      mov r0, r4
006b5ee0  04 20 a0 e3                                      mov r2, #4
006b5ee4  0f e0 a0 e1                                      mov lr, pc
006b5ee8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5eec  0c 20 96 e5                                      ldr r2, [r6, #0xc]
006b5ef0  00 30 94 e5                                      ldr r3, [r4]
006b5ef4  05 10 a0 e1                                      mov r1, r5
006b5ef8  22 ec a0 e1                                      lsr lr, r2, #0x18
006b5efc  52 c8 e7 e7                                      ubfx ip, r2, #0x10, #8
006b5f00  52 04 e7 e7                                      ubfx r0, r2, #8, #8
006b5f04  04 e0 cd e5                                      strb lr, [sp, #4]
006b5f08  06 00 cd e5                                      strb r0, [sp, #6]
006b5f0c  07 20 cd e5                                      strb r2, [sp, #7]
006b5f10  05 c0 cd e5                                      strb ip, [sp, #5]
006b5f14  04 c0 9d e5                                      ldr ip, [sp, #4]
006b5f18  04 20 a0 e3                                      mov r2, #4
006b5f1c  04 00 a0 e1                                      mov r0, r4
006b5f20  0c c0 8d e5                                      str ip, [sp, #0xc]
006b5f24  0f e0 a0 e1                                      mov lr, pc
006b5f28  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5f2c  10 20 96 e5                                      ldr r2, [r6, #0x10]
006b5f30  00 30 94 e5                                      ldr r3, [r4]
006b5f34  05 10 a0 e1                                      mov r1, r5
006b5f38  52 c8 e7 e7                                      ubfx ip, r2, #0x10, #8
006b5f3c  52 04 e7 e7                                      ubfx r0, r2, #8, #8
006b5f40  22 ec a0 e1                                      lsr lr, r2, #0x18
006b5f44  06 00 cd e5                                      strb r0, [sp, #6]
006b5f48  07 20 cd e5                                      strb r2, [sp, #7]
006b5f4c  04 e0 cd e5                                      strb lr, [sp, #4]
006b5f50  05 c0 cd e5                                      strb ip, [sp, #5]
006b5f54  04 c0 9d e5                                      ldr ip, [sp, #4]
006b5f58  04 00 a0 e1                                      mov r0, r4
006b5f5c  04 20 a0 e3                                      mov r2, #4
006b5f60  0c c0 8d e5                                      str ip, [sp, #0xc]
006b5f64  0f e0 a0 e1                                      mov lr, pc
006b5f68  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5f6c  00 30 96 e5                                      ldr r3, [r6]
006b5f70  00 00 53 e3                                      cmp r3, #0
006b5f74  0b 00 00 0a                                      beq #0x6b5fa8
006b5f78  08 10 93 e5                                      ldr r1, [r3, #8]
006b5f7c  04 30 96 e5                                      ldr r3, [r6, #4]
006b5f80  00 00 57 e3                                      cmp r7, #0
006b5f84  03 10 81 e0                                      add r1, r1, r3
006b5f88  3c 00 00 0a                                      beq #0x6b6080
006b5f8c  b4 31 d6 e1                                      ldrh r3, [r6, #0x14]
006b5f90  00 00 53 e3                                      cmp r3, #0
006b5f94  3d 00 00 0a                                      beq #0x6b6090
006b5f98  01 00 53 e3                                      cmp r3, #1
006b5f9c  47 00 00 0a                                      beq #0x6b60c0
006b5fa0  02 00 53 e3                                      cmp r3, #2
006b5fa4  5d 00 00 0a                                      beq #0x6b6120
006b5fa8  18 00 a0 e3                                      mov r0, #0x18
006b5fac  14 d0 8d e2                                      add sp, sp, #0x14
006b5fb0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
006b5fb4  b6 31 d0 e1                                      ldrh r3, [r0, #0x16]
006b5fb8  10 50 8d e2                                      add r5, sp, #0x10
006b5fbc  04 20 a0 e3                                      mov r2, #4
006b5fc0  04 30 25 e5                                      str r3, [r5, #-4]!
006b5fc4  05 10 a0 e1                                      mov r1, r5
006b5fc8  00 30 94 e5                                      ldr r3, [r4]
006b5fcc  04 00 a0 e1                                      mov r0, r4
006b5fd0  0f e0 a0 e1                                      mov lr, pc
006b5fd4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5fd8  b4 31 d6 e1                                      ldrh r3, [r6, #0x14]
006b5fdc  05 10 a0 e1                                      mov r1, r5
006b5fe0  04 20 a0 e3                                      mov r2, #4
006b5fe4  0c 30 8d e5                                      str r3, [sp, #0xc]
006b5fe8  00 30 94 e5                                      ldr r3, [r4]
006b5fec  04 00 a0 e1                                      mov r0, r4
006b5ff0  0f e0 a0 e1                                      mov lr, pc
006b5ff4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b5ff8  08 30 96 e5                                      ldr r3, [r6, #8]
006b5ffc  05 10 a0 e1                                      mov r1, r5
006b6000  04 20 a0 e3                                      mov r2, #4
006b6004  0c 30 8d e5                                      str r3, [sp, #0xc]
006b6008  00 30 94 e5                                      ldr r3, [r4]
006b600c  04 00 a0 e1                                      mov r0, r4
006b6010  0f e0 a0 e1                                      mov lr, pc
006b6014  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b6018  06 00 a0 e1                                      mov r0, r6
006b601c  b7 a8 fb eb                                      bl #0x5a0300
006b6020  0c 00 8d e5                                      str r0, [sp, #0xc]
006b6024  05 10 a0 e1                                      mov r1, r5
006b6028  00 30 94 e5                                      ldr r3, [r4]
006b602c  04 20 a0 e3                                      mov r2, #4
006b6030  04 00 a0 e1                                      mov r0, r4
006b6034  0f e0 a0 e1                                      mov lr, pc
006b6038  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b603c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
006b6040  05 10 a0 e1                                      mov r1, r5
006b6044  04 20 a0 e3                                      mov r2, #4
006b6048  0c 30 8d e5                                      str r3, [sp, #0xc]
006b604c  00 30 94 e5                                      ldr r3, [r4]
006b6050  04 00 a0 e1                                      mov r0, r4
006b6054  0f e0 a0 e1                                      mov lr, pc
006b6058  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b605c  10 20 96 e5                                      ldr r2, [r6, #0x10]
006b6060  00 30 94 e5                                      ldr r3, [r4]
006b6064  05 10 a0 e1                                      mov r1, r5
006b6068  0c 20 8d e5                                      str r2, [sp, #0xc]
006b606c  04 00 a0 e1                                      mov r0, r4
006b6070  04 20 a0 e3                                      mov r2, #4
006b6074  0f e0 a0 e1                                      mov lr, pc
006b6078  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b607c  ba ff ff ea                                      b #0x6b5f6c
006b6080  b4 31 d6 e1                                      ldrh r3, [r6, #0x14]
006b6084  01 30 43 e2                                      sub r3, r3, #1
006b6088  01 00 53 e3                                      cmp r3, #1
006b608c  05 00 00 9a                                      bls #0x6b60a8
006b6090  00 20 a0 e3                                      mov r2, #0
006b6094  04 00 a0 e1                                      mov r0, r4
006b6098  00 30 94 e5                                      ldr r3, [r4]
006b609c  0f e0 a0 e1                                      mov lr, pc
006b60a0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b60a4  bf ff ff ea                                      b #0x6b5fa8
006b60a8  e0 00 9f e5                                      ldr r0, [pc, #0xe0]
006b60ac  08 20 96 e5                                      ldr r2, [r6, #8]
006b60b0  00 00 8f e0                                      add r0, pc, r0
006b60b4  03 31 90 e7                                      ldr r3, [r0, r3, lsl #2]
006b60b8  92 03 02 e0                                      mul r2, r2, r3
006b60bc  f4 ff ff ea                                      b #0x6b6094
006b60c0  08 70 96 e5                                      ldr r7, [r6, #8]
006b60c4  01 50 a0 e1                                      mov r5, r1
006b60c8  87 70 81 e0                                      add r7, r1, r7, lsl #1
006b60cc  07 00 51 e1                                      cmp r1, r7
006b60d0  b4 ff ff 0a                                      beq #0x6b5fa8
006b60d4  04 80 8d e2                                      add r8, sp, #4
006b60d8  08 60 8d e2                                      add r6, sp, #8
006b60dc  00 30 a0 e3                                      mov r3, #0
006b60e0  b4 30 cd e1                                      strh r3, [sp, #4]
006b60e4  01 20 d5 e5                                      ldrb r2, [r5, #1]
006b60e8  00 30 94 e5                                      ldr r3, [r4]
006b60ec  04 00 a0 e1                                      mov r0, r4
006b60f0  04 20 cd e5                                      strb r2, [sp, #4]
006b60f4  02 c0 d5 e4                                      ldrb ip, [r5], #2
006b60f8  06 10 a0 e1                                      mov r1, r6
006b60fc  02 20 a0 e3                                      mov r2, #2
006b6100  05 c0 cd e5                                      strb ip, [sp, #5]
006b6104  b0 c0 d8 e1                                      ldrh ip, [r8]
006b6108  b8 c0 cd e1                                      strh ip, [sp, #8]
006b610c  0f e0 a0 e1                                      mov lr, pc
006b6110  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b6114  05 00 57 e1                                      cmp r7, r5
006b6118  ef ff ff 1a                                      bne #0x6b60dc
006b611c  a1 ff ff ea                                      b #0x6b5fa8
006b6120  08 70 96 e5                                      ldr r7, [r6, #8]
006b6124  01 50 a0 e1                                      mov r5, r1
006b6128  07 71 81 e0                                      add r7, r1, r7, lsl #2
006b612c  07 00 51 e1                                      cmp r1, r7
006b6130  9c ff ff 0a                                      beq #0x6b5fa8
006b6134  04 80 8d e2                                      add r8, sp, #4
006b6138  08 60 8d e2                                      add r6, sp, #8
006b613c  00 a0 a0 e3                                      mov sl, #0
006b6140  04 a0 8d e5                                      str sl, [sp, #4]
006b6144  03 20 d5 e5                                      ldrb r2, [r5, #3]
006b6148  00 30 94 e5                                      ldr r3, [r4]
006b614c  04 00 a0 e1                                      mov r0, r4
006b6150  04 20 cd e5                                      strb r2, [sp, #4]
006b6154  02 c0 d5 e5                                      ldrb ip, [r5, #2]
006b6158  06 10 a0 e1                                      mov r1, r6
006b615c  04 20 a0 e3                                      mov r2, #4
006b6160  05 c0 cd e5                                      strb ip, [sp, #5]
006b6164  01 c0 d5 e5                                      ldrb ip, [r5, #1]
006b6168  06 c0 cd e5                                      strb ip, [sp, #6]
006b616c  04 c0 d5 e4                                      ldrb ip, [r5], #4
006b6170  07 c0 cd e5                                      strb ip, [sp, #7]
006b6174  00 c0 98 e5                                      ldr ip, [r8]
006b6178  08 c0 8d e5                                      str ip, [sp, #8]
006b617c  0f e0 a0 e1                                      mov lr, pc
006b6180  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b6184  05 00 57 e1                                      cmp r7, r5
006b6188  ec ff ff 1a                                      bne #0x6b6140
006b618c  85 ff ff ea                                      b #0x6b5fa8
; mapping-symbol data/literal pool
006b6190  74 51 23 00                                      .byte 0x74, 0x51, 0x23, 0x00

; FUNCTION 0x006b61fc, declared_size=1112, range_size=1112, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io6loadPSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
; demangled: glitch::io::loadPS(glitch::io::IReadFile*, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
006b61fc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b6200  54 d0 4d e2                                      sub sp, sp, #0x54
006b6204  40 84 9f e5                                      ldr r8, [pc, #0x440]
006b6208  2c 70 8d e2                                      add r7, sp, #0x2c
006b620c  02 90 a0 e1                                      mov sb, r2
006b6210  00 c0 91 e5                                      ldr ip, [r1]
006b6214  01 50 a0 e1                                      mov r5, r1
006b6218  00 40 a0 e1                                      mov r4, r0
006b621c  18 20 a0 e3                                      mov r2, #0x18
006b6220  01 00 a0 e1                                      mov r0, r1
006b6224  07 10 a0 e1                                      mov r1, r7
006b6228  03 a0 a0 e1                                      mov sl, r3
006b622c  0f e0 a0 e1                                      mov lr, pc
006b6230  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006b6234  00 00 59 e3                                      cmp sb, #0
006b6238  08 80 8f e0                                      add r8, pc, r8
006b623c  43 00 00 1a                                      bne #0x6b6350
006b6240  30 60 9d e5                                      ldr r6, [sp, #0x30]
006b6244  2c b0 9d e5                                      ldr fp, [sp, #0x2c]
006b6248  ff 00 56 e3                                      cmp r6, #0xff
006b624c  98 00 00 0a                                      beq #0x6b64b4
006b6250  f8 33 9f e5                                      ldr r3, [pc, #0x3f8]
006b6254  34 70 9d e5                                      ldr r7, [sp, #0x34]
006b6258  00 20 9a e5                                      ldr r2, [sl]
006b625c  03 30 98 e7                                      ldr r3, [r8, r3]
006b6260  00 10 a0 e3                                      mov r1, #0
006b6264  78 80 92 e5                                      ldr r8, [r2, #0x78]
006b6268  06 31 93 e7                                      ldr r3, [r3, r6, lsl #2]
006b626c  97 03 07 e0                                      mul r7, r7, r3
006b6270  07 00 a0 e1                                      mov r0, r7
006b6274  cb f7 f9 eb                                      bl #0x5341a8
006b6278  01 30 a0 e3                                      mov r3, #1
006b627c  0a 10 a0 e1                                      mov r1, sl
006b6280  03 20 a0 e1                                      mov r2, r3
006b6284  09 00 8d e9                                      stmib sp, {r0, r3}
006b6288  48 00 8d e2                                      add r0, sp, #0x48
006b628c  04 30 a0 e3                                      mov r3, #4
006b6290  00 70 8d e5                                      str r7, [sp]
006b6294  38 ff 2f e1                                      blx r8
006b6298  48 00 9d e5                                      ldr r0, [sp, #0x48]
006b629c  04 10 a0 e3                                      mov r1, #4
006b62a0  d2 ad fb eb                                      bl #0x5a19f0
006b62a4  00 00 59 e3                                      cmp sb, #0
006b62a8  00 a0 a0 e1                                      mov sl, r0
006b62ac  01 00 00 0a                                      beq #0x6b62b8
006b62b0  00 00 56 e3                                      cmp r6, #0
006b62b4  8a 00 00 1a                                      bne #0x6b64e4
006b62b8  05 00 a0 e1                                      mov r0, r5
006b62bc  0a 10 a0 e1                                      mov r1, sl
006b62c0  07 20 a0 e1                                      mov r2, r7
006b62c4  00 30 95 e5                                      ldr r3, [r5]
006b62c8  0f e0 a0 e1                                      mov lr, pc
006b62cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b62d0  48 50 9d e5                                      ldr r5, [sp, #0x48]
006b62d4  13 30 d5 e5                                      ldrb r3, [r5, #0x13]
006b62d8  1f 20 03 e2                                      and r2, r3, #0x1f
006b62dc  01 00 52 e3                                      cmp r2, #1
006b62e0  ad 00 00 9a                                      bls #0x6b659c
006b62e4  01 20 42 e2                                      sub r2, r2, #1
006b62e8  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b62ec  03 30 82 e1                                      orr r3, r2, r3
006b62f0  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b62f4  48 00 9d e5                                      ldr r0, [sp, #0x48]
006b62f8  34 10 9d e5                                      ldr r1, [sp, #0x34]
006b62fc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
006b6300  00 00 50 e3                                      cmp r0, #0
006b6304  00 00 84 e5                                      str r0, [r4]
006b6308  04 c0 90 15                                      ldrne ip, [r0, #4]
006b630c  40 30 9d e5                                      ldr r3, [sp, #0x40]
006b6310  01 c0 8c 12                                      addne ip, ip, #1
006b6314  04 c0 80 15                                      strne ip, [r0, #4]
006b6318  48 00 9d 15                                      ldrne r0, [sp, #0x48]
006b631c  00 c0 a0 e3                                      mov ip, #0
006b6320  04 c0 84 e5                                      str ip, [r4, #4]
006b6324  00 00 50 e3                                      cmp r0, #0
006b6328  08 10 84 e5                                      str r1, [r4, #8]
006b632c  0c 20 84 e5                                      str r2, [r4, #0xc]
006b6330  10 30 84 e5                                      str r3, [r4, #0x10]
006b6334  b4 61 c4 e1                                      strh r6, [r4, #0x14]
006b6338  b6 b1 c4 e1                                      strh fp, [r4, #0x16]
006b633c  00 00 00 0a                                      beq #0x6b6344
006b6340  8f 9c f1 eb                                      bl #0x31d584
006b6344  04 00 a0 e1                                      mov r0, r4
006b6348  54 d0 8d e2                                      add sp, sp, #0x54
006b634c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b6350  04 30 87 e2                                      add r3, r7, #4
006b6354  01 20 d3 e5                                      ldrb r2, [r3, #1]
006b6358  2f 60 dd e5                                      ldrb r6, [sp, #0x2f]
006b635c  2e c0 dd e5                                      ldrb ip, [sp, #0x2e]
006b6360  14 20 8d e5                                      str r2, [sp, #0x14]
006b6364  03 20 d3 e5                                      ldrb r2, [r3, #3]
006b6368  02 30 d3 e5                                      ldrb r3, [r3, #2]
006b636c  2d 00 dd e5                                      ldrb r0, [sp, #0x2d]
006b6370  2c 10 dd e5                                      ldrb r1, [sp, #0x2c]
006b6374  10 30 8d e5                                      str r3, [sp, #0x10]
006b6378  30 30 dd e5                                      ldrb r3, [sp, #0x30]
006b637c  18 30 8d e5                                      str r3, [sp, #0x18]
006b6380  08 30 87 e2                                      add r3, r7, #8
006b6384  01 b0 d3 e5                                      ldrb fp, [r3, #1]
006b6388  20 b0 8d e5                                      str fp, [sp, #0x20]
006b638c  03 b0 d3 e5                                      ldrb fp, [r3, #3]
006b6390  1c b0 8d e5                                      str fp, [sp, #0x1c]
006b6394  34 b0 dd e5                                      ldrb fp, [sp, #0x34]
006b6398  02 30 d3 e5                                      ldrb r3, [r3, #2]
006b639c  48 60 cd e5                                      strb r6, [sp, #0x48]
006b63a0  49 c0 cd e5                                      strb ip, [sp, #0x49]
006b63a4  4a 00 cd e5                                      strb r0, [sp, #0x4a]
006b63a8  4b 10 cd e5                                      strb r1, [sp, #0x4b]
006b63ac  10 10 9d e5                                      ldr r1, [sp, #0x10]
006b63b0  24 b0 8d e5                                      str fp, [sp, #0x24]
006b63b4  48 b0 9d e5                                      ldr fp, [sp, #0x48]
006b63b8  48 20 cd e5                                      strb r2, [sp, #0x48]
006b63bc  14 20 9d e5                                      ldr r2, [sp, #0x14]
006b63c0  49 10 cd e5                                      strb r1, [sp, #0x49]
006b63c4  18 10 9d e5                                      ldr r1, [sp, #0x18]
006b63c8  4a 20 cd e5                                      strb r2, [sp, #0x4a]
006b63cc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
006b63d0  4b 10 cd e5                                      strb r1, [sp, #0x4b]
006b63d4  48 60 9d e5                                      ldr r6, [sp, #0x48]
006b63d8  48 20 cd e5                                      strb r2, [sp, #0x48]
006b63dc  49 30 cd e5                                      strb r3, [sp, #0x49]
006b63e0  20 30 9d e5                                      ldr r3, [sp, #0x20]
006b63e4  24 10 9d e5                                      ldr r1, [sp, #0x24]
006b63e8  ff 00 56 e3                                      cmp r6, #0xff
006b63ec  4a 30 cd e5                                      strb r3, [sp, #0x4a]
006b63f0  4b 10 cd e5                                      strb r1, [sp, #0x4b]
006b63f4  0c 30 87 e2                                      add r3, r7, #0xc
006b63f8  03 10 d3 e5                                      ldrb r1, [r3, #3]
006b63fc  02 20 d3 e5                                      ldrb r2, [r3, #2]
006b6400  48 00 9d e5                                      ldr r0, [sp, #0x48]
006b6404  2c b0 8d e5                                      str fp, [sp, #0x2c]
006b6408  49 20 cd e5                                      strb r2, [sp, #0x49]
006b640c  48 10 cd e5                                      strb r1, [sp, #0x48]
006b6410  34 00 8d e5                                      str r0, [sp, #0x34]
006b6414  30 60 8d e5                                      str r6, [sp, #0x30]
006b6418  01 30 d3 e5                                      ldrb r3, [r3, #1]
006b641c  38 20 dd e5                                      ldrb r2, [sp, #0x38]
006b6420  10 30 8d e5                                      str r3, [sp, #0x10]
006b6424  14 20 8d e5                                      str r2, [sp, #0x14]
006b6428  10 30 87 e2                                      add r3, r7, #0x10
006b642c  01 10 d3 e5                                      ldrb r1, [r3, #1]
006b6430  02 00 d3 e5                                      ldrb r0, [r3, #2]
006b6434  03 c0 d3 e5                                      ldrb ip, [r3, #3]
006b6438  3c 30 dd e5                                      ldrb r3, [sp, #0x3c]
006b643c  14 70 87 e2                                      add r7, r7, #0x14
006b6440  20 30 8d e5                                      str r3, [sp, #0x20]
006b6444  01 20 d7 e5                                      ldrb r2, [r7, #1]
006b6448  1c 20 8d e5                                      str r2, [sp, #0x1c]
006b644c  03 30 d7 e5                                      ldrb r3, [r7, #3]
006b6450  10 20 9d e5                                      ldr r2, [sp, #0x10]
006b6454  18 30 8d e5                                      str r3, [sp, #0x18]
006b6458  02 30 d7 e5                                      ldrb r3, [r7, #2]
006b645c  4a 20 cd e5                                      strb r2, [sp, #0x4a]
006b6460  14 20 9d e5                                      ldr r2, [sp, #0x14]
006b6464  40 70 dd e5                                      ldrb r7, [sp, #0x40]
006b6468  4b 20 cd e5                                      strb r2, [sp, #0x4b]
006b646c  48 20 9d e5                                      ldr r2, [sp, #0x48]
006b6470  38 20 8d e5                                      str r2, [sp, #0x38]
006b6474  48 c0 cd e5                                      strb ip, [sp, #0x48]
006b6478  4a 10 cd e5                                      strb r1, [sp, #0x4a]
006b647c  20 10 9d e5                                      ldr r1, [sp, #0x20]
006b6480  49 00 cd e5                                      strb r0, [sp, #0x49]
006b6484  4b 10 cd e5                                      strb r1, [sp, #0x4b]
006b6488  48 20 9d e5                                      ldr r2, [sp, #0x48]
006b648c  18 10 9d e5                                      ldr r1, [sp, #0x18]
006b6490  49 30 cd e5                                      strb r3, [sp, #0x49]
006b6494  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
006b6498  48 10 cd e5                                      strb r1, [sp, #0x48]
006b649c  4b 70 cd e5                                      strb r7, [sp, #0x4b]
006b64a0  4a 30 cd e5                                      strb r3, [sp, #0x4a]
006b64a4  48 30 9d e5                                      ldr r3, [sp, #0x48]
006b64a8  3c 20 8d e5                                      str r2, [sp, #0x3c]
006b64ac  40 30 8d e5                                      str r3, [sp, #0x40]
006b64b0  66 ff ff 1a                                      bne #0x6b6250
006b64b4  3c 10 9d e5                                      ldr r1, [sp, #0x3c]
006b64b8  40 20 9d e5                                      ldr r2, [sp, #0x40]
006b64bc  00 30 a0 e3                                      mov r3, #0
006b64c0  04 30 84 e5                                      str r3, [r4, #4]
006b64c4  02 00 61 e0                                      rsb r0, r1, r2
006b64c8  08 00 84 e5                                      str r0, [r4, #8]
006b64cc  0c 10 84 e5                                      str r1, [r4, #0xc]
006b64d0  10 20 84 e5                                      str r2, [r4, #0x10]
006b64d4  b4 61 c4 e1                                      strh r6, [r4, #0x14]
006b64d8  b6 b1 c4 e1                                      strh fp, [r4, #0x16]
006b64dc  00 30 84 e5                                      str r3, [r4]
006b64e0  97 ff ff ea                                      b #0x6b6344
006b64e4  01 00 56 e3                                      cmp r6, #1
006b64e8  31 00 00 0a                                      beq #0x6b65b4
006b64ec  02 00 56 e3                                      cmp r6, #2
006b64f0  76 ff ff 1a                                      bne #0x6b62d0
006b64f4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006b64f8  00 00 53 e3                                      cmp r3, #0
006b64fc  73 ff ff 0a                                      beq #0x6b62d0
006b6500  4c 70 8d e2                                      add r7, sp, #0x4c
006b6504  03 10 87 e2                                      add r1, r7, #3
006b6508  02 20 87 e2                                      add r2, r7, #2
006b650c  01 30 87 e2                                      add r3, r7, #1
006b6510  10 60 8d e5                                      str r6, [sp, #0x10]
006b6514  14 b0 8d e5                                      str fp, [sp, #0x14]
006b6518  18 40 8d e5                                      str r4, [sp, #0x18]
006b651c  00 80 a0 e3                                      mov r8, #0
006b6520  44 90 8d e2                                      add sb, sp, #0x44
006b6524  02 60 a0 e1                                      mov r6, r2
006b6528  01 b0 a0 e1                                      mov fp, r1
006b652c  03 40 a0 e1                                      mov r4, r3
006b6530  00 30 95 e5                                      ldr r3, [r5]
006b6534  04 20 a0 e3                                      mov r2, #4
006b6538  05 00 a0 e1                                      mov r0, r5
006b653c  07 10 a0 e1                                      mov r1, r7
006b6540  0f e0 a0 e1                                      mov lr, pc
006b6544  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b6548  00 20 a0 e3                                      mov r2, #0
006b654c  44 20 8d e5                                      str r2, [sp, #0x44]
006b6550  00 30 db e5                                      ldrb r3, [fp]
006b6554  44 30 cd e5                                      strb r3, [sp, #0x44]
006b6558  00 30 d6 e5                                      ldrb r3, [r6]
006b655c  45 30 cd e5                                      strb r3, [sp, #0x45]
006b6560  00 30 d4 e5                                      ldrb r3, [r4]
006b6564  46 30 cd e5                                      strb r3, [sp, #0x46]
006b6568  00 30 d7 e5                                      ldrb r3, [r7]
006b656c  47 30 cd e5                                      strb r3, [sp, #0x47]
006b6570  00 30 99 e5                                      ldr r3, [sb]
006b6574  4c 30 8d e5                                      str r3, [sp, #0x4c]
006b6578  08 31 8a e7                                      str r3, [sl, r8, lsl #2]
006b657c  34 30 9d e5                                      ldr r3, [sp, #0x34]
006b6580  01 80 88 e2                                      add r8, r8, #1
006b6584  08 00 53 e1                                      cmp r3, r8
006b6588  e8 ff ff 8a                                      bhi #0x6b6530
006b658c  10 60 9d e5                                      ldr r6, [sp, #0x10]
006b6590  14 b0 9d e5                                      ldr fp, [sp, #0x14]
006b6594  18 40 9d e5                                      ldr r4, [sp, #0x18]
006b6598  4c ff ff ea                                      b #0x6b62d0
006b659c  12 30 d5 e5                                      ldrb r3, [r5, #0x12]
006b65a0  20 00 13 e3                                      tst r3, #0x20
006b65a4  23 00 00 1a                                      bne #0x6b6638
006b65a8  00 30 a0 e3                                      mov r3, #0
006b65ac  13 30 c5 e5                                      strb r3, [r5, #0x13]
006b65b0  4f ff ff ea                                      b #0x6b62f4
006b65b4  34 30 9d e5                                      ldr r3, [sp, #0x34]
006b65b8  00 00 53 e3                                      cmp r3, #0
006b65bc  43 ff ff 0a                                      beq #0x6b62d0
006b65c0  4c 70 8d e2                                      add r7, sp, #0x4c
006b65c4  44 30 8d e2                                      add r3, sp, #0x44
006b65c8  10 60 8d e5                                      str r6, [sp, #0x10]
006b65cc  01 90 87 e2                                      add sb, r7, #1
006b65d0  04 60 a0 e1                                      mov r6, r4
006b65d4  00 80 a0 e3                                      mov r8, #0
006b65d8  03 40 a0 e1                                      mov r4, r3
006b65dc  00 30 95 e5                                      ldr r3, [r5]
006b65e0  07 10 a0 e1                                      mov r1, r7
006b65e4  02 20 a0 e3                                      mov r2, #2
006b65e8  05 00 a0 e1                                      mov r0, r5
006b65ec  0f e0 a0 e1                                      mov lr, pc
006b65f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b65f4  00 10 a0 e3                                      mov r1, #0
006b65f8  b4 14 cd e1                                      strh r1, [sp, #0x44]
006b65fc  00 30 d9 e5                                      ldrb r3, [sb]
006b6600  88 20 a0 e1                                      lsl r2, r8, #1
006b6604  01 80 88 e2                                      add r8, r8, #1
006b6608  44 30 cd e5                                      strb r3, [sp, #0x44]
006b660c  00 30 d7 e5                                      ldrb r3, [r7]
006b6610  45 30 cd e5                                      strb r3, [sp, #0x45]
006b6614  b0 30 d4 e1                                      ldrh r3, [r4]
006b6618  bc 34 cd e1                                      strh r3, [sp, #0x4c]
006b661c  b2 30 8a e1                                      strh r3, [sl, r2]
006b6620  34 30 9d e5                                      ldr r3, [sp, #0x34]
006b6624  08 00 53 e1                                      cmp r3, r8
006b6628  eb ff ff 8a                                      bhi #0x6b65dc
006b662c  06 40 a0 e1                                      mov r4, r6
006b6630  10 60 9d e5                                      ldr r6, [sp, #0x10]
006b6634  25 ff ff ea                                      b #0x6b62d0
006b6638  00 30 95 e5                                      ldr r3, [r5]
006b663c  05 00 a0 e1                                      mov r0, r5
006b6640  0f e0 a0 e1                                      mov lr, pc
006b6644  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b6648  d6 ff ff ea                                      b #0x6b65a8
; mapping-symbol data/literal pool
006b664c  58 e8 2d 00 9c 42 00 00                          .byte 0x58, 0xe8, 0x2d, 0x00, 0x9c, 0x42, 0x00, 0x00

; FUNCTION 0x006b6cac, declared_size=1836, range_size=1836, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io22loadHeadersAndSkipDataEPNS0_9IReadFileERNS0_20SPrimitiveStreamDescEb
; demangled: glitch::io::loadHeadersAndSkipData(glitch::io::IReadFile*, glitch::io::SPrimitiveStreamDesc&, bool)
; decoder-mode: arm
006b6cac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b6cb0  00 50 a0 e1                                      mov r5, r0
006b6cb4  14 07 9f e5                                      ldr r0, [pc, #0x714]
006b6cb8  8c d0 4d e2                                      sub sp, sp, #0x8c
006b6cbc  01 40 a0 e1                                      mov r4, r1
006b6cc0  00 10 a0 e3                                      mov r1, #0
006b6cc4  74 10 8d e5                                      str r1, [sp, #0x74]
006b6cc8  00 20 8d e5                                      str r2, [sp]
006b6ccc  6c 10 8d e5                                      str r1, [sp, #0x6c]
006b6cd0  70 10 8d e5                                      str r1, [sp, #0x70]
006b6cd4  14 00 8d e5                                      str r0, [sp, #0x14]
006b6cd8  00 c0 94 e5                                      ldr ip, [r4]
006b6cdc  87 10 8d e2                                      add r1, sp, #0x87
006b6ce0  01 20 a0 e3                                      mov r2, #1
006b6ce4  04 30 8d e5                                      str r3, [sp, #4]
006b6ce8  04 00 a0 e1                                      mov r0, r4
006b6cec  0f e0 a0 e1                                      mov lr, pc
006b6cf0  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006b6cf4  80 10 8d e2                                      add r1, sp, #0x80
006b6cf8  04 20 a0 e3                                      mov r2, #4
006b6cfc  00 30 94 e5                                      ldr r3, [r4]
006b6d00  04 00 a0 e1                                      mov r0, r4
006b6d04  0f e0 a0 e1                                      mov lr, pc
006b6d08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b6d0c  14 20 9d e5                                      ldr r2, [sp, #0x14]
006b6d10  04 10 9d e5                                      ldr r1, [sp, #4]
006b6d14  02 20 8f e0                                      add r2, pc, r2
006b6d18  00 00 51 e3                                      cmp r1, #0
006b6d1c  14 20 8d e5                                      str r2, [sp, #0x14]
006b6d20  80 b0 9d 05                                      ldreq fp, [sp, #0x80]
006b6d24  09 00 00 0a                                      beq #0x6b6d50
006b6d28  83 00 dd e5                                      ldrb r0, [sp, #0x83]
006b6d2c  82 10 dd e5                                      ldrb r1, [sp, #0x82]
006b6d30  81 20 dd e5                                      ldrb r2, [sp, #0x81]
006b6d34  80 30 dd e5                                      ldrb r3, [sp, #0x80]
006b6d38  78 00 cd e5                                      strb r0, [sp, #0x78]
006b6d3c  79 10 cd e5                                      strb r1, [sp, #0x79]
006b6d40  7a 20 cd e5                                      strb r2, [sp, #0x7a]
006b6d44  7b 30 cd e5                                      strb r3, [sp, #0x7b]
006b6d48  78 b0 9d e5                                      ldr fp, [sp, #0x78]
006b6d4c  80 b0 8d e5                                      str fp, [sp, #0x80]
006b6d50  00 00 5b e3                                      cmp fp, #0
006b6d54  6c 30 8d 02                                      addeq r3, sp, #0x6c
006b6d58  18 30 8d 05                                      streq r3, [sp, #0x18]
006b6d5c  61 00 00 0a                                      beq #0x6b6ee8
006b6d60  20 60 8d e2                                      add r6, sp, #0x20
006b6d64  04 a0 86 e2                                      add sl, r6, #4
006b6d68  00 70 a0 e3                                      mov r7, #0
006b6d6c  6c c0 8d e2                                      add ip, sp, #0x6c
006b6d70  06 e0 86 e2                                      add lr, r6, #6
006b6d74  08 00 86 e2                                      add r0, r6, #8
006b6d78  0a 10 86 e2                                      add r1, r6, #0xa
006b6d7c  04 30 8a e2                                      add r3, sl, #4
006b6d80  1c 50 8d e5                                      str r5, [sp, #0x1c]
006b6d84  07 b0 a0 e1                                      mov fp, r7
006b6d88  18 c0 8d e5                                      str ip, [sp, #0x18]
006b6d8c  07 90 a0 e1                                      mov sb, r7
006b6d90  78 80 8d e2                                      add r8, sp, #0x78
006b6d94  08 e0 8d e5                                      str lr, [sp, #8]
006b6d98  0c 00 8d e5                                      str r0, [sp, #0xc]
006b6d9c  10 10 8d e5                                      str r1, [sp, #0x10]
006b6da0  03 50 a0 e1                                      mov r5, r3
006b6da4  0d 00 00 ea                                      b #0x6b6de0
006b6da8  00 20 96 e5                                      ldr r2, [r6]
006b6dac  01 30 a0 e1                                      mov r3, r1
006b6db0  01 70 87 e2                                      add r7, r7, #1
006b6db4  04 20 83 e4                                      str r2, [r3], #4
006b6db8  00 20 9a e5                                      ldr r2, [sl]
006b6dbc  04 20 81 e5                                      str r2, [r1, #4]
006b6dc0  00 20 95 e5                                      ldr r2, [r5]
006b6dc4  04 20 83 e5                                      str r2, [r3, #4]
006b6dc8  70 30 9d e5                                      ldr r3, [sp, #0x70]
006b6dcc  0c 30 83 e2                                      add r3, r3, #0xc
006b6dd0  70 30 8d e5                                      str r3, [sp, #0x70]
006b6dd4  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b6dd8  07 00 53 e1                                      cmp r3, r7
006b6ddc  40 00 00 9a                                      bls #0x6b6ee4
006b6de0  0c 20 a0 e3                                      mov r2, #0xc
006b6de4  00 30 94 e5                                      ldr r3, [r4]
006b6de8  06 10 a0 e1                                      mov r1, r6
006b6dec  04 00 a0 e1                                      mov r0, r4
006b6df0  0f e0 a0 e1                                      mov lr, pc
006b6df4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b6df8  04 20 9d e5                                      ldr r2, [sp, #4]
006b6dfc  00 00 52 e3                                      cmp r2, #0
006b6e00  b4 32 dd 01                                      ldrheq r3, [sp, #0x24]
006b6e04  29 00 00 0a                                      beq #0x6b6eb0
006b6e08  78 90 8d e5                                      str sb, [sp, #0x78]
006b6e0c  03 30 d6 e5                                      ldrb r3, [r6, #3]
006b6e10  08 c0 9d e5                                      ldr ip, [sp, #8]
006b6e14  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006b6e18  78 30 cd e5                                      strb r3, [sp, #0x78]
006b6e1c  02 30 d6 e5                                      ldrb r3, [r6, #2]
006b6e20  79 30 cd e5                                      strb r3, [sp, #0x79]
006b6e24  01 30 d6 e5                                      ldrb r3, [r6, #1]
006b6e28  7a 30 cd e5                                      strb r3, [sp, #0x7a]
006b6e2c  00 30 d6 e5                                      ldrb r3, [r6]
006b6e30  7b 30 cd e5                                      strb r3, [sp, #0x7b]
006b6e34  00 30 98 e5                                      ldr r3, [r8]
006b6e38  b8 97 cd e1                                      strh sb, [sp, #0x78]
006b6e3c  20 30 8d e5                                      str r3, [sp, #0x20]
006b6e40  01 30 da e5                                      ldrb r3, [sl, #1]
006b6e44  78 30 cd e5                                      strb r3, [sp, #0x78]
006b6e48  00 30 da e5                                      ldrb r3, [sl]
006b6e4c  79 30 cd e5                                      strb r3, [sp, #0x79]
006b6e50  b0 30 d8 e1                                      ldrh r3, [r8]
006b6e54  b8 97 cd e1                                      strh sb, [sp, #0x78]
006b6e58  b4 32 cd e1                                      strh r3, [sp, #0x24]
006b6e5c  01 20 dc e5                                      ldrb r2, [ip, #1]
006b6e60  78 20 cd e5                                      strb r2, [sp, #0x78]
006b6e64  00 20 dc e5                                      ldrb r2, [ip]
006b6e68  79 20 cd e5                                      strb r2, [sp, #0x79]
006b6e6c  b0 e0 d8 e1                                      ldrh lr, [r8]
006b6e70  b8 97 cd e1                                      strh sb, [sp, #0x78]
006b6e74  b6 e2 cd e1                                      strh lr, [sp, #0x26]
006b6e78  01 20 d0 e5                                      ldrb r2, [r0, #1]
006b6e7c  78 20 cd e5                                      strb r2, [sp, #0x78]
006b6e80  00 20 d0 e5                                      ldrb r2, [r0]
006b6e84  79 20 cd e5                                      strb r2, [sp, #0x79]
006b6e88  b0 10 d8 e1                                      ldrh r1, [r8]
006b6e8c  b8 12 cd e1                                      strh r1, [sp, #0x28]
006b6e90  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006b6e94  b8 97 cd e1                                      strh sb, [sp, #0x78]
006b6e98  01 20 dc e5                                      ldrb r2, [ip, #1]
006b6e9c  78 20 cd e5                                      strb r2, [sp, #0x78]
006b6ea0  00 20 dc e5                                      ldrb r2, [ip]
006b6ea4  79 20 cd e5                                      strb r2, [sp, #0x79]
006b6ea8  b0 e0 d8 e1                                      ldrh lr, [r8]
006b6eac  ba e2 cd e1                                      strh lr, [sp, #0x2a]
006b6eb0  01 00 a0 e3                                      mov r0, #1
006b6eb4  70 10 9d e5                                      ldr r1, [sp, #0x70]
006b6eb8  10 b3 8b e1                                      orr fp, fp, r0, lsl r3
006b6ebc  74 30 9d e5                                      ldr r3, [sp, #0x74]
006b6ec0  03 00 51 e1                                      cmp r1, r3
006b6ec4  b7 ff ff 1a                                      bne #0x6b6da8
006b6ec8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006b6ecc  06 20 a0 e1                                      mov r2, r6
006b6ed0  08 ff ff eb                                      bl #0x6b6af8
006b6ed4  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b6ed8  01 70 87 e2                                      add r7, r7, #1
006b6edc  07 00 53 e1                                      cmp r3, r7
006b6ee0  be ff ff 8a                                      bhi #0x6b6de0
006b6ee4  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
006b6ee8  0b 10 a0 e1                                      mov r1, fp
006b6eec  05 00 a0 e1                                      mov r0, r5
006b6ef0  19 a9 fb eb                                      bl #0x5a135c
006b6ef4  6c 70 9d e5                                      ldr r7, [sp, #0x6c]
006b6ef8  70 30 9d e5                                      ldr r3, [sp, #0x70]
006b6efc  03 00 57 e1                                      cmp r7, r3
006b6f00  1b 00 00 0a                                      beq #0x6b6f74
006b6f04  00 80 a0 e3                                      mov r8, #0
006b6f08  20 60 8d e2                                      add r6, sp, #0x20
006b6f0c  08 a0 a0 e1                                      mov sl, r8
006b6f10  04 90 a0 e1                                      mov sb, r4
006b6f14  00 00 95 e5                                      ldr r0, [r5]
006b6f18  00 40 97 e5                                      ldr r4, [r7]
006b6f1c  b6 e0 d7 e1                                      ldrh lr, [r7, #6]
006b6f20  b8 c0 d7 e1                                      ldrh ip, [r7, #8]
006b6f24  ba 30 d7 e1                                      ldrh r3, [r7, #0xa]
006b6f28  14 10 80 e2                                      add r1, r0, #0x14
006b6f2c  08 10 81 e0                                      add r1, r1, r8
006b6f30  06 20 a0 e1                                      mov r2, r6
006b6f34  24 40 8d e5                                      str r4, [sp, #0x24]
006b6f38  28 e0 8d e5                                      str lr, [sp, #0x28]
006b6f3c  bc c2 cd e1                                      strh ip, [sp, #0x2c]
006b6f40  be 32 cd e1                                      strh r3, [sp, #0x2e]
006b6f44  20 a0 8d e5                                      str sl, [sp, #0x20]
006b6f48  91 fc ff eb                                      bl #0x6b6194
006b6f4c  20 00 9d e5                                      ldr r0, [sp, #0x20]
006b6f50  0c 70 87 e2                                      add r7, r7, #0xc
006b6f54  10 80 88 e2                                      add r8, r8, #0x10
006b6f58  00 00 50 e3                                      cmp r0, #0
006b6f5c  00 00 00 0a                                      beq #0x6b6f64
006b6f60  87 99 f1 eb                                      bl #0x31d584
006b6f64  70 30 9d e5                                      ldr r3, [sp, #0x70]
006b6f68  03 00 57 e1                                      cmp r7, r3
006b6f6c  e8 ff ff 1a                                      bne #0x6b6f14
006b6f70  09 40 a0 e1                                      mov r4, sb
006b6f74  00 30 95 e5                                      ldr r3, [r5]
006b6f78  be 21 d3 e1                                      ldrh r2, [r3, #0x1e]
006b6f7c  06 00 52 e3                                      cmp r2, #6
006b6f80  0e 01 00 0a                                      beq #0x6b73c0
006b6f84  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006b6f88  04 20 82 e3                                      orr r2, r2, #4
006b6f8c  be 20 c3 e1                                      strh r2, [r3, #0xe]
006b6f90  00 20 a0 e3                                      mov r2, #0
006b6f94  08 e0 a0 e3                                      mov lr, #8
006b6f98  06 00 00 ea                                      b #0x6b6fb8
006b6f9c  be 01 dc e1                                      ldrh r0, [ip, #0x1e]
006b6fa0  06 00 50 e3                                      cmp r0, #6
006b6fa4  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
006b6fa8  1e 22 80 11                                      orrne r2, r0, lr, lsl r2
006b6fac  1e 22 c0 01                                      biceq r2, r0, lr, lsl r2
006b6fb0  be 20 c3 e1                                      strh r2, [r3, #0xe]
006b6fb4  01 20 a0 e1                                      mov r2, r1
006b6fb8  00 30 95 e5                                      ldr r3, [r5]
006b6fbc  01 10 82 e2                                      add r1, r2, #1
006b6fc0  71 10 ef e6                                      uxtb r1, r1
006b6fc4  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
006b6fc8  01 c2 83 e0                                      add ip, r3, r1, lsl #4
006b6fcc  02 00 50 e1                                      cmp r0, r2
006b6fd0  f1 ff ff 8a                                      bhi #0x6b6f9c
006b6fd4  00 20 a0 e3                                      mov r2, #0
006b6fd8  60 80 8d e2                                      add r8, sp, #0x60
006b6fdc  00 30 94 e5                                      ldr r3, [r4]
006b6fe0  08 10 a0 e1                                      mov r1, r8
006b6fe4  68 20 8d e5                                      str r2, [sp, #0x68]
006b6fe8  60 20 8d e5                                      str r2, [sp, #0x60]
006b6fec  64 20 8d e5                                      str r2, [sp, #0x64]
006b6ff0  04 00 a0 e1                                      mov r0, r4
006b6ff4  0c 20 a0 e3                                      mov r2, #0xc
006b6ff8  0f e0 a0 e1                                      mov lr, pc
006b6ffc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7000  04 10 9d e5                                      ldr r1, [sp, #4]
006b7004  00 00 51 e3                                      cmp r1, #0
006b7008  cc 00 00 1a                                      bne #0x6b7340
006b700c  00 30 95 e5                                      ldr r3, [r5]
006b7010  60 c0 9d e5                                      ldr ip, [sp, #0x60]
006b7014  0c 20 a0 e3                                      mov r2, #0xc
006b7018  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b701c  04 00 a0 e1                                      mov r0, r4
006b7020  08 10 a0 e1                                      mov r1, r8
006b7024  00 c0 83 e5                                      str ip, [r3]
006b7028  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006b702c  04 c0 83 e5                                      str ip, [r3, #4]
006b7030  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006b7034  08 c0 83 e5                                      str ip, [r3, #8]
006b7038  00 30 94 e5                                      ldr r3, [r4]
006b703c  0f e0 a0 e1                                      mov lr, pc
006b7040  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7044  60 20 9d e5                                      ldr r2, [sp, #0x60]
006b7048  00 30 95 e5                                      ldr r3, [r5]
006b704c  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b7050  0c 20 83 e5                                      str r2, [r3, #0xc]
006b7054  64 20 9d e5                                      ldr r2, [sp, #0x64]
006b7058  0c 30 83 e2                                      add r3, r3, #0xc
006b705c  04 20 83 e5                                      str r2, [r3, #4]
006b7060  68 20 9d e5                                      ldr r2, [sp, #0x68]
006b7064  08 20 83 e5                                      str r2, [r3, #8]
006b7068  00 30 95 e5                                      ldr r3, [r5]
006b706c  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
006b7070  00 00 53 e3                                      cmp r3, #0
006b7074  45 00 00 0a                                      beq #0x6b7190
006b7078  3c 90 8d e2                                      add sb, sp, #0x3c
006b707c  08 90 8d e5                                      str sb, [sp, #8]
006b7080  00 60 a0 e3                                      mov r6, #0
006b7084  18 a0 a0 e3                                      mov sl, #0x18
006b7088  30 b0 8d e2                                      add fp, sp, #0x30
006b708c  04 90 9d e5                                      ldr sb, [sp, #4]
006b7090  21 00 00 ea                                      b #0x6b711c
006b7094  00 20 95 e5                                      ldr r2, [r5]
006b7098  01 70 86 e2                                      add r7, r6, #1
006b709c  9a 07 03 e0                                      mul r3, sl, r7
006b70a0  10 00 92 e5                                      ldr r0, [r2, #0x10]
006b70a4  08 10 a0 e1                                      mov r1, r8
006b70a8  0c 20 a0 e3                                      mov r2, #0xc
006b70ac  03 c0 80 e7                                      str ip, [r0, r3]
006b70b0  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006b70b4  03 30 80 e0                                      add r3, r0, r3
006b70b8  04 00 a0 e1                                      mov r0, r4
006b70bc  04 c0 83 e5                                      str ip, [r3, #4]
006b70c0  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006b70c4  08 c0 83 e5                                      str ip, [r3, #8]
006b70c8  00 30 94 e5                                      ldr r3, [r4]
006b70cc  0f e0 a0 e1                                      mov lr, pc
006b70d0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b70d4  00 00 59 e3                                      cmp sb, #0
006b70d8  60 10 9d 05                                      ldreq r1, [sp, #0x60]
006b70dc  21 00 00 1a                                      bne #0x6b7168
006b70e0  00 30 95 e5                                      ldr r3, [r5]
006b70e4  9a 06 06 e0                                      mul r6, sl, r6
006b70e8  10 20 93 e5                                      ldr r2, [r3, #0x10]
006b70ec  24 30 86 e2                                      add r3, r6, #0x24
006b70f0  77 60 ef e6                                      uxtb r6, r7
006b70f4  03 10 82 e7                                      str r1, [r2, r3]
006b70f8  03 30 82 e0                                      add r3, r2, r3
006b70fc  64 20 9d e5                                      ldr r2, [sp, #0x64]
006b7100  04 20 83 e5                                      str r2, [r3, #4]
006b7104  68 20 9d e5                                      ldr r2, [sp, #0x68]
006b7108  08 20 83 e5                                      str r2, [r3, #8]
006b710c  00 30 95 e5                                      ldr r3, [r5]
006b7110  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
006b7114  06 00 53 e1                                      cmp r3, r6
006b7118  1c 00 00 9a                                      bls #0x6b7190
006b711c  08 10 a0 e1                                      mov r1, r8
006b7120  0c 20 a0 e3                                      mov r2, #0xc
006b7124  00 30 94 e5                                      ldr r3, [r4]
006b7128  04 00 a0 e1                                      mov r0, r4
006b712c  0f e0 a0 e1                                      mov lr, pc
006b7130  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7134  00 00 59 e3                                      cmp sb, #0
006b7138  60 c0 9d 05                                      ldreq ip, [sp, #0x60]
006b713c  d4 ff ff 0a                                      beq #0x6b7094
006b7140  08 00 9d e5                                      ldr r0, [sp, #8]
006b7144  08 10 a0 e1                                      mov r1, r8
006b7148  27 07 fb eb                                      bl #0x578dec
006b714c  40 30 9d e5                                      ldr r3, [sp, #0x40]
006b7150  3c c0 9d e5                                      ldr ip, [sp, #0x3c]
006b7154  64 30 8d e5                                      str r3, [sp, #0x64]
006b7158  44 30 9d e5                                      ldr r3, [sp, #0x44]
006b715c  60 c0 8d e5                                      str ip, [sp, #0x60]
006b7160  68 30 8d e5                                      str r3, [sp, #0x68]
006b7164  ca ff ff ea                                      b #0x6b7094
006b7168  08 10 a0 e1                                      mov r1, r8
006b716c  0b 00 a0 e1                                      mov r0, fp
006b7170  1d 07 fb eb                                      bl #0x578dec
006b7174  34 30 9d e5                                      ldr r3, [sp, #0x34]
006b7178  30 10 9d e5                                      ldr r1, [sp, #0x30]
006b717c  64 30 8d e5                                      str r3, [sp, #0x64]
006b7180  38 30 9d e5                                      ldr r3, [sp, #0x38]
006b7184  60 10 8d e5                                      str r1, [sp, #0x60]
006b7188  68 30 8d e5                                      str r3, [sp, #0x68]
006b718c  d3 ff ff ea                                      b #0x6b70e0
006b7190  7c 10 8d e2                                      add r1, sp, #0x7c
006b7194  04 20 a0 e3                                      mov r2, #4
006b7198  00 30 94 e5                                      ldr r3, [r4]
006b719c  04 00 a0 e1                                      mov r0, r4
006b71a0  0f e0 a0 e1                                      mov lr, pc
006b71a4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b71a8  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006b71ac  7c c0 9d e5                                      ldr ip, [sp, #0x7c]
006b71b0  01 20 a0 e3                                      mov r2, #1
006b71b4  ba 10 d3 e1                                      ldrh r1, [r3, #0xa]
006b71b8  04 00 a0 e1                                      mov r0, r4
006b71bc  00 30 94 e5                                      ldr r3, [r4]
006b71c0  9c 01 01 e0                                      mul r1, ip, r1
006b71c4  0f e0 a0 e1                                      mov lr, pc
006b71c8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b71cc  18 20 a0 e3                                      mov r2, #0x18
006b71d0  00 30 94 e5                                      ldr r3, [r4]
006b71d4  04 00 a0 e1                                      mov r0, r4
006b71d8  00 10 9d e5                                      ldr r1, [sp]
006b71dc  0f e0 a0 e1                                      mov lr, pc
006b71e0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b71e4  04 20 9d e5                                      ldr r2, [sp, #4]
006b71e8  00 00 52 e3                                      cmp r2, #0
006b71ec  42 00 00 0a                                      beq #0x6b72fc
006b71f0  00 30 9d e5                                      ldr r3, [sp]
006b71f4  03 00 d3 e5                                      ldrb r0, [r3, #3]
006b71f8  02 10 d3 e5                                      ldrb r1, [r3, #2]
006b71fc  01 20 d3 e5                                      ldrb r2, [r3, #1]
006b7200  00 30 d3 e5                                      ldrb r3, [r3]
006b7204  78 00 cd e5                                      strb r0, [sp, #0x78]
006b7208  7a 20 cd e5                                      strb r2, [sp, #0x7a]
006b720c  7b 30 cd e5                                      strb r3, [sp, #0x7b]
006b7210  79 10 cd e5                                      strb r1, [sp, #0x79]
006b7214  78 10 9d e5                                      ldr r1, [sp, #0x78]
006b7218  00 30 9d e5                                      ldr r3, [sp]
006b721c  08 20 83 e2                                      add r2, r3, #8
006b7220  04 10 83 e4                                      str r1, [r3], #4
006b7224  00 e0 9d e5                                      ldr lr, [sp]
006b7228  01 10 d3 e5                                      ldrb r1, [r3, #1]
006b722c  03 c0 d3 e5                                      ldrb ip, [r3, #3]
006b7230  02 00 d3 e5                                      ldrb r0, [r3, #2]
006b7234  04 30 de e5                                      ldrb r3, [lr, #4]
006b7238  7a 10 cd e5                                      strb r1, [sp, #0x7a]
006b723c  78 c0 cd e5                                      strb ip, [sp, #0x78]
006b7240  79 00 cd e5                                      strb r0, [sp, #0x79]
006b7244  7b 30 cd e5                                      strb r3, [sp, #0x7b]
006b7248  78 00 9d e5                                      ldr r0, [sp, #0x78]
006b724c  08 30 de e5                                      ldrb r3, [lr, #8]
006b7250  0c 10 8e e2                                      add r1, lr, #0xc
006b7254  04 00 8e e5                                      str r0, [lr, #4]
006b7258  01 c0 d2 e5                                      ldrb ip, [r2, #1]
006b725c  03 00 d2 e5                                      ldrb r0, [r2, #3]
006b7260  02 20 d2 e5                                      ldrb r2, [r2, #2]
006b7264  7b 30 cd e5                                      strb r3, [sp, #0x7b]
006b7268  7a c0 cd e5                                      strb ip, [sp, #0x7a]
006b726c  79 20 cd e5                                      strb r2, [sp, #0x79]
006b7270  78 00 cd e5                                      strb r0, [sp, #0x78]
006b7274  78 00 9d e5                                      ldr r0, [sp, #0x78]
006b7278  10 20 8e e2                                      add r2, lr, #0x10
006b727c  14 30 8e e2                                      add r3, lr, #0x14
006b7280  08 00 8e e5                                      str r0, [lr, #8]
006b7284  02 00 d1 e5                                      ldrb r0, [r1, #2]
006b7288  03 c0 d1 e5                                      ldrb ip, [r1, #3]
006b728c  78 c0 cd e5                                      strb ip, [sp, #0x78]
006b7290  79 00 cd e5                                      strb r0, [sp, #0x79]
006b7294  01 c0 d1 e5                                      ldrb ip, [r1, #1]
006b7298  0c 00 de e5                                      ldrb r0, [lr, #0xc]
006b729c  10 10 de e5                                      ldrb r1, [lr, #0x10]
006b72a0  7a c0 cd e5                                      strb ip, [sp, #0x7a]
006b72a4  7b 00 cd e5                                      strb r0, [sp, #0x7b]
006b72a8  78 00 9d e5                                      ldr r0, [sp, #0x78]
006b72ac  7b 10 cd e5                                      strb r1, [sp, #0x7b]
006b72b0  14 10 de e5                                      ldrb r1, [lr, #0x14]
006b72b4  0c 00 8e e5                                      str r0, [lr, #0xc]
006b72b8  01 c0 d2 e5                                      ldrb ip, [r2, #1]
006b72bc  03 00 d2 e5                                      ldrb r0, [r2, #3]
006b72c0  02 20 d2 e5                                      ldrb r2, [r2, #2]
006b72c4  7a c0 cd e5                                      strb ip, [sp, #0x7a]
006b72c8  78 00 cd e5                                      strb r0, [sp, #0x78]
006b72cc  79 20 cd e5                                      strb r2, [sp, #0x79]
006b72d0  78 20 9d e5                                      ldr r2, [sp, #0x78]
006b72d4  7b 10 cd e5                                      strb r1, [sp, #0x7b]
006b72d8  10 20 8e e5                                      str r2, [lr, #0x10]
006b72dc  01 10 d3 e5                                      ldrb r1, [r3, #1]
006b72e0  03 20 d3 e5                                      ldrb r2, [r3, #3]
006b72e4  02 30 d3 e5                                      ldrb r3, [r3, #2]
006b72e8  7a 10 cd e5                                      strb r1, [sp, #0x7a]
006b72ec  78 20 cd e5                                      strb r2, [sp, #0x78]
006b72f0  79 30 cd e5                                      strb r3, [sp, #0x79]
006b72f4  78 30 9d e5                                      ldr r3, [sp, #0x78]
006b72f8  14 30 8e e5                                      str r3, [lr, #0x14]
006b72fc  00 00 9d e5                                      ldr r0, [sp]
006b7300  14 20 9d e5                                      ldr r2, [sp, #0x14]
006b7304  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
006b7308  02 10 90 e9                                      ldmib r0, {r1, ip}
006b730c  03 30 92 e7                                      ldr r3, [r2, r3]
006b7310  04 00 a0 e1                                      mov r0, r4
006b7314  01 20 a0 e3                                      mov r2, #1
006b7318  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
006b731c  00 30 94 e5                                      ldr r3, [r4]
006b7320  9c 01 01 e0                                      mul r1, ip, r1
006b7324  0f e0 a0 e1                                      mov lr, pc
006b7328  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b732c  18 00 9d e5                                      ldr r0, [sp, #0x18]
006b7330  f8 fc ff eb                                      bl #0x6b6718
006b7334  05 00 a0 e1                                      mov r0, r5
006b7338  8c d0 8d e2                                      add sp, sp, #0x8c
006b733c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b7340  54 00 8d e2                                      add r0, sp, #0x54
006b7344  08 10 a0 e1                                      mov r1, r8
006b7348  a7 06 fb eb                                      bl #0x578dec
006b734c  58 20 9d e5                                      ldr r2, [sp, #0x58]
006b7350  00 30 95 e5                                      ldr r3, [r5]
006b7354  54 00 9d e5                                      ldr r0, [sp, #0x54]
006b7358  64 20 8d e5                                      str r2, [sp, #0x64]
006b735c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
006b7360  60 00 8d e5                                      str r0, [sp, #0x60]
006b7364  08 10 a0 e1                                      mov r1, r8
006b7368  68 20 8d e5                                      str r2, [sp, #0x68]
006b736c  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b7370  0c 20 a0 e3                                      mov r2, #0xc
006b7374  00 00 83 e5                                      str r0, [r3]
006b7378  64 c0 9d e5                                      ldr ip, [sp, #0x64]
006b737c  04 00 a0 e1                                      mov r0, r4
006b7380  04 c0 83 e5                                      str ip, [r3, #4]
006b7384  68 c0 9d e5                                      ldr ip, [sp, #0x68]
006b7388  08 c0 83 e5                                      str ip, [r3, #8]
006b738c  00 30 94 e5                                      ldr r3, [r4]
006b7390  0f e0 a0 e1                                      mov lr, pc
006b7394  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7398  48 00 8d e2                                      add r0, sp, #0x48
006b739c  08 10 a0 e1                                      mov r1, r8
006b73a0  91 06 fb eb                                      bl #0x578dec
006b73a4  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
006b73a8  48 20 9d e5                                      ldr r2, [sp, #0x48]
006b73ac  64 30 8d e5                                      str r3, [sp, #0x64]
006b73b0  50 30 9d e5                                      ldr r3, [sp, #0x50]
006b73b4  60 20 8d e5                                      str r2, [sp, #0x60]
006b73b8  68 30 8d e5                                      str r3, [sp, #0x68]
006b73bc  21 ff ff ea                                      b #0x6b7048
006b73c0  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006b73c4  04 20 c2 e3                                      bic r2, r2, #4
006b73c8  be 20 c3 e1                                      strh r2, [r3, #0xe]
006b73cc  ef fe ff ea                                      b #0x6b6f90
; mapping-symbol data/literal pool
006b73d0  7c dd 2d 00 9c 42 00 00                          .byte 0x7c, 0xdd, 0x2d, 0x00, 0x9c, 0x42, 0x00, 0x00

; FUNCTION 0x006b73d8, declared_size=2116, range_size=2116, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io6loadVSEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
; demangled: glitch::io::loadVS(glitch::io::IReadFile*, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
006b73d8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b73dc  30 c8 9f e5                                      ldr ip, [pc, #0x830]
006b73e0  cc d0 4d e2                                      sub sp, sp, #0xcc
006b73e4  01 40 a0 e1                                      mov r4, r1
006b73e8  00 10 a0 e3                                      mov r1, #0
006b73ec  a8 10 8d e5                                      str r1, [sp, #0xa8]
006b73f0  ac 10 8d e5                                      str r1, [sp, #0xac]
006b73f4  b0 10 8d e5                                      str r1, [sp, #0xb0]
006b73f8  b4 10 8d e5                                      str r1, [sp, #0xb4]
006b73fc  a0 10 8d e5                                      str r1, [sp, #0xa0]
006b7400  a4 10 8d e5                                      str r1, [sp, #0xa4]
006b7404  20 c0 8d e5                                      str ip, [sp, #0x20]
006b7408  00 c0 94 e5                                      ldr ip, [r4]
006b740c  02 b0 a0 e1                                      mov fp, r2
006b7410  00 50 a0 e1                                      mov r5, r0
006b7414  04 20 a0 e3                                      mov r2, #4
006b7418  04 00 a0 e1                                      mov r0, r4
006b741c  c4 10 8d e2                                      add r1, sp, #0xc4
006b7420  24 30 8d e5                                      str r3, [sp, #0x24]
006b7424  0f e0 a0 e1                                      mov lr, pc
006b7428  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006b742c  20 20 9d e5                                      ldr r2, [sp, #0x20]
006b7430  00 00 5b e3                                      cmp fp, #0
006b7434  c4 c0 9d 05                                      ldreq ip, [sp, #0xc4]
006b7438  02 20 8f e0                                      add r2, pc, r2
006b743c  20 20 8d e5                                      str r2, [sp, #0x20]
006b7440  09 00 00 0a                                      beq #0x6b746c
006b7444  c7 00 dd e5                                      ldrb r0, [sp, #0xc7]
006b7448  c6 10 dd e5                                      ldrb r1, [sp, #0xc6]
006b744c  c5 20 dd e5                                      ldrb r2, [sp, #0xc5]
006b7450  c4 30 dd e5                                      ldrb r3, [sp, #0xc4]
006b7454  b8 00 cd e5                                      strb r0, [sp, #0xb8]
006b7458  b9 10 cd e5                                      strb r1, [sp, #0xb9]
006b745c  ba 20 cd e5                                      strb r2, [sp, #0xba]
006b7460  bb 30 cd e5                                      strb r3, [sp, #0xbb]
006b7464  b8 c0 9d e5                                      ldr ip, [sp, #0xb8]
006b7468  c4 c0 8d e5                                      str ip, [sp, #0xc4]
006b746c  00 00 5c e3                                      cmp ip, #0
006b7470  ac 30 8d 02                                      addeq r3, sp, #0xac
006b7474  28 30 8d 05                                      streq r3, [sp, #0x28]
006b7478  67 00 00 0a                                      beq #0x6b761c
006b747c  54 60 8d e2                                      add r6, sp, #0x54
006b7480  06 30 86 e2                                      add r3, r6, #6
006b7484  ac 20 8d e2                                      add r2, sp, #0xac
006b7488  04 a0 86 e2                                      add sl, r6, #4
006b748c  14 30 8d e5                                      str r3, [sp, #0x14]
006b7490  0a 30 86 e2                                      add r3, r6, #0xa
006b7494  00 70 a0 e3                                      mov r7, #0
006b7498  28 20 8d e5                                      str r2, [sp, #0x28]
006b749c  1c 30 8d e5                                      str r3, [sp, #0x1c]
006b74a0  08 20 86 e2                                      add r2, r6, #8
006b74a4  04 30 8a e2                                      add r3, sl, #4
006b74a8  2c 50 8d e5                                      str r5, [sp, #0x2c]
006b74ac  10 b0 8d e5                                      str fp, [sp, #0x10]
006b74b0  07 90 a0 e1                                      mov sb, r7
006b74b4  b8 80 8d e2                                      add r8, sp, #0xb8
006b74b8  18 20 8d e5                                      str r2, [sp, #0x18]
006b74bc  07 50 a0 e1                                      mov r5, r7
006b74c0  03 b0 a0 e1                                      mov fp, r3
006b74c4  0f 00 00 ea                                      b #0x6b7508
006b74c8  00 20 96 e5                                      ldr r2, [r6]
006b74cc  01 70 87 e2                                      add r7, r7, #1
006b74d0  01 c0 a0 e3                                      mov ip, #1
006b74d4  04 20 83 e4                                      str r2, [r3], #4
006b74d8  00 20 9a e5                                      ldr r2, [sl]
006b74dc  04 20 81 e5                                      str r2, [r1, #4]
006b74e0  00 20 9b e5                                      ldr r2, [fp]
006b74e4  04 20 83 e5                                      str r2, [r3, #4]
006b74e8  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006b74ec  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
006b74f0  0c 30 83 e2                                      add r3, r3, #0xc
006b74f4  b0 30 8d e5                                      str r3, [sp, #0xb0]
006b74f8  b8 35 dd e1                                      ldrh r3, [sp, #0x58]
006b74fc  07 00 52 e1                                      cmp r2, r7
006b7500  1c 53 85 e1                                      orr r5, r5, ip, lsl r3
006b7504  41 00 00 9a                                      bls #0x6b7610
006b7508  06 10 a0 e1                                      mov r1, r6
006b750c  0c 20 a0 e3                                      mov r2, #0xc
006b7510  00 30 94 e5                                      ldr r3, [r4]
006b7514  04 00 a0 e1                                      mov r0, r4
006b7518  0f e0 a0 e1                                      mov lr, pc
006b751c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7520  10 c0 9d e5                                      ldr ip, [sp, #0x10]
006b7524  00 00 5c e3                                      cmp ip, #0
006b7528  29 00 00 0a                                      beq #0x6b75d4
006b752c  b8 90 8d e5                                      str sb, [sp, #0xb8]
006b7530  03 30 d6 e5                                      ldrb r3, [r6, #3]
006b7534  14 c0 9d e5                                      ldr ip, [sp, #0x14]
006b7538  b8 30 cd e5                                      strb r3, [sp, #0xb8]
006b753c  02 30 d6 e5                                      ldrb r3, [r6, #2]
006b7540  b9 30 cd e5                                      strb r3, [sp, #0xb9]
006b7544  01 30 d6 e5                                      ldrb r3, [r6, #1]
006b7548  ba 30 cd e5                                      strb r3, [sp, #0xba]
006b754c  00 30 d6 e5                                      ldrb r3, [r6]
006b7550  bb 30 cd e5                                      strb r3, [sp, #0xbb]
006b7554  00 30 98 e5                                      ldr r3, [r8]
006b7558  b8 9b cd e1                                      strh sb, [sp, #0xb8]
006b755c  54 30 8d e5                                      str r3, [sp, #0x54]
006b7560  01 30 da e5                                      ldrb r3, [sl, #1]
006b7564  b8 30 cd e5                                      strb r3, [sp, #0xb8]
006b7568  00 30 da e5                                      ldrb r3, [sl]
006b756c  b9 30 cd e5                                      strb r3, [sp, #0xb9]
006b7570  b0 20 d8 e1                                      ldrh r2, [r8]
006b7574  b8 9b cd e1                                      strh sb, [sp, #0xb8]
006b7578  b8 25 cd e1                                      strh r2, [sp, #0x58]
006b757c  01 30 dc e5                                      ldrb r3, [ip, #1]
006b7580  b8 30 cd e5                                      strb r3, [sp, #0xb8]
006b7584  00 30 dc e5                                      ldrb r3, [ip]
006b7588  18 c0 9d e5                                      ldr ip, [sp, #0x18]
006b758c  b9 30 cd e5                                      strb r3, [sp, #0xb9]
006b7590  b0 20 d8 e1                                      ldrh r2, [r8]
006b7594  b8 9b cd e1                                      strh sb, [sp, #0xb8]
006b7598  ba 25 cd e1                                      strh r2, [sp, #0x5a]
006b759c  01 30 dc e5                                      ldrb r3, [ip, #1]
006b75a0  b8 30 cd e5                                      strb r3, [sp, #0xb8]
006b75a4  00 30 dc e5                                      ldrb r3, [ip]
006b75a8  b9 30 cd e5                                      strb r3, [sp, #0xb9]
006b75ac  b0 20 d8 e1                                      ldrh r2, [r8]
006b75b0  bc 25 cd e1                                      strh r2, [sp, #0x5c]
006b75b4  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
006b75b8  b8 9b cd e1                                      strh sb, [sp, #0xb8]
006b75bc  01 30 dc e5                                      ldrb r3, [ip, #1]
006b75c0  b8 30 cd e5                                      strb r3, [sp, #0xb8]
006b75c4  00 30 dc e5                                      ldrb r3, [ip]
006b75c8  b9 30 cd e5                                      strb r3, [sp, #0xb9]
006b75cc  b0 20 d8 e1                                      ldrh r2, [r8]
006b75d0  be 25 cd e1                                      strh r2, [sp, #0x5e]
006b75d4  b0 10 9d e5                                      ldr r1, [sp, #0xb0]
006b75d8  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
006b75dc  01 30 a0 e1                                      mov r3, r1
006b75e0  02 00 51 e1                                      cmp r1, r2
006b75e4  b7 ff ff 1a                                      bne #0x6b74c8
006b75e8  06 20 a0 e1                                      mov r2, r6
006b75ec  28 00 9d e5                                      ldr r0, [sp, #0x28]
006b75f0  40 fd ff eb                                      bl #0x6b6af8
006b75f4  c4 20 9d e5                                      ldr r2, [sp, #0xc4]
006b75f8  b8 35 dd e1                                      ldrh r3, [sp, #0x58]
006b75fc  01 70 87 e2                                      add r7, r7, #1
006b7600  01 c0 a0 e3                                      mov ip, #1
006b7604  07 00 52 e1                                      cmp r2, r7
006b7608  1c 53 85 e1                                      orr r5, r5, ip, lsl r3
006b760c  bd ff ff 8a                                      bhi #0x6b7508
006b7610  05 c0 a0 e1                                      mov ip, r5
006b7614  10 b0 9d e5                                      ldr fp, [sp, #0x10]
006b7618  2c 50 9d e5                                      ldr r5, [sp, #0x2c]
006b761c  0c 10 a0 e1                                      mov r1, ip
006b7620  05 00 a0 e1                                      mov r0, r5
006b7624  4c a7 fb eb                                      bl #0x5a135c
006b7628  94 80 8d e2                                      add r8, sp, #0x94
006b762c  00 20 a0 e3                                      mov r2, #0
006b7630  00 30 94 e5                                      ldr r3, [r4]
006b7634  04 00 a0 e1                                      mov r0, r4
006b7638  9c 20 8d e5                                      str r2, [sp, #0x9c]
006b763c  94 20 8d e5                                      str r2, [sp, #0x94]
006b7640  98 20 8d e5                                      str r2, [sp, #0x98]
006b7644  08 10 a0 e1                                      mov r1, r8
006b7648  0c 20 a0 e3                                      mov r2, #0xc
006b764c  0f e0 a0 e1                                      mov lr, pc
006b7650  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7654  00 00 5b e3                                      cmp fp, #0
006b7658  29 01 00 1a                                      bne #0x6b7b04
006b765c  00 30 95 e5                                      ldr r3, [r5]
006b7660  94 c0 9d e5                                      ldr ip, [sp, #0x94]
006b7664  0c 20 a0 e3                                      mov r2, #0xc
006b7668  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b766c  04 00 a0 e1                                      mov r0, r4
006b7670  08 10 a0 e1                                      mov r1, r8
006b7674  00 c0 83 e5                                      str ip, [r3]
006b7678  98 c0 9d e5                                      ldr ip, [sp, #0x98]
006b767c  04 c0 83 e5                                      str ip, [r3, #4]
006b7680  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
006b7684  08 c0 83 e5                                      str ip, [r3, #8]
006b7688  00 30 94 e5                                      ldr r3, [r4]
006b768c  0f e0 a0 e1                                      mov lr, pc
006b7690  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7694  94 20 9d e5                                      ldr r2, [sp, #0x94]
006b7698  00 30 95 e5                                      ldr r3, [r5]
006b769c  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b76a0  0c 20 83 e5                                      str r2, [r3, #0xc]
006b76a4  98 20 9d e5                                      ldr r2, [sp, #0x98]
006b76a8  0c 30 83 e2                                      add r3, r3, #0xc
006b76ac  04 20 83 e5                                      str r2, [r3, #4]
006b76b0  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
006b76b4  08 20 83 e5                                      str r2, [r3, #8]
006b76b8  00 30 95 e5                                      ldr r3, [r5]
006b76bc  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
006b76c0  00 00 53 e3                                      cmp r3, #0
006b76c4  44 00 00 0a                                      beq #0x6b77dc
006b76c8  64 20 8d e2                                      add r2, sp, #0x64
006b76cc  00 60 a0 e3                                      mov r6, #0
006b76d0  70 90 8d e2                                      add sb, sp, #0x70
006b76d4  18 a0 a0 e3                                      mov sl, #0x18
006b76d8  10 20 8d e5                                      str r2, [sp, #0x10]
006b76dc  21 00 00 ea                                      b #0x6b7768
006b76e0  00 20 95 e5                                      ldr r2, [r5]
006b76e4  01 70 86 e2                                      add r7, r6, #1
006b76e8  9a 07 03 e0                                      mul r3, sl, r7
006b76ec  10 00 92 e5                                      ldr r0, [r2, #0x10]
006b76f0  08 10 a0 e1                                      mov r1, r8
006b76f4  0c 20 a0 e3                                      mov r2, #0xc
006b76f8  03 c0 80 e7                                      str ip, [r0, r3]
006b76fc  98 c0 9d e5                                      ldr ip, [sp, #0x98]
006b7700  03 30 80 e0                                      add r3, r0, r3
006b7704  04 00 a0 e1                                      mov r0, r4
006b7708  04 c0 83 e5                                      str ip, [r3, #4]
006b770c  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
006b7710  08 c0 83 e5                                      str ip, [r3, #8]
006b7714  00 30 94 e5                                      ldr r3, [r4]
006b7718  0f e0 a0 e1                                      mov lr, pc
006b771c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7720  00 00 5b e3                                      cmp fp, #0
006b7724  94 10 9d 05                                      ldreq r1, [sp, #0x94]
006b7728  21 00 00 1a                                      bne #0x6b77b4
006b772c  00 30 95 e5                                      ldr r3, [r5]
006b7730  9a 06 06 e0                                      mul r6, sl, r6
006b7734  10 20 93 e5                                      ldr r2, [r3, #0x10]
006b7738  24 30 86 e2                                      add r3, r6, #0x24
006b773c  77 60 ef e6                                      uxtb r6, r7
006b7740  03 10 82 e7                                      str r1, [r2, r3]
006b7744  03 30 82 e0                                      add r3, r2, r3
006b7748  98 20 9d e5                                      ldr r2, [sp, #0x98]
006b774c  04 20 83 e5                                      str r2, [r3, #4]
006b7750  9c 20 9d e5                                      ldr r2, [sp, #0x9c]
006b7754  08 20 83 e5                                      str r2, [r3, #8]
006b7758  00 30 95 e5                                      ldr r3, [r5]
006b775c  0c 30 d3 e5                                      ldrb r3, [r3, #0xc]
006b7760  06 00 53 e1                                      cmp r3, r6
006b7764  1c 00 00 9a                                      bls #0x6b77dc
006b7768  08 10 a0 e1                                      mov r1, r8
006b776c  0c 20 a0 e3                                      mov r2, #0xc
006b7770  00 30 94 e5                                      ldr r3, [r4]
006b7774  04 00 a0 e1                                      mov r0, r4
006b7778  0f e0 a0 e1                                      mov lr, pc
006b777c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7780  00 00 5b e3                                      cmp fp, #0
006b7784  94 c0 9d 05                                      ldreq ip, [sp, #0x94]
006b7788  d4 ff ff 0a                                      beq #0x6b76e0
006b778c  09 00 a0 e1                                      mov r0, sb
006b7790  08 10 a0 e1                                      mov r1, r8
006b7794  94 05 fb eb                                      bl #0x578dec
006b7798  74 30 9d e5                                      ldr r3, [sp, #0x74]
006b779c  70 c0 9d e5                                      ldr ip, [sp, #0x70]
006b77a0  98 30 8d e5                                      str r3, [sp, #0x98]
006b77a4  78 30 9d e5                                      ldr r3, [sp, #0x78]
006b77a8  94 c0 8d e5                                      str ip, [sp, #0x94]
006b77ac  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b77b0  ca ff ff ea                                      b #0x6b76e0
006b77b4  08 10 a0 e1                                      mov r1, r8
006b77b8  10 00 9d e5                                      ldr r0, [sp, #0x10]
006b77bc  8a 05 fb eb                                      bl #0x578dec
006b77c0  68 30 9d e5                                      ldr r3, [sp, #0x68]
006b77c4  64 10 9d e5                                      ldr r1, [sp, #0x64]
006b77c8  98 30 8d e5                                      str r3, [sp, #0x98]
006b77cc  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006b77d0  94 10 8d e5                                      str r1, [sp, #0x94]
006b77d4  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b77d8  d3 ff ff ea                                      b #0x6b772c
006b77dc  04 20 a0 e3                                      mov r2, #4
006b77e0  c0 10 8d e2                                      add r1, sp, #0xc0
006b77e4  00 30 94 e5                                      ldr r3, [r4]
006b77e8  04 00 a0 e1                                      mov r0, r4
006b77ec  0f e0 a0 e1                                      mov lr, pc
006b77f0  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b77f4  24 30 9d e5                                      ldr r3, [sp, #0x24]
006b77f8  c0 60 9d e5                                      ldr r6, [sp, #0xc0]
006b77fc  00 10 a0 e3                                      mov r1, #0
006b7800  00 20 93 e5                                      ldr r2, [r3]
006b7804  ac 30 9d e5                                      ldr r3, [sp, #0xac]
006b7808  78 70 92 e5                                      ldr r7, [r2, #0x78]
006b780c  ba 30 d3 e1                                      ldrh r3, [r3, #0xa]
006b7810  96 03 06 e0                                      mul r6, r6, r3
006b7814  06 00 a0 e1                                      mov r0, r6
006b7818  62 f2 f9 eb                                      bl #0x5341a8
006b781c  01 30 a0 e3                                      mov r3, #1
006b7820  09 00 8d e9                                      stmib sp, {r0, r3}
006b7824  00 60 8d e5                                      str r6, [sp]
006b7828  24 10 9d e5                                      ldr r1, [sp, #0x24]
006b782c  bc 00 8d e2                                      add r0, sp, #0xbc
006b7830  00 20 a0 e3                                      mov r2, #0
006b7834  04 30 a0 e3                                      mov r3, #4
006b7838  37 ff 2f e1                                      blx r7
006b783c  00 00 5b e3                                      cmp fp, #0
006b7840  cf 00 00 0a                                      beq #0x6b7b84
006b7844  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
006b7848  00 00 53 e3                                      cmp r3, #0
006b784c  a0 90 8d 02                                      addeq sb, sp, #0xa0
006b7850  3c 00 00 0a                                      beq #0x6b7948
006b7854  bc 33 9f e5                                      ldr r3, [pc, #0x3bc]
006b7858  20 c0 9d e5                                      ldr ip, [sp, #0x20]
006b785c  00 70 a0 e3                                      mov r7, #0
006b7860  07 80 a0 e1                                      mov r8, r7
006b7864  03 b0 9c e7                                      ldr fp, [ip, r3]
006b7868  a0 90 8d e2                                      add sb, sp, #0xa0
006b786c  30 a0 8d e2                                      add sl, sp, #0x30
006b7870  0c 00 00 ea                                      b #0x6b78a8
006b7874  01 20 42 e2                                      sub r2, r2, #1
006b7878  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b787c  03 30 82 e1                                      orr r3, r2, r3
006b7880  13 30 c6 e5                                      strb r3, [r6, #0x13]
006b7884  38 00 9d e5                                      ldr r0, [sp, #0x38]
006b7888  01 80 88 e2                                      add r8, r8, #1
006b788c  0c 70 87 e2                                      add r7, r7, #0xc
006b7890  00 00 50 e3                                      cmp r0, #0
006b7894  00 00 00 0a                                      beq #0x6b789c
006b7898  39 97 f1 eb                                      bl #0x31d584
006b789c  c4 30 9d e5                                      ldr r3, [sp, #0xc4]
006b78a0  08 00 53 e1                                      cmp r3, r8
006b78a4  27 00 00 9a                                      bls #0x6b7948
006b78a8  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
006b78ac  ac 60 9d e5                                      ldr r6, [sp, #0xac]
006b78b0  04 10 a0 e3                                      mov r1, #4
006b78b4  00 00 50 e3                                      cmp r0, #0
006b78b8  38 00 8d e5                                      str r0, [sp, #0x38]
006b78bc  04 30 90 15                                      ldrne r3, [r0, #4]
006b78c0  07 60 86 e0                                      add r6, r6, r7
006b78c4  01 30 83 12                                      addne r3, r3, #1
006b78c8  04 30 80 15                                      strne r3, [r0, #4]
006b78cc  ba 20 d6 e1                                      ldrh r2, [r6, #0xa]
006b78d0  bc 00 9d 15                                      ldrne r0, [sp, #0xbc]
006b78d4  b8 24 cd e1                                      strh r2, [sp, #0x48]
006b78d8  b8 30 d6 e1                                      ldrh r3, [r6, #8]
006b78dc  b4 34 cd e1                                      strh r3, [sp, #0x44]
006b78e0  b6 30 d6 e1                                      ldrh r3, [r6, #6]
006b78e4  03 30 db e7                                      ldrb r3, [fp, r3]
006b78e8  b6 34 cd e1                                      strh r3, [sp, #0x46]
006b78ec  3f a8 fb eb                                      bl #0x5a19f0
006b78f0  00 30 96 e5                                      ldr r3, [r6]
006b78f4  0a 10 a0 e1                                      mov r1, sl
006b78f8  03 30 80 e0                                      add r3, r0, r3
006b78fc  09 00 a0 e1                                      mov r0, sb
006b7900  40 30 8d e5                                      str r3, [sp, #0x40]
006b7904  f6 fb ff eb                                      bl #0x6b68e4
006b7908  38 60 9d e5                                      ldr r6, [sp, #0x38]
006b790c  13 30 d6 e5                                      ldrb r3, [r6, #0x13]
006b7910  1f 20 03 e2                                      and r2, r3, #0x1f
006b7914  01 00 52 e3                                      cmp r2, #1
006b7918  d5 ff ff 8a                                      bhi #0x6b7874
006b791c  12 30 d6 e5                                      ldrb r3, [r6, #0x12]
006b7920  20 00 13 e3                                      tst r3, #0x20
006b7924  02 00 00 1a                                      bne #0x6b7934
006b7928  00 c0 a0 e3                                      mov ip, #0
006b792c  13 c0 c6 e5                                      strb ip, [r6, #0x13]
006b7930  d3 ff ff ea                                      b #0x6b7884
006b7934  06 00 a0 e1                                      mov r0, r6
006b7938  00 30 96 e5                                      ldr r3, [r6]
006b793c  0f e0 a0 e1                                      mov lr, pc
006b7940  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b7944  f7 ff ff ea                                      b #0x6b7928
006b7948  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
006b794c  00 00 52 e3                                      cmp r2, #0
006b7950  24 00 00 0a                                      beq #0x6b79e8
006b7954  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
006b7958  00 70 a0 e3                                      mov r7, #0
006b795c  07 a0 a0 e1                                      mov sl, r7
006b7960  05 80 a0 e1                                      mov r8, r5
006b7964  a0 50 9d e5                                      ldr r5, [sp, #0xa0]
006b7968  03 00 55 e1                                      cmp r5, r3
006b796c  19 00 00 0a                                      beq #0x6b79d8
006b7970  b6 61 d5 e1                                      ldrh r6, [r5, #0x16]
006b7974  07 00 a0 e1                                      mov r0, r7
006b7978  06 10 a0 e1                                      mov r1, r6
006b797c  6a 5c f1 eb                                      bl #0x30eb2c
006b7980  06 00 61 e0                                      rsb r0, r1, r6
006b7984  06 10 a0 e1                                      mov r1, r6
006b7988  67 5c f1 eb                                      bl #0x30eb2c
006b798c  00 30 94 e5                                      ldr r3, [r4]
006b7990  01 20 a0 e3                                      mov r2, #1
006b7994  04 00 a0 e1                                      mov r0, r4
006b7998  01 60 a0 e1                                      mov r6, r1
006b799c  0f e0 a0 e1                                      mov lr, pc
006b79a0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b79a4  05 00 a0 e1                                      mov r0, r5
006b79a8  04 10 a0 e1                                      mov r1, r4
006b79ac  01 20 a0 e3                                      mov r2, #1
006b79b0  6f f8 ff eb                                      bl #0x6b5b74
006b79b4  b4 21 d5 e1                                      ldrh r2, [r5, #0x14]
006b79b8  b6 11 d5 e1                                      ldrh r1, [r5, #0x16]
006b79bc  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
006b79c0  20 50 85 e2                                      add r5, r5, #0x20
006b79c4  91 62 26 e0                                      mla r6, r1, r2, r6
006b79c8  03 00 55 e1                                      cmp r5, r3
006b79cc  06 70 87 e0                                      add r7, r7, r6
006b79d0  e6 ff ff 1a                                      bne #0x6b7970
006b79d4  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
006b79d8  01 a0 8a e2                                      add sl, sl, #1
006b79dc  0a 00 52 e1                                      cmp r2, sl
006b79e0  df ff ff 8a                                      bhi #0x6b7964
006b79e4  08 50 a0 e1                                      mov r5, r8
006b79e8  ac 40 9d e5                                      ldr r4, [sp, #0xac]
006b79ec  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006b79f0  04 00 53 e1                                      cmp r3, r4
006b79f4  1d 00 00 0a                                      beq #0x6b7a70
006b79f8  00 70 a0 e3                                      mov r7, #0
006b79fc  54 60 8d e2                                      add r6, sp, #0x54
006b7a00  bc 10 9d e5                                      ldr r1, [sp, #0xbc]
006b7a04  00 80 94 e5                                      ldr r8, [r4]
006b7a08  b6 e0 d4 e1                                      ldrh lr, [r4, #6]
006b7a0c  b8 c0 d4 e1                                      ldrh ip, [r4, #8]
006b7a10  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
006b7a14  00 00 51 e3                                      cmp r1, #0
006b7a18  54 10 8d e5                                      str r1, [sp, #0x54]
006b7a1c  04 00 91 15                                      ldrne r0, [r1, #4]
006b7a20  06 20 a0 e1                                      mov r2, r6
006b7a24  0c 40 84 e2                                      add r4, r4, #0xc
006b7a28  01 00 80 12                                      addne r0, r0, #1
006b7a2c  04 00 81 15                                      strne r0, [r1, #4]
006b7a30  00 00 95 e5                                      ldr r0, [r5]
006b7a34  58 80 8d e5                                      str r8, [sp, #0x58]
006b7a38  5c e0 8d e5                                      str lr, [sp, #0x5c]
006b7a3c  14 10 80 e2                                      add r1, r0, #0x14
006b7a40  07 10 81 e0                                      add r1, r1, r7
006b7a44  b0 c6 cd e1                                      strh ip, [sp, #0x60]
006b7a48  b2 36 cd e1                                      strh r3, [sp, #0x62]
006b7a4c  d0 f9 ff eb                                      bl #0x6b6194
006b7a50  54 00 9d e5                                      ldr r0, [sp, #0x54]
006b7a54  10 70 87 e2                                      add r7, r7, #0x10
006b7a58  00 00 50 e3                                      cmp r0, #0
006b7a5c  00 00 00 0a                                      beq #0x6b7a64
006b7a60  c7 96 f1 eb                                      bl #0x31d584
006b7a64  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006b7a68  03 00 54 e1                                      cmp r4, r3
006b7a6c  e3 ff ff 1a                                      bne #0x6b7a00
006b7a70  00 30 95 e5                                      ldr r3, [r5]
006b7a74  be 21 d3 e1                                      ldrh r2, [r3, #0x1e]
006b7a78  06 00 52 e3                                      cmp r2, #6
006b7a7c  54 00 00 0a                                      beq #0x6b7bd4
006b7a80  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006b7a84  04 20 82 e3                                      orr r2, r2, #4
006b7a88  be 20 c3 e1                                      strh r2, [r3, #0xe]
006b7a8c  00 20 a0 e3                                      mov r2, #0
006b7a90  08 e0 a0 e3                                      mov lr, #8
006b7a94  06 00 00 ea                                      b #0x6b7ab4
006b7a98  be 01 dc e1                                      ldrh r0, [ip, #0x1e]
006b7a9c  06 00 50 e3                                      cmp r0, #6
006b7aa0  be 00 d3 e1                                      ldrh r0, [r3, #0xe]
006b7aa4  1e 22 80 11                                      orrne r2, r0, lr, lsl r2
006b7aa8  1e 22 c0 01                                      biceq r2, r0, lr, lsl r2
006b7aac  be 20 c3 e1                                      strh r2, [r3, #0xe]
006b7ab0  01 20 a0 e1                                      mov r2, r1
006b7ab4  00 30 95 e5                                      ldr r3, [r5]
006b7ab8  01 10 82 e2                                      add r1, r2, #1
006b7abc  71 10 ef e6                                      uxtb r1, r1
006b7ac0  0c 00 d3 e5                                      ldrb r0, [r3, #0xc]
006b7ac4  01 c2 83 e0                                      add ip, r3, r1, lsl #4
006b7ac8  02 00 50 e1                                      cmp r0, r2
006b7acc  f1 ff ff 8a                                      bhi #0x6b7a98
006b7ad0  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
006b7ad4  08 20 83 e5                                      str r2, [r3, #8]
006b7ad8  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
006b7adc  00 00 50 e3                                      cmp r0, #0
006b7ae0  00 00 00 0a                                      beq #0x6b7ae8
006b7ae4  a6 96 f1 eb                                      bl #0x31d584
006b7ae8  09 00 a0 e1                                      mov r0, sb
006b7aec  20 fb ff eb                                      bl #0x6b6774
006b7af0  28 00 9d e5                                      ldr r0, [sp, #0x28]
006b7af4  07 fb ff eb                                      bl #0x6b6718
006b7af8  05 00 a0 e1                                      mov r0, r5
006b7afc  cc d0 8d e2                                      add sp, sp, #0xcc
006b7b00  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b7b04  88 00 8d e2                                      add r0, sp, #0x88
006b7b08  08 10 a0 e1                                      mov r1, r8
006b7b0c  b6 04 fb eb                                      bl #0x578dec
006b7b10  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
006b7b14  00 30 95 e5                                      ldr r3, [r5]
006b7b18  88 00 9d e5                                      ldr r0, [sp, #0x88]
006b7b1c  98 20 8d e5                                      str r2, [sp, #0x98]
006b7b20  90 20 9d e5                                      ldr r2, [sp, #0x90]
006b7b24  94 00 8d e5                                      str r0, [sp, #0x94]
006b7b28  08 10 a0 e1                                      mov r1, r8
006b7b2c  9c 20 8d e5                                      str r2, [sp, #0x9c]
006b7b30  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b7b34  0c 20 a0 e3                                      mov r2, #0xc
006b7b38  00 00 83 e5                                      str r0, [r3]
006b7b3c  98 c0 9d e5                                      ldr ip, [sp, #0x98]
006b7b40  04 00 a0 e1                                      mov r0, r4
006b7b44  04 c0 83 e5                                      str ip, [r3, #4]
006b7b48  9c c0 9d e5                                      ldr ip, [sp, #0x9c]
006b7b4c  08 c0 83 e5                                      str ip, [r3, #8]
006b7b50  00 30 94 e5                                      ldr r3, [r4]
006b7b54  0f e0 a0 e1                                      mov lr, pc
006b7b58  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7b5c  7c 00 8d e2                                      add r0, sp, #0x7c
006b7b60  08 10 a0 e1                                      mov r1, r8
006b7b64  a0 04 fb eb                                      bl #0x578dec
006b7b68  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b7b6c  7c 20 9d e5                                      ldr r2, [sp, #0x7c]
006b7b70  98 30 8d e5                                      str r3, [sp, #0x98]
006b7b74  84 30 9d e5                                      ldr r3, [sp, #0x84]
006b7b78  94 20 8d e5                                      str r2, [sp, #0x94]
006b7b7c  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b7b80  c4 fe ff ea                                      b #0x6b7698
006b7b84  04 10 a0 e3                                      mov r1, #4
006b7b88  bc 00 9d e5                                      ldr r0, [sp, #0xbc]
006b7b8c  97 a7 fb eb                                      bl #0x5a19f0
006b7b90  00 30 94 e5                                      ldr r3, [r4]
006b7b94  00 10 a0 e1                                      mov r1, r0
006b7b98  06 20 a0 e1                                      mov r2, r6
006b7b9c  04 00 a0 e1                                      mov r0, r4
006b7ba0  0f e0 a0 e1                                      mov lr, pc
006b7ba4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7ba8  bc 40 9d e5                                      ldr r4, [sp, #0xbc]
006b7bac  13 30 d4 e5                                      ldrb r3, [r4, #0x13]
006b7bb0  1f 20 03 e2                                      and r2, r3, #0x1f
006b7bb4  01 00 52 e3                                      cmp r2, #1
006b7bb8  09 00 00 9a                                      bls #0x6b7be4
006b7bbc  01 20 42 e2                                      sub r2, r2, #1
006b7bc0  1f 30 c3 e3                                      bic r3, r3, #0x1f
006b7bc4  03 30 82 e1                                      orr r3, r2, r3
006b7bc8  13 30 c4 e5                                      strb r3, [r4, #0x13]
006b7bcc  a0 90 8d e2                                      add sb, sp, #0xa0
006b7bd0  84 ff ff ea                                      b #0x6b79e8
006b7bd4  be 20 d3 e1                                      ldrh r2, [r3, #0xe]
006b7bd8  04 20 c2 e3                                      bic r2, r2, #4
006b7bdc  be 20 c3 e1                                      strh r2, [r3, #0xe]
006b7be0  a9 ff ff ea                                      b #0x6b7a8c
006b7be4  12 30 d4 e5                                      ldrb r3, [r4, #0x12]
006b7be8  20 00 13 e3                                      tst r3, #0x20
006b7bec  03 00 00 1a                                      bne #0x6b7c00
006b7bf0  00 30 a0 e3                                      mov r3, #0
006b7bf4  13 30 c4 e5                                      strb r3, [r4, #0x13]
006b7bf8  a0 90 8d e2                                      add sb, sp, #0xa0
006b7bfc  79 ff ff ea                                      b #0x6b79e8
006b7c00  00 30 94 e5                                      ldr r3, [r4]
006b7c04  04 00 a0 e1                                      mov r0, r4
006b7c08  0f e0 a0 e1                                      mov lr, pc
006b7c0c  18 f0 93 e5                                      ldr pc, [r3, #0x18]
006b7c10  f6 ff ff ea                                      b #0x6b7bf0
; mapping-symbol data/literal pool
006b7c14  58 d6 2d 00 08 11 00 00                          .byte 0x58, 0xd6, 0x2d, 0x00, 0x08, 0x11, 0x00, 0x00

; FUNCTION 0x006b7c1c, declared_size=360, range_size=360, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io6loadMBEPNS0_9IReadFileEbPNS_5video12IVideoDriverE
; demangled: glitch::io::loadMB(glitch::io::IReadFile*, bool, glitch::video::IVideoDriver*)
; decoder-mode: arm
006b7c1c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
006b7c20  01 40 a0 e1                                      mov r4, r1
006b7c24  24 d0 4d e2                                      sub sp, sp, #0x24
006b7c28  02 70 a0 e1                                      mov r7, r2
006b7c2c  03 60 a0 e1                                      mov r6, r3
006b7c30  00 50 a0 e1                                      mov r5, r0
006b7c34  00 30 94 e5                                      ldr r3, [r4]
006b7c38  1f 10 8d e2                                      add r1, sp, #0x1f
006b7c3c  01 20 a0 e3                                      mov r2, #1
006b7c40  04 00 a0 e1                                      mov r0, r4
006b7c44  0f e0 a0 e1                                      mov lr, pc
006b7c48  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b7c4c  04 10 a0 e1                                      mov r1, r4
006b7c50  18 00 8d e2                                      add r0, sp, #0x18
006b7c54  07 20 a0 e1                                      mov r2, r7
006b7c58  06 30 a0 e1                                      mov r3, r6
006b7c5c  dd fd ff eb                                      bl #0x6b73d8
006b7c60  04 10 a0 e1                                      mov r1, r4
006b7c64  07 20 a0 e1                                      mov r2, r7
006b7c68  06 30 a0 e1                                      mov r3, r6
006b7c6c  0d 00 a0 e1                                      mov r0, sp
006b7c70  61 f9 ff eb                                      bl #0x6b61fc
006b7c74  00 10 a0 e3                                      mov r1, #0
006b7c78  38 00 a0 e3                                      mov r0, #0x38
006b7c7c  4a f1 f9 eb                                      bl #0x5341ac
006b7c80  f4 40 9f e5                                      ldr r4, [pc, #0xf4]
006b7c84  f4 20 9f e5                                      ldr r2, [pc, #0xf4]
006b7c88  00 30 a0 e3                                      mov r3, #0
006b7c8c  04 40 8f e0                                      add r4, pc, r4
006b7c90  02 20 94 e7                                      ldr r2, [r4, r2]
006b7c94  1f 10 dd e5                                      ldrb r1, [sp, #0x1f]
006b7c98  04 30 80 e5                                      str r3, [r0, #4]
006b7c9c  08 20 82 e2                                      add r2, r2, #8
006b7ca0  00 20 80 e5                                      str r2, [r0]
006b7ca4  10 30 80 e5                                      str r3, [r0, #0x10]
006b7ca8  08 30 80 e5                                      str r3, [r0, #8]
006b7cac  0c 30 80 e5                                      str r3, [r0, #0xc]
006b7cb0  18 30 9d e5                                      ldr r3, [sp, #0x18]
006b7cb4  14 30 80 e5                                      str r3, [r0, #0x14]
006b7cb8  00 00 53 e3                                      cmp r3, #0
006b7cbc  00 20 93 15                                      ldrne r2, [r3]
006b7cc0  01 20 82 12                                      addne r2, r2, #1
006b7cc4  00 20 83 15                                      strne r2, [r3]
006b7cc8  00 30 9d e5                                      ldr r3, [sp]
006b7ccc  18 30 80 e5                                      str r3, [r0, #0x18]
006b7cd0  00 00 53 e3                                      cmp r3, #0
006b7cd4  04 20 93 15                                      ldrne r2, [r3, #4]
006b7cd8  01 20 82 12                                      addne r2, r2, #1
006b7cdc  04 20 83 15                                      strne r2, [r3, #4]
006b7ce0  04 30 9d e5                                      ldr r3, [sp, #4]
006b7ce4  1c 30 80 e5                                      str r3, [r0, #0x1c]
006b7ce8  08 30 9d e5                                      ldr r3, [sp, #8]
006b7cec  20 30 80 e5                                      str r3, [r0, #0x20]
006b7cf0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
006b7cf4  24 30 80 e5                                      str r3, [r0, #0x24]
006b7cf8  10 30 9d e5                                      ldr r3, [sp, #0x10]
006b7cfc  28 30 80 e5                                      str r3, [r0, #0x28]
006b7d00  b4 31 dd e1                                      ldrh r3, [sp, #0x14]
006b7d04  bc 32 c0 e1                                      strh r3, [r0, #0x2c]
006b7d08  b6 31 dd e1                                      ldrh r3, [sp, #0x16]
006b7d0c  34 10 c0 e5                                      strb r1, [r0, #0x34]
006b7d10  be 32 c0 e1                                      strh r3, [r0, #0x2e]
006b7d14  00 30 a0 e3                                      mov r3, #0
006b7d18  30 30 80 e5                                      str r3, [r0, #0x30]
006b7d1c  00 00 85 e5                                      str r0, [r5]
006b7d20  04 30 90 e5                                      ldr r3, [r0, #4]
006b7d24  01 30 83 e2                                      add r3, r3, #1
006b7d28  04 30 80 e5                                      str r3, [r0, #4]
006b7d2c  00 00 9d e5                                      ldr r0, [sp]
006b7d30  00 00 50 e3                                      cmp r0, #0
006b7d34  00 00 00 0a                                      beq #0x6b7d3c
006b7d38  11 96 f1 eb                                      bl #0x31d584
006b7d3c  18 40 9d e5                                      ldr r4, [sp, #0x18]
006b7d40  00 00 54 e3                                      cmp r4, #0
006b7d44  04 00 00 0a                                      beq #0x6b7d5c
006b7d48  00 30 94 e5                                      ldr r3, [r4]
006b7d4c  01 30 43 e2                                      sub r3, r3, #1
006b7d50  00 00 53 e3                                      cmp r3, #0
006b7d54  00 30 84 e5                                      str r3, [r4]
006b7d58  02 00 00 0a                                      beq #0x6b7d68
006b7d5c  05 00 a0 e1                                      mov r0, r5
006b7d60  24 d0 8d e2                                      add sp, sp, #0x24
006b7d64  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
006b7d68  04 00 a0 e1                                      mov r0, r4
006b7d6c  2a a3 fb eb                                      bl #0x5a0a1c
006b7d70  04 00 a0 e1                                      mov r0, r4
006b7d74  4d 59 f1 eb                                      bl #0x30e2b0
006b7d78  f7 ff ff ea                                      b #0x6b7d5c
; mapping-symbol data/literal pool
006b7d7c  04 ce 2d 00 54 0c 00 00                          .byte 0x04, 0xce, 0x2d, 0x00, 0x54, 0x0c, 0x00, 0x00

; FUNCTION 0x006b7d84, declared_size=2520, range_size=2520, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io4saveERKN5boost13intrusive_ptrIKNS_5video14CVertexStreamsEEEPNS0_10IWriteFileEb
; demangled: glitch::io::save(boost::intrusive_ptr<glitch::video::CVertexStreams const> const&, glitch::io::IWriteFile*, bool)
; decoder-mode: arm
006b7d84  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
006b7d88  00 30 90 e5                                      ldr r3, [r0]
006b7d8c  dc d0 4d e2                                      sub sp, sp, #0xdc
006b7d90  00 80 a0 e3                                      mov r8, #0
006b7d94  bc 80 8d e5                                      str r8, [sp, #0xbc]
006b7d98  c0 80 8d e5                                      str r8, [sp, #0xc0]
006b7d9c  c4 80 8d e5                                      str r8, [sp, #0xc4]
006b7da0  b0 80 8d e5                                      str r8, [sp, #0xb0]
006b7da4  b4 80 8d e5                                      str r8, [sp, #0xb4]
006b7da8  b8 80 8d e5                                      str r8, [sp, #0xb8]
006b7dac  10 c0 93 e5                                      ldr ip, [r3, #0x10]
006b7db0  94 99 9f e5                                      ldr sb, [pc, #0x994]
006b7db4  00 70 a0 e1                                      mov r7, r0
006b7db8  14 00 83 e2                                      add r0, r3, #0x14
006b7dbc  00 00 5c e1                                      cmp ip, r0
006b7dc0  09 90 8f e0                                      add sb, pc, sb
006b7dc4  01 40 a0 e1                                      mov r4, r1
006b7dc8  02 50 a0 e1                                      mov r5, r2
006b7dcc  59 02 00 0a                                      beq #0x6b8738
006b7dd0  a4 20 8d e2                                      add r2, sp, #0xa4
006b7dd4  04 00 82 e2                                      add r0, r2, #4
006b7dd8  14 00 8d e5                                      str r0, [sp, #0x14]
006b7ddc  bc 10 8d e2                                      add r1, sp, #0xbc
006b7de0  20 10 8d e5                                      str r1, [sp, #0x20]
006b7de4  14 10 9d e5                                      ldr r1, [sp, #0x14]
006b7de8  b0 e0 8d e2                                      add lr, sp, #0xb0
006b7dec  5c b9 9f e5                                      ldr fp, [pc, #0x95c]
006b7df0  10 20 8d e5                                      str r2, [sp, #0x10]
006b7df4  1c e0 8d e5                                      str lr, [sp, #0x1c]
006b7df8  08 20 8e e2                                      add r2, lr, #8
006b7dfc  48 00 8d e2                                      add r0, sp, #0x48
006b7e00  c8 e0 8d e2                                      add lr, sp, #0xc8
006b7e04  04 10 81 e2                                      add r1, r1, #4
006b7e08  24 60 83 e2                                      add r6, r3, #0x24
006b7e0c  30 20 8d e5                                      str r2, [sp, #0x30]
006b7e10  34 e0 8d e5                                      str lr, [sp, #0x34]
006b7e14  04 00 8d e5                                      str r0, [sp, #4]
006b7e18  18 10 8d e5                                      str r1, [sp, #0x18]
006b7e1c  0c 70 8d e5                                      str r7, [sp, #0xc]
006b7e20  24 40 8d e5                                      str r4, [sp, #0x24]
006b7e24  28 50 8d e5                                      str r5, [sp, #0x28]
006b7e28  10 20 16 e5                                      ldr r2, [r6, #-0x10]
006b7e2c  00 00 52 e3                                      cmp r2, #0
006b7e30  40 00 00 0a                                      beq #0x6b7f38
006b7e34  b6 30 56 e1                                      ldrh r3, [r6, #-6]
006b7e38  0b 20 99 e7                                      ldr r2, [sb, fp]
006b7e3c  08 00 a0 e1                                      mov r0, r8
006b7e40  03 40 d2 e7                                      ldrb r4, [r2, r3]
006b7e44  04 10 a0 e1                                      mov r1, r4
006b7e48  37 5b f1 eb                                      bl #0x30eb2c
006b7e4c  04 00 61 e0                                      rsb r0, r1, r4
006b7e50  04 10 a0 e1                                      mov r1, r4
006b7e54  34 5b f1 eb                                      bl #0x30eb2c
006b7e58  08 80 81 e0                                      add r8, r1, r8
006b7e5c  a4 80 8d e5                                      str r8, [sp, #0xa4]
006b7e60  b8 20 56 e1                                      ldrh r2, [r6, #-8]
006b7e64  c4 10 9d e5                                      ldr r1, [sp, #0xc4]
006b7e68  b8 2a cd e1                                      strh r2, [sp, #0xa8]
006b7e6c  b6 30 56 e1                                      ldrh r3, [r6, #-6]
006b7e70  ba 3a cd e1                                      strh r3, [sp, #0xaa]
006b7e74  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006b7e78  b4 20 56 e1                                      ldrh r2, [r6, #-4]
006b7e7c  01 00 53 e1                                      cmp r3, r1
006b7e80  92 84 28 e0                                      mla r8, r2, r4, r8
006b7e84  bc 2a cd e1                                      strh r2, [sp, #0xac]
006b7e88  91 01 00 0a                                      beq #0x6b84d4
006b7e8c  10 40 9d e5                                      ldr r4, [sp, #0x10]
006b7e90  03 20 a0 e1                                      mov r2, r3
006b7e94  00 10 94 e5                                      ldr r1, [r4]
006b7e98  04 10 82 e4                                      str r1, [r2], #4
006b7e9c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
006b7ea0  00 10 9e e5                                      ldr r1, [lr]
006b7ea4  04 10 83 e5                                      str r1, [r3, #4]
006b7ea8  18 00 9d e5                                      ldr r0, [sp, #0x18]
006b7eac  00 30 90 e5                                      ldr r3, [r0]
006b7eb0  04 30 82 e5                                      str r3, [r2, #4]
006b7eb4  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006b7eb8  0c 30 83 e2                                      add r3, r3, #0xc
006b7ebc  c0 30 8d e5                                      str r3, [sp, #0xc0]
006b7ec0  0b 10 99 e7                                      ldr r1, [sb, fp]
006b7ec4  b6 20 56 e1                                      ldrh r2, [r6, #-6]
006b7ec8  10 30 16 e5                                      ldr r3, [r6, #-0x10]
006b7ecc  b4 40 9d e5                                      ldr r4, [sp, #0xb4]
006b7ed0  b8 00 9d e5                                      ldr r0, [sp, #0xb8]
006b7ed4  02 70 d1 e7                                      ldrb r7, [r1, r2]
006b7ed8  b2 10 56 e1                                      ldrh r1, [r6, #-2]
006b7edc  08 50 93 e5                                      ldr r5, [r3, #8]
006b7ee0  0c 30 16 e5                                      ldr r3, [r6, #-0xc]
006b7ee4  00 00 54 e1                                      cmp r4, r0
006b7ee8  08 10 8d e5                                      str r1, [sp, #8]
006b7eec  03 50 85 e0                                      add r5, r5, r3
006b7ef0  b4 a0 56 e1                                      ldrh sl, [r6, #-4]
006b7ef4  98 01 00 0a                                      beq #0x6b855c
006b7ef8  04 c0 9d e5                                      ldr ip, [sp, #4]
006b7efc  04 e0 a0 e1                                      mov lr, r4
006b7f00  b0 16 cd e1                                      strh r1, [sp, #0x60]
006b7f04  58 50 8d e5                                      str r5, [sp, #0x58]
006b7f08  0f 00 bc e8                                      ldm ip!, {r0, r1, r2, r3}
006b7f0c  be 75 cd e1                                      strh r7, [sp, #0x5e]
006b7f10  bc a5 cd e1                                      strh sl, [sp, #0x5c]
006b7f14  0f 00 ae e8                                      stm lr!, {r0, r1, r2, r3}
006b7f18  07 00 9c e8                                      ldm ip, {r0, r1, r2}
006b7f1c  03 00 8e e8                                      stm lr, {r0, r1}
006b7f20  b8 21 c4 e1                                      strh r2, [r4, #0x18]
006b7f24  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
006b7f28  0c 00 9d e5                                      ldr r0, [sp, #0xc]
006b7f2c  20 20 82 e2                                      add r2, r2, #0x20
006b7f30  00 30 90 e5                                      ldr r3, [r0]
006b7f34  b4 20 8d e5                                      str r2, [sp, #0xb4]
006b7f38  10 20 93 e5                                      ldr r2, [r3, #0x10]
006b7f3c  06 10 a0 e1                                      mov r1, r6
006b7f40  10 60 86 e2                                      add r6, r6, #0x10
006b7f44  01 00 52 e1                                      cmp r2, r1
006b7f48  b6 ff ff 1a                                      bne #0x6b7e28
006b7f4c  14 30 83 e2                                      add r3, r3, #0x14
006b7f50  03 00 52 e1                                      cmp r2, r3
006b7f54  0c 70 9d e5                                      ldr r7, [sp, #0xc]
006b7f58  24 40 9d e5                                      ldr r4, [sp, #0x24]
006b7f5c  28 50 9d e5                                      ldr r5, [sp, #0x28]
006b7f60  0d 00 00 0a                                      beq #0x6b7f9c
006b7f64  00 10 93 e5                                      ldr r1, [r3]
006b7f68  00 00 51 e3                                      cmp r1, #0
006b7f6c  f8 00 00 0a                                      beq #0x6b8354
006b7f70  d8 27 9f e5                                      ldr r2, [pc, #0x7d8]
006b7f74  ba 30 d3 e1                                      ldrh r3, [r3, #0xa]
006b7f78  08 00 a0 e1                                      mov r0, r8
006b7f7c  02 20 99 e7                                      ldr r2, [sb, r2]
006b7f80  03 60 d2 e7                                      ldrb r6, [r2, r3]
006b7f84  06 10 a0 e1                                      mov r1, r6
006b7f88  e7 5a f1 eb                                      bl #0x30eb2c
006b7f8c  06 00 61 e0                                      rsb r0, r1, r6
006b7f90  06 10 a0 e1                                      mov r1, r6
006b7f94  e4 5a f1 eb                                      bl #0x30eb2c
006b7f98  08 80 81 e0                                      add r8, r1, r8
006b7f9c  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
006b7fa0  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
006b7fa4  03 20 a0 e1                                      mov r2, r3
006b7fa8  01 00 53 e1                                      cmp r3, r1
006b7fac  06 00 00 0a                                      beq #0x6b7fcc
006b7fb0  78 80 ff e6                                      uxth r8, r8
006b7fb4  ba 80 c3 e1                                      strh r8, [r3, #0xa]
006b7fb8  c0 20 9d e5                                      ldr r2, [sp, #0xc0]
006b7fbc  0c 30 83 e2                                      add r3, r3, #0xc
006b7fc0  02 00 53 e1                                      cmp r3, r2
006b7fc4  fa ff ff 1a                                      bne #0x6b7fb4
006b7fc8  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006b7fcc  03 30 62 e0                                      rsb r3, r2, r3
006b7fd0  43 31 a0 e1                                      asr r3, r3, #2
006b7fd4  00 00 55 e3                                      cmp r5, #0
006b7fd8  03 21 83 e0                                      add r2, r3, r3, lsl #2
006b7fdc  02 22 82 e0                                      add r2, r2, r2, lsl #4
006b7fe0  02 24 82 e0                                      add r2, r2, r2, lsl #8
006b7fe4  02 28 82 e0                                      add r2, r2, r2, lsl #16
006b7fe8  82 30 83 e0                                      add r3, r3, r2, lsl #1
006b7fec  d0 30 8d e5                                      str r3, [sp, #0xd0]
006b7ff0  43 01 00 0a                                      beq #0x6b8504
006b7ff4  d3 00 dd e5                                      ldrb r0, [sp, #0xd3]
006b7ff8  d2 10 dd e5                                      ldrb r1, [sp, #0xd2]
006b7ffc  d1 20 dd e5                                      ldrb r2, [sp, #0xd1]
006b8000  d0 30 dd e5                                      ldrb r3, [sp, #0xd0]
006b8004  a4 00 cd e5                                      strb r0, [sp, #0xa4]
006b8008  a5 10 cd e5                                      strb r1, [sp, #0xa5]
006b800c  a6 20 cd e5                                      strb r2, [sp, #0xa6]
006b8010  a7 30 cd e5                                      strb r3, [sp, #0xa7]
006b8014  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
006b8018  00 30 94 e5                                      ldr r3, [r4]
006b801c  04 00 a0 e1                                      mov r0, r4
006b8020  d0 20 8d e5                                      str r2, [sp, #0xd0]
006b8024  d0 10 8d e2                                      add r1, sp, #0xd0
006b8028  04 20 a0 e3                                      mov r2, #4
006b802c  0f e0 a0 e1                                      mov lr, pc
006b8030  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8034  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006b8038  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006b803c  a4 80 8d e2                                      add r8, sp, #0xa4
006b8040  03 00 52 e1                                      cmp r2, r3
006b8044  02 60 a0 01                                      moveq r6, r2
006b8048  49 00 00 0a                                      beq #0x6b8174
006b804c  0c 60 82 e2                                      add r6, r2, #0xc
006b8050  c8 90 8d e2                                      add sb, sp, #0xc8
006b8054  d6 a0 8d e2                                      add sl, sp, #0xd6
006b8058  00 00 00 ea                                      b #0x6b8060
006b805c  02 60 a0 e1                                      mov r6, r2
006b8060  0c 20 16 e5                                      ldr r2, [r6, #-0xc]
006b8064  00 30 94 e5                                      ldr r3, [r4]
006b8068  09 10 a0 e1                                      mov r1, sb
006b806c  22 ec a0 e1                                      lsr lr, r2, #0x18
006b8070  52 c8 e7 e7                                      ubfx ip, r2, #0x10, #8
006b8074  52 04 e7 e7                                      ubfx r0, r2, #8, #8
006b8078  a4 e0 cd e5                                      strb lr, [sp, #0xa4]
006b807c  a6 00 cd e5                                      strb r0, [sp, #0xa6]
006b8080  a7 20 cd e5                                      strb r2, [sp, #0xa7]
006b8084  a5 c0 cd e5                                      strb ip, [sp, #0xa5]
006b8088  00 c0 98 e5                                      ldr ip, [r8]
006b808c  04 20 a0 e3                                      mov r2, #4
006b8090  04 00 a0 e1                                      mov r0, r4
006b8094  c8 c0 8d e5                                      str ip, [sp, #0xc8]
006b8098  0f e0 a0 e1                                      mov lr, pc
006b809c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b80a0  b8 20 56 e1                                      ldrh r2, [r6, #-8]
006b80a4  00 30 94 e5                                      ldr r3, [r4]
006b80a8  0a 10 a0 e1                                      mov r1, sl
006b80ac  22 04 a0 e1                                      lsr r0, r2, #8
006b80b0  a4 00 cd e5                                      strb r0, [sp, #0xa4]
006b80b4  a5 20 cd e5                                      strb r2, [sp, #0xa5]
006b80b8  b0 20 d8 e1                                      ldrh r2, [r8]
006b80bc  04 00 a0 e1                                      mov r0, r4
006b80c0  b6 2d cd e1                                      strh r2, [sp, #0xd6]
006b80c4  02 20 a0 e3                                      mov r2, #2
006b80c8  0f e0 a0 e1                                      mov lr, pc
006b80cc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b80d0  b6 20 56 e1                                      ldrh r2, [r6, #-6]
006b80d4  00 30 94 e5                                      ldr r3, [r4]
006b80d8  0a 10 a0 e1                                      mov r1, sl
006b80dc  22 04 a0 e1                                      lsr r0, r2, #8
006b80e0  a4 00 cd e5                                      strb r0, [sp, #0xa4]
006b80e4  a5 20 cd e5                                      strb r2, [sp, #0xa5]
006b80e8  b0 e0 d8 e1                                      ldrh lr, [r8]
006b80ec  02 20 a0 e3                                      mov r2, #2
006b80f0  04 00 a0 e1                                      mov r0, r4
006b80f4  b6 ed cd e1                                      strh lr, [sp, #0xd6]
006b80f8  0f e0 a0 e1                                      mov lr, pc
006b80fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8100  b4 20 56 e1                                      ldrh r2, [r6, #-4]
006b8104  00 30 94 e5                                      ldr r3, [r4]
006b8108  0a 10 a0 e1                                      mov r1, sl
006b810c  22 04 a0 e1                                      lsr r0, r2, #8
006b8110  a5 20 cd e5                                      strb r2, [sp, #0xa5]
006b8114  a4 00 cd e5                                      strb r0, [sp, #0xa4]
006b8118  b0 00 d8 e1                                      ldrh r0, [r8]
006b811c  02 20 a0 e3                                      mov r2, #2
006b8120  b6 0d cd e1                                      strh r0, [sp, #0xd6]
006b8124  04 00 a0 e1                                      mov r0, r4
006b8128  0f e0 a0 e1                                      mov lr, pc
006b812c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8130  b2 20 56 e1                                      ldrh r2, [r6, #-2]
006b8134  00 30 94 e5                                      ldr r3, [r4]
006b8138  04 00 a0 e1                                      mov r0, r4
006b813c  22 14 a0 e1                                      lsr r1, r2, #8
006b8140  a5 20 cd e5                                      strb r2, [sp, #0xa5]
006b8144  a4 10 cd e5                                      strb r1, [sp, #0xa4]
006b8148  b0 10 d8 e1                                      ldrh r1, [r8]
006b814c  02 20 a0 e3                                      mov r2, #2
006b8150  b6 1d cd e1                                      strh r1, [sp, #0xd6]
006b8154  0a 10 a0 e1                                      mov r1, sl
006b8158  0f e0 a0 e1                                      mov lr, pc
006b815c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8160  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006b8164  0c 20 86 e2                                      add r2, r6, #0xc
006b8168  03 00 56 e1                                      cmp r6, r3
006b816c  ba ff ff 1a                                      bne #0x6b805c
006b8170  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006b8174  00 00 97 e5                                      ldr r0, [r7]
006b8178  00 10 a0 e3                                      mov r1, #0
006b817c  a0 10 8d e5                                      str r1, [sp, #0xa0]
006b8180  98 10 8d e5                                      str r1, [sp, #0x98]
006b8184  9c 10 8d e5                                      str r1, [sp, #0x9c]
006b8188  10 10 90 e5                                      ldr r1, [r0, #0x10]
006b818c  06 30 62 e0                                      rsb r3, r2, r6
006b8190  43 31 a0 e1                                      asr r3, r3, #2
006b8194  00 00 91 e5                                      ldr r0, [r1]
006b8198  03 21 83 e0                                      add r2, r3, r3, lsl #2
006b819c  0c 60 a0 e3                                      mov r6, #0xc
006b81a0  98 00 8d e5                                      str r0, [sp, #0x98]
006b81a4  04 00 91 e5                                      ldr r0, [r1, #4]
006b81a8  02 22 82 e0                                      add r2, r2, r2, lsl #4
006b81ac  00 00 55 e3                                      cmp r5, #0
006b81b0  02 24 82 e0                                      add r2, r2, r2, lsl #8
006b81b4  9c 00 8d e5                                      str r0, [sp, #0x9c]
006b81b8  02 28 82 e0                                      add r2, r2, r2, lsl #16
006b81bc  08 10 91 e5                                      ldr r1, [r1, #8]
006b81c0  82 30 83 e0                                      add r3, r3, r2, lsl #1
006b81c4  96 03 09 e0                                      mul sb, r6, r3
006b81c8  a0 10 8d e5                                      str r1, [sp, #0xa0]
006b81cc  31 01 00 1a                                      bne #0x6b8698
006b81d0  98 a0 8d e2                                      add sl, sp, #0x98
006b81d4  06 20 a0 e1                                      mov r2, r6
006b81d8  00 30 94 e5                                      ldr r3, [r4]
006b81dc  04 00 a0 e1                                      mov r0, r4
006b81e0  0a 10 a0 e1                                      mov r1, sl
006b81e4  0f e0 a0 e1                                      mov lr, pc
006b81e8  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b81ec  00 30 97 e5                                      ldr r3, [r7]
006b81f0  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b81f4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006b81f8  0c 30 83 e2                                      add r3, r3, #0xc
006b81fc  98 20 8d e5                                      str r2, [sp, #0x98]
006b8200  04 20 93 e5                                      ldr r2, [r3, #4]
006b8204  9c 20 8d e5                                      str r2, [sp, #0x9c]
006b8208  08 30 93 e5                                      ldr r3, [r3, #8]
006b820c  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b8210  00 30 94 e5                                      ldr r3, [r4]
006b8214  0c 20 a0 e3                                      mov r2, #0xc
006b8218  04 00 a0 e1                                      mov r0, r4
006b821c  0a 10 a0 e1                                      mov r1, sl
006b8220  0f e0 a0 e1                                      mov lr, pc
006b8224  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8228  00 30 97 e5                                      ldr r3, [r7]
006b822c  1c 90 89 e2                                      add sb, sb, #0x1c
006b8230  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
006b8234  00 00 52 e3                                      cmp r2, #0
006b8238  4a 00 00 0a                                      beq #0x6b8368
006b823c  74 20 8d e2                                      add r2, sp, #0x74
006b8240  68 e0 8d e2                                      add lr, sp, #0x68
006b8244  00 60 a0 e3                                      mov r6, #0
006b8248  18 b0 a0 e3                                      mov fp, #0x18
006b824c  04 40 8d e9                                      stmib sp, {r2, lr}
006b8250  05 80 a0 e1                                      mov r8, r5
006b8254  1d 00 00 ea                                      b #0x6b82d0
006b8258  0a 10 a0 e1                                      mov r1, sl
006b825c  0c 20 a0 e3                                      mov r2, #0xc
006b8260  00 30 94 e5                                      ldr r3, [r4]
006b8264  04 00 a0 e1                                      mov r0, r4
006b8268  0f e0 a0 e1                                      mov lr, pc
006b826c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8270  00 30 97 e5                                      ldr r3, [r7]
006b8274  9b 06 06 e0                                      mul r6, fp, r6
006b8278  10 20 93 e5                                      ldr r2, [r3, #0x10]
006b827c  24 30 86 e2                                      add r3, r6, #0x24
006b8280  00 00 58 e3                                      cmp r8, #0
006b8284  03 10 92 e7                                      ldr r1, [r2, r3]
006b8288  03 30 82 e0                                      add r3, r2, r3
006b828c  75 60 ef e6                                      uxtb r6, r5
006b8290  98 10 8d e5                                      str r1, [sp, #0x98]
006b8294  04 20 93 e5                                      ldr r2, [r3, #4]
006b8298  9c 20 8d e5                                      str r2, [sp, #0x9c]
006b829c  08 30 93 e5                                      ldr r3, [r3, #8]
006b82a0  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b82a4  20 00 00 1a                                      bne #0x6b832c
006b82a8  00 30 94 e5                                      ldr r3, [r4]
006b82ac  0c 20 a0 e3                                      mov r2, #0xc
006b82b0  04 00 a0 e1                                      mov r0, r4
006b82b4  0a 10 a0 e1                                      mov r1, sl
006b82b8  0f e0 a0 e1                                      mov lr, pc
006b82bc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b82c0  00 30 97 e5                                      ldr r3, [r7]
006b82c4  0c 20 d3 e5                                      ldrb r2, [r3, #0xc]
006b82c8  06 00 52 e1                                      cmp r2, r6
006b82cc  24 00 00 9a                                      bls #0x6b8364
006b82d0  01 50 86 e2                                      add r5, r6, #1
006b82d4  10 20 93 e5                                      ldr r2, [r3, #0x10]
006b82d8  9b 05 03 e0                                      mul r3, fp, r5
006b82dc  00 00 58 e3                                      cmp r8, #0
006b82e0  03 10 92 e7                                      ldr r1, [r2, r3]
006b82e4  03 30 82 e0                                      add r3, r2, r3
006b82e8  18 90 89 e2                                      add sb, sb, #0x18
006b82ec  98 10 8d e5                                      str r1, [sp, #0x98]
006b82f0  04 20 93 e5                                      ldr r2, [r3, #4]
006b82f4  9c 20 8d e5                                      str r2, [sp, #0x9c]
006b82f8  08 30 93 e5                                      ldr r3, [r3, #8]
006b82fc  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b8300  d4 ff ff 0a                                      beq #0x6b8258
006b8304  04 00 9d e5                                      ldr r0, [sp, #4]
006b8308  0a 10 a0 e1                                      mov r1, sl
006b830c  b6 02 fb eb                                      bl #0x578dec
006b8310  74 30 9d e5                                      ldr r3, [sp, #0x74]
006b8314  98 30 8d e5                                      str r3, [sp, #0x98]
006b8318  78 30 9d e5                                      ldr r3, [sp, #0x78]
006b831c  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b8320  7c 30 9d e5                                      ldr r3, [sp, #0x7c]
006b8324  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b8328  ca ff ff ea                                      b #0x6b8258
006b832c  08 00 9d e5                                      ldr r0, [sp, #8]
006b8330  0a 10 a0 e1                                      mov r1, sl
006b8334  ac 02 fb eb                                      bl #0x578dec
006b8338  68 30 9d e5                                      ldr r3, [sp, #0x68]
006b833c  98 30 8d e5                                      str r3, [sp, #0x98]
006b8340  6c 30 9d e5                                      ldr r3, [sp, #0x6c]
006b8344  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b8348  70 30 9d e5                                      ldr r3, [sp, #0x70]
006b834c  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b8350  d4 ff ff ea                                      b #0x6b82a8
006b8354  10 30 83 e2                                      add r3, r3, #0x10
006b8358  02 00 53 e1                                      cmp r3, r2
006b835c  00 ff ff 1a                                      bne #0x6b7f64
006b8360  0d ff ff ea                                      b #0x6b7f9c
006b8364  08 50 a0 e1                                      mov r5, r8
006b8368  08 30 93 e5                                      ldr r3, [r3, #8]
006b836c  00 00 55 e3                                      cmp r5, #0
006b8370  cc 30 8d e5                                      str r3, [sp, #0xcc]
006b8374  5b 00 00 0a                                      beq #0x6b84e8
006b8378  cf 00 dd e5                                      ldrb r0, [sp, #0xcf]
006b837c  ce 10 dd e5                                      ldrb r1, [sp, #0xce]
006b8380  cd 20 dd e5                                      ldrb r2, [sp, #0xcd]
006b8384  cc 30 dd e5                                      ldrb r3, [sp, #0xcc]
006b8388  a4 00 cd e5                                      strb r0, [sp, #0xa4]
006b838c  a5 10 cd e5                                      strb r1, [sp, #0xa5]
006b8390  a6 20 cd e5                                      strb r2, [sp, #0xa6]
006b8394  a7 30 cd e5                                      strb r3, [sp, #0xa7]
006b8398  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
006b839c  d8 10 8d e2                                      add r1, sp, #0xd8
006b83a0  00 30 94 e5                                      ldr r3, [r4]
006b83a4  04 00 a0 e1                                      mov r0, r4
006b83a8  10 20 21 e5                                      str r2, [r1, #-0x10]!
006b83ac  04 20 a0 e3                                      mov r2, #4
006b83b0  0f e0 a0 e1                                      mov lr, pc
006b83b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b83b8  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
006b83bc  04 b0 89 e2                                      add fp, sb, #4
006b83c0  00 00 52 e3                                      cmp r2, #0
006b83c4  02 70 a0 01                                      moveq r7, r2
006b83c8  29 00 00 0a                                      beq #0x6b8474
006b83cc  80 93 9f e5                                      ldr sb, [pc, #0x380]
006b83d0  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
006b83d4  00 a0 a0 e3                                      mov sl, #0
006b83d8  09 90 8f e0                                      add sb, pc, sb
006b83dc  08 90 89 e2                                      add sb, sb, #8
006b83e0  0a 70 a0 e1                                      mov r7, sl
006b83e4  b0 60 9d e5                                      ldr r6, [sp, #0xb0]
006b83e8  03 00 56 e1                                      cmp r6, r3
006b83ec  0c 00 00 1a                                      bne #0x6b8424
006b83f0  1c 00 00 ea                                      b #0x6b8468
006b83f4  06 00 a0 e1                                      mov r0, r6
006b83f8  04 10 a0 e1                                      mov r1, r4
006b83fc  05 20 a0 e1                                      mov r2, r5
006b8400  62 f5 ff eb                                      bl #0x6b5990
006b8404  b4 21 d6 e1                                      ldrh r2, [r6, #0x14]
006b8408  b6 11 d6 e1                                      ldrh r1, [r6, #0x16]
006b840c  b4 30 9d e5                                      ldr r3, [sp, #0xb4]
006b8410  20 60 86 e2                                      add r6, r6, #0x20
006b8414  91 72 27 e0                                      mla r7, r1, r2, r7
006b8418  03 00 56 e1                                      cmp r6, r3
006b841c  08 70 87 e0                                      add r7, r7, r8
006b8420  0f 00 00 0a                                      beq #0x6b8464
006b8424  b6 81 d6 e1                                      ldrh r8, [r6, #0x16]
006b8428  07 00 a0 e1                                      mov r0, r7
006b842c  08 10 a0 e1                                      mov r1, r8
006b8430  33 59 f1 eb                                      bl #0x30e904
006b8434  08 00 61 e0                                      rsb r0, r1, r8
006b8438  08 10 a0 e1                                      mov r1, r8
006b843c  ba 59 f1 eb                                      bl #0x30eb2c
006b8440  00 80 51 e2                                      subs r8, r1, #0
006b8444  ea ff ff 0a                                      beq #0x6b83f4
006b8448  09 10 a0 e1                                      mov r1, sb
006b844c  08 20 a0 e1                                      mov r2, r8
006b8450  00 30 94 e5                                      ldr r3, [r4]
006b8454  04 00 a0 e1                                      mov r0, r4
006b8458  0f e0 a0 e1                                      mov lr, pc
006b845c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8460  e3 ff ff ea                                      b #0x6b83f4
006b8464  cc 20 9d e5                                      ldr r2, [sp, #0xcc]
006b8468  01 a0 8a e2                                      add sl, sl, #1
006b846c  0a 00 52 e1                                      cmp r2, sl
006b8470  db ff ff 8a                                      bhi #0x6b83e4
006b8474  bc 30 9d e5                                      ldr r3, [sp, #0xbc]
006b8478  07 00 a0 e1                                      mov r0, r7
006b847c  ba 50 d3 e1                                      ldrh r5, [r3, #0xa]
006b8480  05 10 a0 e1                                      mov r1, r5
006b8484  1e 59 f1 eb                                      bl #0x30e904
006b8488  05 00 61 e0                                      rsb r0, r1, r5
006b848c  05 10 a0 e1                                      mov r1, r5
006b8490  a5 59 f1 eb                                      bl #0x30eb2c
006b8494  00 20 51 e2                                      subs r2, r1, #0
006b8498  06 00 00 0a                                      beq #0x6b84b8
006b849c  b4 32 9f e5                                      ldr r3, [pc, #0x2b4]
006b84a0  04 00 a0 e1                                      mov r0, r4
006b84a4  03 30 8f e0                                      add r3, pc, r3
006b84a8  08 10 83 e2                                      add r1, r3, #8
006b84ac  00 30 94 e5                                      ldr r3, [r4]
006b84b0  0f e0 a0 e1                                      mov lr, pc
006b84b4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b84b8  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
006b84bc  dc f8 ff eb                                      bl #0x6b6834
006b84c0  20 00 9d e5                                      ldr r0, [sp, #0x20]
006b84c4  93 f8 ff eb                                      bl #0x6b6718
006b84c8  0b 00 a0 e1                                      mov r0, fp
006b84cc  dc d0 8d e2                                      add sp, sp, #0xdc
006b84d0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
006b84d4  03 10 a0 e1                                      mov r1, r3
006b84d8  20 00 9d e5                                      ldr r0, [sp, #0x20]
006b84dc  10 20 9d e5                                      ldr r2, [sp, #0x10]
006b84e0  84 f9 ff eb                                      bl #0x6b6af8
006b84e4  75 fe ff ea                                      b #0x6b7ec0
006b84e8  00 30 94 e5                                      ldr r3, [r4]
006b84ec  04 00 a0 e1                                      mov r0, r4
006b84f0  cc 10 8d e2                                      add r1, sp, #0xcc
006b84f4  04 20 a0 e3                                      mov r2, #4
006b84f8  0f e0 a0 e1                                      mov lr, pc
006b84fc  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8500  ac ff ff ea                                      b #0x6b83b8
006b8504  00 30 94 e5                                      ldr r3, [r4]
006b8508  04 20 a0 e3                                      mov r2, #4
006b850c  04 00 a0 e1                                      mov r0, r4
006b8510  d0 10 8d e2                                      add r1, sp, #0xd0
006b8514  0f e0 a0 e1                                      mov lr, pc
006b8518  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b851c  bc 20 9d e5                                      ldr r2, [sp, #0xbc]
006b8520  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006b8524  02 60 a0 e1                                      mov r6, r2
006b8528  02 00 53 e1                                      cmp r3, r2
006b852c  10 ff ff 0a                                      beq #0x6b8174
006b8530  06 10 a0 e1                                      mov r1, r6
006b8534  00 30 94 e5                                      ldr r3, [r4]
006b8538  04 00 a0 e1                                      mov r0, r4
006b853c  0c 20 a0 e3                                      mov r2, #0xc
006b8540  0f e0 a0 e1                                      mov lr, pc
006b8544  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b8548  c0 30 9d e5                                      ldr r3, [sp, #0xc0]
006b854c  0c 60 86 e2                                      add r6, r6, #0xc
006b8550  03 00 56 e1                                      cmp r6, r3
006b8554  f5 ff ff 1a                                      bne #0x6b8530
006b8558  04 ff ff ea                                      b #0x6b8170
006b855c  b0 30 9d e5                                      ldr r3, [sp, #0xb0]
006b8560  04 30 63 e0                                      rsb r3, r3, r4
006b8564  c3 22 a0 e1                                      asr r2, r3, #5
006b8568  01 00 52 e3                                      cmp r2, #1
006b856c  02 30 82 20                                      addhs r3, r2, r2
006b8570  01 30 82 32                                      addlo r3, r2, #1
006b8574  7e 03 73 e3                                      cmn r3, #0xf8000001
006b8578  69 00 00 9a                                      bls #0x6b8724
006b857c  3e 33 e0 e3                                      mvn r3, #0xf8000000
006b8580  34 20 9d e5                                      ldr r2, [sp, #0x34]
006b8584  03 10 a0 e1                                      mov r1, r3
006b8588  30 00 9d e5                                      ldr r0, [sp, #0x30]
006b858c  c8 30 8d e5                                      str r3, [sp, #0xc8]
006b8590  3c f9 ff eb                                      bl #0x6b6a88
006b8594  b0 20 9d e5                                      ldr r2, [sp, #0xb0]
006b8598  2c 00 8d e5                                      str r0, [sp, #0x2c]
006b859c  04 40 62 e0                                      rsb r4, r2, r4
006b85a0  c4 42 a0 e1                                      asr r4, r4, #5
006b85a4  00 00 54 e3                                      cmp r4, #0
006b85a8  38 40 8d e5                                      str r4, [sp, #0x38]
006b85ac  00 c0 a0 d1                                      movle ip, r0
006b85b0  19 00 00 da                                      ble #0x6b861c
006b85b4  38 30 9d e5                                      ldr r3, [sp, #0x38]
006b85b8  3c 60 8d e5                                      str r6, [sp, #0x3c]
006b85bc  2c 60 9d e5                                      ldr r6, [sp, #0x2c]
006b85c0  40 a0 8d e5                                      str sl, [sp, #0x40]
006b85c4  44 70 8d e5                                      str r7, [sp, #0x44]
006b85c8  05 a0 a0 e1                                      mov sl, r5
006b85cc  00 40 a0 e3                                      mov r4, #0
006b85d0  03 50 a0 e1                                      mov r5, r3
006b85d4  02 70 a0 e1                                      mov r7, r2
006b85d8  04 c0 86 e0                                      add ip, r6, r4
006b85dc  04 e0 87 e0                                      add lr, r7, r4
006b85e0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
006b85e4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
006b85e8  01 50 55 e2                                      subs r5, r5, #1
006b85ec  07 00 9e e8                                      ldm lr, {r0, r1, r2}
006b85f0  20 40 84 e2                                      add r4, r4, #0x20
006b85f4  b8 20 cc e1                                      strh r2, [ip, #8]
006b85f8  03 00 8c e8                                      stm ip, {r0, r1}
006b85fc  f5 ff ff 1a                                      bne #0x6b85d8
006b8600  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
006b8604  38 20 9d e5                                      ldr r2, [sp, #0x38]
006b8608  0a 50 a0 e1                                      mov r5, sl
006b860c  3c 60 9d e5                                      ldr r6, [sp, #0x3c]
006b8610  44 70 9d e5                                      ldr r7, [sp, #0x44]
006b8614  40 a0 9d e5                                      ldr sl, [sp, #0x40]
006b8618  82 c2 81 e0                                      add ip, r1, r2, lsl #5
006b861c  08 30 9d e5                                      ldr r3, [sp, #8]
006b8620  04 e0 9d e5                                      ldr lr, [sp, #4]
006b8624  0c 40 a0 e1                                      mov r4, ip
006b8628  b0 36 cd e1                                      strh r3, [sp, #0x60]
006b862c  58 50 8d e5                                      str r5, [sp, #0x58]
006b8630  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
006b8634  be 75 cd e1                                      strh r7, [sp, #0x5e]
006b8638  bc a5 cd e1                                      strh sl, [sp, #0x5c]
006b863c  0f 00 a4 e8                                      stm r4!, {r0, r1, r2, r3}
006b8640  07 00 9e e8                                      ldm lr, {r0, r1, r2}
006b8644  03 00 84 e8                                      stm r4, {r0, r1}
006b8648  b8 21 cc e1                                      strh r2, [ip, #0x18]
006b864c  b0 00 9d e5                                      ldr r0, [sp, #0xb0]
006b8650  20 40 8c e2                                      add r4, ip, #0x20
006b8654  b8 30 9d e5                                      ldr r3, [sp, #0xb8]
006b8658  00 00 50 e3                                      cmp r0, #0
006b865c  04 00 00 0a                                      beq #0x6b8674
006b8660  03 30 60 e0                                      rsb r3, r0, r3
006b8664  1f 10 c3 e3                                      bic r1, r3, #0x1f
006b8668  80 00 51 e3                                      cmp r1, #0x80
006b866c  2f 00 00 8a                                      bhi #0x6b8730
006b8670  22 42 01 eb                                      bl #0x708f00
006b8674  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
006b8678  c8 20 9d e5                                      ldr r2, [sp, #0xc8]
006b867c  0c e0 9d e5                                      ldr lr, [sp, #0xc]
006b8680  82 22 80 e0                                      add r2, r0, r2, lsl #5
006b8684  00 30 9e e5                                      ldr r3, [lr]
006b8688  b0 00 8d e5                                      str r0, [sp, #0xb0]
006b868c  b4 40 8d e5                                      str r4, [sp, #0xb4]
006b8690  b8 20 8d e5                                      str r2, [sp, #0xb8]
006b8694  27 fe ff ea                                      b #0x6b7f38
006b8698  98 a0 8d e2                                      add sl, sp, #0x98
006b869c  8c 00 8d e2                                      add r0, sp, #0x8c
006b86a0  0a 10 a0 e1                                      mov r1, sl
006b86a4  d0 01 fb eb                                      bl #0x578dec
006b86a8  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
006b86ac  06 20 a0 e1                                      mov r2, r6
006b86b0  0a 10 a0 e1                                      mov r1, sl
006b86b4  98 30 8d e5                                      str r3, [sp, #0x98]
006b86b8  90 30 9d e5                                      ldr r3, [sp, #0x90]
006b86bc  04 00 a0 e1                                      mov r0, r4
006b86c0  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b86c4  94 30 9d e5                                      ldr r3, [sp, #0x94]
006b86c8  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b86cc  00 30 94 e5                                      ldr r3, [r4]
006b86d0  0f e0 a0 e1                                      mov lr, pc
006b86d4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
006b86d8  00 30 97 e5                                      ldr r3, [r7]
006b86dc  80 00 8d e2                                      add r0, sp, #0x80
006b86e0  0a 10 a0 e1                                      mov r1, sl
006b86e4  10 30 93 e5                                      ldr r3, [r3, #0x10]
006b86e8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
006b86ec  06 30 83 e0                                      add r3, r3, r6
006b86f0  98 20 8d e5                                      str r2, [sp, #0x98]
006b86f4  04 20 93 e5                                      ldr r2, [r3, #4]
006b86f8  9c 20 8d e5                                      str r2, [sp, #0x9c]
006b86fc  08 30 93 e5                                      ldr r3, [r3, #8]
006b8700  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b8704  b8 01 fb eb                                      bl #0x578dec
006b8708  80 30 9d e5                                      ldr r3, [sp, #0x80]
006b870c  98 30 8d e5                                      str r3, [sp, #0x98]
006b8710  84 30 9d e5                                      ldr r3, [sp, #0x84]
006b8714  9c 30 8d e5                                      str r3, [sp, #0x9c]
006b8718  88 30 9d e5                                      ldr r3, [sp, #0x88]
006b871c  a0 30 8d e5                                      str r3, [sp, #0xa0]
006b8720  ba fe ff ea                                      b #0x6b8210
006b8724  03 00 52 e1                                      cmp r2, r3
006b8728  94 ff ff 9a                                      bls #0x6b8580
006b872c  92 ff ff ea                                      b #0x6b857c
006b8730  de 56 f1 eb                                      bl #0x30e2b0
006b8734  ce ff ff ea                                      b #0x6b8674
006b8738  bc 00 8d e2                                      add r0, sp, #0xbc
006b873c  b0 10 8d e2                                      add r1, sp, #0xb0
006b8740  20 00 8d e5                                      str r0, [sp, #0x20]
006b8744  1c 10 8d e5                                      str r1, [sp, #0x1c]
006b8748  13 fe ff ea                                      b #0x6b7f9c
; mapping-symbol data/literal pool
006b874c  d0 cc 2d 00 08 11 00 00 4c 2e 23 00 80 2d 23 00  .byte 0xd0, 0xcc, 0x2d, 0x00, 0x08, 0x11, 0x00, 0x00, 0x4c, 0x2e, 0x23, 0x00, 0x80, 0x2d, 0x23, 0x00

; FUNCTION 0x006b875c, declared_size=216, range_size=216, mode=arm
; class-group: glitch::io
; alias: _ZN6glitch2io4saveERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEEPNS0_10IWriteFileEbPjSB_
; demangled: glitch::io::save(boost::intrusive_ptr<glitch::scene::CMeshBuffer const> const&, glitch::io::IWriteFile*, bool, unsigned int*, unsigned int*)
; decoder-mode: arm
006b875c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
006b8760  00 c0 90 e5                                      ldr ip, [r0]
006b8764  01 40 a0 e1                                      mov r4, r1
006b8768  08 d0 4d e2                                      sub sp, sp, #8
006b876c  34 10 dc e5                                      ldrb r1, [ip, #0x34]
006b8770  00 50 a0 e1                                      mov r5, r0
006b8774  08 00 8d e2                                      add r0, sp, #8
006b8778  00 c0 94 e5                                      ldr ip, [r4]
006b877c  01 10 60 e5                                      strb r1, [r0, #-1]!
006b8780  00 10 a0 e1                                      mov r1, r0
006b8784  02 60 a0 e1                                      mov r6, r2
006b8788  04 00 a0 e1                                      mov r0, r4
006b878c  01 20 a0 e3                                      mov r2, #1
006b8790  03 80 a0 e1                                      mov r8, r3
006b8794  28 70 9d e5                                      ldr r7, [sp, #0x28]
006b8798  0f e0 a0 e1                                      mov lr, pc
006b879c  0c f0 9c e5                                      ldr pc, [ip, #0xc]
006b87a0  00 30 95 e5                                      ldr r3, [r5]
006b87a4  0d 00 a0 e1                                      mov r0, sp
006b87a8  04 10 a0 e1                                      mov r1, r4
006b87ac  14 30 93 e5                                      ldr r3, [r3, #0x14]
006b87b0  00 00 53 e3                                      cmp r3, #0
006b87b4  00 30 8d e5                                      str r3, [sp]
006b87b8  00 20 93 15                                      ldrne r2, [r3]
006b87bc  01 20 82 12                                      addne r2, r2, #1
006b87c0  00 20 83 15                                      strne r2, [r3]
006b87c4  06 20 a0 e1                                      mov r2, r6
006b87c8  6d fd ff eb                                      bl #0x6b7d84
006b87cc  00 90 9d e5                                      ldr sb, [sp]
006b87d0  00 a0 a0 e1                                      mov sl, r0
006b87d4  00 00 59 e3                                      cmp sb, #0
006b87d8  04 00 00 0a                                      beq #0x6b87f0
006b87dc  00 30 99 e5                                      ldr r3, [sb]
006b87e0  01 30 43 e2                                      sub r3, r3, #1
006b87e4  00 00 53 e3                                      cmp r3, #0
006b87e8  00 30 89 e5                                      str r3, [sb]
006b87ec  0b 00 00 0a                                      beq #0x6b8820
006b87f0  00 00 95 e5                                      ldr r0, [r5]
006b87f4  04 10 a0 e1                                      mov r1, r4
006b87f8  06 20 a0 e1                                      mov r2, r6
006b87fc  18 00 80 e2                                      add r0, r0, #0x18
006b8800  73 f5 ff eb                                      bl #0x6b5dd4
006b8804  00 00 58 e3                                      cmp r8, #0
006b8808  01 a0 8a 12                                      addne sl, sl, #1
006b880c  00 a0 88 15                                      strne sl, [r8]
006b8810  00 00 57 e3                                      cmp r7, #0
006b8814  00 00 87 15                                      strne r0, [r7]
006b8818  08 d0 8d e2                                      add sp, sp, #8
006b881c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
006b8820  09 00 a0 e1                                      mov r0, sb
006b8824  7c a0 fb eb                                      bl #0x5a0a1c
006b8828  09 00 a0 e1                                      mov r0, sb
006b882c  9f 56 f1 eb                                      bl #0x30e2b0
006b8830  ee ff ff ea                                      b #0x6b87f0
