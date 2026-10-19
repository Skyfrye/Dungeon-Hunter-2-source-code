; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003883f4, declared_size=8, range_size=8, mode=arm
; class-group: ColBox
; alias: _ZNK6ColBox11IsUpdatableEv
; demangled: ColBox::IsUpdatable() const
; decoder-mode: arm
003883f4  00 00 a0 e3                                      mov r0, #0
003883f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003884b0, declared_size=8, range_size=8, mode=arm
; class-group: ColBox
; alias: _ZThn36_N6ColBoxD1Ev
; demangled: non-virtual thunk to ColBox::~ColBox()
; decoder-mode: arm
003884b0  24 00 40 e2                                      sub r0, r0, #0x24
003884b4  ff ff ff ea                                      b #0x3884b8

; FUNCTION 0x003884b8, declared_size=64, range_size=64, mode=arm
; class-group: ColBox
; alias: _ZN6ColBoxD1Ev
; demangled: ColBox::~ColBox()
; decoder-mode: arm
003884b8  30 20 9f e5                                      ldr r2, [pc, #0x30]
003884bc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003884c0  10 40 2d e9                                      push {r4, lr}
003884c4  02 20 8f e0                                      add r2, pc, r2
003884c8  03 30 92 e7                                      ldr r3, [r2, r3]
003884cc  00 40 a0 e1                                      mov r4, r0
003884d0  e4 20 83 e2                                      add r2, r3, #0xe4
003884d4  08 10 83 e2                                      add r1, r3, #8
003884d8  d8 30 83 e2                                      add r3, r3, #0xd8
003884dc  0a 00 80 e8                                      stm r0, {r1, r3}
003884e0  24 20 80 e5                                      str r2, [r0, #0x24]
003884e4  a3 13 00 eb                                      bl #0x38d378
003884e8  04 00 a0 e1                                      mov r0, r4
003884ec  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003884f0  cc c5 60 00 a4 1c 00 00                          .byte 0xcc, 0xc5, 0x60, 0x00, 0xa4, 0x1c, 0x00, 0x00

; FUNCTION 0x003884fc, declared_size=300, range_size=300, mode=arm
; class-group: ColBox
; alias: _ZN6ColBox8InitPostEv
; demangled: ColBox::InitPost()
; decoder-mode: arm
003884fc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00388500  00 40 a0 e1                                      mov r4, r0
00388504  20 d0 4d e2                                      sub sp, sp, #0x20
00388508  53 0e 00 eb                                      bl #0x38be5c
0038850c  74 03 94 e5                                      ldr r0, [r4, #0x374]
00388510  20 11 94 e5                                      ldr r1, [r4, #0x120]
00388514  14 1a fe eb                                      bl #0x30ed6c
00388518  24 11 94 e5                                      ldr r1, [r4, #0x124]
0038851c  00 70 a0 e1                                      mov r7, r0
00388520  74 03 84 e5                                      str r0, [r4, #0x374]
00388524  78 03 94 e5                                      ldr r0, [r4, #0x378]
00388528  0f 1a fe eb                                      bl #0x30ed6c
0038852c  28 11 94 e5                                      ldr r1, [r4, #0x128]
00388530  00 60 a0 e1                                      mov r6, r0
00388534  78 03 84 e5                                      str r0, [r4, #0x378]
00388538  7c 03 94 e5                                      ldr r0, [r4, #0x37c]
0038853c  0a 1a fe eb                                      bl #0x30ed6c
00388540  3f 14 a0 e3                                      mov r1, #0x3f000000
00388544  00 50 a0 e1                                      mov r5, r0
00388548  7c 03 84 e5                                      str r0, [r4, #0x37c]
0038854c  07 00 a0 e1                                      mov r0, r7
00388550  05 1a fe eb                                      bl #0x30ed6c
00388554  02 31 80 e2                                      add r3, r0, #0x80000000
00388558  44 31 84 e5                                      str r3, [r4, #0x144]
0038855c  50 01 84 e5                                      str r0, [r4, #0x150]
00388560  3f 14 a0 e3                                      mov r1, #0x3f000000
00388564  06 00 a0 e1                                      mov r0, r6
00388568  ff 19 fe eb                                      bl #0x30ed6c
0038856c  02 31 80 e2                                      add r3, r0, #0x80000000
00388570  48 31 84 e5                                      str r3, [r4, #0x148]
00388574  54 01 84 e5                                      str r0, [r4, #0x154]
00388578  3f 14 a0 e3                                      mov r1, #0x3f000000
0038857c  05 00 a0 e1                                      mov r0, r5
00388580  f9 19 fe eb                                      bl #0x30ed6c
00388584  02 31 80 e2                                      add r3, r0, #0x80000000
00388588  4c 31 84 e5                                      str r3, [r4, #0x14c]
0038858c  58 01 84 e5                                      str r0, [r4, #0x158]
00388590  84 60 9f e5                                      ldr r6, [pc, #0x84]
00388594  04 00 a0 e1                                      mov r0, r4
00388598  4a 09 00 eb                                      bl #0x38aac8
0038859c  7c 30 9f e5                                      ldr r3, [pc, #0x7c]
003885a0  06 60 8f e0                                      add r6, pc, r6
003885a4  00 10 a0 e3                                      mov r1, #0
003885a8  03 30 96 e7                                      ldr r3, [r6, r3]
003885ac  28 00 a0 e3                                      mov r0, #0x28
003885b0  01 50 a0 e1                                      mov r5, r1
003885b4  44 80 93 e5                                      ldr r8, [r3, #0x44]
003885b8  ec 1f fe eb                                      bl #0x310570
003885bc  01 c0 a0 e3                                      mov ip, #1
003885c0  08 10 a0 e1                                      mov r1, r8
003885c4  0c 30 a0 e1                                      mov r3, ip
003885c8  04 20 a0 e1                                      mov r2, r4
003885cc  ff ef 0f e3                                      movw lr, #0xffff
003885d0  00 70 a0 e1                                      mov r7, r0
003885d4  14 e0 8d e5                                      str lr, [sp, #0x14]
003885d8  00 50 8d e5                                      str r5, [sp]
003885dc  04 50 8d e5                                      str r5, [sp, #4]
003885e0  08 50 8d e5                                      str r5, [sp, #8]
003885e4  0c 50 8d e5                                      str r5, [sp, #0xc]
003885e8  10 c0 8d e5                                      str ip, [sp, #0x10]
003885ec  18 c0 8d e5                                      str ip, [sp, #0x18]
003885f0  3e 9b 03 eb                                      bl #0x46f2f0
003885f4  28 30 9f e5                                      ldr r3, [pc, #0x28]
003885f8  04 00 a0 e1                                      mov r0, r4
003885fc  07 10 a0 e1                                      mov r1, r7
00388600  03 30 96 e7                                      ldr r3, [r6, r3]
00388604  05 20 a0 e1                                      mov r2, r5
00388608  08 30 83 e2                                      add r3, r3, #8
0038860c  00 30 87 e5                                      str r3, [r7]
00388610  20 d0 8d e2                                      add sp, sp, #0x20
00388614  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
00388618  76 31 00 ea                                      b #0x394bf8
; mapping-symbol data/literal pool
0038861c  f0 c4 60 00 f4 37 00 00 cc 2d 00 00              .byte 0xf0, 0xc4, 0x60, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x2d, 0x00, 0x00

; FUNCTION 0x00388e58, declared_size=8, range_size=8, mode=arm
; class-group: ColBox
; alias: _ZThn36_N6ColBoxD0Ev
; demangled: non-virtual thunk to ColBox::~ColBox()
; decoder-mode: arm
00388e58  24 00 40 e2                                      sub r0, r0, #0x24
00388e5c  ff ff ff ea                                      b #0x388e60

; FUNCTION 0x00388e60, declared_size=72, range_size=72, mode=arm
; class-group: ColBox
; alias: _ZN6ColBoxD0Ev
; demangled: ColBox::~ColBox()
; decoder-mode: arm
00388e60  38 20 9f e5                                      ldr r2, [pc, #0x38]
00388e64  38 30 9f e5                                      ldr r3, [pc, #0x38]
00388e68  10 40 2d e9                                      push {r4, lr}
00388e6c  02 20 8f e0                                      add r2, pc, r2
00388e70  03 30 92 e7                                      ldr r3, [r2, r3]
00388e74  00 40 a0 e1                                      mov r4, r0
00388e78  e4 20 83 e2                                      add r2, r3, #0xe4
00388e7c  08 10 83 e2                                      add r1, r3, #8
00388e80  d8 30 83 e2                                      add r3, r3, #0xd8
00388e84  0a 00 80 e8                                      stm r0, {r1, r3}
00388e88  24 20 80 e5                                      str r2, [r0, #0x24]
00388e8c  39 11 00 eb                                      bl #0x38d378
00388e90  04 00 a0 e1                                      mov r0, r4
00388e94  69 1d fe eb                                      bl #0x310440
00388e98  04 00 a0 e1                                      mov r0, r4
00388e9c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00388ea0  24 bc 60 00 a4 1c 00 00                          .byte 0x24, 0xbc, 0x60, 0x00, 0xa4, 0x1c, 0x00, 0x00

; FUNCTION 0x003896f0, declared_size=420, range_size=420, mode=arm
; class-group: ColBox
; alias: _ZNK6ColBox4DrawEv
; demangled: ColBox::Draw() const
; decoder-mode: arm
003896f0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003896f4  84 41 9f e5                                      ldr r4, [pc, #0x184]
003896f8  84 61 9f e5                                      ldr r6, [pc, #0x184]
003896fc  84 21 9f e5                                      ldr r2, [pc, #0x184]
00389700  04 40 8f e0                                      add r4, pc, r4
00389704  06 30 94 e7                                      ldr r3, [r4, r6]
00389708  02 80 94 e7                                      ldr r8, [r4, r2]
0038970c  44 d0 4d e2                                      sub sp, sp, #0x44
00389710  00 30 93 e5                                      ldr r3, [r3]
00389714  00 50 a0 e1                                      mov r5, r0
00389718  08 00 a0 e1                                      mov r0, r8
0038971c  3c 30 8d e5                                      str r3, [sp, #0x3c]
00389720  58 b8 fe eb                                      bl #0x337888
00389724  60 11 9f e5                                      ldr r1, [pc, #0x160]
00389728  24 70 8d e2                                      add r7, sp, #0x24
0038972c  20 20 8d e2                                      add r2, sp, #0x20
00389730  01 10 8f e0                                      add r1, pc, r1
00389734  07 00 a0 e1                                      mov r0, r7
00389738  6b 2a fe eb                                      bl #0x3140ec
0038973c  08 00 a0 e1                                      mov r0, r8
00389740  07 10 a0 e1                                      mov r1, r7
00389744  cf b8 fe eb                                      bl #0x337a88
00389748  00 80 a0 e1                                      mov r8, r0
0038974c  07 00 a0 e1                                      mov r0, r7
00389750  95 28 fe eb                                      bl #0x3139ac
00389754  00 00 58 e3                                      cmp r8, #0
00389758  3b 00 00 0a                                      beq #0x38984c
0038975c  2c a1 9f e5                                      ldr sl, [pc, #0x12c]
00389760  0a 30 94 e7                                      ldr r3, [r4, sl]
00389764  10 30 93 e5                                      ldr r3, [r3, #0x10]
00389768  10 80 93 e5                                      ldr r8, [r3, #0x10]
0038976c  ff 3f 0f e3                                      movw r3, #0xffff
00389770  dc 90 98 e5                                      ldr sb, [r8, #0xdc]
00389774  be 22 d9 e1                                      ldrh r2, [sb, #0x2e]
00389778  03 00 52 e1                                      cmp r2, r3
0038977c  39 00 00 0a                                      beq #0x389868
00389780  1c 70 8d e2                                      add r7, sp, #0x1c
00389784  07 00 a0 e1                                      mov r0, r7
00389788  09 10 a0 e1                                      mov r1, sb
0038978c  01 30 a0 e3                                      mov r3, #1
00389790  53 4e 09 eb                                      bl #0x5dd0e4
00389794  1c 00 9d e5                                      ldr r0, [sp, #0x1c]
00389798  00 00 50 e3                                      cmp r0, #0
0038979c  ff 20 a0 03                                      moveq r2, #0xff
003897a0  01 00 00 0a                                      beq #0x3897ac
003897a4  62 f1 08 eb                                      bl #0x5c5d34
003897a8  00 20 a0 e1                                      mov r2, r0
003897ac  08 00 a0 e1                                      mov r0, r8
003897b0  00 30 a0 e3                                      mov r3, #0
003897b4  07 10 a0 e1                                      mov r1, r7
003897b8  ea 8e 08 eb                                      bl #0x5ad368
003897bc  0a 30 94 e7                                      ldr r3, [r4, sl]
003897c0  42 14 a0 e3                                      mov r1, #0x42000000
003897c4  34 01 95 e5                                      ldr r0, [r5, #0x134]
003897c8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003897cc  12 17 81 e2                                      add r1, r1, #0x480000
003897d0  30 b1 95 e5                                      ldr fp, [r5, #0x130]
003897d4  10 a0 93 e5                                      ldr sl, [r3, #0x10]
003897d8  00 30 9a e5                                      ldr r3, [sl]
003897dc  28 80 93 e5                                      ldr r8, [r3, #0x28]
003897e0  ef 14 fe eb                                      bl #0x30eba4
003897e4  42 14 a0 e3                                      mov r1, #0x42000000
003897e8  00 90 a0 e1                                      mov sb, r0
003897ec  12 17 81 e2                                      add r1, r1, #0x480000
003897f0  40 01 95 e5                                      ldr r0, [r5, #0x140]
003897f4  ea 14 fe eb                                      bl #0x30eba4
003897f8  38 11 95 e5                                      ldr r1, [r5, #0x138]
003897fc  2c c1 95 e5                                      ldr ip, [r5, #0x12c]
00389800  3c e1 95 e5                                      ldr lr, [r5, #0x13c]
00389804  00 20 e0 e3                                      mvn r2, #0
00389808  00 30 a0 e3                                      mov r3, #0
0038980c  1a 30 cd e5                                      strb r3, [sp, #0x1a]
00389810  1b 20 cd e5                                      strb r2, [sp, #0x1b]
00389814  18 20 cd e5                                      strb r2, [sp, #0x18]
00389818  19 30 cd e5                                      strb r3, [sp, #0x19]
0038981c  14 00 8d e5                                      str r0, [sp, #0x14]
00389820  0c 10 8d e5                                      str r1, [sp, #0xc]
00389824  0a 00 a0 e1                                      mov r0, sl
00389828  00 c0 8d e5                                      str ip, [sp]
0038982c  04 b0 8d e5                                      str fp, [sp, #4]
00389830  08 90 8d e5                                      str sb, [sp, #8]
00389834  10 e0 8d e5                                      str lr, [sp, #0x10]
00389838  0d 10 a0 e1                                      mov r1, sp
0038983c  18 20 9d e5                                      ldr r2, [sp, #0x18]
00389840  38 ff 2f e1                                      blx r8
00389844  07 00 a0 e1                                      mov r0, r7
00389848  e6 1c fe eb                                      bl #0x310be8
0038984c  06 30 94 e7                                      ldr r3, [r4, r6]
00389850  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00389854  00 30 93 e5                                      ldr r3, [r3]
00389858  03 00 52 e1                                      cmp r2, r3
0038985c  06 00 00 1a                                      bne #0x38987c
00389860  44 d0 8d e2                                      add sp, sp, #0x44
00389864  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00389868  09 00 a0 e1                                      mov r0, sb
0038986c  01 10 a0 e3                                      mov r1, #1
00389870  ac 3c 09 eb                                      bl #0x5d8b28
00389874  00 20 a0 e1                                      mov r2, r0
00389878  c0 ff ff ea                                      b #0x389780
0038987c  a3 12 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00389880  90 b3 60 00 ac 40 00 00 84 08 00 00 98 8b 53 00  .byte 0x90, 0xb3, 0x60, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x98, 0x8b, 0x53, 0x00
00389890  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00389930, declared_size=8, range_size=8, mode=arm
; class-group: ColBox
; alias: _ZThn4_N6ColBox17DeclarePropertiesEv
; demangled: non-virtual thunk to ColBox::DeclareProperties()
; decoder-mode: arm
00389930  04 00 40 e2                                      sub r0, r0, #4
00389934  ff ff ff ea                                      b #0x389938

; FUNCTION 0x00389938, declared_size=72, range_size=72, mode=arm
; class-group: ColBox
; alias: _ZN6ColBox17DeclarePropertiesEv
; demangled: ColBox::DeclareProperties()
; decoder-mode: arm
00389938  10 40 2d e9                                      push {r4, lr}
0038993c  10 d0 4d e2                                      sub sp, sp, #0x10
00389940  00 40 a0 e1                                      mov r4, r0
00389944  67 0d 00 eb                                      bl #0x38cee8
00389948  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
0038994c  43 c4 a0 e3                                      mov ip, #0x43000000
00389950  12 c7 8c e2                                      add ip, ip, #0x480000
00389954  dd 2f 84 e2                                      add r2, r4, #0x374
00389958  01 10 8f e0                                      add r1, pc, r1
0038995c  04 00 84 e2                                      add r0, r4, #4
00389960  04 30 8d e2                                      add r3, sp, #4
00389964  0c c0 8d e5                                      str ip, [sp, #0xc]
00389968  04 c0 8d e5                                      str ip, [sp, #4]
0038996c  08 c0 8d e5                                      str ip, [sp, #8]
00389970  c7 ff ff eb                                      bl #0x389894
00389974  10 d0 8d e2                                      add sp, sp, #0x10
00389978  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0038997c  88 89 53 00                                      .byte 0x88, 0x89, 0x53, 0x00
