; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00411e5c, declared_size=44, range_size=44, mode=arm
; class-group: Dropable
; alias: _ZN8DropableC2EP6MenuFXPN7gameswf9characterE
; demangled: Dropable::Dropable(MenuFX*, gameswf::character*)
; decoder-mode: arm
00411e5c  10 40 2d e9                                      push {r4, lr}
00411e60  00 40 a0 e1                                      mov r4, r0
00411e64  00 10 80 e5                                      str r1, [r0]
00411e68  0c 20 80 e5                                      str r2, [r0, #0xc]
00411e6c  00 30 92 e5                                      ldr r3, [r2]
00411e70  02 00 a0 e1                                      mov r0, r2
00411e74  10 10 84 e2                                      add r1, r4, #0x10
00411e78  0f e0 a0 e1                                      mov lr, pc
00411e7c  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00411e80  04 00 a0 e1                                      mov r0, r4
00411e84  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00411e88, declared_size=44, range_size=44, mode=arm
; class-group: Dropable
; alias: _ZN8DropableC1EP6MenuFXPN7gameswf9characterE
; demangled: Dropable::Dropable(MenuFX*, gameswf::character*)
; decoder-mode: arm
00411e88  10 40 2d e9                                      push {r4, lr}
00411e8c  00 40 a0 e1                                      mov r4, r0
00411e90  00 10 80 e5                                      str r1, [r0]
00411e94  0c 20 80 e5                                      str r2, [r0, #0xc]
00411e98  00 30 92 e5                                      ldr r3, [r2]
00411e9c  02 00 a0 e1                                      mov r0, r2
00411ea0  10 10 84 e2                                      add r1, r4, #0x10
00411ea4  0f e0 a0 e1                                      mov lr, pc
00411ea8  2c f1 93 e5                                      ldr pc, [r3, #0x12c]
00411eac  04 00 a0 e1                                      mov r0, r4
00411eb0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00411eb4, declared_size=4, range_size=4, mode=arm
; class-group: Dropable
; alias: _ZN8DropableD2Ev
; demangled: Dropable::~Dropable()
; decoder-mode: arm
00411eb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x00411eb8, declared_size=4, range_size=4, mode=arm
; class-group: Dropable
; alias: _ZN8DropableD1Ev
; demangled: Dropable::~Dropable()
; decoder-mode: arm
00411eb8  1e ff 2f e1                                      bx lr

; FUNCTION 0x00412070, declared_size=20, range_size=20, mode=arm
; class-group: Dropable
; alias: _ZN8Dropable9SendEventEi
; demangled: Dropable::SendEvent(int)
; decoder-mode: arm
00412070  00 30 a0 e1                                      mov r3, r0
00412074  0c 20 90 e5                                      ldr r2, [r0, #0xc]
00412078  01 00 a0 e1                                      mov r0, r1
0041207c  00 10 93 e5                                      ldr r1, [r3]
00412080  c3 ff ff ea                                      b #0x411f94

; FUNCTION 0x00412098, declared_size=200, range_size=200, mode=arm
; class-group: Dropable
; alias: _ZNK8Dropable14IsIntersectingEP8Dragable
; demangled: Dropable::IsIntersecting(Dragable*) const
; decoder-mode: arm
00412098  70 40 2d e9                                      push {r4, r5, r6, lr}
0041209c  00 00 51 e3                                      cmp r1, #0
004120a0  20 d0 4d e2                                      sub sp, sp, #0x20
004120a4  00 40 a0 e1                                      mov r4, r0
004120a8  11 00 00 0a                                      beq #0x4120f4
004120ac  08 10 91 e5                                      ldr r1, [r1, #8]
004120b0  10 00 8d e2                                      add r0, sp, #0x10
004120b4  70 12 00 eb                                      bl #0x416a7c
004120b8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
004120bc  0d 00 a0 e1                                      mov r0, sp
004120c0  6d 12 00 eb                                      bl #0x416a7c
004120c4  10 10 9d e5                                      ldr r1, [sp, #0x10]
004120c8  14 00 9d e5                                      ldr r0, [sp, #0x14]
004120cc  b4 f2 fb eb                                      bl #0x30eba4
004120d0  3f 14 a0 e3                                      mov r1, #0x3f000000
004120d4  24 f3 fb eb                                      bl #0x30ed6c
004120d8  00 10 9d e5                                      ldr r1, [sp]
004120dc  00 40 a0 e1                                      mov r4, r0
004120e0  89 f1 fb eb                                      bl #0x30e70c
004120e4  00 00 50 e3                                      cmp r0, #0
004120e8  1c 50 9d e5                                      ldr r5, [sp, #0x1c]
004120ec  18 60 9d e5                                      ldr r6, [sp, #0x18]
004120f0  02 00 00 0a                                      beq #0x412100
004120f4  00 00 a0 e3                                      mov r0, #0
004120f8  20 d0 8d e2                                      add sp, sp, #0x20
004120fc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00412100  04 00 a0 e1                                      mov r0, r4
00412104  04 10 9d e5                                      ldr r1, [sp, #4]
00412108  7a f0 fb eb                                      bl #0x30e2f8
0041210c  00 00 50 e3                                      cmp r0, #0
00412110  f7 ff ff 1a                                      bne #0x4120f4
00412114  06 10 a0 e1                                      mov r1, r6
00412118  05 00 a0 e1                                      mov r0, r5
0041211c  a0 f2 fb eb                                      bl #0x30eba4
00412120  3f 14 a0 e3                                      mov r1, #0x3f000000
00412124  10 f3 fb eb                                      bl #0x30ed6c
00412128  08 10 9d e5                                      ldr r1, [sp, #8]
0041212c  00 40 a0 e1                                      mov r4, r0
00412130  75 f1 fb eb                                      bl #0x30e70c
00412134  00 00 50 e3                                      cmp r0, #0
00412138  ed ff ff 1a                                      bne #0x4120f4
0041213c  04 00 a0 e1                                      mov r0, r4
00412140  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00412144  6b f0 fb eb                                      bl #0x30e2f8
00412148  00 00 50 e3                                      cmp r0, #0
0041214c  00 00 a0 e3                                      mov r0, #0
00412150  01 00 a0 13                                      movne r0, #1
00412154  01 00 20 e2                                      eor r0, r0, #1
00412158  70 00 ef e6                                      uxtb r0, r0
0041215c  e5 ff ff ea                                      b #0x4120f8

; FUNCTION 0x004126a0, declared_size=740, range_size=740, mode=arm
; class-group: Dropable
; alias: _ZN8Dropable12TestDragableEP8Dragableb
; demangled: Dropable::TestDragable(Dragable*, bool)
; decoder-mode: arm
004126a0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
004126a4  98 42 9f e5                                      ldr r4, [pc, #0x298]
004126a8  98 62 9f e5                                      ldr r6, [pc, #0x298]
004126ac  88 d0 4d e2                                      sub sp, sp, #0x88
004126b0  04 40 8f e0                                      add r4, pc, r4
004126b4  06 30 94 e7                                      ldr r3, [r4, r6]
004126b8  00 70 51 e2                                      subs r7, r1, #0
004126bc  08 80 d0 e5                                      ldrb r8, [r0, #8]
004126c0  00 30 93 e5                                      ldr r3, [r3]
004126c4  00 50 a0 e1                                      mov r5, r0
004126c8  02 90 a0 e1                                      mov sb, r2
004126cc  84 30 8d e5                                      str r3, [sp, #0x84]
004126d0  85 00 00 0a                                      beq #0x4128ec
004126d4  05 00 a0 e1                                      mov r0, r5
004126d8  07 10 a0 e1                                      mov r1, r7
004126dc  6d fe ff eb                                      bl #0x412098
004126e0  00 00 50 e3                                      cmp r0, #0
004126e4  00 a0 a0 e1                                      mov sl, r0
004126e8  08 00 c5 e5                                      strb r0, [r5, #8]
004126ec  21 00 00 1a                                      bne #0x412778
004126f0  00 00 59 e3                                      cmp sb, #0
004126f4  62 00 00 1a                                      bne #0x412884
004126f8  00 00 58 e3                                      cmp r8, #0
004126fc  48 00 00 0a                                      beq #0x412824
00412700  00 00 5a e3                                      cmp sl, #0
00412704  14 00 00 1a                                      bne #0x41275c
00412708  3c 32 9f e5                                      ldr r3, [pc, #0x23c]
0041270c  24 80 8d e2                                      add r8, sp, #0x24
00412710  03 a0 94 e7                                      ldr sl, [r4, r3]
00412714  0a 00 a0 e1                                      mov r0, sl
00412718  5a 94 fc eb                                      bl #0x337888
0041271c  2c 12 9f e5                                      ldr r1, [pc, #0x22c]
00412720  14 20 8d e2                                      add r2, sp, #0x14
00412724  08 00 a0 e1                                      mov r0, r8
00412728  01 10 8f e0                                      add r1, pc, r1
0041272c  6e 06 fc eb                                      bl #0x3140ec
00412730  08 10 a0 e1                                      mov r1, r8
00412734  0a 00 a0 e1                                      mov r0, sl
00412738  d2 94 fc eb                                      bl #0x337a88
0041273c  08 00 a0 e1                                      mov r0, r8
00412740  c3 16 fc eb                                      bl #0x318254
00412744  07 00 a0 e1                                      mov r0, r7
00412748  01 10 a0 e3                                      mov r1, #1
0041274c  4c fe ff eb                                      bl #0x412084
00412750  05 00 a0 e1                                      mov r0, r5
00412754  01 10 a0 e3                                      mov r1, #1
00412758  44 fe ff eb                                      bl #0x412070
0041275c  06 30 94 e7                                      ldr r3, [r4, r6]
00412760  84 20 9d e5                                      ldr r2, [sp, #0x84]
00412764  00 30 93 e5                                      ldr r3, [r3]
00412768  03 00 52 e1                                      cmp r2, r3
0041276c  73 00 00 1a                                      bne #0x412940
00412770  88 d0 8d e2                                      add sp, sp, #0x88
00412774  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00412778  00 00 59 e3                                      cmp sb, #0
0041277c  dd ff ff 0a                                      beq #0x4126f8
00412780  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
00412784  6c 80 8d e2                                      add r8, sp, #0x6c
00412788  03 a0 94 e7                                      ldr sl, [r4, r3]
0041278c  0a 00 a0 e1                                      mov r0, sl
00412790  3c 94 fc eb                                      bl #0x337888
00412794  b8 11 9f e5                                      ldr r1, [pc, #0x1b8]
00412798  20 20 8d e2                                      add r2, sp, #0x20
0041279c  08 00 a0 e1                                      mov r0, r8
004127a0  01 10 8f e0                                      add r1, pc, r1
004127a4  50 06 fc eb                                      bl #0x3140ec
004127a8  08 10 a0 e1                                      mov r1, r8
004127ac  0a 00 a0 e1                                      mov r0, sl
004127b0  b4 94 fc eb                                      bl #0x337a88
004127b4  08 00 a0 e1                                      mov r0, r8
004127b8  a5 16 fc eb                                      bl #0x318254
004127bc  08 00 97 e5                                      ldr r0, [r7, #8]
004127c0  00 30 a0 e3                                      mov r3, #0
004127c4  08 30 cd e5                                      strb r3, [sp, #8]
004127c8  00 00 50 e3                                      cmp r0, #0
004127cc  05 30 a0 e3                                      mov r3, #5
004127d0  09 30 cd e5                                      strb r3, [sp, #9]
004127d4  0c 00 8d e5                                      str r0, [sp, #0xc]
004127d8  00 00 00 0a                                      beq #0x4127e0
004127dc  20 1d 0d eb                                      bl #0x759c64
004127e0  70 11 9f e5                                      ldr r1, [pc, #0x170]
004127e4  70 21 9f e5                                      ldr r2, [pc, #0x170]
004127e8  08 80 8d e2                                      add r8, sp, #8
004127ec  08 30 a0 e1                                      mov r3, r8
004127f0  02 20 8f e0                                      add r2, pc, r2
004127f4  00 00 95 e5                                      ldr r0, [r5]
004127f8  01 10 8f e0                                      add r1, pc, r1
004127fc  74 63 0e eb                                      bl #0x7ab5d4
00412800  07 00 a0 e1                                      mov r0, r7
00412804  02 10 a0 e3                                      mov r1, #2
00412808  1d fe ff eb                                      bl #0x412084
0041280c  05 00 a0 e1                                      mov r0, r5
00412810  02 10 a0 e3                                      mov r1, #2
00412814  15 fe ff eb                                      bl #0x412070
00412818  08 00 a0 e1                                      mov r0, r8
0041281c  40 12 0e eb                                      bl #0x797124
00412820  cd ff ff ea                                      b #0x41275c
00412824  00 00 5a e3                                      cmp sl, #0
00412828  cb ff ff 0a                                      beq #0x41275c
0041282c  18 31 9f e5                                      ldr r3, [pc, #0x118]
00412830  3c a0 8d e2                                      add sl, sp, #0x3c
00412834  03 90 94 e7                                      ldr sb, [r4, r3]
00412838  09 00 a0 e1                                      mov r0, sb
0041283c  11 94 fc eb                                      bl #0x337888
00412840  18 11 9f e5                                      ldr r1, [pc, #0x118]
00412844  18 20 8d e2                                      add r2, sp, #0x18
00412848  0a 00 a0 e1                                      mov r0, sl
0041284c  01 10 8f e0                                      add r1, pc, r1
00412850  25 06 fc eb                                      bl #0x3140ec
00412854  0a 10 a0 e1                                      mov r1, sl
00412858  09 00 a0 e1                                      mov r0, sb
0041285c  89 94 fc eb                                      bl #0x337a88
00412860  0a 00 a0 e1                                      mov r0, sl
00412864  7a 16 fc eb                                      bl #0x318254
00412868  07 00 a0 e1                                      mov r0, r7
0041286c  08 10 a0 e1                                      mov r1, r8
00412870  03 fe ff eb                                      bl #0x412084
00412874  05 00 a0 e1                                      mov r0, r5
00412878  08 10 a0 e1                                      mov r1, r8
0041287c  fb fd ff eb                                      bl #0x412070
00412880  b5 ff ff ea                                      b #0x41275c
00412884  c0 30 9f e5                                      ldr r3, [pc, #0xc0]
00412888  54 80 8d e2                                      add r8, sp, #0x54
0041288c  03 90 94 e7                                      ldr sb, [r4, r3]
00412890  09 00 a0 e1                                      mov r0, sb
00412894  fb 93 fc eb                                      bl #0x337888
00412898  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
0041289c  1c 20 8d e2                                      add r2, sp, #0x1c
004128a0  08 00 a0 e1                                      mov r0, r8
004128a4  01 10 8f e0                                      add r1, pc, r1
004128a8  0f 06 fc eb                                      bl #0x3140ec
004128ac  08 10 a0 e1                                      mov r1, r8
004128b0  09 00 a0 e1                                      mov r0, sb
004128b4  73 94 fc eb                                      bl #0x337a88
004128b8  08 00 a0 e1                                      mov r0, r8
004128bc  64 16 fc eb                                      bl #0x318254
004128c0  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
004128c4  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
004128c8  00 00 95 e5                                      ldr r0, [r5]
004128cc  01 10 8f e0                                      add r1, pc, r1
004128d0  02 20 8f e0                                      add r2, pc, r2
004128d4  0a 30 a0 e1                                      mov r3, sl
004128d8  7a 63 0e eb                                      bl #0x7ab6c8
004128dc  07 00 a0 e1                                      mov r0, r7
004128e0  03 10 a0 e3                                      mov r1, #3
004128e4  e6 fd ff eb                                      bl #0x412084
004128e8  9b ff ff ea                                      b #0x41275c
004128ec  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
004128f0  03 30 94 e7                                      ldr r3, [r4, r3]
004128f4  00 30 93 e5                                      ldr r3, [r3]
004128f8  02 00 53 e3                                      cmp r3, #2
004128fc  00 70 87 05                                      streq r7, [r7]
00412900  73 ff ff 0a                                      beq #0x4126d4
00412904  01 00 53 e3                                      cmp r3, #1
00412908  71 ff ff 1a                                      bne #0x4126d4
0041290c  60 00 9f e5                                      ldr r0, [pc, #0x60]
00412910  60 10 9f e5                                      ldr r1, [pc, #0x60]
00412914  60 20 9f e5                                      ldr r2, [pc, #0x60]
00412918  00 00 94 e7                                      ldr r0, [r4, r0]
0041291c  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00412920  d1 c0 a0 e3                                      mov ip, #0xd1
00412924  01 10 8f e0                                      add r1, pc, r1
00412928  02 20 8f e0                                      add r2, pc, r2
0041292c  03 30 8f e0                                      add r3, pc, r3
00412930  a8 00 80 e2                                      add r0, r0, #0xa8
00412934  00 c0 8d e5                                      str ip, [sp]
00412938  b1 ed fb eb                                      bl #0x30e004
0041293c  64 ff ff ea                                      b #0x4126d4
00412940  72 ee fb eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00412944  e0 23 58 00 ac 40 00 00 84 08 00 00 e0 58 4b 00  .byte 0xe0, 0x23, 0x58, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xe0, 0x58, 0x4b, 0x00
00412954  68 58 4b 00 08 0a 4b 00 30 58 4b 00 bc 57 4b 00  .byte 0x68, 0x58, 0x4b, 0x00, 0x08, 0x0a, 0x4b, 0x00, 0x30, 0x58, 0x4b, 0x00, 0xbc, 0x57, 0x4b, 0x00
00412964  64 57 4b 00 34 09 4b 00 50 57 4b 00 c0 39 00 00  .byte 0x64, 0x57, 0x4b, 0x00, 0x34, 0x09, 0x4b, 0x00, 0x50, 0x57, 0x4b, 0x00, 0xc0, 0x39, 0x00, 0x00
00412974  c0 19 00 00 b4 ba 4a 00 80 56 4b 00 94 56 4b 00  .byte 0xc0, 0x19, 0x00, 0x00, 0xb4, 0xba, 0x4a, 0x00, 0x80, 0x56, 0x4b, 0x00, 0x94, 0x56, 0x4b, 0x00
