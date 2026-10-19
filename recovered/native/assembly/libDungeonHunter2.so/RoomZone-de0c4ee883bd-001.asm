; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003964a0, declared_size=8, range_size=8, mode=arm
; class-group: RoomZone
; alias: _ZNK8RoomZone9IsZonableEv
; demangled: RoomZone::IsZonable() const
; decoder-mode: arm
003964a0  00 00 a0 e3                                      mov r0, #0
003964a4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003964a8, declared_size=20, range_size=20, mode=arm
; class-group: RoomZone
; alias: _ZNK8RoomZone14HasBeenVisitedEv
; demangled: RoomZone::HasBeenVisited() const
; decoder-mode: arm
003964a8  8c 33 90 e5                                      ldr r3, [r0, #0x38c]
003964ac  00 00 53 e3                                      cmp r3, #0
003964b0  01 00 a0 03                                      moveq r0, #1
003964b4  fc 03 d3 15                                      ldrbne r0, [r3, #0x3fc]
003964b8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003964bc, declared_size=16, range_size=16, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone10SetVisitedEb
; demangled: RoomZone::SetVisited(bool)
; decoder-mode: arm
003964bc  8c 33 90 e5                                      ldr r3, [r0, #0x38c]
003964c0  00 00 53 e3                                      cmp r3, #0
003964c4  fc 13 c3 15                                      strbne r1, [r3, #0x3fc]
003964c8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003964cc, declared_size=120, range_size=120, mode=arm
; class-group: RoomZone
; alias: _ZNK8RoomZone9HasInsideERK7Point3DIfE
; demangled: RoomZone::HasInside(Point3D<float> const&) const
; decoder-mode: arm
003964cc  70 40 2d e9                                      push {r4, r5, r6, lr}
003964d0  00 50 91 e5                                      ldr r5, [r1]
003964d4  01 60 a0 e1                                      mov r6, r1
003964d8  00 40 a0 e1                                      mov r4, r0
003964dc  05 10 a0 e1                                      mov r1, r5
003964e0  2c 01 90 e5                                      ldr r0, [r0, #0x12c]
003964e4  30 e1 fd eb                                      bl #0x30e9ac
003964e8  00 00 50 e3                                      cmp r0, #0
003964ec  12 00 00 0a                                      beq #0x39653c
003964f0  05 00 a0 e1                                      mov r0, r5
003964f4  38 11 94 e5                                      ldr r1, [r4, #0x138]
003964f8  2b e1 fd eb                                      bl #0x30e9ac
003964fc  00 00 50 e3                                      cmp r0, #0
00396500  0d 00 00 0a                                      beq #0x39653c
00396504  04 50 96 e5                                      ldr r5, [r6, #4]
00396508  30 01 94 e5                                      ldr r0, [r4, #0x130]
0039650c  05 10 a0 e1                                      mov r1, r5
00396510  25 e1 fd eb                                      bl #0x30e9ac
00396514  00 00 50 e3                                      cmp r0, #0
00396518  07 00 00 0a                                      beq #0x39653c
0039651c  05 00 a0 e1                                      mov r0, r5
00396520  3c 11 94 e5                                      ldr r1, [r4, #0x13c]
00396524  20 e1 fd eb                                      bl #0x30e9ac
00396528  00 00 50 e3                                      cmp r0, #0
0039652c  00 00 a0 e3                                      mov r0, #0
00396530  01 00 a0 13                                      movne r0, #1
00396534  70 00 ef e6                                      uxtb r0, r0
00396538  70 80 bd e8                                      pop {r4, r5, r6, pc}
0039653c  00 00 a0 e3                                      mov r0, #0
00396540  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00396544, declared_size=4, range_size=4, mode=arm
; class-group: RoomZone
; alias: _ZNK8RoomZone4DrawEv
; demangled: RoomZone::Draw() const
; decoder-mode: arm
00396544  1e ff 2f e1                                      bx lr

; FUNCTION 0x00396548, declared_size=4, range_size=4, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone8InitPostEv
; demangled: RoomZone::InitPost()
; decoder-mode: arm
00396548  73 04 00 ea                                      b #0x39771c

; FUNCTION 0x0039654c, declared_size=8, range_size=8, mode=arm
; class-group: RoomZone
; alias: _ZThn4_N8RoomZone17DeclarePropertiesEv
; demangled: non-virtual thunk to RoomZone::DeclareProperties()
; decoder-mode: arm
0039654c  04 00 40 e2                                      sub r0, r0, #4
00396550  ff ff ff ea                                      b #0x396554

; FUNCTION 0x00396554, declared_size=4, range_size=4, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone17DeclarePropertiesEv
; demangled: RoomZone::DeclareProperties()
; decoder-mode: arm
00396554  27 06 00 ea                                      b #0x397df8

; FUNCTION 0x00396558, declared_size=108, range_size=108, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZoneC1EN10ObjectBase6GO_IDSE
; demangled: RoomZone::RoomZone(ObjectBase::GO_IDS)
; decoder-mode: arm
00396558  70 40 2d e9                                      push {r4, r5, r6, lr}
0039655c  00 20 a0 e3                                      mov r2, #0
00396560  01 30 a0 e3                                      mov r3, #1
00396564  50 50 9f e5                                      ldr r5, [pc, #0x50]
00396568  00 40 a0 e1                                      mov r4, r0
0039656c  cb 05 00 eb                                      bl #0x397ca0
00396570  48 30 9f e5                                      ldr r3, [pc, #0x48]
00396574  05 50 8f e0                                      add r5, pc, r5
00396578  01 10 a0 e3                                      mov r1, #1
0039657c  03 30 95 e7                                      ldr r3, [r5, r3]
00396580  e5 2f 84 e2                                      add r2, r4, #0x394
00396584  89 13 c4 e5                                      strb r1, [r4, #0x389]
00396588  f4 00 83 e2                                      add r0, r3, #0xf4
0039658c  08 c0 83 e2                                      add ip, r3, #8
00396590  e8 30 83 e2                                      add r3, r3, #0xe8
00396594  04 30 84 e5                                      str r3, [r4, #4]
00396598  00 30 a0 e3                                      mov r3, #0
0039659c  24 00 84 e5                                      str r0, [r4, #0x24]
003965a0  00 c0 84 e5                                      str ip, [r4]
003965a4  90 33 c4 e5                                      strb r3, [r4, #0x390]
003965a8  98 23 84 e5                                      str r2, [r4, #0x398]
003965ac  88 13 c4 e5                                      strb r1, [r4, #0x388]
003965b0  94 23 84 e5                                      str r2, [r4, #0x394]
003965b4  04 00 a0 e1                                      mov r0, r4
003965b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003965bc  1c e5 5f 00 74 27 00 00                          .byte 0x1c, 0xe5, 0x5f, 0x00, 0x74, 0x27, 0x00, 0x00

; FUNCTION 0x003965c4, declared_size=108, range_size=108, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZoneC2EN10ObjectBase6GO_IDSE
; demangled: RoomZone::RoomZone(ObjectBase::GO_IDS)
; decoder-mode: arm
003965c4  70 40 2d e9                                      push {r4, r5, r6, lr}
003965c8  00 20 a0 e3                                      mov r2, #0
003965cc  01 30 a0 e3                                      mov r3, #1
003965d0  50 50 9f e5                                      ldr r5, [pc, #0x50]
003965d4  00 40 a0 e1                                      mov r4, r0
003965d8  b0 05 00 eb                                      bl #0x397ca0
003965dc  48 30 9f e5                                      ldr r3, [pc, #0x48]
003965e0  05 50 8f e0                                      add r5, pc, r5
003965e4  01 10 a0 e3                                      mov r1, #1
003965e8  03 30 95 e7                                      ldr r3, [r5, r3]
003965ec  e5 2f 84 e2                                      add r2, r4, #0x394
003965f0  89 13 c4 e5                                      strb r1, [r4, #0x389]
003965f4  f4 00 83 e2                                      add r0, r3, #0xf4
003965f8  08 c0 83 e2                                      add ip, r3, #8
003965fc  e8 30 83 e2                                      add r3, r3, #0xe8
00396600  04 30 84 e5                                      str r3, [r4, #4]
00396604  00 30 a0 e3                                      mov r3, #0
00396608  24 00 84 e5                                      str r0, [r4, #0x24]
0039660c  00 c0 84 e5                                      str ip, [r4]
00396610  90 33 c4 e5                                      strb r3, [r4, #0x390]
00396614  98 23 84 e5                                      str r2, [r4, #0x398]
00396618  88 13 c4 e5                                      strb r1, [r4, #0x388]
0039661c  94 23 84 e5                                      str r2, [r4, #0x394]
00396620  04 00 a0 e1                                      mov r0, r4
00396624  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00396628  b0 e4 5f 00 74 27 00 00                          .byte 0xb0, 0xe4, 0x5f, 0x00, 0x74, 0x27, 0x00, 0x00

; FUNCTION 0x0039672c, declared_size=116, range_size=116, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone9AddObjectEP10GameObject
; demangled: RoomZone::AddObject(GameObject*)
; decoder-mode: arm
0039672c  30 40 2d e9                                      push {r4, r5, lr}
00396730  00 40 a0 e1                                      mov r4, r0
00396734  94 33 b4 e5                                      ldr r3, [r4, #0x394]!
00396738  0c d0 4d e2                                      sub sp, sp, #0xc
0039673c  00 50 a0 e1                                      mov r5, r0
00396740  04 00 53 e1                                      cmp r3, r4
00396744  06 00 00 0a                                      beq #0x396764
00396748  08 20 93 e5                                      ldr r2, [r3, #8]
0039674c  02 00 51 e1                                      cmp r1, r2
00396750  03 00 00 0a                                      beq #0x396764
00396754  00 30 93 e5                                      ldr r3, [r3]
00396758  03 00 54 e1                                      cmp r4, r3
0039675c  f9 ff ff 1a                                      bne #0x396748
00396760  04 30 a0 e1                                      mov r3, r4
00396764  03 00 54 e1                                      cmp r4, r3
00396768  01 00 00 0a                                      beq #0x396774
0039676c  0c d0 8d e2                                      add sp, sp, #0xc
00396770  30 80 bd e8                                      pop {r4, r5, pc}
00396774  04 00 a0 e1                                      mov r0, r4
00396778  04 10 8d e5                                      str r1, [sp, #4]
0039677c  e2 ff ff eb                                      bl #0x39670c
00396780  04 10 9d e5                                      ldr r1, [sp, #4]
00396784  08 10 80 e5                                      str r1, [r0, #8]
00396788  98 33 95 e5                                      ldr r3, [r5, #0x398]
0039678c  00 40 80 e5                                      str r4, [r0]
00396790  04 30 80 e5                                      str r3, [r0, #4]
00396794  00 00 83 e5                                      str r0, [r3]
00396798  98 03 85 e5                                      str r0, [r5, #0x398]
0039679c  f2 ff ff ea                                      b #0x39676c

; FUNCTION 0x003967a0, declared_size=128, range_size=128, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZoneD2Ev
; demangled: RoomZone::~RoomZone()
; decoder-mode: arm
003967a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003967a4  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003967a8  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
003967ac  00 60 a0 e1                                      mov r6, r0
003967b0  02 20 8f e0                                      add r2, pc, r2
003967b4  94 03 90 e5                                      ldr r0, [r0, #0x394]
003967b8  03 30 92 e7                                      ldr r3, [r2, r3]
003967bc  e5 5f 86 e2                                      add r5, r6, #0x394
003967c0  05 00 50 e1                                      cmp r0, r5
003967c4  f4 10 83 e2                                      add r1, r3, #0xf4
003967c8  08 c0 83 e2                                      add ip, r3, #8
003967cc  e8 30 83 e2                                      add r3, r3, #0xe8
003967d0  00 c0 86 e5                                      str ip, [r6]
003967d4  04 30 86 e5                                      str r3, [r6, #4]
003967d8  24 10 86 e5                                      str r1, [r6, #0x24]
003967dc  01 00 00 1a                                      bne #0x3967e8
003967e0  06 00 00 ea                                      b #0x396800
003967e4  04 00 a0 e1                                      mov r0, r4
003967e8  00 40 90 e5                                      ldr r4, [r0]
003967ec  0c 10 a0 e3                                      mov r1, #0xc
003967f0  c2 c9 0d eb                                      bl #0x708f00
003967f4  05 00 54 e1                                      cmp r4, r5
003967f8  f9 ff ff 1a                                      bne #0x3967e4
003967fc  05 00 a0 e1                                      mov r0, r5
00396800  94 03 86 e5                                      str r0, [r6, #0x394]
00396804  04 00 85 e5                                      str r0, [r5, #4]
00396808  06 00 a0 e1                                      mov r0, r6
0039680c  ec 04 00 eb                                      bl #0x397bc4
00396810  06 00 a0 e1                                      mov r0, r6
00396814  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00396818  e0 e2 5f 00 74 27 00 00                          .byte 0xe0, 0xe2, 0x5f, 0x00, 0x74, 0x27, 0x00, 0x00

; FUNCTION 0x00396820, declared_size=8, range_size=8, mode=arm
; class-group: RoomZone
; alias: _ZThn36_N8RoomZoneD1Ev
; demangled: non-virtual thunk to RoomZone::~RoomZone()
; decoder-mode: arm
00396820  24 00 40 e2                                      sub r0, r0, #0x24
00396824  ff ff ff ea                                      b #0x396828

; FUNCTION 0x00396828, declared_size=128, range_size=128, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZoneD1Ev
; demangled: RoomZone::~RoomZone()
; decoder-mode: arm
00396828  70 40 2d e9                                      push {r4, r5, r6, lr}
0039682c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
00396830  6c 30 9f e5                                      ldr r3, [pc, #0x6c]
00396834  00 60 a0 e1                                      mov r6, r0
00396838  02 20 8f e0                                      add r2, pc, r2
0039683c  94 03 90 e5                                      ldr r0, [r0, #0x394]
00396840  03 30 92 e7                                      ldr r3, [r2, r3]
00396844  e5 5f 86 e2                                      add r5, r6, #0x394
00396848  05 00 50 e1                                      cmp r0, r5
0039684c  f4 10 83 e2                                      add r1, r3, #0xf4
00396850  08 c0 83 e2                                      add ip, r3, #8
00396854  e8 30 83 e2                                      add r3, r3, #0xe8
00396858  00 c0 86 e5                                      str ip, [r6]
0039685c  04 30 86 e5                                      str r3, [r6, #4]
00396860  24 10 86 e5                                      str r1, [r6, #0x24]
00396864  01 00 00 1a                                      bne #0x396870
00396868  06 00 00 ea                                      b #0x396888
0039686c  04 00 a0 e1                                      mov r0, r4
00396870  00 40 90 e5                                      ldr r4, [r0]
00396874  0c 10 a0 e3                                      mov r1, #0xc
00396878  a0 c9 0d eb                                      bl #0x708f00
0039687c  05 00 54 e1                                      cmp r4, r5
00396880  f9 ff ff 1a                                      bne #0x39686c
00396884  05 00 a0 e1                                      mov r0, r5
00396888  94 03 86 e5                                      str r0, [r6, #0x394]
0039688c  04 00 85 e5                                      str r0, [r5, #4]
00396890  06 00 a0 e1                                      mov r0, r6
00396894  ca 04 00 eb                                      bl #0x397bc4
00396898  06 00 a0 e1                                      mov r0, r6
0039689c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003968a0  58 e2 5f 00 74 27 00 00                          .byte 0x58, 0xe2, 0x5f, 0x00, 0x74, 0x27, 0x00, 0x00

; FUNCTION 0x003968a8, declared_size=8, range_size=8, mode=arm
; class-group: RoomZone
; alias: _ZThn36_N8RoomZoneD0Ev
; demangled: non-virtual thunk to RoomZone::~RoomZone()
; decoder-mode: arm
003968a8  24 00 40 e2                                      sub r0, r0, #0x24
003968ac  ff ff ff ea                                      b #0x3968b0

; FUNCTION 0x003968b0, declared_size=28, range_size=28, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZoneD0Ev
; demangled: RoomZone::~RoomZone()
; decoder-mode: arm
003968b0  10 40 2d e9                                      push {r4, lr}
003968b4  00 40 a0 e1                                      mov r4, r0
003968b8  da ff ff eb                                      bl #0x396828
003968bc  04 00 a0 e1                                      mov r0, r4
003968c0  de e6 fd eb                                      bl #0x310440
003968c4  04 00 a0 e1                                      mov r0, r4
003968c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003968cc, declared_size=76, range_size=76, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone12RemoveObjectEP10GameObject
; demangled: RoomZone::RemoveObject(GameObject*)
; decoder-mode: arm
003968cc  94 c3 b0 e5                                      ldr ip, [r0, #0x394]!
003968d0  00 00 5c e1                                      cmp ip, r0
003968d4  06 00 00 0a                                      beq #0x3968f4
003968d8  08 30 9c e5                                      ldr r3, [ip, #8]
003968dc  01 00 53 e1                                      cmp r3, r1
003968e0  03 00 00 0a                                      beq #0x3968f4
003968e4  00 c0 9c e5                                      ldr ip, [ip]
003968e8  0c 00 50 e1                                      cmp r0, ip
003968ec  f9 ff ff 1a                                      bne #0x3968d8
003968f0  00 c0 a0 e1                                      mov ip, r0
003968f4  0c 00 50 e1                                      cmp r0, ip
003968f8  1e ff 2f 01                                      bxeq lr
003968fc  00 30 9c e5                                      ldr r3, [ip]
00396900  04 20 9c e5                                      ldr r2, [ip, #4]
00396904  0c 00 a0 e1                                      mov r0, ip
00396908  0c 10 a0 e3                                      mov r1, #0xc
0039690c  00 30 82 e5                                      str r3, [r2]
00396910  04 20 83 e5                                      str r2, [r3, #4]
00396914  79 c9 0d ea                                      b #0x708f00

; FUNCTION 0x00396918, declared_size=376, range_size=376, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone10DeActivateEv
; demangled: RoomZone::DeActivate()
; decoder-mode: arm
00396918  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0039691c  54 71 9f e5                                      ldr r7, [pc, #0x154]
00396920  54 21 9f e5                                      ldr r2, [pc, #0x154]
00396924  54 a1 9f e5                                      ldr sl, [pc, #0x154]
00396928  07 70 8f e0                                      add r7, pc, r7
0039692c  02 30 97 e7                                      ldr r3, [r7, r2]
00396930  0a 50 97 e7                                      ldr r5, [r7, sl]
00396934  4c d0 4d e2                                      sub sp, sp, #0x4c
00396938  00 30 93 e5                                      ldr r3, [r3]
0039693c  00 80 a0 e1                                      mov r8, r0
00396940  05 00 a0 e1                                      mov r0, r5
00396944  44 30 8d e5                                      str r3, [sp, #0x44]
00396948  00 20 8d e5                                      str r2, [sp]
0039694c  cd 83 fe eb                                      bl #0x337888
00396950  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00396954  2c 40 8d e2                                      add r4, sp, #0x2c
00396958  10 20 8d e2                                      add r2, sp, #0x10
0039695c  01 10 8f e0                                      add r1, pc, r1
00396960  04 00 a0 e1                                      mov r0, r4
00396964  e0 f5 fd eb                                      bl #0x3140ec
00396968  05 00 a0 e1                                      mov r0, r5
0039696c  04 10 a0 e1                                      mov r1, r4
00396970  44 84 fe eb                                      bl #0x337a88
00396974  40 00 9d e5                                      ldr r0, [sp, #0x40]
00396978  04 00 50 e1                                      cmp r0, r4
0039697c  06 00 00 0a                                      beq #0x39699c
00396980  00 00 50 e3                                      cmp r0, #0
00396984  04 00 00 0a                                      beq #0x39699c
00396988  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
0039698c  01 10 60 e0                                      rsb r1, r0, r1
00396990  80 00 51 e3                                      cmp r1, #0x80
00396994  34 00 00 8a                                      bhi #0x396a6c
00396998  58 c9 0d eb                                      bl #0x708f00
0039699c  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
003969a0  94 43 b8 e5                                      ldr r4, [r8, #0x394]!
003969a4  e0 90 9f e5                                      ldr sb, [pc, #0xe0]
003969a8  03 30 97 e7                                      ldr r3, [r7, r3]
003969ac  04 00 58 e1                                      cmp r8, r4
003969b0  09 90 8f e0                                      add sb, pc, sb
003969b4  38 30 93 e5                                      ldr r3, [r3, #0x38]
003969b8  14 50 8d e2                                      add r5, sp, #0x14
003969bc  0c b0 8d e2                                      add fp, sp, #0xc
003969c0  04 30 8d e5                                      str r3, [sp, #4]
003969c4  1a 00 00 0a                                      beq #0x396a34
003969c8  08 00 94 e5                                      ldr r0, [r4, #8]
003969cc  00 00 50 e3                                      cmp r0, #0
003969d0  00 00 00 0a                                      beq #0x3969d8
003969d4  30 d7 ff eb                                      bl #0x38c69c
003969d8  0a 60 97 e7                                      ldr r6, [r7, sl]
003969dc  06 00 a0 e1                                      mov r0, r6
003969e0  a8 83 fe eb                                      bl #0x337888
003969e4  09 10 a0 e1                                      mov r1, sb
003969e8  0b 20 a0 e1                                      mov r2, fp
003969ec  05 00 a0 e1                                      mov r0, r5
003969f0  bd f5 fd eb                                      bl #0x3140ec
003969f4  06 00 a0 e1                                      mov r0, r6
003969f8  05 10 a0 e1                                      mov r1, r5
003969fc  21 84 fe eb                                      bl #0x337a88
00396a00  28 00 9d e5                                      ldr r0, [sp, #0x28]
00396a04  05 00 50 e1                                      cmp r0, r5
00396a08  06 00 00 0a                                      beq #0x396a28
00396a0c  00 00 50 e3                                      cmp r0, #0
00396a10  04 00 00 0a                                      beq #0x396a28
00396a14  14 10 9d e5                                      ldr r1, [sp, #0x14]
00396a18  01 10 60 e0                                      rsb r1, r0, r1
00396a1c  80 00 51 e3                                      cmp r1, #0x80
00396a20  0e 00 00 8a                                      bhi #0x396a60
00396a24  35 c9 0d eb                                      bl #0x708f00
00396a28  00 40 94 e5                                      ldr r4, [r4]
00396a2c  04 00 58 e1                                      cmp r8, r4
00396a30  e4 ff ff 1a                                      bne #0x3969c8
00396a34  04 00 9d e5                                      ldr r0, [sp, #4]
00396a38  08 10 a0 e1                                      mov r1, r8
00396a3c  5e bd fe eb                                      bl #0x345fbc
00396a40  00 20 9d e5                                      ldr r2, [sp]
00396a44  02 30 97 e7                                      ldr r3, [r7, r2]
00396a48  44 20 9d e5                                      ldr r2, [sp, #0x44]
00396a4c  00 30 93 e5                                      ldr r3, [r3]
00396a50  03 00 52 e1                                      cmp r2, r3
00396a54  06 00 00 1a                                      bne #0x396a74
00396a58  4c d0 8d e2                                      add sp, sp, #0x4c
00396a5c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00396a60  76 e6 fd eb                                      bl #0x310440
00396a64  00 40 94 e5                                      ldr r4, [r4]
00396a68  ef ff ff ea                                      b #0x396a2c
00396a6c  73 e6 fd eb                                      bl #0x310440
00396a70  c9 ff ff ea                                      b #0x39699c
00396a74  25 de fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00396a78  68 e1 5f 00 ac 40 00 00 84 08 00 00 34 c0 52 00  .byte 0x68, 0xe1, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x34, 0xc0, 0x52, 0x00
00396a88  f4 37 00 00 00 c0 52 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x00, 0xc0, 0x52, 0x00

; FUNCTION 0x00396a90, declared_size=436, range_size=436, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone16AddInitialObjectEP10GameObject
; demangled: RoomZone::AddInitialObject(GameObject*)
; decoder-mode: arm
00396a90  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00396a94  94 41 9f e5                                      ldr r4, [pc, #0x194]
00396a98  94 71 9f e5                                      ldr r7, [pc, #0x194]
00396a9c  44 d0 4d e2                                      sub sp, sp, #0x44
00396aa0  04 40 8f e0                                      add r4, pc, r4
00396aa4  07 30 94 e7                                      ldr r3, [r4, r7]
00396aa8  00 50 51 e2                                      subs r5, r1, #0
00396aac  00 60 a0 e1                                      mov r6, r0
00396ab0  00 30 93 e5                                      ldr r3, [r3]
00396ab4  3c 30 8d e5                                      str r3, [sp, #0x3c]
00396ab8  05 00 00 0a                                      beq #0x396ad4
00396abc  00 30 95 e5                                      ldr r3, [r5]
00396ac0  05 00 a0 e1                                      mov r0, r5
00396ac4  0f e0 a0 e1                                      mov lr, pc
00396ac8  c4 f0 93 e5                                      ldr pc, [r3, #0xc4]
00396acc  00 00 50 e3                                      cmp r0, #0
00396ad0  07 00 00 1a                                      bne #0x396af4
00396ad4  00 00 a0 e3                                      mov r0, #0
00396ad8  07 30 94 e7                                      ldr r3, [r4, r7]
00396adc  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00396ae0  00 30 93 e5                                      ldr r3, [r3]
00396ae4  03 00 52 e1                                      cmp r2, r3
00396ae8  4f 00 00 1a                                      bne #0x396c2c
00396aec  44 d0 8d e2                                      add sp, sp, #0x44
00396af0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00396af4  60 81 95 e5                                      ldr r8, [r5, #0x160]
00396af8  2c 01 96 e5                                      ldr r0, [r6, #0x12c]
00396afc  08 10 a0 e1                                      mov r1, r8
00396b00  a9 df fd eb                                      bl #0x30e9ac
00396b04  00 00 50 e3                                      cmp r0, #0
00396b08  f1 ff ff 0a                                      beq #0x396ad4
00396b0c  08 00 a0 e1                                      mov r0, r8
00396b10  38 11 96 e5                                      ldr r1, [r6, #0x138]
00396b14  a4 df fd eb                                      bl #0x30e9ac
00396b18  00 00 50 e3                                      cmp r0, #0
00396b1c  ec ff ff 0a                                      beq #0x396ad4
00396b20  64 81 95 e5                                      ldr r8, [r5, #0x164]
00396b24  30 01 96 e5                                      ldr r0, [r6, #0x130]
00396b28  08 10 a0 e1                                      mov r1, r8
00396b2c  9e df fd eb                                      bl #0x30e9ac
00396b30  00 00 50 e3                                      cmp r0, #0
00396b34  e6 ff ff 0a                                      beq #0x396ad4
00396b38  08 00 a0 e1                                      mov r0, r8
00396b3c  3c 11 96 e5                                      ldr r1, [r6, #0x13c]
00396b40  99 df fd eb                                      bl #0x30e9ac
00396b44  00 00 50 e3                                      cmp r0, #0
00396b48  e1 ff ff 0a                                      beq #0x396ad4
00396b4c  ef 32 d5 e5                                      ldrb r3, [r5, #0x2ef]
00396b50  00 00 53 e3                                      cmp r3, #0
00396b54  24 00 00 0a                                      beq #0x396bec
00396b58  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00396b5c  24 80 8d e2                                      add r8, sp, #0x24
00396b60  03 a0 94 e7                                      ldr sl, [r4, r3]
00396b64  0a 00 a0 e1                                      mov r0, sl
00396b68  46 83 fe eb                                      bl #0x337888
00396b6c  c8 10 9f e5                                      ldr r1, [pc, #0xc8]
00396b70  08 20 8d e2                                      add r2, sp, #8
00396b74  08 00 a0 e1                                      mov r0, r8
00396b78  01 10 8f e0                                      add r1, pc, r1
00396b7c  5a f5 fd eb                                      bl #0x3140ec
00396b80  08 10 a0 e1                                      mov r1, r8
00396b84  0a 00 a0 e1                                      mov r0, sl
00396b88  be 83 fe eb                                      bl #0x337a88
00396b8c  08 00 a0 e1                                      mov r0, r8
00396b90  af 05 fe eb                                      bl #0x318254
00396b94  f4 02 95 e5                                      ldr r0, [r5, #0x2f4]
00396b98  00 00 50 e3                                      cmp r0, #0
00396b9c  01 00 00 0a                                      beq #0x396ba8
00396ba0  05 10 a0 e1                                      mov r1, r5
00396ba4  48 ff ff eb                                      bl #0x3968cc
00396ba8  01 80 a0 e3                                      mov r8, #1
00396bac  05 00 a0 e1                                      mov r0, r5
00396bb0  e5 af 86 e2                                      add sl, r6, #0x394
00396bb4  f4 62 85 e5                                      str r6, [r5, #0x2f4]
00396bb8  ef 82 c5 e5                                      strb r8, [r5, #0x2ef]
00396bbc  d3 d6 ff eb                                      bl #0x38c710
00396bc0  0a 00 a0 e1                                      mov r0, sl
00396bc4  d0 fe ff eb                                      bl #0x39670c
00396bc8  08 50 80 e5                                      str r5, [r0, #8]
00396bcc  98 23 96 e5                                      ldr r2, [r6, #0x398]
00396bd0  00 30 a0 e1                                      mov r3, r0
00396bd4  00 a0 80 e5                                      str sl, [r0]
00396bd8  04 20 83 e5                                      str r2, [r3, #4]
00396bdc  08 00 a0 e1                                      mov r0, r8
00396be0  00 30 82 e5                                      str r3, [r2]
00396be4  98 33 86 e5                                      str r3, [r6, #0x398]
00396be8  ba ff ff ea                                      b #0x396ad8
00396bec  44 30 9f e5                                      ldr r3, [pc, #0x44]
00396bf0  0c 80 8d e2                                      add r8, sp, #0xc
00396bf4  03 a0 94 e7                                      ldr sl, [r4, r3]
00396bf8  0a 00 a0 e1                                      mov r0, sl
00396bfc  21 83 fe eb                                      bl #0x337888
00396c00  38 10 9f e5                                      ldr r1, [pc, #0x38]
00396c04  04 20 8d e2                                      add r2, sp, #4
00396c08  08 00 a0 e1                                      mov r0, r8
00396c0c  01 10 8f e0                                      add r1, pc, r1
00396c10  35 f5 fd eb                                      bl #0x3140ec
00396c14  0a 00 a0 e1                                      mov r0, sl
00396c18  08 10 a0 e1                                      mov r1, r8
00396c1c  99 83 fe eb                                      bl #0x337a88
00396c20  08 00 a0 e1                                      mov r0, r8
00396c24  8a 05 fe eb                                      bl #0x318254
00396c28  de ff ff ea                                      b #0x396ba8
00396c2c  b7 dd fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00396c30  f0 df 5f 00 ac 40 00 00 84 08 00 00 58 be 52 00  .byte 0xf0, 0xdf, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x58, 0xbe, 0x52, 0x00
00396c40  c4 bd 52 00                                      .byte 0xc4, 0xbd, 0x52, 0x00

; FUNCTION 0x00396c44, declared_size=224, range_size=224, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone14InitObjectListEv
; demangled: RoomZone::InitObjectList()
; decoder-mode: arm
00396c44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00396c48  90 23 d0 e5                                      ldrb r2, [r0, #0x390]
00396c4c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00396c50  14 d0 4d e2                                      sub sp, sp, #0x14
00396c54  00 00 52 e3                                      cmp r2, #0
00396c58  00 60 a0 e1                                      mov r6, r0
00396c5c  03 30 8f e0                                      add r3, pc, r3
00396c60  1e 00 00 1a                                      bne #0x396ce0
00396c64  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00396c68  04 50 8d e2                                      add r5, sp, #4
00396c6c  02 30 93 e7                                      ldr r3, [r3, r2]
00396c70  38 30 93 e5                                      ldr r3, [r3, #0x38]
00396c74  14 40 93 e5                                      ldr r4, [r3, #0x14]
00396c78  0c 70 83 e2                                      add r7, r3, #0xc
00396c7c  04 00 57 e1                                      cmp r7, r4
00396c80  14 00 00 0a                                      beq #0x396cd8
00396c84  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00396c88  00 00 51 e3                                      cmp r1, #0
00396c8c  04 00 00 0a                                      beq #0x396ca4
00396c90  05 00 a0 e1                                      mov r0, r5
00396c94  24 9c fe eb                                      bl #0x33dd2c
00396c98  05 00 a0 e1                                      mov r0, r5
00396c9c  90 a4 fe eb                                      bl #0x33fee4
00396ca0  00 10 a0 e1                                      mov r1, r0
00396ca4  06 00 a0 e1                                      mov r0, r6
00396ca8  78 ff ff eb                                      bl #0x396a90
00396cac  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00396cb0  00 00 52 e3                                      cmp r2, #0
00396cb4  01 00 00 1a                                      bne #0x396cc0
00396cb8  0a 00 00 ea                                      b #0x396ce8
00396cbc  03 20 a0 e1                                      mov r2, r3
00396cc0  08 30 92 e5                                      ldr r3, [r2, #8]
00396cc4  00 00 53 e3                                      cmp r3, #0
00396cc8  fb ff ff 1a                                      bne #0x396cbc
00396ccc  02 40 a0 e1                                      mov r4, r2
00396cd0  04 00 57 e1                                      cmp r7, r4
00396cd4  ea ff ff 1a                                      bne #0x396c84
00396cd8  01 30 a0 e3                                      mov r3, #1
00396cdc  90 33 c6 e5                                      strb r3, [r6, #0x390]
00396ce0  14 d0 8d e2                                      add sp, sp, #0x14
00396ce4  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
00396ce8  04 30 94 e5                                      ldr r3, [r4, #4]
00396cec  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00396cf0  01 00 54 e1                                      cmp r4, r1
00396cf4  05 00 00 1a                                      bne #0x396d10
00396cf8  03 40 a0 e1                                      mov r4, r3
00396cfc  04 30 93 e5                                      ldr r3, [r3, #4]
00396d00  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00396d04  04 00 52 e1                                      cmp r2, r4
00396d08  fa ff ff 0a                                      beq #0x396cf8
00396d0c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00396d10  02 00 53 e1                                      cmp r3, r2
00396d14  03 40 a0 11                                      movne r4, r3
00396d18  d7 ff ff ea                                      b #0x396c7c
; mapping-symbol data/literal pool
00396d1c  34 de 5f 00 f4 37 00 00                          .byte 0x34, 0xde, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00396d24, declared_size=376, range_size=376, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone8ActivateEv
; demangled: RoomZone::Activate()
; decoder-mode: arm
00396d24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00396d28  54 71 9f e5                                      ldr r7, [pc, #0x154]
00396d2c  54 21 9f e5                                      ldr r2, [pc, #0x154]
00396d30  54 a1 9f e5                                      ldr sl, [pc, #0x154]
00396d34  07 70 8f e0                                      add r7, pc, r7
00396d38  02 30 97 e7                                      ldr r3, [r7, r2]
00396d3c  0a 50 97 e7                                      ldr r5, [r7, sl]
00396d40  4c d0 4d e2                                      sub sp, sp, #0x4c
00396d44  00 30 93 e5                                      ldr r3, [r3]
00396d48  00 80 a0 e1                                      mov r8, r0
00396d4c  05 00 a0 e1                                      mov r0, r5
00396d50  44 30 8d e5                                      str r3, [sp, #0x44]
00396d54  00 20 8d e5                                      str r2, [sp]
00396d58  ca 82 fe eb                                      bl #0x337888
00396d5c  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00396d60  2c 40 8d e2                                      add r4, sp, #0x2c
00396d64  10 20 8d e2                                      add r2, sp, #0x10
00396d68  01 10 8f e0                                      add r1, pc, r1
00396d6c  04 00 a0 e1                                      mov r0, r4
00396d70  dd f4 fd eb                                      bl #0x3140ec
00396d74  05 00 a0 e1                                      mov r0, r5
00396d78  04 10 a0 e1                                      mov r1, r4
00396d7c  41 83 fe eb                                      bl #0x337a88
00396d80  40 00 9d e5                                      ldr r0, [sp, #0x40]
00396d84  04 00 50 e1                                      cmp r0, r4
00396d88  06 00 00 0a                                      beq #0x396da8
00396d8c  00 00 50 e3                                      cmp r0, #0
00396d90  04 00 00 0a                                      beq #0x396da8
00396d94  2c 10 9d e5                                      ldr r1, [sp, #0x2c]
00396d98  01 10 60 e0                                      rsb r1, r0, r1
00396d9c  80 00 51 e3                                      cmp r1, #0x80
00396da0  34 00 00 8a                                      bhi #0x396e78
00396da4  55 c8 0d eb                                      bl #0x708f00
00396da8  e4 30 9f e5                                      ldr r3, [pc, #0xe4]
00396dac  94 43 b8 e5                                      ldr r4, [r8, #0x394]!
00396db0  e0 90 9f e5                                      ldr sb, [pc, #0xe0]
00396db4  03 30 97 e7                                      ldr r3, [r7, r3]
00396db8  04 00 58 e1                                      cmp r8, r4
00396dbc  09 90 8f e0                                      add sb, pc, sb
00396dc0  38 30 93 e5                                      ldr r3, [r3, #0x38]
00396dc4  14 50 8d e2                                      add r5, sp, #0x14
00396dc8  0c b0 8d e2                                      add fp, sp, #0xc
00396dcc  04 30 8d e5                                      str r3, [sp, #4]
00396dd0  1a 00 00 0a                                      beq #0x396e40
00396dd4  08 00 94 e5                                      ldr r0, [r4, #8]
00396dd8  00 00 50 e3                                      cmp r0, #0
00396ddc  00 00 00 0a                                      beq #0x396de4
00396de0  4a d6 ff eb                                      bl #0x38c710
00396de4  0a 60 97 e7                                      ldr r6, [r7, sl]
00396de8  06 00 a0 e1                                      mov r0, r6
00396dec  a5 82 fe eb                                      bl #0x337888
00396df0  09 10 a0 e1                                      mov r1, sb
00396df4  0b 20 a0 e1                                      mov r2, fp
00396df8  05 00 a0 e1                                      mov r0, r5
00396dfc  ba f4 fd eb                                      bl #0x3140ec
00396e00  06 00 a0 e1                                      mov r0, r6
00396e04  05 10 a0 e1                                      mov r1, r5
00396e08  1e 83 fe eb                                      bl #0x337a88
00396e0c  28 00 9d e5                                      ldr r0, [sp, #0x28]
00396e10  05 00 50 e1                                      cmp r0, r5
00396e14  06 00 00 0a                                      beq #0x396e34
00396e18  00 00 50 e3                                      cmp r0, #0
00396e1c  04 00 00 0a                                      beq #0x396e34
00396e20  14 10 9d e5                                      ldr r1, [sp, #0x14]
00396e24  01 10 60 e0                                      rsb r1, r0, r1
00396e28  80 00 51 e3                                      cmp r1, #0x80
00396e2c  0e 00 00 8a                                      bhi #0x396e6c
00396e30  32 c8 0d eb                                      bl #0x708f00
00396e34  00 40 94 e5                                      ldr r4, [r4]
00396e38  04 00 58 e1                                      cmp r8, r4
00396e3c  e4 ff ff 1a                                      bne #0x396dd4
00396e40  04 00 9d e5                                      ldr r0, [sp, #4]
00396e44  08 10 a0 e1                                      mov r1, r8
00396e48  54 ae fe eb                                      bl #0x3427a0
00396e4c  00 20 9d e5                                      ldr r2, [sp]
00396e50  02 30 97 e7                                      ldr r3, [r7, r2]
00396e54  44 20 9d e5                                      ldr r2, [sp, #0x44]
00396e58  00 30 93 e5                                      ldr r3, [r3]
00396e5c  03 00 52 e1                                      cmp r2, r3
00396e60  06 00 00 1a                                      bne #0x396e80
00396e64  4c d0 8d e2                                      add sp, sp, #0x4c
00396e68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00396e6c  73 e5 fd eb                                      bl #0x310440
00396e70  00 40 94 e5                                      ldr r4, [r4]
00396e74  ef ff ff ea                                      b #0x396e38
00396e78  70 e5 fd eb                                      bl #0x310440
00396e7c  c9 ff ff ea                                      b #0x396da8
00396e80  22 dd fd eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00396e84  5c dd 5f 00 ac 40 00 00 84 08 00 00 28 bc 52 00  .byte 0x5c, 0xdd, 0x5f, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x28, 0xbc, 0x52, 0x00
00396e94  f4 37 00 00 f4 bb 52 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0xf4, 0xbb, 0x52, 0x00

; FUNCTION 0x00396e9c, declared_size=556, range_size=556, mode=arm
; class-group: RoomZone
; alias: _ZN8RoomZone6UpdateEv
; demangled: RoomZone::Update()
; decoder-mode: arm
00396e9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00396ea0  18 22 9f e5                                      ldr r2, [pc, #0x218]
00396ea4  18 32 9f e5                                      ldr r3, [pc, #0x218]
00396ea8  3c d0 4d e2                                      sub sp, sp, #0x3c
00396eac  02 20 8f e0                                      add r2, pc, r2
00396eb0  24 30 8d e5                                      str r3, [sp, #0x24]
00396eb4  00 40 a0 e1                                      mov r4, r0
00396eb8  08 20 8d e5                                      str r2, [sp, #8]
00396ebc  03 00 92 e7                                      ldr r0, [r2, r3]
00396ec0  2c 21 94 e5                                      ldr r2, [r4, #0x12c]
00396ec4  20 20 8d e5                                      str r2, [sp, #0x20]
00396ec8  30 31 94 e5                                      ldr r3, [r4, #0x130]
00396ecc  1c 30 8d e5                                      str r3, [sp, #0x1c]
00396ed0  34 21 94 e5                                      ldr r2, [r4, #0x134]
00396ed4  18 20 8d e5                                      str r2, [sp, #0x18]
00396ed8  38 31 94 e5                                      ldr r3, [r4, #0x138]
00396edc  14 30 8d e5                                      str r3, [sp, #0x14]
00396ee0  3c 21 94 e5                                      ldr r2, [r4, #0x13c]
00396ee4  10 20 8d e5                                      str r2, [sp, #0x10]
00396ee8  40 31 94 e5                                      ldr r3, [r4, #0x140]
00396eec  0c 30 8d e5                                      str r3, [sp, #0xc]
00396ef0  a7 21 fe eb                                      bl #0x31f594
00396ef4  28 31 90 e5                                      ldr r3, [r0, #0x128]
00396ef8  00 20 a0 e3                                      mov r2, #0
00396efc  04 20 8d e5                                      str r2, [sp, #4]
00396f00  08 30 93 e5                                      ldr r3, [r3, #8]
00396f04  03 00 a0 e1                                      mov r0, r3
00396f08  00 30 93 e5                                      ldr r3, [r3]
00396f0c  0f e0 a0 e1                                      mov lr, pc
00396f10  44 f1 93 e5                                      ldr pc, [r3, #0x144]
00396f14  00 50 a0 e1                                      mov r5, r0
00396f18  0c 80 95 e5                                      ldr r8, [r5, #0xc]
00396f1c  00 10 a0 e3                                      mov r1, #0
00396f20  08 00 a0 e1                                      mov r0, r8
00396f24  62 dd fd eb                                      bl #0x30e4b4
00396f28  10 70 95 e5                                      ldr r7, [r5, #0x10]
00396f2c  00 00 50 e3                                      cmp r0, #0
00396f30  00 10 a0 e3                                      mov r1, #0
00396f34  07 00 a0 e1                                      mov r0, r7
00396f38  14 b0 9d 05                                      ldreq fp, [sp, #0x14]
00396f3c  20 b0 9d 15                                      ldrne fp, [sp, #0x20]
00396f40  5b dd fd eb                                      bl #0x30e4b4
00396f44  14 60 95 e5                                      ldr r6, [r5, #0x14]
00396f48  00 00 50 e3                                      cmp r0, #0
00396f4c  00 10 a0 e3                                      mov r1, #0
00396f50  06 00 a0 e1                                      mov r0, r6
00396f54  10 90 9d 05                                      ldreq sb, [sp, #0x10]
00396f58  1c 90 9d 15                                      ldrne sb, [sp, #0x1c]
00396f5c  54 dd fd eb                                      bl #0x30e4b4
00396f60  0b 10 a0 e1                                      mov r1, fp
00396f64  00 00 50 e3                                      cmp r0, #0
00396f68  08 00 a0 e1                                      mov r0, r8
00396f6c  0c a0 9d 05                                      ldreq sl, [sp, #0xc]
00396f70  18 a0 9d 15                                      ldrne sl, [sp, #0x18]
00396f74  7c df fd eb                                      bl #0x30ed6c
00396f78  09 10 a0 e1                                      mov r1, sb
00396f7c  00 80 a0 e1                                      mov r8, r0
00396f80  07 00 a0 e1                                      mov r0, r7
00396f84  78 df fd eb                                      bl #0x30ed6c
00396f88  00 10 a0 e1                                      mov r1, r0
00396f8c  08 00 a0 e1                                      mov r0, r8
00396f90  03 df fd eb                                      bl #0x30eba4
00396f94  0a 10 a0 e1                                      mov r1, sl
00396f98  00 70 a0 e1                                      mov r7, r0
00396f9c  06 00 a0 e1                                      mov r0, r6
00396fa0  71 df fd eb                                      bl #0x30ed6c
00396fa4  00 10 a0 e1                                      mov r1, r0
00396fa8  07 00 a0 e1                                      mov r0, r7
00396fac  fc de fd eb                                      bl #0x30eba4
00396fb0  18 10 95 e5                                      ldr r1, [r5, #0x18]
00396fb4  fa de fd eb                                      bl #0x30eba4
00396fb8  00 10 a0 e3                                      mov r1, #0
00396fbc  cd dc fd eb                                      bl #0x30e2f8
00396fc0  00 00 50 e3                                      cmp r0, #0
00396fc4  0d 00 00 0a                                      beq #0x397000
00396fc8  89 33 d4 e5                                      ldrb r3, [r4, #0x389]
00396fcc  00 00 53 e3                                      cmp r3, #0
00396fd0  02 00 00 1a                                      bne #0x396fe0
00396fd4  88 33 d4 e5                                      ldrb r3, [r4, #0x388]
00396fd8  00 00 53 e3                                      cmp r3, #0
00396fdc  01 00 00 0a                                      beq #0x396fe8
00396fe0  04 00 a0 e1                                      mov r0, r4
00396fe4  4b fe ff eb                                      bl #0x396918
00396fe8  00 30 a0 e3                                      mov r3, #0
00396fec  89 33 c4 e5                                      strb r3, [r4, #0x389]
00396ff0  00 30 a0 e3                                      mov r3, #0
00396ff4  88 33 c4 e5                                      strb r3, [r4, #0x388]
00396ff8  3c d0 8d e2                                      add sp, sp, #0x3c
00396ffc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00397000  04 30 9d e5                                      ldr r3, [sp, #4]
00397004  10 50 85 e2                                      add r5, r5, #0x10
00397008  01 30 83 e2                                      add r3, r3, #1
0039700c  06 00 53 e3                                      cmp r3, #6
00397010  04 30 8d e5                                      str r3, [sp, #4]
00397014  bf ff ff 1a                                      bne #0x396f18
00397018  89 33 d4 e5                                      ldrb r3, [r4, #0x389]
0039701c  00 00 53 e3                                      cmp r3, #0
00397020  02 00 00 0a                                      beq #0x397030
00397024  88 33 d4 e5                                      ldrb r3, [r4, #0x388]
00397028  00 00 53 e3                                      cmp r3, #0
0039702c  01 00 00 0a                                      beq #0x397038
00397030  04 00 a0 e1                                      mov r0, r4
00397034  3a ff ff eb                                      bl #0x396d24
00397038  08 20 9d e5                                      ldr r2, [sp, #8]
0039703c  24 30 9d e5                                      ldr r3, [sp, #0x24]
00397040  01 50 a0 e3                                      mov r5, #1
00397044  89 53 c4 e5                                      strb r5, [r4, #0x389]
00397048  03 60 92 e7                                      ldr r6, [r2, r3]
0039704c  04 00 a0 e1                                      mov r0, r4
00397050  38 30 96 e5                                      ldr r3, [r6, #0x38]
00397054  f8 20 93 e5                                      ldr r2, [r3, #0xf8]
00397058  05 20 82 e0                                      add r2, r2, r5
0039705c  f8 20 83 e5                                      str r2, [r3, #0xf8]
00397060  10 fd ff eb                                      bl #0x3964a8
00397064  00 10 50 e2                                      subs r1, r0, #0
00397068  e0 ff ff 1a                                      bne #0x396ff0
0039706c  40 00 96 e5                                      ldr r0, [r6, #0x40]
00397070  05 20 a0 e1                                      mov r2, r5
00397074  ff 5c ff eb                                      bl #0x36e478
00397078  60 36 90 e5                                      ldr r3, [r0, #0x660]
0039707c  00 00 53 e3                                      cmp r3, #0
00397080  da ff ff 0a                                      beq #0x396ff0
00397084  60 c1 93 e5                                      ldr ip, [r3, #0x160]
00397088  64 21 93 e5                                      ldr r2, [r3, #0x164]
0039708c  68 31 93 e5                                      ldr r3, [r3, #0x168]
00397090  04 00 a0 e1                                      mov r0, r4
00397094  2c 10 8d e2                                      add r1, sp, #0x2c
00397098  2c c0 8d e5                                      str ip, [sp, #0x2c]
0039709c  30 20 8d e5                                      str r2, [sp, #0x30]
003970a0  34 30 8d e5                                      str r3, [sp, #0x34]
003970a4  08 fd ff eb                                      bl #0x3964cc
003970a8  00 00 50 e3                                      cmp r0, #0
003970ac  cf ff ff 0a                                      beq #0x396ff0
003970b0  05 10 a0 e1                                      mov r1, r5
003970b4  04 00 a0 e1                                      mov r0, r4
003970b8  ff fc ff eb                                      bl #0x3964bc
003970bc  cb ff ff ea                                      b #0x396ff0
; mapping-symbol data/literal pool
003970c0  e4 db 5f 00 f4 37 00 00                          .byte 0xe4, 0xdb, 0x5f, 0x00, 0xf4, 0x37, 0x00, 0x00
