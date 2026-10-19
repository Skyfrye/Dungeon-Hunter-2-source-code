; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008948fc, declared_size=8, range_size=8, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReader12getFileCountEv
; demangled: vox::CZipReader::getFileCount()
; decoder-mode: arm
008948fc  34 00 90 e5                                      ldr r0, [r0, #0x34]
00894900  1e ff 2f e1                                      bx lr

; FUNCTION 0x00894da8, declared_size=156, range_size=156, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReaderD1Ev
; demangled: vox::CZipReader::~CZipReader()
; decoder-mode: arm
00894da8  70 40 2d e9                                      push {r4, r5, r6, lr}
00894dac  88 30 9f e5                                      ldr r3, [pc, #0x88]
00894db0  88 20 9f e5                                      ldr r2, [pc, #0x88]
00894db4  04 10 90 e5                                      ldr r1, [r0, #4]
00894db8  03 30 8f e0                                      add r3, pc, r3
00894dbc  02 20 93 e7                                      ldr r2, [r3, r2]
00894dc0  00 00 51 e3                                      cmp r1, #0
00894dc4  00 40 a0 e1                                      mov r4, r0
00894dc8  08 20 82 e2                                      add r2, r2, #8
00894dcc  00 20 80 e5                                      str r2, [r0]
00894dd0  04 00 00 0a                                      beq #0x894de8
00894dd4  f2 fd ff eb                                      bl #0x8945a4
00894dd8  04 10 94 e5                                      ldr r1, [r4, #4]
00894ddc  00 30 90 e5                                      ldr r3, [r0]
00894de0  0f e0 a0 e1                                      mov lr, pc
00894de4  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00894de8  34 30 94 e5                                      ldr r3, [r4, #0x34]
00894dec  00 00 53 e3                                      cmp r3, #0
00894df0  08 00 00 0a                                      beq #0x894e18
00894df4  24 50 84 e2                                      add r5, r4, #0x24
00894df8  05 00 a0 e1                                      mov r0, r5
00894dfc  28 10 94 e5                                      ldr r1, [r4, #0x28]
00894e00  d1 ff ff eb                                      bl #0x894d4c
00894e04  00 30 a0 e3                                      mov r3, #0
00894e08  30 50 84 e5                                      str r5, [r4, #0x30]
00894e0c  34 30 84 e5                                      str r3, [r4, #0x34]
00894e10  2c 50 84 e5                                      str r5, [r4, #0x2c]
00894e14  28 30 84 e5                                      str r3, [r4, #0x28]
00894e18  08 30 84 e2                                      add r3, r4, #8
00894e1c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00894e20  03 00 50 e1                                      cmp r0, r3
00894e24  02 00 00 0a                                      beq #0x894e34
00894e28  00 00 50 e3                                      cmp r0, #0
00894e2c  00 00 00 0a                                      beq #0x894e34
00894e30  83 ed e9 eb                                      bl #0x310444
00894e34  04 00 a0 e1                                      mov r0, r4
00894e38  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00894e3c  d8 fc 0f 00 84 15 00 00                          .byte 0xd8, 0xfc, 0x0f, 0x00, 0x84, 0x15, 0x00, 0x00

; FUNCTION 0x00894e44, declared_size=28, range_size=28, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReaderD0Ev
; demangled: vox::CZipReader::~CZipReader()
; decoder-mode: arm
00894e44  10 40 2d e9                                      push {r4, lr}
00894e48  00 40 a0 e1                                      mov r4, r0
00894e4c  d5 ff ff eb                                      bl #0x894da8
00894e50  04 00 a0 e1                                      mov r0, r4
00894e54  15 e5 e9 eb                                      bl #0x30e2b0
00894e58  04 00 a0 e1                                      mov r0, r4
00894e5c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00894e60, declared_size=156, range_size=156, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReaderD2Ev
; demangled: vox::CZipReader::~CZipReader()
; decoder-mode: arm
00894e60  70 40 2d e9                                      push {r4, r5, r6, lr}
00894e64  88 30 9f e5                                      ldr r3, [pc, #0x88]
00894e68  88 20 9f e5                                      ldr r2, [pc, #0x88]
00894e6c  04 10 90 e5                                      ldr r1, [r0, #4]
00894e70  03 30 8f e0                                      add r3, pc, r3
00894e74  02 20 93 e7                                      ldr r2, [r3, r2]
00894e78  00 00 51 e3                                      cmp r1, #0
00894e7c  00 40 a0 e1                                      mov r4, r0
00894e80  08 20 82 e2                                      add r2, r2, #8
00894e84  00 20 80 e5                                      str r2, [r0]
00894e88  04 00 00 0a                                      beq #0x894ea0
00894e8c  c4 fd ff eb                                      bl #0x8945a4
00894e90  04 10 94 e5                                      ldr r1, [r4, #4]
00894e94  00 30 90 e5                                      ldr r3, [r0]
00894e98  0f e0 a0 e1                                      mov lr, pc
00894e9c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00894ea0  34 30 94 e5                                      ldr r3, [r4, #0x34]
00894ea4  00 00 53 e3                                      cmp r3, #0
00894ea8  08 00 00 0a                                      beq #0x894ed0
00894eac  24 50 84 e2                                      add r5, r4, #0x24
00894eb0  05 00 a0 e1                                      mov r0, r5
00894eb4  28 10 94 e5                                      ldr r1, [r4, #0x28]
00894eb8  a3 ff ff eb                                      bl #0x894d4c
00894ebc  00 30 a0 e3                                      mov r3, #0
00894ec0  30 50 84 e5                                      str r5, [r4, #0x30]
00894ec4  34 30 84 e5                                      str r3, [r4, #0x34]
00894ec8  2c 50 84 e5                                      str r5, [r4, #0x2c]
00894ecc  28 30 84 e5                                      str r3, [r4, #0x28]
00894ed0  08 30 84 e2                                      add r3, r4, #8
00894ed4  14 00 93 e5                                      ldr r0, [r3, #0x14]
00894ed8  03 00 50 e1                                      cmp r0, r3
00894edc  02 00 00 0a                                      beq #0x894eec
00894ee0  00 00 50 e3                                      cmp r0, #0
00894ee4  00 00 00 0a                                      beq #0x894eec
00894ee8  55 ed e9 eb                                      bl #0x310444
00894eec  04 00 a0 e1                                      mov r0, r4
00894ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00894ef4  20 fc 0f 00 84 15 00 00                          .byte 0x20, 0xfc, 0x0f, 0x00, 0x84, 0x15, 0x00, 0x00

; FUNCTION 0x00894efc, declared_size=120, range_size=120, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReader22deletePathFromFilenameERSbIcSt11char_traitsIcENS_10SAllocatorIcLNS_10VoxMemHintE0EEEE
; demangled: vox::CZipReader::deletePathFromFilename(std::basic_string<char, std::char_traits<char>, vox::SAllocator<char, (vox::VoxMemHint)0> >&)
; decoder-mode: arm
00894efc  70 40 2d e9                                      push {r4, r5, r6, lr}
00894f00  14 20 91 e5                                      ldr r2, [r1, #0x14]
00894f04  10 50 91 e5                                      ldr r5, [r1, #0x10]
00894f08  01 40 a0 e1                                      mov r4, r1
00894f0c  05 50 62 e0                                      rsb r5, r2, r5
00894f10  d5 30 92 e1                                      ldrsb r3, [r2, r5]
00894f14  05 50 82 e0                                      add r5, r2, r5
00894f18  2f 00 53 e3                                      cmp r3, #0x2f
00894f1c  5c 00 53 13                                      cmpne r3, #0x5c
00894f20  09 00 00 1a                                      bne #0x894f4c
00894f24  02 00 55 e1                                      cmp r5, r2
00894f28  0f 00 00 0a                                      beq #0x894f6c
00894f2c  01 50 85 e2                                      add r5, r5, #1
00894f30  05 00 a0 e1                                      mov r0, r5
00894f34  c6 e3 e9 eb                                      bl #0x30de54
00894f38  05 10 a0 e1                                      mov r1, r5
00894f3c  00 20 85 e0                                      add r2, r5, r0
00894f40  04 00 a0 e1                                      mov r0, r4
00894f44  70 40 bd e8                                      pop {r4, r5, r6, lr}
00894f48  08 cf ff ea                                      b #0x888b70
00894f4c  02 00 55 e1                                      cmp r5, r2
00894f50  06 00 00 0a                                      beq #0x894f70
00894f54  d1 30 75 e1                                      ldrsb r3, [r5, #-1]!
00894f58  5c 00 53 e3                                      cmp r3, #0x5c
00894f5c  2f 00 53 13                                      cmpne r3, #0x2f
00894f60  ef ff ff 0a                                      beq #0x894f24
00894f64  02 00 55 e1                                      cmp r5, r2
00894f68  f9 ff ff 1a                                      bne #0x894f54
00894f6c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00894f70  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00894f74, declared_size=492, range_size=492, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReader15extractFilenameEPNS_13SZipFileEntryE
; demangled: vox::CZipReader::extractFilename(vox::SZipFileEntry*)
; decoder-mode: arm
00894f74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00894f78  d0 51 9f e5                                      ldr r5, [pc, #0x1d0]
00894f7c  d0 61 9f e5                                      ldr r6, [pc, #0x1d0]
00894f80  f6 a6 d1 e1                                      ldrsh sl, [r1, #0x66]
00894f84  05 50 8f e0                                      add r5, pc, r5
00894f88  06 30 95 e7                                      ldr r3, [r5, r6]
00894f8c  24 d0 4d e2                                      sub sp, sp, #0x24
00894f90  00 00 5a e3                                      cmp sl, #0
00894f94  00 30 93 e5                                      ldr r3, [r3]
00894f98  01 40 a0 e1                                      mov r4, r1
00894f9c  00 70 a0 e1                                      mov r7, r0
00894fa0  1c 30 8d e5                                      str r3, [sp, #0x1c]
00894fa4  4d 00 00 0a                                      beq #0x8950e0
00894fa8  20 30 d0 e5                                      ldrb r3, [r0, #0x20]
00894fac  00 00 53 e3                                      cmp r3, #0
00894fb0  14 80 91 05                                      ldreq r8, [r1, #0x14]
00894fb4  15 00 00 0a                                      beq #0x895010
00894fb8  10 80 91 e5                                      ldr r8, [r1, #0x10]
00894fbc  14 10 91 e5                                      ldr r1, [r1, #0x14]
00894fc0  01 00 58 e1                                      cmp r8, r1
00894fc4  11 00 00 0a                                      beq #0x895010
00894fc8  00 30 a0 e3                                      mov r3, #0
00894fcc  00 00 00 ea                                      b #0x894fd4
00894fd0  08 10 a0 e1                                      mov r1, r8
00894fd4  03 20 d1 e7                                      ldrb r2, [r1, r3]
00894fd8  03 10 81 e0                                      add r1, r1, r3
00894fdc  01 30 83 e2                                      add r3, r3, #1
00894fe0  72 00 ef e6                                      uxtb r0, r2
00894fe4  41 c0 40 e2                                      sub ip, r0, #0x41
00894fe8  7c c0 ef e6                                      uxtb ip, ip
00894fec  19 00 5c e3                                      cmp ip, #0x19
00894ff0  20 20 80 92                                      addls r2, r0, #0x20
00894ff4  72 20 ef 96                                      uxtbls r2, r2
00894ff8  00 20 c1 e5                                      strb r2, [r1]
00894ffc  14 80 94 e5                                      ldr r8, [r4, #0x14]
00895000  10 20 94 e5                                      ldr r2, [r4, #0x10]
00895004  02 20 68 e0                                      rsb r2, r8, r2
00895008  02 00 53 e1                                      cmp r3, r2
0089500c  ef ff ff 3a                                      blo #0x894fd0
00895010  da 30 98 e1                                      ldrsb r3, [r8, sl]
00895014  0a a0 88 e0                                      add sl, r8, sl
00895018  2f 00 53 e3                                      cmp r3, #0x2f
0089501c  04 00 00 0a                                      beq #0x895034
00895020  08 00 5a e1                                      cmp sl, r8
00895024  34 00 00 0a                                      beq #0x8950fc
00895028  d1 30 7a e1                                      ldrsb r3, [sl, #-1]!
0089502c  2f 00 53 e3                                      cmp r3, #0x2f
00895030  fa ff ff 1a                                      bne #0x895020
00895034  0a 00 58 e1                                      cmp r8, sl
00895038  2f 00 00 0a                                      beq #0x8950fc
0089503c  01 a0 8a e2                                      add sl, sl, #1
00895040  0a 00 a0 e1                                      mov r0, sl
00895044  82 e3 e9 eb                                      bl #0x30de54
00895048  18 90 84 e2                                      add sb, r4, #0x18
0089504c  00 20 8a e0                                      add r2, sl, r0
00895050  0a 10 a0 e1                                      mov r1, sl
00895054  09 00 a0 e1                                      mov r0, sb
00895058  c4 ce ff eb                                      bl #0x888b70
0089505c  f4 10 9f e5                                      ldr r1, [pc, #0xf4]
00895060  30 b0 84 e2                                      add fp, r4, #0x30
00895064  0b 00 a0 e1                                      mov r0, fp
00895068  01 10 8f e0                                      add r1, pc, r1
0089506c  01 20 a0 e1                                      mov r2, r1
00895070  be ce ff eb                                      bl #0x888b70
00895074  14 10 94 e5                                      ldr r1, [r4, #0x14]
00895078  10 30 94 e5                                      ldr r3, [r4, #0x10]
0089507c  04 80 8d e2                                      add r8, sp, #4
00895080  0a 20 61 e0                                      rsb r2, r1, sl
00895084  03 30 61 e0                                      rsb r3, r1, r3
00895088  03 00 52 e1                                      cmp r2, r3
0089508c  02 20 81 90                                      addls r2, r1, r2
00895090  03 20 81 80                                      addhi r2, r1, r3
00895094  08 00 a0 e1                                      mov r0, r8
00895098  14 80 8d e5                                      str r8, [sp, #0x14]
0089509c  18 80 8d e5                                      str r8, [sp, #0x18]
008950a0  92 68 ff eb                                      bl #0x86f2f0
008950a4  08 00 5b e1                                      cmp fp, r8
008950a8  03 00 00 0a                                      beq #0x8950bc
008950ac  0b 00 a0 e1                                      mov r0, fp
008950b0  18 10 9d e5                                      ldr r1, [sp, #0x18]
008950b4  14 20 9d e5                                      ldr r2, [sp, #0x14]
008950b8  ac ce ff eb                                      bl #0x888b70
008950bc  18 00 9d e5                                      ldr r0, [sp, #0x18]
008950c0  08 00 50 e1                                      cmp r0, r8
008950c4  18 00 00 0a                                      beq #0x89512c
008950c8  00 00 50 e3                                      cmp r0, #0
008950cc  16 00 00 0a                                      beq #0x89512c
008950d0  db ec e9 eb                                      bl #0x310444
008950d4  21 30 d7 e5                                      ldrb r3, [r7, #0x21]
008950d8  00 00 53 e3                                      cmp r3, #0
008950dc  15 00 00 0a                                      beq #0x895138
008950e0  06 30 95 e7                                      ldr r3, [r5, r6]
008950e4  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
008950e8  00 30 93 e5                                      ldr r3, [r3]
008950ec  03 00 52 e1                                      cmp r2, r3
008950f0  15 00 00 1a                                      bne #0x89514c
008950f4  24 d0 8d e2                                      add sp, sp, #0x24
008950f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008950fc  08 00 a0 e1                                      mov r0, r8
00895100  53 e3 e9 eb                                      bl #0x30de54
00895104  18 90 84 e2                                      add sb, r4, #0x18
00895108  00 20 88 e0                                      add r2, r8, r0
0089510c  08 10 a0 e1                                      mov r1, r8
00895110  09 00 a0 e1                                      mov r0, sb
00895114  95 ce ff eb                                      bl #0x888b70
00895118  3c 10 9f e5                                      ldr r1, [pc, #0x3c]
0089511c  30 00 84 e2                                      add r0, r4, #0x30
00895120  01 10 8f e0                                      add r1, pc, r1
00895124  01 20 a0 e1                                      mov r2, r1
00895128  90 ce ff eb                                      bl #0x888b70
0089512c  21 30 d7 e5                                      ldrb r3, [r7, #0x21]
00895130  00 00 53 e3                                      cmp r3, #0
00895134  e9 ff ff 1a                                      bne #0x8950e0
00895138  09 00 a0 e1                                      mov r0, sb
0089513c  10 20 94 e5                                      ldr r2, [r4, #0x10]
00895140  14 10 94 e5                                      ldr r1, [r4, #0x14]
00895144  89 ce ff eb                                      bl #0x888b70
00895148  e4 ff ff ea                                      b #0x8950e0
0089514c  6f e4 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00895150  0c fb 0f 00 ac 40 00 00 a0 67 03 00 e8 66 03 00  .byte 0x0c, 0xfb, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00, 0xa0, 0x67, 0x03, 0x00, 0xe8, 0x66, 0x03, 0x00

; FUNCTION 0x0089544c, declared_size=344, range_size=344, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReader11getFileInfoEPKcRiS3_
; demangled: vox::CZipReader::getFileInfo(char const*, int&, int&)
; decoder-mode: arm
0089544c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00895450  44 51 9f e5                                      ldr r5, [pc, #0x144]
00895454  44 71 9f e5                                      ldr r7, [pc, #0x144]
00895458  01 80 a0 e1                                      mov r8, r1
0089545c  05 50 8f e0                                      add r5, pc, r5
00895460  07 10 95 e7                                      ldr r1, [r5, r7]
00895464  20 d0 4d e2                                      sub sp, sp, #0x20
00895468  04 40 8d e2                                      add r4, sp, #4
0089546c  00 10 91 e5                                      ldr r1, [r1]
00895470  00 60 a0 e1                                      mov r6, r0
00895474  08 00 a0 e1                                      mov r0, r8
00895478  03 a0 a0 e1                                      mov sl, r3
0089547c  02 90 a0 e1                                      mov sb, r2
00895480  1c 10 8d e5                                      str r1, [sp, #0x1c]
00895484  14 40 8d e5                                      str r4, [sp, #0x14]
00895488  18 40 8d e5                                      str r4, [sp, #0x18]
0089548c  70 e2 e9 eb                                      bl #0x30de54
00895490  00 20 88 e0                                      add r2, r8, r0
00895494  08 10 a0 e1                                      mov r1, r8
00895498  04 00 a0 e1                                      mov r0, r4
0089549c  93 67 ff eb                                      bl #0x86f2f0
008954a0  21 30 d6 e5                                      ldrb r3, [r6, #0x21]
008954a4  00 00 53 e3                                      cmp r3, #0
008954a8  36 00 00 1a                                      bne #0x895588
008954ac  20 30 d6 e5                                      ldrb r3, [r6, #0x20]
008954b0  00 00 53 e3                                      cmp r3, #0
008954b4  13 00 00 0a                                      beq #0x895508
008954b8  18 20 9d e5                                      ldr r2, [sp, #0x18]
008954bc  14 30 9d e5                                      ldr r3, [sp, #0x14]
008954c0  02 00 53 e1                                      cmp r3, r2
008954c4  0f 00 00 0a                                      beq #0x895508
008954c8  00 30 a0 e3                                      mov r3, #0
008954cc  03 10 d2 e7                                      ldrb r1, [r2, r3]
008954d0  03 20 82 e0                                      add r2, r2, r3
008954d4  01 30 83 e2                                      add r3, r3, #1
008954d8  71 00 ef e6                                      uxtb r0, r1
008954dc  41 c0 40 e2                                      sub ip, r0, #0x41
008954e0  7c c0 ef e6                                      uxtb ip, ip
008954e4  19 00 5c e3                                      cmp ip, #0x19
008954e8  20 10 80 92                                      addls r1, r0, #0x20
008954ec  71 10 ef 96                                      uxtbls r1, r1
008954f0  00 10 c2 e5                                      strb r1, [r2]
008954f4  18 20 9d e5                                      ldr r2, [sp, #0x18]
008954f8  14 10 9d e5                                      ldr r1, [sp, #0x14]
008954fc  01 10 62 e0                                      rsb r1, r2, r1
00895500  01 00 53 e1                                      cmp r3, r1
00895504  f0 ff ff 3a                                      blo #0x8954cc
00895508  24 60 86 e2                                      add r6, r6, #0x24
0089550c  06 00 a0 e1                                      mov r0, r6
00895510  04 10 a0 e1                                      mov r1, r4
00895514  97 ff ff eb                                      bl #0x895378
00895518  06 00 50 e1                                      cmp r0, r6
0089551c  17 00 00 0a                                      beq #0x895580
00895520  fc 37 d0 e1                                      ldrsh r3, [r0, #0x7c]
00895524  00 00 53 e3                                      cmp r3, #0
00895528  14 00 00 1a                                      bne #0x895580
0089552c  70 30 90 e5                                      ldr r3, [r0, #0x70]
00895530  01 60 a0 e3                                      mov r6, #1
00895534  00 30 89 e5                                      str r3, [sb]
00895538  bc 28 d0 e1                                      ldrh r2, [r0, #0x8c]
0089553c  ba 38 d0 e1                                      ldrh r3, [r0, #0x8a]
00895540  02 38 83 e1                                      orr r3, r3, r2, lsl #16
00895544  00 30 8a e5                                      str r3, [sl]
00895548  18 00 9d e5                                      ldr r0, [sp, #0x18]
0089554c  04 00 50 e1                                      cmp r0, r4
00895550  02 00 00 0a                                      beq #0x895560
00895554  00 00 50 e3                                      cmp r0, #0
00895558  00 00 00 0a                                      beq #0x895560
0089555c  b8 eb e9 eb                                      bl #0x310444
00895560  07 30 95 e7                                      ldr r3, [r5, r7]
00895564  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00895568  06 00 a0 e1                                      mov r0, r6
0089556c  00 30 93 e5                                      ldr r3, [r3]
00895570  03 00 52 e1                                      cmp r2, r3
00895574  07 00 00 1a                                      bne #0x895598
00895578  20 d0 8d e2                                      add sp, sp, #0x20
0089557c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00895580  00 60 a0 e3                                      mov r6, #0
00895584  ef ff ff ea                                      b #0x895548
00895588  06 00 a0 e1                                      mov r0, r6
0089558c  04 10 a0 e1                                      mov r1, r4
00895590  59 fe ff eb                                      bl #0x894efc
00895594  c4 ff ff ea                                      b #0x8954ac
00895598  5c e3 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0089559c  34 f6 0f 00 ac 40 00 00                          .byte 0x34, 0xf6, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00895c64, declared_size=540, range_size=540, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReader15scanLocalHeaderEv
; demangled: vox::CZipReader::scanLocalHeader()
; decoder-mode: arm
00895c64  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00895c68  08 72 9f e5                                      ldr r7, [pc, #0x208]
00895c6c  08 82 9f e5                                      ldr r8, [pc, #0x208]
00895c70  47 de 4d e2                                      sub sp, sp, #0x470
00895c74  07 70 8f e0                                      add r7, pc, r7
00895c78  08 30 97 e7                                      ldr r3, [r7, r8]
00895c7c  04 d0 4d e2                                      sub sp, sp, #4
00895c80  01 5b 8d e2                                      add r5, sp, #0x400
00895c84  00 30 93 e5                                      ldr r3, [r3]
00895c88  00 60 a0 e1                                      mov r6, r0
00895c8c  05 00 a0 e1                                      mov r0, r5
00895c90  6c 34 8d e5                                      str r3, [sp, #0x46c]
00895c94  39 fb ff eb                                      bl #0x894980
00895c98  04 30 96 e5                                      ldr r3, [r6, #4]
00895c9c  00 40 a0 e3                                      mov r4, #0
00895ca0  01 1b 8d e2                                      add r1, sp, #0x400
00895ca4  b8 46 c1 e1                                      strh r4, [r1, #0x68]
00895ca8  48 44 8d e5                                      str r4, [sp, #0x448]
00895cac  4c 44 8d e5                                      str r4, [sp, #0x44c]
00895cb0  50 44 8d e5                                      str r4, [sp, #0x450]
00895cb4  54 44 8d e5                                      str r4, [sp, #0x454]
00895cb8  58 44 8d e5                                      str r4, [sp, #0x458]
00895cbc  5c 44 8d e5                                      str r4, [sp, #0x45c]
00895cc0  60 44 8d e5                                      str r4, [sp, #0x460]
00895cc4  64 44 8d e5                                      str r4, [sp, #0x464]
00895cc8  03 00 a0 e1                                      mov r0, r3
00895ccc  00 c0 93 e5                                      ldr ip, [r3]
00895cd0  4c 10 85 e2                                      add r1, r5, #0x4c
00895cd4  1e 20 a0 e3                                      mov r2, #0x1e
00895cd8  01 30 a0 e3                                      mov r3, #1
00895cdc  0f e0 a0 e1                                      mov lr, pc
00895ce0  08 f0 9c e5                                      ldr pc, [ip, #8]
00895ce4  4c 14 9d e5                                      ldr r1, [sp, #0x44c]
00895ce8  51 2d 04 e3                                      movw r2, #0x4d51
00895cec  50 3b 04 e3                                      movw r3, #0x4b50
00895cf0  06 28 40 e3                                      movt r2, #0x806
00895cf4  03 34 40 e3                                      movt r3, #0x403
00895cf8  02 00 51 e1                                      cmp r1, r2
00895cfc  03 00 51 11                                      cmpne r1, r3
00895d00  04 a0 a0 e1                                      mov sl, r4
00895d04  0a 00 00 0a                                      beq #0x895d34
00895d08  05 00 a0 e1                                      mov r0, r5
00895d0c  f6 fb ff eb                                      bl #0x894cec
00895d10  08 30 97 e7                                      ldr r3, [r7, r8]
00895d14  6c 24 9d e5                                      ldr r2, [sp, #0x46c]
00895d18  04 00 a0 e1                                      mov r0, r4
00895d1c  00 30 93 e5                                      ldr r3, [r3]
00895d20  03 00 52 e1                                      cmp r2, r3
00895d24  52 00 00 1a                                      bne #0x895e74
00895d28  74 d0 8d e2                                      add sp, sp, #0x74
00895d2c  01 db 8d e2                                      add sp, sp, #0x400
00895d30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00895d34  01 2b 8d e2                                      add r2, sp, #0x400
00895d38  f6 16 d2 e1                                      ldrsh r1, [r2, #0x66]
00895d3c  05 00 a0 e1                                      mov r0, r5
00895d40  02 10 81 e2                                      add r1, r1, #2
00895d44  7e fb ff eb                                      bl #0x894b44
00895d48  04 c0 96 e5                                      ldr ip, [r6, #4]
00895d4c  01 eb 8d e2                                      add lr, sp, #0x400
00895d50  f6 26 de e1                                      ldrsh r2, [lr, #0x66]
00895d54  01 30 a0 e3                                      mov r3, #1
00895d58  0d 10 a0 e1                                      mov r1, sp
00895d5c  0c 00 a0 e1                                      mov r0, ip
00895d60  00 c0 9c e5                                      ldr ip, [ip]
00895d64  0f e0 a0 e1                                      mov lr, pc
00895d68  08 f0 9c e5                                      ldr pc, [ip, #8]
00895d6c  01 1b 8d e2                                      add r1, sp, #0x400
00895d70  f6 36 d1 e1                                      ldrsh r3, [r1, #0x66]
00895d74  47 2e 8d e2                                      add r2, sp, #0x470
00895d78  0d 00 a0 e1                                      mov r0, sp
00895d7c  03 30 82 e0                                      add r3, r2, r3
00895d80  b9 24 a0 e3                                      mov r2, #0xb9000000
00895d84  42 aa c3 e7                                      strb sl, [r3, r2, asr #20]
00895d88  31 e0 e9 eb                                      bl #0x30de54
00895d8c  0d 10 a0 e1                                      mov r1, sp
00895d90  00 20 8d e0                                      add r2, sp, r0
00895d94  05 00 a0 e1                                      mov r0, r5
00895d98  74 cb ff eb                                      bl #0x888b70
00895d9c  05 10 a0 e1                                      mov r1, r5
00895da0  06 00 a0 e1                                      mov r0, r6
00895da4  72 fc ff eb                                      bl #0x894f74
00895da8  01 3b 8d e2                                      add r3, sp, #0x400
00895dac  b8 16 d3 e1                                      ldrh r1, [r3, #0x68]
00895db0  00 00 51 e3                                      cmp r1, #0
00895db4  1a 00 00 1a                                      bne #0x895e24
00895db8  01 cb 8d e2                                      add ip, sp, #0x400
00895dbc  b2 35 dc e1                                      ldrh r3, [ip, #0x52]
00895dc0  08 00 13 e3                                      tst r3, #8
00895dc4  21 00 00 1a                                      bne #0x895e50
00895dc8  04 30 96 e5                                      ldr r3, [r6, #4]
00895dcc  01 40 a0 e3                                      mov r4, #1
00895dd0  03 00 a0 e1                                      mov r0, r3
00895dd4  00 30 93 e5                                      ldr r3, [r3]
00895dd8  0f e0 a0 e1                                      mov lr, pc
00895ddc  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00895de0  01 eb 8d e2                                      add lr, sp, #0x400
00895de4  be 25 de e1                                      ldrh r2, [lr, #0x5e]
00895de8  04 30 96 e5                                      ldr r3, [r6, #4]
00895dec  b0 16 de e1                                      ldrh r1, [lr, #0x60]
00895df0  48 04 8d e5                                      str r0, [sp, #0x448]
00895df4  03 00 a0 e1                                      mov r0, r3
00895df8  01 18 82 e1                                      orr r1, r2, r1, lsl #16
00895dfc  00 30 93 e5                                      ldr r3, [r3]
00895e00  04 20 a0 e1                                      mov r2, r4
00895e04  0f e0 a0 e1                                      mov lr, pc
00895e08  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00895e0c  18 10 85 e2                                      add r1, r5, #0x18
00895e10  24 00 86 e2                                      add r0, r6, #0x24
00895e14  23 ff ff eb                                      bl #0x895aa8
00895e18  05 10 a0 e1                                      mov r1, r5
00895e1c  06 fb ff eb                                      bl #0x894a3c
00895e20  b8 ff ff ea                                      b #0x895d08
00895e24  04 30 96 e5                                      ldr r3, [r6, #4]
00895e28  71 10 bf e6                                      sxth r1, r1
00895e2c  01 20 a0 e3                                      mov r2, #1
00895e30  03 00 a0 e1                                      mov r0, r3
00895e34  00 30 93 e5                                      ldr r3, [r3]
00895e38  0f e0 a0 e1                                      mov lr, pc
00895e3c  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00895e40  01 cb 8d e2                                      add ip, sp, #0x400
00895e44  b2 35 dc e1                                      ldrh r3, [ip, #0x52]
00895e48  08 00 13 e3                                      tst r3, #8
00895e4c  dd ff ff 0a                                      beq #0x895dc8
00895e50  04 30 96 e5                                      ldr r3, [r6, #4]
00895e54  5a 10 85 e2                                      add r1, r5, #0x5a
00895e58  0c 20 a0 e3                                      mov r2, #0xc
00895e5c  00 c0 93 e5                                      ldr ip, [r3]
00895e60  03 00 a0 e1                                      mov r0, r3
00895e64  01 30 a0 e3                                      mov r3, #1
00895e68  0f e0 a0 e1                                      mov lr, pc
00895e6c  08 f0 9c e5                                      ldr pc, [ip, #8]
00895e70  d4 ff ff ea                                      b #0x895dc8
00895e74  25 e1 e9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00895e78  1c ee 0f 00 ac 40 00 00                          .byte 0x1c, 0xee, 0x0f, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00895e80, declared_size=220, range_size=220, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReaderC1EPKcbb
; demangled: vox::CZipReader::CZipReader(char const*, bool, bool)
; decoder-mode: arm
00895e80  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
00895e84  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00895e88  c8 e0 9f e5                                      ldr lr, [pc, #0xc8]
00895e8c  0c c0 8f e0                                      add ip, pc, ip
00895e90  00 50 a0 e1                                      mov r5, r0
00895e94  0e e0 9c e7                                      ldr lr, [ip, lr]
00895e98  00 40 a0 e1                                      mov r4, r0
00895e9c  01 60 a0 e1                                      mov r6, r1
00895ea0  08 e0 8e e2                                      add lr, lr, #8
00895ea4  08 e0 85 e4                                      str lr, [r5], #8
00895ea8  18 50 80 e5                                      str r5, [r0, #0x18]
00895eac  1c 50 80 e5                                      str r5, [r0, #0x1c]
00895eb0  10 10 a0 e3                                      mov r1, #0x10
00895eb4  05 00 a0 e1                                      mov r0, r5
00895eb8  02 70 a0 e1                                      mov r7, r2
00895ebc  03 80 a0 e1                                      mov r8, r3
00895ec0  f6 64 ff eb                                      bl #0x86f2a0
00895ec4  18 10 94 e5                                      ldr r1, [r4, #0x18]
00895ec8  00 30 a0 e3                                      mov r3, #0
00895ecc  04 20 a0 e1                                      mov r2, r4
00895ed0  00 30 c1 e5                                      strb r3, [r1]
00895ed4  28 30 84 e5                                      str r3, [r4, #0x28]
00895ed8  20 70 c4 e5                                      strb r7, [r4, #0x20]
00895edc  21 80 c4 e5                                      strb r8, [r4, #0x21]
00895ee0  24 30 e2 e5                                      strb r3, [r2, #0x24]!
00895ee4  30 20 84 e5                                      str r2, [r4, #0x30]
00895ee8  04 30 84 e5                                      str r3, [r4, #4]
00895eec  34 30 84 e5                                      str r3, [r4, #0x34]
00895ef0  2c 20 84 e5                                      str r2, [r4, #0x2c]
00895ef4  aa f9 ff eb                                      bl #0x8945a4
00895ef8  00 30 50 e2                                      subs r3, r0, #0
00895efc  04 00 94 05                                      ldreq r0, [r4, #4]
00895f00  05 00 00 0a                                      beq #0x895f1c
00895f04  00 30 93 e5                                      ldr r3, [r3]
00895f08  06 10 a0 e1                                      mov r1, r6
00895f0c  06 20 a0 e3                                      mov r2, #6
00895f10  0f e0 a0 e1                                      mov lr, pc
00895f14  08 f0 93 e5                                      ldr pc, [r3, #8]
00895f18  04 00 84 e5                                      str r0, [r4, #4]
00895f1c  00 00 50 e3                                      cmp r0, #0
00895f20  09 00 00 0a                                      beq #0x895f4c
00895f24  06 00 a0 e1                                      mov r0, r6
00895f28  c9 df e9 eb                                      bl #0x30de54
00895f2c  06 10 a0 e1                                      mov r1, r6
00895f30  00 20 86 e0                                      add r2, r6, r0
00895f34  05 00 a0 e1                                      mov r0, r5
00895f38  0c cb ff eb                                      bl #0x888b70
00895f3c  04 00 a0 e1                                      mov r0, r4
00895f40  47 ff ff eb                                      bl #0x895c64
00895f44  00 00 50 e3                                      cmp r0, #0
00895f48  fb ff ff 1a                                      bne #0x895f3c
00895f4c  04 00 a0 e1                                      mov r0, r4
00895f50  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00895f54  04 ec 0f 00 84 15 00 00                          .byte 0x04, 0xec, 0x0f, 0x00, 0x84, 0x15, 0x00, 0x00

; FUNCTION 0x00895f5c, declared_size=220, range_size=220, mode=arm
; class-group: vox::CZipReader
; alias: _ZN3vox10CZipReaderC2EPKcbb
; demangled: vox::CZipReader::CZipReader(char const*, bool, bool)
; decoder-mode: arm
00895f5c  cc c0 9f e5                                      ldr ip, [pc, #0xcc]
00895f60  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00895f64  c8 e0 9f e5                                      ldr lr, [pc, #0xc8]
00895f68  0c c0 8f e0                                      add ip, pc, ip
00895f6c  00 50 a0 e1                                      mov r5, r0
00895f70  0e e0 9c e7                                      ldr lr, [ip, lr]
00895f74  00 40 a0 e1                                      mov r4, r0
00895f78  01 60 a0 e1                                      mov r6, r1
00895f7c  08 e0 8e e2                                      add lr, lr, #8
00895f80  08 e0 85 e4                                      str lr, [r5], #8
00895f84  18 50 80 e5                                      str r5, [r0, #0x18]
00895f88  1c 50 80 e5                                      str r5, [r0, #0x1c]
00895f8c  10 10 a0 e3                                      mov r1, #0x10
00895f90  05 00 a0 e1                                      mov r0, r5
00895f94  02 70 a0 e1                                      mov r7, r2
00895f98  03 80 a0 e1                                      mov r8, r3
00895f9c  bf 64 ff eb                                      bl #0x86f2a0
00895fa0  18 10 94 e5                                      ldr r1, [r4, #0x18]
00895fa4  00 30 a0 e3                                      mov r3, #0
00895fa8  04 20 a0 e1                                      mov r2, r4
00895fac  00 30 c1 e5                                      strb r3, [r1]
00895fb0  28 30 84 e5                                      str r3, [r4, #0x28]
00895fb4  20 70 c4 e5                                      strb r7, [r4, #0x20]
00895fb8  21 80 c4 e5                                      strb r8, [r4, #0x21]
00895fbc  24 30 e2 e5                                      strb r3, [r2, #0x24]!
00895fc0  30 20 84 e5                                      str r2, [r4, #0x30]
00895fc4  04 30 84 e5                                      str r3, [r4, #4]
00895fc8  34 30 84 e5                                      str r3, [r4, #0x34]
00895fcc  2c 20 84 e5                                      str r2, [r4, #0x2c]
00895fd0  73 f9 ff eb                                      bl #0x8945a4
00895fd4  00 30 50 e2                                      subs r3, r0, #0
00895fd8  04 00 94 05                                      ldreq r0, [r4, #4]
00895fdc  05 00 00 0a                                      beq #0x895ff8
00895fe0  00 30 93 e5                                      ldr r3, [r3]
00895fe4  06 10 a0 e1                                      mov r1, r6
00895fe8  06 20 a0 e3                                      mov r2, #6
00895fec  0f e0 a0 e1                                      mov lr, pc
00895ff0  08 f0 93 e5                                      ldr pc, [r3, #8]
00895ff4  04 00 84 e5                                      str r0, [r4, #4]
00895ff8  00 00 50 e3                                      cmp r0, #0
00895ffc  09 00 00 0a                                      beq #0x896028
00896000  06 00 a0 e1                                      mov r0, r6
00896004  92 df e9 eb                                      bl #0x30de54
00896008  06 10 a0 e1                                      mov r1, r6
0089600c  00 20 86 e0                                      add r2, r6, r0
00896010  05 00 a0 e1                                      mov r0, r5
00896014  d5 ca ff eb                                      bl #0x888b70
00896018  04 00 a0 e1                                      mov r0, r4
0089601c  10 ff ff eb                                      bl #0x895c64
00896020  00 00 50 e3                                      cmp r0, #0
00896024  fb ff ff 1a                                      bne #0x896018
00896028  04 00 a0 e1                                      mov r0, r4
0089602c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
00896030  28 eb 0f 00 84 15 00 00                          .byte 0x28, 0xeb, 0x0f, 0x00, 0x84, 0x15, 0x00, 0x00
