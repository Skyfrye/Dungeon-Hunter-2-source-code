; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00514710, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZN17TiXmlAttributeSet3AddEP14TiXmlAttribute
; demangled: TiXmlAttributeSet::Add(TiXmlAttribute*)
; decoder-mode: arm
00514710  48 00 81 e5                                      str r0, [r1, #0x48]
00514714  44 30 90 e5                                      ldr r3, [r0, #0x44]
00514718  44 30 81 e5                                      str r3, [r1, #0x44]
0051471c  44 30 90 e5                                      ldr r3, [r0, #0x44]
00514720  48 10 83 e5                                      str r1, [r3, #0x48]
00514724  44 10 80 e5                                      str r1, [r0, #0x44]
00514728  1e ff 2f e1                                      bx lr

; FUNCTION 0x0051472c, declared_size=88, range_size=88, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZN17TiXmlAttributeSet6RemoveEP14TiXmlAttribute
; demangled: TiXmlAttributeSet::Remove(TiXmlAttribute*)
; decoder-mode: arm
0051472c  48 30 90 e5                                      ldr r3, [r0, #0x48]
00514730  00 00 53 e1                                      cmp r3, r0
00514734  1e ff 2f 01                                      bxeq lr
00514738  01 00 53 e1                                      cmp r3, r1
0051473c  02 00 00 1a                                      bne #0x51474c
00514740  05 00 00 ea                                      b #0x51475c
00514744  03 00 51 e1                                      cmp r1, r3
00514748  03 00 00 0a                                      beq #0x51475c
0051474c  48 30 93 e5                                      ldr r3, [r3, #0x48]
00514750  00 00 53 e1                                      cmp r3, r0
00514754  fa ff ff 1a                                      bne #0x514744
00514758  1e ff 2f e1                                      bx lr
0051475c  44 20 91 e5                                      ldr r2, [r1, #0x44]
00514760  48 00 91 e5                                      ldr r0, [r1, #0x48]
00514764  00 30 a0 e3                                      mov r3, #0
00514768  48 00 82 e5                                      str r0, [r2, #0x48]
0051476c  48 20 91 e5                                      ldr r2, [r1, #0x48]
00514770  44 00 91 e5                                      ldr r0, [r1, #0x44]
00514774  44 00 82 e5                                      str r0, [r2, #0x44]
00514778  44 30 81 e5                                      str r3, [r1, #0x44]
0051477c  48 30 81 e5                                      str r3, [r1, #0x48]
00514780  1e ff 2f e1                                      bx lr

; FUNCTION 0x005149e0, declared_size=80, range_size=80, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZN17TiXmlAttributeSetD2Ev
; demangled: TiXmlAttributeSet::~TiXmlAttributeSet()
; decoder-mode: arm
005149e0  70 40 2d e9                                      push {r4, r5, r6, lr}
005149e4  38 40 9f e5                                      ldr r4, [pc, #0x38]
005149e8  38 30 9f e5                                      ldr r3, [pc, #0x38]
005149ec  00 50 a0 e1                                      mov r5, r0
005149f0  04 40 8f e0                                      add r4, pc, r4
005149f4  03 30 94 e7                                      ldr r3, [r4, r3]
005149f8  08 30 83 e2                                      add r3, r3, #8
005149fc  2c 30 80 e4                                      str r3, [r0], #0x2c
00514a00  e9 fb f7 eb                                      bl #0x3139ac
00514a04  14 00 85 e2                                      add r0, r5, #0x14
00514a08  e7 fb f7 eb                                      bl #0x3139ac
00514a0c  18 30 9f e5                                      ldr r3, [pc, #0x18]
00514a10  05 00 a0 e1                                      mov r0, r5
00514a14  03 30 94 e7                                      ldr r3, [r4, r3]
00514a18  08 30 83 e2                                      add r3, r3, #8
00514a1c  00 30 85 e5                                      str r3, [r5]
00514a20  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00514a24  a0 00 48 00 08 06 00 00 d0 21 00 00              .byte 0xa0, 0x00, 0x48, 0x00, 0x08, 0x06, 0x00, 0x00, 0xd0, 0x21, 0x00, 0x00

; FUNCTION 0x00514c20, declared_size=80, range_size=80, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZNK17TiXmlAttributeSet4FindEPKc
; demangled: TiXmlAttributeSet::Find(char const*) const
; decoder-mode: arm
00514c20  70 40 2d e9                                      push {r4, r5, r6, lr}
00514c24  48 40 90 e5                                      ldr r4, [r0, #0x48]
00514c28  00 50 a0 e1                                      mov r5, r0
00514c2c  01 60 a0 e1                                      mov r6, r1
00514c30  00 00 54 e1                                      cmp r4, r0
00514c34  03 00 00 1a                                      bne #0x514c48
00514c38  09 00 00 ea                                      b #0x514c64
00514c3c  48 40 94 e5                                      ldr r4, [r4, #0x48]
00514c40  05 00 54 e1                                      cmp r4, r5
00514c44  06 00 00 0a                                      beq #0x514c64
00514c48  28 00 94 e5                                      ldr r0, [r4, #0x28]
00514c4c  06 10 a0 e1                                      mov r1, r6
00514c50  b1 e5 f7 eb                                      bl #0x30e31c
00514c54  00 00 50 e3                                      cmp r0, #0
00514c58  f7 ff ff 1a                                      bne #0x514c3c
00514c5c  04 00 a0 e1                                      mov r0, r4
00514c60  70 80 bd e8                                      pop {r4, r5, r6, pc}
00514c64  00 40 a0 e3                                      mov r4, #0
00514c68  04 00 a0 e1                                      mov r0, r4
00514c6c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00514fb8, declared_size=104, range_size=104, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZNK17TiXmlAttributeSet4FindERKSs
; demangled: TiXmlAttributeSet::Find(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
00514fb8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00514fbc  48 40 90 e5                                      ldr r4, [r0, #0x48]
00514fc0  00 60 a0 e1                                      mov r6, r0
00514fc4  00 00 54 e1                                      cmp r4, r0
00514fc8  12 00 00 0a                                      beq #0x515018
00514fcc  10 50 91 e5                                      ldr r5, [r1, #0x10]
00514fd0  14 70 91 e5                                      ldr r7, [r1, #0x14]
00514fd4  05 50 67 e0                                      rsb r5, r7, r5
00514fd8  02 00 00 ea                                      b #0x514fe8
00514fdc  48 40 94 e5                                      ldr r4, [r4, #0x48]
00514fe0  06 00 54 e1                                      cmp r4, r6
00514fe4  0b 00 00 0a                                      beq #0x515018
00514fe8  28 00 94 e5                                      ldr r0, [r4, #0x28]
00514fec  24 30 94 e5                                      ldr r3, [r4, #0x24]
00514ff0  03 30 60 e0                                      rsb r3, r0, r3
00514ff4  05 00 53 e1                                      cmp r3, r5
00514ff8  f7 ff ff 1a                                      bne #0x514fdc
00514ffc  07 10 a0 e1                                      mov r1, r7
00515000  05 20 a0 e1                                      mov r2, r5
00515004  75 e5 f7 eb                                      bl #0x30e5e0
00515008  00 00 50 e3                                      cmp r0, #0
0051500c  f2 ff ff 1a                                      bne #0x514fdc
00515010  04 00 a0 e1                                      mov r0, r4
00515014  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00515018  00 40 a0 e3                                      mov r4, #0
0051501c  fb ff ff ea                                      b #0x515010

; FUNCTION 0x00515bd4, declared_size=80, range_size=80, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZN17TiXmlAttributeSetD1Ev
; demangled: TiXmlAttributeSet::~TiXmlAttributeSet()
; decoder-mode: arm
00515bd4  70 40 2d e9                                      push {r4, r5, r6, lr}
00515bd8  38 40 9f e5                                      ldr r4, [pc, #0x38]
00515bdc  38 30 9f e5                                      ldr r3, [pc, #0x38]
00515be0  00 50 a0 e1                                      mov r5, r0
00515be4  04 40 8f e0                                      add r4, pc, r4
00515be8  03 30 94 e7                                      ldr r3, [r4, r3]
00515bec  08 30 83 e2                                      add r3, r3, #8
00515bf0  2c 30 80 e4                                      str r3, [r0], #0x2c
00515bf4  6c f7 f7 eb                                      bl #0x3139ac
00515bf8  14 00 85 e2                                      add r0, r5, #0x14
00515bfc  6a f7 f7 eb                                      bl #0x3139ac
00515c00  18 30 9f e5                                      ldr r3, [pc, #0x18]
00515c04  05 00 a0 e1                                      mov r0, r5
00515c08  03 30 94 e7                                      ldr r3, [r4, r3]
00515c0c  08 30 83 e2                                      add r3, r3, #8
00515c10  00 30 85 e5                                      str r3, [r5]
00515c14  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00515c18  ac ee 47 00 08 06 00 00 d0 21 00 00              .byte 0xac, 0xee, 0x47, 0x00, 0x08, 0x06, 0x00, 0x00, 0xd0, 0x21, 0x00, 0x00

; FUNCTION 0x00515d60, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZN17TiXmlAttributeSetC1Ev
; demangled: TiXmlAttributeSet::TiXmlAttributeSet()
; decoder-mode: arm
00515d60  10 40 2d e9                                      push {r4, lr}
00515d64  00 40 a0 e1                                      mov r4, r0
00515d68  d8 ff ff eb                                      bl #0x515cd0
00515d6c  48 40 84 e5                                      str r4, [r4, #0x48]
00515d70  44 40 84 e5                                      str r4, [r4, #0x44]
00515d74  04 00 a0 e1                                      mov r0, r4
00515d78  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00515d7c, declared_size=28, range_size=28, mode=arm
; class-group: TiXmlAttributeSet
; alias: _ZN17TiXmlAttributeSetC2Ev
; demangled: TiXmlAttributeSet::TiXmlAttributeSet()
; decoder-mode: arm
00515d7c  10 40 2d e9                                      push {r4, lr}
00515d80  00 40 a0 e1                                      mov r4, r0
00515d84  d1 ff ff eb                                      bl #0x515cd0
00515d88  48 40 84 e5                                      str r4, [r4, #0x48]
00515d8c  44 40 84 e5                                      str r4, [r4, #0x44]
00515d90  04 00 a0 e1                                      mov r0, r4
00515d94  10 80 bd e8                                      pop {r4, pc}
