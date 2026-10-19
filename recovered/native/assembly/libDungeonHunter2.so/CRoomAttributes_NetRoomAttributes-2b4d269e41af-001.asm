; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x008180f4, declared_size=200, range_size=200, mode=arm
; class-group: CRoomAttributes::NetRoomAttributes
; alias: _ZN15CRoomAttributes17NetRoomAttributesD1Ev
; demangled: CRoomAttributes::NetRoomAttributes::~NetRoomAttributes()
; decoder-mode: arm
008180f4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
008180f8  ac 70 9f e5                                      ldr r7, [pc, #0xac]
008180fc  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00818100  ac 30 9f e5                                      ldr r3, [pc, #0xac]
00818104  07 70 8f e0                                      add r7, pc, r7
00818108  02 20 97 e7                                      ldr r2, [r7, r2]
0081810c  03 30 97 e7                                      ldr r3, [r7, r3]
00818110  00 40 a0 e1                                      mov r4, r0
00818114  08 20 82 e2                                      add r2, r2, #8
00818118  08 30 83 e2                                      add r3, r3, #8
0081811c  00 20 80 e5                                      str r2, [r0]
00818120  38 33 80 e5                                      str r3, [r0, #0x338]
00818124  60 33 80 e5                                      str r3, [r0, #0x360]
00818128  27 6e 80 e2                                      add r6, r0, #0x270
0081812c  ce 5f 80 e2                                      add r5, r0, #0x338
00818130  28 30 35 e5                                      ldr r3, [r5, #-0x28]!
00818134  05 00 a0 e1                                      mov r0, r5
00818138  0f e0 a0 e1                                      mov lr, pc
0081813c  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00818140  06 00 55 e1                                      cmp r5, r6
00818144  f9 ff ff 1a                                      bne #0x818130
00818148  13 6e 84 e2                                      add r6, r4, #0x130
0081814c  28 30 35 e5                                      ldr r3, [r5, #-0x28]!
00818150  05 00 a0 e1                                      mov r0, r5
00818154  0f e0 a0 e1                                      mov lr, pc
00818158  14 f0 93 e5                                      ldr pc, [r3, #0x14]
0081815c  06 00 55 e1                                      cmp r5, r6
00818160  f9 ff ff 1a                                      bne #0x81814c
00818164  4c 30 9f e5                                      ldr r3, [pc, #0x4c]
00818168  1c 21 94 e5                                      ldr r2, [r4, #0x11c]
0081816c  03 30 97 e7                                      ldr r3, [r7, r3]
00818170  00 00 52 e3                                      cmp r2, #0
00818174  08 30 83 e2                                      add r3, r3, #8
00818178  00 30 84 e5                                      str r3, [r4]
0081817c  08 00 00 0a                                      beq #0x8181a4
00818180  43 5f 84 e2                                      add r5, r4, #0x10c
00818184  05 00 a0 e1                                      mov r0, r5
00818188  10 11 94 e5                                      ldr r1, [r4, #0x110]
0081818c  8f 63 ed eb                                      bl #0x370fd0
00818190  00 30 a0 e3                                      mov r3, #0
00818194  18 51 84 e5                                      str r5, [r4, #0x118]
00818198  1c 31 84 e5                                      str r3, [r4, #0x11c]
0081819c  14 51 84 e5                                      str r5, [r4, #0x114]
008181a0  10 31 84 e5                                      str r3, [r4, #0x110]
008181a4  04 00 a0 e1                                      mov r0, r4
008181a8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
008181ac  8c c9 17 00 0c 23 00 00 a8 10 00 00 c4 43 00 00  .byte 0x8c, 0xc9, 0x17, 0x00, 0x0c, 0x23, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00, 0xc4, 0x43, 0x00, 0x00

; FUNCTION 0x008181bc, declared_size=28, range_size=28, mode=arm
; class-group: CRoomAttributes::NetRoomAttributes
; alias: _ZN15CRoomAttributes17NetRoomAttributesD0Ev
; demangled: CRoomAttributes::NetRoomAttributes::~NetRoomAttributes()
; decoder-mode: arm
008181bc  10 40 2d e9                                      push {r4, lr}
008181c0  00 40 a0 e1                                      mov r4, r0
008181c4  ca ff ff eb                                      bl #0x8180f4
008181c8  04 00 a0 e1                                      mov r0, r4
008181cc  9b e0 eb eb                                      bl #0x310440
008181d0  04 00 a0 e1                                      mov r0, r4
008181d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008186ac, declared_size=596, range_size=596, mode=arm
; class-group: CRoomAttributes::NetRoomAttributes
; alias: _ZN15CRoomAttributes17NetRoomAttributes4CopyERKS0_j
; demangled: CRoomAttributes::NetRoomAttributes::Copy(CRoomAttributes::NetRoomAttributes const&, unsigned int)
; decoder-mode: arm
008186ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
008186b0  00 40 a0 e1                                      mov r4, r0
008186b4  64 d0 4d e2                                      sub sp, sp, #0x64
008186b8  ce 0f 80 e2                                      add r0, r0, #0x338
008186bc  04 10 8d e5                                      str r1, [sp, #4]
008186c0  0c 00 8d e5                                      str r0, [sp, #0xc]
008186c4  36 ce 84 e2                                      add ip, r4, #0x360
008186c8  38 33 94 e5                                      ldr r3, [r4, #0x338]
008186cc  d6 1f 81 e2                                      add r1, r1, #0x358
008186d0  08 c0 8d e5                                      str ip, [sp, #8]
008186d4  02 50 a0 e1                                      mov r5, r2
008186d8  0f e0 a0 e1                                      mov lr, pc
008186dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008186e0  04 20 9d e5                                      ldr r2, [sp, #4]
008186e4  60 33 94 e5                                      ldr r3, [r4, #0x360]
008186e8  08 00 9d e5                                      ldr r0, [sp, #8]
008186ec  0e 1d 82 e2                                      add r1, r2, #0x380
008186f0  0f e0 a0 e1                                      mov lr, pc
008186f4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008186f8  58 73 94 e5                                      ldr r7, [r4, #0x358]
008186fc  80 a3 94 e5                                      ldr sl, [r4, #0x380]
00818700  01 30 15 e2                                      ands r3, r5, #1
00818704  e0 91 9f e5                                      ldr sb, [pc, #0x1e0]
00818708  03 70 a0 01                                      moveq r7, r3
0081870c  02 00 15 e3                                      tst r5, #2
00818710  01 a0 ca 03                                      biceq sl, sl, #1
00818714  04 00 15 e3                                      tst r5, #4
00818718  18 a0 ca 03                                      biceq sl, sl, #0x18
0081871c  08 00 15 e3                                      tst r5, #8
00818720  09 90 8f e0                                      add sb, pc, sb
00818724  06 a0 ca 03                                      biceq sl, sl, #6
00818728  04 80 a0 e1                                      mov r8, r4
0081872c  04 60 a0 e1                                      mov r6, r4
00818730  00 50 a0 e3                                      mov r5, #0
00818734  01 b0 a0 e3                                      mov fp, #1
00818738  03 00 00 ea                                      b #0x81874c
0081873c  01 50 85 e2                                      add r5, r5, #1
00818740  08 00 55 e3                                      cmp r5, #8
00818744  28 60 86 e2                                      add r6, r6, #0x28
00818748  0f 00 00 0a                                      beq #0x81878c
0081874c  1b 35 17 e0                                      ands r3, r7, fp, lsl r5
00818750  f9 ff ff 0a                                      beq #0x81873c
00818754  28 c0 a0 e3                                      mov ip, #0x28
00818758  9c 05 02 e0                                      mul r2, ip, r5
0081875c  30 31 96 e5                                      ldr r3, [r6, #0x130]
00818760  15 1e 82 e2                                      add r1, r2, #0x150
00818764  13 2e 82 e2                                      add r2, r2, #0x130
00818768  02 00 84 e0                                      add r0, r4, r2
0081876c  04 20 9d e5                                      ldr r2, [sp, #4]
00818770  01 50 85 e2                                      add r5, r5, #1
00818774  28 60 86 e2                                      add r6, r6, #0x28
00818778  01 10 82 e0                                      add r1, r2, r1
0081877c  0f e0 a0 e1                                      mov lr, pc
00818780  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818784  08 00 55 e3                                      cmp r5, #8
00818788  ef ff ff 1a                                      bne #0x81874c
0081878c  00 50 a0 e3                                      mov r5, #0
00818790  01 60 a0 e3                                      mov r6, #1
00818794  28 b0 a0 e3                                      mov fp, #0x28
00818798  16 35 1a e0                                      ands r3, sl, r6, lsl r5
0081879c  48 00 00 1a                                      bne #0x8188c4
008187a0  01 50 85 e2                                      add r5, r5, #1
008187a4  05 00 55 e3                                      cmp r5, #5
008187a8  28 80 88 e2                                      add r8, r8, #0x28
008187ac  f9 ff ff 1a                                      bne #0x818798
008187b0  38 51 9f e5                                      ldr r5, [pc, #0x138]
008187b4  58 30 9d e5                                      ldr r3, [sp, #0x58]
008187b8  08 00 a0 e3                                      mov r0, #8
008187bc  05 10 99 e7                                      ldr r1, [sb, r5]
008187c0  00 20 e0 e3                                      mvn r2, #0
008187c4  03 00 57 e1                                      cmp r7, r3
008187c8  08 c0 81 e2                                      add ip, r1, #8
008187cc  00 30 a0 e3                                      mov r3, #0
008187d0  3c 00 8d e5                                      str r0, [sp, #0x3c]
008187d4  00 10 a0 e3                                      mov r1, #0
008187d8  00 00 a0 e3                                      mov r0, #0
008187dc  f0 04 cd e1                                      strd r0, r1, [sp, #0x40]
008187e0  4c 20 8d e5                                      str r2, [sp, #0x4c]
008187e4  54 30 cd e5                                      strb r3, [sp, #0x54]
008187e8  38 c0 8d e5                                      str ip, [sp, #0x38]
008187ec  48 20 8d e5                                      str r2, [sp, #0x48]
008187f0  50 30 8d e5                                      str r3, [sp, #0x50]
008187f4  38 60 8d 02                                      addeq r6, sp, #0x38
008187f8  03 00 00 0a                                      beq #0x81880c
008187fc  38 60 8d e2                                      add r6, sp, #0x38
00818800  06 00 a0 e1                                      mov r0, r6
00818804  58 70 8d e5                                      str r7, [sp, #0x58]
00818808  dd f1 ff eb                                      bl #0x814f84
0081880c  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
00818810  20 10 86 e2                                      add r1, r6, #0x20
00818814  38 33 94 e5                                      ldr r3, [r4, #0x338]
00818818  02 20 99 e7                                      ldr r2, [sb, r2]
0081881c  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00818820  00 60 a0 e3                                      mov r6, #0
00818824  08 20 82 e2                                      add r2, r2, #8
00818828  38 20 8d e5                                      str r2, [sp, #0x38]
0081882c  0f e0 a0 e1                                      mov lr, pc
00818830  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00818834  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00818838  05 00 99 e7                                      ldr r0, [sb, r5]
0081883c  30 20 9d e5                                      ldr r2, [sp, #0x30]
00818840  03 30 99 e7                                      ldr r3, [sb, r3]
00818844  00 10 e0 e3                                      mvn r1, #0
00818848  02 00 5a e1                                      cmp sl, r2
0081884c  08 30 83 e2                                      add r3, r3, #8
00818850  00 20 a0 e3                                      mov r2, #0
00818854  08 00 80 e2                                      add r0, r0, #8
00818858  38 30 8d e5                                      str r3, [sp, #0x38]
0081885c  00 70 a0 e3                                      mov r7, #0
00818860  05 30 a0 e3                                      mov r3, #5
00818864  14 30 8d e5                                      str r3, [sp, #0x14]
00818868  f8 61 cd e1                                      strd r6, r7, [sp, #0x18]
0081886c  24 10 8d e5                                      str r1, [sp, #0x24]
00818870  2c 20 cd e5                                      strb r2, [sp, #0x2c]
00818874  10 00 8d e5                                      str r0, [sp, #0x10]
00818878  20 10 8d e5                                      str r1, [sp, #0x20]
0081887c  28 20 8d e5                                      str r2, [sp, #0x28]
00818880  10 50 8d 02                                      addeq r5, sp, #0x10
00818884  03 00 00 0a                                      beq #0x818898
00818888  10 50 8d e2                                      add r5, sp, #0x10
0081888c  05 00 a0 e1                                      mov r0, r5
00818890  30 a0 8d e5                                      str sl, [sp, #0x30]
00818894  ba f1 ff eb                                      bl #0x814f84
00818898  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
0081889c  60 33 94 e5                                      ldr r3, [r4, #0x360]
008188a0  08 00 9d e5                                      ldr r0, [sp, #8]
008188a4  02 20 99 e7                                      ldr r2, [sb, r2]
008188a8  20 10 85 e2                                      add r1, r5, #0x20
008188ac  08 20 82 e2                                      add r2, r2, #8
008188b0  10 20 8d e5                                      str r2, [sp, #0x10]
008188b4  0f e0 a0 e1                                      mov lr, pc
008188b8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008188bc  64 d0 8d e2                                      add sp, sp, #0x64
008188c0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
008188c4  9b 05 02 e0                                      mul r2, fp, r5
008188c8  04 c0 9d e5                                      ldr ip, [sp, #4]
008188cc  29 1e 82 e2                                      add r1, r2, #0x290
008188d0  27 2e 82 e2                                      add r2, r2, #0x270
008188d4  70 32 98 e5                                      ldr r3, [r8, #0x270]
008188d8  02 00 84 e0                                      add r0, r4, r2
008188dc  01 10 8c e0                                      add r1, ip, r1
008188e0  0f e0 a0 e1                                      mov lr, pc
008188e4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
008188e8  ac ff ff ea                                      b #0x8187a0
; mapping-symbol data/literal pool
008188ec  70 c3 17 00 68 40 00 00 24 10 00 00 a8 10 00 00  .byte 0x70, 0xc3, 0x17, 0x00, 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0xa8, 0x10, 0x00, 0x00
008188fc  8c 2c 00 00                                      .byte 0x8c, 0x2c, 0x00, 0x00

; FUNCTION 0x00818dac, declared_size=676, range_size=676, mode=arm
; class-group: CRoomAttributes::NetRoomAttributes
; alias: _ZN15CRoomAttributes17NetRoomAttributesC1Ev
; demangled: CRoomAttributes::NetRoomAttributes::NetRoomAttributes()
; decoder-mode: arm
00818dac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00818db0  7c 52 9f e5                                      ldr r5, [pc, #0x27c]
00818db4  14 d0 4d e2                                      sub sp, sp, #0x14
00818db8  00 40 a0 e1                                      mov r4, r0
00818dbc  cc ea ff eb                                      bl #0x8138f4
00818dc0  70 22 9f e5                                      ldr r2, [pc, #0x270]
00818dc4  70 32 9f e5                                      ldr r3, [pc, #0x270]
00818dc8  05 50 8f e0                                      add r5, pc, r5
00818dcc  02 b0 95 e7                                      ldr fp, [r5, r2]
00818dd0  03 30 95 e7                                      ldr r3, [r5, r3]
00818dd4  64 22 9f e5                                      ldr r2, [pc, #0x264]
00818dd8  08 b0 8b e2                                      add fp, fp, #8
00818ddc  08 30 83 e2                                      add r3, r3, #8
00818de0  00 20 8d e5                                      str r2, [sp]
00818de4  04 20 a0 e1                                      mov r2, r4
00818de8  30 31 82 e4                                      str r3, [r2], #0x130
00818dec  04 20 8d e5                                      str r2, [sp, #4]
00818df0  02 70 a0 e1                                      mov r7, r2
00818df4  27 6e 84 e2                                      add r6, r4, #0x270
00818df8  20 90 a0 e3                                      mov sb, #0x20
00818dfc  00 a0 e0 e3                                      mvn sl, #0
00818e00  00 80 a0 e3                                      mov r8, #0
00818e04  20 30 97 e5                                      ldr r3, [r7, #0x20]
00818e08  00 20 a0 e3                                      mov r2, #0
00818e0c  07 00 a0 e1                                      mov r0, r7
00818e10  00 00 53 e3                                      cmp r3, #0
00818e14  00 30 a0 e3                                      mov r3, #0
00818e18  04 90 87 e5                                      str sb, [r7, #4]
00818e1c  f8 20 c7 e1                                      strd r2, r3, [r7, #8]
00818e20  10 a0 87 e5                                      str sl, [r7, #0x10]
00818e24  14 a0 87 e5                                      str sl, [r7, #0x14]
00818e28  18 80 87 e5                                      str r8, [r7, #0x18]
00818e2c  1c 80 c7 e5                                      strb r8, [r7, #0x1c]
00818e30  00 b0 87 e5                                      str fp, [r7]
00818e34  01 00 00 0a                                      beq #0x818e40
00818e38  20 80 87 e5                                      str r8, [r7, #0x20]
00818e3c  50 f0 ff eb                                      bl #0x814f84
00818e40  00 20 9d e5                                      ldr r2, [sp]
00818e44  02 30 95 e7                                      ldr r3, [r5, r2]
00818e48  08 30 83 e2                                      add r3, r3, #8
00818e4c  28 30 87 e4                                      str r3, [r7], #0x28
00818e50  06 00 57 e1                                      cmp r7, r6
00818e54  ea ff ff 1a                                      bne #0x818e04
00818e58  00 70 a0 e3                                      mov r7, #0
00818e5c  08 a0 8d e2                                      add sl, sp, #8
00818e60  07 80 a0 e1                                      mov r8, r7
00818e64  07 00 86 e0                                      add r0, r6, r7
00818e68  0a 10 a0 e1                                      mov r1, sl
00818e6c  08 80 8d e5                                      str r8, [sp, #8]
00818e70  0c 80 8d e5                                      str r8, [sp, #0xc]
00818e74  d7 fc ff eb                                      bl #0x8181d8
00818e78  08 00 9d e5                                      ldr r0, [sp, #8]
00818e7c  28 70 87 e2                                      add r7, r7, #0x28
00818e80  00 00 50 e3                                      cmp r0, #0
00818e84  01 00 00 0a                                      beq #0x818e90
00818e88  6c dd eb eb                                      bl #0x310440
00818e8c  08 80 8d e5                                      str r8, [sp, #8]
00818e90  c8 00 57 e3                                      cmp r7, #0xc8
00818e94  f2 ff ff 1a                                      bne #0x818e64
00818e98  a4 71 9f e5                                      ldr r7, [pc, #0x1a4]
00818e9c  58 33 94 e5                                      ldr r3, [r4, #0x358]
00818ea0  00 80 a0 e3                                      mov r8, #0
00818ea4  07 10 95 e7                                      ldr r1, [r5, r7]
00818ea8  0d 0d a0 e3                                      mov r0, #0x340
00818eac  00 90 a0 e3                                      mov sb, #0
00818eb0  f0 80 84 e1                                      strd r8, sb, [r4, r0]
00818eb4  00 20 e0 e3                                      mvn r2, #0
00818eb8  00 00 53 e3                                      cmp r3, #0
00818ebc  08 10 81 e2                                      add r1, r1, #8
00818ec0  00 30 a0 e3                                      mov r3, #0
00818ec4  08 00 a0 e3                                      mov r0, #8
00818ec8  3c 03 84 e5                                      str r0, [r4, #0x33c]
00818ecc  4c 23 84 e5                                      str r2, [r4, #0x34c]
00818ed0  38 13 84 e5                                      str r1, [r4, #0x338]
00818ed4  48 23 84 e5                                      str r2, [r4, #0x348]
00818ed8  50 33 84 e5                                      str r3, [r4, #0x350]
00818edc  54 33 c4 e5                                      strb r3, [r4, #0x354]
00818ee0  ce 8f 84 02                                      addeq r8, r4, #0x338
00818ee4  03 00 00 0a                                      beq #0x818ef8
00818ee8  ce 8f 84 e2                                      add r8, r4, #0x338
00818eec  58 33 84 e5                                      str r3, [r4, #0x358]
00818ef0  08 00 a0 e1                                      mov r0, r8
00818ef4  22 f0 ff eb                                      bl #0x814f84
00818ef8  48 31 9f e5                                      ldr r3, [pc, #0x148]
00818efc  80 23 94 e5                                      ldr r2, [r4, #0x380]
00818f00  07 00 95 e7                                      ldr r0, [r5, r7]
00818f04  03 30 95 e7                                      ldr r3, [r5, r3]
00818f08  00 a0 a0 e3                                      mov sl, #0
00818f0c  00 b0 a0 e3                                      mov fp, #0
00818f10  08 30 83 e2                                      add r3, r3, #8
00818f14  da cf a0 e3                                      mov ip, #0x368
00818f18  fc a0 84 e1                                      strd sl, fp, [r4, ip]
00818f1c  00 00 52 e3                                      cmp r2, #0
00818f20  00 10 e0 e3                                      mvn r1, #0
00818f24  00 20 a0 e3                                      mov r2, #0
00818f28  08 00 80 e2                                      add r0, r0, #8
00818f2c  38 33 84 e5                                      str r3, [r4, #0x338]
00818f30  05 30 a0 e3                                      mov r3, #5
00818f34  64 33 84 e5                                      str r3, [r4, #0x364]
00818f38  74 13 84 e5                                      str r1, [r4, #0x374]
00818f3c  60 03 84 e5                                      str r0, [r4, #0x360]
00818f40  70 13 84 e5                                      str r1, [r4, #0x370]
00818f44  78 23 84 e5                                      str r2, [r4, #0x378]
00818f48  7c 23 c4 e5                                      strb r2, [r4, #0x37c]
00818f4c  36 7e 84 02                                      addeq r7, r4, #0x360
00818f50  03 00 00 0a                                      beq #0x818f64
00818f54  36 7e 84 e2                                      add r7, r4, #0x360
00818f58  80 23 84 e5                                      str r2, [r4, #0x380]
00818f5c  07 00 a0 e1                                      mov r0, r7
00818f60  07 f0 ff eb                                      bl #0x814f84
00818f64  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00818f68  04 10 9d e5                                      ldr r1, [sp, #4]
00818f6c  04 00 a0 e1                                      mov r0, r4
00818f70  03 30 95 e7                                      ldr r3, [r5, r3]
00818f74  08 30 83 e2                                      add r3, r3, #8
00818f78  60 33 84 e5                                      str r3, [r4, #0x360]
00818f7c  b2 e8 ff eb                                      bl #0x81324c
00818f80  04 00 a0 e1                                      mov r0, r4
00818f84  56 1f 84 e2                                      add r1, r4, #0x158
00818f88  af e8 ff eb                                      bl #0x81324c
00818f8c  04 00 a0 e1                                      mov r0, r4
00818f90  06 1d 84 e2                                      add r1, r4, #0x180
00818f94  ac e8 ff eb                                      bl #0x81324c
00818f98  04 00 a0 e1                                      mov r0, r4
00818f9c  6a 1f 84 e2                                      add r1, r4, #0x1a8
00818fa0  a9 e8 ff eb                                      bl #0x81324c
00818fa4  04 00 a0 e1                                      mov r0, r4
00818fa8  1d 1e 84 e2                                      add r1, r4, #0x1d0
00818fac  a6 e8 ff eb                                      bl #0x81324c
00818fb0  04 00 a0 e1                                      mov r0, r4
00818fb4  7e 1f 84 e2                                      add r1, r4, #0x1f8
00818fb8  a3 e8 ff eb                                      bl #0x81324c
00818fbc  04 00 a0 e1                                      mov r0, r4
00818fc0  22 1e 84 e2                                      add r1, r4, #0x220
00818fc4  a0 e8 ff eb                                      bl #0x81324c
00818fc8  04 00 a0 e1                                      mov r0, r4
00818fcc  92 1f 84 e2                                      add r1, r4, #0x248
00818fd0  9d e8 ff eb                                      bl #0x81324c
00818fd4  04 00 a0 e1                                      mov r0, r4
00818fd8  06 10 a0 e1                                      mov r1, r6
00818fdc  9a e8 ff eb                                      bl #0x81324c
00818fe0  04 00 a0 e1                                      mov r0, r4
00818fe4  a6 1f 84 e2                                      add r1, r4, #0x298
00818fe8  97 e8 ff eb                                      bl #0x81324c
00818fec  04 00 a0 e1                                      mov r0, r4
00818ff0  0b 1d 84 e2                                      add r1, r4, #0x2c0
00818ff4  94 e8 ff eb                                      bl #0x81324c
00818ff8  04 00 a0 e1                                      mov r0, r4
00818ffc  ba 1f 84 e2                                      add r1, r4, #0x2e8
00819000  91 e8 ff eb                                      bl #0x81324c
00819004  04 00 a0 e1                                      mov r0, r4
00819008  31 1e 84 e2                                      add r1, r4, #0x310
0081900c  8e e8 ff eb                                      bl #0x81324c
00819010  04 00 a0 e1                                      mov r0, r4
00819014  08 10 a0 e1                                      mov r1, r8
00819018  8b e8 ff eb                                      bl #0x81324c
0081901c  04 00 a0 e1                                      mov r0, r4
00819020  07 10 a0 e1                                      mov r1, r7
00819024  88 e8 ff eb                                      bl #0x81324c
00819028  04 00 a0 e1                                      mov r0, r4
0081902c  14 d0 8d e2                                      add sp, sp, #0x14
00819030  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00819034  c8 bc 17 00 84 29 00 00 0c 23 00 00 c8 10 00 00  .byte 0xc8, 0xbc, 0x17, 0x00, 0x84, 0x29, 0x00, 0x00, 0x0c, 0x23, 0x00, 0x00, 0xc8, 0x10, 0x00, 0x00
00819044  68 40 00 00 24 10 00 00 8c 2c 00 00              .byte 0x68, 0x40, 0x00, 0x00, 0x24, 0x10, 0x00, 0x00, 0x8c, 0x2c, 0x00, 0x00
