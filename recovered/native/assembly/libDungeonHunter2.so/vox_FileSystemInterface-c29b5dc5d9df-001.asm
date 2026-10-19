; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00893e88, declared_size=120, range_size=120, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface12GetDirectoryEPciS1_
; demangled: vox::FileSystemInterface::GetDirectory(char*, int, char*)
; decoder-mode: arm
00893e88  00 00 50 e3                                      cmp r0, #0
00893e8c  00 00 52 13                                      cmpne r2, #0
00893e90  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00893e94  02 70 a0 e1                                      mov r7, r2
00893e98  00 40 a0 e1                                      mov r4, r0
00893e9c  00 60 a0 13                                      movne r6, #0
00893ea0  01 60 a0 03                                      moveq r6, #1
00893ea4  01 80 a0 e1                                      mov r8, r1
00893ea8  08 00 00 0a                                      beq #0x893ed0
00893eac  02 00 a0 e1                                      mov r0, r2
00893eb0  2f 10 a0 e3                                      mov r1, #0x2f
00893eb4  5a e9 e9 eb                                      bl #0x30e424
00893eb8  00 00 50 e3                                      cmp r0, #0
00893ebc  0c 00 00 0a                                      beq #0x893ef4
00893ec0  01 50 67 e2                                      rsb r5, r7, #1
00893ec4  05 50 80 e0                                      add r5, r0, r5
00893ec8  08 00 55 e1                                      cmp r5, r8
00893ecc  01 00 00 ba                                      blt #0x893ed8
00893ed0  00 00 e0 e3                                      mvn r0, #0
00893ed4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00893ed8  07 10 a0 e1                                      mov r1, r7
00893edc  04 00 a0 e1                                      mov r0, r4
00893ee0  05 20 a0 e1                                      mov r2, r5
00893ee4  5f ea e9 eb                                      bl #0x30e868
00893ee8  05 60 c4 e7                                      strb r6, [r4, r5]
00893eec  06 00 a0 e1                                      mov r0, r6
00893ef0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00893ef4  00 00 c4 e5                                      strb r0, [r4]
00893ef8  00 00 e0 e3                                      mvn r0, #0
00893efc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00893f4c, declared_size=68, range_size=68, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface12PopDirectoryEv
; demangled: vox::FileSystemInterface::PopDirectory()
; decoder-mode: arm
00893f4c  04 e0 2d e5                                      str lr, [sp, #-4]!
00893f50  00 10 a0 e1                                      mov r1, r0
00893f54  0c 30 b1 e5                                      ldr r3, [r1, #0xc]!
00893f58  14 d0 4d e2                                      sub sp, sp, #0x14
00893f5c  01 00 53 e1                                      cmp r3, r1
00893f60  07 00 00 0a                                      beq #0x893f84
00893f64  00 30 93 e5                                      ldr r3, [r3]
00893f68  03 00 51 e1                                      cmp r1, r3
00893f6c  fc ff ff 1a                                      bne #0x893f64
00893f70  10 30 90 e5                                      ldr r3, [r0, #0x10]
00893f74  0c 20 8d e2                                      add r2, sp, #0xc
00893f78  0d 00 a0 e1                                      mov r0, sp
00893f7c  0c 30 8d e5                                      str r3, [sp, #0xc]
00893f80  de ff ff eb                                      bl #0x893f00
00893f84  00 00 e0 e3                                      mvn r0, #0
00893f88  14 d0 8d e2                                      add sp, sp, #0x14
00893f8c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00893ff0, declared_size=108, range_size=108, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface9CloseFileEPNS_13FileInterfaceE
; demangled: vox::FileSystemInterface::CloseFile(vox::FileInterface*)
; decoder-mode: arm
00893ff0  70 40 2d e9                                      push {r4, r5, r6, lr}
00893ff4  58 40 9f e5                                      ldr r4, [pc, #0x58]
00893ff8  00 50 51 e2                                      subs r5, r1, #0
00893ffc  04 40 8f e0                                      add r4, pc, r4
00894000  11 00 00 0a                                      beq #0x89404c
00894004  00 30 95 e5                                      ldr r3, [r5]
00894008  05 00 a0 e1                                      mov r0, r5
0089400c  0f e0 a0 e1                                      mov lr, pc
00894010  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00894014  00 00 50 e3                                      cmp r0, #0
00894018  03 00 00 0a                                      beq #0x89402c
0089401c  34 30 9f e5                                      ldr r3, [pc, #0x34]
00894020  03 30 94 e7                                      ldr r3, [r4, r3]
00894024  0f e0 a0 e1                                      mov lr, pc
00894028  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0089402c  00 30 95 e5                                      ldr r3, [r5]
00894030  05 00 a0 e1                                      mov r0, r5
00894034  0f e0 a0 e1                                      mov lr, pc
00894038  00 f0 93 e5                                      ldr pc, [r3]
0089403c  05 00 a0 e1                                      mov r0, r5
00894040  ff f0 e9 eb                                      bl #0x310444
00894044  00 00 a0 e3                                      mov r0, #0
00894048  70 80 bd e8                                      pop {r4, r5, r6, pc}
0089404c  00 00 e0 e3                                      mvn r0, #0
00894050  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00894054  94 0a 10 00 78 15 00 00                          .byte 0x94, 0x0a, 0x10, 0x00, 0x78, 0x15, 0x00, 0x00

; FUNCTION 0x0089405c, declared_size=100, range_size=100, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterfaceD1Ev
; demangled: vox::FileSystemInterface::~FileSystemInterface()
; decoder-mode: arm
0089405c  10 40 2d e9                                      push {r4, lr}
00894060  50 30 9f e5                                      ldr r3, [pc, #0x50]
00894064  50 20 9f e5                                      ldr r2, [pc, #0x50]
00894068  08 10 90 e5                                      ldr r1, [r0, #8]
0089406c  03 30 8f e0                                      add r3, pc, r3
00894070  02 20 93 e7                                      ldr r2, [r3, r2]
00894074  00 00 51 e3                                      cmp r1, #0
00894078  00 40 a0 e1                                      mov r4, r0
0089407c  08 20 82 e2                                      add r2, r2, #8
00894080  00 20 80 e5                                      str r2, [r0]
00894084  07 00 00 0a                                      beq #0x8940a8
00894088  00 30 91 e5                                      ldr r3, [r1]
0089408c  01 00 a0 e1                                      mov r0, r1
00894090  0f e0 a0 e1                                      mov lr, pc
00894094  00 f0 93 e5                                      ldr pc, [r3]
00894098  08 00 94 e5                                      ldr r0, [r4, #8]
0089409c  e8 f0 e9 eb                                      bl #0x310444
008940a0  00 30 a0 e3                                      mov r3, #0
008940a4  08 30 84 e5                                      str r3, [r4, #8]
008940a8  0c 00 84 e2                                      add r0, r4, #0xc
008940ac  b7 ff ff eb                                      bl #0x893f90
008940b0  04 00 a0 e1                                      mov r0, r4
008940b4  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008940b8  24 0a 10 00 80 2a 00 00                          .byte 0x24, 0x0a, 0x10, 0x00, 0x80, 0x2a, 0x00, 0x00

; FUNCTION 0x008940c0, declared_size=28, range_size=28, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterfaceD0Ev
; demangled: vox::FileSystemInterface::~FileSystemInterface()
; decoder-mode: arm
008940c0  10 40 2d e9                                      push {r4, lr}
008940c4  00 40 a0 e1                                      mov r4, r0
008940c8  e3 ff ff eb                                      bl #0x89405c
008940cc  04 00 a0 e1                                      mov r0, r4
008940d0  76 e8 e9 eb                                      bl #0x30e2b0
008940d4  04 00 a0 e1                                      mov r0, r4
008940d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008940dc, declared_size=100, range_size=100, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterfaceD2Ev
; demangled: vox::FileSystemInterface::~FileSystemInterface()
; decoder-mode: arm
008940dc  10 40 2d e9                                      push {r4, lr}
008940e0  50 30 9f e5                                      ldr r3, [pc, #0x50]
008940e4  50 20 9f e5                                      ldr r2, [pc, #0x50]
008940e8  08 10 90 e5                                      ldr r1, [r0, #8]
008940ec  03 30 8f e0                                      add r3, pc, r3
008940f0  02 20 93 e7                                      ldr r2, [r3, r2]
008940f4  00 00 51 e3                                      cmp r1, #0
008940f8  00 40 a0 e1                                      mov r4, r0
008940fc  08 20 82 e2                                      add r2, r2, #8
00894100  00 20 80 e5                                      str r2, [r0]
00894104  07 00 00 0a                                      beq #0x894128
00894108  00 30 91 e5                                      ldr r3, [r1]
0089410c  01 00 a0 e1                                      mov r0, r1
00894110  0f e0 a0 e1                                      mov lr, pc
00894114  00 f0 93 e5                                      ldr pc, [r3]
00894118  08 00 94 e5                                      ldr r0, [r4, #8]
0089411c  c8 f0 e9 eb                                      bl #0x310444
00894120  00 30 a0 e3                                      mov r3, #0
00894124  08 30 84 e5                                      str r3, [r4, #8]
00894128  0c 00 84 e2                                      add r0, r4, #0xc
0089412c  97 ff ff eb                                      bl #0x893f90
00894130  04 00 a0 e1                                      mov r0, r4
00894134  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00894138  a4 09 10 00 80 2a 00 00                          .byte 0xa4, 0x09, 0x10, 0x00, 0x80, 0x2a, 0x00, 0x00

; FUNCTION 0x00894140, declared_size=80, range_size=80, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface15DestroyInstanceEv
; demangled: vox::FileSystemInterface::DestroyInstance()
; decoder-mode: arm
00894140  70 40 2d e9                                      push {r4, r5, r6, lr}
00894144  3c 40 9f e5                                      ldr r4, [pc, #0x3c]
00894148  3c 50 9f e5                                      ldr r5, [pc, #0x3c]
0089414c  04 40 8f e0                                      add r4, pc, r4
00894150  05 60 94 e7                                      ldr r6, [r4, r5]
00894154  00 30 96 e5                                      ldr r3, [r6]
00894158  00 00 53 e3                                      cmp r3, #0
0089415c  05 00 00 0a                                      beq #0x894178
00894160  03 00 a0 e1                                      mov r0, r3
00894164  00 30 93 e5                                      ldr r3, [r3]
00894168  0f e0 a0 e1                                      mov lr, pc
0089416c  00 f0 93 e5                                      ldr pc, [r3]
00894170  00 00 96 e5                                      ldr r0, [r6]
00894174  b2 f0 e9 eb                                      bl #0x310444
00894178  05 30 94 e7                                      ldr r3, [r4, r5]
0089417c  00 20 a0 e3                                      mov r2, #0
00894180  00 20 83 e5                                      str r2, [r3]
00894184  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00894188  44 09 10 00 1c 2b 00 00                          .byte 0x44, 0x09, 0x10, 0x00, 0x1c, 0x2b, 0x00, 0x00

; FUNCTION 0x008941ec, declared_size=164, range_size=164, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface13PushDirectoryEPc
; demangled: vox::FileSystemInterface::PushDirectory(char*)
; decoder-mode: arm
008941ec  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
008941f0  90 40 9f e5                                      ldr r4, [pc, #0x90]
008941f4  90 60 9f e5                                      ldr r6, [pc, #0x90]
008941f8  34 d0 4d e2                                      sub sp, sp, #0x34
008941fc  04 40 8f e0                                      add r4, pc, r4
00894200  06 30 94 e7                                      ldr r3, [r4, r6]
00894204  00 00 51 e3                                      cmp r1, #0
00894208  00 00 e0 03                                      mvneq r0, #0
0089420c  00 30 93 e5                                      ldr r3, [r3]
00894210  2c 30 8d e5                                      str r3, [sp, #0x2c]
00894214  11 00 00 0a                                      beq #0x894260
00894218  14 50 8d e2                                      add r5, sp, #0x14
0089421c  0c 70 80 e2                                      add r7, r0, #0xc
00894220  10 20 8d e2                                      add r2, sp, #0x10
00894224  05 00 a0 e1                                      mov r0, r5
00894228  42 6c ff eb                                      bl #0x86f338
0089422c  0d 00 a0 e1                                      mov r0, sp
00894230  07 10 a0 e1                                      mov r1, r7
00894234  0c 20 8d e2                                      add r2, sp, #0xc
00894238  05 30 a0 e1                                      mov r3, r5
0089423c  0c 70 8d e5                                      str r7, [sp, #0xc]
00894240  d2 ff ff eb                                      bl #0x894190
00894244  28 00 9d e5                                      ldr r0, [sp, #0x28]
00894248  05 00 50 e1                                      cmp r0, r5
0089424c  0a 00 00 0a                                      beq #0x89427c
00894250  00 00 50 e3                                      cmp r0, #0
00894254  08 00 00 0a                                      beq #0x89427c
00894258  79 f0 e9 eb                                      bl #0x310444
0089425c  00 00 a0 e3                                      mov r0, #0
00894260  06 30 94 e7                                      ldr r3, [r4, r6]
00894264  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00894268  00 30 93 e5                                      ldr r3, [r3]
0089426c  03 00 52 e1                                      cmp r2, r3
00894270  03 00 00 1a                                      bne #0x894284
00894274  34 d0 8d e2                                      add sp, sp, #0x34
00894278  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0089427c  00 00 a0 e3                                      mov r0, #0
00894280  f6 ff ff ea                                      b #0x894260
00894284  21 e8 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00894288  94 08 10 00 ac 40 00 00                          .byte 0x94, 0x08, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00894290, declared_size=160, range_size=160, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface10SetArchiveEPKcbbb
; demangled: vox::FileSystemInterface::SetArchive(char const*, bool, bool, bool)
; decoder-mode: arm
00894290  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00894294  08 c0 90 e5                                      ldr ip, [r0, #8]
00894298  00 40 a0 e1                                      mov r4, r0
0089429c  01 70 a0 e1                                      mov r7, r1
008942a0  00 00 5c e3                                      cmp ip, #0
008942a4  02 a0 a0 e1                                      mov sl, r2
008942a8  03 80 a0 e1                                      mov r8, r3
008942ac  20 60 dd e5                                      ldrb r6, [sp, #0x20]
008942b0  05 00 00 0a                                      beq #0x8942cc
008942b4  0c 00 a0 e1                                      mov r0, ip
008942b8  00 30 9c e5                                      ldr r3, [ip]
008942bc  0f e0 a0 e1                                      mov lr, pc
008942c0  00 f0 93 e5                                      ldr pc, [r3]
008942c4  08 00 94 e5                                      ldr r0, [r4, #8]
008942c8  5d f0 e9 eb                                      bl #0x310444
008942cc  00 10 a0 e3                                      mov r1, #0
008942d0  3c 00 a0 e3                                      mov r0, #0x3c
008942d4  db f0 e9 eb                                      bl #0x310648
008942d8  07 10 a0 e1                                      mov r1, r7
008942dc  00 50 a0 e1                                      mov r5, r0
008942e0  0a 20 a0 e1                                      mov r2, sl
008942e4  08 30 a0 e1                                      mov r3, r8
008942e8  e4 06 00 eb                                      bl #0x895e80
008942ec  04 60 c4 e5                                      strb r6, [r4, #4]
008942f0  08 50 84 e5                                      str r5, [r4, #8]
008942f4  04 60 95 e5                                      ldr r6, [r5, #4]
008942f8  00 00 56 e3                                      cmp r6, #0
008942fc  01 00 00 0a                                      beq #0x894308
00894300  00 00 a0 e3                                      mov r0, #0
00894304  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00894308  00 30 95 e5                                      ldr r3, [r5]
0089430c  05 00 a0 e1                                      mov r0, r5
00894310  0f e0 a0 e1                                      mov lr, pc
00894314  00 f0 93 e5                                      ldr pc, [r3]
00894318  08 00 94 e5                                      ldr r0, [r4, #8]
0089431c  48 f0 e9 eb                                      bl #0x310444
00894320  04 60 c4 e5                                      strb r6, [r4, #4]
00894324  08 60 84 e5                                      str r6, [r4, #8]
00894328  00 00 e0 e3                                      mvn r0, #0
0089432c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}

; FUNCTION 0x00894330, declared_size=628, range_size=628, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface8OpenFileEPcNS_17VoxFileAccessModeE
; demangled: vox::FileSystemInterface::OpenFile(char*, vox::VoxFileAccessMode)
; decoder-mode: arm
00894330  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00894334  54 52 9f e5                                      ldr r5, [pc, #0x254]
00894338  54 72 9f e5                                      ldr r7, [pc, #0x254]
0089433c  01 80 a0 e1                                      mov r8, r1
00894340  05 50 8f e0                                      add r5, pc, r5
00894344  07 30 95 e7                                      ldr r3, [r5, r7]
00894348  48 12 9f e5                                      ldr r1, [pc, #0x248]
0089434c  34 d0 4d e2                                      sub sp, sp, #0x34
00894350  00 30 93 e5                                      ldr r3, [r3]
00894354  14 60 8d e2                                      add r6, sp, #0x14
00894358  00 40 a0 e1                                      mov r4, r0
0089435c  04 20 8d e5                                      str r2, [sp, #4]
00894360  01 10 8f e0                                      add r1, pc, r1
00894364  10 20 8d e2                                      add r2, sp, #0x10
00894368  06 00 a0 e1                                      mov r0, r6
0089436c  2c 30 8d e5                                      str r3, [sp, #0x2c]
00894370  f0 6b ff eb                                      bl #0x86f338
00894374  04 20 a0 e1                                      mov r2, r4
00894378  0c 30 b2 e5                                      ldr r3, [r2, #0xc]!
0089437c  02 00 53 e1                                      cmp r3, r2
00894380  0a 00 00 0a                                      beq #0x8943b0
00894384  00 30 93 e5                                      ldr r3, [r3]
00894388  03 00 52 e1                                      cmp r2, r3
0089438c  fc ff ff 1a                                      bne #0x894384
00894390  10 30 94 e5                                      ldr r3, [r4, #0x10]
00894394  08 20 83 e2                                      add r2, r3, #8
00894398  02 00 56 e1                                      cmp r6, r2
0089439c  03 00 00 0a                                      beq #0x8943b0
008943a0  18 20 93 e5                                      ldr r2, [r3, #0x18]
008943a4  06 00 a0 e1                                      mov r0, r6
008943a8  1c 10 93 e5                                      ldr r1, [r3, #0x1c]
008943ac  ef d1 ff eb                                      bl #0x888b70
008943b0  08 00 a0 e1                                      mov r0, r8
008943b4  a6 e6 e9 eb                                      bl #0x30de54
008943b8  08 10 a0 e1                                      mov r1, r8
008943bc  00 20 88 e0                                      add r2, r8, r0
008943c0  06 00 a0 e1                                      mov r0, r6
008943c4  d3 74 ff eb                                      bl #0x871718
008943c8  08 30 94 e5                                      ldr r3, [r4, #8]
008943cc  00 00 53 e3                                      cmp r3, #0
008943d0  02 00 00 0a                                      beq #0x8943e0
008943d4  04 20 d4 e5                                      ldrb r2, [r4, #4]
008943d8  00 00 52 e3                                      cmp r2, #0
008943dc  49 00 00 1a                                      bne #0x894508
008943e0  b4 b1 9f e5                                      ldr fp, [pc, #0x1b4]
008943e4  0b 30 95 e7                                      ldr r3, [r5, fp]
008943e8  28 00 9d e5                                      ldr r0, [sp, #0x28]
008943ec  04 10 9d e5                                      ldr r1, [sp, #4]
008943f0  0f e0 a0 e1                                      mov lr, pc
008943f4  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008943f8  00 a0 50 e2                                      subs sl, r0, #0
008943fc  0a 80 a0 01                                      moveq r8, sl
00894400  0a 00 00 0a                                      beq #0x894430
00894404  0c 00 a0 e3                                      mov r0, #0xc
00894408  00 10 a0 e3                                      mov r1, #0
0089440c  8d f0 e9 eb                                      bl #0x310648
00894410  88 31 9f e5                                      ldr r3, [pc, #0x188]
00894414  00 20 a0 e3                                      mov r2, #0
00894418  00 80 a0 e1                                      mov r8, r0
0089441c  03 30 95 e7                                      ldr r3, [r5, r3]
00894420  08 20 80 e5                                      str r2, [r0, #8]
00894424  04 a0 80 e5                                      str sl, [r0, #4]
00894428  08 30 83 e2                                      add r3, r3, #8
0089442c  00 30 80 e5                                      str r3, [r0]
00894430  08 30 94 e5                                      ldr r3, [r4, #8]
00894434  00 00 53 e3                                      cmp r3, #0
00894438  02 00 00 0a                                      beq #0x894448
0089443c  04 90 d4 e5                                      ldrb sb, [r4, #4]
00894440  00 00 59 e3                                      cmp sb, #0
00894444  13 00 00 0a                                      beq #0x894498
00894448  00 30 5a e2                                      subs r3, sl, #0
0089444c  01 30 a0 13                                      movne r3, #1
00894450  00 00 58 e3                                      cmp r8, #0
00894454  00 30 a0 13                                      movne r3, #0
00894458  00 00 53 e3                                      cmp r3, #0
0089445c  44 00 00 1a                                      bne #0x894574
00894460  28 00 9d e5                                      ldr r0, [sp, #0x28]
00894464  06 00 50 e1                                      cmp r0, r6
00894468  02 00 00 0a                                      beq #0x894478
0089446c  00 00 50 e3                                      cmp r0, #0
00894470  00 00 00 0a                                      beq #0x894478
00894474  f2 ef e9 eb                                      bl #0x310444
00894478  07 30 95 e7                                      ldr r3, [r5, r7]
0089447c  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00894480  08 00 a0 e1                                      mov r0, r8
00894484  00 30 93 e5                                      ldr r3, [r3]
00894488  03 00 52 e1                                      cmp r2, r3
0089448c  3e 00 00 1a                                      bne #0x89458c
00894490  34 d0 8d e2                                      add sp, sp, #0x34
00894494  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00894498  00 00 5a e3                                      cmp sl, #0
0089449c  e9 ff ff 1a                                      bne #0x894448
008944a0  03 00 a0 e1                                      mov r0, r3
008944a4  00 c0 93 e5                                      ldr ip, [r3]
008944a8  28 10 9d e5                                      ldr r1, [sp, #0x28]
008944ac  0c 20 8d e2                                      add r2, sp, #0xc
008944b0  08 30 8d e2                                      add r3, sp, #8
008944b4  0f e0 a0 e1                                      mov lr, pc
008944b8  08 f0 9c e5                                      ldr pc, [ip, #8]
008944bc  00 00 50 e3                                      cmp r0, #0
008944c0  e6 ff ff 0a                                      beq #0x894460
008944c4  08 20 94 e5                                      ldr r2, [r4, #8]
008944c8  04 10 9d e5                                      ldr r1, [sp, #4]
008944cc  0b 30 95 e7                                      ldr r3, [r5, fp]
008944d0  1c 00 92 e5                                      ldr r0, [r2, #0x1c]
008944d4  0f e0 a0 e1                                      mov lr, pc
008944d8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008944dc  00 a0 50 e2                                      subs sl, r0, #0
008944e0  de ff ff 0a                                      beq #0x894460
008944e4  09 10 a0 e1                                      mov r1, sb
008944e8  18 00 a0 e3                                      mov r0, #0x18
008944ec  55 f0 e9 eb                                      bl #0x310648
008944f0  0a 10 a0 e1                                      mov r1, sl
008944f4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
008944f8  08 30 9d e5                                      ldr r3, [sp, #8]
008944fc  00 80 a0 e1                                      mov r8, r0
00894500  1a fe ff eb                                      bl #0x893d70
00894504  cf ff ff ea                                      b #0x894448
00894508  03 00 a0 e1                                      mov r0, r3
0089450c  00 c0 93 e5                                      ldr ip, [r3]
00894510  28 10 9d e5                                      ldr r1, [sp, #0x28]
00894514  08 20 8d e2                                      add r2, sp, #8
00894518  0c 30 8d e2                                      add r3, sp, #0xc
0089451c  0f e0 a0 e1                                      mov lr, pc
00894520  08 f0 9c e5                                      ldr pc, [ip, #8]
00894524  00 00 50 e3                                      cmp r0, #0
00894528  ac ff ff 0a                                      beq #0x8943e0
0089452c  08 30 94 e5                                      ldr r3, [r4, #8]
00894530  64 b0 9f e5                                      ldr fp, [pc, #0x64]
00894534  04 10 9d e5                                      ldr r1, [sp, #4]
00894538  1c 00 93 e5                                      ldr r0, [r3, #0x1c]
0089453c  0b 30 95 e7                                      ldr r3, [r5, fp]
00894540  0f e0 a0 e1                                      mov lr, pc
00894544  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00894548  00 a0 50 e2                                      subs sl, r0, #0
0089454c  a4 ff ff 0a                                      beq #0x8943e4
00894550  00 10 a0 e3                                      mov r1, #0
00894554  18 00 a0 e3                                      mov r0, #0x18
00894558  3a f0 e9 eb                                      bl #0x310648
0089455c  0a 10 a0 e1                                      mov r1, sl
00894560  08 20 9d e5                                      ldr r2, [sp, #8]
00894564  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00894568  00 80 a0 e1                                      mov r8, r0
0089456c  ff fd ff eb                                      bl #0x893d70
00894570  ae ff ff ea                                      b #0x894430
00894574  0b 30 95 e7                                      ldr r3, [r5, fp]
00894578  0a 00 a0 e1                                      mov r0, sl
0089457c  0f e0 a0 e1                                      mov lr, pc
00894580  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00894584  00 80 a0 e3                                      mov r8, #0
00894588  b4 ff ff ea                                      b #0x894460
0089458c  5f e7 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00894590  50 07 10 00 ac 40 00 00 a8 74 03 00 78 15 00 00  .byte 0x50, 0x07, 0x10, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa8, 0x74, 0x03, 0x00, 0x78, 0x15, 0x00, 0x00
008945a0  1c 2a 00 00                                      .byte 0x1c, 0x2a, 0x00, 0x00

; FUNCTION 0x008945a4, declared_size=56, range_size=56, mode=arm
; class-group: vox::FileSystemInterface
; alias: _ZN3vox19FileSystemInterface11GetInstanceEv
; demangled: vox::FileSystemInterface::GetInstance()
; decoder-mode: arm
008945a4  28 30 9f e5                                      ldr r3, [pc, #0x28]
008945a8  28 20 9f e5                                      ldr r2, [pc, #0x28]
008945ac  10 40 2d e9                                      push {r4, lr}
008945b0  03 30 8f e0                                      add r3, pc, r3
008945b4  02 40 93 e7                                      ldr r4, [r3, r2]
008945b8  00 00 94 e5                                      ldr r0, [r4]
008945bc  00 00 50 e3                                      cmp r0, #0
008945c0  00 00 00 0a                                      beq #0x8945c8
008945c4  10 80 bd e8                                      pop {r4, pc}
008945c8  78 00 00 eb                                      bl #0x8947b0
008945cc  00 00 84 e5                                      str r0, [r4]
008945d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008945d4  e0 04 10 00 1c 2b 00 00                          .byte 0xe0, 0x04, 0x10, 0x00, 0x1c, 0x2b, 0x00, 0x00
