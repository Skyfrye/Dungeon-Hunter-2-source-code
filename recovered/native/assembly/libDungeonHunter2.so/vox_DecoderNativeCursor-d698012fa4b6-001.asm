; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008710a8, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor7HasDataEv
; demangled: vox::DecoderNativeCursor::HasData()
; decoder-mode: arm
008710a8  10 40 2d e9                                      push {r4, lr}
008710ac  48 30 90 e5                                      ldr r3, [r0, #0x48]
008710b0  00 00 53 e3                                      cmp r3, #0
008710b4  04 00 00 0a                                      beq #0x8710cc
008710b8  03 00 a0 e1                                      mov r0, r3
008710bc  00 30 93 e5                                      ldr r3, [r3]
008710c0  0f e0 a0 e1                                      mov lr, pc
008710c4  08 f0 93 e5                                      ldr pc, [r3, #8]
008710c8  10 80 bd e8                                      pop {r4, pc}
008710cc  03 00 a0 e1                                      mov r0, r3
008710d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008710d4, declared_size=40, range_size=40, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor14GetRewindLimitEv
; demangled: vox::DecoderNativeCursor::GetRewindLimit()
; decoder-mode: arm
008710d4  5c 30 90 e5                                      ldr r3, [r0, #0x5c]
008710d8  64 20 90 e5                                      ldr r2, [r0, #0x64]
008710dc  02 00 53 e1                                      cmp r3, r2
008710e0  00 30 a0 c3                                      movgt r3, #0
008710e4  02 00 00 ca                                      bgt #0x8710f4
008710e8  58 10 90 e5                                      ldr r1, [r0, #0x58]
008710ec  01 00 52 e1                                      cmp r2, r1
008710f0  01 30 a0 a1                                      movge r3, r1
008710f4  03 00 a0 e1                                      mov r0, r3
008710f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x008710fc, declared_size=44, range_size=44, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor4SeekEj
; demangled: vox::DecoderNativeCursor::Seek(unsigned int)
; decoder-mode: arm
008710fc  10 40 2d e9                                      push {r4, lr}
00871100  48 30 90 e5                                      ldr r3, [r0, #0x48]
00871104  00 00 53 e3                                      cmp r3, #0
00871108  04 00 00 0a                                      beq #0x871120
0087110c  03 00 a0 e1                                      mov r0, r3
00871110  00 30 93 e5                                      ldr r3, [r3]
00871114  0f e0 a0 e1                                      mov lr, pc
00871118  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0087111c  10 80 bd e8                                      pop {r4, pc}
00871120  00 00 e0 e3                                      mvn r0, #0
00871124  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00871128, declared_size=4, range_size=4, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor7SetLoopEb
; demangled: vox::DecoderNativeCursor::SetLoop(bool)
; decoder-mode: arm
00871128  1e ff 2f e1                                      bx lr

; FUNCTION 0x008718cc, declared_size=136, range_size=136, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor5ResetEv
; demangled: vox::DecoderNativeCursor::Reset()
; decoder-mode: arm
008718cc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008718d0  48 30 90 e5                                      ldr r3, [r0, #0x48]
008718d4  00 60 a0 e1                                      mov r6, r0
008718d8  00 00 53 e3                                      cmp r3, #0
008718dc  1b 00 00 0a                                      beq #0x871950
008718e0  03 00 a0 e1                                      mov r0, r3
008718e4  00 30 93 e5                                      ldr r3, [r3]
008718e8  0f e0 a0 e1                                      mov lr, pc
008718ec  10 f0 93 e5                                      ldr pc, [r3, #0x10]
008718f0  68 70 86 e2                                      add r7, r6, #0x68
008718f4  00 30 a0 e3                                      mov r3, #0
008718f8  06 50 a0 e1                                      mov r5, r6
008718fc  07 00 a0 e1                                      mov r0, r7
00871900  64 30 86 e5                                      str r3, [r6, #0x64]
00871904  4c 30 86 e5                                      str r3, [r6, #0x4c]
00871908  58 30 86 e5                                      str r3, [r6, #0x58]
0087190c  5c 30 86 e5                                      str r3, [r6, #0x5c]
00871910  d9 86 00 eb                                      bl #0x89347c
00871914  40 00 b5 e5                                      ldr r0, [r5, #0x40]!
00871918  05 00 50 e1                                      cmp r0, r5
0087191c  01 00 00 1a                                      bne #0x871928
00871920  05 00 00 ea                                      b #0x87193c
00871924  04 00 a0 e1                                      mov r0, r4
00871928  00 40 90 e5                                      ldr r4, [r0]
0087192c  c4 7a ea eb                                      bl #0x310444
00871930  05 00 54 e1                                      cmp r4, r5
00871934  fa ff ff 1a                                      bne #0x871924
00871938  05 00 a0 e1                                      mov r0, r5
0087193c  44 00 86 e5                                      str r0, [r6, #0x44]
00871940  40 00 86 e5                                      str r0, [r6, #0x40]
00871944  07 00 a0 e1                                      mov r0, r7
00871948  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
0087194c  c9 86 00 ea                                      b #0x893478
00871950  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00871954, declared_size=108, range_size=108, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor13GetStateIndexEv
; demangled: vox::DecoderNativeCursor::GetStateIndex()
; decoder-mode: arm
00871954  70 40 2d e9                                      push {r4, r5, r6, lr}
00871958  68 50 80 e2                                      add r5, r0, #0x68
0087195c  00 40 a0 e1                                      mov r4, r0
00871960  05 00 a0 e1                                      mov r0, r5
00871964  c4 86 00 eb                                      bl #0x89347c
00871968  04 20 a0 e1                                      mov r2, r4
0087196c  40 30 b2 e5                                      ldr r3, [r2, #0x40]!
00871970  02 00 53 e1                                      cmp r3, r2
00871974  0d 00 00 0a                                      beq #0x8719b0
00871978  00 30 93 e5                                      ldr r3, [r3]
0087197c  03 00 52 e1                                      cmp r2, r3
00871980  fc ff ff 1a                                      bne #0x871978
00871984  44 30 94 e5                                      ldr r3, [r4, #0x44]
00871988  00 20 93 e5                                      ldr r2, [r3]
0087198c  12 00 93 e9                                      ldmib r3, {r1, r4}
00871990  03 00 a0 e1                                      mov r0, r3
00871994  00 20 81 e5                                      str r2, [r1]
00871998  04 10 82 e5                                      str r1, [r2, #4]
0087199c  a8 7a ea eb                                      bl #0x310444
008719a0  05 00 a0 e1                                      mov r0, r5
008719a4  b3 86 00 eb                                      bl #0x893478
008719a8  04 00 a0 e1                                      mov r0, r4
008719ac  70 80 bd e8                                      pop {r4, r5, r6, pc}
008719b0  05 00 a0 e1                                      mov r0, r5
008719b4  af 86 00 eb                                      bl #0x893478
008719b8  00 40 e0 e3                                      mvn r4, #0
008719bc  f9 ff ff ea                                      b #0x8719a8

; FUNCTION 0x008720b8, declared_size=164, range_size=164, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor6RewindEi
; demangled: vox::DecoderNativeCursor::Rewind(int)
; decoder-mode: arm
008720b8  70 40 2d e9                                      push {r4, r5, r6, lr}
008720bc  00 40 a0 e1                                      mov r4, r0
008720c0  48 00 90 e5                                      ldr r0, [r0, #0x48]
008720c4  01 50 a0 e1                                      mov r5, r1
008720c8  00 00 50 e3                                      cmp r0, #0
008720cc  0f 00 00 0a                                      beq #0x872110
008720d0  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
008720d4  01 00 53 e1                                      cmp r3, r1
008720d8  0d 00 00 ba                                      blt #0x872114
008720dc  20 30 94 e5                                      ldr r3, [r4, #0x20]
008720e0  f0 32 d3 e1                                      ldrsh r3, [r3, #0x20]
008720e4  11 00 53 e3                                      cmp r3, #0x11
008720e8  18 00 00 0a                                      beq #0x872150
008720ec  54 10 94 e5                                      ldr r1, [r4, #0x54]
008720f0  b1 56 00 eb                                      bl #0x887bbc
008720f4  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
008720f8  01 10 65 e0                                      rsb r1, r5, r1
008720fc  00 00 51 e3                                      cmp r1, #0
00872100  02 00 00 da                                      ble #0x872110
00872104  48 00 94 e5                                      ldr r0, [r4, #0x48]
00872108  70 40 bd e8                                      pop {r4, r5, r6, lr}
0087210c  6b 4e 00 ea                                      b #0x885ac0
00872110  70 80 bd e8                                      pop {r4, r5, r6, pc}
00872114  58 30 94 e5                                      ldr r3, [r4, #0x58]
00872118  03 00 51 e1                                      cmp r1, r3
0087211c  fb ff ff ca                                      bgt #0x872110
00872120  20 30 94 e5                                      ldr r3, [r4, #0x20]
00872124  f0 32 d3 e1                                      ldrsh r3, [r3, #0x20]
00872128  11 00 53 e3                                      cmp r3, #0x11
0087212c  04 00 00 0a                                      beq #0x872144
00872130  50 10 94 e5                                      ldr r1, [r4, #0x50]
00872134  a0 56 00 eb                                      bl #0x887bbc
00872138  58 10 94 e5                                      ldr r1, [r4, #0x58]
0087213c  01 10 65 e0                                      rsb r1, r5, r1
00872140  ed ff ff ea                                      b #0x8720fc
00872144  50 10 94 e5                                      ldr r1, [r4, #0x50]
00872148  ea 50 00 eb                                      bl #0x8864f8
0087214c  f9 ff ff ea                                      b #0x872138
00872150  54 10 94 e5                                      ldr r1, [r4, #0x54]
00872154  e7 50 00 eb                                      bl #0x8864f8
00872158  e5 ff ff ea                                      b #0x8720f4

; FUNCTION 0x00872218, declared_size=252, range_size=252, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor6DecodeEPvi
; demangled: vox::DecoderNativeCursor::Decode(void*, int)
; decoder-mode: arm
00872218  70 40 2d e9                                      push {r4, r5, r6, lr}
0087221c  00 40 a0 e1                                      mov r4, r0
00872220  48 00 90 e5                                      ldr r0, [r0, #0x48]
00872224  01 50 a0 e1                                      mov r5, r1
00872228  02 60 a0 e1                                      mov r6, r2
0087222c  00 00 50 e3                                      cmp r0, #0
00872230  2e 00 00 0a                                      beq #0x8722f0
00872234  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00872238  01 00 53 e3                                      cmp r3, #1
0087223c  04 00 00 0a                                      beq #0x872254
00872240  5c 20 94 e5                                      ldr r2, [r4, #0x5c]
00872244  60 30 94 e5                                      ldr r3, [r4, #0x60]
00872248  02 20 86 e0                                      add r2, r6, r2
0087224c  03 00 52 e1                                      cmp r2, r3
00872250  0c 00 00 da                                      ble #0x872288
00872254  50 10 94 e5                                      ldr r1, [r4, #0x50]
00872258  54 20 94 e5                                      ldr r2, [r4, #0x54]
0087225c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00872260  54 10 84 e5                                      str r1, [r4, #0x54]
00872264  50 20 84 e5                                      str r2, [r4, #0x50]
00872268  f0 32 d3 e1                                      ldrsh r3, [r3, #0x20]
0087226c  11 00 53 e3                                      cmp r3, #0x11
00872270  25 00 00 0a                                      beq #0x87230c
00872274  51 56 00 eb                                      bl #0x887bc0
00872278  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0087227c  00 20 a0 e3                                      mov r2, #0
00872280  5c 20 84 e5                                      str r2, [r4, #0x5c]
00872284  58 30 84 e5                                      str r3, [r4, #0x58]
00872288  04 00 a0 e1                                      mov r0, r4
0087228c  b0 fd ff eb                                      bl #0x871954
00872290  00 10 50 e2                                      subs r1, r0, #0
00872294  16 00 00 ba                                      blt #0x8722f4
00872298  48 00 94 e5                                      ldr r0, [r4, #0x48]
0087229c  e6 4d 00 eb                                      bl #0x885a3c
008722a0  00 30 a0 e3                                      mov r3, #0
008722a4  64 30 84 e5                                      str r3, [r4, #0x64]
008722a8  05 10 a0 e1                                      mov r1, r5
008722ac  06 20 a0 e1                                      mov r2, r6
008722b0  48 00 94 e5                                      ldr r0, [r4, #0x48]
008722b4  58 4e 00 eb                                      bl #0x885c1c
008722b8  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
008722bc  00 00 53 e3                                      cmp r3, #0
008722c0  08 00 00 0a                                      beq #0x8722e8
008722c4  58 c0 94 e5                                      ldr ip, [r4, #0x58]
008722c8  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
008722cc  64 20 94 e5                                      ldr r2, [r4, #0x64]
008722d0  00 c0 8c e0                                      add ip, ip, r0
008722d4  00 10 81 e0                                      add r1, r1, r0
008722d8  00 20 82 e0                                      add r2, r2, r0
008722dc  58 c0 84 e5                                      str ip, [r4, #0x58]
008722e0  5c 10 84 e5                                      str r1, [r4, #0x5c]
008722e4  64 20 84 e5                                      str r2, [r4, #0x64]
008722e8  01 30 83 e2                                      add r3, r3, #1
008722ec  4c 30 84 e5                                      str r3, [r4, #0x4c]
008722f0  70 80 bd e8                                      pop {r4, r5, r6, pc}
008722f4  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
008722f8  00 00 51 e3                                      cmp r1, #0
008722fc  e9 ff ff 1a                                      bne #0x8722a8
00872300  48 00 94 e5                                      ldr r0, [r4, #0x48]
00872304  cc 4d 00 eb                                      bl #0x885a3c
00872308  e6 ff ff ea                                      b #0x8722a8
0087230c  90 50 00 eb                                      bl #0x886554
00872310  d8 ff ff ea                                      b #0x872278

; FUNCTION 0x00872314, declared_size=272, range_size=272, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursorD1Ev
; demangled: vox::DecoderNativeCursor::~DecoderNativeCursor()
; decoder-mode: arm
00872314  70 40 2d e9                                      push {r4, r5, r6, lr}
00872318  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0087231c  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
00872320  48 10 90 e5                                      ldr r1, [r0, #0x48]
00872324  03 30 8f e0                                      add r3, pc, r3
00872328  02 20 93 e7                                      ldr r2, [r3, r2]
0087232c  00 00 51 e3                                      cmp r1, #0
00872330  00 50 a0 e1                                      mov r5, r0
00872334  08 20 82 e2                                      add r2, r2, #8
00872338  00 20 80 e5                                      str r2, [r0]
0087233c  07 00 00 0a                                      beq #0x872360
00872340  00 30 91 e5                                      ldr r3, [r1]
00872344  01 00 a0 e1                                      mov r0, r1
00872348  0f e0 a0 e1                                      mov lr, pc
0087234c  00 f0 93 e5                                      ldr pc, [r3]
00872350  48 00 95 e5                                      ldr r0, [r5, #0x48]
00872354  3a 78 ea eb                                      bl #0x310444
00872358  00 30 a0 e3                                      mov r3, #0
0087235c  48 30 85 e5                                      str r3, [r5, #0x48]
00872360  50 30 95 e5                                      ldr r3, [r5, #0x50]
00872364  00 00 53 e3                                      cmp r3, #0
00872368  07 00 00 0a                                      beq #0x87238c
0087236c  03 00 a0 e1                                      mov r0, r3
00872370  00 30 93 e5                                      ldr r3, [r3]
00872374  0f e0 a0 e1                                      mov lr, pc
00872378  00 f0 93 e5                                      ldr pc, [r3]
0087237c  50 00 95 e5                                      ldr r0, [r5, #0x50]
00872380  2f 78 ea eb                                      bl #0x310444
00872384  00 30 a0 e3                                      mov r3, #0
00872388  50 30 85 e5                                      str r3, [r5, #0x50]
0087238c  54 30 95 e5                                      ldr r3, [r5, #0x54]
00872390  00 00 53 e3                                      cmp r3, #0
00872394  07 00 00 0a                                      beq #0x8723b8
00872398  03 00 a0 e1                                      mov r0, r3
0087239c  00 30 93 e5                                      ldr r3, [r3]
008723a0  0f e0 a0 e1                                      mov lr, pc
008723a4  00 f0 93 e5                                      ldr pc, [r3]
008723a8  54 00 95 e5                                      ldr r0, [r5, #0x54]
008723ac  24 78 ea eb                                      bl #0x310444
008723b0  00 30 a0 e3                                      mov r3, #0
008723b4  54 30 85 e5                                      str r3, [r5, #0x54]
008723b8  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
008723bc  00 00 50 e3                                      cmp r0, #0
008723c0  04 00 00 0a                                      beq #0x8723d8
008723c4  ba 40 00 eb                                      bl #0x8826b4
008723c8  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
008723cc  1c 78 ea eb                                      bl #0x310444
008723d0  00 30 a0 e3                                      mov r3, #0
008723d4  3c 30 85 e5                                      str r3, [r5, #0x3c]
008723d8  68 00 85 e2                                      add r0, r5, #0x68
008723dc  71 84 00 eb                                      bl #0x8935a8
008723e0  40 00 95 e5                                      ldr r0, [r5, #0x40]
008723e4  40 60 85 e2                                      add r6, r5, #0x40
008723e8  06 00 50 e1                                      cmp r0, r6
008723ec  01 00 00 1a                                      bne #0x8723f8
008723f0  05 00 00 ea                                      b #0x87240c
008723f4  04 00 a0 e1                                      mov r0, r4
008723f8  00 40 90 e5                                      ldr r4, [r0]
008723fc  10 78 ea eb                                      bl #0x310444
00872400  06 00 54 e1                                      cmp r4, r6
00872404  fa ff ff 1a                                      bne #0x8723f4
00872408  06 00 a0 e1                                      mov r0, r6
0087240c  40 00 85 e5                                      str r0, [r5, #0x40]
00872410  04 00 86 e5                                      str r0, [r6, #4]
00872414  05 00 a0 e1                                      mov r0, r5
00872418  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
0087241c  6c 27 12 00 10 0f 00 00                          .byte 0x6c, 0x27, 0x12, 0x00, 0x10, 0x0f, 0x00, 0x00

; FUNCTION 0x00872424, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursorD0Ev
; demangled: vox::DecoderNativeCursor::~DecoderNativeCursor()
; decoder-mode: arm
00872424  10 40 2d e9                                      push {r4, lr}
00872428  00 40 a0 e1                                      mov r4, r0
0087242c  b8 ff ff eb                                      bl #0x872314
00872430  04 00 a0 e1                                      mov r0, r4
00872434  9d 6f ea eb                                      bl #0x30e2b0
00872438  04 00 a0 e1                                      mov r0, r4
0087243c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00872440, declared_size=272, range_size=272, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursorD2Ev
; demangled: vox::DecoderNativeCursor::~DecoderNativeCursor()
; decoder-mode: arm
00872440  70 40 2d e9                                      push {r4, r5, r6, lr}
00872444  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
00872448  fc 20 9f e5                                      ldr r2, [pc, #0xfc]
0087244c  48 10 90 e5                                      ldr r1, [r0, #0x48]
00872450  03 30 8f e0                                      add r3, pc, r3
00872454  02 20 93 e7                                      ldr r2, [r3, r2]
00872458  00 00 51 e3                                      cmp r1, #0
0087245c  00 50 a0 e1                                      mov r5, r0
00872460  08 20 82 e2                                      add r2, r2, #8
00872464  00 20 80 e5                                      str r2, [r0]
00872468  07 00 00 0a                                      beq #0x87248c
0087246c  00 30 91 e5                                      ldr r3, [r1]
00872470  01 00 a0 e1                                      mov r0, r1
00872474  0f e0 a0 e1                                      mov lr, pc
00872478  00 f0 93 e5                                      ldr pc, [r3]
0087247c  48 00 95 e5                                      ldr r0, [r5, #0x48]
00872480  ef 77 ea eb                                      bl #0x310444
00872484  00 30 a0 e3                                      mov r3, #0
00872488  48 30 85 e5                                      str r3, [r5, #0x48]
0087248c  50 30 95 e5                                      ldr r3, [r5, #0x50]
00872490  00 00 53 e3                                      cmp r3, #0
00872494  07 00 00 0a                                      beq #0x8724b8
00872498  03 00 a0 e1                                      mov r0, r3
0087249c  00 30 93 e5                                      ldr r3, [r3]
008724a0  0f e0 a0 e1                                      mov lr, pc
008724a4  00 f0 93 e5                                      ldr pc, [r3]
008724a8  50 00 95 e5                                      ldr r0, [r5, #0x50]
008724ac  e4 77 ea eb                                      bl #0x310444
008724b0  00 30 a0 e3                                      mov r3, #0
008724b4  50 30 85 e5                                      str r3, [r5, #0x50]
008724b8  54 30 95 e5                                      ldr r3, [r5, #0x54]
008724bc  00 00 53 e3                                      cmp r3, #0
008724c0  07 00 00 0a                                      beq #0x8724e4
008724c4  03 00 a0 e1                                      mov r0, r3
008724c8  00 30 93 e5                                      ldr r3, [r3]
008724cc  0f e0 a0 e1                                      mov lr, pc
008724d0  00 f0 93 e5                                      ldr pc, [r3]
008724d4  54 00 95 e5                                      ldr r0, [r5, #0x54]
008724d8  d9 77 ea eb                                      bl #0x310444
008724dc  00 30 a0 e3                                      mov r3, #0
008724e0  54 30 85 e5                                      str r3, [r5, #0x54]
008724e4  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
008724e8  00 00 50 e3                                      cmp r0, #0
008724ec  04 00 00 0a                                      beq #0x872504
008724f0  6f 40 00 eb                                      bl #0x8826b4
008724f4  3c 00 95 e5                                      ldr r0, [r5, #0x3c]
008724f8  d1 77 ea eb                                      bl #0x310444
008724fc  00 30 a0 e3                                      mov r3, #0
00872500  3c 30 85 e5                                      str r3, [r5, #0x3c]
00872504  68 00 85 e2                                      add r0, r5, #0x68
00872508  26 84 00 eb                                      bl #0x8935a8
0087250c  40 00 95 e5                                      ldr r0, [r5, #0x40]
00872510  40 60 85 e2                                      add r6, r5, #0x40
00872514  06 00 50 e1                                      cmp r0, r6
00872518  01 00 00 1a                                      bne #0x872524
0087251c  05 00 00 ea                                      b #0x872538
00872520  04 00 a0 e1                                      mov r0, r4
00872524  00 40 90 e5                                      ldr r4, [r0]
00872528  c5 77 ea eb                                      bl #0x310444
0087252c  06 00 54 e1                                      cmp r4, r6
00872530  fa ff ff 1a                                      bne #0x872520
00872534  06 00 a0 e1                                      mov r0, r6
00872538  40 00 85 e5                                      str r0, [r5, #0x40]
0087253c  04 00 86 e5                                      str r0, [r6, #4]
00872540  05 00 a0 e1                                      mov r0, r5
00872544  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00872548  40 26 12 00 10 0f 00 00                          .byte 0x40, 0x26, 0x12, 0x00, 0x10, 0x0f, 0x00, 0x00

; FUNCTION 0x00872cf0, declared_size=360, range_size=360, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor22SetImplicitSegmentCuesEv
; demangled: vox::DecoderNativeCursor::SetImplicitSegmentCues()
; decoder-mode: arm
00872cf0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00872cf4  24 30 90 e5                                      ldr r3, [r0, #0x24]
00872cf8  08 d0 4d e2                                      sub sp, sp, #8
00872cfc  00 70 a0 e1                                      mov r7, r0
00872d00  00 80 93 e5                                      ldr r8, [r3]
00872d04  00 00 58 e3                                      cmp r8, #0
00872d08  48 00 00 da                                      ble #0x872e30
00872d0c  00 50 a0 e3                                      mov r5, #0
00872d10  05 40 a0 e1                                      mov r4, r5
00872d14  05 60 a0 e1                                      mov r6, r5
00872d18  04 90 8d e2                                      add sb, sp, #4
00872d1c  05 a0 a0 e1                                      mov sl, r5
00872d20  13 00 00 ea                                      b #0x872d74
00872d24  24 20 97 e5                                      ldr r2, [r7, #0x24]
00872d28  04 20 92 e5                                      ldr r2, [r2, #4]
00872d2c  05 20 82 e0                                      add r2, r2, r5
00872d30  08 20 92 e5                                      ldr r2, [r2, #8]
00872d34  01 20 42 e2                                      sub r2, r2, #1
00872d38  04 20 8d e5                                      str r2, [sp, #4]
00872d3c  00 00 93 e5                                      ldr r0, [r3]
00872d40  04 00 80 e0                                      add r0, r0, r4
00872d44  0a 00 90 e9                                      ldmib r0, {r1, r3}
00872d48  03 00 51 e1                                      cmp r1, r3
00872d4c  30 00 00 0a                                      beq #0x872e14
00872d50  00 20 81 e5                                      str r2, [r1]
00872d54  04 30 90 e5                                      ldr r3, [r0, #4]
00872d58  01 60 86 e2                                      add r6, r6, #1
00872d5c  08 00 56 e1                                      cmp r6, r8
00872d60  04 30 83 e2                                      add r3, r3, #4
00872d64  04 30 80 e5                                      str r3, [r0, #4]
00872d68  0c 40 84 e2                                      add r4, r4, #0xc
00872d6c  18 50 85 e2                                      add r5, r5, #0x18
00872d70  2e 00 00 0a                                      beq #0x872e30
00872d74  34 30 97 e5                                      ldr r3, [r7, #0x34]
00872d78  00 20 93 e5                                      ldr r2, [r3]
00872d7c  04 10 82 e0                                      add r1, r2, r4
00872d80  04 10 91 e5                                      ldr r1, [r1, #4]
00872d84  04 20 92 e7                                      ldr r2, [r2, r4]
00872d88  01 20 62 e0                                      rsb r2, r2, r1
00872d8c  42 21 a0 e1                                      asr r2, r2, #2
00872d90  01 00 52 e3                                      cmp r2, #1
00872d94  12 00 00 0a                                      beq #0x872de4
00872d98  02 00 52 e3                                      cmp r2, #2
00872d9c  e0 ff ff ca                                      bgt #0x872d24
00872da0  24 20 97 e5                                      ldr r2, [r7, #0x24]
00872da4  04 20 92 e5                                      ldr r2, [r2, #4]
00872da8  05 20 82 e0                                      add r2, r2, r5
00872dac  08 20 92 e5                                      ldr r2, [r2, #8]
00872db0  01 20 42 e2                                      sub r2, r2, #1
00872db4  04 20 8d e5                                      str r2, [sp, #4]
00872db8  00 00 93 e5                                      ldr r0, [r3]
00872dbc  04 00 80 e0                                      add r0, r0, r4
00872dc0  0a 00 90 e9                                      ldmib r0, {r1, r3}
00872dc4  03 00 51 e1                                      cmp r1, r3
00872dc8  1a 00 00 0a                                      beq #0x872e38
00872dcc  00 20 81 e5                                      str r2, [r1]
00872dd0  04 30 90 e5                                      ldr r3, [r0, #4]
00872dd4  04 30 83 e2                                      add r3, r3, #4
00872dd8  04 30 80 e5                                      str r3, [r0, #4]
00872ddc  34 30 97 e5                                      ldr r3, [r7, #0x34]
00872de0  cf ff ff ea                                      b #0x872d24
00872de4  04 a0 8d e5                                      str sl, [sp, #4]
00872de8  00 00 93 e5                                      ldr r0, [r3]
00872dec  04 00 80 e0                                      add r0, r0, r4
00872df0  0a 00 90 e9                                      ldmib r0, {r1, r3}
00872df4  03 00 51 e1                                      cmp r1, r3
00872df8  12 00 00 0a                                      beq #0x872e48
00872dfc  00 a0 81 e5                                      str sl, [r1]
00872e00  04 30 90 e5                                      ldr r3, [r0, #4]
00872e04  04 30 83 e2                                      add r3, r3, #4
00872e08  04 30 80 e5                                      str r3, [r0, #4]
00872e0c  34 30 97 e5                                      ldr r3, [r7, #0x34]
00872e10  e2 ff ff ea                                      b #0x872da0
00872e14  09 20 a0 e1                                      mov r2, sb
00872e18  01 60 86 e2                                      add r6, r6, #1
00872e1c  87 ff ff eb                                      bl #0x872c40
00872e20  08 00 56 e1                                      cmp r6, r8
00872e24  0c 40 84 e2                                      add r4, r4, #0xc
00872e28  18 50 85 e2                                      add r5, r5, #0x18
00872e2c  d0 ff ff 1a                                      bne #0x872d74
00872e30  08 d0 8d e2                                      add sp, sp, #8
00872e34  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00872e38  09 20 a0 e1                                      mov r2, sb
00872e3c  7f ff ff eb                                      bl #0x872c40
00872e40  34 30 97 e5                                      ldr r3, [r7, #0x34]
00872e44  b6 ff ff ea                                      b #0x872d24
00872e48  09 20 a0 e1                                      mov r2, sb
00872e4c  7b ff ff eb                                      bl #0x872c40
00872e50  34 30 97 e5                                      ldr r3, [r7, #0x34]
00872e54  d1 ff ff ea                                      b #0x872da0

; FUNCTION 0x00873144, declared_size=232, range_size=232, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor24SetInteractiveMusicStateEPKc
; demangled: vox::DecoderNativeCursor::SetInteractiveMusicState(char const*)
; decoder-mode: arm
00873144  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00873148  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0087314c  d4 70 9f e5                                      ldr r7, [pc, #0xd4]
00873150  68 80 80 e2                                      add r8, r0, #0x68
00873154  04 40 8f e0                                      add r4, pc, r4
00873158  07 30 94 e7                                      ldr r3, [r4, r7]
0087315c  24 d0 4d e2                                      sub sp, sp, #0x24
00873160  01 a0 a0 e1                                      mov sl, r1
00873164  00 30 93 e5                                      ldr r3, [r3]
00873168  00 60 a0 e1                                      mov r6, r0
0087316c  08 00 a0 e1                                      mov r0, r8
00873170  1c 30 8d e5                                      str r3, [sp, #0x1c]
00873174  04 50 8d e2                                      add r5, sp, #4
00873178  bf 80 00 eb                                      bl #0x89347c
0087317c  0a 00 a0 e1                                      mov r0, sl
00873180  14 50 8d e5                                      str r5, [sp, #0x14]
00873184  18 50 8d e5                                      str r5, [sp, #0x18]
00873188  31 6b ea eb                                      bl #0x30de54
0087318c  0a 10 a0 e1                                      mov r1, sl
00873190  00 20 8a e0                                      add r2, sl, r0
00873194  05 00 a0 e1                                      mov r0, r5
00873198  54 f0 ff eb                                      bl #0x86f2f0
0087319c  38 00 96 e5                                      ldr r0, [r6, #0x38]
008731a0  05 10 a0 e1                                      mov r1, r5
008731a4  b1 ff ff eb                                      bl #0x873070
008731a8  38 30 96 e5                                      ldr r3, [r6, #0x38]
008731ac  00 a0 a0 e1                                      mov sl, r0
008731b0  03 00 50 e1                                      cmp r0, r3
008731b4  0a 00 00 0a                                      beq #0x8731e4
008731b8  0c 00 a0 e3                                      mov r0, #0xc
008731bc  00 10 a0 e3                                      mov r1, #0
008731c0  40 60 96 e5                                      ldr r6, [r6, #0x40]
008731c4  1f 75 ea eb                                      bl #0x310648
008731c8  28 30 9a e5                                      ldr r3, [sl, #0x28]
008731cc  08 30 80 e5                                      str r3, [r0, #8]
008731d0  04 30 96 e5                                      ldr r3, [r6, #4]
008731d4  00 60 80 e5                                      str r6, [r0]
008731d8  04 30 80 e5                                      str r3, [r0, #4]
008731dc  00 00 83 e5                                      str r0, [r3]
008731e0  04 00 86 e5                                      str r0, [r6, #4]
008731e4  08 00 a0 e1                                      mov r0, r8
008731e8  a2 80 00 eb                                      bl #0x893478
008731ec  18 00 9d e5                                      ldr r0, [sp, #0x18]
008731f0  05 00 50 e1                                      cmp r0, r5
008731f4  02 00 00 0a                                      beq #0x873204
008731f8  00 00 50 e3                                      cmp r0, #0
008731fc  00 00 00 0a                                      beq #0x873204
00873200  8f 74 ea eb                                      bl #0x310444
00873204  07 30 94 e7                                      ldr r3, [r4, r7]
00873208  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0087320c  00 30 93 e5                                      ldr r3, [r3]
00873210  03 00 52 e1                                      cmp r2, r3
00873214  01 00 00 1a                                      bne #0x873220
00873218  24 d0 8d e2                                      add sp, sp, #0x24
0087321c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00873220  3a 6c ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00873224  3c 19 12 00 ac 40 00 00                          .byte 0x3c, 0x19, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008738bc, declared_size=2616, range_size=2616, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursor9ParseFileEv
; demangled: vox::DecoderNativeCursor::ParseFile()
; decoder-mode: arm
008738bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008738c0  24 4a 9f e5                                      ldr r4, [pc, #0xa24]
008738c4  24 7a 9f e5                                      ldr r7, [pc, #0xa24]
008738c8  18 30 90 e5                                      ldr r3, [r0, #0x18]
008738cc  04 40 8f e0                                      add r4, pc, r4
008738d0  07 20 94 e7                                      ldr r2, [r4, r7]
008738d4  b4 d0 4d e2                                      sub sp, sp, #0xb4
008738d8  00 00 53 e3                                      cmp r3, #0
008738dc  00 20 92 e5                                      ldr r2, [r2]
008738e0  00 50 a0 e1                                      mov r5, r0
008738e4  ac 20 8d e5                                      str r2, [sp, #0xac]
008738e8  0f 00 00 0a                                      beq #0x87392c
008738ec  03 00 a0 e1                                      mov r0, r3
008738f0  00 30 93 e5                                      ldr r3, [r3]
008738f4  0f e0 a0 e1                                      mov lr, pc
008738f8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
008738fc  00 00 50 e3                                      cmp r0, #0
00873900  a8 00 00 1a                                      bne #0x873ba8
00873904  18 30 95 e5                                      ldr r3, [r5, #0x18]
00873908  68 b0 8d e2                                      add fp, sp, #0x68
0087390c  0b 10 a0 e1                                      mov r1, fp
00873910  03 00 a0 e1                                      mov r0, r3
00873914  08 20 a0 e3                                      mov r2, #8
00873918  00 30 93 e5                                      ldr r3, [r3]
0087391c  0f e0 a0 e1                                      mov lr, pc
00873920  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00873924  08 00 50 e3                                      cmp r0, #8
00873928  07 00 00 0a                                      beq #0x87394c
0087392c  00 00 a0 e3                                      mov r0, #0
00873930  07 30 94 e7                                      ldr r3, [r4, r7]
00873934  ac 20 9d e5                                      ldr r2, [sp, #0xac]
00873938  00 30 93 e5                                      ldr r3, [r3]
0087393c  03 00 52 e1                                      cmp r2, r3
00873940  68 02 00 1a                                      bne #0x8742e8
00873944  b4 d0 8d e2                                      add sp, sp, #0xb4
00873948  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0087394c  68 20 9d e5                                      ldr r2, [sp, #0x68]
00873950  56 3f 06 e3                                      movw r3, #0x6f56
00873954  78 3e 44 e3                                      movt r3, #0x4e78
00873958  03 00 52 e1                                      cmp r2, r3
0087395c  f2 ff ff 1a                                      bne #0x87392c
00873960  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873964  00 20 83 e5                                      str r2, [r3]
00873968  20 30 95 e5                                      ldr r3, [r5, #0x20]
0087396c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873970  04 20 83 e5                                      str r2, [r3, #4]
00873974  18 30 95 e5                                      ldr r3, [r5, #0x18]
00873978  20 10 95 e5                                      ldr r1, [r5, #0x20]
0087397c  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873980  03 00 a0 e1                                      mov r0, r3
00873984  08 10 81 e2                                      add r1, r1, #8
00873988  00 30 93 e5                                      ldr r3, [r3]
0087398c  0f e0 a0 e1                                      mov lr, pc
00873990  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00873994  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873998  14 20 93 e5                                      ldr r2, [r3, #0x14]
0087399c  04 30 93 e5                                      ldr r3, [r3, #4]
008739a0  10 20 42 e2                                      sub r2, r2, #0x10
008739a4  02 30 63 e0                                      rsb r3, r3, r2
008739a8  03 00 a0 e1                                      mov r0, r3
008739ac  0c 30 8d e5                                      str r3, [sp, #0xc]
008739b0  d0 72 ea eb                                      bl #0x3104f8
008739b4  00 00 50 e3                                      cmp r0, #0
008739b8  24 00 8d e5                                      str r0, [sp, #0x24]
008739bc  da ff ff 0a                                      beq #0x87392c
008739c0  18 30 95 e5                                      ldr r3, [r5, #0x18]
008739c4  00 10 a0 e1                                      mov r1, r0
008739c8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
008739cc  03 00 a0 e1                                      mov r0, r3
008739d0  00 30 93 e5                                      ldr r3, [r3]
008739d4  0f e0 a0 e1                                      mov lr, pc
008739d8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008739dc  0c 00 9d e5                                      ldr r0, [sp, #0xc]
008739e0  00 00 50 e3                                      cmp r0, #0
008739e4  00 10 a0 d3                                      movle r1, #0
008739e8  30 10 8d d5                                      strle r1, [sp, #0x30]
008739ec  2c 10 8d d5                                      strle r1, [sp, #0x2c]
008739f0  32 02 00 da                                      ble #0x8742c0
008739f4  74 20 8d e2                                      add r2, sp, #0x74
008739f8  00 60 a0 e3                                      mov r6, #0
008739fc  04 30 82 e2                                      add r3, r2, #4
00873a00  70 00 8d e2                                      add r0, sp, #0x70
00873a04  10 b0 8d e5                                      str fp, [sp, #0x10]
00873a08  34 20 8d e5                                      str r2, [sp, #0x34]
00873a0c  28 60 8d e5                                      str r6, [sp, #0x28]
00873a10  30 60 8d e5                                      str r6, [sp, #0x30]
00873a14  2c 60 8d e5                                      str r6, [sp, #0x2c]
00873a18  40 30 8d e5                                      str r3, [sp, #0x40]
00873a1c  20 00 8d e5                                      str r0, [sp, #0x20]
00873a20  38 40 8d e5                                      str r4, [sp, #0x38]
00873a24  3c 70 8d e5                                      str r7, [sp, #0x3c]
00873a28  24 b0 9d e5                                      ldr fp, [sp, #0x24]
00873a2c  1c 00 00 ea                                      b #0x873aa4
00873a30  47 12 07 e3                                      movw r1, #0x7247
00873a34  70 13 47 e3                                      movt r1, #0x7370
00873a38  01 00 52 e1                                      cmp r2, r1
00873a3c  e1 00 00 0a                                      beq #0x873dc8
00873a40  47 12 07 e3                                      movw r1, #0x7247
00873a44  70 15 46 e3                                      movt r1, #0x6570
00873a48  01 00 52 e1                                      cmp r2, r1
00873a4c  01 01 00 0a                                      beq #0x873e58
00873a50  52 15 07 e3                                      movw r1, #0x7552
00873a54  6c 15 46 e3                                      movt r1, #0x656c
00873a58  01 00 52 e1                                      cmp r2, r1
00873a5c  1f 01 00 0a                                      beq #0x873ee0
00873a60  50 1c 06 e3                                      movw r1, #0x6c50
00873a64  73 14 47 e3                                      movt r1, #0x7473
00873a68  01 00 52 e1                                      cmp r2, r1
00873a6c  a7 00 00 0a                                      beq #0x873d10
00873a70  53 14 07 e3                                      movw r1, #0x7453
00873a74  61 14 47 e3                                      movt r1, #0x7461
00873a78  01 00 52 e1                                      cmp r2, r1
00873a7c  3c 01 00 0a                                      beq #0x873f74
00873a80  54 12 07 e3                                      movw r1, #0x7254
00873a84  73 1e 46 e3                                      movt r1, #0x6e73
00873a88  01 00 52 e1                                      cmp r2, r1
00873a8c  8f 01 00 0a                                      beq #0x8740d0
00873a90  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
00873a94  06 60 84 e0                                      add r6, r4, r6
00873a98  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00873a9c  06 00 53 e1                                      cmp r3, r6
00873aa0  04 02 00 da                                      ble #0x8742b8
00873aa4  08 20 a0 e3                                      mov r2, #8
00873aa8  10 00 9d e5                                      ldr r0, [sp, #0x10]
00873aac  06 10 8b e0                                      add r1, fp, r6
00873ab0  6c 6b ea eb                                      bl #0x30e868
00873ab4  68 20 9d e5                                      ldr r2, [sp, #0x68]
00873ab8  41 36 06 e3                                      movw r3, #0x6641
00873abc  6d 34 47 e3                                      movt r3, #0x746d
00873ac0  03 00 52 e1                                      cmp r2, r3
00873ac4  08 40 86 e2                                      add r4, r6, #8
00873ac8  06 30 a0 e1                                      mov r3, r6
00873acc  41 00 00 0a                                      beq #0x873bd8
00873ad0  53 15 06 e3                                      movw r1, #0x6553
00873ad4  67 1d 46 e3                                      movt r1, #0x6d67
00873ad8  01 00 52 e1                                      cmp r2, r1
00873adc  4d 00 00 0a                                      beq #0x873c18
00873ae0  43 15 07 e3                                      movw r1, #0x7543
00873ae4  65 13 47 e3                                      movt r1, #0x7365
00873ae8  01 00 52 e1                                      cmp r2, r1
00873aec  cf ff ff 1a                                      bne #0x873a30
00873af0  00 20 e0 e3                                      mvn r2, #0
00873af4  00 a0 a0 e3                                      mov sl, #0
00873af8  5c 20 8d e5                                      str r2, [sp, #0x5c]
00873afc  58 20 8d e5                                      str r2, [sp, #0x58]
00873b00  60 a0 8d e5                                      str sl, [sp, #0x60]
00873b04  04 90 9b e7                                      ldr sb, [fp, r4]
00873b08  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873b0c  04 30 8d e5                                      str r3, [sp, #4]
00873b10  09 10 a0 e1                                      mov r1, sb
00873b14  04 00 40 e2                                      sub r0, r0, #4
00873b18  4b 6c ea eb                                      bl #0x30ec4c
00873b1c  0a 00 59 e1                                      cmp sb, sl
00873b20  0c 60 86 e2                                      add r6, r6, #0xc
00873b24  00 80 a0 e1                                      mov r8, r0
00873b28  04 30 9d e5                                      ldr r3, [sp, #4]
00873b2c  d9 ff ff da                                      ble #0x873a98
00873b30  0c 70 83 e2                                      add r7, r3, #0xc
00873b34  0a 40 a0 e1                                      mov r4, sl
00873b38  07 70 8b e0                                      add r7, fp, r7
00873b3c  58 a0 8d e2                                      add sl, sp, #0x58
00873b40  07 00 00 ea                                      b #0x873b64
00873b44  00 30 81 e5                                      str r3, [r1]
00873b48  04 30 90 e5                                      ldr r3, [r0, #4]
00873b4c  04 30 83 e2                                      add r3, r3, #4
00873b50  04 30 80 e5                                      str r3, [r0, #4]
00873b54  01 40 84 e2                                      add r4, r4, #1
00873b58  09 00 54 e1                                      cmp r4, sb
00873b5c  08 70 87 e0                                      add r7, r7, r8
00873b60  18 00 00 0a                                      beq #0x873bc8
00873b64  07 10 a0 e1                                      mov r1, r7
00873b68  08 20 a0 e1                                      mov r2, r8
00873b6c  0a 00 a0 e1                                      mov r0, sl
00873b70  3c 6b ea eb                                      bl #0x30e868
00873b74  60 30 9d e5                                      ldr r3, [sp, #0x60]
00873b78  34 20 95 e5                                      ldr r2, [r5, #0x34]
00873b7c  5c 00 9d e5                                      ldr r0, [sp, #0x5c]
00873b80  70 30 8d e5                                      str r3, [sp, #0x70]
00873b84  00 20 92 e5                                      ldr r2, [r2]
00873b88  0c 10 a0 e3                                      mov r1, #0xc
00873b8c  91 20 20 e0                                      mla r0, r1, r0, r2
00873b90  06 00 90 e9                                      ldmib r0, {r1, r2}
00873b94  02 00 51 e1                                      cmp r1, r2
00873b98  e9 ff ff 1a                                      bne #0x873b44
00873b9c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00873ba0  26 fc ff eb                                      bl #0x872c40
00873ba4  ea ff ff ea                                      b #0x873b54
00873ba8  18 30 95 e5                                      ldr r3, [r5, #0x18]
00873bac  00 10 a0 e3                                      mov r1, #0
00873bb0  01 20 a0 e1                                      mov r2, r1
00873bb4  03 00 a0 e1                                      mov r0, r3
00873bb8  00 30 93 e5                                      ldr r3, [r3]
00873bbc  0f e0 a0 e1                                      mov lr, pc
00873bc0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00873bc4  4e ff ff ea                                      b #0x873904
00873bc8  06 60 88 e0                                      add r6, r8, r6
00873bcc  01 40 44 e2                                      sub r4, r4, #1
00873bd0  98 64 26 e0                                      mla r6, r8, r4, r6
00873bd4  af ff ff ea                                      b #0x873a98
00873bd8  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873bdc  04 10 8b e0                                      add r1, fp, r4
00873be0  18 20 83 e5                                      str r2, [r3, #0x18]
00873be4  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873be8  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873bec  1c 20 83 e5                                      str r2, [r3, #0x1c]
00873bf0  20 00 95 e5                                      ldr r0, [r5, #0x20]
00873bf4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
00873bf8  20 00 80 e2                                      add r0, r0, #0x20
00873bfc  19 6b ea eb                                      bl #0x30e868
00873c00  6c 60 9d e5                                      ldr r6, [sp, #0x6c]
00873c04  20 30 95 e5                                      ldr r3, [r5, #0x20]
00873c08  10 10 a0 e3                                      mov r1, #0x10
00873c0c  06 60 84 e0                                      add r6, r4, r6
00873c10  ba 12 c3 e1                                      strh r1, [r3, #0x2a]
00873c14  9f ff ff ea                                      b #0x873a98
00873c18  04 c0 9b e7                                      ldr ip, [fp, r4]
00873c1c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873c20  04 60 8d e5                                      str r6, [sp, #4]
00873c24  0c 10 a0 e1                                      mov r1, ip
00873c28  04 00 40 e2                                      sub r0, r0, #4
00873c2c  08 c0 8d e5                                      str ip, [sp, #8]
00873c30  05 6c ea eb                                      bl #0x30ec4c
00873c34  08 c0 9d e5                                      ldr ip, [sp, #8]
00873c38  00 90 a0 e1                                      mov sb, r0
00873c3c  09 20 a0 e1                                      mov r2, sb
00873c40  0c 10 a0 e1                                      mov r1, ip
00873c44  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873c48  57 f9 ff eb                                      bl #0x8721ac
00873c4c  14 20 95 e5                                      ldr r2, [r5, #0x14]
00873c50  30 00 82 e2                                      add r0, r2, #0x30
00873c54  58 10 82 e2                                      add r1, r2, #0x58
00873c58  24 00 85 e5                                      str r0, [r5, #0x24]
00873c5c  34 10 85 e5                                      str r1, [r5, #0x34]
00873c60  34 70 92 e5                                      ldr r7, [r2, #0x34]
00873c64  08 10 9d e9                                      ldmib sp, {r3, ip}
00873c68  00 00 57 e3                                      cmp r7, #0
00873c6c  52 00 00 0a                                      beq #0x873dbc
00873c70  00 00 5c e3                                      cmp ip, #0
00873c74  0c 60 86 e2                                      add r6, r6, #0xc
00873c78  86 ff ff da                                      ble #0x873a98
00873c7c  0c 30 83 e2                                      add r3, r3, #0xc
00873c80  00 40 a0 e3                                      mov r4, #0
00873c84  14 60 8d e5                                      str r6, [sp, #0x14]
00873c88  03 a0 8b e0                                      add sl, fp, r3
00873c8c  04 80 a0 e1                                      mov r8, r4
00873c90  0c 60 a0 e1                                      mov r6, ip
00873c94  08 00 00 ea                                      b #0x873cbc
00873c98  00 20 81 e5                                      str r2, [r1]
00873c9c  04 30 90 e5                                      ldr r3, [r0, #4]
00873ca0  04 30 83 e2                                      add r3, r3, #4
00873ca4  04 30 80 e5                                      str r3, [r0, #4]
00873ca8  01 80 88 e2                                      add r8, r8, #1
00873cac  06 00 58 e1                                      cmp r8, r6
00873cb0  09 a0 8a e0                                      add sl, sl, sb
00873cb4  0c 40 84 e2                                      add r4, r4, #0xc
00873cb8  0f 00 00 0a                                      beq #0x873cfc
00873cbc  07 00 a0 e1                                      mov r0, r7
00873cc0  0a 10 a0 e1                                      mov r1, sl
00873cc4  09 20 a0 e1                                      mov r2, sb
00873cc8  e6 6a ea eb                                      bl #0x30e868
00873ccc  34 30 95 e5                                      ldr r3, [r5, #0x34]
00873cd0  00 20 a0 e3                                      mov r2, #0
00873cd4  70 20 8d e5                                      str r2, [sp, #0x70]
00873cd8  00 00 93 e5                                      ldr r0, [r3]
00873cdc  18 70 87 e2                                      add r7, r7, #0x18
00873ce0  04 00 80 e0                                      add r0, r0, r4
00873ce4  0a 00 90 e9                                      ldmib r0, {r1, r3}
00873ce8  03 00 51 e1                                      cmp r1, r3
00873cec  e9 ff ff 1a                                      bne #0x873c98
00873cf0  20 20 9d e5                                      ldr r2, [sp, #0x20]
00873cf4  d1 fb ff eb                                      bl #0x872c40
00873cf8  ea ff ff ea                                      b #0x873ca8
00873cfc  14 60 9d e5                                      ldr r6, [sp, #0x14]
00873d00  01 80 48 e2                                      sub r8, r8, #1
00873d04  06 60 89 e0                                      add r6, sb, r6
00873d08  99 68 26 e0                                      mla r6, sb, r8, r6
00873d0c  61 ff ff ea                                      b #0x873a98
00873d10  04 80 9b e7                                      ldr r8, [fp, r4]
00873d14  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873d18  0c 60 86 e2                                      add r6, r6, #0xc
00873d1c  08 10 a0 e1                                      mov r1, r8
00873d20  04 00 40 e2                                      sub r0, r0, #4
00873d24  c8 6b ea eb                                      bl #0x30ec4c
00873d28  08 10 a0 e1                                      mov r1, r8
00873d2c  00 70 a0 e1                                      mov r7, r0
00873d30  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873d34  63 fb ff eb                                      bl #0x872ac8
00873d38  14 30 95 e5                                      ldr r3, [r5, #0x14]
00873d3c  38 30 83 e2                                      add r3, r3, #0x38
00873d40  03 00 a0 e1                                      mov r0, r3
00873d44  28 30 8d e5                                      str r3, [sp, #0x28]
00873d48  dc 39 00 eb                                      bl #0x8824c0
00873d4c  00 00 50 e3                                      cmp r0, #0
00873d50  50 ff ff 0a                                      beq #0x873a98
00873d54  00 40 a0 e3                                      mov r4, #0
00873d58  01 30 a0 e3                                      mov r3, #1
00873d5c  00 00 58 e3                                      cmp r8, #0
00873d60  5c 30 8d e5                                      str r3, [sp, #0x5c]
00873d64  58 40 8d e5                                      str r4, [sp, #0x58]
00873d68  4a ff ff da                                      ble #0x873a98
00873d6c  05 90 a0 e1                                      mov sb, r5
00873d70  58 a0 8d e2                                      add sl, sp, #0x58
00873d74  28 50 9d e5                                      ldr r5, [sp, #0x28]
00873d78  03 00 00 ea                                      b #0x873d8c
00873d7c  01 40 84 e2                                      add r4, r4, #1
00873d80  08 00 54 e1                                      cmp r4, r8
00873d84  07 60 86 e0                                      add r6, r6, r7
00873d88  30 00 00 0a                                      beq #0x873e50
00873d8c  06 10 8b e0                                      add r1, fp, r6
00873d90  07 20 a0 e1                                      mov r2, r7
00873d94  0a 00 a0 e1                                      mov r0, sl
00873d98  b2 6a ea eb                                      bl #0x30e868
00873d9c  05 00 a0 e1                                      mov r0, r5
00873da0  04 10 a0 e1                                      mov r1, r4
00873da4  0a 20 a0 e1                                      mov r2, sl
00873da8  ee 39 00 eb                                      bl #0x882568
00873dac  05 00 a0 e1                                      mov r0, r5
00873db0  c2 39 00 eb                                      bl #0x8824c0
00873db4  00 00 50 e3                                      cmp r0, #0
00873db8  ef ff ff 1a                                      bne #0x873d7c
00873dbc  38 40 9d e5                                      ldr r4, [sp, #0x38]
00873dc0  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
00873dc4  d8 fe ff ea                                      b #0x87392c
00873dc8  04 80 9b e7                                      ldr r8, [fp, r4]
00873dcc  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873dd0  08 10 a0 e1                                      mov r1, r8
00873dd4  04 00 40 e2                                      sub r0, r0, #4
00873dd8  9b 6b ea eb                                      bl #0x30ec4c
00873ddc  00 70 a0 e1                                      mov r7, r0
00873de0  c4 71 ea eb                                      bl #0x3104f8
00873de4  00 00 50 e3                                      cmp r0, #0
00873de8  2c 00 8d e5                                      str r0, [sp, #0x2c]
00873dec  f2 ff ff 0a                                      beq #0x873dbc
00873df0  00 00 58 e3                                      cmp r8, #0
00873df4  0c 60 86 e2                                      add r6, r6, #0xc
00873df8  26 ff ff da                                      ble #0x873a98
00873dfc  05 90 a0 e1                                      mov sb, r5
00873e00  00 40 a0 e3                                      mov r4, #0
00873e04  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00873e08  00 50 a0 e1                                      mov r5, r0
00873e0c  03 00 00 ea                                      b #0x873e20
00873e10  01 40 84 e2                                      add r4, r4, #1
00873e14  08 00 54 e1                                      cmp r4, r8
00873e18  07 60 86 e0                                      add r6, r6, r7
00873e1c  0b 00 00 0a                                      beq #0x873e50
00873e20  07 20 a0 e1                                      mov r2, r7
00873e24  06 10 8b e0                                      add r1, fp, r6
00873e28  05 00 a0 e1                                      mov r0, r5
00873e2c  8d 6a ea eb                                      bl #0x30e868
00873e30  0a 00 a0 e1                                      mov r0, sl
00873e34  05 10 a0 e1                                      mov r1, r5
00873e38  99 3f 00 eb                                      bl #0x883ca4
00873e3c  0a 00 a0 e1                                      mov r0, sl
00873e40  9e 39 00 eb                                      bl #0x8824c0
00873e44  00 00 50 e3                                      cmp r0, #0
00873e48  f0 ff ff 1a                                      bne #0x873e10
00873e4c  da ff ff ea                                      b #0x873dbc
00873e50  09 50 a0 e1                                      mov r5, sb
00873e54  0f ff ff ea                                      b #0x873a98
00873e58  04 80 9b e7                                      ldr r8, [fp, r4]
00873e5c  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873e60  08 10 a0 e1                                      mov r1, r8
00873e64  04 00 40 e2                                      sub r0, r0, #4
00873e68  77 6b ea eb                                      bl #0x30ec4c
00873e6c  00 70 a0 e1                                      mov r7, r0
00873e70  a0 71 ea eb                                      bl #0x3104f8
00873e74  00 00 50 e3                                      cmp r0, #0
00873e78  30 00 8d e5                                      str r0, [sp, #0x30]
00873e7c  ce ff ff 0a                                      beq #0x873dbc
00873e80  00 00 58 e3                                      cmp r8, #0
00873e84  0c 60 86 e2                                      add r6, r6, #0xc
00873e88  02 ff ff da                                      ble #0x873a98
00873e8c  05 90 a0 e1                                      mov sb, r5
00873e90  00 40 a0 e3                                      mov r4, #0
00873e94  28 a0 9d e5                                      ldr sl, [sp, #0x28]
00873e98  00 50 a0 e1                                      mov r5, r0
00873e9c  03 00 00 ea                                      b #0x873eb0
00873ea0  01 40 84 e2                                      add r4, r4, #1
00873ea4  08 00 54 e1                                      cmp r4, r8
00873ea8  07 60 86 e0                                      add r6, r6, r7
00873eac  e7 ff ff 0a                                      beq #0x873e50
00873eb0  07 20 a0 e1                                      mov r2, r7
00873eb4  06 10 8b e0                                      add r1, fp, r6
00873eb8  05 00 a0 e1                                      mov r0, r5
00873ebc  69 6a ea eb                                      bl #0x30e868
00873ec0  0a 00 a0 e1                                      mov r0, sl
00873ec4  05 10 a0 e1                                      mov r1, r5
00873ec8  be 3e 00 eb                                      bl #0x8839c8
00873ecc  0a 00 a0 e1                                      mov r0, sl
00873ed0  7a 39 00 eb                                      bl #0x8824c0
00873ed4  00 00 50 e3                                      cmp r0, #0
00873ed8  f0 ff ff 1a                                      bne #0x873ea0
00873edc  b6 ff ff ea                                      b #0x873dbc
00873ee0  04 90 9b e7                                      ldr sb, [fp, r4]
00873ee4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873ee8  04 60 8d e5                                      str r6, [sp, #4]
00873eec  09 10 a0 e1                                      mov r1, sb
00873ef0  04 00 40 e2                                      sub r0, r0, #4
00873ef4  54 6b ea eb                                      bl #0x30ec4c
00873ef8  00 a0 a0 e1                                      mov sl, r0
00873efc  09 10 a0 e1                                      mov r1, sb
00873f00  0a 20 a0 e1                                      mov r2, sl
00873f04  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873f08  93 f8 ff eb                                      bl #0x87215c
00873f0c  14 10 95 e5                                      ldr r1, [r5, #0x14]
00873f10  50 20 81 e2                                      add r2, r1, #0x50
00873f14  2c 20 85 e5                                      str r2, [r5, #0x2c]
00873f18  54 40 91 e5                                      ldr r4, [r1, #0x54]
00873f1c  04 30 9d e5                                      ldr r3, [sp, #4]
00873f20  00 00 54 e3                                      cmp r4, #0
00873f24  a4 ff ff 0a                                      beq #0x873dbc
00873f28  00 00 59 e3                                      cmp sb, #0
00873f2c  0c 60 86 e2                                      add r6, r6, #0xc
00873f30  d8 fe ff da                                      ble #0x873a98
00873f34  0c 30 83 e2                                      add r3, r3, #0xc
00873f38  03 80 8b e0                                      add r8, fp, r3
00873f3c  00 70 a0 e3                                      mov r7, #0
00873f40  04 00 a0 e1                                      mov r0, r4
00873f44  08 10 a0 e1                                      mov r1, r8
00873f48  01 70 87 e2                                      add r7, r7, #1
00873f4c  0a 20 a0 e1                                      mov r2, sl
00873f50  44 6a ea eb                                      bl #0x30e868
00873f54  09 00 57 e1                                      cmp r7, sb
00873f58  24 40 84 e2                                      add r4, r4, #0x24
00873f5c  0a 80 88 e0                                      add r8, r8, sl
00873f60  f6 ff ff 1a                                      bne #0x873f40
00873f64  06 60 8a e0                                      add r6, sl, r6
00873f68  01 70 47 e2                                      sub r7, r7, #1
00873f6c  9a 67 26 e0                                      mla r6, sl, r7, r6
00873f70  c8 fe ff ea                                      b #0x873a98
00873f74  04 40 9b e7                                      ldr r4, [fp, r4]
00873f78  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
00873f7c  04 60 8d e5                                      str r6, [sp, #4]
00873f80  04 10 a0 e1                                      mov r1, r4
00873f84  04 00 40 e2                                      sub r0, r0, #4
00873f88  18 40 8d e5                                      str r4, [sp, #0x18]
00873f8c  2e 6b ea eb                                      bl #0x30ec4c
00873f90  18 10 9d e5                                      ldr r1, [sp, #0x18]
00873f94  00 a0 a0 e1                                      mov sl, r0
00873f98  14 00 95 e5                                      ldr r0, [r5, #0x14]
00873f9c  79 f8 ff eb                                      bl #0x872188
00873fa0  14 20 95 e5                                      ldr r2, [r5, #0x14]
00873fa4  48 10 82 e2                                      add r1, r2, #0x48
00873fa8  28 10 85 e5                                      str r1, [r5, #0x28]
00873fac  4c 10 92 e5                                      ldr r1, [r2, #0x4c]
00873fb0  04 30 9d e5                                      ldr r3, [sp, #4]
00873fb4  00 00 51 e3                                      cmp r1, #0
00873fb8  7f ff ff 0a                                      beq #0x873dbc
00873fbc  94 80 8d e2                                      add r8, sp, #0x94
00873fc0  70 20 82 e2                                      add r2, r2, #0x70
00873fc4  38 20 85 e5                                      str r2, [r5, #0x38]
00873fc8  00 40 a0 e3                                      mov r4, #0
00873fcc  00 20 e0 e3                                      mvn r2, #0
00873fd0  08 00 a0 e1                                      mov r0, r8
00873fd4  10 10 a0 e3                                      mov r1, #0x10
00873fd8  74 20 8d e5                                      str r2, [sp, #0x74]
00873fdc  04 30 8d e5                                      str r3, [sp, #4]
00873fe0  78 40 cd e5                                      strb r4, [sp, #0x78]
00873fe4  a4 80 8d e5                                      str r8, [sp, #0xa4]
00873fe8  a8 80 8d e5                                      str r8, [sp, #0xa8]
00873fec  ab ec ff eb                                      bl #0x86f2a0
00873ff0  18 20 9d e5                                      ldr r2, [sp, #0x18]
00873ff4  0c 60 86 e2                                      add r6, r6, #0xc
00873ff8  04 00 52 e1                                      cmp r2, r4
00873ffc  a4 20 9d e5                                      ldr r2, [sp, #0xa4]
00874000  00 40 c2 e5                                      strb r4, [r2]
00874004  04 30 9d e5                                      ldr r3, [sp, #4]
00874008  a8 00 9d d5                                      ldrle r0, [sp, #0xa8]
0087400c  29 00 00 da                                      ble #0x8740b8
00874010  0c 30 83 e2                                      add r3, r3, #0xc
00874014  03 70 8b e0                                      add r7, fp, r3
00874018  14 60 8d e5                                      str r6, [sp, #0x14]
0087401c  1c b0 8d e5                                      str fp, [sp, #0x1c]
00874020  40 60 9d e5                                      ldr r6, [sp, #0x40]
00874024  34 b0 9d e5                                      ldr fp, [sp, #0x34]
00874028  00 40 a0 e3                                      mov r4, #0
0087402c  04 90 a0 e1                                      mov sb, r4
00874030  07 10 a0 e1                                      mov r1, r7
00874034  0a 20 a0 e1                                      mov r2, sl
00874038  0b 00 a0 e1                                      mov r0, fp
0087403c  09 6a ea eb                                      bl #0x30e868
00874040  28 30 95 e5                                      ldr r3, [r5, #0x28]
00874044  74 20 9d e5                                      ldr r2, [sp, #0x74]
00874048  06 00 a0 e1                                      mov r0, r6
0087404c  04 30 93 e5                                      ldr r3, [r3, #4]
00874050  0a 70 87 e0                                      add r7, r7, sl
00874054  04 21 83 e7                                      str r2, [r3, r4, lsl #2]
00874058  7d 67 ea eb                                      bl #0x30de54
0087405c  06 10 a0 e1                                      mov r1, r6
00874060  00 20 86 e0                                      add r2, r6, r0
00874064  08 00 a0 e1                                      mov r0, r8
00874068  aa f5 ff eb                                      bl #0x871718
0087406c  38 00 95 e5                                      ldr r0, [r5, #0x38]
00874070  08 10 a0 e1                                      mov r1, r8
00874074  ad fd ff eb                                      bl #0x873730
00874078  00 40 80 e5                                      str r4, [r0]
0087407c  a8 00 9d e5                                      ldr r0, [sp, #0xa8]
00874080  a4 30 9d e5                                      ldr r3, [sp, #0xa4]
00874084  01 40 84 e2                                      add r4, r4, #1
00874088  03 00 50 e1                                      cmp r0, r3
0087408c  00 90 c0 15                                      strbne sb, [r0]
00874090  a8 00 9d 15                                      ldrne r0, [sp, #0xa8]
00874094  18 30 9d e5                                      ldr r3, [sp, #0x18]
00874098  a4 00 8d 15                                      strne r0, [sp, #0xa4]
0087409c  03 00 54 e1                                      cmp r4, r3
008740a0  e2 ff ff 1a                                      bne #0x874030
008740a4  14 60 9d e5                                      ldr r6, [sp, #0x14]
008740a8  01 30 43 e2                                      sub r3, r3, #1
008740ac  1c b0 9d e5                                      ldr fp, [sp, #0x1c]
008740b0  06 60 8a e0                                      add r6, sl, r6
008740b4  9a 63 26 e0                                      mla r6, sl, r3, r6
008740b8  08 00 50 e1                                      cmp r0, r8
008740bc  75 fe ff 0a                                      beq #0x873a98
008740c0  00 00 50 e3                                      cmp r0, #0
008740c4  73 fe ff 0a                                      beq #0x873a98
008740c8  dd 70 ea eb                                      bl #0x310444
008740cc  71 fe ff ea                                      b #0x873a98
008740d0  04 40 9b e7                                      ldr r4, [fp, r4]
008740d4  6c 00 9d e5                                      ldr r0, [sp, #0x6c]
008740d8  04 30 8d e5                                      str r3, [sp, #4]
008740dc  04 10 a0 e1                                      mov r1, r4
008740e0  04 00 40 e2                                      sub r0, r0, #4
008740e4  14 40 8d e5                                      str r4, [sp, #0x14]
008740e8  d7 6a ea eb                                      bl #0x30ec4c
008740ec  44 00 8d e5                                      str r0, [sp, #0x44]
008740f0  18 10 9d e5                                      ldr r1, [sp, #0x18]
008740f4  14 00 95 e5                                      ldr r0, [r5, #0x14]
008740f8  61 fa ff eb                                      bl #0x872a84
008740fc  14 10 95 e5                                      ldr r1, [r5, #0x14]
00874100  14 00 9d e5                                      ldr r0, [sp, #0x14]
00874104  00 20 a0 e3                                      mov r2, #0
00874108  64 10 81 e2                                      add r1, r1, #0x64
0087410c  30 10 85 e5                                      str r1, [r5, #0x30]
00874110  00 00 50 e3                                      cmp r0, #0
00874114  00 10 e0 e3                                      mvn r1, #0
00874118  0c 60 86 e2                                      add r6, r6, #0xc
0087411c  60 10 8d e5                                      str r1, [sp, #0x60]
00874120  64 20 cd e5                                      strb r2, [sp, #0x64]
00874124  58 20 8d e5                                      str r2, [sp, #0x58]
00874128  5c 20 8d e5                                      str r2, [sp, #0x5c]
0087412c  04 30 9d e5                                      ldr r3, [sp, #4]
00874130  58 fe ff da                                      ble #0x873a98
00874134  4c 60 8d e5                                      str r6, [sp, #0x4c]
00874138  44 60 9d e5                                      ldr r6, [sp, #0x44]
0087413c  0c 30 83 e2                                      add r3, r3, #0xc
00874140  58 a0 8d e2                                      add sl, sp, #0x58
00874144  03 90 8b e0                                      add sb, fp, r3
00874148  02 40 a0 e1                                      mov r4, r2
0087414c  50 b0 8d e5                                      str fp, [sp, #0x50]
00874150  1c a0 8d e5                                      str sl, [sp, #0x1c]
00874154  09 10 a0 e1                                      mov r1, sb
00874158  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
0087415c  06 20 a0 e1                                      mov r2, r6
00874160  c0 69 ea eb                                      bl #0x30e868
00874164  30 30 95 e5                                      ldr r3, [r5, #0x30]
00874168  58 a0 9d e5                                      ldr sl, [sp, #0x58]
0087416c  0c 10 a0 e3                                      mov r1, #0xc
00874170  00 b0 93 e5                                      ldr fp, [r3]
00874174  91 0a 0a e0                                      mul sl, r1, sl
00874178  0a 70 8b e0                                      add r7, fp, sl
0087417c  04 80 97 e5                                      ldr r8, [r7, #4]
00874180  08 30 97 e5                                      ldr r3, [r7, #8]
00874184  03 00 58 e1                                      cmp r8, r3
00874188  12 00 00 0a                                      beq #0x8741d8
0087418c  60 30 9d e5                                      ldr r3, [sp, #0x60]
00874190  00 30 88 e5                                      str r3, [r8]
00874194  64 30 dd e5                                      ldrb r3, [sp, #0x64]
00874198  04 30 c8 e5                                      strb r3, [r8, #4]
0087419c  04 30 97 e5                                      ldr r3, [r7, #4]
008741a0  08 30 83 e2                                      add r3, r3, #8
008741a4  04 30 87 e5                                      str r3, [r7, #4]
008741a8  14 10 9d e5                                      ldr r1, [sp, #0x14]
008741ac  01 40 84 e2                                      add r4, r4, #1
008741b0  06 90 89 e0                                      add sb, sb, r6
008741b4  01 00 54 e1                                      cmp r4, r1
008741b8  e5 ff ff 1a                                      bne #0x874154
008741bc  44 20 9d e5                                      ldr r2, [sp, #0x44]
008741c0  4c 60 9d e5                                      ldr r6, [sp, #0x4c]
008741c4  01 40 44 e2                                      sub r4, r4, #1
008741c8  50 b0 9d e5                                      ldr fp, [sp, #0x50]
008741cc  06 60 82 e0                                      add r6, r2, r6
008741d0  92 64 26 e0                                      mla r6, r2, r4, r6
008741d4  2f fe ff ea                                      b #0x873a98
008741d8  0a 30 9b e7                                      ldr r3, [fp, sl]
008741dc  08 30 63 e0                                      rsb r3, r3, r8
008741e0  c3 31 a0 e1                                      asr r3, r3, #3
008741e4  01 00 53 e3                                      cmp r3, #1
008741e8  03 20 83 20                                      addhs r2, r3, r3
008741ec  01 20 83 32                                      addlo r2, r3, #1
008741f0  1e 02 72 e3                                      cmn r2, #0xe0000001
008741f4  03 00 00 8a                                      bhi #0x874208
008741f8  02 00 53 e1                                      cmp r3, r2
008741fc  82 21 a0 91                                      lslls r2, r2, #3
00874200  48 20 8d 95                                      strls r2, [sp, #0x48]
00874204  01 00 00 9a                                      bls #0x874210
00874208  07 20 e0 e3                                      mvn r2, #7
0087420c  48 20 8d e5                                      str r2, [sp, #0x48]
00874210  48 00 9d e5                                      ldr r0, [sp, #0x48]
00874214  00 10 a0 e3                                      mov r1, #0
00874218  0a 71 ea eb                                      bl #0x310648
0087421c  0a 20 9b e7                                      ldr r2, [fp, sl]
00874220  00 30 a0 e1                                      mov r3, r0
00874224  08 80 62 e0                                      rsb r8, r2, r8
00874228  c8 81 a0 e1                                      asr r8, r8, #3
0087422c  00 00 58 e3                                      cmp r8, #0
00874230  00 80 a0 d1                                      movle r8, r0
00874234  0e 00 00 da                                      ble #0x874274
00874238  54 90 8d e5                                      str sb, [sp, #0x54]
0087423c  08 00 a0 e1                                      mov r0, r8
00874240  00 c0 a0 e3                                      mov ip, #0
00874244  02 90 a0 e1                                      mov sb, r2
00874248  09 10 a0 e1                                      mov r1, sb
0087424c  0c e0 b1 e7                                      ldr lr, [r1, ip]!
00874250  03 20 a0 e1                                      mov r2, r3
00874254  01 00 50 e2                                      subs r0, r0, #1
00874258  0c e0 a2 e7                                      str lr, [r2, ip]!
0087425c  04 10 d1 e5                                      ldrb r1, [r1, #4]
00874260  08 c0 8c e2                                      add ip, ip, #8
00874264  04 10 c2 e5                                      strb r1, [r2, #4]
00874268  f6 ff ff 1a                                      bne #0x874248
0087426c  54 90 9d e5                                      ldr sb, [sp, #0x54]
00874270  88 81 83 e0                                      add r8, r3, r8, lsl #3
00874274  60 20 9d e5                                      ldr r2, [sp, #0x60]
00874278  08 10 88 e2                                      add r1, r8, #8
0087427c  00 20 88 e5                                      str r2, [r8]
00874280  64 20 dd e5                                      ldrb r2, [sp, #0x64]
00874284  04 20 c8 e5                                      strb r2, [r8, #4]
00874288  0a 00 9b e7                                      ldr r0, [fp, sl]
0087428c  08 10 8d e5                                      str r1, [sp, #8]
00874290  04 30 8d e5                                      str r3, [sp, #4]
00874294  6a 70 ea eb                                      bl #0x310444
00874298  04 30 9d e5                                      ldr r3, [sp, #4]
0087429c  48 00 9d e5                                      ldr r0, [sp, #0x48]
008742a0  0a 30 8b e7                                      str r3, [fp, sl]
008742a4  00 20 83 e0                                      add r2, r3, r0
008742a8  08 20 87 e5                                      str r2, [r7, #8]
008742ac  08 10 9d e5                                      ldr r1, [sp, #8]
008742b0  04 10 87 e5                                      str r1, [r7, #4]
008742b4  bb ff ff ea                                      b #0x8741a8
008742b8  38 40 9d e5                                      ldr r4, [sp, #0x38]
008742bc  3c 70 9d e5                                      ldr r7, [sp, #0x3c]
008742c0  05 00 a0 e1                                      mov r0, r5
008742c4  89 fa ff eb                                      bl #0x872cf0
008742c8  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
008742cc  5c 70 ea eb                                      bl #0x310444
008742d0  30 00 9d e5                                      ldr r0, [sp, #0x30]
008742d4  5a 70 ea eb                                      bl #0x310444
008742d8  24 00 9d e5                                      ldr r0, [sp, #0x24]
008742dc  58 70 ea eb                                      bl #0x310444
008742e0  01 00 a0 e3                                      mov r0, #1
008742e4  91 fd ff ea                                      b #0x873930
008742e8  08 68 ea eb                                      bl #0x30e310
; mapping-symbol data/literal pool
008742ec  c4 11 12 00 ac 40 00 00                          .byte 0xc4, 0x11, 0x12, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x008742f4, declared_size=852, range_size=852, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderNativeCursor::DecoderNativeCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
008742f4  44 33 9f e5                                      ldr r3, [pc, #0x344]
008742f8  44 c3 9f e5                                      ldr ip, [pc, #0x344]
008742fc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00874300  03 30 8f e0                                      add r3, pc, r3
00874304  0c c0 93 e7                                      ldr ip, [r3, ip]
00874308  00 60 a0 e3                                      mov r6, #0
0087430c  02 50 a0 e1                                      mov r5, r2
00874310  08 c0 8c e2                                      add ip, ip, #8
00874314  40 20 80 e2                                      add r2, r0, #0x40
00874318  00 40 a0 e1                                      mov r4, r0
0087431c  14 10 80 e5                                      str r1, [r0, #0x14]
00874320  00 c0 80 e5                                      str ip, [r0]
00874324  44 20 80 e5                                      str r2, [r0, #0x44]
00874328  04 60 80 e5                                      str r6, [r0, #4]
0087432c  08 60 80 e5                                      str r6, [r0, #8]
00874330  0c 60 80 e5                                      str r6, [r0, #0xc]
00874334  10 60 80 e5                                      str r6, [r0, #0x10]
00874338  18 50 80 e5                                      str r5, [r0, #0x18]
0087433c  1c 60 c0 e5                                      strb r6, [r0, #0x1c]
00874340  20 60 80 e5                                      str r6, [r0, #0x20]
00874344  24 60 80 e5                                      str r6, [r0, #0x24]
00874348  28 60 80 e5                                      str r6, [r0, #0x28]
0087434c  2c 60 80 e5                                      str r6, [r0, #0x2c]
00874350  30 60 80 e5                                      str r6, [r0, #0x30]
00874354  34 60 80 e5                                      str r6, [r0, #0x34]
00874358  38 60 80 e5                                      str r6, [r0, #0x38]
0087435c  3c 60 80 e5                                      str r6, [r0, #0x3c]
00874360  40 20 80 e5                                      str r2, [r0, #0x40]
00874364  48 60 80 e5                                      str r6, [r0, #0x48]
00874368  4c 60 80 e5                                      str r6, [r0, #0x4c]
0087436c  50 60 80 e5                                      str r6, [r0, #0x50]
00874370  54 60 80 e5                                      str r6, [r0, #0x54]
00874374  58 60 80 e5                                      str r6, [r0, #0x58]
00874378  5c 60 80 e5                                      str r6, [r0, #0x5c]
0087437c  60 60 80 e5                                      str r6, [r0, #0x60]
00874380  64 60 80 e5                                      str r6, [r0, #0x64]
00874384  28 d0 4d e2                                      sub sp, sp, #0x28
00874388  68 00 80 e2                                      add r0, r0, #0x68
0087438c  8f 7c 00 eb                                      bl #0x8935d0
00874390  14 70 94 e5                                      ldr r7, [r4, #0x14]
00874394  04 30 87 e2                                      add r3, r7, #4
00874398  20 30 84 e5                                      str r3, [r4, #0x20]
0087439c  88 30 d7 e5                                      ldrb r3, [r7, #0x88]
008743a0  06 00 53 e1                                      cmp r3, r6
008743a4  06 00 00 0a                                      beq #0x8743c4
008743a8  04 00 a0 e1                                      mov r0, r4
008743ac  42 fd ff eb                                      bl #0x8738bc
008743b0  00 00 50 e3                                      cmp r0, #0
008743b4  42 00 00 0a                                      beq #0x8744c4
008743b8  14 30 94 e5                                      ldr r3, [r4, #0x14]
008743bc  88 60 c3 e5                                      strb r6, [r3, #0x88]
008743c0  14 70 94 e5                                      ldr r7, [r4, #0x14]
008743c4  30 e0 87 e2                                      add lr, r7, #0x30
008743c8  58 c0 87 e2                                      add ip, r7, #0x58
008743cc  70 20 87 e2                                      add r2, r7, #0x70
008743d0  48 30 87 e2                                      add r3, r7, #0x48
008743d4  50 00 87 e2                                      add r0, r7, #0x50
008743d8  64 10 87 e2                                      add r1, r7, #0x64
008743dc  24 e0 84 e5                                      str lr, [r4, #0x24]
008743e0  34 c0 84 e5                                      str ip, [r4, #0x34]
008743e4  2c 00 84 e5                                      str r0, [r4, #0x2c]
008743e8  30 10 84 e5                                      str r1, [r4, #0x30]
008743ec  38 20 84 e5                                      str r2, [r4, #0x38]
008743f0  28 30 84 e5                                      str r3, [r4, #0x28]
008743f4  00 10 a0 e3                                      mov r1, #0
008743f8  10 00 a0 e3                                      mov r0, #0x10
008743fc  91 70 ea eb                                      bl #0x310648
00874400  38 70 87 e2                                      add r7, r7, #0x38
00874404  00 60 a0 e1                                      mov r6, r0
00874408  07 10 a0 e1                                      mov r1, r7
0087440c  a6 3e 00 eb                                      bl #0x883eac
00874410  00 00 56 e3                                      cmp r6, #0
00874414  3c 60 84 e5                                      str r6, [r4, #0x3c]
00874418  36 00 00 0a                                      beq #0x8744f8
0087441c  06 00 a0 e1                                      mov r0, r6
00874420  26 38 00 eb                                      bl #0x8824c0
00874424  00 00 50 e3                                      cmp r0, #0
00874428  25 00 00 0a                                      beq #0x8744c4
0087442c  20 30 94 e5                                      ldr r3, [r4, #0x20]
00874430  f0 32 d3 e1                                      ldrsh r3, [r3, #0x20]
00874434  01 00 53 e3                                      cmp r3, #1
00874438  38 00 00 0a                                      beq #0x874520
0087443c  11 00 53 e3                                      cmp r3, #0x11
00874440  5a 00 00 0a                                      beq #0x8745b0
00874444  48 10 94 e5                                      ldr r1, [r4, #0x48]
00874448  00 00 51 e3                                      cmp r1, #0
0087444c  2e 00 00 0a                                      beq #0x87450c
00874450  18 50 8d e2                                      add r5, sp, #0x18
00874454  05 00 a0 e1                                      mov r0, r5
00874458  f6 3f 00 eb                                      bl #0x884438
0087445c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00874460  04 c0 84 e2                                      add ip, r4, #4
00874464  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
00874468  50 30 94 e5                                      ldr r3, [r4, #0x50]
0087446c  00 00 53 e3                                      cmp r3, #0
00874470  1a 00 00 0a                                      beq #0x8744e0
00874474  54 20 94 e5                                      ldr r2, [r4, #0x54]
00874478  00 00 52 e3                                      cmp r2, #0
0087447c  17 00 00 0a                                      beq #0x8744e0
00874480  04 30 93 e5                                      ldr r3, [r3, #4]
00874484  00 00 53 e3                                      cmp r3, #0
00874488  14 00 00 0a                                      beq #0x8744e0
0087448c  04 30 92 e5                                      ldr r3, [r2, #4]
00874490  00 00 53 e3                                      cmp r3, #0
00874494  11 00 00 0a                                      beq #0x8744e0
00874498  0c 00 94 e9                                      ldmib r4, {r2, r3}
0087449c  96 0f a0 e3                                      mov r0, #0x258
008744a0  92 03 03 e0                                      mul r3, r2, r3
008744a4  90 03 00 e0                                      mul r0, r0, r3
008744a8  2d 69 ea eb                                      bl #0x30e964
008744ac  43 14 a0 e3                                      mov r1, #0x43000000
008744b0  fa 18 81 e2                                      add r1, r1, #0xfa0000
008744b4  f6 69 ea eb                                      bl #0x30ec94
008744b8  03 68 ea eb                                      bl #0x30e4cc
008744bc  60 00 84 e5                                      str r0, [r4, #0x60]
008744c0  03 00 00 ea                                      b #0x8744d4
008744c4  10 00 84 e5                                      str r0, [r4, #0x10]
008744c8  04 00 84 e5                                      str r0, [r4, #4]
008744cc  08 00 84 e5                                      str r0, [r4, #8]
008744d0  0c 00 84 e5                                      str r0, [r4, #0xc]
008744d4  04 00 a0 e1                                      mov r0, r4
008744d8  28 d0 8d e2                                      add sp, sp, #0x28
008744dc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
008744e0  00 30 a0 e3                                      mov r3, #0
008744e4  10 30 84 e5                                      str r3, [r4, #0x10]
008744e8  04 30 84 e5                                      str r3, [r4, #4]
008744ec  08 30 84 e5                                      str r3, [r4, #8]
008744f0  0c 30 84 e5                                      str r3, [r4, #0xc]
008744f4  f6 ff ff ea                                      b #0x8744d4
008744f8  10 60 84 e5                                      str r6, [r4, #0x10]
008744fc  04 60 84 e5                                      str r6, [r4, #4]
00874500  08 60 84 e5                                      str r6, [r4, #8]
00874504  0c 60 84 e5                                      str r6, [r4, #0xc]
00874508  f1 ff ff ea                                      b #0x8744d4
0087450c  10 10 84 e5                                      str r1, [r4, #0x10]
00874510  04 10 84 e5                                      str r1, [r4, #4]
00874514  08 10 84 e5                                      str r1, [r4, #8]
00874518  0c 10 84 e5                                      str r1, [r4, #0xc]
0087451c  ec ff ff ea                                      b #0x8744d4
00874520  00 10 a0 e3                                      mov r1, #0
00874524  17 0e a0 e3                                      mov r0, #0x170
00874528  46 70 ea eb                                      bl #0x310648
0087452c  30 e0 94 e5                                      ldr lr, [r4, #0x30]
00874530  38 c0 94 e5                                      ldr ip, [r4, #0x38]
00874534  24 90 94 e5                                      ldr sb, [r4, #0x24]
00874538  34 70 94 e5                                      ldr r7, [r4, #0x34]
0087453c  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
00874540  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
00874544  20 20 94 e5                                      ldr r2, [r4, #0x20]
00874548  28 30 94 e5                                      ldr r3, [r4, #0x28]
0087454c  05 10 a0 e1                                      mov r1, r5
00874550  00 a0 a0 e1                                      mov sl, r0
00874554  0c e0 8d e5                                      str lr, [sp, #0xc]
00874558  10 c0 8d e5                                      str ip, [sp, #0x10]
0087455c  00 90 8d e5                                      str sb, [sp]
00874560  04 70 8d e5                                      str r7, [sp, #4]
00874564  08 60 8d e5                                      str r6, [sp, #8]
00874568  14 80 8d e5                                      str r8, [sp, #0x14]
0087456c  e8 4f 00 eb                                      bl #0x888514
00874570  00 10 a0 e3                                      mov r1, #0
00874574  48 a0 84 e5                                      str sl, [r4, #0x48]
00874578  51 0f a0 e3                                      mov r0, #0x144
0087457c  31 70 ea eb                                      bl #0x310648
00874580  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00874584  00 50 a0 e1                                      mov r5, r0
00874588  38 50 00 eb                                      bl #0x888670
0087458c  50 50 84 e5                                      str r5, [r4, #0x50]
00874590  00 10 a0 e3                                      mov r1, #0
00874594  51 0f a0 e3                                      mov r0, #0x144
00874598  2a 70 ea eb                                      bl #0x310648
0087459c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
008745a0  00 50 a0 e1                                      mov r5, r0
008745a4  31 50 00 eb                                      bl #0x888670
008745a8  54 50 84 e5                                      str r5, [r4, #0x54]
008745ac  a4 ff ff ea                                      b #0x874444
008745b0  00 10 a0 e3                                      mov r1, #0
008745b4  07 0d a0 e3                                      mov r0, #0x1c0
008745b8  22 70 ea eb                                      bl #0x310648
008745bc  30 e0 94 e5                                      ldr lr, [r4, #0x30]
008745c0  38 c0 94 e5                                      ldr ip, [r4, #0x38]
008745c4  24 90 94 e5                                      ldr sb, [r4, #0x24]
008745c8  34 70 94 e5                                      ldr r7, [r4, #0x34]
008745cc  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
008745d0  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
008745d4  20 20 94 e5                                      ldr r2, [r4, #0x20]
008745d8  28 30 94 e5                                      ldr r3, [r4, #0x28]
008745dc  05 10 a0 e1                                      mov r1, r5
008745e0  00 a0 a0 e1                                      mov sl, r0
008745e4  0c e0 8d e5                                      str lr, [sp, #0xc]
008745e8  10 c0 8d e5                                      str ip, [sp, #0x10]
008745ec  00 90 8d e5                                      str sb, [sp]
008745f0  04 70 8d e5                                      str r7, [sp, #4]
008745f4  08 60 8d e5                                      str r6, [sp, #8]
008745f8  14 80 8d e5                                      str r8, [sp, #0x14]
008745fc  7e 49 00 eb                                      bl #0x886bfc
00874600  00 10 a0 e3                                      mov r1, #0
00874604  48 a0 84 e5                                      str sl, [r4, #0x48]
00874608  15 0e a0 e3                                      mov r0, #0x150
0087460c  0d 70 ea eb                                      bl #0x310648
00874610  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00874614  00 50 a0 e1                                      mov r5, r0
00874618  78 4a 00 eb                                      bl #0x887000
0087461c  50 50 84 e5                                      str r5, [r4, #0x50]
00874620  00 10 a0 e3                                      mov r1, #0
00874624  15 0e a0 e3                                      mov r0, #0x150
00874628  06 70 ea eb                                      bl #0x310648
0087462c  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00874630  00 50 a0 e1                                      mov r5, r0
00874634  71 4a 00 eb                                      bl #0x887000
00874638  54 50 84 e5                                      str r5, [r4, #0x54]
0087463c  80 ff ff ea                                      b #0x874444
; mapping-symbol data/literal pool
00874640  90 07 12 00 10 0f 00 00                          .byte 0x90, 0x07, 0x12, 0x00, 0x10, 0x0f, 0x00, 0x00

; FUNCTION 0x00874678, declared_size=852, range_size=852, mode=arm
; class-group: vox::DecoderNativeCursor
; alias: _ZN3vox19DecoderNativeCursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderNativeCursor::DecoderNativeCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
00874678  44 33 9f e5                                      ldr r3, [pc, #0x344]
0087467c  44 c3 9f e5                                      ldr ip, [pc, #0x344]
00874680  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00874684  03 30 8f e0                                      add r3, pc, r3
00874688  0c c0 93 e7                                      ldr ip, [r3, ip]
0087468c  00 60 a0 e3                                      mov r6, #0
00874690  02 50 a0 e1                                      mov r5, r2
00874694  08 c0 8c e2                                      add ip, ip, #8
00874698  40 20 80 e2                                      add r2, r0, #0x40
0087469c  00 40 a0 e1                                      mov r4, r0
008746a0  14 10 80 e5                                      str r1, [r0, #0x14]
008746a4  00 c0 80 e5                                      str ip, [r0]
008746a8  44 20 80 e5                                      str r2, [r0, #0x44]
008746ac  04 60 80 e5                                      str r6, [r0, #4]
008746b0  08 60 80 e5                                      str r6, [r0, #8]
008746b4  0c 60 80 e5                                      str r6, [r0, #0xc]
008746b8  10 60 80 e5                                      str r6, [r0, #0x10]
008746bc  18 50 80 e5                                      str r5, [r0, #0x18]
008746c0  1c 60 c0 e5                                      strb r6, [r0, #0x1c]
008746c4  20 60 80 e5                                      str r6, [r0, #0x20]
008746c8  24 60 80 e5                                      str r6, [r0, #0x24]
008746cc  28 60 80 e5                                      str r6, [r0, #0x28]
008746d0  2c 60 80 e5                                      str r6, [r0, #0x2c]
008746d4  30 60 80 e5                                      str r6, [r0, #0x30]
008746d8  34 60 80 e5                                      str r6, [r0, #0x34]
008746dc  38 60 80 e5                                      str r6, [r0, #0x38]
008746e0  3c 60 80 e5                                      str r6, [r0, #0x3c]
008746e4  40 20 80 e5                                      str r2, [r0, #0x40]
008746e8  48 60 80 e5                                      str r6, [r0, #0x48]
008746ec  4c 60 80 e5                                      str r6, [r0, #0x4c]
008746f0  50 60 80 e5                                      str r6, [r0, #0x50]
008746f4  54 60 80 e5                                      str r6, [r0, #0x54]
008746f8  58 60 80 e5                                      str r6, [r0, #0x58]
008746fc  5c 60 80 e5                                      str r6, [r0, #0x5c]
00874700  60 60 80 e5                                      str r6, [r0, #0x60]
00874704  64 60 80 e5                                      str r6, [r0, #0x64]
00874708  28 d0 4d e2                                      sub sp, sp, #0x28
0087470c  68 00 80 e2                                      add r0, r0, #0x68
00874710  ae 7b 00 eb                                      bl #0x8935d0
00874714  14 70 94 e5                                      ldr r7, [r4, #0x14]
00874718  04 30 87 e2                                      add r3, r7, #4
0087471c  20 30 84 e5                                      str r3, [r4, #0x20]
00874720  88 30 d7 e5                                      ldrb r3, [r7, #0x88]
00874724  06 00 53 e1                                      cmp r3, r6
00874728  06 00 00 0a                                      beq #0x874748
0087472c  04 00 a0 e1                                      mov r0, r4
00874730  61 fc ff eb                                      bl #0x8738bc
00874734  00 00 50 e3                                      cmp r0, #0
00874738  42 00 00 0a                                      beq #0x874848
0087473c  14 30 94 e5                                      ldr r3, [r4, #0x14]
00874740  88 60 c3 e5                                      strb r6, [r3, #0x88]
00874744  14 70 94 e5                                      ldr r7, [r4, #0x14]
00874748  30 e0 87 e2                                      add lr, r7, #0x30
0087474c  58 c0 87 e2                                      add ip, r7, #0x58
00874750  70 20 87 e2                                      add r2, r7, #0x70
00874754  48 30 87 e2                                      add r3, r7, #0x48
00874758  50 00 87 e2                                      add r0, r7, #0x50
0087475c  64 10 87 e2                                      add r1, r7, #0x64
00874760  24 e0 84 e5                                      str lr, [r4, #0x24]
00874764  34 c0 84 e5                                      str ip, [r4, #0x34]
00874768  2c 00 84 e5                                      str r0, [r4, #0x2c]
0087476c  30 10 84 e5                                      str r1, [r4, #0x30]
00874770  38 20 84 e5                                      str r2, [r4, #0x38]
00874774  28 30 84 e5                                      str r3, [r4, #0x28]
00874778  00 10 a0 e3                                      mov r1, #0
0087477c  10 00 a0 e3                                      mov r0, #0x10
00874780  b0 6f ea eb                                      bl #0x310648
00874784  38 70 87 e2                                      add r7, r7, #0x38
00874788  00 60 a0 e1                                      mov r6, r0
0087478c  07 10 a0 e1                                      mov r1, r7
00874790  c5 3d 00 eb                                      bl #0x883eac
00874794  00 00 56 e3                                      cmp r6, #0
00874798  3c 60 84 e5                                      str r6, [r4, #0x3c]
0087479c  36 00 00 0a                                      beq #0x87487c
008747a0  06 00 a0 e1                                      mov r0, r6
008747a4  45 37 00 eb                                      bl #0x8824c0
008747a8  00 00 50 e3                                      cmp r0, #0
008747ac  25 00 00 0a                                      beq #0x874848
008747b0  20 30 94 e5                                      ldr r3, [r4, #0x20]
008747b4  f0 32 d3 e1                                      ldrsh r3, [r3, #0x20]
008747b8  01 00 53 e3                                      cmp r3, #1
008747bc  38 00 00 0a                                      beq #0x8748a4
008747c0  11 00 53 e3                                      cmp r3, #0x11
008747c4  5a 00 00 0a                                      beq #0x874934
008747c8  48 10 94 e5                                      ldr r1, [r4, #0x48]
008747cc  00 00 51 e3                                      cmp r1, #0
008747d0  2e 00 00 0a                                      beq #0x874890
008747d4  18 50 8d e2                                      add r5, sp, #0x18
008747d8  05 00 a0 e1                                      mov r0, r5
008747dc  15 3f 00 eb                                      bl #0x884438
008747e0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
008747e4  04 c0 84 e2                                      add ip, r4, #4
008747e8  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
008747ec  50 30 94 e5                                      ldr r3, [r4, #0x50]
008747f0  00 00 53 e3                                      cmp r3, #0
008747f4  1a 00 00 0a                                      beq #0x874864
008747f8  54 20 94 e5                                      ldr r2, [r4, #0x54]
008747fc  00 00 52 e3                                      cmp r2, #0
00874800  17 00 00 0a                                      beq #0x874864
00874804  04 30 93 e5                                      ldr r3, [r3, #4]
00874808  00 00 53 e3                                      cmp r3, #0
0087480c  14 00 00 0a                                      beq #0x874864
00874810  04 30 92 e5                                      ldr r3, [r2, #4]
00874814  00 00 53 e3                                      cmp r3, #0
00874818  11 00 00 0a                                      beq #0x874864
0087481c  0c 00 94 e9                                      ldmib r4, {r2, r3}
00874820  96 0f a0 e3                                      mov r0, #0x258
00874824  92 03 03 e0                                      mul r3, r2, r3
00874828  90 03 00 e0                                      mul r0, r0, r3
0087482c  4c 68 ea eb                                      bl #0x30e964
00874830  43 14 a0 e3                                      mov r1, #0x43000000
00874834  fa 18 81 e2                                      add r1, r1, #0xfa0000
00874838  15 69 ea eb                                      bl #0x30ec94
0087483c  22 67 ea eb                                      bl #0x30e4cc
00874840  60 00 84 e5                                      str r0, [r4, #0x60]
00874844  03 00 00 ea                                      b #0x874858
00874848  10 00 84 e5                                      str r0, [r4, #0x10]
0087484c  04 00 84 e5                                      str r0, [r4, #4]
00874850  08 00 84 e5                                      str r0, [r4, #8]
00874854  0c 00 84 e5                                      str r0, [r4, #0xc]
00874858  04 00 a0 e1                                      mov r0, r4
0087485c  28 d0 8d e2                                      add sp, sp, #0x28
00874860  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00874864  00 30 a0 e3                                      mov r3, #0
00874868  10 30 84 e5                                      str r3, [r4, #0x10]
0087486c  04 30 84 e5                                      str r3, [r4, #4]
00874870  08 30 84 e5                                      str r3, [r4, #8]
00874874  0c 30 84 e5                                      str r3, [r4, #0xc]
00874878  f6 ff ff ea                                      b #0x874858
0087487c  10 60 84 e5                                      str r6, [r4, #0x10]
00874880  04 60 84 e5                                      str r6, [r4, #4]
00874884  08 60 84 e5                                      str r6, [r4, #8]
00874888  0c 60 84 e5                                      str r6, [r4, #0xc]
0087488c  f1 ff ff ea                                      b #0x874858
00874890  10 10 84 e5                                      str r1, [r4, #0x10]
00874894  04 10 84 e5                                      str r1, [r4, #4]
00874898  08 10 84 e5                                      str r1, [r4, #8]
0087489c  0c 10 84 e5                                      str r1, [r4, #0xc]
008748a0  ec ff ff ea                                      b #0x874858
008748a4  00 10 a0 e3                                      mov r1, #0
008748a8  17 0e a0 e3                                      mov r0, #0x170
008748ac  65 6f ea eb                                      bl #0x310648
008748b0  30 e0 94 e5                                      ldr lr, [r4, #0x30]
008748b4  38 c0 94 e5                                      ldr ip, [r4, #0x38]
008748b8  24 90 94 e5                                      ldr sb, [r4, #0x24]
008748bc  34 70 94 e5                                      ldr r7, [r4, #0x34]
008748c0  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
008748c4  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
008748c8  20 20 94 e5                                      ldr r2, [r4, #0x20]
008748cc  28 30 94 e5                                      ldr r3, [r4, #0x28]
008748d0  05 10 a0 e1                                      mov r1, r5
008748d4  00 a0 a0 e1                                      mov sl, r0
008748d8  0c e0 8d e5                                      str lr, [sp, #0xc]
008748dc  10 c0 8d e5                                      str ip, [sp, #0x10]
008748e0  00 90 8d e5                                      str sb, [sp]
008748e4  04 70 8d e5                                      str r7, [sp, #4]
008748e8  08 60 8d e5                                      str r6, [sp, #8]
008748ec  14 80 8d e5                                      str r8, [sp, #0x14]
008748f0  07 4f 00 eb                                      bl #0x888514
008748f4  00 10 a0 e3                                      mov r1, #0
008748f8  48 a0 84 e5                                      str sl, [r4, #0x48]
008748fc  51 0f a0 e3                                      mov r0, #0x144
00874900  50 6f ea eb                                      bl #0x310648
00874904  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00874908  00 50 a0 e1                                      mov r5, r0
0087490c  57 4f 00 eb                                      bl #0x888670
00874910  50 50 84 e5                                      str r5, [r4, #0x50]
00874914  00 10 a0 e3                                      mov r1, #0
00874918  51 0f a0 e3                                      mov r0, #0x144
0087491c  49 6f ea eb                                      bl #0x310648
00874920  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00874924  00 50 a0 e1                                      mov r5, r0
00874928  50 4f 00 eb                                      bl #0x888670
0087492c  54 50 84 e5                                      str r5, [r4, #0x54]
00874930  a4 ff ff ea                                      b #0x8747c8
00874934  00 10 a0 e3                                      mov r1, #0
00874938  07 0d a0 e3                                      mov r0, #0x1c0
0087493c  41 6f ea eb                                      bl #0x310648
00874940  30 e0 94 e5                                      ldr lr, [r4, #0x30]
00874944  38 c0 94 e5                                      ldr ip, [r4, #0x38]
00874948  24 90 94 e5                                      ldr sb, [r4, #0x24]
0087494c  34 70 94 e5                                      ldr r7, [r4, #0x34]
00874950  2c 60 94 e5                                      ldr r6, [r4, #0x2c]
00874954  3c 80 94 e5                                      ldr r8, [r4, #0x3c]
00874958  20 20 94 e5                                      ldr r2, [r4, #0x20]
0087495c  28 30 94 e5                                      ldr r3, [r4, #0x28]
00874960  05 10 a0 e1                                      mov r1, r5
00874964  00 a0 a0 e1                                      mov sl, r0
00874968  0c e0 8d e5                                      str lr, [sp, #0xc]
0087496c  10 c0 8d e5                                      str ip, [sp, #0x10]
00874970  00 90 8d e5                                      str sb, [sp]
00874974  04 70 8d e5                                      str r7, [sp, #4]
00874978  08 60 8d e5                                      str r6, [sp, #8]
0087497c  14 80 8d e5                                      str r8, [sp, #0x14]
00874980  9d 48 00 eb                                      bl #0x886bfc
00874984  00 10 a0 e3                                      mov r1, #0
00874988  48 a0 84 e5                                      str sl, [r4, #0x48]
0087498c  15 0e a0 e3                                      mov r0, #0x150
00874990  2c 6f ea eb                                      bl #0x310648
00874994  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
00874998  00 50 a0 e1                                      mov r5, r0
0087499c  97 49 00 eb                                      bl #0x887000
008749a0  50 50 84 e5                                      str r5, [r4, #0x50]
008749a4  00 10 a0 e3                                      mov r1, #0
008749a8  15 0e a0 e3                                      mov r0, #0x150
008749ac  25 6f ea eb                                      bl #0x310648
008749b0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
008749b4  00 50 a0 e1                                      mov r5, r0
008749b8  90 49 00 eb                                      bl #0x887000
008749bc  54 50 84 e5                                      str r5, [r4, #0x54]
008749c0  80 ff ff ea                                      b #0x8747c8
; mapping-symbol data/literal pool
008749c4  0c 04 12 00 10 0f 00 00                          .byte 0x0c, 0x04, 0x12, 0x00, 0x10, 0x0f, 0x00, 0x00
