; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0056074c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getTextureEi
; demangled: glitch::io::CAttributes::getTexture(int)
; decoder-mode: arm
0056074c  10 40 2d e9                                      push {r4, lr}
00560750  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560754  00 40 a0 e1                                      mov r4, r0
00560758  04 10 93 e5                                      ldr r1, [r3, #4]
0056075c  00 30 93 e5                                      ldr r3, [r3]
00560760  01 10 63 e0                                      rsb r1, r3, r1
00560764  41 01 52 e1                                      cmp r2, r1, asr #2
00560768  00 30 a0 23                                      movhs r3, #0
0056076c  00 30 80 25                                      strhs r3, [r0]
00560770  01 00 00 3a                                      blo #0x56077c
00560774  04 00 a0 e1                                      mov r0, r4
00560778  10 80 bd e8                                      pop {r4, pc}
0056077c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560780  03 10 a0 e1                                      mov r1, r3
00560784  00 30 93 e5                                      ldr r3, [r3]
00560788  0f e0 a0 e1                                      mov lr, pc
0056078c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00560790  04 00 a0 e1                                      mov r0, r4
00560794  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560798, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getLightEi
; demangled: glitch::io::CAttributes::getLight(int)
; decoder-mode: arm
00560798  10 40 2d e9                                      push {r4, lr}
0056079c  48 30 91 e5                                      ldr r3, [r1, #0x48]
005607a0  00 40 a0 e1                                      mov r4, r0
005607a4  04 10 93 e5                                      ldr r1, [r3, #4]
005607a8  00 30 93 e5                                      ldr r3, [r3]
005607ac  01 10 63 e0                                      rsb r1, r3, r1
005607b0  41 01 52 e1                                      cmp r2, r1, asr #2
005607b4  00 30 a0 23                                      movhs r3, #0
005607b8  00 30 80 25                                      strhs r3, [r0]
005607bc  01 00 00 3a                                      blo #0x5607c8
005607c0  04 00 a0 e1                                      mov r0, r4
005607c4  10 80 bd e8                                      pop {r4, pc}
005607c8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005607cc  03 10 a0 e1                                      mov r1, r3
005607d0  00 30 93 e5                                      ldr r3, [r3]
005607d4  0f e0 a0 e1                                      mov lr, pc
005607d8  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
005607dc  04 00 a0 e1                                      mov r0, r4
005607e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005607e4, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZNK6glitch2io11CAttributes17getAttributeCountEv
; demangled: glitch::io::CAttributes::getAttributeCount() const
; decoder-mode: arm
005607e4  48 30 90 e5                                      ldr r3, [r0, #0x48]
005607e8  00 20 93 e5                                      ldr r2, [r3]
005607ec  04 00 93 e5                                      ldr r0, [r3, #4]
005607f0  00 00 62 e0                                      rsb r0, r2, r0
005607f4  40 01 a0 e1                                      asr r0, r0, #2
005607f8  1e ff 2f e1                                      bx lr

; FUNCTION 0x005607fc, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16getAttributeNameEi
; demangled: glitch::io::CAttributes::getAttributeName(int)
; decoder-mode: arm
005607fc  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560800  04 20 93 e5                                      ldr r2, [r3, #4]
00560804  00 30 93 e5                                      ldr r3, [r3]
00560808  02 20 63 e0                                      rsb r2, r3, r2
0056080c  42 01 51 e1                                      cmp r1, r2, asr #2
00560810  01 31 93 37                                      ldrlo r3, [r3, r1, lsl #2]
00560814  00 00 a0 23                                      movhs r0, #0
00560818  1c 00 93 35                                      ldrlo r0, [r3, #0x1c]
0056081c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560820, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16getAttributeTypeEi
; demangled: glitch::io::CAttributes::getAttributeType(int)
; decoder-mode: arm
00560820  10 40 2d e9                                      push {r4, lr}
00560824  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560828  04 20 93 e5                                      ldr r2, [r3, #4]
0056082c  00 30 93 e5                                      ldr r3, [r3]
00560830  02 20 63 e0                                      rsb r2, r3, r2
00560834  42 01 51 e1                                      cmp r1, r2, asr #2
00560838  01 00 00 3a                                      blo #0x560844
0056083c  1e 00 a0 e3                                      mov r0, #0x1e
00560840  10 80 bd e8                                      pop {r4, pc}
00560844  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560848  03 00 a0 e1                                      mov r0, r3
0056084c  00 30 93 e5                                      ldr r3, [r3]
00560850  0f e0 a0 e1                                      mov lr, pc
00560854  04 f1 93 e5                                      ldr pc, [r3, #0x104]
00560858  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056085c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes22getAttributeTypeStringEi
; demangled: glitch::io::CAttributes::getAttributeTypeString(int)
; decoder-mode: arm
0056085c  10 40 2d e9                                      push {r4, lr}
00560860  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560864  04 20 93 e5                                      ldr r2, [r3, #4]
00560868  00 30 93 e5                                      ldr r3, [r3]
0056086c  02 20 63 e0                                      rsb r2, r3, r2
00560870  42 01 51 e1                                      cmp r1, r2, asr #2
00560874  02 00 00 3a                                      blo #0x560884
00560878  1c 00 9f e5                                      ldr r0, [pc, #0x1c]
0056087c  00 00 8f e0                                      add r0, pc, r0
00560880  10 80 bd e8                                      pop {r4, pc}
00560884  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560888  03 00 a0 e1                                      mov r0, r3
0056088c  00 30 93 e5                                      ldr r3, [r3]
00560890  0f e0 a0 e1                                      mov lr, pc
00560894  08 f1 93 e5                                      ldr pc, [r3, #0x108]
00560898  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0056089c  f4 e6 37 00                                      .byte 0xf4, 0xe6, 0x37, 0x00

; FUNCTION 0x005608a0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getBoolEi
; demangled: glitch::io::CAttributes::getBool(int)
; decoder-mode: arm
005608a0  10 40 2d e9                                      push {r4, lr}
005608a4  48 30 90 e5                                      ldr r3, [r0, #0x48]
005608a8  04 20 93 e5                                      ldr r2, [r3, #4]
005608ac  00 30 93 e5                                      ldr r3, [r3]
005608b0  02 20 63 e0                                      rsb r2, r3, r2
005608b4  42 01 51 e1                                      cmp r1, r2, asr #2
005608b8  01 00 00 3a                                      blo #0x5608c4
005608bc  00 00 a0 e3                                      mov r0, #0
005608c0  10 80 bd e8                                      pop {r4, pc}
005608c4  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
005608c8  03 00 a0 e1                                      mov r0, r3
005608cc  00 30 93 e5                                      ldr r3, [r3]
005608d0  0f e0 a0 e1                                      mov lr, pc
005608d4  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005608d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005608dc, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes6getIntEi
; demangled: glitch::io::CAttributes::getInt(int)
; decoder-mode: arm
005608dc  10 40 2d e9                                      push {r4, lr}
005608e0  48 30 90 e5                                      ldr r3, [r0, #0x48]
005608e4  04 20 93 e5                                      ldr r2, [r3, #4]
005608e8  00 30 93 e5                                      ldr r3, [r3]
005608ec  02 20 63 e0                                      rsb r2, r3, r2
005608f0  42 01 51 e1                                      cmp r1, r2, asr #2
005608f4  01 00 00 3a                                      blo #0x560900
005608f8  00 00 a0 e3                                      mov r0, #0
005608fc  10 80 bd e8                                      pop {r4, pc}
00560900  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560904  03 00 a0 e1                                      mov r0, r3
00560908  00 30 93 e5                                      ldr r3, [r3]
0056090c  0f e0 a0 e1                                      mov lr, pc
00560910  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00560914  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560918, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getFloatEi
; demangled: glitch::io::CAttributes::getFloat(int)
; decoder-mode: arm
00560918  10 40 2d e9                                      push {r4, lr}
0056091c  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560920  04 20 93 e5                                      ldr r2, [r3, #4]
00560924  00 30 93 e5                                      ldr r3, [r3]
00560928  02 20 63 e0                                      rsb r2, r3, r2
0056092c  42 01 51 e1                                      cmp r1, r2, asr #2
00560930  01 00 00 3a                                      blo #0x56093c
00560934  00 00 a0 e3                                      mov r0, #0
00560938  10 80 bd e8                                      pop {r4, pc}
0056093c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560940  03 00 a0 e1                                      mov r0, r3
00560944  00 30 93 e5                                      ldr r3, [r3]
00560948  0f e0 a0 e1                                      mov lr, pc
0056094c  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00560950  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560954, declared_size=148, range_size=148, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getColorEi
; demangled: glitch::io::CAttributes::getColor(int)
; decoder-mode: arm
00560954  04 e0 2d e5                                      str lr, [sp, #-4]!
00560958  48 30 90 e5                                      ldr r3, [r0, #0x48]
0056095c  14 d0 4d e2                                      sub sp, sp, #0x14
00560960  04 20 93 e5                                      ldr r2, [r3, #4]
00560964  00 30 93 e5                                      ldr r3, [r3]
00560968  02 20 63 e0                                      rsb r2, r3, r2
0056096c  42 01 51 e1                                      cmp r1, r2, asr #2
00560970  0a 00 00 3a                                      blo #0x5609a0
00560974  00 30 a0 e3                                      mov r3, #0
00560978  03 c0 a0 e1                                      mov ip, r3
0056097c  03 10 a0 e1                                      mov r1, r3
00560980  03 20 a0 e1                                      mov r2, r3
00560984  00 00 a0 e3                                      mov r0, #0
00560988  13 00 c7 e7                                      bfi r0, r3, #0, #8
0056098c  1c 04 cf e7                                      bfi r0, ip, #8, #8
00560990  11 08 d7 e7                                      bfi r0, r1, #0x10, #8
00560994  12 0c df e7                                      bfi r0, r2, #0x18, #8
00560998  14 d0 8d e2                                      add sp, sp, #0x14
0056099c  00 80 bd e8                                      ldm sp!, {pc}
005609a0  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
005609a4  03 00 a0 e1                                      mov r0, r3
005609a8  00 30 93 e5                                      ldr r3, [r3]
005609ac  0f e0 a0 e1                                      mov lr, pc
005609b0  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005609b4  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005609b8  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005609bc  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005609c0  01 10 cd e5                                      strb r1, [sp, #1]
005609c4  02 20 cd e5                                      strb r2, [sp, #2]
005609c8  03 30 cd e5                                      strb r3, [sp, #3]
005609cc  00 00 cd e5                                      strb r0, [sp]
005609d0  00 c0 9d e5                                      ldr ip, [sp]
005609d4  7c 30 ef e6                                      uxtb r3, ip
005609d8  2c 2c a0 e1                                      lsr r2, ip, #0x18
005609dc  5c 18 e7 e7                                      ubfx r1, ip, #0x10, #8
005609e0  5c c4 e7 e7                                      ubfx ip, ip, #8, #8
005609e4  e6 ff ff ea                                      b #0x560984

; FUNCTION 0x005609e8, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getColorfEi
; demangled: glitch::io::CAttributes::getColorf(int)
; decoder-mode: arm
005609e8  10 40 2d e9                                      push {r4, lr}
005609ec  48 30 91 e5                                      ldr r3, [r1, #0x48]
005609f0  00 40 a0 e1                                      mov r4, r0
005609f4  04 10 93 e5                                      ldr r1, [r3, #4]
005609f8  00 30 93 e5                                      ldr r3, [r3]
005609fc  01 10 63 e0                                      rsb r1, r3, r1
00560a00  41 01 52 e1                                      cmp r2, r1, asr #2
00560a04  07 00 00 3a                                      blo #0x560a28
00560a08  00 30 a0 e3                                      mov r3, #0
00560a0c  fe 25 a0 e3                                      mov r2, #0x3f800000
00560a10  08 30 80 e5                                      str r3, [r0, #8]
00560a14  0c 20 80 e5                                      str r2, [r0, #0xc]
00560a18  00 30 80 e5                                      str r3, [r0]
00560a1c  04 30 80 e5                                      str r3, [r0, #4]
00560a20  04 00 a0 e1                                      mov r0, r4
00560a24  10 80 bd e8                                      pop {r4, pc}
00560a28  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560a2c  03 10 a0 e1                                      mov r1, r3
00560a30  00 30 93 e5                                      ldr r3, [r3]
00560a34  0f e0 a0 e1                                      mov lr, pc
00560a38  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00560a3c  04 00 a0 e1                                      mov r0, r4
00560a40  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560a44, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11getVector2dEi
; demangled: glitch::io::CAttributes::getVector2d(int)
; decoder-mode: arm
00560a44  10 40 2d e9                                      push {r4, lr}
00560a48  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560a4c  00 40 a0 e1                                      mov r4, r0
00560a50  04 10 93 e5                                      ldr r1, [r3, #4]
00560a54  00 30 93 e5                                      ldr r3, [r3]
00560a58  01 10 63 e0                                      rsb r1, r3, r1
00560a5c  41 01 52 e1                                      cmp r2, r1, asr #2
00560a60  00 30 a0 23                                      movhs r3, #0
00560a64  04 30 80 25                                      strhs r3, [r0, #4]
00560a68  00 30 80 25                                      strhs r3, [r0]
00560a6c  01 00 00 3a                                      blo #0x560a78
00560a70  04 00 a0 e1                                      mov r0, r4
00560a74  10 80 bd e8                                      pop {r4, pc}
00560a78  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560a7c  03 10 a0 e1                                      mov r1, r3
00560a80  00 30 93 e5                                      ldr r3, [r3]
00560a84  0f e0 a0 e1                                      mov lr, pc
00560a88  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
00560a8c  04 00 a0 e1                                      mov r0, r4
00560a90  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560a94, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11getVector3dEi
; demangled: glitch::io::CAttributes::getVector3d(int)
; decoder-mode: arm
00560a94  10 40 2d e9                                      push {r4, lr}
00560a98  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560a9c  00 40 a0 e1                                      mov r4, r0
00560aa0  04 10 93 e5                                      ldr r1, [r3, #4]
00560aa4  00 30 93 e5                                      ldr r3, [r3]
00560aa8  01 10 63 e0                                      rsb r1, r3, r1
00560aac  41 01 52 e1                                      cmp r2, r1, asr #2
00560ab0  05 00 00 3a                                      blo #0x560acc
00560ab4  00 30 a0 e3                                      mov r3, #0
00560ab8  08 30 80 e5                                      str r3, [r0, #8]
00560abc  00 30 80 e5                                      str r3, [r0]
00560ac0  04 30 80 e5                                      str r3, [r0, #4]
00560ac4  04 00 a0 e1                                      mov r0, r4
00560ac8  10 80 bd e8                                      pop {r4, pc}
00560acc  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560ad0  03 10 a0 e1                                      mov r1, r3
00560ad4  00 30 93 e5                                      ldr r3, [r3]
00560ad8  0f e0 a0 e1                                      mov lr, pc
00560adc  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00560ae0  04 00 a0 e1                                      mov r0, r4
00560ae4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560ae8, declared_size=88, range_size=88, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11getVector4dEi
; demangled: glitch::io::CAttributes::getVector4d(int)
; decoder-mode: arm
00560ae8  10 40 2d e9                                      push {r4, lr}
00560aec  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560af0  00 40 a0 e1                                      mov r4, r0
00560af4  04 10 93 e5                                      ldr r1, [r3, #4]
00560af8  00 30 93 e5                                      ldr r3, [r3]
00560afc  01 10 63 e0                                      rsb r1, r3, r1
00560b00  41 01 52 e1                                      cmp r2, r1, asr #2
00560b04  06 00 00 3a                                      blo #0x560b24
00560b08  00 30 a0 e3                                      mov r3, #0
00560b0c  0c 30 80 e5                                      str r3, [r0, #0xc]
00560b10  00 30 80 e5                                      str r3, [r0]
00560b14  04 30 80 e5                                      str r3, [r0, #4]
00560b18  08 30 80 e5                                      str r3, [r0, #8]
00560b1c  04 00 a0 e1                                      mov r0, r4
00560b20  10 80 bd e8                                      pop {r4, pc}
00560b24  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560b28  03 10 a0 e1                                      mov r1, r3
00560b2c  00 30 93 e5                                      ldr r3, [r3]
00560b30  0f e0 a0 e1                                      mov lr, pc
00560b34  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00560b38  04 00 a0 e1                                      mov r0, r4
00560b3c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560b40, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getVector2diEi
; demangled: glitch::io::CAttributes::getVector2di(int)
; decoder-mode: arm
00560b40  10 40 2d e9                                      push {r4, lr}
00560b44  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560b48  00 40 a0 e1                                      mov r4, r0
00560b4c  04 10 93 e5                                      ldr r1, [r3, #4]
00560b50  00 30 93 e5                                      ldr r3, [r3]
00560b54  01 10 63 e0                                      rsb r1, r3, r1
00560b58  41 01 52 e1                                      cmp r2, r1, asr #2
00560b5c  00 30 a0 23                                      movhs r3, #0
00560b60  04 30 80 25                                      strhs r3, [r0, #4]
00560b64  00 30 80 25                                      strhs r3, [r0]
00560b68  01 00 00 3a                                      blo #0x560b74
00560b6c  04 00 a0 e1                                      mov r0, r4
00560b70  10 80 bd e8                                      pop {r4, pc}
00560b74  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560b78  03 10 a0 e1                                      mov r1, r3
00560b7c  00 30 93 e5                                      ldr r3, [r3]
00560b80  0f e0 a0 e1                                      mov lr, pc
00560b84  50 f0 93 e5                                      ldr pc, [r3, #0x50]
00560b88  04 00 a0 e1                                      mov r0, r4
00560b8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560b90, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getVector3diEi
; demangled: glitch::io::CAttributes::getVector3di(int)
; decoder-mode: arm
00560b90  10 40 2d e9                                      push {r4, lr}
00560b94  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560b98  00 40 a0 e1                                      mov r4, r0
00560b9c  04 10 93 e5                                      ldr r1, [r3, #4]
00560ba0  00 30 93 e5                                      ldr r3, [r3]
00560ba4  01 10 63 e0                                      rsb r1, r3, r1
00560ba8  41 01 52 e1                                      cmp r2, r1, asr #2
00560bac  05 00 00 3a                                      blo #0x560bc8
00560bb0  00 30 a0 e3                                      mov r3, #0
00560bb4  08 30 80 e5                                      str r3, [r0, #8]
00560bb8  00 30 80 e5                                      str r3, [r0]
00560bbc  04 30 80 e5                                      str r3, [r0, #4]
00560bc0  04 00 a0 e1                                      mov r0, r4
00560bc4  10 80 bd e8                                      pop {r4, pc}
00560bc8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560bcc  03 10 a0 e1                                      mov r1, r3
00560bd0  00 30 93 e5                                      ldr r3, [r3]
00560bd4  0f e0 a0 e1                                      mov lr, pc
00560bd8  54 f0 93 e5                                      ldr pc, [r3, #0x54]
00560bdc  04 00 a0 e1                                      mov r0, r4
00560be0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560be4, declared_size=88, range_size=88, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getVector4diEi
; demangled: glitch::io::CAttributes::getVector4di(int)
; decoder-mode: arm
00560be4  10 40 2d e9                                      push {r4, lr}
00560be8  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560bec  00 40 a0 e1                                      mov r4, r0
00560bf0  04 10 93 e5                                      ldr r1, [r3, #4]
00560bf4  00 30 93 e5                                      ldr r3, [r3]
00560bf8  01 10 63 e0                                      rsb r1, r3, r1
00560bfc  41 01 52 e1                                      cmp r2, r1, asr #2
00560c00  06 00 00 3a                                      blo #0x560c20
00560c04  00 30 a0 e3                                      mov r3, #0
00560c08  0c 30 80 e5                                      str r3, [r0, #0xc]
00560c0c  00 30 80 e5                                      str r3, [r0]
00560c10  04 30 80 e5                                      str r3, [r0, #4]
00560c14  08 30 80 e5                                      str r3, [r0, #8]
00560c18  04 00 a0 e1                                      mov r0, r4
00560c1c  10 80 bd e8                                      pop {r4, pc}
00560c20  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560c24  03 10 a0 e1                                      mov r1, r3
00560c28  00 30 93 e5                                      ldr r3, [r3]
00560c2c  0f e0 a0 e1                                      mov lr, pc
00560c30  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00560c34  04 00 a0 e1                                      mov r0, r4
00560c38  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560c3c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getPosition2dEi
; demangled: glitch::io::CAttributes::getPosition2d(int)
; decoder-mode: arm
00560c3c  10 40 2d e9                                      push {r4, lr}
00560c40  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560c44  00 40 a0 e1                                      mov r4, r0
00560c48  04 10 93 e5                                      ldr r1, [r3, #4]
00560c4c  00 30 93 e5                                      ldr r3, [r3]
00560c50  01 10 63 e0                                      rsb r1, r3, r1
00560c54  41 01 52 e1                                      cmp r2, r1, asr #2
00560c58  00 30 a0 23                                      movhs r3, #0
00560c5c  04 30 80 25                                      strhs r3, [r0, #4]
00560c60  00 30 80 25                                      strhs r3, [r0]
00560c64  01 00 00 3a                                      blo #0x560c70
00560c68  04 00 a0 e1                                      mov r0, r4
00560c6c  10 80 bd e8                                      pop {r4, pc}
00560c70  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560c74  03 10 a0 e1                                      mov r1, r3
00560c78  00 30 93 e5                                      ldr r3, [r3]
00560c7c  0f e0 a0 e1                                      mov lr, pc
00560c80  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00560c84  04 00 a0 e1                                      mov r0, r4
00560c88  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560c8c, declared_size=88, range_size=88, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getRectEi
; demangled: glitch::io::CAttributes::getRect(int)
; decoder-mode: arm
00560c8c  10 40 2d e9                                      push {r4, lr}
00560c90  48 30 91 e5                                      ldr r3, [r1, #0x48]
00560c94  00 40 a0 e1                                      mov r4, r0
00560c98  04 10 93 e5                                      ldr r1, [r3, #4]
00560c9c  00 30 93 e5                                      ldr r3, [r3]
00560ca0  01 10 63 e0                                      rsb r1, r3, r1
00560ca4  41 01 52 e1                                      cmp r2, r1, asr #2
00560ca8  06 00 00 3a                                      blo #0x560cc8
00560cac  00 30 a0 e3                                      mov r3, #0
00560cb0  0c 30 80 e5                                      str r3, [r0, #0xc]
00560cb4  00 30 80 e5                                      str r3, [r0]
00560cb8  04 30 80 e5                                      str r3, [r0, #4]
00560cbc  08 30 80 e5                                      str r3, [r0, #8]
00560cc0  04 00 a0 e1                                      mov r0, r4
00560cc4  10 80 bd e8                                      pop {r4, pc}
00560cc8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00560ccc  03 10 a0 e1                                      mov r1, r3
00560cd0  00 30 93 e5                                      ldr r3, [r3]
00560cd4  0f e0 a0 e1                                      mov lr, pc
00560cd8  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00560cdc  04 00 a0 e1                                      mov r0, r4
00560ce0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560ce4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getBinaryDataEiPvi
; demangled: glitch::io::CAttributes::getBinaryData(int, void*, int)
; decoder-mode: arm
00560ce4  10 40 2d e9                                      push {r4, lr}
00560ce8  48 00 90 e5                                      ldr r0, [r0, #0x48]
00560cec  01 10 90 e8                                      ldm r0, {r0, ip}
00560cf0  0c c0 60 e0                                      rsb ip, r0, ip
00560cf4  4c 01 51 e1                                      cmp r1, ip, asr #2
00560cf8  06 00 00 2a                                      bhs #0x560d18
00560cfc  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
00560d00  02 10 a0 e1                                      mov r1, r2
00560d04  03 20 a0 e1                                      mov r2, r3
00560d08  0c 00 a0 e1                                      mov r0, ip
00560d0c  00 30 9c e5                                      ldr r3, [ip]
00560d10  0f e0 a0 e1                                      mov lr, pc
00560d14  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00560d18  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560d1c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getEnumEi
; demangled: glitch::io::CAttributes::getEnum(int)
; decoder-mode: arm
00560d1c  10 40 2d e9                                      push {r4, lr}
00560d20  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560d24  04 20 93 e5                                      ldr r2, [r3, #4]
00560d28  00 30 93 e5                                      ldr r3, [r3]
00560d2c  02 20 63 e0                                      rsb r2, r3, r2
00560d30  42 01 51 e1                                      cmp r1, r2, asr #2
00560d34  01 00 00 3a                                      blo #0x560d40
00560d38  00 00 a0 e3                                      mov r0, #0
00560d3c  10 80 bd e8                                      pop {r4, pc}
00560d40  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560d44  03 00 a0 e1                                      mov r0, r3
00560d48  00 30 93 e5                                      ldr r3, [r3]
00560d4c  0f e0 a0 e1                                      mov lr, pc
00560d50  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00560d54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560d58, declared_size=88, range_size=88, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7addEnumEPKciPKS3_b
; demangled: glitch::io::CAttributes::addEnum(char const*, int, char const* const*, bool)
; decoder-mode: arm
00560d58  30 40 2d e9                                      push {r4, r5, lr}
00560d5c  0c d0 4d e2                                      sub sp, sp, #0xc
00560d60  18 c0 dd e5                                      ldrb ip, [sp, #0x18]
00560d64  02 50 a0 e1                                      mov r5, r2
00560d68  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
00560d6c  00 c0 8d e5                                      str ip, [sp]
00560d70  00 40 a0 e1                                      mov r4, r0
00560d74  00 c0 90 e5                                      ldr ip, [r0]
00560d78  02 20 8f e0                                      add r2, pc, r2
00560d7c  0f e0 a0 e1                                      mov lr, pc
00560d80  f0 f0 9c e5                                      ldr pc, [ip, #0xf0]
00560d84  48 30 94 e5                                      ldr r3, [r4, #0x48]
00560d88  05 10 a0 e1                                      mov r1, r5
00560d8c  04 30 93 e5                                      ldr r3, [r3, #4]
00560d90  04 30 13 e5                                      ldr r3, [r3, #-4]
00560d94  03 00 a0 e1                                      mov r0, r3
00560d98  00 30 93 e5                                      ldr r3, [r3]
00560d9c  0f e0 a0 e1                                      mov lr, pc
00560da0  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00560da4  0c d0 8d e2                                      add sp, sp, #0xc
00560da8  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
00560dac  90 aa 36 00                                      .byte 0x90, 0xaa, 0x36, 0x00

; FUNCTION 0x00560db0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiPKc
; demangled: glitch::io::CAttributes::setAttribute(int, char const*)
; decoder-mode: arm
00560db0  10 40 2d e9                                      push {r4, lr}
00560db4  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560db8  04 00 93 e5                                      ldr r0, [r3, #4]
00560dbc  00 30 93 e5                                      ldr r3, [r3]
00560dc0  00 00 63 e0                                      rsb r0, r3, r0
00560dc4  40 01 51 e1                                      cmp r1, r0, asr #2
00560dc8  05 00 00 2a                                      bhs #0x560de4
00560dcc  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560dd0  02 10 a0 e1                                      mov r1, r2
00560dd4  03 00 a0 e1                                      mov r0, r3
00560dd8  00 30 93 e5                                      ldr r3, [r3]
00560ddc  0f e0 a0 e1                                      mov lr, pc
00560de0  90 f0 93 e5                                      ldr pc, [r3, #0x90]
00560de4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560de8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiPKw
; demangled: glitch::io::CAttributes::setAttribute(int, wchar_t const*)
; decoder-mode: arm
00560de8  10 40 2d e9                                      push {r4, lr}
00560dec  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560df0  04 00 93 e5                                      ldr r0, [r3, #4]
00560df4  00 30 93 e5                                      ldr r3, [r3]
00560df8  00 00 63 e0                                      rsb r0, r3, r0
00560dfc  40 01 51 e1                                      cmp r1, r0, asr #2
00560e00  05 00 00 2a                                      bhs #0x560e1c
00560e04  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560e08  02 10 a0 e1                                      mov r1, r2
00560e0c  03 00 a0 e1                                      mov r0, r3
00560e10  00 30 93 e5                                      ldr r3, [r3]
00560e14  0f e0 a0 e1                                      mov lr, pc
00560e18  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00560e1c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560e20, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEib
; demangled: glitch::io::CAttributes::setAttribute(int, bool)
; decoder-mode: arm
00560e20  10 40 2d e9                                      push {r4, lr}
00560e24  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560e28  04 00 93 e5                                      ldr r0, [r3, #4]
00560e2c  00 30 93 e5                                      ldr r3, [r3]
00560e30  00 00 63 e0                                      rsb r0, r3, r0
00560e34  40 01 51 e1                                      cmp r1, r0, asr #2
00560e38  05 00 00 2a                                      bhs #0x560e54
00560e3c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560e40  02 10 a0 e1                                      mov r1, r2
00560e44  03 00 a0 e1                                      mov r0, r3
00560e48  00 30 93 e5                                      ldr r3, [r3]
00560e4c  0f e0 a0 e1                                      mov lr, pc
00560e50  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00560e54  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560e58, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEii
; demangled: glitch::io::CAttributes::setAttribute(int, int)
; decoder-mode: arm
00560e58  10 40 2d e9                                      push {r4, lr}
00560e5c  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560e60  04 00 93 e5                                      ldr r0, [r3, #4]
00560e64  00 30 93 e5                                      ldr r3, [r3]
00560e68  00 00 63 e0                                      rsb r0, r3, r0
00560e6c  40 01 51 e1                                      cmp r1, r0, asr #2
00560e70  05 00 00 2a                                      bhs #0x560e8c
00560e74  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560e78  02 10 a0 e1                                      mov r1, r2
00560e7c  03 00 a0 e1                                      mov r0, r3
00560e80  00 30 93 e5                                      ldr r3, [r3]
00560e84  0f e0 a0 e1                                      mov lr, pc
00560e88  88 f0 93 e5                                      ldr pc, [r3, #0x88]
00560e8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560e90, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEif
; demangled: glitch::io::CAttributes::setAttribute(int, float)
; decoder-mode: arm
00560e90  10 40 2d e9                                      push {r4, lr}
00560e94  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560e98  04 00 93 e5                                      ldr r0, [r3, #4]
00560e9c  00 30 93 e5                                      ldr r3, [r3]
00560ea0  00 00 63 e0                                      rsb r0, r3, r0
00560ea4  40 01 51 e1                                      cmp r1, r0, asr #2
00560ea8  05 00 00 2a                                      bhs #0x560ec4
00560eac  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560eb0  02 10 a0 e1                                      mov r1, r2
00560eb4  03 00 a0 e1                                      mov r0, r3
00560eb8  00 30 93 e5                                      ldr r3, [r3]
00560ebc  0f e0 a0 e1                                      mov lr, pc
00560ec0  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
00560ec4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560ec8, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_5video6SColorE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::video::SColor)
; decoder-mode: arm
00560ec8  04 e0 2d e5                                      str lr, [sp, #-4]!
00560ecc  0c d0 4d e2                                      sub sp, sp, #0xc
00560ed0  04 20 8d e5                                      str r2, [sp, #4]
00560ed4  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560ed8  04 00 93 e5                                      ldr r0, [r3, #4]
00560edc  00 30 93 e5                                      ldr r3, [r3]
00560ee0  00 00 63 e0                                      rsb r0, r3, r0
00560ee4  40 01 51 e1                                      cmp r1, r0, asr #2
00560ee8  05 00 00 2a                                      bhs #0x560f04
00560eec  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560ef0  02 10 a0 e1                                      mov r1, r2
00560ef4  03 00 a0 e1                                      mov r0, r3
00560ef8  00 30 93 e5                                      ldr r3, [r3]
00560efc  0f e0 a0 e1                                      mov lr, pc
00560f00  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00560f04  0c d0 8d e2                                      add sp, sp, #0xc
00560f08  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00560f0c, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_5video7SColorfE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::video::SColorf)
; decoder-mode: arm
00560f0c  08 d0 4d e2                                      sub sp, sp, #8
00560f10  04 e0 2d e5                                      str lr, [sp, #-4]!
00560f14  0c d0 4d e2                                      sub sp, sp, #0xc
00560f18  10 20 8d e5                                      str r2, [sp, #0x10]
00560f1c  14 30 8d e5                                      str r3, [sp, #0x14]
00560f20  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560f24  04 20 93 e5                                      ldr r2, [r3, #4]
00560f28  00 30 93 e5                                      ldr r3, [r3]
00560f2c  02 20 63 e0                                      rsb r2, r3, r2
00560f30  42 01 51 e1                                      cmp r1, r2, asr #2
00560f34  08 00 00 2a                                      bhs #0x560f5c
00560f38  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
00560f3c  10 30 8d e2                                      add r3, sp, #0x10
00560f40  00 c0 92 e5                                      ldr ip, [r2]
00560f44  02 00 a0 e1                                      mov r0, r2
00560f48  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00560f4c  00 20 8d e5                                      str r2, [sp]
00560f50  0e 00 93 e8                                      ldm r3, {r1, r2, r3}
00560f54  0f e0 a0 e1                                      mov lr, pc
00560f58  9c f0 9c e5                                      ldr pc, [ip, #0x9c]
00560f5c  0c d0 8d e2                                      add sp, sp, #0xc
00560f60  04 e0 9d e4                                      pop {lr}
00560f64  08 d0 8d e2                                      add sp, sp, #8
00560f68  1e ff 2f e1                                      bx lr

; FUNCTION 0x00560f6c, declared_size=76, range_size=76, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector2dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::vector2d<float> const&)
; decoder-mode: arm
00560f6c  04 e0 2d e5                                      str lr, [sp, #-4]!
00560f70  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560f74  0c d0 4d e2                                      sub sp, sp, #0xc
00560f78  04 00 93 e5                                      ldr r0, [r3, #4]
00560f7c  00 30 93 e5                                      ldr r3, [r3]
00560f80  00 00 63 e0                                      rsb r0, r3, r0
00560f84  40 01 51 e1                                      cmp r1, r0, asr #2
00560f88  08 00 00 2a                                      bhs #0x560fb0
00560f8c  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00560f90  04 c0 92 e5                                      ldr ip, [r2, #4]
00560f94  00 20 92 e5                                      ldr r2, [r2]
00560f98  00 30 90 e5                                      ldr r3, [r0]
00560f9c  0d 10 a0 e1                                      mov r1, sp
00560fa0  ac 30 93 e5                                      ldr r3, [r3, #0xac]
00560fa4  00 20 8d e5                                      str r2, [sp]
00560fa8  04 c0 8d e5                                      str ip, [sp, #4]
00560fac  33 ff 2f e1                                      blx r3
00560fb0  0c d0 8d e2                                      add sp, sp, #0xc
00560fb4  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00560fb8, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::vector3d<float> const&)
; decoder-mode: arm
00560fb8  10 40 2d e9                                      push {r4, lr}
00560fbc  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560fc0  04 00 93 e5                                      ldr r0, [r3, #4]
00560fc4  00 30 93 e5                                      ldr r3, [r3]
00560fc8  00 00 63 e0                                      rsb r0, r3, r0
00560fcc  40 01 51 e1                                      cmp r1, r0, asr #2
00560fd0  05 00 00 2a                                      bhs #0x560fec
00560fd4  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00560fd8  02 10 a0 e1                                      mov r1, r2
00560fdc  03 00 a0 e1                                      mov r0, r3
00560fe0  00 30 93 e5                                      ldr r3, [r3]
00560fe4  0f e0 a0 e1                                      mov lr, pc
00560fe8  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
00560fec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00560ff0, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector4dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::vector4d<float> const&)
; decoder-mode: arm
00560ff0  10 40 2d e9                                      push {r4, lr}
00560ff4  48 30 90 e5                                      ldr r3, [r0, #0x48]
00560ff8  04 00 93 e5                                      ldr r0, [r3, #4]
00560ffc  00 30 93 e5                                      ldr r3, [r3]
00561000  00 00 63 e0                                      rsb r0, r3, r0
00561004  40 01 51 e1                                      cmp r1, r0, asr #2
00561008  05 00 00 2a                                      bhs #0x561024
0056100c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00561010  02 10 a0 e1                                      mov r1, r2
00561014  03 00 a0 e1                                      mov r0, r3
00561018  00 30 93 e5                                      ldr r3, [r3]
0056101c  0f e0 a0 e1                                      mov lr, pc
00561020  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
00561024  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00561028, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector2dIiEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::vector2d<int> const&)
; decoder-mode: arm
00561028  04 e0 2d e5                                      str lr, [sp, #-4]!
0056102c  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561030  0c d0 4d e2                                      sub sp, sp, #0xc
00561034  04 00 93 e5                                      ldr r0, [r3, #4]
00561038  00 30 93 e5                                      ldr r3, [r3]
0056103c  00 00 63 e0                                      rsb r0, r3, r0
00561040  40 01 51 e1                                      cmp r1, r0, asr #2
00561044  06 00 00 2a                                      bhs #0x561064
00561048  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
0056104c  04 10 92 e8                                      ldm r2, {r2, ip}
00561050  00 30 90 e5                                      ldr r3, [r0]
00561054  0d 10 a0 e1                                      mov r1, sp
00561058  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
0056105c  04 10 8d e8                                      stm sp, {r2, ip}
00561060  33 ff 2f e1                                      blx r3
00561064  0c d0 8d e2                                      add sp, sp, #0xc
00561068  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0056106c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector3dIiEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::vector3d<int> const&)
; decoder-mode: arm
0056106c  10 40 2d e9                                      push {r4, lr}
00561070  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561074  04 00 93 e5                                      ldr r0, [r3, #4]
00561078  00 30 93 e5                                      ldr r3, [r3]
0056107c  00 00 63 e0                                      rsb r0, r3, r0
00561080  40 01 51 e1                                      cmp r1, r0, asr #2
00561084  05 00 00 2a                                      bhs #0x5610a0
00561088  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0056108c  02 10 a0 e1                                      mov r1, r2
00561090  03 00 a0 e1                                      mov r0, r3
00561094  00 30 93 e5                                      ldr r3, [r3]
00561098  0f e0 a0 e1                                      mov lr, pc
0056109c  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
005610a0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005610a4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector4dIiEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::vector4d<int> const&)
; decoder-mode: arm
005610a4  10 40 2d e9                                      push {r4, lr}
005610a8  48 30 90 e5                                      ldr r3, [r0, #0x48]
005610ac  04 00 93 e5                                      ldr r0, [r3, #4]
005610b0  00 30 93 e5                                      ldr r3, [r3]
005610b4  00 00 63 e0                                      rsb r0, r3, r0
005610b8  40 01 51 e1                                      cmp r1, r0, asr #2
005610bc  05 00 00 2a                                      bhs #0x5610d8
005610c0  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
005610c4  02 10 a0 e1                                      mov r1, r2
005610c8  03 00 a0 e1                                      mov r0, r3
005610cc  00 30 93 e5                                      ldr r3, [r3]
005610d0  0f e0 a0 e1                                      mov lr, pc
005610d4  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
005610d8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005610dc, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core10position2dIiEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::position2d<int>)
; decoder-mode: arm
005610dc  04 e0 2d e5                                      str lr, [sp, #-4]!
005610e0  48 30 90 e5                                      ldr r3, [r0, #0x48]
005610e4  0c d0 4d e2                                      sub sp, sp, #0xc
005610e8  04 00 93 e5                                      ldr r0, [r3, #4]
005610ec  00 30 93 e5                                      ldr r3, [r3]
005610f0  00 00 63 e0                                      rsb r0, r3, r0
005610f4  40 01 51 e1                                      cmp r1, r0, asr #2
005610f8  06 00 00 2a                                      bhs #0x561118
005610fc  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00561100  04 10 92 e8                                      ldm r2, {r2, ip}
00561104  00 30 90 e5                                      ldr r3, [r0]
00561108  0d 10 a0 e1                                      mov r1, sp
0056110c  b8 30 93 e5                                      ldr r3, [r3, #0xb8]
00561110  04 10 8d e8                                      stm sp, {r2, ip}
00561114  33 ff 2f e1                                      blx r3
00561118  0c d0 8d e2                                      add sp, sp, #0xc
0056111c  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00561120, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core4rectIiEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::rect<int>)
; decoder-mode: arm
00561120  04 e0 2d e5                                      str lr, [sp, #-4]!
00561124  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561128  14 d0 4d e2                                      sub sp, sp, #0x14
0056112c  04 00 93 e5                                      ldr r0, [r3, #4]
00561130  00 30 93 e5                                      ldr r3, [r3]
00561134  00 00 63 e0                                      rsb r0, r3, r0
00561138  40 01 51 e1                                      cmp r1, r0, asr #2
0056113c  0c 00 00 2a                                      bhs #0x561174
00561140  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00561144  00 e0 92 e5                                      ldr lr, [r2]
00561148  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0056114c  00 30 90 e5                                      ldr r3, [r0]
00561150  04 c0 92 e5                                      ldr ip, [r2, #4]
00561154  08 20 92 e5                                      ldr r2, [r2, #8]
00561158  bc 30 93 e5                                      ldr r3, [r3, #0xbc]
0056115c  0c 10 8d e5                                      str r1, [sp, #0xc]
00561160  00 e0 8d e5                                      str lr, [sp]
00561164  04 c0 8d e5                                      str ip, [sp, #4]
00561168  08 20 8d e5                                      str r2, [sp, #8]
0056116c  0d 10 a0 e1                                      mov r1, sp
00561170  33 ff 2f e1                                      blx r3
00561174  14 d0 8d e2                                      add sp, sp, #0x14
00561178  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0056117c, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiPvi
; demangled: glitch::io::CAttributes::setAttribute(int, void*, int)
; decoder-mode: arm
0056117c  10 40 2d e9                                      push {r4, lr}
00561180  48 00 90 e5                                      ldr r0, [r0, #0x48]
00561184  01 10 90 e8                                      ldm r0, {r0, ip}
00561188  0c c0 60 e0                                      rsb ip, r0, ip
0056118c  4c 01 51 e1                                      cmp r1, ip, asr #2
00561190  06 00 00 2a                                      bhs #0x5611b0
00561194  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
00561198  02 10 a0 e1                                      mov r1, r2
0056119c  03 20 a0 e1                                      mov r2, r3
005611a0  0c 00 a0 e1                                      mov r0, ip
005611a4  00 30 9c e5                                      ldr r3, [ip]
005611a8  0f e0 a0 e1                                      mov lr, pc
005611ac  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
005611b0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005611b4, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiPKcPKS3_
; demangled: glitch::io::CAttributes::setAttribute(int, char const*, char const* const*)
; decoder-mode: arm
005611b4  10 40 2d e9                                      push {r4, lr}
005611b8  48 00 90 e5                                      ldr r0, [r0, #0x48]
005611bc  01 10 90 e8                                      ldm r0, {r0, ip}
005611c0  0c c0 60 e0                                      rsb ip, r0, ip
005611c4  4c 01 51 e1                                      cmp r1, ip, asr #2
005611c8  06 00 00 2a                                      bhs #0x5611e8
005611cc  01 c1 90 e7                                      ldr ip, [r0, r1, lsl #2]
005611d0  02 10 a0 e1                                      mov r1, r2
005611d4  03 20 a0 e1                                      mov r2, r3
005611d8  0c 00 a0 e1                                      mov r0, ip
005611dc  00 30 9c e5                                      ldr r3, [ip]
005611e0  0f e0 a0 e1                                      mov lr, pc
005611e4  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
005611e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005611ec, declared_size=56, range_size=56, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::io::CAttributes::setAttribute(int, boost::intrusive_ptr<glitch::video::ITexture>)
; decoder-mode: arm
005611ec  10 40 2d e9                                      push {r4, lr}
005611f0  48 30 90 e5                                      ldr r3, [r0, #0x48]
005611f4  04 00 93 e5                                      ldr r0, [r3, #4]
005611f8  00 30 93 e5                                      ldr r3, [r3]
005611fc  00 00 63 e0                                      rsb r0, r3, r0
00561200  40 01 51 e1                                      cmp r1, r0, asr #2
00561204  05 00 00 2a                                      bhs #0x561220
00561208  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
0056120c  02 10 a0 e1                                      mov r1, r2
00561210  03 00 a0 e1                                      mov r0, r3
00561214  00 30 93 e5                                      ldr r3, [r3]
00561218  0f e0 a0 e1                                      mov lr, pc
0056121c  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
00561220  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00561224, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getQuaternionEi
; demangled: glitch::io::CAttributes::getQuaternion(int)
; decoder-mode: arm
00561224  10 40 2d e9                                      push {r4, lr}
00561228  00 30 a0 e3                                      mov r3, #0
0056122c  00 40 a0 e1                                      mov r4, r0
00561230  00 00 52 e3                                      cmp r2, #0
00561234  fe 05 a0 e3                                      mov r0, #0x3f800000
00561238  10 d0 4d e2                                      sub sp, sp, #0x10
0056123c  04 00 84 e5                                      str r0, [r4, #4]
00561240  0c 30 84 e5                                      str r3, [r4, #0xc]
00561244  00 30 84 e5                                      str r3, [r4]
00561248  08 30 84 e5                                      str r3, [r4, #8]
0056124c  13 00 00 ba                                      blt #0x5612a0
00561250  48 30 91 e5                                      ldr r3, [r1, #0x48]
00561254  04 10 93 e5                                      ldr r1, [r3, #4]
00561258  00 30 93 e5                                      ldr r3, [r3]
0056125c  01 10 63 e0                                      rsb r1, r3, r1
00561260  41 01 52 e1                                      cmp r2, r1, asr #2
00561264  0d 00 00 aa                                      bge #0x5612a0
00561268  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0056126c  0d 00 a0 e1                                      mov r0, sp
00561270  03 10 a0 e1                                      mov r1, r3
00561274  00 30 93 e5                                      ldr r3, [r3]
00561278  0f e0 a0 e1                                      mov lr, pc
0056127c  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00561280  04 10 9d e5                                      ldr r1, [sp, #4]
00561284  08 20 9d e5                                      ldr r2, [sp, #8]
00561288  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0056128c  00 00 9d e5                                      ldr r0, [sp]
00561290  04 10 84 e5                                      str r1, [r4, #4]
00561294  08 20 84 e5                                      str r2, [r4, #8]
00561298  00 00 84 e5                                      str r0, [r4]
0056129c  0c 30 84 e5                                      str r3, [r4, #0xc]
005612a0  04 00 a0 e1                                      mov r0, r4
005612a4  10 d0 8d e2                                      add sp, sp, #0x10
005612a8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005612ac, declared_size=104, range_size=104, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core10quaternionE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::quaternion)
; decoder-mode: arm
005612ac  08 d0 4d e2                                      sub sp, sp, #8
005612b0  04 e0 2d e5                                      str lr, [sp, #-4]!
005612b4  00 00 51 e3                                      cmp r1, #0
005612b8  0c d0 4d e2                                      sub sp, sp, #0xc
005612bc  10 20 8d e5                                      str r2, [sp, #0x10]
005612c0  14 30 8d e5                                      str r3, [sp, #0x14]
005612c4  0e 00 00 ba                                      blt #0x561304
005612c8  48 30 90 e5                                      ldr r3, [r0, #0x48]
005612cc  04 20 93 e5                                      ldr r2, [r3, #4]
005612d0  00 30 93 e5                                      ldr r3, [r3]
005612d4  02 20 63 e0                                      rsb r2, r3, r2
005612d8  42 01 51 e1                                      cmp r1, r2, asr #2
005612dc  08 00 00 aa                                      bge #0x561304
005612e0  01 21 93 e7                                      ldr r2, [r3, r1, lsl #2]
005612e4  10 30 8d e2                                      add r3, sp, #0x10
005612e8  00 c0 92 e5                                      ldr ip, [r2]
005612ec  02 00 a0 e1                                      mov r0, r2
005612f0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005612f4  00 20 8d e5                                      str r2, [sp]
005612f8  0e 00 93 e8                                      ldm r3, {r1, r2, r3}
005612fc  0f e0 a0 e1                                      mov lr, pc
00561300  c0 f0 9c e5                                      ldr pc, [ip, #0xc0]
00561304  0c d0 8d e2                                      add sp, sp, #0xc
00561308  04 e0 9d e4                                      pop {lr}
0056130c  08 d0 8d e2                                      add sp, sp, #8
00561310  1e ff 2f e1                                      bx lr

; FUNCTION 0x00561314, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getBox3dEi
; demangled: glitch::io::CAttributes::getBox3d(int)
; decoder-mode: arm
00561314  30 40 2d e9                                      push {r4, r5, lr}
00561318  00 30 a0 e3                                      mov r3, #0
0056131c  00 00 52 e3                                      cmp r2, #0
00561320  1c d0 4d e2                                      sub sp, sp, #0x1c
00561324  00 40 a0 e1                                      mov r4, r0
00561328  14 30 80 e5                                      str r3, [r0, #0x14]
0056132c  00 30 80 e5                                      str r3, [r0]
00561330  04 30 80 e5                                      str r3, [r0, #4]
00561334  08 30 80 e5                                      str r3, [r0, #8]
00561338  0c 30 80 e5                                      str r3, [r0, #0xc]
0056133c  10 30 80 e5                                      str r3, [r0, #0x10]
00561340  17 00 00 ba                                      blt #0x5613a4
00561344  48 30 91 e5                                      ldr r3, [r1, #0x48]
00561348  04 10 93 e5                                      ldr r1, [r3, #4]
0056134c  00 30 93 e5                                      ldr r3, [r3]
00561350  01 10 63 e0                                      rsb r1, r3, r1
00561354  41 01 52 e1                                      cmp r2, r1, asr #2
00561358  11 00 00 aa                                      bge #0x5613a4
0056135c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00561360  0d 00 a0 e1                                      mov r0, sp
00561364  03 10 a0 e1                                      mov r1, r3
00561368  00 30 93 e5                                      ldr r3, [r3]
0056136c  0f e0 a0 e1                                      mov lr, pc
00561370  70 f0 93 e5                                      ldr pc, [r3, #0x70]
00561374  04 c0 9d e5                                      ldr ip, [sp, #4]
00561378  08 00 9d e5                                      ldr r0, [sp, #8]
0056137c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00561380  10 20 9d e5                                      ldr r2, [sp, #0x10]
00561384  14 30 9d e5                                      ldr r3, [sp, #0x14]
00561388  00 50 9d e5                                      ldr r5, [sp]
0056138c  04 c0 84 e5                                      str ip, [r4, #4]
00561390  08 00 84 e5                                      str r0, [r4, #8]
00561394  00 50 84 e5                                      str r5, [r4]
00561398  0c 10 84 e5                                      str r1, [r4, #0xc]
0056139c  10 20 84 e5                                      str r2, [r4, #0x10]
005613a0  14 30 84 e5                                      str r3, [r4, #0x14]
005613a4  04 00 a0 e1                                      mov r0, r4
005613a8  1c d0 8d e2                                      add sp, sp, #0x1c
005613ac  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005613b0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core8aabbox3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::aabbox3d<float>)
; decoder-mode: arm
005613b0  30 40 2d e9                                      push {r4, r5, lr}
005613b4  00 00 51 e3                                      cmp r1, #0
005613b8  1c d0 4d e2                                      sub sp, sp, #0x1c
005613bc  16 00 00 ba                                      blt #0x56141c
005613c0  48 30 90 e5                                      ldr r3, [r0, #0x48]
005613c4  04 00 93 e5                                      ldr r0, [r3, #4]
005613c8  00 30 93 e5                                      ldr r3, [r3]
005613cc  00 00 63 e0                                      rsb r0, r3, r0
005613d0  40 01 51 e1                                      cmp r1, r0, asr #2
005613d4  10 00 00 aa                                      bge #0x56141c
005613d8  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
005613dc  00 50 92 e5                                      ldr r5, [r2]
005613e0  14 10 92 e5                                      ldr r1, [r2, #0x14]
005613e4  00 30 90 e5                                      ldr r3, [r0]
005613e8  04 40 92 e5                                      ldr r4, [r2, #4]
005613ec  08 e0 92 e5                                      ldr lr, [r2, #8]
005613f0  0c c0 92 e5                                      ldr ip, [r2, #0xc]
005613f4  10 20 92 e5                                      ldr r2, [r2, #0x10]
005613f8  ec 30 93 e5                                      ldr r3, [r3, #0xec]
005613fc  14 10 8d e5                                      str r1, [sp, #0x14]
00561400  00 50 8d e5                                      str r5, [sp]
00561404  04 40 8d e5                                      str r4, [sp, #4]
00561408  08 e0 8d e5                                      str lr, [sp, #8]
0056140c  0c c0 8d e5                                      str ip, [sp, #0xc]
00561410  10 20 8d e5                                      str r2, [sp, #0x10]
00561414  0d 10 a0 e1                                      mov r1, sp
00561418  33 ff 2f e1                                      blx r3
0056141c  1c d0 8d e2                                      add sp, sp, #0x1c
00561420  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00561424, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getPlane3dEi
; demangled: glitch::io::CAttributes::getPlane3d(int)
; decoder-mode: arm
00561424  10 40 2d e9                                      push {r4, lr}
00561428  00 40 a0 e1                                      mov r4, r0
0056142c  fe 05 a0 e3                                      mov r0, #0x3f800000
00561430  00 30 a0 e3                                      mov r3, #0
00561434  04 00 84 e5                                      str r0, [r4, #4]
00561438  00 00 52 e3                                      cmp r2, #0
0056143c  02 01 a0 e3                                      mov r0, #0x80000000
00561440  10 d0 4d e2                                      sub sp, sp, #0x10
00561444  08 30 84 e5                                      str r3, [r4, #8]
00561448  0c 00 84 e5                                      str r0, [r4, #0xc]
0056144c  00 30 84 e5                                      str r3, [r4]
00561450  13 00 00 ba                                      blt #0x5614a4
00561454  48 30 91 e5                                      ldr r3, [r1, #0x48]
00561458  04 10 93 e5                                      ldr r1, [r3, #4]
0056145c  00 30 93 e5                                      ldr r3, [r3]
00561460  01 10 63 e0                                      rsb r1, r3, r1
00561464  41 01 52 e1                                      cmp r2, r1, asr #2
00561468  0d 00 00 aa                                      bge #0x5614a4
0056146c  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00561470  0d 00 a0 e1                                      mov r0, sp
00561474  03 10 a0 e1                                      mov r1, r3
00561478  00 30 93 e5                                      ldr r3, [r3]
0056147c  0f e0 a0 e1                                      mov lr, pc
00561480  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00561484  04 10 9d e5                                      ldr r1, [sp, #4]
00561488  08 20 9d e5                                      ldr r2, [sp, #8]
0056148c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00561490  00 00 9d e5                                      ldr r0, [sp]
00561494  04 10 84 e5                                      str r1, [r4, #4]
00561498  08 20 84 e5                                      str r2, [r4, #8]
0056149c  00 00 84 e5                                      str r0, [r4]
005614a0  0c 30 84 e5                                      str r3, [r4, #0xc]
005614a4  04 00 a0 e1                                      mov r0, r4
005614a8  10 d0 8d e2                                      add sp, sp, #0x10
005614ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005614b0, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core7plane3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::plane3d<float>)
; decoder-mode: arm
005614b0  04 e0 2d e5                                      str lr, [sp, #-4]!
005614b4  00 00 51 e3                                      cmp r1, #0
005614b8  14 d0 4d e2                                      sub sp, sp, #0x14
005614bc  12 00 00 ba                                      blt #0x56150c
005614c0  48 30 90 e5                                      ldr r3, [r0, #0x48]
005614c4  04 00 93 e5                                      ldr r0, [r3, #4]
005614c8  00 30 93 e5                                      ldr r3, [r3]
005614cc  00 00 63 e0                                      rsb r0, r3, r0
005614d0  40 01 51 e1                                      cmp r1, r0, asr #2
005614d4  0c 00 00 aa                                      bge #0x56150c
005614d8  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
005614dc  00 e0 92 e5                                      ldr lr, [r2]
005614e0  0c 10 92 e5                                      ldr r1, [r2, #0xc]
005614e4  00 30 90 e5                                      ldr r3, [r0]
005614e8  04 c0 92 e5                                      ldr ip, [r2, #4]
005614ec  08 20 92 e5                                      ldr r2, [r2, #8]
005614f0  f0 30 93 e5                                      ldr r3, [r3, #0xf0]
005614f4  0c 10 8d e5                                      str r1, [sp, #0xc]
005614f8  00 e0 8d e5                                      str lr, [sp]
005614fc  04 c0 8d e5                                      str ip, [sp, #4]
00561500  08 20 8d e5                                      str r2, [sp, #8]
00561504  0d 10 a0 e1                                      mov r1, sp
00561508  33 ff 2f e1                                      blx r3
0056150c  14 d0 8d e2                                      add sp, sp, #0x14
00561510  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00561514, declared_size=192, range_size=192, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getTriangle3dEi
; demangled: glitch::io::CAttributes::getTriangle3d(int)
; decoder-mode: arm
00561514  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00561518  00 30 a0 e3                                      mov r3, #0
0056151c  00 00 52 e3                                      cmp r2, #0
00561520  28 d0 4d e2                                      sub sp, sp, #0x28
00561524  00 40 a0 e1                                      mov r4, r0
00561528  20 30 80 e5                                      str r3, [r0, #0x20]
0056152c  00 30 80 e5                                      str r3, [r0]
00561530  04 30 80 e5                                      str r3, [r0, #4]
00561534  08 30 80 e5                                      str r3, [r0, #8]
00561538  0c 30 80 e5                                      str r3, [r0, #0xc]
0056153c  10 30 80 e5                                      str r3, [r0, #0x10]
00561540  14 30 80 e5                                      str r3, [r0, #0x14]
00561544  18 30 80 e5                                      str r3, [r0, #0x18]
00561548  1c 30 80 e5                                      str r3, [r0, #0x1c]
0056154c  1d 00 00 ba                                      blt #0x5615c8
00561550  48 30 91 e5                                      ldr r3, [r1, #0x48]
00561554  04 10 93 e5                                      ldr r1, [r3, #4]
00561558  00 30 93 e5                                      ldr r3, [r3]
0056155c  01 10 63 e0                                      rsb r1, r3, r1
00561560  41 01 52 e1                                      cmp r2, r1, asr #2
00561564  17 00 00 aa                                      bge #0x5615c8
00561568  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
0056156c  04 00 8d e2                                      add r0, sp, #4
00561570  03 10 a0 e1                                      mov r1, r3
00561574  00 30 93 e5                                      ldr r3, [r3]
00561578  0f e0 a0 e1                                      mov lr, pc
0056157c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00561580  08 70 9d e5                                      ldr r7, [sp, #8]
00561584  0c 60 9d e5                                      ldr r6, [sp, #0xc]
00561588  10 50 9d e5                                      ldr r5, [sp, #0x10]
0056158c  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00561590  18 00 9d e5                                      ldr r0, [sp, #0x18]
00561594  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
00561598  20 20 9d e5                                      ldr r2, [sp, #0x20]
0056159c  24 30 9d e5                                      ldr r3, [sp, #0x24]
005615a0  04 80 9d e5                                      ldr r8, [sp, #4]
005615a4  04 70 84 e5                                      str r7, [r4, #4]
005615a8  08 60 84 e5                                      str r6, [r4, #8]
005615ac  00 80 84 e5                                      str r8, [r4]
005615b0  0c 50 84 e5                                      str r5, [r4, #0xc]
005615b4  10 c0 84 e5                                      str ip, [r4, #0x10]
005615b8  14 00 84 e5                                      str r0, [r4, #0x14]
005615bc  18 10 84 e5                                      str r1, [r4, #0x18]
005615c0  1c 20 84 e5                                      str r2, [r4, #0x1c]
005615c4  20 30 84 e5                                      str r3, [r4, #0x20]
005615c8  04 00 a0 e1                                      mov r0, r4
005615cc  28 d0 8d e2                                      add sp, sp, #0x28
005615d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005615d4, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core10triangle3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::triangle3d<float>)
; decoder-mode: arm
005615d4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005615d8  00 00 51 e3                                      cmp r1, #0
005615dc  28 d0 4d e2                                      sub sp, sp, #0x28
005615e0  1c 00 00 ba                                      blt #0x561658
005615e4  48 30 90 e5                                      ldr r3, [r0, #0x48]
005615e8  04 00 93 e5                                      ldr r0, [r3, #4]
005615ec  00 30 93 e5                                      ldr r3, [r3]
005615f0  00 00 63 e0                                      rsb r0, r3, r0
005615f4  40 01 51 e1                                      cmp r1, r0, asr #2
005615f8  16 00 00 aa                                      bge #0x561658
005615fc  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00561600  00 80 92 e5                                      ldr r8, [r2]
00561604  20 10 92 e5                                      ldr r1, [r2, #0x20]
00561608  00 30 90 e5                                      ldr r3, [r0]
0056160c  04 70 92 e5                                      ldr r7, [r2, #4]
00561610  08 60 92 e5                                      ldr r6, [r2, #8]
00561614  0c 50 92 e5                                      ldr r5, [r2, #0xc]
00561618  10 40 92 e5                                      ldr r4, [r2, #0x10]
0056161c  14 e0 92 e5                                      ldr lr, [r2, #0x14]
00561620  18 c0 92 e5                                      ldr ip, [r2, #0x18]
00561624  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
00561628  c8 30 93 e5                                      ldr r3, [r3, #0xc8]
0056162c  24 10 8d e5                                      str r1, [sp, #0x24]
00561630  04 80 8d e5                                      str r8, [sp, #4]
00561634  08 70 8d e5                                      str r7, [sp, #8]
00561638  0c 60 8d e5                                      str r6, [sp, #0xc]
0056163c  10 50 8d e5                                      str r5, [sp, #0x10]
00561640  14 40 8d e5                                      str r4, [sp, #0x14]
00561644  18 e0 8d e5                                      str lr, [sp, #0x18]
00561648  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056164c  20 20 8d e5                                      str r2, [sp, #0x20]
00561650  04 10 8d e2                                      add r1, sp, #4
00561654  33 ff 2f e1                                      blx r3
00561658  28 d0 8d e2                                      add sp, sp, #0x28
0056165c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x00561660, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getLine2dEi
; demangled: glitch::io::CAttributes::getLine2d(int)
; decoder-mode: arm
00561660  10 40 2d e9                                      push {r4, lr}
00561664  00 30 a0 e3                                      mov r3, #0
00561668  00 00 52 e3                                      cmp r2, #0
0056166c  10 d0 4d e2                                      sub sp, sp, #0x10
00561670  00 40 a0 e1                                      mov r4, r0
00561674  0c 30 80 e5                                      str r3, [r0, #0xc]
00561678  00 30 80 e5                                      str r3, [r0]
0056167c  04 30 80 e5                                      str r3, [r0, #4]
00561680  08 30 80 e5                                      str r3, [r0, #8]
00561684  13 00 00 ba                                      blt #0x5616d8
00561688  48 30 91 e5                                      ldr r3, [r1, #0x48]
0056168c  04 10 93 e5                                      ldr r1, [r3, #4]
00561690  00 30 93 e5                                      ldr r3, [r3]
00561694  01 10 63 e0                                      rsb r1, r3, r1
00561698  41 01 52 e1                                      cmp r2, r1, asr #2
0056169c  0d 00 00 aa                                      bge #0x5616d8
005616a0  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005616a4  0d 00 a0 e1                                      mov r0, sp
005616a8  03 10 a0 e1                                      mov r1, r3
005616ac  00 30 93 e5                                      ldr r3, [r3]
005616b0  0f e0 a0 e1                                      mov lr, pc
005616b4  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
005616b8  04 10 9d e5                                      ldr r1, [sp, #4]
005616bc  08 20 9d e5                                      ldr r2, [sp, #8]
005616c0  0c 30 9d e5                                      ldr r3, [sp, #0xc]
005616c4  00 00 9d e5                                      ldr r0, [sp]
005616c8  04 10 84 e5                                      str r1, [r4, #4]
005616cc  08 20 84 e5                                      str r2, [r4, #8]
005616d0  00 00 84 e5                                      str r0, [r4]
005616d4  0c 30 84 e5                                      str r3, [r4, #0xc]
005616d8  04 00 a0 e1                                      mov r0, r4
005616dc  10 d0 8d e2                                      add sp, sp, #0x10
005616e0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005616e4, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core6line2dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::line2d<float>)
; decoder-mode: arm
005616e4  04 e0 2d e5                                      str lr, [sp, #-4]!
005616e8  00 00 51 e3                                      cmp r1, #0
005616ec  14 d0 4d e2                                      sub sp, sp, #0x14
005616f0  12 00 00 ba                                      blt #0x561740
005616f4  48 30 90 e5                                      ldr r3, [r0, #0x48]
005616f8  04 00 93 e5                                      ldr r0, [r3, #4]
005616fc  00 30 93 e5                                      ldr r3, [r3]
00561700  00 00 63 e0                                      rsb r0, r3, r0
00561704  40 01 51 e1                                      cmp r1, r0, asr #2
00561708  0c 00 00 aa                                      bge #0x561740
0056170c  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00561710  00 e0 92 e5                                      ldr lr, [r2]
00561714  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00561718  00 30 90 e5                                      ldr r3, [r0]
0056171c  04 c0 92 e5                                      ldr ip, [r2, #4]
00561720  08 20 92 e5                                      ldr r2, [r2, #8]
00561724  d8 30 93 e5                                      ldr r3, [r3, #0xd8]
00561728  0c 10 8d e5                                      str r1, [sp, #0xc]
0056172c  00 e0 8d e5                                      str lr, [sp]
00561730  04 c0 8d e5                                      str ip, [sp, #4]
00561734  08 20 8d e5                                      str r2, [sp, #8]
00561738  0d 10 a0 e1                                      mov r1, sp
0056173c  33 ff 2f e1                                      blx r3
00561740  14 d0 8d e2                                      add sp, sp, #0x14
00561744  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00561748, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getLine3dEi
; demangled: glitch::io::CAttributes::getLine3d(int)
; decoder-mode: arm
00561748  30 40 2d e9                                      push {r4, r5, lr}
0056174c  00 30 a0 e3                                      mov r3, #0
00561750  00 00 52 e3                                      cmp r2, #0
00561754  1c d0 4d e2                                      sub sp, sp, #0x1c
00561758  00 40 a0 e1                                      mov r4, r0
0056175c  14 30 80 e5                                      str r3, [r0, #0x14]
00561760  00 30 80 e5                                      str r3, [r0]
00561764  04 30 80 e5                                      str r3, [r0, #4]
00561768  08 30 80 e5                                      str r3, [r0, #8]
0056176c  0c 30 80 e5                                      str r3, [r0, #0xc]
00561770  10 30 80 e5                                      str r3, [r0, #0x10]
00561774  17 00 00 ba                                      blt #0x5617d8
00561778  48 30 91 e5                                      ldr r3, [r1, #0x48]
0056177c  04 10 93 e5                                      ldr r1, [r3, #4]
00561780  00 30 93 e5                                      ldr r3, [r3]
00561784  01 10 63 e0                                      rsb r1, r3, r1
00561788  41 01 52 e1                                      cmp r2, r1, asr #2
0056178c  11 00 00 aa                                      bge #0x5617d8
00561790  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00561794  0d 00 a0 e1                                      mov r0, sp
00561798  03 10 a0 e1                                      mov r1, r3
0056179c  00 30 93 e5                                      ldr r3, [r3]
005617a0  0f e0 a0 e1                                      mov lr, pc
005617a4  64 f0 93 e5                                      ldr pc, [r3, #0x64]
005617a8  04 c0 9d e5                                      ldr ip, [sp, #4]
005617ac  08 00 9d e5                                      ldr r0, [sp, #8]
005617b0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005617b4  10 20 9d e5                                      ldr r2, [sp, #0x10]
005617b8  14 30 9d e5                                      ldr r3, [sp, #0x14]
005617bc  00 50 9d e5                                      ldr r5, [sp]
005617c0  04 c0 84 e5                                      str ip, [r4, #4]
005617c4  08 00 84 e5                                      str r0, [r4, #8]
005617c8  00 50 84 e5                                      str r5, [r4]
005617cc  0c 10 84 e5                                      str r1, [r4, #0xc]
005617d0  10 20 84 e5                                      str r2, [r4, #0x10]
005617d4  14 30 84 e5                                      str r3, [r4, #0x14]
005617d8  04 00 a0 e1                                      mov r0, r4
005617dc  1c d0 8d e2                                      add sp, sp, #0x1c
005617e0  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005617e4, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiNS_4core6line3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::line3d<float>)
; decoder-mode: arm
005617e4  30 40 2d e9                                      push {r4, r5, lr}
005617e8  00 00 51 e3                                      cmp r1, #0
005617ec  1c d0 4d e2                                      sub sp, sp, #0x1c
005617f0  16 00 00 ba                                      blt #0x561850
005617f4  48 30 90 e5                                      ldr r3, [r0, #0x48]
005617f8  04 00 93 e5                                      ldr r0, [r3, #4]
005617fc  00 30 93 e5                                      ldr r3, [r3]
00561800  00 00 63 e0                                      rsb r0, r3, r0
00561804  40 01 51 e1                                      cmp r1, r0, asr #2
00561808  10 00 00 aa                                      bge #0x561850
0056180c  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00561810  00 50 92 e5                                      ldr r5, [r2]
00561814  14 10 92 e5                                      ldr r1, [r2, #0x14]
00561818  00 30 90 e5                                      ldr r3, [r0]
0056181c  04 40 92 e5                                      ldr r4, [r2, #4]
00561820  08 e0 92 e5                                      ldr lr, [r2, #8]
00561824  0c c0 92 e5                                      ldr ip, [r2, #0xc]
00561828  10 20 92 e5                                      ldr r2, [r2, #0x10]
0056182c  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
00561830  14 10 8d e5                                      str r1, [sp, #0x14]
00561834  00 50 8d e5                                      str r5, [sp]
00561838  04 40 8d e5                                      str r4, [sp, #4]
0056183c  08 e0 8d e5                                      str lr, [sp, #8]
00561840  0c c0 8d e5                                      str ip, [sp, #0xc]
00561844  10 20 8d e5                                      str r2, [sp, #0x10]
00561848  0d 10 a0 e1                                      mov r1, sp
0056184c  33 ff 2f e1                                      blx r3
00561850  1c d0 8d e2                                      add sp, sp, #0x1c
00561854  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00561858, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes14getUserPointerEi
; demangled: glitch::io::CAttributes::getUserPointer(int)
; decoder-mode: arm
00561858  00 00 51 e3                                      cmp r1, #0
0056185c  10 40 2d e9                                      push {r4, lr}
00561860  0b 00 00 ba                                      blt #0x561894
00561864  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561868  04 20 93 e5                                      ldr r2, [r3, #4]
0056186c  00 30 93 e5                                      ldr r3, [r3]
00561870  02 20 63 e0                                      rsb r2, r3, r2
00561874  42 01 51 e1                                      cmp r1, r2, asr #2
00561878  05 00 00 aa                                      bge #0x561894
0056187c  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00561880  03 00 a0 e1                                      mov r0, r3
00561884  00 30 93 e5                                      ldr r3, [r3]
00561888  0f e0 a0 e1                                      mov lr, pc
0056188c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00561890  10 80 bd e8                                      pop {r4, pc}
00561894  00 00 a0 e3                                      mov r0, #0
00561898  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056189c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiPv
; demangled: glitch::io::CAttributes::setAttribute(int, void*)
; decoder-mode: arm
0056189c  00 30 51 e2                                      subs r3, r1, #0
005618a0  10 40 2d e9                                      push {r4, lr}
005618a4  0a 00 00 ba                                      blt #0x5618d4
005618a8  48 00 90 e5                                      ldr r0, [r0, #0x48]
005618ac  01 10 90 e8                                      ldm r0, {r0, ip}
005618b0  0c c0 60 e0                                      rsb ip, r0, ip
005618b4  4c 01 53 e1                                      cmp r3, ip, asr #2
005618b8  05 00 00 aa                                      bge #0x5618d4
005618bc  03 31 90 e7                                      ldr r3, [r0, r3, lsl #2]
005618c0  02 10 a0 e1                                      mov r1, r2
005618c4  03 00 a0 e1                                      mov r0, r3
005618c8  00 30 93 e5                                      ldr r3, [r3]
005618cc  0f e0 a0 e1                                      mov lr, pc
005618d0  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
005618d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005618d8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes3popEv
; demangled: glitch::io::CAttributes::pop()
; decoder-mode: arm
005618d8  44 30 90 e5                                      ldr r3, [r0, #0x44]
005618dc  38 30 93 e5                                      ldr r3, [r3, #0x38]
005618e0  20 20 83 e2                                      add r2, r3, #0x20
005618e4  48 20 80 e5                                      str r2, [r0, #0x48]
005618e8  44 30 80 e5                                      str r3, [r0, #0x44]
005618ec  1e ff 2f e1                                      bx lr

; FUNCTION 0x005618f0, declared_size=24, range_size=24, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes14getGroupsCountEv
; demangled: glitch::io::CAttributes::getGroupsCount()
; decoder-mode: arm
005618f0  44 30 90 e5                                      ldr r3, [r0, #0x44]
005618f4  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
005618f8  30 00 93 e5                                      ldr r0, [r3, #0x30]
005618fc  00 00 62 e0                                      rsb r0, r2, r0
00561900  40 01 a0 e1                                      asr r0, r0, #2
00561904  1e ff 2f e1                                      bx lr

; FUNCTION 0x00561908, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8setGroupEj
; demangled: glitch::io::CAttributes::setGroup(unsigned int)
; decoder-mode: arm
00561908  44 30 90 e5                                      ldr r3, [r0, #0x44]
0056190c  2c 30 93 e5                                      ldr r3, [r3, #0x2c]
00561910  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00561914  20 20 83 e2                                      add r2, r3, #0x20
00561918  48 20 80 e5                                      str r2, [r0, #0x48]
0056191c  44 30 80 e5                                      str r3, [r0, #0x44]
00561920  1e ff 2f e1                                      bx lr

; FUNCTION 0x00561924, declared_size=12, range_size=12, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getGroupNameEv
; demangled: glitch::io::CAttributes::getGroupName()
; decoder-mode: arm
00561924  44 00 90 e5                                      ldr r0, [r0, #0x44]
00561928  08 00 80 e2                                      add r0, r0, #8
0056192c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00561950, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getStringWEi
; demangled: glitch::io::CAttributes::getStringW(int)
; decoder-mode: arm
00561950  10 40 2d e9                                      push {r4, lr}
00561954  48 30 91 e5                                      ldr r3, [r1, #0x48]
00561958  00 40 a0 e1                                      mov r4, r0
0056195c  04 10 93 e5                                      ldr r1, [r3, #4]
00561960  00 30 93 e5                                      ldr r3, [r3]
00561964  01 10 63 e0                                      rsb r1, r3, r1
00561968  41 01 52 e1                                      cmp r2, r1, asr #2
0056196c  08 00 00 3a                                      blo #0x561994
00561970  40 00 84 e5                                      str r0, [r4, #0x40]
00561974  44 00 84 e5                                      str r0, [r4, #0x44]
00561978  10 10 a0 e3                                      mov r1, #0x10
0056197c  e7 fb f6 eb                                      bl #0x320920
00561980  40 30 94 e5                                      ldr r3, [r4, #0x40]
00561984  00 20 a0 e3                                      mov r2, #0
00561988  04 00 a0 e1                                      mov r0, r4
0056198c  00 20 83 e5                                      str r2, [r3]
00561990  10 80 bd e8                                      pop {r4, pc}
00561994  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00561998  03 10 a0 e1                                      mov r1, r3
0056199c  00 30 93 e5                                      ldr r3, [r3]
005619a0  0f e0 a0 e1                                      mov lr, pc
005619a4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
005619a8  04 00 a0 e1                                      mov r0, r4
005619ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00561aa0, declared_size=180, range_size=180, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiN5boost13intrusive_ptrINS_5video6CLightEEE
; demangled: glitch::io::CAttributes::setAttribute(int, boost::intrusive_ptr<glitch::video::CLight>)
; decoder-mode: arm
00561aa0  10 40 2d e9                                      push {r4, lr}
00561aa4  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561aa8  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
00561aac  08 d0 4d e2                                      sub sp, sp, #8
00561ab0  04 00 93 e5                                      ldr r0, [r3, #4]
00561ab4  00 30 93 e5                                      ldr r3, [r3]
00561ab8  04 40 8f e0                                      add r4, pc, r4
00561abc  00 00 63 e0                                      rsb r0, r3, r0
00561ac0  40 01 51 e1                                      cmp r1, r0, asr #2
00561ac4  1e 00 00 2a                                      bhs #0x561b44
00561ac8  01 01 93 e7                                      ldr r0, [r3, r1, lsl #2]
00561acc  00 20 92 e5                                      ldr r2, [r2]
00561ad0  00 30 90 e5                                      ldr r3, [r0]
00561ad4  00 00 52 e3                                      cmp r2, #0
00561ad8  00 31 93 e5                                      ldr r3, [r3, #0x100]
00561adc  04 20 8d e5                                      str r2, [sp, #4]
00561ae0  00 10 92 15                                      ldrne r1, [r2]
00561ae4  01 10 81 12                                      addne r1, r1, #1
00561ae8  00 10 82 15                                      strne r1, [r2]
00561aec  04 10 8d e2                                      add r1, sp, #4
00561af0  33 ff 2f e1                                      blx r3
00561af4  04 00 9d e5                                      ldr r0, [sp, #4]
00561af8  00 00 50 e3                                      cmp r0, #0
00561afc  10 00 00 0a                                      beq #0x561b44
00561b00  00 30 90 e5                                      ldr r3, [r0]
00561b04  01 30 43 e2                                      sub r3, r3, #1
00561b08  00 00 53 e3                                      cmp r3, #0
00561b0c  00 30 80 e5                                      str r3, [r0]
00561b10  0b 00 00 1a                                      bne #0x561b44
00561b14  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
00561b18  00 00 53 e3                                      cmp r3, #0
00561b1c  05 00 00 1a                                      bne #0x561b38
00561b20  28 30 9f e5                                      ldr r3, [pc, #0x28]
00561b24  50 20 90 e5                                      ldr r2, [r0, #0x50]
00561b28  03 30 94 e7                                      ldr r3, [r4, r3]
00561b2c  00 10 93 e5                                      ldr r1, [r3]
00561b30  00 10 82 e5                                      str r1, [r2]
00561b34  00 20 83 e5                                      str r2, [r3]
00561b38  00 30 a0 e3                                      mov r3, #0
00561b3c  50 30 80 e5                                      str r3, [r0, #0x50]
00561b40  da b1 f6 eb                                      bl #0x30e2b0
00561b44  08 d0 8d e2                                      add sp, sp, #8
00561b48  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00561b4c  d8 2f 43 00 c0 3c 00 00                          .byte 0xd8, 0x2f, 0x43, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00561f04, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getEnumEiPKPKc
; demangled: glitch::io::CAttributes::getEnum(int, char const* const*)
; decoder-mode: arm
00561f04  30 40 2d e9                                      push {r4, r5, lr}
00561f08  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561f0c  0c d0 4d e2                                      sub sp, sp, #0xc
00561f10  04 00 93 e5                                      ldr r0, [r3, #4]
00561f14  00 30 93 e5                                      ldr r3, [r3]
00561f18  00 00 63 e0                                      rsb r0, r3, r0
00561f1c  40 01 51 e1                                      cmp r1, r0, asr #2
00561f20  03 00 00 3a                                      blo #0x561f34
00561f24  00 40 e0 e3                                      mvn r4, #0
00561f28  04 00 a0 e1                                      mov r0, r4
00561f2c  0c d0 8d e2                                      add sp, sp, #0xc
00561f30  30 80 bd e8                                      pop {r4, r5, pc}
00561f34  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00561f38  00 00 53 e3                                      cmp r3, #0
00561f3c  00 00 52 13                                      cmpne r2, #0
00561f40  f7 ff ff 0a                                      beq #0x561f24
00561f44  03 00 a0 e1                                      mov r0, r3
00561f48  00 30 93 e5                                      ldr r3, [r3]
00561f4c  04 20 8d e5                                      str r2, [sp, #4]
00561f50  0f e0 a0 e1                                      mov lr, pc
00561f54  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00561f58  00 50 50 e2                                      subs r5, r0, #0
00561f5c  04 20 9d e5                                      ldr r2, [sp, #4]
00561f60  ef ff ff 0a                                      beq #0x561f24
00561f64  00 10 92 e5                                      ldr r1, [r2]
00561f68  00 00 51 e3                                      cmp r1, #0
00561f6c  ec ff ff 0a                                      beq #0x561f24
00561f70  00 40 a0 e3                                      mov r4, #0
00561f74  05 00 a0 e1                                      mov r0, r5
00561f78  04 20 8d e5                                      str r2, [sp, #4]
00561f7c  e6 b0 f6 eb                                      bl #0x30e31c
00561f80  00 00 50 e3                                      cmp r0, #0
00561f84  04 20 9d e5                                      ldr r2, [sp, #4]
00561f88  e6 ff ff 0a                                      beq #0x561f28
00561f8c  01 40 84 e2                                      add r4, r4, #1
00561f90  04 11 92 e7                                      ldr r1, [r2, r4, lsl #2]
00561f94  00 00 51 e3                                      cmp r1, #0
00561f98  f5 ff ff 1a                                      bne #0x561f74
00561f9c  e0 ff ff ea                                      b #0x561f24

; FUNCTION 0x00561fa0, declared_size=124, range_size=124, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getAttributePEPKc
; demangled: glitch::io::CAttributes::getAttributeP(char const*)
; decoder-mode: arm
00561fa0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00561fa4  48 30 90 e5                                      ldr r3, [r0, #0x48]
00561fa8  00 50 a0 e1                                      mov r5, r0
00561fac  01 60 a0 e1                                      mov r6, r1
00561fb0  04 20 93 e5                                      ldr r2, [r3, #4]
00561fb4  00 30 93 e5                                      ldr r3, [r3]
00561fb8  02 20 63 e0                                      rsb r2, r3, r2
00561fbc  22 21 b0 e1                                      lsrs r2, r2, #2
00561fc0  13 00 00 0a                                      beq #0x562014
00561fc4  00 40 a0 e3                                      mov r4, #0
00561fc8  05 00 00 ea                                      b #0x561fe4
00561fcc  48 30 95 e5                                      ldr r3, [r5, #0x48]
00561fd0  04 20 93 e5                                      ldr r2, [r3, #4]
00561fd4  00 30 93 e5                                      ldr r3, [r3]
00561fd8  02 20 63 e0                                      rsb r2, r3, r2
00561fdc  42 01 54 e1                                      cmp r4, r2, asr #2
00561fe0  0b 00 00 2a                                      bhs #0x562014
00561fe4  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00561fe8  06 10 a0 e1                                      mov r1, r6
00561fec  04 71 a0 e1                                      lsl r7, r4, #2
00561ff0  08 00 80 e2                                      add r0, r0, #8
00561ff4  d1 50 ff eb                                      bl #0x536340
00561ff8  00 00 50 e3                                      cmp r0, #0
00561ffc  01 40 84 e2                                      add r4, r4, #1
00562000  f1 ff ff 0a                                      beq #0x561fcc
00562004  48 30 95 e5                                      ldr r3, [r5, #0x48]
00562008  00 30 93 e5                                      ldr r3, [r3]
0056200c  07 00 93 e7                                      ldr r0, [r3, r7]
00562010  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00562014  00 00 a0 e3                                      mov r0, #0
00562018  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x0056201c, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes14getUserPointerEPKc
; demangled: glitch::io::CAttributes::getUserPointer(char const*)
; decoder-mode: arm
0056201c  10 40 2d e9                                      push {r4, lr}
00562020  de ff ff eb                                      bl #0x561fa0
00562024  00 30 50 e2                                      subs r3, r0, #0
00562028  03 00 00 0a                                      beq #0x56203c
0056202c  00 30 93 e5                                      ldr r3, [r3]
00562030  0f e0 a0 e1                                      mov lr, pc
00562034  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00562038  10 80 bd e8                                      pop {r4, pc}
0056203c  03 00 a0 e1                                      mov r0, r3
00562040  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562044, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getLine3dEPKc
; demangled: glitch::io::CAttributes::getLine3d(char const*)
; decoder-mode: arm
00562044  30 40 2d e9                                      push {r4, r5, lr}
00562048  00 30 a0 e3                                      mov r3, #0
0056204c  00 40 a0 e1                                      mov r4, r0
00562050  1c d0 4d e2                                      sub sp, sp, #0x1c
00562054  01 00 a0 e1                                      mov r0, r1
00562058  14 30 84 e5                                      str r3, [r4, #0x14]
0056205c  00 30 84 e5                                      str r3, [r4]
00562060  04 30 84 e5                                      str r3, [r4, #4]
00562064  08 30 84 e5                                      str r3, [r4, #8]
00562068  0c 30 84 e5                                      str r3, [r4, #0xc]
0056206c  10 30 84 e5                                      str r3, [r4, #0x10]
00562070  02 10 a0 e1                                      mov r1, r2
00562074  c9 ff ff eb                                      bl #0x561fa0
00562078  00 00 50 e3                                      cmp r0, #0
0056207c  10 00 00 0a                                      beq #0x5620c4
00562080  00 10 a0 e1                                      mov r1, r0
00562084  00 30 90 e5                                      ldr r3, [r0]
00562088  0d 00 a0 e1                                      mov r0, sp
0056208c  0f e0 a0 e1                                      mov lr, pc
00562090  64 f0 93 e5                                      ldr pc, [r3, #0x64]
00562094  04 c0 9d e5                                      ldr ip, [sp, #4]
00562098  08 00 9d e5                                      ldr r0, [sp, #8]
0056209c  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005620a0  10 20 9d e5                                      ldr r2, [sp, #0x10]
005620a4  14 30 9d e5                                      ldr r3, [sp, #0x14]
005620a8  00 50 9d e5                                      ldr r5, [sp]
005620ac  04 c0 84 e5                                      str ip, [r4, #4]
005620b0  08 00 84 e5                                      str r0, [r4, #8]
005620b4  00 50 84 e5                                      str r5, [r4]
005620b8  0c 10 84 e5                                      str r1, [r4, #0xc]
005620bc  10 20 84 e5                                      str r2, [r4, #0x10]
005620c0  14 30 84 e5                                      str r3, [r4, #0x14]
005620c4  04 00 a0 e1                                      mov r0, r4
005620c8  1c d0 8d e2                                      add sp, sp, #0x1c
005620cc  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005620d0, declared_size=116, range_size=116, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getLine2dEPKc
; demangled: glitch::io::CAttributes::getLine2d(char const*)
; decoder-mode: arm
005620d0  10 40 2d e9                                      push {r4, lr}
005620d4  00 30 a0 e3                                      mov r3, #0
005620d8  00 40 a0 e1                                      mov r4, r0
005620dc  10 d0 4d e2                                      sub sp, sp, #0x10
005620e0  01 00 a0 e1                                      mov r0, r1
005620e4  0c 30 84 e5                                      str r3, [r4, #0xc]
005620e8  00 30 84 e5                                      str r3, [r4]
005620ec  04 30 84 e5                                      str r3, [r4, #4]
005620f0  08 30 84 e5                                      str r3, [r4, #8]
005620f4  02 10 a0 e1                                      mov r1, r2
005620f8  a8 ff ff eb                                      bl #0x561fa0
005620fc  00 00 50 e3                                      cmp r0, #0
00562100  0c 00 00 0a                                      beq #0x562138
00562104  00 10 a0 e1                                      mov r1, r0
00562108  00 30 90 e5                                      ldr r3, [r0]
0056210c  0d 00 a0 e1                                      mov r0, sp
00562110  0f e0 a0 e1                                      mov lr, pc
00562114  5c f0 93 e5                                      ldr pc, [r3, #0x5c]
00562118  04 10 9d e5                                      ldr r1, [sp, #4]
0056211c  08 20 9d e5                                      ldr r2, [sp, #8]
00562120  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00562124  00 00 9d e5                                      ldr r0, [sp]
00562128  04 10 84 e5                                      str r1, [r4, #4]
0056212c  08 20 84 e5                                      str r2, [r4, #8]
00562130  00 00 84 e5                                      str r0, [r4]
00562134  0c 30 84 e5                                      str r3, [r4, #0xc]
00562138  04 00 a0 e1                                      mov r0, r4
0056213c  10 d0 8d e2                                      add sp, sp, #0x10
00562140  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562144, declared_size=176, range_size=176, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getTriangle3dEPKc
; demangled: glitch::io::CAttributes::getTriangle3d(char const*)
; decoder-mode: arm
00562144  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00562148  00 30 a0 e3                                      mov r3, #0
0056214c  00 40 a0 e1                                      mov r4, r0
00562150  28 d0 4d e2                                      sub sp, sp, #0x28
00562154  01 00 a0 e1                                      mov r0, r1
00562158  20 30 84 e5                                      str r3, [r4, #0x20]
0056215c  00 30 84 e5                                      str r3, [r4]
00562160  04 30 84 e5                                      str r3, [r4, #4]
00562164  08 30 84 e5                                      str r3, [r4, #8]
00562168  0c 30 84 e5                                      str r3, [r4, #0xc]
0056216c  10 30 84 e5                                      str r3, [r4, #0x10]
00562170  14 30 84 e5                                      str r3, [r4, #0x14]
00562174  18 30 84 e5                                      str r3, [r4, #0x18]
00562178  1c 30 84 e5                                      str r3, [r4, #0x1c]
0056217c  02 10 a0 e1                                      mov r1, r2
00562180  86 ff ff eb                                      bl #0x561fa0
00562184  00 00 50 e3                                      cmp r0, #0
00562188  16 00 00 0a                                      beq #0x5621e8
0056218c  00 10 a0 e1                                      mov r1, r0
00562190  00 30 90 e5                                      ldr r3, [r0]
00562194  04 00 8d e2                                      add r0, sp, #4
00562198  0f e0 a0 e1                                      mov lr, pc
0056219c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
005621a0  08 70 9d e5                                      ldr r7, [sp, #8]
005621a4  0c 60 9d e5                                      ldr r6, [sp, #0xc]
005621a8  10 50 9d e5                                      ldr r5, [sp, #0x10]
005621ac  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005621b0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005621b4  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
005621b8  20 20 9d e5                                      ldr r2, [sp, #0x20]
005621bc  24 30 9d e5                                      ldr r3, [sp, #0x24]
005621c0  04 80 9d e5                                      ldr r8, [sp, #4]
005621c4  04 70 84 e5                                      str r7, [r4, #4]
005621c8  08 60 84 e5                                      str r6, [r4, #8]
005621cc  00 80 84 e5                                      str r8, [r4]
005621d0  0c 50 84 e5                                      str r5, [r4, #0xc]
005621d4  10 c0 84 e5                                      str ip, [r4, #0x10]
005621d8  14 00 84 e5                                      str r0, [r4, #0x14]
005621dc  18 10 84 e5                                      str r1, [r4, #0x18]
005621e0  1c 20 84 e5                                      str r2, [r4, #0x1c]
005621e4  20 30 84 e5                                      str r3, [r4, #0x20]
005621e8  04 00 a0 e1                                      mov r0, r4
005621ec  28 d0 8d e2                                      add sp, sp, #0x28
005621f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x005621f4, declared_size=124, range_size=124, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getPlane3dEPKc
; demangled: glitch::io::CAttributes::getPlane3d(char const*)
; decoder-mode: arm
005621f4  10 40 2d e9                                      push {r4, lr}
005621f8  00 40 a0 e1                                      mov r4, r0
005621fc  fe 05 a0 e3                                      mov r0, #0x3f800000
00562200  00 30 a0 e3                                      mov r3, #0
00562204  04 00 84 e5                                      str r0, [r4, #4]
00562208  02 01 a0 e3                                      mov r0, #0x80000000
0056220c  0c 00 84 e5                                      str r0, [r4, #0xc]
00562210  10 d0 4d e2                                      sub sp, sp, #0x10
00562214  01 00 a0 e1                                      mov r0, r1
00562218  08 30 84 e5                                      str r3, [r4, #8]
0056221c  00 30 84 e5                                      str r3, [r4]
00562220  02 10 a0 e1                                      mov r1, r2
00562224  5d ff ff eb                                      bl #0x561fa0
00562228  00 00 50 e3                                      cmp r0, #0
0056222c  0c 00 00 0a                                      beq #0x562264
00562230  00 10 a0 e1                                      mov r1, r0
00562234  00 30 90 e5                                      ldr r3, [r0]
00562238  0d 00 a0 e1                                      mov r0, sp
0056223c  0f e0 a0 e1                                      mov lr, pc
00562240  74 f0 93 e5                                      ldr pc, [r3, #0x74]
00562244  04 10 9d e5                                      ldr r1, [sp, #4]
00562248  08 20 9d e5                                      ldr r2, [sp, #8]
0056224c  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00562250  00 00 9d e5                                      ldr r0, [sp]
00562254  04 10 84 e5                                      str r1, [r4, #4]
00562258  08 20 84 e5                                      str r2, [r4, #8]
0056225c  00 00 84 e5                                      str r0, [r4]
00562260  0c 30 84 e5                                      str r3, [r4, #0xc]
00562264  04 00 a0 e1                                      mov r0, r4
00562268  10 d0 8d e2                                      add sp, sp, #0x10
0056226c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562270, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getBox3dEPKc
; demangled: glitch::io::CAttributes::getBox3d(char const*)
; decoder-mode: arm
00562270  30 40 2d e9                                      push {r4, r5, lr}
00562274  00 30 a0 e3                                      mov r3, #0
00562278  00 40 a0 e1                                      mov r4, r0
0056227c  1c d0 4d e2                                      sub sp, sp, #0x1c
00562280  01 00 a0 e1                                      mov r0, r1
00562284  14 30 84 e5                                      str r3, [r4, #0x14]
00562288  00 30 84 e5                                      str r3, [r4]
0056228c  04 30 84 e5                                      str r3, [r4, #4]
00562290  08 30 84 e5                                      str r3, [r4, #8]
00562294  0c 30 84 e5                                      str r3, [r4, #0xc]
00562298  10 30 84 e5                                      str r3, [r4, #0x10]
0056229c  02 10 a0 e1                                      mov r1, r2
005622a0  3e ff ff eb                                      bl #0x561fa0
005622a4  00 00 50 e3                                      cmp r0, #0
005622a8  10 00 00 0a                                      beq #0x5622f0
005622ac  00 10 a0 e1                                      mov r1, r0
005622b0  00 30 90 e5                                      ldr r3, [r0]
005622b4  0d 00 a0 e1                                      mov r0, sp
005622b8  0f e0 a0 e1                                      mov lr, pc
005622bc  70 f0 93 e5                                      ldr pc, [r3, #0x70]
005622c0  04 c0 9d e5                                      ldr ip, [sp, #4]
005622c4  08 00 9d e5                                      ldr r0, [sp, #8]
005622c8  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005622cc  10 20 9d e5                                      ldr r2, [sp, #0x10]
005622d0  14 30 9d e5                                      ldr r3, [sp, #0x14]
005622d4  00 50 9d e5                                      ldr r5, [sp]
005622d8  04 c0 84 e5                                      str ip, [r4, #4]
005622dc  08 00 84 e5                                      str r0, [r4, #8]
005622e0  00 50 84 e5                                      str r5, [r4]
005622e4  0c 10 84 e5                                      str r1, [r4, #0xc]
005622e8  10 20 84 e5                                      str r2, [r4, #0x10]
005622ec  14 30 84 e5                                      str r3, [r4, #0x14]
005622f0  04 00 a0 e1                                      mov r0, r4
005622f4  1c d0 8d e2                                      add sp, sp, #0x1c
005622f8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005622fc, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getQuaternionEPKc
; demangled: glitch::io::CAttributes::getQuaternion(char const*)
; decoder-mode: arm
005622fc  10 40 2d e9                                      push {r4, lr}
00562300  00 30 a0 e3                                      mov r3, #0
00562304  00 40 a0 e1                                      mov r4, r0
00562308  0c 30 80 e5                                      str r3, [r0, #0xc]
0056230c  fe 05 a0 e3                                      mov r0, #0x3f800000
00562310  04 00 84 e5                                      str r0, [r4, #4]
00562314  10 d0 4d e2                                      sub sp, sp, #0x10
00562318  01 00 a0 e1                                      mov r0, r1
0056231c  00 30 84 e5                                      str r3, [r4]
00562320  08 30 84 e5                                      str r3, [r4, #8]
00562324  02 10 a0 e1                                      mov r1, r2
00562328  1c ff ff eb                                      bl #0x561fa0
0056232c  00 00 50 e3                                      cmp r0, #0
00562330  0c 00 00 0a                                      beq #0x562368
00562334  00 10 a0 e1                                      mov r1, r0
00562338  00 30 90 e5                                      ldr r3, [r0]
0056233c  0d 00 a0 e1                                      mov r0, sp
00562340  0f e0 a0 e1                                      mov lr, pc
00562344  40 f0 93 e5                                      ldr pc, [r3, #0x40]
00562348  04 10 9d e5                                      ldr r1, [sp, #4]
0056234c  08 20 9d e5                                      ldr r2, [sp, #8]
00562350  0c 30 9d e5                                      ldr r3, [sp, #0xc]
00562354  00 00 9d e5                                      ldr r0, [sp]
00562358  04 10 84 e5                                      str r1, [r4, #4]
0056235c  08 20 84 e5                                      str r2, [r4, #8]
00562360  00 00 84 e5                                      str r0, [r4]
00562364  0c 30 84 e5                                      str r3, [r4, #0xc]
00562368  04 00 a0 e1                                      mov r0, r4
0056236c  10 d0 8d e2                                      add sp, sp, #0x10
00562370  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562374, declared_size=20, range_size=20, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes15existsAttributeEPKc
; demangled: glitch::io::CAttributes::existsAttribute(char const*)
; decoder-mode: arm
00562374  10 40 2d e9                                      push {r4, lr}
00562378  08 ff ff eb                                      bl #0x561fa0
0056237c  00 00 50 e2                                      subs r0, r0, #0
00562380  01 00 a0 13                                      movne r0, #1
00562384  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562388, declared_size=48, range_size=48, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes22getAttributeTypeStringEPKc
; demangled: glitch::io::CAttributes::getAttributeTypeString(char const*)
; decoder-mode: arm
00562388  10 40 2d e9                                      push {r4, lr}
0056238c  03 ff ff eb                                      bl #0x561fa0
00562390  00 30 50 e2                                      subs r3, r0, #0
00562394  03 00 00 0a                                      beq #0x5623a8
00562398  00 30 93 e5                                      ldr r3, [r3]
0056239c  0f e0 a0 e1                                      mov lr, pc
005623a0  08 f1 93 e5                                      ldr pc, [r3, #0x108]
005623a4  10 80 bd e8                                      pop {r4, pc}
005623a8  04 00 9f e5                                      ldr r0, [pc, #4]
005623ac  00 00 8f e0                                      add r0, pc, r0
005623b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005623b4  c4 cb 37 00                                      .byte 0xc4, 0xcb, 0x37, 0x00

; FUNCTION 0x005623b8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16getAttributeTypeEPKc
; demangled: glitch::io::CAttributes::getAttributeType(char const*)
; decoder-mode: arm
005623b8  10 40 2d e9                                      push {r4, lr}
005623bc  f7 fe ff eb                                      bl #0x561fa0
005623c0  00 30 50 e2                                      subs r3, r0, #0
005623c4  03 00 00 0a                                      beq #0x5623d8
005623c8  00 30 93 e5                                      ldr r3, [r3]
005623cc  0f e0 a0 e1                                      mov lr, pc
005623d0  04 f1 93 e5                                      ldr pc, [r3, #0x104]
005623d4  10 80 bd e8                                      pop {r4, pc}
005623d8  1e 00 a0 e3                                      mov r0, #0x1e
005623dc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005623e0, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getLightEPKc
; demangled: glitch::io::CAttributes::getLight(char const*)
; decoder-mode: arm
005623e0  10 40 2d e9                                      push {r4, lr}
005623e4  00 40 a0 e1                                      mov r4, r0
005623e8  01 00 a0 e1                                      mov r0, r1
005623ec  02 10 a0 e1                                      mov r1, r2
005623f0  ea fe ff eb                                      bl #0x561fa0
005623f4  00 00 50 e3                                      cmp r0, #0
005623f8  00 00 84 05                                      streq r0, [r4]
005623fc  04 00 00 0a                                      beq #0x562414
00562400  00 10 a0 e1                                      mov r1, r0
00562404  00 30 90 e5                                      ldr r3, [r0]
00562408  04 00 a0 e1                                      mov r0, r4
0056240c  0f e0 a0 e1                                      mov lr, pc
00562410  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00562414  04 00 a0 e1                                      mov r0, r4
00562418  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056241c, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getTextureEPKc
; demangled: glitch::io::CAttributes::getTexture(char const*)
; decoder-mode: arm
0056241c  10 40 2d e9                                      push {r4, lr}
00562420  00 40 a0 e1                                      mov r4, r0
00562424  01 00 a0 e1                                      mov r0, r1
00562428  02 10 a0 e1                                      mov r1, r2
0056242c  db fe ff eb                                      bl #0x561fa0
00562430  00 00 50 e3                                      cmp r0, #0
00562434  00 00 84 05                                      streq r0, [r4]
00562438  04 00 00 0a                                      beq #0x562450
0056243c  00 10 a0 e1                                      mov r1, r0
00562440  00 30 90 e5                                      ldr r3, [r0]
00562444  04 00 a0 e1                                      mov r0, r4
00562448  0f e0 a0 e1                                      mov lr, pc
0056244c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
00562450  04 00 a0 e1                                      mov r0, r4
00562454  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562458, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getEnumEPKcPKS3_
; demangled: glitch::io::CAttributes::getEnum(char const*, char const* const*)
; decoder-mode: arm
00562458  70 40 2d e9                                      push {r4, r5, r6, lr}
0056245c  02 50 a0 e1                                      mov r5, r2
00562460  ce fe ff eb                                      bl #0x561fa0
00562464  00 00 50 e3                                      cmp r0, #0
00562468  00 00 55 13                                      cmpne r5, #0
0056246c  02 00 00 1a                                      bne #0x56247c
00562470  00 40 e0 e3                                      mvn r4, #0
00562474  04 00 a0 e1                                      mov r0, r4
00562478  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056247c  00 30 90 e5                                      ldr r3, [r0]
00562480  0f e0 a0 e1                                      mov lr, pc
00562484  80 f0 93 e5                                      ldr pc, [r3, #0x80]
00562488  00 60 50 e2                                      subs r6, r0, #0
0056248c  f7 ff ff 0a                                      beq #0x562470
00562490  00 10 95 e5                                      ldr r1, [r5]
00562494  00 00 51 e3                                      cmp r1, #0
00562498  f4 ff ff 0a                                      beq #0x562470
0056249c  00 40 a0 e3                                      mov r4, #0
005624a0  06 00 a0 e1                                      mov r0, r6
005624a4  9c af f6 eb                                      bl #0x30e31c
005624a8  00 00 50 e3                                      cmp r0, #0
005624ac  f0 ff ff 0a                                      beq #0x562474
005624b0  01 40 84 e2                                      add r4, r4, #1
005624b4  04 11 95 e7                                      ldr r1, [r5, r4, lsl #2]
005624b8  00 00 51 e3                                      cmp r1, #0
005624bc  f7 ff ff 1a                                      bne #0x5624a0
005624c0  ea ff ff ea                                      b #0x562470

; FUNCTION 0x005624c4, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getEnumEPKc
; demangled: glitch::io::CAttributes::getEnum(char const*)
; decoder-mode: arm
005624c4  10 40 2d e9                                      push {r4, lr}
005624c8  b4 fe ff eb                                      bl #0x561fa0
005624cc  00 30 50 e2                                      subs r3, r0, #0
005624d0  03 00 00 0a                                      beq #0x5624e4
005624d4  00 30 93 e5                                      ldr r3, [r3]
005624d8  0f e0 a0 e1                                      mov lr, pc
005624dc  80 f0 93 e5                                      ldr pc, [r3, #0x80]
005624e0  10 80 bd e8                                      pop {r4, pc}
005624e4  03 00 a0 e1                                      mov r0, r3
005624e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005624ec, declared_size=48, range_size=48, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getBinaryDataEPKcPvi
; demangled: glitch::io::CAttributes::getBinaryData(char const*, void*, int)
; decoder-mode: arm
005624ec  70 40 2d e9                                      push {r4, r5, r6, lr}
005624f0  03 50 a0 e1                                      mov r5, r3
005624f4  02 40 a0 e1                                      mov r4, r2
005624f8  a8 fe ff eb                                      bl #0x561fa0
005624fc  00 30 50 e2                                      subs r3, r0, #0
00562500  04 00 00 0a                                      beq #0x562518
00562504  00 c0 93 e5                                      ldr ip, [r3]
00562508  04 10 a0 e1                                      mov r1, r4
0056250c  05 20 a0 e1                                      mov r2, r5
00562510  0f e0 a0 e1                                      mov lr, pc
00562514  2c f0 9c e5                                      ldr pc, [ip, #0x2c]
00562518  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0056251c, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getVector4diEPKc
; demangled: glitch::io::CAttributes::getVector4di(char const*)
; decoder-mode: arm
0056251c  10 40 2d e9                                      push {r4, lr}
00562520  00 40 a0 e1                                      mov r4, r0
00562524  01 00 a0 e1                                      mov r0, r1
00562528  02 10 a0 e1                                      mov r1, r2
0056252c  9b fe ff eb                                      bl #0x561fa0
00562530  00 00 50 e3                                      cmp r0, #0
00562534  06 00 00 0a                                      beq #0x562554
00562538  00 10 a0 e1                                      mov r1, r0
0056253c  00 30 90 e5                                      ldr r3, [r0]
00562540  04 00 a0 e1                                      mov r0, r4
00562544  0f e0 a0 e1                                      mov lr, pc
00562548  58 f0 93 e5                                      ldr pc, [r3, #0x58]
0056254c  04 00 a0 e1                                      mov r0, r4
00562550  10 80 bd e8                                      pop {r4, pc}
00562554  0c 00 84 e5                                      str r0, [r4, #0xc]
00562558  00 00 84 e5                                      str r0, [r4]
0056255c  04 00 84 e5                                      str r0, [r4, #4]
00562560  08 00 84 e5                                      str r0, [r4, #8]
00562564  04 00 a0 e1                                      mov r0, r4
00562568  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0056256c, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getVector3diEPKc
; demangled: glitch::io::CAttributes::getVector3di(char const*)
; decoder-mode: arm
0056256c  10 40 2d e9                                      push {r4, lr}
00562570  00 40 a0 e1                                      mov r4, r0
00562574  01 00 a0 e1                                      mov r0, r1
00562578  02 10 a0 e1                                      mov r1, r2
0056257c  87 fe ff eb                                      bl #0x561fa0
00562580  00 00 50 e3                                      cmp r0, #0
00562584  08 00 84 05                                      streq r0, [r4, #8]
00562588  00 00 84 05                                      streq r0, [r4]
0056258c  04 00 84 05                                      streq r0, [r4, #4]
00562590  04 00 00 0a                                      beq #0x5625a8
00562594  00 10 a0 e1                                      mov r1, r0
00562598  00 30 90 e5                                      ldr r3, [r0]
0056259c  04 00 a0 e1                                      mov r0, r4
005625a0  0f e0 a0 e1                                      mov lr, pc
005625a4  54 f0 93 e5                                      ldr pc, [r3, #0x54]
005625a8  04 00 a0 e1                                      mov r0, r4
005625ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005625b0, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12getVector2diEPKc
; demangled: glitch::io::CAttributes::getVector2di(char const*)
; decoder-mode: arm
005625b0  10 40 2d e9                                      push {r4, lr}
005625b4  00 40 a0 e1                                      mov r4, r0
005625b8  01 00 a0 e1                                      mov r0, r1
005625bc  02 10 a0 e1                                      mov r1, r2
005625c0  76 fe ff eb                                      bl #0x561fa0
005625c4  00 00 50 e3                                      cmp r0, #0
005625c8  04 00 84 05                                      streq r0, [r4, #4]
005625cc  00 00 84 05                                      streq r0, [r4]
005625d0  04 00 00 0a                                      beq #0x5625e8
005625d4  00 10 a0 e1                                      mov r1, r0
005625d8  00 30 90 e5                                      ldr r3, [r0]
005625dc  04 00 a0 e1                                      mov r0, r4
005625e0  0f e0 a0 e1                                      mov lr, pc
005625e4  50 f0 93 e5                                      ldr pc, [r3, #0x50]
005625e8  04 00 a0 e1                                      mov r0, r4
005625ec  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005625f0, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11getVector4dEPKc
; demangled: glitch::io::CAttributes::getVector4d(char const*)
; decoder-mode: arm
005625f0  10 40 2d e9                                      push {r4, lr}
005625f4  00 40 a0 e1                                      mov r4, r0
005625f8  01 00 a0 e1                                      mov r0, r1
005625fc  02 10 a0 e1                                      mov r1, r2
00562600  66 fe ff eb                                      bl #0x561fa0
00562604  00 00 50 e3                                      cmp r0, #0
00562608  06 00 00 0a                                      beq #0x562628
0056260c  00 10 a0 e1                                      mov r1, r0
00562610  00 30 90 e5                                      ldr r3, [r0]
00562614  04 00 a0 e1                                      mov r0, r4
00562618  0f e0 a0 e1                                      mov lr, pc
0056261c  34 f0 93 e5                                      ldr pc, [r3, #0x34]
00562620  04 00 a0 e1                                      mov r0, r4
00562624  10 80 bd e8                                      pop {r4, pc}
00562628  00 30 a0 e3                                      mov r3, #0
0056262c  0c 30 84 e5                                      str r3, [r4, #0xc]
00562630  00 30 84 e5                                      str r3, [r4]
00562634  04 30 84 e5                                      str r3, [r4, #4]
00562638  08 30 84 e5                                      str r3, [r4, #8]
0056263c  04 00 a0 e1                                      mov r0, r4
00562640  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562644, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11getVector3dEPKc
; demangled: glitch::io::CAttributes::getVector3d(char const*)
; decoder-mode: arm
00562644  10 40 2d e9                                      push {r4, lr}
00562648  00 40 a0 e1                                      mov r4, r0
0056264c  01 00 a0 e1                                      mov r0, r1
00562650  02 10 a0 e1                                      mov r1, r2
00562654  51 fe ff eb                                      bl #0x561fa0
00562658  00 00 50 e3                                      cmp r0, #0
0056265c  06 00 00 0a                                      beq #0x56267c
00562660  00 10 a0 e1                                      mov r1, r0
00562664  00 30 90 e5                                      ldr r3, [r0]
00562668  04 00 a0 e1                                      mov r0, r4
0056266c  0f e0 a0 e1                                      mov lr, pc
00562670  30 f0 93 e5                                      ldr pc, [r3, #0x30]
00562674  04 00 a0 e1                                      mov r0, r4
00562678  10 80 bd e8                                      pop {r4, pc}
0056267c  00 30 a0 e3                                      mov r3, #0
00562680  08 30 84 e5                                      str r3, [r4, #8]
00562684  00 30 84 e5                                      str r3, [r4]
00562688  04 30 84 e5                                      str r3, [r4, #4]
0056268c  04 00 a0 e1                                      mov r0, r4
00562690  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562694, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11getVector2dEPKc
; demangled: glitch::io::CAttributes::getVector2d(char const*)
; decoder-mode: arm
00562694  10 40 2d e9                                      push {r4, lr}
00562698  00 40 a0 e1                                      mov r4, r0
0056269c  01 00 a0 e1                                      mov r0, r1
005626a0  02 10 a0 e1                                      mov r1, r2
005626a4  3d fe ff eb                                      bl #0x561fa0
005626a8  00 00 50 e3                                      cmp r0, #0
005626ac  00 30 a0 03                                      moveq r3, #0
005626b0  04 30 84 05                                      streq r3, [r4, #4]
005626b4  00 30 84 05                                      streq r3, [r4]
005626b8  04 00 00 0a                                      beq #0x5626d0
005626bc  00 10 a0 e1                                      mov r1, r0
005626c0  00 30 90 e5                                      ldr r3, [r0]
005626c4  04 00 a0 e1                                      mov r0, r4
005626c8  0f e0 a0 e1                                      mov lr, pc
005626cc  4c f0 93 e5                                      ldr pc, [r3, #0x4c]
005626d0  04 00 a0 e1                                      mov r0, r4
005626d4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005626d8, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getRectEPKc
; demangled: glitch::io::CAttributes::getRect(char const*)
; decoder-mode: arm
005626d8  10 40 2d e9                                      push {r4, lr}
005626dc  00 40 a0 e1                                      mov r4, r0
005626e0  01 00 a0 e1                                      mov r0, r1
005626e4  02 10 a0 e1                                      mov r1, r2
005626e8  2c fe ff eb                                      bl #0x561fa0
005626ec  00 00 50 e3                                      cmp r0, #0
005626f0  06 00 00 0a                                      beq #0x562710
005626f4  00 10 a0 e1                                      mov r1, r0
005626f8  00 30 90 e5                                      ldr r3, [r0]
005626fc  04 00 a0 e1                                      mov r0, r4
00562700  0f e0 a0 e1                                      mov lr, pc
00562704  3c f0 93 e5                                      ldr pc, [r3, #0x3c]
00562708  04 00 a0 e1                                      mov r0, r4
0056270c  10 80 bd e8                                      pop {r4, pc}
00562710  0c 00 84 e5                                      str r0, [r4, #0xc]
00562714  00 00 84 e5                                      str r0, [r4]
00562718  04 00 84 e5                                      str r0, [r4, #4]
0056271c  08 00 84 e5                                      str r0, [r4, #8]
00562720  04 00 a0 e1                                      mov r0, r4
00562724  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562728, declared_size=64, range_size=64, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13getPosition2dEPKc
; demangled: glitch::io::CAttributes::getPosition2d(char const*)
; decoder-mode: arm
00562728  10 40 2d e9                                      push {r4, lr}
0056272c  00 40 a0 e1                                      mov r4, r0
00562730  01 00 a0 e1                                      mov r0, r1
00562734  02 10 a0 e1                                      mov r1, r2
00562738  18 fe ff eb                                      bl #0x561fa0
0056273c  00 00 50 e3                                      cmp r0, #0
00562740  04 00 84 05                                      streq r0, [r4, #4]
00562744  00 00 84 05                                      streq r0, [r4]
00562748  04 00 00 0a                                      beq #0x562760
0056274c  00 10 a0 e1                                      mov r1, r0
00562750  00 30 90 e5                                      ldr r3, [r0]
00562754  04 00 a0 e1                                      mov r0, r4
00562758  0f e0 a0 e1                                      mov lr, pc
0056275c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00562760  04 00 a0 e1                                      mov r0, r4
00562764  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562768, declared_size=88, range_size=88, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getColorfEPKc
; demangled: glitch::io::CAttributes::getColorf(char const*)
; decoder-mode: arm
00562768  10 40 2d e9                                      push {r4, lr}
0056276c  00 40 a0 e1                                      mov r4, r0
00562770  01 00 a0 e1                                      mov r0, r1
00562774  02 10 a0 e1                                      mov r1, r2
00562778  08 fe ff eb                                      bl #0x561fa0
0056277c  00 00 50 e3                                      cmp r0, #0
00562780  06 00 00 0a                                      beq #0x5627a0
00562784  00 10 a0 e1                                      mov r1, r0
00562788  00 30 90 e5                                      ldr r3, [r0]
0056278c  04 00 a0 e1                                      mov r0, r4
00562790  0f e0 a0 e1                                      mov lr, pc
00562794  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00562798  04 00 a0 e1                                      mov r0, r4
0056279c  10 80 bd e8                                      pop {r4, pc}
005627a0  00 30 a0 e3                                      mov r3, #0
005627a4  fe 25 a0 e3                                      mov r2, #0x3f800000
005627a8  08 30 84 e5                                      str r3, [r4, #8]
005627ac  0c 20 84 e5                                      str r2, [r4, #0xc]
005627b0  00 30 84 e5                                      str r3, [r4]
005627b4  04 30 84 e5                                      str r3, [r4, #4]
005627b8  04 00 a0 e1                                      mov r0, r4
005627bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005627c0, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getColorEPKc
; demangled: glitch::io::CAttributes::getColor(char const*)
; decoder-mode: arm
005627c0  04 e0 2d e5                                      str lr, [sp, #-4]!
005627c4  14 d0 4d e2                                      sub sp, sp, #0x14
005627c8  f4 fd ff eb                                      bl #0x561fa0
005627cc  00 30 50 e2                                      subs r3, r0, #0
005627d0  03 20 a0 01                                      moveq r2, r3
005627d4  03 c0 a0 01                                      moveq ip, r3
005627d8  03 10 a0 01                                      moveq r1, r3
005627dc  0e 00 00 0a                                      beq #0x56281c
005627e0  00 30 93 e5                                      ldr r3, [r3]
005627e4  0f e0 a0 e1                                      mov lr, pc
005627e8  18 f0 93 e5                                      ldr pc, [r3, #0x18]
005627ec  50 3c e7 e7                                      ubfx r3, r0, #0x18, #8
005627f0  50 14 e7 e7                                      ubfx r1, r0, #8, #8
005627f4  50 28 e7 e7                                      ubfx r2, r0, #0x10, #8
005627f8  01 10 cd e5                                      strb r1, [sp, #1]
005627fc  03 30 cd e5                                      strb r3, [sp, #3]
00562800  02 20 cd e5                                      strb r2, [sp, #2]
00562804  00 00 cd e5                                      strb r0, [sp]
00562808  00 20 9d e5                                      ldr r2, [sp]
0056280c  72 30 ef e6                                      uxtb r3, r2
00562810  22 1c a0 e1                                      lsr r1, r2, #0x18
00562814  52 c8 e7 e7                                      ubfx ip, r2, #0x10, #8
00562818  52 24 e7 e7                                      ubfx r2, r2, #8, #8
0056281c  00 00 a0 e3                                      mov r0, #0
00562820  13 00 c7 e7                                      bfi r0, r3, #0, #8
00562824  12 04 cf e7                                      bfi r0, r2, #8, #8
00562828  1c 08 d7 e7                                      bfi r0, ip, #0x10, #8
0056282c  11 0c df e7                                      bfi r0, r1, #0x18, #8
00562830  14 d0 8d e2                                      add sp, sp, #0x14
00562834  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x00562838, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getFloatEPKc
; demangled: glitch::io::CAttributes::getFloat(char const*)
; decoder-mode: arm
00562838  10 40 2d e9                                      push {r4, lr}
0056283c  d7 fd ff eb                                      bl #0x561fa0
00562840  00 30 50 e2                                      subs r3, r0, #0
00562844  03 00 00 0a                                      beq #0x562858
00562848  00 30 93 e5                                      ldr r3, [r3]
0056284c  0f e0 a0 e1                                      mov lr, pc
00562850  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00562854  10 80 bd e8                                      pop {r4, pc}
00562858  00 00 a0 e3                                      mov r0, #0
0056285c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562860, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes6getIntEPKc
; demangled: glitch::io::CAttributes::getInt(char const*)
; decoder-mode: arm
00562860  10 40 2d e9                                      push {r4, lr}
00562864  cd fd ff eb                                      bl #0x561fa0
00562868  00 30 50 e2                                      subs r3, r0, #0
0056286c  03 00 00 0a                                      beq #0x562880
00562870  00 30 93 e5                                      ldr r3, [r3]
00562874  0f e0 a0 e1                                      mov lr, pc
00562878  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0056287c  10 80 bd e8                                      pop {r4, pc}
00562880  03 00 a0 e1                                      mov r0, r3
00562884  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00562888, declared_size=40, range_size=40, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7getBoolEPKc
; demangled: glitch::io::CAttributes::getBool(char const*)
; decoder-mode: arm
00562888  10 40 2d e9                                      push {r4, lr}
0056288c  c3 fd ff eb                                      bl #0x561fa0
00562890  00 30 50 e2                                      subs r3, r0, #0
00562894  03 00 00 0a                                      beq #0x5628a8
00562898  00 30 93 e5                                      ldr r3, [r3]
0056289c  0f e0 a0 e1                                      mov lr, pc
005628a0  28 f0 93 e5                                      ldr pc, [r3, #0x28]
005628a4  10 80 bd e8                                      pop {r4, pc}
005628a8  03 00 a0 e1                                      mov r0, r3
005628ac  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005628b0, declared_size=68, range_size=68, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getArrayEPKc
; demangled: glitch::io::CAttributes::getArray(char const*)
; decoder-mode: arm
005628b0  10 40 2d e9                                      push {r4, lr}
005628b4  00 40 a0 e1                                      mov r4, r0
005628b8  01 00 a0 e1                                      mov r0, r1
005628bc  02 10 a0 e1                                      mov r1, r2
005628c0  b6 fd ff eb                                      bl #0x561fa0
005628c4  00 00 50 e3                                      cmp r0, #0
005628c8  08 00 84 05                                      streq r0, [r4, #8]
005628cc  00 00 84 05                                      streq r0, [r4]
005628d0  04 00 84 05                                      streq r0, [r4, #4]
005628d4  04 00 00 0a                                      beq #0x5628ec
005628d8  00 10 a0 e1                                      mov r1, r0
005628dc  00 30 90 e5                                      ldr r3, [r0]
005628e0  04 00 a0 e1                                      mov r0, r4
005628e4  0f e0 a0 e1                                      mov lr, pc
005628e8  24 f0 93 e5                                      ldr pc, [r3, #0x24]
005628ec  04 00 a0 e1                                      mov r0, r4
005628f0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005628f4, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13findAttributeEPKc
; demangled: glitch::io::CAttributes::findAttribute(char const*)
; decoder-mode: arm
005628f4  70 40 2d e9                                      push {r4, r5, r6, lr}
005628f8  48 30 90 e5                                      ldr r3, [r0, #0x48]
005628fc  00 50 a0 e1                                      mov r5, r0
00562900  01 60 a0 e1                                      mov r6, r1
00562904  04 20 93 e5                                      ldr r2, [r3, #4]
00562908  00 30 93 e5                                      ldr r3, [r3]
0056290c  02 20 63 e0                                      rsb r2, r3, r2
00562910  22 21 b0 e1                                      lsrs r2, r2, #2
00562914  10 00 00 0a                                      beq #0x56295c
00562918  00 40 a0 e3                                      mov r4, #0
0056291c  06 00 00 ea                                      b #0x56293c
00562920  48 30 95 e5                                      ldr r3, [r5, #0x48]
00562924  01 40 84 e2                                      add r4, r4, #1
00562928  04 20 93 e5                                      ldr r2, [r3, #4]
0056292c  00 30 93 e5                                      ldr r3, [r3]
00562930  02 20 63 e0                                      rsb r2, r3, r2
00562934  42 01 54 e1                                      cmp r4, r2, asr #2
00562938  07 00 00 2a                                      bhs #0x56295c
0056293c  04 01 93 e7                                      ldr r0, [r3, r4, lsl #2]
00562940  06 10 a0 e1                                      mov r1, r6
00562944  08 00 80 e2                                      add r0, r0, #8
00562948  7c 4e ff eb                                      bl #0x536340
0056294c  00 00 50 e3                                      cmp r0, #0
00562950  f2 ff ff 0a                                      beq #0x562920
00562954  04 00 a0 e1                                      mov r0, r4
00562958  70 80 bd e8                                      pop {r4, r5, r6, pc}
0056295c  00 00 e0 e3                                      mvn r0, #0
00562960  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00562b78, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributesC1EPNS_5video12IVideoDriverE
; demangled: glitch::io::CAttributes::CAttributes(glitch::video::IVideoDriver*)
; decoder-mode: arm
00562b78  70 30 9f e5                                      ldr r3, [pc, #0x70]
00562b7c  70 20 9f e5                                      ldr r2, [pc, #0x70]
00562b80  70 40 2d e9                                      push {r4, r5, r6, lr}
00562b84  03 30 8f e0                                      add r3, pc, r3
00562b88  02 20 93 e7                                      ldr r2, [r3, r2]
00562b8c  01 60 a0 e1                                      mov r6, r1
00562b90  60 10 9f e5                                      ldr r1, [pc, #0x60]
00562b94  00 40 a0 e1                                      mov r4, r0
00562b98  00 50 a0 e1                                      mov r5, r0
00562b9c  08 20 82 e2                                      add r2, r2, #8
00562ba0  01 00 a0 e3                                      mov r0, #1
00562ba4  04 00 84 e5                                      str r0, [r4, #4]
00562ba8  08 20 85 e4                                      str r2, [r5], #8
00562bac  01 10 8f e0                                      add r1, pc, r1
00562bb0  05 00 a0 e1                                      mov r0, r5
00562bb4  d5 ff ff eb                                      bl #0x562b10
00562bb8  00 30 a0 e3                                      mov r3, #0
00562bbc  28 20 84 e2                                      add r2, r4, #0x28
00562bc0  00 00 56 e3                                      cmp r6, #0
00562bc4  54 30 84 e5                                      str r3, [r4, #0x54]
00562bc8  4c 30 84 e5                                      str r3, [r4, #0x4c]
00562bcc  50 30 84 e5                                      str r3, [r4, #0x50]
00562bd0  44 50 84 e5                                      str r5, [r4, #0x44]
00562bd4  48 20 84 e5                                      str r2, [r4, #0x48]
00562bd8  58 60 84 e5                                      str r6, [r4, #0x58]
00562bdc  04 30 96 15                                      ldrne r3, [r6, #4]
00562be0  04 00 a0 e1                                      mov r0, r4
00562be4  01 30 83 12                                      addne r3, r3, #1
00562be8  04 30 86 15                                      strne r3, [r6, #4]
00562bec  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00562bf0  0c 1f 43 00 98 1b 00 00 5c 8c 36 00              .byte 0x0c, 0x1f, 0x43, 0x00, 0x98, 0x1b, 0x00, 0x00, 0x5c, 0x8c, 0x36, 0x00

; FUNCTION 0x00562bfc, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributesC2EPNS_5video12IVideoDriverE
; demangled: glitch::io::CAttributes::CAttributes(glitch::video::IVideoDriver*)
; decoder-mode: arm
00562bfc  70 30 9f e5                                      ldr r3, [pc, #0x70]
00562c00  70 20 9f e5                                      ldr r2, [pc, #0x70]
00562c04  70 40 2d e9                                      push {r4, r5, r6, lr}
00562c08  03 30 8f e0                                      add r3, pc, r3
00562c0c  02 20 93 e7                                      ldr r2, [r3, r2]
00562c10  01 60 a0 e1                                      mov r6, r1
00562c14  60 10 9f e5                                      ldr r1, [pc, #0x60]
00562c18  00 40 a0 e1                                      mov r4, r0
00562c1c  00 50 a0 e1                                      mov r5, r0
00562c20  08 20 82 e2                                      add r2, r2, #8
00562c24  01 00 a0 e3                                      mov r0, #1
00562c28  04 00 84 e5                                      str r0, [r4, #4]
00562c2c  08 20 85 e4                                      str r2, [r5], #8
00562c30  01 10 8f e0                                      add r1, pc, r1
00562c34  05 00 a0 e1                                      mov r0, r5
00562c38  b4 ff ff eb                                      bl #0x562b10
00562c3c  00 30 a0 e3                                      mov r3, #0
00562c40  28 20 84 e2                                      add r2, r4, #0x28
00562c44  00 00 56 e3                                      cmp r6, #0
00562c48  54 30 84 e5                                      str r3, [r4, #0x54]
00562c4c  4c 30 84 e5                                      str r3, [r4, #0x4c]
00562c50  50 30 84 e5                                      str r3, [r4, #0x50]
00562c54  44 50 84 e5                                      str r5, [r4, #0x44]
00562c58  48 20 84 e5                                      str r2, [r4, #0x48]
00562c5c  58 60 84 e5                                      str r6, [r4, #0x58]
00562c60  04 30 96 15                                      ldrne r3, [r6, #4]
00562c64  04 00 a0 e1                                      mov r0, r4
00562c68  01 30 83 12                                      addne r3, r3, #1
00562c6c  04 30 86 15                                      strne r3, [r6, #4]
00562c70  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00562c74  88 1e 43 00 98 1b 00 00 d8 8b 36 00              .byte 0x88, 0x1e, 0x43, 0x00, 0x98, 0x1b, 0x00, 0x00, 0xd8, 0x8b, 0x36, 0x00

; FUNCTION 0x005632ac, declared_size=92, range_size=92, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS6_ISA_LS8_0EEEE
; demangled: glitch::io::CAttributes::setAttribute(int, std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >)
; decoder-mode: arm
005632ac  70 40 2d e9                                      push {r4, r5, r6, lr}
005632b0  00 30 51 e2                                      subs r3, r1, #0
005632b4  10 d0 4d e2                                      sub sp, sp, #0x10
005632b8  10 00 00 ba                                      blt #0x563300
005632bc  48 00 90 e5                                      ldr r0, [r0, #0x48]
005632c0  01 10 90 e8                                      ldm r0, {r0, ip}
005632c4  0c c0 60 e0                                      rsb ip, r0, ip
005632c8  4c 01 53 e1                                      cmp r3, ip, asr #2
005632cc  0b 00 00 aa                                      bge #0x563300
005632d0  03 51 90 e7                                      ldr r5, [r0, r3, lsl #2]
005632d4  04 40 8d e2                                      add r4, sp, #4
005632d8  02 10 a0 e1                                      mov r1, r2
005632dc  00 30 95 e5                                      ldr r3, [r5]
005632e0  04 00 a0 e1                                      mov r0, r4
005632e4  98 60 93 e5                                      ldr r6, [r3, #0x98]
005632e8  e3 fe ff eb                                      bl #0x562e7c
005632ec  05 00 a0 e1                                      mov r0, r5
005632f0  04 10 a0 e1                                      mov r1, r4
005632f4  36 ff 2f e1                                      blx r6
005632f8  04 00 a0 e1                                      mov r0, r4
005632fc  01 b6 ff eb                                      bl #0x550b08
00563300  10 d0 8d e2                                      add sp, sp, #0x10
00563304  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00563308, declared_size=120, range_size=120, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8getArrayEi
; demangled: glitch::io::CAttributes::getArray(int)
; decoder-mode: arm
00563308  30 40 2d e9                                      push {r4, r5, lr}
0056330c  00 30 a0 e3                                      mov r3, #0
00563310  00 00 52 e3                                      cmp r2, #0
00563314  14 d0 4d e2                                      sub sp, sp, #0x14
00563318  00 40 a0 e1                                      mov r4, r0
0056331c  08 30 80 e5                                      str r3, [r0, #8]
00563320  00 30 80 e5                                      str r3, [r0]
00563324  04 30 80 e5                                      str r3, [r0, #4]
00563328  11 00 00 ba                                      blt #0x563374
0056332c  48 30 91 e5                                      ldr r3, [r1, #0x48]
00563330  04 10 93 e5                                      ldr r1, [r3, #4]
00563334  00 30 93 e5                                      ldr r3, [r3]
00563338  01 10 63 e0                                      rsb r1, r3, r1
0056333c  41 01 52 e1                                      cmp r2, r1, asr #2
00563340  0b 00 00 aa                                      bge #0x563374
00563344  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
00563348  04 50 8d e2                                      add r5, sp, #4
0056334c  05 00 a0 e1                                      mov r0, r5
00563350  03 10 a0 e1                                      mov r1, r3
00563354  00 30 93 e5                                      ldr r3, [r3]
00563358  0f e0 a0 e1                                      mov lr, pc
0056335c  24 f0 93 e5                                      ldr pc, [r3, #0x24]
00563360  04 00 a0 e1                                      mov r0, r4
00563364  05 10 a0 e1                                      mov r1, r5
00563368  54 ff ff eb                                      bl #0x5630c0
0056336c  05 00 a0 e1                                      mov r0, r5
00563370  e4 b5 ff eb                                      bl #0x550b08
00563374  04 00 a0 e1                                      mov r0, r4
00563378  14 d0 8d e2                                      add sp, sp, #0x14
0056337c  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x005637c0, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getStringWEPKc
; demangled: glitch::io::CAttributes::getStringW(char const*)
; decoder-mode: arm
005637c0  70 40 2d e9                                      push {r4, r5, r6, lr}
005637c4  00 40 a0 e1                                      mov r4, r0
005637c8  48 d0 4d e2                                      sub sp, sp, #0x48
005637cc  01 50 a0 e1                                      mov r5, r1
005637d0  40 00 84 e5                                      str r0, [r4, #0x40]
005637d4  44 00 84 e5                                      str r0, [r4, #0x44]
005637d8  10 10 a0 e3                                      mov r1, #0x10
005637dc  02 60 a0 e1                                      mov r6, r2
005637e0  4e f4 f6 eb                                      bl #0x320920
005637e4  40 30 94 e5                                      ldr r3, [r4, #0x40]
005637e8  00 20 a0 e3                                      mov r2, #0
005637ec  05 00 a0 e1                                      mov r0, r5
005637f0  00 20 83 e5                                      str r2, [r3]
005637f4  06 10 a0 e1                                      mov r1, r6
005637f8  e8 f9 ff eb                                      bl #0x561fa0
005637fc  00 00 50 e3                                      cmp r0, #0
00563800  11 00 00 0a                                      beq #0x56384c
00563804  00 10 a0 e1                                      mov r1, r0
00563808  00 30 90 e5                                      ldr r3, [r0]
0056380c  0d 50 a0 e1                                      mov r5, sp
00563810  0d 00 a0 e1                                      mov r0, sp
00563814  0f e0 a0 e1                                      mov lr, pc
00563818  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0056381c  05 00 54 e1                                      cmp r4, r5
00563820  03 00 00 0a                                      beq #0x563834
00563824  04 00 a0 e1                                      mov r0, r4
00563828  44 10 9d e5                                      ldr r1, [sp, #0x44]
0056382c  40 20 9d e5                                      ldr r2, [sp, #0x40]
00563830  5a fe f6 eb                                      bl #0x3231a0
00563834  44 00 9d e5                                      ldr r0, [sp, #0x44]
00563838  05 00 50 e1                                      cmp r0, r5
0056383c  02 00 00 0a                                      beq #0x56384c
00563840  00 00 50 e3                                      cmp r0, #0
00563844  00 00 00 0a                                      beq #0x56384c
00563848  00 b3 f6 eb                                      bl #0x310450
0056384c  04 00 a0 e1                                      mov r0, r4
00563850  48 d0 8d e2                                      add sp, sp, #0x48
00563854  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00563858, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10getStringWEPKcPw
; demangled: glitch::io::CAttributes::getStringW(char const*, wchar_t*)
; decoder-mode: arm
00563858  30 40 2d e9                                      push {r4, r5, lr}
0056385c  4c d0 4d e2                                      sub sp, sp, #0x4c
00563860  02 40 a0 e1                                      mov r4, r2
00563864  cd f9 ff eb                                      bl #0x561fa0
00563868  00 00 50 e3                                      cmp r0, #0
0056386c  00 00 84 05                                      streq r0, [r4]
00563870  0e 00 00 0a                                      beq #0x5638b0
00563874  00 10 a0 e1                                      mov r1, r0
00563878  00 30 90 e5                                      ldr r3, [r0]
0056387c  0d 00 a0 e1                                      mov r0, sp
00563880  0f e0 a0 e1                                      mov lr, pc
00563884  20 f0 93 e5                                      ldr pc, [r3, #0x20]
00563888  04 00 a0 e1                                      mov r0, r4
0056388c  44 10 9d e5                                      ldr r1, [sp, #0x44]
00563890  d5 ac f6 eb                                      bl #0x30ebec
00563894  44 00 9d e5                                      ldr r0, [sp, #0x44]
00563898  0d 50 a0 e1                                      mov r5, sp
0056389c  05 00 50 e1                                      cmp r0, r5
005638a0  02 00 00 0a                                      beq #0x5638b0
005638a4  00 00 50 e3                                      cmp r0, #0
005638a8  00 00 00 0a                                      beq #0x5638b0
005638ac  e7 b2 f6 eb                                      bl #0x310450
005638b0  4c d0 8d e2                                      add sp, sp, #0x4c
005638b4  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x00563b30, declared_size=36, range_size=36, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes5clearEv
; demangled: glitch::io::CAttributes::clear()
; decoder-mode: arm
00563b30  70 40 2d e9                                      push {r4, r5, r6, lr}
00563b34  08 50 80 e2                                      add r5, r0, #8
00563b38  00 40 a0 e1                                      mov r4, r0
00563b3c  05 00 a0 e1                                      mov r0, r5
00563b40  c3 ff ff eb                                      bl #0x563a54
00563b44  28 30 84 e2                                      add r3, r4, #0x28
00563b48  48 30 84 e5                                      str r3, [r4, #0x48]
00563b4c  44 50 84 e5                                      str r5, [r4, #0x44]
00563b50  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00563b74, declared_size=80, range_size=80, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8CMatrix4IfEE
; demangled: glitch::io::CAttributes::setAttribute(int, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
00563b74  70 40 2d e9                                      push {r4, r5, r6, lr}
00563b78  48 30 90 e5                                      ldr r3, [r0, #0x48]
00563b7c  48 d0 4d e2                                      sub sp, sp, #0x48
00563b80  04 00 93 e5                                      ldr r0, [r3, #4]
00563b84  00 30 93 e5                                      ldr r3, [r3]
00563b88  00 00 63 e0                                      rsb r0, r3, r0
00563b8c  40 01 51 e1                                      cmp r1, r0, asr #2
00563b90  09 00 00 2a                                      bhs #0x563bbc
00563b94  01 51 93 e7                                      ldr r5, [r3, r1, lsl #2]
00563b98  04 40 8d e2                                      add r4, sp, #4
00563b9c  02 10 a0 e1                                      mov r1, r2
00563ba0  00 30 95 e5                                      ldr r3, [r5]
00563ba4  04 00 a0 e1                                      mov r0, r4
00563ba8  c4 60 93 e5                                      ldr r6, [r3, #0xc4]
00563bac  e8 ff ff eb                                      bl #0x563b54
00563bb0  05 00 a0 e1                                      mov r0, r5
00563bb4  04 10 a0 e1                                      mov r1, r4
00563bb8  36 ff 2f e1                                      blx r6
00563bbc  48 d0 8d e2                                      add sp, sp, #0x48
00563bc0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00564148, declared_size=100, range_size=100, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes44getAttributeEnumerationLiteralsOfEnumerationEiRSt6vectorISbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEENS6_ISA_LS8_0EEEE
; demangled: glitch::io::CAttributes::getAttributeEnumerationLiteralsOfEnumeration(int, std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
00564148  70 40 2d e9                                      push {r4, r5, r6, lr}
0056414c  48 30 90 e5                                      ldr r3, [r0, #0x48]
00564150  02 60 a0 e1                                      mov r6, r2
00564154  00 40 a0 e1                                      mov r4, r0
00564158  04 20 93 e5                                      ldr r2, [r3, #4]
0056415c  00 30 93 e5                                      ldr r3, [r3]
00564160  01 50 a0 e1                                      mov r5, r1
00564164  02 20 63 e0                                      rsb r2, r3, r2
00564168  42 01 51 e1                                      cmp r1, r2, asr #2
0056416c  00 00 00 3a                                      blo #0x564174
00564170  70 80 bd e8                                      pop {r4, r5, r6, pc}
00564174  01 31 93 e7                                      ldr r3, [r3, r1, lsl #2]
00564178  03 00 a0 e1                                      mov r0, r3
0056417c  00 30 93 e5                                      ldr r3, [r3]
00564180  0f e0 a0 e1                                      mov lr, pc
00564184  04 f1 93 e5                                      ldr pc, [r3, #0x104]
00564188  04 00 50 e3                                      cmp r0, #4
0056418c  f7 ff ff 1a                                      bne #0x564170
00564190  48 30 94 e5                                      ldr r3, [r4, #0x48]
00564194  06 00 a0 e1                                      mov r0, r6
00564198  00 30 93 e5                                      ldr r3, [r3]
0056419c  05 11 93 e7                                      ldr r1, [r3, r5, lsl #2]
005641a0  3c 10 81 e2                                      add r1, r1, #0x3c
005641a4  70 40 bd e8                                      pop {r4, r5, r6, lr}
005641a8  6a ff ff ea                                      b #0x563f58

; FUNCTION 0x005641ac, declared_size=60, range_size=60, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes44getAttributeEnumerationLiteralsOfEnumerationEPKcRSt6vectorISbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEE
; demangled: glitch::io::CAttributes::getAttributeEnumerationLiteralsOfEnumeration(char const*, std::vector<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<char, std::char_traits<char>, glitch::core::SAllocator<char, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >&)
; decoder-mode: arm
005641ac  70 40 2d e9                                      push {r4, r5, r6, lr}
005641b0  02 40 a0 e1                                      mov r4, r2
005641b4  79 f7 ff eb                                      bl #0x561fa0
005641b8  00 50 50 e2                                      subs r5, r0, #0
005641bc  04 00 00 0a                                      beq #0x5641d4
005641c0  00 30 95 e5                                      ldr r3, [r5]
005641c4  0f e0 a0 e1                                      mov lr, pc
005641c8  04 f1 93 e5                                      ldr pc, [r3, #0x104]
005641cc  04 00 50 e3                                      cmp r0, #4
005641d0  00 00 00 0a                                      beq #0x5641d8
005641d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
005641d8  04 00 a0 e1                                      mov r0, r4
005641dc  3c 10 85 e2                                      add r1, r5, #0x3c
005641e0  70 40 bd e8                                      pop {r4, r5, r6, lr}
005641e4  5b ff ff ea                                      b #0x563f58

; FUNCTION 0x00564240, declared_size=212, range_size=212, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getStringEi
; demangled: glitch::io::CAttributes::getString(int)
; decoder-mode: arm
00564240  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00564244  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
00564248  c0 70 9f e5                                      ldr r7, [pc, #0xc0]
0056424c  24 d0 4d e2                                      sub sp, sp, #0x24
00564250  04 40 8f e0                                      add r4, pc, r4
00564254  07 30 94 e7                                      ldr r3, [r4, r7]
00564258  04 50 8d e2                                      add r5, sp, #4
0056425c  01 80 a0 e1                                      mov r8, r1
00564260  00 30 93 e5                                      ldr r3, [r3]
00564264  00 60 a0 e1                                      mov r6, r0
00564268  10 10 a0 e3                                      mov r1, #0x10
0056426c  05 00 a0 e1                                      mov r0, r5
00564270  02 a0 a0 e1                                      mov sl, r2
00564274  1c 30 8d e5                                      str r3, [sp, #0x1c]
00564278  14 50 8d e5                                      str r5, [sp, #0x14]
0056427c  18 50 8d e5                                      str r5, [sp, #0x18]
00564280  c8 f1 f6 eb                                      bl #0x3209a8
00564284  14 30 9d e5                                      ldr r3, [sp, #0x14]
00564288  00 20 a0 e3                                      mov r2, #0
0056428c  00 20 c3 e5                                      strb r2, [r3]
00564290  48 30 98 e5                                      ldr r3, [r8, #0x48]
00564294  04 20 93 e5                                      ldr r2, [r3, #4]
00564298  00 30 93 e5                                      ldr r3, [r3]
0056429c  02 20 63 e0                                      rsb r2, r3, r2
005642a0  42 01 5a e1                                      cmp sl, r2, asr #2
005642a4  10 00 00 3a                                      blo #0x5642ec
005642a8  06 00 a0 e1                                      mov r0, r6
005642ac  05 10 a0 e1                                      mov r1, r5
005642b0  8c fa ff eb                                      bl #0x562ce8
005642b4  18 00 9d e5                                      ldr r0, [sp, #0x18]
005642b8  05 00 50 e1                                      cmp r0, r5
005642bc  02 00 00 0a                                      beq #0x5642cc
005642c0  00 00 50 e3                                      cmp r0, #0
005642c4  00 00 00 0a                                      beq #0x5642cc
005642c8  60 b0 f6 eb                                      bl #0x310450
005642cc  07 30 94 e7                                      ldr r3, [r4, r7]
005642d0  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
005642d4  06 00 a0 e1                                      mov r0, r6
005642d8  00 30 93 e5                                      ldr r3, [r3]
005642dc  03 00 52 e1                                      cmp r2, r3
005642e0  08 00 00 1a                                      bne #0x564308
005642e4  24 d0 8d e2                                      add sp, sp, #0x24
005642e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005642ec  0a 31 93 e7                                      ldr r3, [r3, sl, lsl #2]
005642f0  06 00 a0 e1                                      mov r0, r6
005642f4  03 10 a0 e1                                      mov r1, r3
005642f8  00 30 93 e5                                      ldr r3, [r3]
005642fc  0f e0 a0 e1                                      mov lr, pc
00564300  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00564304  ea ff ff ea                                      b #0x5642b4
00564308  00 a8 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056430c  40 08 43 00 ac 40 00 00                          .byte 0x40, 0x08, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00564314, declared_size=148, range_size=148, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes4pushEPKc
; demangled: glitch::io::CAttributes::push(char const*)
; decoder-mode: arm
00564314  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00564318  80 40 9f e5                                      ldr r4, [pc, #0x80]
0056431c  80 60 9f e5                                      ldr r6, [pc, #0x80]
00564320  24 d0 4d e2                                      sub sp, sp, #0x24
00564324  04 40 8f e0                                      add r4, pc, r4
00564328  06 30 94 e7                                      ldr r3, [r4, r6]
0056432c  04 70 8d e2                                      add r7, sp, #4
00564330  00 50 a0 e1                                      mov r5, r0
00564334  00 30 93 e5                                      ldr r3, [r3]
00564338  0d 20 a0 e1                                      mov r2, sp
0056433c  07 00 a0 e1                                      mov r0, r7
00564340  1c 30 8d e5                                      str r3, [sp, #0x1c]
00564344  3c 07 f7 eb                                      bl #0x32603c
00564348  01 20 a0 e3                                      mov r2, #1
0056434c  44 00 95 e5                                      ldr r0, [r5, #0x44]
00564350  18 10 9d e5                                      ldr r1, [sp, #0x18]
00564354  cd fc ff eb                                      bl #0x563690
00564358  18 30 9d e5                                      ldr r3, [sp, #0x18]
0056435c  20 20 80 e2                                      add r2, r0, #0x20
00564360  48 20 85 e5                                      str r2, [r5, #0x48]
00564364  07 00 53 e1                                      cmp r3, r7
00564368  44 00 85 e5                                      str r0, [r5, #0x44]
0056436c  03 00 00 0a                                      beq #0x564380
00564370  00 00 53 e3                                      cmp r3, #0
00564374  01 00 00 0a                                      beq #0x564380
00564378  03 00 a0 e1                                      mov r0, r3
0056437c  33 b0 f6 eb                                      bl #0x310450
00564380  06 30 94 e7                                      ldr r3, [r4, r6]
00564384  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00564388  00 30 93 e5                                      ldr r3, [r3]
0056438c  03 00 52 e1                                      cmp r2, r3
00564390  01 00 00 1a                                      bne #0x56439c
00564394  24 d0 8d e2                                      add sp, sp, #0x24
00564398  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
0056439c  db a7 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005643a0  6c 07 43 00 ac 40 00 00                          .byte 0x6c, 0x07, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00564418, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributesD1Ev
; demangled: glitch::io::CAttributes::~CAttributes()
; decoder-mode: arm
00564418  44 30 9f e5                                      ldr r3, [pc, #0x44]
0056441c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00564420  10 40 2d e9                                      push {r4, lr}
00564424  03 30 8f e0                                      add r3, pc, r3
00564428  02 20 93 e7                                      ldr r2, [r3, r2]
0056442c  00 40 a0 e1                                      mov r4, r0
00564430  08 20 82 e2                                      add r2, r2, #8
00564434  00 20 80 e5                                      str r2, [r0]
00564438  bc fd ff eb                                      bl #0x563b30
0056443c  58 00 94 e5                                      ldr r0, [r4, #0x58]
00564440  00 00 50 e3                                      cmp r0, #0
00564444  00 00 00 0a                                      beq #0x56444c
00564448  4d e4 f6 eb                                      bl #0x31d584
0056444c  4c 00 84 e2                                      add r0, r4, #0x4c
00564450  64 ff ff eb                                      bl #0x5641e8
00564454  08 00 84 e2                                      add r0, r4, #8
00564458  d2 ff ff eb                                      bl #0x5643a8
0056445c  04 00 a0 e1                                      mov r0, r4
00564460  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00564464  6c 06 43 00 98 1b 00 00                          .byte 0x6c, 0x06, 0x43, 0x00, 0x98, 0x1b, 0x00, 0x00

; FUNCTION 0x0056446c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributesD0Ev
; demangled: glitch::io::CAttributes::~CAttributes()
; decoder-mode: arm
0056446c  10 40 2d e9                                      push {r4, lr}
00564470  00 40 a0 e1                                      mov r4, r0
00564474  e7 ff ff eb                                      bl #0x564418
00564478  04 00 a0 e1                                      mov r0, r4
0056447c  8b a7 f6 eb                                      bl #0x30e2b0
00564480  04 00 a0 e1                                      mov r0, r4
00564484  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00564488, declared_size=84, range_size=84, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributesD2Ev
; demangled: glitch::io::CAttributes::~CAttributes()
; decoder-mode: arm
00564488  44 30 9f e5                                      ldr r3, [pc, #0x44]
0056448c  44 20 9f e5                                      ldr r2, [pc, #0x44]
00564490  10 40 2d e9                                      push {r4, lr}
00564494  03 30 8f e0                                      add r3, pc, r3
00564498  02 20 93 e7                                      ldr r2, [r3, r2]
0056449c  00 40 a0 e1                                      mov r4, r0
005644a0  08 20 82 e2                                      add r2, r2, #8
005644a4  00 20 80 e5                                      str r2, [r0]
005644a8  a0 fd ff eb                                      bl #0x563b30
005644ac  58 00 94 e5                                      ldr r0, [r4, #0x58]
005644b0  00 00 50 e3                                      cmp r0, #0
005644b4  00 00 00 0a                                      beq #0x5644bc
005644b8  31 e4 f6 eb                                      bl #0x31d584
005644bc  4c 00 84 e2                                      add r0, r4, #0x4c
005644c0  48 ff ff eb                                      bl #0x5641e8
005644c4  08 00 84 e2                                      add r0, r4, #8
005644c8  b6 ff ff eb                                      bl #0x5643a8
005644cc  04 00 a0 e1                                      mov r0, r4
005644d0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
005644d4  fc 05 43 00 98 1b 00 00                          .byte 0xfc, 0x05, 0x43, 0x00, 0x98, 0x1b, 0x00, 0x00

; FUNCTION 0x00564568, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes4pushEi
; demangled: glitch::io::CAttributes::push(int)
; decoder-mode: arm
00564568  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056456c  c4 40 9f e5                                      ldr r4, [pc, #0xc4]
00564570  c4 70 9f e5                                      ldr r7, [pc, #0xc4]
00564574  01 a0 a0 e1                                      mov sl, r1
00564578  04 40 8f e0                                      add r4, pc, r4
0056457c  07 30 94 e7                                      ldr r3, [r4, r7]
00564580  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00564584  3c d0 4d e2                                      sub sp, sp, #0x3c
00564588  00 30 93 e5                                      ldr r3, [r3]
0056458c  1c 60 8d e2                                      add r6, sp, #0x1c
00564590  0d 20 a0 e1                                      mov r2, sp
00564594  01 10 8f e0                                      add r1, pc, r1
00564598  04 80 8d e2                                      add r8, sp, #4
0056459c  00 50 a0 e1                                      mov r5, r0
005645a0  06 00 a0 e1                                      mov r0, r6
005645a4  34 30 8d e5                                      str r3, [sp, #0x34]
005645a8  a3 06 f7 eb                                      bl #0x32603c
005645ac  0a 10 a0 e1                                      mov r1, sl
005645b0  08 00 a0 e1                                      mov r0, r8
005645b4  ad 06 f7 eb                                      bl #0x326070
005645b8  06 00 a0 e1                                      mov r0, r6
005645bc  18 10 9d e5                                      ldr r1, [sp, #0x18]
005645c0  14 20 9d e5                                      ldr r2, [sp, #0x14]
005645c4  20 f1 f6 eb                                      bl #0x320a4c
005645c8  18 00 9d e5                                      ldr r0, [sp, #0x18]
005645cc  08 00 50 e1                                      cmp r0, r8
005645d0  02 00 00 0a                                      beq #0x5645e0
005645d4  00 00 50 e3                                      cmp r0, #0
005645d8  00 00 00 0a                                      beq #0x5645e0
005645dc  9b af f6 eb                                      bl #0x310450
005645e0  01 20 a0 e3                                      mov r2, #1
005645e4  44 00 95 e5                                      ldr r0, [r5, #0x44]
005645e8  30 10 9d e5                                      ldr r1, [sp, #0x30]
005645ec  27 fc ff eb                                      bl #0x563690
005645f0  30 30 9d e5                                      ldr r3, [sp, #0x30]
005645f4  20 20 80 e2                                      add r2, r0, #0x20
005645f8  48 20 85 e5                                      str r2, [r5, #0x48]
005645fc  06 00 53 e1                                      cmp r3, r6
00564600  44 00 85 e5                                      str r0, [r5, #0x44]
00564604  03 00 00 0a                                      beq #0x564618
00564608  00 00 53 e3                                      cmp r3, #0
0056460c  01 00 00 0a                                      beq #0x564618
00564610  03 00 a0 e1                                      mov r0, r3
00564614  8d af f6 eb                                      bl #0x310450
00564618  07 30 94 e7                                      ldr r3, [r4, r7]
0056461c  34 20 9d e5                                      ldr r2, [sp, #0x34]
00564620  00 30 93 e5                                      ldr r3, [r3]
00564624  03 00 52 e1                                      cmp r2, r3
00564628  01 00 00 1a                                      bne #0x564634
0056462c  3c d0 8d e2                                      add sp, sp, #0x3c
00564630  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00564634  35 a7 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00564638  18 05 43 00 ac 40 00 00 74 d1 37 00              .byte 0x18, 0x05, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00, 0x74, 0xd1, 0x37, 0x00

; FUNCTION 0x00564644, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes4pushEPKci
; demangled: glitch::io::CAttributes::push(char const*, int)
; decoder-mode: arm
00564644  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00564648  bc 40 9f e5                                      ldr r4, [pc, #0xbc]
0056464c  bc 70 9f e5                                      ldr r7, [pc, #0xbc]
00564650  3c d0 4d e2                                      sub sp, sp, #0x3c
00564654  04 40 8f e0                                      add r4, pc, r4
00564658  07 30 94 e7                                      ldr r3, [r4, r7]
0056465c  1c 60 8d e2                                      add r6, sp, #0x1c
00564660  02 a0 a0 e1                                      mov sl, r2
00564664  00 30 93 e5                                      ldr r3, [r3]
00564668  0d 20 a0 e1                                      mov r2, sp
0056466c  04 80 8d e2                                      add r8, sp, #4
00564670  00 50 a0 e1                                      mov r5, r0
00564674  06 00 a0 e1                                      mov r0, r6
00564678  34 30 8d e5                                      str r3, [sp, #0x34]
0056467c  6e 06 f7 eb                                      bl #0x32603c
00564680  0a 10 a0 e1                                      mov r1, sl
00564684  08 00 a0 e1                                      mov r0, r8
00564688  78 06 f7 eb                                      bl #0x326070
0056468c  06 00 a0 e1                                      mov r0, r6
00564690  18 10 9d e5                                      ldr r1, [sp, #0x18]
00564694  14 20 9d e5                                      ldr r2, [sp, #0x14]
00564698  eb f0 f6 eb                                      bl #0x320a4c
0056469c  18 00 9d e5                                      ldr r0, [sp, #0x18]
005646a0  08 00 50 e1                                      cmp r0, r8
005646a4  02 00 00 0a                                      beq #0x5646b4
005646a8  00 00 50 e3                                      cmp r0, #0
005646ac  00 00 00 0a                                      beq #0x5646b4
005646b0  66 af f6 eb                                      bl #0x310450
005646b4  01 20 a0 e3                                      mov r2, #1
005646b8  44 00 95 e5                                      ldr r0, [r5, #0x44]
005646bc  30 10 9d e5                                      ldr r1, [sp, #0x30]
005646c0  f2 fb ff eb                                      bl #0x563690
005646c4  30 30 9d e5                                      ldr r3, [sp, #0x30]
005646c8  20 20 80 e2                                      add r2, r0, #0x20
005646cc  48 20 85 e5                                      str r2, [r5, #0x48]
005646d0  06 00 53 e1                                      cmp r3, r6
005646d4  44 00 85 e5                                      str r0, [r5, #0x44]
005646d8  03 00 00 0a                                      beq #0x5646ec
005646dc  00 00 53 e3                                      cmp r3, #0
005646e0  01 00 00 0a                                      beq #0x5646ec
005646e4  03 00 a0 e1                                      mov r0, r3
005646e8  58 af f6 eb                                      bl #0x310450
005646ec  07 30 94 e7                                      ldr r3, [r4, r7]
005646f0  34 20 9d e5                                      ldr r2, [sp, #0x34]
005646f4  00 30 93 e5                                      ldr r3, [r3]
005646f8  03 00 52 e1                                      cmp r2, r3
005646fc  01 00 00 1a                                      bne #0x564708
00564700  3c d0 8d e2                                      add sp, sp, #0x3c
00564704  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00564708  00 a7 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056470c  3c 04 43 00 ac 40 00 00                          .byte 0x3c, 0x04, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00564768, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getStringEPKc
; demangled: glitch::io::CAttributes::getString(char const*)
; decoder-mode: arm
00564768  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056476c  b8 40 9f e5                                      ldr r4, [pc, #0xb8]
00564770  b8 60 9f e5                                      ldr r6, [pc, #0xb8]
00564774  24 d0 4d e2                                      sub sp, sp, #0x24
00564778  04 40 8f e0                                      add r4, pc, r4
0056477c  06 30 94 e7                                      ldr r3, [r4, r6]
00564780  04 50 8d e2                                      add r5, sp, #4
00564784  01 80 a0 e1                                      mov r8, r1
00564788  00 30 93 e5                                      ldr r3, [r3]
0056478c  10 10 a0 e3                                      mov r1, #0x10
00564790  00 70 a0 e1                                      mov r7, r0
00564794  05 00 a0 e1                                      mov r0, r5
00564798  02 a0 a0 e1                                      mov sl, r2
0056479c  1c 30 8d e5                                      str r3, [sp, #0x1c]
005647a0  14 50 8d e5                                      str r5, [sp, #0x14]
005647a4  18 50 8d e5                                      str r5, [sp, #0x18]
005647a8  7e f0 f6 eb                                      bl #0x3209a8
005647ac  14 30 9d e5                                      ldr r3, [sp, #0x14]
005647b0  00 20 a0 e3                                      mov r2, #0
005647b4  08 00 a0 e1                                      mov r0, r8
005647b8  00 20 c3 e5                                      strb r2, [r3]
005647bc  0a 10 a0 e1                                      mov r1, sl
005647c0  f6 f5 ff eb                                      bl #0x561fa0
005647c4  00 00 50 e3                                      cmp r0, #0
005647c8  12 00 00 0a                                      beq #0x564818
005647cc  00 10 a0 e1                                      mov r1, r0
005647d0  00 30 90 e5                                      ldr r3, [r0]
005647d4  07 00 a0 e1                                      mov r0, r7
005647d8  0f e0 a0 e1                                      mov lr, pc
005647dc  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005647e0  18 00 9d e5                                      ldr r0, [sp, #0x18]
005647e4  05 00 50 e1                                      cmp r0, r5
005647e8  02 00 00 0a                                      beq #0x5647f8
005647ec  00 00 50 e3                                      cmp r0, #0
005647f0  00 00 00 0a                                      beq #0x5647f8
005647f4  15 af f6 eb                                      bl #0x310450
005647f8  06 30 94 e7                                      ldr r3, [r4, r6]
005647fc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00564800  07 00 a0 e1                                      mov r0, r7
00564804  00 30 93 e5                                      ldr r3, [r3]
00564808  03 00 52 e1                                      cmp r2, r3
0056480c  05 00 00 1a                                      bne #0x564828
00564810  24 d0 8d e2                                      add sp, sp, #0x24
00564814  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00564818  07 00 a0 e1                                      mov r0, r7
0056481c  05 10 a0 e1                                      mov r1, r5
00564820  30 f9 ff eb                                      bl #0x562ce8
00564824  ed ff ff ea                                      b #0x5647e0
00564828  b8 a6 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0056482c  18 03 43 00 ac 40 00 00                          .byte 0x18, 0x03, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00564924, declared_size=152, range_size=152, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getStringEPKcPc
; demangled: glitch::io::CAttributes::getString(char const*, char*)
; decoder-mode: arm
00564924  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00564928  84 40 9f e5                                      ldr r4, [pc, #0x84]
0056492c  84 50 9f e5                                      ldr r5, [pc, #0x84]
00564930  24 d0 4d e2                                      sub sp, sp, #0x24
00564934  04 40 8f e0                                      add r4, pc, r4
00564938  05 30 94 e7                                      ldr r3, [r4, r5]
0056493c  02 60 a0 e1                                      mov r6, r2
00564940  00 30 93 e5                                      ldr r3, [r3]
00564944  1c 30 8d e5                                      str r3, [sp, #0x1c]
00564948  94 f5 ff eb                                      bl #0x561fa0
0056494c  00 00 50 e3                                      cmp r0, #0
00564950  00 00 c6 05                                      strbeq r0, [r6]
00564954  0e 00 00 0a                                      beq #0x564994
00564958  04 70 8d e2                                      add r7, sp, #4
0056495c  00 10 a0 e1                                      mov r1, r0
00564960  00 30 90 e5                                      ldr r3, [r0]
00564964  07 00 a0 e1                                      mov r0, r7
00564968  0f e0 a0 e1                                      mov lr, pc
0056496c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00564970  06 00 a0 e1                                      mov r0, r6
00564974  18 10 9d e5                                      ldr r1, [sp, #0x18]
00564978  e8 a6 f6 eb                                      bl #0x30e520
0056497c  18 00 9d e5                                      ldr r0, [sp, #0x18]
00564980  07 00 50 e1                                      cmp r0, r7
00564984  02 00 00 0a                                      beq #0x564994
00564988  00 00 50 e3                                      cmp r0, #0
0056498c  00 00 00 0a                                      beq #0x564994
00564990  ae ae f6 eb                                      bl #0x310450
00564994  05 30 94 e7                                      ldr r3, [r4, r5]
00564998  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
0056499c  00 30 93 e5                                      ldr r3, [r3]
005649a0  03 00 52 e1                                      cmp r2, r3
005649a4  01 00 00 1a                                      bne #0x5649b0
005649a8  24 d0 8d e2                                      add sp, sp, #0x24
005649ac  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
005649b0  56 a6 f6 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
005649b4  5c 01 43 00 ac 40 00 00                          .byte 0x5c, 0x01, 0x43, 0x00, 0xac, 0x40, 0x00, 0x00

; FUNCTION 0x00565464, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getMatrixEi
; demangled: glitch::io::CAttributes::getMatrix(int)
; decoder-mode: arm
00565464  10 40 2d e9                                      push {r4, lr}
00565468  48 30 91 e5                                      ldr r3, [r1, #0x48]
0056546c  00 40 a0 e1                                      mov r4, r0
00565470  04 10 93 e5                                      ldr r1, [r3, #4]
00565474  00 30 93 e5                                      ldr r3, [r3]
00565478  01 10 63 e0                                      rsb r1, r3, r1
0056547c  41 01 52 e1                                      cmp r2, r1, asr #2
00565480  0c 00 00 3a                                      blo #0x5654b8
00565484  00 10 a0 e3                                      mov r1, #0
00565488  40 10 c0 e5                                      strb r1, [r0, #0x40]
0056548c  40 20 a0 e3                                      mov r2, #0x40
00565490  f2 a3 f6 eb                                      bl #0x30e460
00565494  fe 35 a0 e3                                      mov r3, #0x3f800000
00565498  01 20 a0 e3                                      mov r2, #1
0056549c  40 20 c4 e5                                      strb r2, [r4, #0x40]
005654a0  3c 30 84 e5                                      str r3, [r4, #0x3c]
005654a4  00 30 84 e5                                      str r3, [r4]
005654a8  14 30 84 e5                                      str r3, [r4, #0x14]
005654ac  28 30 84 e5                                      str r3, [r4, #0x28]
005654b0  04 00 a0 e1                                      mov r0, r4
005654b4  10 80 bd e8                                      pop {r4, pc}
005654b8  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
005654bc  03 10 a0 e1                                      mov r1, r3
005654c0  00 30 93 e5                                      ldr r3, [r3]
005654c4  0f e0 a0 e1                                      mov lr, pc
005654c8  44 f0 93 e5                                      ldr pc, [r3, #0x44]
005654cc  04 00 a0 e1                                      mov r0, r4
005654d0  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005659b4, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8vector2dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::vector2d<float> const&)
; decoder-mode: arm
005659b4  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005659b8  14 d0 4d e2                                      sub sp, sp, #0x14
005659bc  02 80 a0 e1                                      mov r8, r2
005659c0  00 50 a0 e1                                      mov r5, r0
005659c4  01 a0 a0 e1                                      mov sl, r1
005659c8  74 f1 ff eb                                      bl #0x561fa0
005659cc  78 40 9f e5                                      ldr r4, [pc, #0x78]
005659d0  00 70 50 e2                                      subs r7, r0, #0
005659d4  04 40 8f e0                                      add r4, pc, r4
005659d8  09 00 00 0a                                      beq #0x565a04
005659dc  00 30 97 e5                                      ldr r3, [r7]
005659e0  04 10 98 e5                                      ldr r1, [r8, #4]
005659e4  00 20 98 e5                                      ldr r2, [r8]
005659e8  ac 30 93 e5                                      ldr r3, [r3, #0xac]
005659ec  08 10 8d e5                                      str r1, [sp, #8]
005659f0  04 20 8d e5                                      str r2, [sp, #4]
005659f4  04 10 8d e2                                      add r1, sp, #4
005659f8  33 ff 2f e1                                      blx r3
005659fc  14 d0 8d e2                                      add sp, sp, #0x14
00565a00  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00565a04  07 10 a0 e1                                      mov r1, r7
00565a08  44 00 a0 e3                                      mov r0, #0x44
00565a0c  48 60 95 e5                                      ldr r6, [r5, #0x48]
00565a10  e5 39 ff eb                                      bl #0x5341ac
00565a14  0a 10 a0 e1                                      mov r1, sl
00565a18  07 30 a0 e1                                      mov r3, r7
00565a1c  08 20 a0 e1                                      mov r2, r8
00565a20  00 50 a0 e1                                      mov r5, r0
00565a24  95 ff ff eb                                      bl #0x565880
00565a28  20 30 9f e5                                      ldr r3, [pc, #0x20]
00565a2c  10 10 8d e2                                      add r1, sp, #0x10
00565a30  06 00 a0 e1                                      mov r0, r6
00565a34  03 30 94 e7                                      ldr r3, [r4, r3]
00565a38  08 30 83 e2                                      add r3, r3, #8
00565a3c  00 30 85 e5                                      str r3, [r5]
00565a40  04 50 21 e5                                      str r5, [r1, #-4]!
00565a44  b7 f6 ff eb                                      bl #0x563528
00565a48  eb ff ff ea                                      b #0x5659fc
; mapping-symbol data/literal pool
00565a4c  bc f0 42 00 84 0b 00 00                          .byte 0xbc, 0xf0, 0x42, 0x00, 0x84, 0x0b, 0x00, 0x00

; FUNCTION 0x00566db0, declared_size=240, range_size=240, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcN5boost13intrusive_ptrINS_5video6CLightEEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, boost::intrusive_ptr<glitch::video::CLight>)
; decoder-mode: arm
00566db0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00566db4  14 d0 4d e2                                      sub sp, sp, #0x14
00566db8  02 70 a0 e1                                      mov r7, r2
00566dbc  00 80 a0 e1                                      mov r8, r0
00566dc0  01 a0 a0 e1                                      mov sl, r1
00566dc4  75 ec ff eb                                      bl #0x561fa0
00566dc8  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
00566dcc  00 40 50 e2                                      subs r4, r0, #0
00566dd0  05 50 8f e0                                      add r5, pc, r5
00566dd4  20 00 00 0a                                      beq #0x566e5c
00566dd8  00 20 97 e5                                      ldr r2, [r7]
00566ddc  00 30 94 e5                                      ldr r3, [r4]
00566de0  04 00 a0 e1                                      mov r0, r4
00566de4  00 00 52 e3                                      cmp r2, #0
00566de8  00 31 93 e5                                      ldr r3, [r3, #0x100]
00566dec  0c 20 8d e5                                      str r2, [sp, #0xc]
00566df0  00 10 92 15                                      ldrne r1, [r2]
00566df4  01 10 81 12                                      addne r1, r1, #1
00566df8  00 10 82 15                                      strne r1, [r2]
00566dfc  0c 10 8d e2                                      add r1, sp, #0xc
00566e00  33 ff 2f e1                                      blx r3
00566e04  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00566e08  00 00 50 e3                                      cmp r0, #0
00566e0c  10 00 00 0a                                      beq #0x566e54
00566e10  00 30 90 e5                                      ldr r3, [r0]
00566e14  01 30 43 e2                                      sub r3, r3, #1
00566e18  00 00 53 e3                                      cmp r3, #0
00566e1c  00 30 80 e5                                      str r3, [r0]
00566e20  0b 00 00 1a                                      bne #0x566e54
00566e24  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
00566e28  00 00 53 e3                                      cmp r3, #0
00566e2c  05 00 00 1a                                      bne #0x566e48
00566e30  64 30 9f e5                                      ldr r3, [pc, #0x64]
00566e34  50 20 90 e5                                      ldr r2, [r0, #0x50]
00566e38  03 30 95 e7                                      ldr r3, [r5, r3]
00566e3c  00 10 93 e5                                      ldr r1, [r3]
00566e40  00 10 82 e5                                      str r1, [r2]
00566e44  00 20 83 e5                                      str r2, [r3]
00566e48  00 30 a0 e3                                      mov r3, #0
00566e4c  50 30 80 e5                                      str r3, [r0, #0x50]
00566e50  16 9d f6 eb                                      bl #0x30e2b0
00566e54  14 d0 8d e2                                      add sp, sp, #0x14
00566e58  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00566e5c  04 10 a0 e1                                      mov r1, r4
00566e60  2c 00 a0 e3                                      mov r0, #0x2c
00566e64  48 50 98 e5                                      ldr r5, [r8, #0x48]
00566e68  cf 34 ff eb                                      bl #0x5341ac
00566e6c  58 30 98 e5                                      ldr r3, [r8, #0x58]
00566e70  0a 10 a0 e1                                      mov r1, sl
00566e74  07 20 a0 e1                                      mov r2, r7
00566e78  00 60 a0 e1                                      mov r6, r0
00566e7c  00 40 8d e5                                      str r4, [sp]
00566e80  82 ff ff eb                                      bl #0x566c90
00566e84  10 10 8d e2                                      add r1, sp, #0x10
00566e88  08 60 21 e5                                      str r6, [r1, #-8]!
00566e8c  05 00 a0 e1                                      mov r0, r5
00566e90  a4 f1 ff eb                                      bl #0x563528
00566e94  ee ff ff ea                                      b #0x566e54
; mapping-symbol data/literal pool
00566e98  c0 dc 42 00 c0 3c 00 00                          .byte 0xc0, 0xdc, 0x42, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00567a9c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8vector2dIiEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::vector2d<int> const&)
; decoder-mode: arm
00567a9c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00567aa0  14 d0 4d e2                                      sub sp, sp, #0x14
00567aa4  02 80 a0 e1                                      mov r8, r2
00567aa8  00 50 a0 e1                                      mov r5, r0
00567aac  01 a0 a0 e1                                      mov sl, r1
00567ab0  3a e9 ff eb                                      bl #0x561fa0
00567ab4  78 40 9f e5                                      ldr r4, [pc, #0x78]
00567ab8  00 70 50 e2                                      subs r7, r0, #0
00567abc  04 40 8f e0                                      add r4, pc, r4
00567ac0  09 00 00 0a                                      beq #0x567aec
00567ac4  00 30 97 e5                                      ldr r3, [r7]
00567ac8  04 10 98 e5                                      ldr r1, [r8, #4]
00567acc  00 20 98 e5                                      ldr r2, [r8]
00567ad0  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
00567ad4  08 10 8d e5                                      str r1, [sp, #8]
00567ad8  04 20 8d e5                                      str r2, [sp, #4]
00567adc  04 10 8d e2                                      add r1, sp, #4
00567ae0  33 ff 2f e1                                      blx r3
00567ae4  14 d0 8d e2                                      add sp, sp, #0x14
00567ae8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00567aec  07 10 a0 e1                                      mov r1, r7
00567af0  44 00 a0 e3                                      mov r0, #0x44
00567af4  48 60 95 e5                                      ldr r6, [r5, #0x48]
00567af8  ab 31 ff eb                                      bl #0x5341ac
00567afc  0a 10 a0 e1                                      mov r1, sl
00567b00  07 30 a0 e1                                      mov r3, r7
00567b04  08 20 a0 e1                                      mov r2, r8
00567b08  00 50 a0 e1                                      mov r5, r0
00567b0c  95 ff ff eb                                      bl #0x567968
00567b10  20 30 9f e5                                      ldr r3, [pc, #0x20]
00567b14  10 10 8d e2                                      add r1, sp, #0x10
00567b18  06 00 a0 e1                                      mov r0, r6
00567b1c  03 30 94 e7                                      ldr r3, [r4, r3]
00567b20  08 30 83 e2                                      add r3, r3, #8
00567b24  00 30 85 e5                                      str r3, [r5]
00567b28  04 50 21 e5                                      str r5, [r1, #-4]!
00567b2c  7d ee ff eb                                      bl #0x563528
00567b30  eb ff ff ea                                      b #0x567ae4
; mapping-symbol data/literal pool
00567b34  d4 cf 42 00 3c 27 00 00                          .byte 0xd4, 0xcf, 0x42, 0x00, 0x3c, 0x27, 0x00, 0x00

; FUNCTION 0x00567e48, declared_size=112, range_size=112, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9getMatrixEPKc
; demangled: glitch::io::CAttributes::getMatrix(char const*)
; decoder-mode: arm
00567e48  10 40 2d e9                                      push {r4, lr}
00567e4c  00 40 a0 e1                                      mov r4, r0
00567e50  01 00 a0 e1                                      mov r0, r1
00567e54  02 10 a0 e1                                      mov r1, r2
00567e58  50 e8 ff eb                                      bl #0x561fa0
00567e5c  00 00 50 e3                                      cmp r0, #0
00567e60  06 00 00 0a                                      beq #0x567e80
00567e64  00 10 a0 e1                                      mov r1, r0
00567e68  00 30 90 e5                                      ldr r3, [r0]
00567e6c  04 00 a0 e1                                      mov r0, r4
00567e70  0f e0 a0 e1                                      mov lr, pc
00567e74  44 f0 93 e5                                      ldr pc, [r3, #0x44]
00567e78  04 00 a0 e1                                      mov r0, r4
00567e7c  10 80 bd e8                                      pop {r4, pc}
00567e80  40 00 c4 e5                                      strb r0, [r4, #0x40]
00567e84  00 10 a0 e1                                      mov r1, r0
00567e88  40 20 a0 e3                                      mov r2, #0x40
00567e8c  04 00 a0 e1                                      mov r0, r4
00567e90  72 99 f6 eb                                      bl #0x30e460
00567e94  fe 35 a0 e3                                      mov r3, #0x3f800000
00567e98  01 20 a0 e3                                      mov r2, #1
00567e9c  40 20 c4 e5                                      strb r2, [r4, #0x40]
00567ea0  3c 30 84 e5                                      str r3, [r4, #0x3c]
00567ea4  00 30 84 e5                                      str r3, [r4]
00567ea8  14 30 84 e5                                      str r3, [r4, #0x14]
00567eac  28 30 84 e5                                      str r3, [r4, #0x28]
00567eb0  04 00 a0 e1                                      mov r0, r4
00567eb4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00567f24, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes22addStringAsUserPointerEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsUserPointer(char const*, wchar_t const*, bool)
; decoder-mode: arm
00567f24  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00567f28  1c d0 4d e2                                      sub sp, sp, #0x1c
00567f2c  01 50 a0 e1                                      mov r5, r1
00567f30  0c 20 8d e5                                      str r2, [sp, #0xc]
00567f34  00 60 a0 e1                                      mov r6, r0
00567f38  00 10 a0 e3                                      mov r1, #0
00567f3c  28 00 a0 e3                                      mov r0, #0x28
00567f40  48 80 96 e5                                      ldr r8, [r6, #0x48]
00567f44  08 30 8d e5                                      str r3, [sp, #8]
00567f48  97 30 ff eb                                      bl #0x5341ac
00567f4c  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00567f50  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00567f54  00 b0 a0 e1                                      mov fp, r0
00567f58  04 40 8f e0                                      add r4, pc, r4
00567f5c  02 20 94 e7                                      ldr r2, [r4, r2]
00567f60  01 90 a0 e3                                      mov sb, #1
00567f64  04 90 80 e5                                      str sb, [r0, #4]
00567f68  08 20 82 e2                                      add r2, r2, #8
00567f6c  08 20 8b e4                                      str r2, [fp], #8
00567f70  00 70 a0 e1                                      mov r7, r0
00567f74  18 b0 80 e5                                      str fp, [r0, #0x18]
00567f78  1c b0 80 e5                                      str fp, [r0, #0x1c]
00567f7c  10 10 a0 e3                                      mov r1, #0x10
00567f80  0b 00 a0 e1                                      mov r0, fp
00567f84  87 e2 f6 eb                                      bl #0x3209a8
00567f88  18 10 97 e5                                      ldr r1, [r7, #0x18]
00567f8c  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00567f90  00 a0 a0 e3                                      mov sl, #0
00567f94  00 a0 c1 e5                                      strb sl, [r1]
00567f98  02 20 94 e7                                      ldr r2, [r4, r2]
00567f9c  08 30 9d e5                                      ldr r3, [sp, #8]
00567fa0  05 00 a0 e1                                      mov r0, r5
00567fa4  08 20 82 e2                                      add r2, r2, #8
00567fa8  20 30 c7 e5                                      strb r3, [r7, #0x20]
00567fac  00 20 87 e5                                      str r2, [r7]
00567fb0  a7 97 f6 eb                                      bl #0x30de54
00567fb4  05 10 a0 e1                                      mov r1, r5
00567fb8  00 20 85 e0                                      add r2, r5, r0
00567fbc  0b 00 a0 e1                                      mov r0, fp
00567fc0  f0 e2 f6 eb                                      bl #0x320b88
00567fc4  24 a0 87 e5                                      str sl, [r7, #0x24]
00567fc8  10 70 8d e5                                      str r7, [sp, #0x10]
00567fcc  0a 00 98 e9                                      ldmib r8, {r1, r3}
00567fd0  03 00 51 e1                                      cmp r1, r3
00567fd4  0d 00 00 0a                                      beq #0x568010
00567fd8  00 70 81 e5                                      str r7, [r1]
00567fdc  04 30 98 e5                                      ldr r3, [r8, #4]
00567fe0  04 30 83 e2                                      add r3, r3, #4
00567fe4  04 30 88 e5                                      str r3, [r8, #4]
00567fe8  48 30 96 e5                                      ldr r3, [r6, #0x48]
00567fec  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00567ff0  04 30 93 e5                                      ldr r3, [r3, #4]
00567ff4  04 30 13 e5                                      ldr r3, [r3, #-4]
00567ff8  03 00 a0 e1                                      mov r0, r3
00567ffc  00 30 93 e5                                      ldr r3, [r3]
00568000  0f e0 a0 e1                                      mov lr, pc
00568004  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00568008  1c d0 8d e2                                      add sp, sp, #0x1c
0056800c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00568010  08 00 a0 e1                                      mov r0, r8
00568014  10 20 8d e2                                      add r2, sp, #0x10
00568018  14 30 8d e2                                      add r3, sp, #0x14
0056801c  04 90 8d e5                                      str sb, [sp, #4]
00568020  00 90 8d e5                                      str sb, [sp]
00568024  0f ed ff eb                                      bl #0x563468
00568028  ee ff ff ea                                      b #0x567fe8
; mapping-symbol data/literal pool
0056802c  38 cb 42 00 44 2c 00 00 74 13 00 00              .byte 0x38, 0xcb, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x74, 0x13, 0x00, 0x00

; FUNCTION 0x00568038, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes14addUserPointerEPKcPvb
; demangled: glitch::io::CAttributes::addUserPointer(char const*, void*, bool)
; decoder-mode: arm
00568038  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056803c  01 60 a0 e1                                      mov r6, r1
00568040  14 d0 4d e2                                      sub sp, sp, #0x14
00568044  48 50 90 e5                                      ldr r5, [r0, #0x48]
00568048  00 10 a0 e3                                      mov r1, #0
0056804c  28 00 a0 e3                                      mov r0, #0x28
00568050  02 80 a0 e1                                      mov r8, r2
00568054  03 b0 a0 e1                                      mov fp, r3
00568058  53 30 ff eb                                      bl #0x5341ac
0056805c  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
00568060  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00568064  00 90 a0 e1                                      mov sb, r0
00568068  04 40 8f e0                                      add r4, pc, r4
0056806c  03 30 94 e7                                      ldr r3, [r4, r3]
00568070  01 70 a0 e3                                      mov r7, #1
00568074  04 70 80 e5                                      str r7, [r0, #4]
00568078  08 30 83 e2                                      add r3, r3, #8
0056807c  08 30 89 e4                                      str r3, [sb], #8
00568080  00 a0 a0 e1                                      mov sl, r0
00568084  18 90 80 e5                                      str sb, [r0, #0x18]
00568088  1c 90 80 e5                                      str sb, [r0, #0x1c]
0056808c  10 10 a0 e3                                      mov r1, #0x10
00568090  09 00 a0 e1                                      mov r0, sb
00568094  43 e2 f6 eb                                      bl #0x3209a8
00568098  80 30 9f e5                                      ldr r3, [pc, #0x80]
0056809c  18 20 9a e5                                      ldr r2, [sl, #0x18]
005680a0  00 10 a0 e3                                      mov r1, #0
005680a4  03 30 94 e7                                      ldr r3, [r4, r3]
005680a8  00 10 c2 e5                                      strb r1, [r2]
005680ac  06 00 a0 e1                                      mov r0, r6
005680b0  08 30 83 e2                                      add r3, r3, #8
005680b4  00 30 8a e5                                      str r3, [sl]
005680b8  20 b0 ca e5                                      strb fp, [sl, #0x20]
005680bc  64 97 f6 eb                                      bl #0x30de54
005680c0  06 10 a0 e1                                      mov r1, r6
005680c4  00 20 86 e0                                      add r2, r6, r0
005680c8  09 00 a0 e1                                      mov r0, sb
005680cc  ad e2 f6 eb                                      bl #0x320b88
005680d0  24 80 8a e5                                      str r8, [sl, #0x24]
005680d4  08 a0 8d e5                                      str sl, [sp, #8]
005680d8  0a 00 95 e9                                      ldmib r5, {r1, r3}
005680dc  03 00 51 e1                                      cmp r1, r3
005680e0  05 00 00 0a                                      beq #0x5680fc
005680e4  00 a0 81 e5                                      str sl, [r1]
005680e8  04 30 95 e5                                      ldr r3, [r5, #4]
005680ec  04 30 83 e2                                      add r3, r3, #4
005680f0  04 30 85 e5                                      str r3, [r5, #4]
005680f4  14 d0 8d e2                                      add sp, sp, #0x14
005680f8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005680fc  05 00 a0 e1                                      mov r0, r5
00568100  08 20 8d e2                                      add r2, sp, #8
00568104  0c 30 8d e2                                      add r3, sp, #0xc
00568108  04 70 8d e5                                      str r7, [sp, #4]
0056810c  00 70 8d e5                                      str r7, [sp]
00568110  d4 ec ff eb                                      bl #0x563468
00568114  f6 ff ff ea                                      b #0x5680f4
; mapping-symbol data/literal pool
00568118  28 ca 42 00 44 2c 00 00 74 13 00 00              .byte 0x28, 0xca, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x74, 0x13, 0x00, 0x00

; FUNCTION 0x00568124, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16addStringAsLightEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsLight(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568124  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00568128  18 d0 4d e2                                      sub sp, sp, #0x18
0056812c  00 c0 a0 e3                                      mov ip, #0
00568130  18 60 8d e2                                      add r6, sp, #0x18
00568134  08 c0 26 e5                                      str ip, [r6, #-8]!
00568138  00 50 a0 e1                                      mov r5, r0
0056813c  01 80 a0 e1                                      mov r8, r1
00568140  2c 00 a0 e3                                      mov r0, #0x2c
00568144  0c 10 a0 e1                                      mov r1, ip
00568148  03 a0 a0 e1                                      mov sl, r3
0056814c  48 40 95 e5                                      ldr r4, [r5, #0x48]
00568150  02 90 a0 e1                                      mov sb, r2
00568154  14 30 ff eb                                      bl #0x5341ac
00568158  58 30 95 e5                                      ldr r3, [r5, #0x58]
0056815c  00 70 a0 e1                                      mov r7, r0
00568160  08 10 a0 e1                                      mov r1, r8
00568164  06 20 a0 e1                                      mov r2, r6
00568168  00 a0 8d e5                                      str sl, [sp]
0056816c  c7 fa ff eb                                      bl #0x566c90
00568170  0c 70 8d e5                                      str r7, [sp, #0xc]
00568174  0a 00 94 e9                                      ldmib r4, {r1, r3}
00568178  b0 60 9f e5                                      ldr r6, [pc, #0xb0]
0056817c  03 00 51 e1                                      cmp r1, r3
00568180  06 60 8f e0                                      add r6, pc, r6
00568184  21 00 00 0a                                      beq #0x568210
00568188  00 70 81 e5                                      str r7, [r1]
0056818c  04 30 94 e5                                      ldr r3, [r4, #4]
00568190  04 30 83 e2                                      add r3, r3, #4
00568194  04 30 84 e5                                      str r3, [r4, #4]
00568198  10 00 9d e5                                      ldr r0, [sp, #0x10]
0056819c  00 00 50 e3                                      cmp r0, #0
005681a0  10 00 00 0a                                      beq #0x5681e8
005681a4  00 30 90 e5                                      ldr r3, [r0]
005681a8  01 30 43 e2                                      sub r3, r3, #1
005681ac  00 00 53 e3                                      cmp r3, #0
005681b0  00 30 80 e5                                      str r3, [r0]
005681b4  0b 00 00 1a                                      bne #0x5681e8
005681b8  54 30 d0 e5                                      ldrb r3, [r0, #0x54]
005681bc  00 00 53 e3                                      cmp r3, #0
005681c0  05 00 00 1a                                      bne #0x5681dc
005681c4  68 30 9f e5                                      ldr r3, [pc, #0x68]
005681c8  50 20 90 e5                                      ldr r2, [r0, #0x50]
005681cc  03 30 96 e7                                      ldr r3, [r6, r3]
005681d0  00 10 93 e5                                      ldr r1, [r3]
005681d4  00 10 82 e5                                      str r1, [r2]
005681d8  00 20 83 e5                                      str r2, [r3]
005681dc  00 30 a0 e3                                      mov r3, #0
005681e0  50 30 80 e5                                      str r3, [r0, #0x50]
005681e4  31 98 f6 eb                                      bl #0x30e2b0
005681e8  48 30 95 e5                                      ldr r3, [r5, #0x48]
005681ec  09 10 a0 e1                                      mov r1, sb
005681f0  04 30 93 e5                                      ldr r3, [r3, #4]
005681f4  04 30 13 e5                                      ldr r3, [r3, #-4]
005681f8  03 00 a0 e1                                      mov r0, r3
005681fc  00 30 93 e5                                      ldr r3, [r3]
00568200  0f e0 a0 e1                                      mov lr, pc
00568204  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00568208  18 d0 8d e2                                      add sp, sp, #0x18
0056820c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00568210  01 c0 a0 e3                                      mov ip, #1
00568214  04 00 a0 e1                                      mov r0, r4
00568218  0c 20 8d e2                                      add r2, sp, #0xc
0056821c  14 30 8d e2                                      add r3, sp, #0x14
00568220  04 c0 8d e5                                      str ip, [sp, #4]
00568224  00 c0 8d e5                                      str ip, [sp]
00568228  8e ec ff eb                                      bl #0x563468
0056822c  d9 ff ff ea                                      b #0x568198
; mapping-symbol data/literal pool
00568230  10 c9 42 00 c0 3c 00 00                          .byte 0x10, 0xc9, 0x42, 0x00, 0xc0, 0x3c, 0x00, 0x00

; FUNCTION 0x00568238, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8addLightEPKcN5boost13intrusive_ptrINS_5video6CLightEEEb
; demangled: glitch::io::CAttributes::addLight(char const*, boost::intrusive_ptr<glitch::video::CLight>, bool)
; decoder-mode: arm
00568238  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056823c  00 50 a0 e1                                      mov r5, r0
00568240  14 d0 4d e2                                      sub sp, sp, #0x14
00568244  01 70 a0 e1                                      mov r7, r1
00568248  2c 00 a0 e3                                      mov r0, #0x2c
0056824c  00 10 a0 e3                                      mov r1, #0
00568250  03 80 a0 e1                                      mov r8, r3
00568254  48 40 95 e5                                      ldr r4, [r5, #0x48]
00568258  02 a0 a0 e1                                      mov sl, r2
0056825c  d2 2f ff eb                                      bl #0x5341ac
00568260  58 30 95 e5                                      ldr r3, [r5, #0x58]
00568264  00 60 a0 e1                                      mov r6, r0
00568268  07 10 a0 e1                                      mov r1, r7
0056826c  0a 20 a0 e1                                      mov r2, sl
00568270  00 80 8d e5                                      str r8, [sp]
00568274  85 fa ff eb                                      bl #0x566c90
00568278  08 60 8d e5                                      str r6, [sp, #8]
0056827c  0a 00 94 e9                                      ldmib r4, {r1, r3}
00568280  03 00 51 e1                                      cmp r1, r3
00568284  05 00 00 0a                                      beq #0x5682a0
00568288  00 60 81 e5                                      str r6, [r1]
0056828c  04 30 94 e5                                      ldr r3, [r4, #4]
00568290  04 30 83 e2                                      add r3, r3, #4
00568294  04 30 84 e5                                      str r3, [r4, #4]
00568298  14 d0 8d e2                                      add sp, sp, #0x14
0056829c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005682a0  01 c0 a0 e3                                      mov ip, #1
005682a4  04 00 a0 e1                                      mov r0, r4
005682a8  08 20 8d e2                                      add r2, sp, #8
005682ac  0c 30 8d e2                                      add r3, sp, #0xc
005682b0  04 c0 8d e5                                      str ip, [sp, #4]
005682b4  00 c0 8d e5                                      str ip, [sp]
005682b8  6a ec ff eb                                      bl #0x563468
005682bc  f5 ff ff ea                                      b #0x568298

; FUNCTION 0x005682c0, declared_size=196, range_size=196, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes18addStringAsTextureEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsTexture(char const*, wchar_t const*, bool)
; decoder-mode: arm
005682c0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005682c4  18 d0 4d e2                                      sub sp, sp, #0x18
005682c8  00 c0 a0 e3                                      mov ip, #0
005682cc  18 60 8d e2                                      add r6, sp, #0x18
005682d0  08 c0 26 e5                                      str ip, [r6, #-8]!
005682d4  00 50 a0 e1                                      mov r5, r0
005682d8  01 80 a0 e1                                      mov r8, r1
005682dc  2c 00 a0 e3                                      mov r0, #0x2c
005682e0  0c 10 a0 e1                                      mov r1, ip
005682e4  03 a0 a0 e1                                      mov sl, r3
005682e8  48 40 95 e5                                      ldr r4, [r5, #0x48]
005682ec  02 90 a0 e1                                      mov sb, r2
005682f0  ad 2f ff eb                                      bl #0x5341ac
005682f4  58 30 95 e5                                      ldr r3, [r5, #0x58]
005682f8  00 70 a0 e1                                      mov r7, r0
005682fc  08 10 a0 e1                                      mov r1, r8
00568300  06 20 a0 e1                                      mov r2, r6
00568304  00 a0 8d e5                                      str sl, [sp]
00568308  e4 fa ff eb                                      bl #0x566ea0
0056830c  0c 70 8d e5                                      str r7, [sp, #0xc]
00568310  0a 00 94 e9                                      ldmib r4, {r1, r3}
00568314  03 00 51 e1                                      cmp r1, r3
00568318  11 00 00 0a                                      beq #0x568364
0056831c  00 70 81 e5                                      str r7, [r1]
00568320  04 30 94 e5                                      ldr r3, [r4, #4]
00568324  04 30 83 e2                                      add r3, r3, #4
00568328  04 30 84 e5                                      str r3, [r4, #4]
0056832c  10 00 9d e5                                      ldr r0, [sp, #0x10]
00568330  00 00 50 e3                                      cmp r0, #0
00568334  00 00 00 0a                                      beq #0x56833c
00568338  91 d4 f6 eb                                      bl #0x31d584
0056833c  48 30 95 e5                                      ldr r3, [r5, #0x48]
00568340  09 10 a0 e1                                      mov r1, sb
00568344  04 30 93 e5                                      ldr r3, [r3, #4]
00568348  04 30 13 e5                                      ldr r3, [r3, #-4]
0056834c  03 00 a0 e1                                      mov r0, r3
00568350  00 30 93 e5                                      ldr r3, [r3]
00568354  0f e0 a0 e1                                      mov lr, pc
00568358  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056835c  18 d0 8d e2                                      add sp, sp, #0x18
00568360  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00568364  01 c0 a0 e3                                      mov ip, #1
00568368  04 00 a0 e1                                      mov r0, r4
0056836c  0c 20 8d e2                                      add r2, sp, #0xc
00568370  14 30 8d e2                                      add r3, sp, #0x14
00568374  04 c0 8d e5                                      str ip, [sp, #4]
00568378  00 c0 8d e5                                      str ip, [sp]
0056837c  39 ec ff eb                                      bl #0x563468
00568380  e9 ff ff ea                                      b #0x56832c

; FUNCTION 0x00568384, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10addTextureEPKcN5boost13intrusive_ptrINS_5video8ITextureEEEb
; demangled: glitch::io::CAttributes::addTexture(char const*, boost::intrusive_ptr<glitch::video::ITexture>, bool)
; decoder-mode: arm
00568384  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00568388  00 50 a0 e1                                      mov r5, r0
0056838c  14 d0 4d e2                                      sub sp, sp, #0x14
00568390  01 70 a0 e1                                      mov r7, r1
00568394  2c 00 a0 e3                                      mov r0, #0x2c
00568398  00 10 a0 e3                                      mov r1, #0
0056839c  03 80 a0 e1                                      mov r8, r3
005683a0  48 40 95 e5                                      ldr r4, [r5, #0x48]
005683a4  02 a0 a0 e1                                      mov sl, r2
005683a8  7f 2f ff eb                                      bl #0x5341ac
005683ac  58 30 95 e5                                      ldr r3, [r5, #0x58]
005683b0  00 60 a0 e1                                      mov r6, r0
005683b4  07 10 a0 e1                                      mov r1, r7
005683b8  0a 20 a0 e1                                      mov r2, sl
005683bc  00 80 8d e5                                      str r8, [sp]
005683c0  b6 fa ff eb                                      bl #0x566ea0
005683c4  08 60 8d e5                                      str r6, [sp, #8]
005683c8  0a 00 94 e9                                      ldmib r4, {r1, r3}
005683cc  03 00 51 e1                                      cmp r1, r3
005683d0  05 00 00 0a                                      beq #0x5683ec
005683d4  00 60 81 e5                                      str r6, [r1]
005683d8  04 30 94 e5                                      ldr r3, [r4, #4]
005683dc  04 30 83 e2                                      add r3, r3, #4
005683e0  04 30 84 e5                                      str r3, [r4, #4]
005683e4  14 d0 8d e2                                      add sp, sp, #0x14
005683e8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005683ec  01 c0 a0 e3                                      mov ip, #1
005683f0  04 00 a0 e1                                      mov r0, r4
005683f4  08 20 8d e2                                      add r2, sp, #8
005683f8  0c 30 8d e2                                      add r3, sp, #0xc
005683fc  04 c0 8d e5                                      str ip, [sp, #4]
00568400  00 c0 8d e5                                      str ip, [sp]
00568404  17 ec ff eb                                      bl #0x563468
00568408  f5 ff ff ea                                      b #0x5683e4

; FUNCTION 0x0056840c, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes17addStringAsBinaryEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsBinary(char const*, wchar_t const*, bool)
; decoder-mode: arm
0056840c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00568410  01 40 a0 e1                                      mov r4, r1
00568414  14 d0 4d e2                                      sub sp, sp, #0x14
00568418  00 70 a0 e1                                      mov r7, r0
0056841c  00 10 a0 e3                                      mov r1, #0
00568420  84 00 a0 e3                                      mov r0, #0x84
00568424  48 50 97 e5                                      ldr r5, [r7, #0x48]
00568428  02 a0 a0 e1                                      mov sl, r2
0056842c  03 80 a0 e1                                      mov r8, r3
00568430  5d 2f ff eb                                      bl #0x5341ac
00568434  00 c0 a0 e3                                      mov ip, #0
00568438  04 10 a0 e1                                      mov r1, r4
0056843c  08 30 a0 e1                                      mov r3, r8
00568440  0c 20 a0 e1                                      mov r2, ip
00568444  84 40 9f e5                                      ldr r4, [pc, #0x84]
00568448  00 60 a0 e1                                      mov r6, r0
0056844c  00 c0 8d e5                                      str ip, [sp]
00568450  c9 fa ff eb                                      bl #0x566f7c
00568454  78 30 9f e5                                      ldr r3, [pc, #0x78]
00568458  04 40 8f e0                                      add r4, pc, r4
0056845c  03 30 94 e7                                      ldr r3, [r4, r3]
00568460  08 30 83 e2                                      add r3, r3, #8
00568464  00 30 86 e5                                      str r3, [r6]
00568468  08 60 8d e5                                      str r6, [sp, #8]
0056846c  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568470  03 00 51 e1                                      cmp r1, r3
00568474  0d 00 00 0a                                      beq #0x5684b0
00568478  00 60 81 e5                                      str r6, [r1]
0056847c  04 30 95 e5                                      ldr r3, [r5, #4]
00568480  04 30 83 e2                                      add r3, r3, #4
00568484  04 30 85 e5                                      str r3, [r5, #4]
00568488  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056848c  0a 10 a0 e1                                      mov r1, sl
00568490  04 30 93 e5                                      ldr r3, [r3, #4]
00568494  04 30 13 e5                                      ldr r3, [r3, #-4]
00568498  03 00 a0 e1                                      mov r0, r3
0056849c  00 30 93 e5                                      ldr r3, [r3]
005684a0  0f e0 a0 e1                                      mov lr, pc
005684a4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005684a8  14 d0 8d e2                                      add sp, sp, #0x14
005684ac  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005684b0  01 c0 a0 e3                                      mov ip, #1
005684b4  05 00 a0 e1                                      mov r0, r5
005684b8  08 20 8d e2                                      add r2, sp, #8
005684bc  0c 30 8d e2                                      add r3, sp, #0xc
005684c0  04 c0 8d e5                                      str ip, [sp, #4]
005684c4  00 c0 8d e5                                      str ip, [sp]
005684c8  e6 eb ff eb                                      bl #0x563468
005684cc  ed ff ff ea                                      b #0x568488
; mapping-symbol data/literal pool
005684d0  38 c6 42 00 78 06 00 00                          .byte 0x38, 0xc6, 0x42, 0x00, 0x78, 0x06, 0x00, 0x00

; FUNCTION 0x005684d8, declared_size=168, range_size=168, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addBinaryEPKcPvib
; demangled: glitch::io::CAttributes::addBinary(char const*, void*, int, bool)
; decoder-mode: arm
005684d8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005684dc  01 40 a0 e1                                      mov r4, r1
005684e0  14 d0 4d e2                                      sub sp, sp, #0x14
005684e4  48 50 90 e5                                      ldr r5, [r0, #0x48]
005684e8  00 10 a0 e3                                      mov r1, #0
005684ec  84 00 a0 e3                                      mov r0, #0x84
005684f0  30 70 dd e5                                      ldrb r7, [sp, #0x30]
005684f4  02 a0 a0 e1                                      mov sl, r2
005684f8  03 80 a0 e1                                      mov r8, r3
005684fc  2a 2f ff eb                                      bl #0x5341ac
00568500  04 10 a0 e1                                      mov r1, r4
00568504  08 30 a0 e1                                      mov r3, r8
00568508  0a 20 a0 e1                                      mov r2, sl
0056850c  64 40 9f e5                                      ldr r4, [pc, #0x64]
00568510  00 60 a0 e1                                      mov r6, r0
00568514  00 70 8d e5                                      str r7, [sp]
00568518  97 fa ff eb                                      bl #0x566f7c
0056851c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00568520  04 40 8f e0                                      add r4, pc, r4
00568524  03 30 94 e7                                      ldr r3, [r4, r3]
00568528  08 30 83 e2                                      add r3, r3, #8
0056852c  00 30 86 e5                                      str r3, [r6]
00568530  08 60 8d e5                                      str r6, [sp, #8]
00568534  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568538  03 00 51 e1                                      cmp r1, r3
0056853c  05 00 00 0a                                      beq #0x568558
00568540  00 60 81 e5                                      str r6, [r1]
00568544  04 30 95 e5                                      ldr r3, [r5, #4]
00568548  04 30 83 e2                                      add r3, r3, #4
0056854c  04 30 85 e5                                      str r3, [r5, #4]
00568550  14 d0 8d e2                                      add sp, sp, #0x14
00568554  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00568558  01 c0 a0 e3                                      mov ip, #1
0056855c  05 00 a0 e1                                      mov r0, r5
00568560  08 20 8d e2                                      add r2, sp, #8
00568564  0c 30 8d e2                                      add r3, sp, #0xc
00568568  04 c0 8d e5                                      str ip, [sp, #4]
0056856c  00 c0 8d e5                                      str ip, [sp]
00568570  bc eb ff eb                                      bl #0x563468
00568574  f5 ff ff ea                                      b #0x568550
; mapping-symbol data/literal pool
00568578  70 c5 42 00 78 06 00 00                          .byte 0x70, 0xc5, 0x42, 0x00, 0x78, 0x06, 0x00, 0x00

; FUNCTION 0x00568580, declared_size=136, range_size=136, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7addEnumEPKcS3_PKS3_b
; demangled: glitch::io::CAttributes::addEnum(char const*, char const*, char const* const*, bool)
; decoder-mode: arm
00568580  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00568584  01 70 a0 e1                                      mov r7, r1
00568588  14 d0 4d e2                                      sub sp, sp, #0x14
0056858c  48 40 90 e5                                      ldr r4, [r0, #0x48]
00568590  00 10 a0 e3                                      mov r1, #0
00568594  48 00 a0 e3                                      mov r0, #0x48
00568598  30 60 dd e5                                      ldrb r6, [sp, #0x30]
0056859c  02 a0 a0 e1                                      mov sl, r2
005685a0  03 80 a0 e1                                      mov r8, r3
005685a4  00 2f ff eb                                      bl #0x5341ac
005685a8  07 10 a0 e1                                      mov r1, r7
005685ac  00 50 a0 e1                                      mov r5, r0
005685b0  08 30 a0 e1                                      mov r3, r8
005685b4  0a 20 a0 e1                                      mov r2, sl
005685b8  00 60 8d e5                                      str r6, [sp]
005685bc  aa fa ff eb                                      bl #0x56706c
005685c0  08 50 8d e5                                      str r5, [sp, #8]
005685c4  0a 00 94 e9                                      ldmib r4, {r1, r3}
005685c8  03 00 51 e1                                      cmp r1, r3
005685cc  05 00 00 0a                                      beq #0x5685e8
005685d0  00 50 81 e5                                      str r5, [r1]
005685d4  04 30 94 e5                                      ldr r3, [r4, #4]
005685d8  04 30 83 e2                                      add r3, r3, #4
005685dc  04 30 84 e5                                      str r3, [r4, #4]
005685e0  14 d0 8d e2                                      add sp, sp, #0x14
005685e4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005685e8  01 c0 a0 e3                                      mov ip, #1
005685ec  04 00 a0 e1                                      mov r0, r4
005685f0  08 20 8d e2                                      add r2, sp, #8
005685f4  0c 30 8d e2                                      add r3, sp, #0xc
005685f8  04 c0 8d e5                                      str ip, [sp, #4]
005685fc  00 c0 8d e5                                      str ip, [sp]
00568600  98 eb ff eb                                      bl #0x563468
00568604  f5 ff ff ea                                      b #0x5685e0

; FUNCTION 0x00568608, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes15addStringAsBoolEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsBool(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568608  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056860c  1c d0 4d e2                                      sub sp, sp, #0x1c
00568610  01 50 a0 e1                                      mov r5, r1
00568614  0c 20 8d e5                                      str r2, [sp, #0xc]
00568618  00 60 a0 e1                                      mov r6, r0
0056861c  00 10 a0 e3                                      mov r1, #0
00568620  24 00 a0 e3                                      mov r0, #0x24
00568624  48 80 96 e5                                      ldr r8, [r6, #0x48]
00568628  08 30 8d e5                                      str r3, [sp, #8]
0056862c  de 2e ff eb                                      bl #0x5341ac
00568630  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00568634  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00568638  00 b0 a0 e1                                      mov fp, r0
0056863c  04 40 8f e0                                      add r4, pc, r4
00568640  02 20 94 e7                                      ldr r2, [r4, r2]
00568644  01 90 a0 e3                                      mov sb, #1
00568648  04 90 80 e5                                      str sb, [r0, #4]
0056864c  08 20 82 e2                                      add r2, r2, #8
00568650  08 20 8b e4                                      str r2, [fp], #8
00568654  00 70 a0 e1                                      mov r7, r0
00568658  18 b0 80 e5                                      str fp, [r0, #0x18]
0056865c  1c b0 80 e5                                      str fp, [r0, #0x1c]
00568660  10 10 a0 e3                                      mov r1, #0x10
00568664  0b 00 a0 e1                                      mov r0, fp
00568668  ce e0 f6 eb                                      bl #0x3209a8
0056866c  18 10 97 e5                                      ldr r1, [r7, #0x18]
00568670  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00568674  00 a0 a0 e3                                      mov sl, #0
00568678  00 a0 c1 e5                                      strb sl, [r1]
0056867c  02 20 94 e7                                      ldr r2, [r4, r2]
00568680  08 30 9d e5                                      ldr r3, [sp, #8]
00568684  05 00 a0 e1                                      mov r0, r5
00568688  08 20 82 e2                                      add r2, r2, #8
0056868c  20 30 c7 e5                                      strb r3, [r7, #0x20]
00568690  00 20 87 e5                                      str r2, [r7]
00568694  ee 95 f6 eb                                      bl #0x30de54
00568698  05 10 a0 e1                                      mov r1, r5
0056869c  00 20 85 e0                                      add r2, r5, r0
005686a0  0b 00 a0 e1                                      mov r0, fp
005686a4  37 e1 f6 eb                                      bl #0x320b88
005686a8  21 a0 c7 e5                                      strb sl, [r7, #0x21]
005686ac  10 70 8d e5                                      str r7, [sp, #0x10]
005686b0  0a 00 98 e9                                      ldmib r8, {r1, r3}
005686b4  03 00 51 e1                                      cmp r1, r3
005686b8  0d 00 00 0a                                      beq #0x5686f4
005686bc  00 70 81 e5                                      str r7, [r1]
005686c0  04 30 98 e5                                      ldr r3, [r8, #4]
005686c4  04 30 83 e2                                      add r3, r3, #4
005686c8  04 30 88 e5                                      str r3, [r8, #4]
005686cc  48 30 96 e5                                      ldr r3, [r6, #0x48]
005686d0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005686d4  04 30 93 e5                                      ldr r3, [r3, #4]
005686d8  04 30 13 e5                                      ldr r3, [r3, #-4]
005686dc  03 00 a0 e1                                      mov r0, r3
005686e0  00 30 93 e5                                      ldr r3, [r3]
005686e4  0f e0 a0 e1                                      mov lr, pc
005686e8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005686ec  1c d0 8d e2                                      add sp, sp, #0x1c
005686f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005686f4  08 00 a0 e1                                      mov r0, r8
005686f8  10 20 8d e2                                      add r2, sp, #0x10
005686fc  14 30 8d e2                                      add r3, sp, #0x14
00568700  04 90 8d e5                                      str sb, [sp, #4]
00568704  00 90 8d e5                                      str sb, [sp]
00568708  56 eb ff eb                                      bl #0x563468
0056870c  ee ff ff ea                                      b #0x5686cc
; mapping-symbol data/literal pool
00568710  54 c4 42 00 44 2c 00 00 94 26 00 00              .byte 0x54, 0xc4, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x94, 0x26, 0x00, 0x00

; FUNCTION 0x0056871c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7addBoolEPKcbb
; demangled: glitch::io::CAttributes::addBool(char const*, bool, bool)
; decoder-mode: arm
0056871c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00568720  01 60 a0 e1                                      mov r6, r1
00568724  14 d0 4d e2                                      sub sp, sp, #0x14
00568728  48 50 90 e5                                      ldr r5, [r0, #0x48]
0056872c  00 10 a0 e3                                      mov r1, #0
00568730  24 00 a0 e3                                      mov r0, #0x24
00568734  02 80 a0 e1                                      mov r8, r2
00568738  03 b0 a0 e1                                      mov fp, r3
0056873c  9a 2e ff eb                                      bl #0x5341ac
00568740  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
00568744  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00568748  00 90 a0 e1                                      mov sb, r0
0056874c  04 40 8f e0                                      add r4, pc, r4
00568750  03 30 94 e7                                      ldr r3, [r4, r3]
00568754  01 70 a0 e3                                      mov r7, #1
00568758  04 70 80 e5                                      str r7, [r0, #4]
0056875c  08 30 83 e2                                      add r3, r3, #8
00568760  08 30 89 e4                                      str r3, [sb], #8
00568764  00 a0 a0 e1                                      mov sl, r0
00568768  18 90 80 e5                                      str sb, [r0, #0x18]
0056876c  1c 90 80 e5                                      str sb, [r0, #0x1c]
00568770  10 10 a0 e3                                      mov r1, #0x10
00568774  09 00 a0 e1                                      mov r0, sb
00568778  8a e0 f6 eb                                      bl #0x3209a8
0056877c  80 30 9f e5                                      ldr r3, [pc, #0x80]
00568780  18 20 9a e5                                      ldr r2, [sl, #0x18]
00568784  00 10 a0 e3                                      mov r1, #0
00568788  03 30 94 e7                                      ldr r3, [r4, r3]
0056878c  00 10 c2 e5                                      strb r1, [r2]
00568790  06 00 a0 e1                                      mov r0, r6
00568794  08 30 83 e2                                      add r3, r3, #8
00568798  00 30 8a e5                                      str r3, [sl]
0056879c  20 b0 ca e5                                      strb fp, [sl, #0x20]
005687a0  ab 95 f6 eb                                      bl #0x30de54
005687a4  06 10 a0 e1                                      mov r1, r6
005687a8  00 20 86 e0                                      add r2, r6, r0
005687ac  09 00 a0 e1                                      mov r0, sb
005687b0  f4 e0 f6 eb                                      bl #0x320b88
005687b4  21 80 ca e5                                      strb r8, [sl, #0x21]
005687b8  08 a0 8d e5                                      str sl, [sp, #8]
005687bc  0a 00 95 e9                                      ldmib r5, {r1, r3}
005687c0  03 00 51 e1                                      cmp r1, r3
005687c4  05 00 00 0a                                      beq #0x5687e0
005687c8  00 a0 81 e5                                      str sl, [r1]
005687cc  04 30 95 e5                                      ldr r3, [r5, #4]
005687d0  04 30 83 e2                                      add r3, r3, #4
005687d4  04 30 85 e5                                      str r3, [r5, #4]
005687d8  14 d0 8d e2                                      add sp, sp, #0x14
005687dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005687e0  05 00 a0 e1                                      mov r0, r5
005687e4  08 20 8d e2                                      add r2, sp, #8
005687e8  0c 30 8d e2                                      add r3, sp, #0xc
005687ec  04 70 8d e5                                      str r7, [sp, #4]
005687f0  00 70 8d e5                                      str r7, [sp]
005687f4  1b eb ff eb                                      bl #0x563468
005687f8  f6 ff ff ea                                      b #0x5687d8
; mapping-symbol data/literal pool
005687fc  44 c3 42 00 44 2c 00 00 94 26 00 00              .byte 0x44, 0xc3, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x94, 0x26, 0x00, 0x00

; FUNCTION 0x00568808, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16addStringAsFloatEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsFloat(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568808  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056880c  1c d0 4d e2                                      sub sp, sp, #0x1c
00568810  01 50 a0 e1                                      mov r5, r1
00568814  0c 20 8d e5                                      str r2, [sp, #0xc]
00568818  00 60 a0 e1                                      mov r6, r0
0056881c  00 10 a0 e3                                      mov r1, #0
00568820  28 00 a0 e3                                      mov r0, #0x28
00568824  03 90 a0 e1                                      mov sb, r3
00568828  48 a0 96 e5                                      ldr sl, [r6, #0x48]
0056882c  5e 2e ff eb                                      bl #0x5341ac
00568830  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00568834  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00568838  00 b0 a0 e1                                      mov fp, r0
0056883c  04 40 8f e0                                      add r4, pc, r4
00568840  03 30 94 e7                                      ldr r3, [r4, r3]
00568844  01 70 a0 e3                                      mov r7, #1
00568848  04 70 80 e5                                      str r7, [r0, #4]
0056884c  08 30 83 e2                                      add r3, r3, #8
00568850  08 30 8b e4                                      str r3, [fp], #8
00568854  00 80 a0 e1                                      mov r8, r0
00568858  18 b0 80 e5                                      str fp, [r0, #0x18]
0056885c  1c b0 80 e5                                      str fp, [r0, #0x1c]
00568860  10 10 a0 e3                                      mov r1, #0x10
00568864  0b 00 a0 e1                                      mov r0, fp
00568868  4e e0 f6 eb                                      bl #0x3209a8
0056886c  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
00568870  18 20 98 e5                                      ldr r2, [r8, #0x18]
00568874  00 10 a0 e3                                      mov r1, #0
00568878  03 30 94 e7                                      ldr r3, [r4, r3]
0056887c  00 10 c2 e5                                      strb r1, [r2]
00568880  05 00 a0 e1                                      mov r0, r5
00568884  08 30 83 e2                                      add r3, r3, #8
00568888  00 30 88 e5                                      str r3, [r8]
0056888c  20 90 c8 e5                                      strb sb, [r8, #0x20]
00568890  6f 95 f6 eb                                      bl #0x30de54
00568894  05 10 a0 e1                                      mov r1, r5
00568898  00 20 85 e0                                      add r2, r5, r0
0056889c  0b 00 a0 e1                                      mov r0, fp
005688a0  b8 e0 f6 eb                                      bl #0x320b88
005688a4  00 30 a0 e3                                      mov r3, #0
005688a8  24 30 88 e5                                      str r3, [r8, #0x24]
005688ac  10 80 8d e5                                      str r8, [sp, #0x10]
005688b0  0a 00 9a e9                                      ldmib sl, {r1, r3}
005688b4  03 00 51 e1                                      cmp r1, r3
005688b8  0d 00 00 0a                                      beq #0x5688f4
005688bc  00 80 81 e5                                      str r8, [r1]
005688c0  04 30 9a e5                                      ldr r3, [sl, #4]
005688c4  04 30 83 e2                                      add r3, r3, #4
005688c8  04 30 8a e5                                      str r3, [sl, #4]
005688cc  48 30 96 e5                                      ldr r3, [r6, #0x48]
005688d0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
005688d4  04 30 93 e5                                      ldr r3, [r3, #4]
005688d8  04 30 13 e5                                      ldr r3, [r3, #-4]
005688dc  03 00 a0 e1                                      mov r0, r3
005688e0  00 30 93 e5                                      ldr r3, [r3]
005688e4  0f e0 a0 e1                                      mov lr, pc
005688e8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005688ec  1c d0 8d e2                                      add sp, sp, #0x1c
005688f0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005688f4  0a 00 a0 e1                                      mov r0, sl
005688f8  10 20 8d e2                                      add r2, sp, #0x10
005688fc  14 30 8d e2                                      add r3, sp, #0x14
00568900  04 70 8d e5                                      str r7, [sp, #4]
00568904  00 70 8d e5                                      str r7, [sp]
00568908  d6 ea ff eb                                      bl #0x563468
0056890c  ee ff ff ea                                      b #0x5688cc
; mapping-symbol data/literal pool
00568910  54 c2 42 00 44 2c 00 00 28 45 00 00              .byte 0x54, 0xc2, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x28, 0x45, 0x00, 0x00

; FUNCTION 0x0056891c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8addFloatEPKcfb
; demangled: glitch::io::CAttributes::addFloat(char const*, float, bool)
; decoder-mode: arm
0056891c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00568920  01 60 a0 e1                                      mov r6, r1
00568924  14 d0 4d e2                                      sub sp, sp, #0x14
00568928  48 50 90 e5                                      ldr r5, [r0, #0x48]
0056892c  00 10 a0 e3                                      mov r1, #0
00568930  28 00 a0 e3                                      mov r0, #0x28
00568934  02 80 a0 e1                                      mov r8, r2
00568938  03 b0 a0 e1                                      mov fp, r3
0056893c  1a 2e ff eb                                      bl #0x5341ac
00568940  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
00568944  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00568948  00 90 a0 e1                                      mov sb, r0
0056894c  04 40 8f e0                                      add r4, pc, r4
00568950  03 30 94 e7                                      ldr r3, [r4, r3]
00568954  01 70 a0 e3                                      mov r7, #1
00568958  04 70 80 e5                                      str r7, [r0, #4]
0056895c  08 30 83 e2                                      add r3, r3, #8
00568960  08 30 89 e4                                      str r3, [sb], #8
00568964  00 a0 a0 e1                                      mov sl, r0
00568968  18 90 80 e5                                      str sb, [r0, #0x18]
0056896c  1c 90 80 e5                                      str sb, [r0, #0x1c]
00568970  10 10 a0 e3                                      mov r1, #0x10
00568974  09 00 a0 e1                                      mov r0, sb
00568978  0a e0 f6 eb                                      bl #0x3209a8
0056897c  80 30 9f e5                                      ldr r3, [pc, #0x80]
00568980  18 20 9a e5                                      ldr r2, [sl, #0x18]
00568984  00 10 a0 e3                                      mov r1, #0
00568988  03 30 94 e7                                      ldr r3, [r4, r3]
0056898c  00 10 c2 e5                                      strb r1, [r2]
00568990  06 00 a0 e1                                      mov r0, r6
00568994  08 30 83 e2                                      add r3, r3, #8
00568998  00 30 8a e5                                      str r3, [sl]
0056899c  20 b0 ca e5                                      strb fp, [sl, #0x20]
005689a0  2b 95 f6 eb                                      bl #0x30de54
005689a4  06 10 a0 e1                                      mov r1, r6
005689a8  00 20 86 e0                                      add r2, r6, r0
005689ac  09 00 a0 e1                                      mov r0, sb
005689b0  74 e0 f6 eb                                      bl #0x320b88
005689b4  24 80 8a e5                                      str r8, [sl, #0x24]
005689b8  08 a0 8d e5                                      str sl, [sp, #8]
005689bc  0a 00 95 e9                                      ldmib r5, {r1, r3}
005689c0  03 00 51 e1                                      cmp r1, r3
005689c4  05 00 00 0a                                      beq #0x5689e0
005689c8  00 a0 81 e5                                      str sl, [r1]
005689cc  04 30 95 e5                                      ldr r3, [r5, #4]
005689d0  04 30 83 e2                                      add r3, r3, #4
005689d4  04 30 85 e5                                      str r3, [r5, #4]
005689d8  14 d0 8d e2                                      add sp, sp, #0x14
005689dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
005689e0  05 00 a0 e1                                      mov r0, r5
005689e4  08 20 8d e2                                      add r2, sp, #8
005689e8  0c 30 8d e2                                      add r3, sp, #0xc
005689ec  04 70 8d e5                                      str r7, [sp, #4]
005689f0  00 70 8d e5                                      str r7, [sp]
005689f4  9b ea ff eb                                      bl #0x563468
005689f8  f6 ff ff ea                                      b #0x5689d8
; mapping-symbol data/literal pool
005689fc  44 c1 42 00 44 2c 00 00 28 45 00 00              .byte 0x44, 0xc1, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x28, 0x45, 0x00, 0x00

; FUNCTION 0x00568a08, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes14addStringAsIntEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsInt(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568a08  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00568a0c  1c d0 4d e2                                      sub sp, sp, #0x1c
00568a10  01 50 a0 e1                                      mov r5, r1
00568a14  0c 20 8d e5                                      str r2, [sp, #0xc]
00568a18  00 60 a0 e1                                      mov r6, r0
00568a1c  00 10 a0 e3                                      mov r1, #0
00568a20  28 00 a0 e3                                      mov r0, #0x28
00568a24  48 80 96 e5                                      ldr r8, [r6, #0x48]
00568a28  08 30 8d e5                                      str r3, [sp, #8]
00568a2c  de 2d ff eb                                      bl #0x5341ac
00568a30  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
00568a34  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
00568a38  00 b0 a0 e1                                      mov fp, r0
00568a3c  04 40 8f e0                                      add r4, pc, r4
00568a40  02 20 94 e7                                      ldr r2, [r4, r2]
00568a44  01 90 a0 e3                                      mov sb, #1
00568a48  04 90 80 e5                                      str sb, [r0, #4]
00568a4c  08 20 82 e2                                      add r2, r2, #8
00568a50  08 20 8b e4                                      str r2, [fp], #8
00568a54  00 70 a0 e1                                      mov r7, r0
00568a58  18 b0 80 e5                                      str fp, [r0, #0x18]
00568a5c  1c b0 80 e5                                      str fp, [r0, #0x1c]
00568a60  10 10 a0 e3                                      mov r1, #0x10
00568a64  0b 00 a0 e1                                      mov r0, fp
00568a68  ce df f6 eb                                      bl #0x3209a8
00568a6c  18 10 97 e5                                      ldr r1, [r7, #0x18]
00568a70  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00568a74  00 a0 a0 e3                                      mov sl, #0
00568a78  00 a0 c1 e5                                      strb sl, [r1]
00568a7c  02 20 94 e7                                      ldr r2, [r4, r2]
00568a80  08 30 9d e5                                      ldr r3, [sp, #8]
00568a84  05 00 a0 e1                                      mov r0, r5
00568a88  08 20 82 e2                                      add r2, r2, #8
00568a8c  20 30 c7 e5                                      strb r3, [r7, #0x20]
00568a90  00 20 87 e5                                      str r2, [r7]
00568a94  ee 94 f6 eb                                      bl #0x30de54
00568a98  05 10 a0 e1                                      mov r1, r5
00568a9c  00 20 85 e0                                      add r2, r5, r0
00568aa0  0b 00 a0 e1                                      mov r0, fp
00568aa4  37 e0 f6 eb                                      bl #0x320b88
00568aa8  24 a0 87 e5                                      str sl, [r7, #0x24]
00568aac  10 70 8d e5                                      str r7, [sp, #0x10]
00568ab0  0a 00 98 e9                                      ldmib r8, {r1, r3}
00568ab4  03 00 51 e1                                      cmp r1, r3
00568ab8  0d 00 00 0a                                      beq #0x568af4
00568abc  00 70 81 e5                                      str r7, [r1]
00568ac0  04 30 98 e5                                      ldr r3, [r8, #4]
00568ac4  04 30 83 e2                                      add r3, r3, #4
00568ac8  04 30 88 e5                                      str r3, [r8, #4]
00568acc  48 30 96 e5                                      ldr r3, [r6, #0x48]
00568ad0  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00568ad4  04 30 93 e5                                      ldr r3, [r3, #4]
00568ad8  04 30 13 e5                                      ldr r3, [r3, #-4]
00568adc  03 00 a0 e1                                      mov r0, r3
00568ae0  00 30 93 e5                                      ldr r3, [r3]
00568ae4  0f e0 a0 e1                                      mov lr, pc
00568ae8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00568aec  1c d0 8d e2                                      add sp, sp, #0x1c
00568af0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00568af4  08 00 a0 e1                                      mov r0, r8
00568af8  10 20 8d e2                                      add r2, sp, #0x10
00568afc  14 30 8d e2                                      add r3, sp, #0x14
00568b00  04 90 8d e5                                      str sb, [sp, #4]
00568b04  00 90 8d e5                                      str sb, [sp]
00568b08  56 ea ff eb                                      bl #0x563468
00568b0c  ee ff ff ea                                      b #0x568acc
; mapping-symbol data/literal pool
00568b10  54 c0 42 00 44 2c 00 00 7c 29 00 00              .byte 0x54, 0xc0, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x7c, 0x29, 0x00, 0x00

; FUNCTION 0x00568b1c, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes6addIntEPKcib
; demangled: glitch::io::CAttributes::addInt(char const*, int, bool)
; decoder-mode: arm
00568b1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00568b20  01 60 a0 e1                                      mov r6, r1
00568b24  14 d0 4d e2                                      sub sp, sp, #0x14
00568b28  48 50 90 e5                                      ldr r5, [r0, #0x48]
00568b2c  00 10 a0 e3                                      mov r1, #0
00568b30  28 00 a0 e3                                      mov r0, #0x28
00568b34  02 80 a0 e1                                      mov r8, r2
00568b38  03 b0 a0 e1                                      mov fp, r3
00568b3c  9a 2d ff eb                                      bl #0x5341ac
00568b40  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
00568b44  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00568b48  00 90 a0 e1                                      mov sb, r0
00568b4c  04 40 8f e0                                      add r4, pc, r4
00568b50  03 30 94 e7                                      ldr r3, [r4, r3]
00568b54  01 70 a0 e3                                      mov r7, #1
00568b58  04 70 80 e5                                      str r7, [r0, #4]
00568b5c  08 30 83 e2                                      add r3, r3, #8
00568b60  08 30 89 e4                                      str r3, [sb], #8
00568b64  00 a0 a0 e1                                      mov sl, r0
00568b68  18 90 80 e5                                      str sb, [r0, #0x18]
00568b6c  1c 90 80 e5                                      str sb, [r0, #0x1c]
00568b70  10 10 a0 e3                                      mov r1, #0x10
00568b74  09 00 a0 e1                                      mov r0, sb
00568b78  8a df f6 eb                                      bl #0x3209a8
00568b7c  80 30 9f e5                                      ldr r3, [pc, #0x80]
00568b80  18 20 9a e5                                      ldr r2, [sl, #0x18]
00568b84  00 10 a0 e3                                      mov r1, #0
00568b88  03 30 94 e7                                      ldr r3, [r4, r3]
00568b8c  00 10 c2 e5                                      strb r1, [r2]
00568b90  06 00 a0 e1                                      mov r0, r6
00568b94  08 30 83 e2                                      add r3, r3, #8
00568b98  00 30 8a e5                                      str r3, [sl]
00568b9c  20 b0 ca e5                                      strb fp, [sl, #0x20]
00568ba0  ab 94 f6 eb                                      bl #0x30de54
00568ba4  06 10 a0 e1                                      mov r1, r6
00568ba8  00 20 86 e0                                      add r2, r6, r0
00568bac  09 00 a0 e1                                      mov r0, sb
00568bb0  f4 df f6 eb                                      bl #0x320b88
00568bb4  24 80 8a e5                                      str r8, [sl, #0x24]
00568bb8  08 a0 8d e5                                      str sl, [sp, #8]
00568bbc  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568bc0  03 00 51 e1                                      cmp r1, r3
00568bc4  05 00 00 0a                                      beq #0x568be0
00568bc8  00 a0 81 e5                                      str sl, [r1]
00568bcc  04 30 95 e5                                      ldr r3, [r5, #4]
00568bd0  04 30 83 e2                                      add r3, r3, #4
00568bd4  04 30 85 e5                                      str r3, [r5, #4]
00568bd8  14 d0 8d e2                                      add sp, sp, #0x14
00568bdc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00568be0  05 00 a0 e1                                      mov r0, r5
00568be4  08 20 8d e2                                      add r2, sp, #8
00568be8  0c 30 8d e2                                      add r3, sp, #0xc
00568bec  04 70 8d e5                                      str r7, [sp, #4]
00568bf0  00 70 8d e5                                      str r7, [sp]
00568bf4  1b ea ff eb                                      bl #0x563468
00568bf8  f6 ff ff ea                                      b #0x568bd8
; mapping-symbol data/literal pool
00568bfc  44 bf 42 00 44 2c 00 00 7c 29 00 00              .byte 0x44, 0xbf, 0x42, 0x00, 0x44, 0x2c, 0x00, 0x00, 0x7c, 0x29, 0x00, 0x00

; FUNCTION 0x00568c08, declared_size=216, range_size=216, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes15addStringAsRectEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsRect(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568c08  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00568c0c  00 70 a0 e1                                      mov r7, r0
00568c10  20 d0 4d e2                                      sub sp, sp, #0x20
00568c14  01 80 a0 e1                                      mov r8, r1
00568c18  44 00 a0 e3                                      mov r0, #0x44
00568c1c  00 10 a0 e3                                      mov r1, #0
00568c20  48 50 97 e5                                      ldr r5, [r7, #0x48]
00568c24  03 a0 a0 e1                                      mov sl, r3
00568c28  02 90 a0 e1                                      mov sb, r2
00568c2c  5e 2d ff eb                                      bl #0x5341ac
00568c30  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
00568c34  00 c0 a0 e3                                      mov ip, #0
00568c38  08 10 a0 e1                                      mov r1, r8
00568c3c  0a 30 a0 e1                                      mov r3, sl
00568c40  08 20 8d e2                                      add r2, sp, #8
00568c44  00 60 a0 e1                                      mov r6, r0
00568c48  14 c0 8d e5                                      str ip, [sp, #0x14]
00568c4c  08 c0 8d e5                                      str ip, [sp, #8]
00568c50  0c c0 8d e5                                      str ip, [sp, #0xc]
00568c54  10 c0 8d e5                                      str ip, [sp, #0x10]
00568c58  b8 f9 ff eb                                      bl #0x567340
00568c5c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00568c60  04 40 8f e0                                      add r4, pc, r4
00568c64  03 30 94 e7                                      ldr r3, [r4, r3]
00568c68  08 30 83 e2                                      add r3, r3, #8
00568c6c  00 30 86 e5                                      str r3, [r6]
00568c70  18 60 8d e5                                      str r6, [sp, #0x18]
00568c74  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568c78  03 00 51 e1                                      cmp r1, r3
00568c7c  0d 00 00 0a                                      beq #0x568cb8
00568c80  00 60 81 e5                                      str r6, [r1]
00568c84  04 30 95 e5                                      ldr r3, [r5, #4]
00568c88  04 30 83 e2                                      add r3, r3, #4
00568c8c  04 30 85 e5                                      str r3, [r5, #4]
00568c90  48 30 97 e5                                      ldr r3, [r7, #0x48]
00568c94  09 10 a0 e1                                      mov r1, sb
00568c98  04 30 93 e5                                      ldr r3, [r3, #4]
00568c9c  04 30 13 e5                                      ldr r3, [r3, #-4]
00568ca0  03 00 a0 e1                                      mov r0, r3
00568ca4  00 30 93 e5                                      ldr r3, [r3]
00568ca8  0f e0 a0 e1                                      mov lr, pc
00568cac  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00568cb0  20 d0 8d e2                                      add sp, sp, #0x20
00568cb4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00568cb8  01 c0 a0 e3                                      mov ip, #1
00568cbc  05 00 a0 e1                                      mov r0, r5
00568cc0  18 20 8d e2                                      add r2, sp, #0x18
00568cc4  1c 30 8d e2                                      add r3, sp, #0x1c
00568cc8  04 c0 8d e5                                      str ip, [sp, #4]
00568ccc  00 c0 8d e5                                      str ip, [sp]
00568cd0  e4 e9 ff eb                                      bl #0x563468
00568cd4  ed ff ff ea                                      b #0x568c90
; mapping-symbol data/literal pool
00568cd8  30 be 42 00 a0 15 00 00                          .byte 0x30, 0xbe, 0x42, 0x00, 0xa0, 0x15, 0x00, 0x00

; FUNCTION 0x00568ce0, declared_size=180, range_size=180, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes7addRectEPKcNS_4core4rectIiEEb
; demangled: glitch::io::CAttributes::addRect(char const*, glitch::core::rect<int>, bool)
; decoder-mode: arm
00568ce0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00568ce4  01 40 a0 e1                                      mov r4, r1
00568ce8  24 d0 4d e2                                      sub sp, sp, #0x24
00568cec  48 50 90 e5                                      ldr r5, [r0, #0x48]
00568cf0  00 10 a0 e3                                      mov r1, #0
00568cf4  44 00 a0 e3                                      mov r0, #0x44
00568cf8  0c 90 92 e5                                      ldr sb, [r2, #0xc]
00568cfc  80 05 92 e8                                      ldm r2, {r7, r8, sl}
00568d00  03 b0 a0 e1                                      mov fp, r3
00568d04  28 2d ff eb                                      bl #0x5341ac
00568d08  04 10 a0 e1                                      mov r1, r4
00568d0c  0b 30 a0 e1                                      mov r3, fp
00568d10  74 40 9f e5                                      ldr r4, [pc, #0x74]
00568d14  08 20 8d e2                                      add r2, sp, #8
00568d18  00 60 a0 e1                                      mov r6, r0
00568d1c  08 70 8d e5                                      str r7, [sp, #8]
00568d20  0c 80 8d e5                                      str r8, [sp, #0xc]
00568d24  10 a0 8d e5                                      str sl, [sp, #0x10]
00568d28  14 90 8d e5                                      str sb, [sp, #0x14]
00568d2c  83 f9 ff eb                                      bl #0x567340
00568d30  58 30 9f e5                                      ldr r3, [pc, #0x58]
00568d34  04 40 8f e0                                      add r4, pc, r4
00568d38  03 30 94 e7                                      ldr r3, [r4, r3]
00568d3c  08 30 83 e2                                      add r3, r3, #8
00568d40  00 30 86 e5                                      str r3, [r6]
00568d44  18 60 8d e5                                      str r6, [sp, #0x18]
00568d48  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568d4c  03 00 51 e1                                      cmp r1, r3
00568d50  05 00 00 0a                                      beq #0x568d6c
00568d54  00 60 81 e5                                      str r6, [r1]
00568d58  04 30 95 e5                                      ldr r3, [r5, #4]
00568d5c  04 30 83 e2                                      add r3, r3, #4
00568d60  04 30 85 e5                                      str r3, [r5, #4]
00568d64  24 d0 8d e2                                      add sp, sp, #0x24
00568d68  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00568d6c  01 c0 a0 e3                                      mov ip, #1
00568d70  05 00 a0 e1                                      mov r0, r5
00568d74  18 20 8d e2                                      add r2, sp, #0x18
00568d78  1c 30 8d e2                                      add r3, sp, #0x1c
00568d7c  04 c0 8d e5                                      str ip, [sp, #4]
00568d80  00 c0 8d e5                                      str ip, [sp]
00568d84  b7 e9 ff eb                                      bl #0x563468
00568d88  f5 ff ff ea                                      b #0x568d64
; mapping-symbol data/literal pool
00568d8c  5c bd 42 00 a0 15 00 00                          .byte 0x5c, 0xbd, 0x42, 0x00, 0xa0, 0x15, 0x00, 0x00

; FUNCTION 0x00568d94, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes21addStringAsPosition2dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsPosition2d(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568d94  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00568d98  00 70 a0 e1                                      mov r7, r0
00568d9c  18 d0 4d e2                                      sub sp, sp, #0x18
00568da0  01 80 a0 e1                                      mov r8, r1
00568da4  44 00 a0 e3                                      mov r0, #0x44
00568da8  00 10 a0 e3                                      mov r1, #0
00568dac  48 50 97 e5                                      ldr r5, [r7, #0x48]
00568db0  03 a0 a0 e1                                      mov sl, r3
00568db4  02 90 a0 e1                                      mov sb, r2
00568db8  fb 2c ff eb                                      bl #0x5341ac
00568dbc  98 40 9f e5                                      ldr r4, [pc, #0x98]
00568dc0  00 c0 a0 e3                                      mov ip, #0
00568dc4  08 10 a0 e1                                      mov r1, r8
00568dc8  0a 30 a0 e1                                      mov r3, sl
00568dcc  08 20 8d e2                                      add r2, sp, #8
00568dd0  00 60 a0 e1                                      mov r6, r0
00568dd4  0c c0 8d e5                                      str ip, [sp, #0xc]
00568dd8  08 c0 8d e5                                      str ip, [sp, #8]
00568ddc  c2 f9 ff eb                                      bl #0x5674ec
00568de0  78 30 9f e5                                      ldr r3, [pc, #0x78]
00568de4  04 40 8f e0                                      add r4, pc, r4
00568de8  03 30 94 e7                                      ldr r3, [r4, r3]
00568dec  08 30 83 e2                                      add r3, r3, #8
00568df0  00 30 86 e5                                      str r3, [r6]
00568df4  10 60 8d e5                                      str r6, [sp, #0x10]
00568df8  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568dfc  03 00 51 e1                                      cmp r1, r3
00568e00  0d 00 00 0a                                      beq #0x568e3c
00568e04  00 60 81 e5                                      str r6, [r1]
00568e08  04 30 95 e5                                      ldr r3, [r5, #4]
00568e0c  04 30 83 e2                                      add r3, r3, #4
00568e10  04 30 85 e5                                      str r3, [r5, #4]
00568e14  48 30 97 e5                                      ldr r3, [r7, #0x48]
00568e18  09 10 a0 e1                                      mov r1, sb
00568e1c  04 30 93 e5                                      ldr r3, [r3, #4]
00568e20  04 30 13 e5                                      ldr r3, [r3, #-4]
00568e24  03 00 a0 e1                                      mov r0, r3
00568e28  00 30 93 e5                                      ldr r3, [r3]
00568e2c  0f e0 a0 e1                                      mov lr, pc
00568e30  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00568e34  18 d0 8d e2                                      add sp, sp, #0x18
00568e38  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00568e3c  01 c0 a0 e3                                      mov ip, #1
00568e40  05 00 a0 e1                                      mov r0, r5
00568e44  10 20 8d e2                                      add r2, sp, #0x10
00568e48  14 30 8d e2                                      add r3, sp, #0x14
00568e4c  04 c0 8d e5                                      str ip, [sp, #4]
00568e50  00 c0 8d e5                                      str ip, [sp]
00568e54  83 e9 ff eb                                      bl #0x563468
00568e58  ed ff ff ea                                      b #0x568e14
; mapping-symbol data/literal pool
00568e5c  ac bc 42 00 08 17 00 00                          .byte 0xac, 0xbc, 0x42, 0x00, 0x08, 0x17, 0x00, 0x00

; FUNCTION 0x00568e64, declared_size=168, range_size=168, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13addPosition2dEPKcNS_4core10position2dIiEEb
; demangled: glitch::io::CAttributes::addPosition2d(char const*, glitch::core::position2d<int>, bool)
; decoder-mode: arm
00568e64  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00568e68  01 40 a0 e1                                      mov r4, r1
00568e6c  1c d0 4d e2                                      sub sp, sp, #0x1c
00568e70  48 50 90 e5                                      ldr r5, [r0, #0x48]
00568e74  00 10 a0 e3                                      mov r1, #0
00568e78  44 00 a0 e3                                      mov r0, #0x44
00568e7c  80 01 92 e8                                      ldm r2, {r7, r8}
00568e80  03 a0 a0 e1                                      mov sl, r3
00568e84  c8 2c ff eb                                      bl #0x5341ac
00568e88  04 10 a0 e1                                      mov r1, r4
00568e8c  0a 30 a0 e1                                      mov r3, sl
00568e90  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
00568e94  08 20 8d e2                                      add r2, sp, #8
00568e98  00 60 a0 e1                                      mov r6, r0
00568e9c  08 70 8d e5                                      str r7, [sp, #8]
00568ea0  0c 80 8d e5                                      str r8, [sp, #0xc]
00568ea4  90 f9 ff eb                                      bl #0x5674ec
00568ea8  58 30 9f e5                                      ldr r3, [pc, #0x58]
00568eac  04 40 8f e0                                      add r4, pc, r4
00568eb0  03 30 94 e7                                      ldr r3, [r4, r3]
00568eb4  08 30 83 e2                                      add r3, r3, #8
00568eb8  00 30 86 e5                                      str r3, [r6]
00568ebc  10 60 8d e5                                      str r6, [sp, #0x10]
00568ec0  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568ec4  03 00 51 e1                                      cmp r1, r3
00568ec8  05 00 00 0a                                      beq #0x568ee4
00568ecc  00 60 81 e5                                      str r6, [r1]
00568ed0  04 30 95 e5                                      ldr r3, [r5, #4]
00568ed4  04 30 83 e2                                      add r3, r3, #4
00568ed8  04 30 85 e5                                      str r3, [r5, #4]
00568edc  1c d0 8d e2                                      add sp, sp, #0x1c
00568ee0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00568ee4  01 c0 a0 e3                                      mov ip, #1
00568ee8  05 00 a0 e1                                      mov r0, r5
00568eec  10 20 8d e2                                      add r2, sp, #0x10
00568ef0  14 30 8d e2                                      add r3, sp, #0x14
00568ef4  04 c0 8d e5                                      str ip, [sp, #4]
00568ef8  00 c0 8d e5                                      str ip, [sp]
00568efc  59 e9 ff eb                                      bl #0x563468
00568f00  f5 ff ff ea                                      b #0x568edc
; mapping-symbol data/literal pool
00568f04  e4 bb 42 00 08 17 00 00                          .byte 0xe4, 0xbb, 0x42, 0x00, 0x08, 0x17, 0x00, 0x00

; FUNCTION 0x00568f0c, declared_size=216, range_size=216, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes20addStringAsVector4diEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsVector4di(char const*, wchar_t const*, bool)
; decoder-mode: arm
00568f0c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00568f10  00 c0 a0 e3                                      mov ip, #0
00568f14  20 d0 4d e2                                      sub sp, sp, #0x20
00568f18  08 c0 8d e5                                      str ip, [sp, #8]
00568f1c  0c c0 8d e5                                      str ip, [sp, #0xc]
00568f20  10 c0 8d e5                                      str ip, [sp, #0x10]
00568f24  14 c0 8d e5                                      str ip, [sp, #0x14]
00568f28  00 70 a0 e1                                      mov r7, r0
00568f2c  01 80 a0 e1                                      mov r8, r1
00568f30  44 00 a0 e3                                      mov r0, #0x44
00568f34  0c 10 a0 e1                                      mov r1, ip
00568f38  48 50 97 e5                                      ldr r5, [r7, #0x48]
00568f3c  03 a0 a0 e1                                      mov sl, r3
00568f40  02 90 a0 e1                                      mov sb, r2
00568f44  98 2c ff eb                                      bl #0x5341ac
00568f48  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00568f4c  08 10 a0 e1                                      mov r1, r8
00568f50  0a 30 a0 e1                                      mov r3, sl
00568f54  08 20 8d e2                                      add r2, sp, #8
00568f58  00 60 a0 e1                                      mov r6, r0
00568f5c  af f9 ff eb                                      bl #0x567620
00568f60  78 30 9f e5                                      ldr r3, [pc, #0x78]
00568f64  04 40 8f e0                                      add r4, pc, r4
00568f68  03 30 94 e7                                      ldr r3, [r4, r3]
00568f6c  08 30 83 e2                                      add r3, r3, #8
00568f70  00 30 86 e5                                      str r3, [r6]
00568f74  18 60 8d e5                                      str r6, [sp, #0x18]
00568f78  0a 00 95 e9                                      ldmib r5, {r1, r3}
00568f7c  03 00 51 e1                                      cmp r1, r3
00568f80  0d 00 00 0a                                      beq #0x568fbc
00568f84  00 60 81 e5                                      str r6, [r1]
00568f88  04 30 95 e5                                      ldr r3, [r5, #4]
00568f8c  04 30 83 e2                                      add r3, r3, #4
00568f90  04 30 85 e5                                      str r3, [r5, #4]
00568f94  48 30 97 e5                                      ldr r3, [r7, #0x48]
00568f98  09 10 a0 e1                                      mov r1, sb
00568f9c  04 30 93 e5                                      ldr r3, [r3, #4]
00568fa0  04 30 13 e5                                      ldr r3, [r3, #-4]
00568fa4  03 00 a0 e1                                      mov r0, r3
00568fa8  00 30 93 e5                                      ldr r3, [r3]
00568fac  0f e0 a0 e1                                      mov lr, pc
00568fb0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00568fb4  20 d0 8d e2                                      add sp, sp, #0x20
00568fb8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00568fbc  01 c0 a0 e3                                      mov ip, #1
00568fc0  05 00 a0 e1                                      mov r0, r5
00568fc4  18 20 8d e2                                      add r2, sp, #0x18
00568fc8  1c 30 8d e2                                      add r3, sp, #0x1c
00568fcc  04 c0 8d e5                                      str ip, [sp, #4]
00568fd0  00 c0 8d e5                                      str ip, [sp]
00568fd4  23 e9 ff eb                                      bl #0x563468
00568fd8  ed ff ff ea                                      b #0x568f94
; mapping-symbol data/literal pool
00568fdc  2c bb 42 00 c0 2b 00 00                          .byte 0x2c, 0xbb, 0x42, 0x00, 0xc0, 0x2b, 0x00, 0x00

; FUNCTION 0x00568fe4, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12addVector4diEPKcRKNS_4core8vector4dIiEEb
; demangled: glitch::io::CAttributes::addVector4di(char const*, glitch::core::vector4d<int> const&, bool)
; decoder-mode: arm
00568fe4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00568fe8  01 40 a0 e1                                      mov r4, r1
00568fec  48 50 90 e5                                      ldr r5, [r0, #0x48]
00568ff0  10 d0 4d e2                                      sub sp, sp, #0x10
00568ff4  00 10 a0 e3                                      mov r1, #0
00568ff8  44 00 a0 e3                                      mov r0, #0x44
00568ffc  02 80 a0 e1                                      mov r8, r2
00569000  03 70 a0 e1                                      mov r7, r3
00569004  68 2c ff eb                                      bl #0x5341ac
00569008  04 10 a0 e1                                      mov r1, r4
0056900c  07 30 a0 e1                                      mov r3, r7
00569010  08 20 a0 e1                                      mov r2, r8
00569014  60 40 9f e5                                      ldr r4, [pc, #0x60]
00569018  00 60 a0 e1                                      mov r6, r0
0056901c  7f f9 ff eb                                      bl #0x567620
00569020  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569024  04 40 8f e0                                      add r4, pc, r4
00569028  03 30 94 e7                                      ldr r3, [r4, r3]
0056902c  08 30 83 e2                                      add r3, r3, #8
00569030  00 30 86 e5                                      str r3, [r6]
00569034  08 60 8d e5                                      str r6, [sp, #8]
00569038  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056903c  03 00 51 e1                                      cmp r1, r3
00569040  05 00 00 0a                                      beq #0x56905c
00569044  00 60 81 e5                                      str r6, [r1]
00569048  04 30 95 e5                                      ldr r3, [r5, #4]
0056904c  04 30 83 e2                                      add r3, r3, #4
00569050  04 30 85 e5                                      str r3, [r5, #4]
00569054  10 d0 8d e2                                      add sp, sp, #0x10
00569058  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056905c  01 c0 a0 e3                                      mov ip, #1
00569060  05 00 a0 e1                                      mov r0, r5
00569064  08 20 8d e2                                      add r2, sp, #8
00569068  0c 30 8d e2                                      add r3, sp, #0xc
0056906c  04 c0 8d e5                                      str ip, [sp, #4]
00569070  00 c0 8d e5                                      str ip, [sp]
00569074  fb e8 ff eb                                      bl #0x563468
00569078  f5 ff ff ea                                      b #0x569054
; mapping-symbol data/literal pool
0056907c  6c ba 42 00 c0 2b 00 00                          .byte 0x6c, 0xba, 0x42, 0x00, 0xc0, 0x2b, 0x00, 0x00

; FUNCTION 0x00569084, declared_size=212, range_size=212, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes20addStringAsVector3diEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsVector3di(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569084  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00569088  00 c0 a0 e3                                      mov ip, #0
0056908c  20 d0 4d e2                                      sub sp, sp, #0x20
00569090  0c c0 8d e5                                      str ip, [sp, #0xc]
00569094  10 c0 8d e5                                      str ip, [sp, #0x10]
00569098  14 c0 8d e5                                      str ip, [sp, #0x14]
0056909c  00 70 a0 e1                                      mov r7, r0
005690a0  01 80 a0 e1                                      mov r8, r1
005690a4  44 00 a0 e3                                      mov r0, #0x44
005690a8  0c 10 a0 e1                                      mov r1, ip
005690ac  48 50 97 e5                                      ldr r5, [r7, #0x48]
005690b0  03 a0 a0 e1                                      mov sl, r3
005690b4  02 90 a0 e1                                      mov sb, r2
005690b8  3b 2c ff eb                                      bl #0x5341ac
005690bc  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
005690c0  08 10 a0 e1                                      mov r1, r8
005690c4  0a 30 a0 e1                                      mov r3, sl
005690c8  0c 20 8d e2                                      add r2, sp, #0xc
005690cc  00 60 a0 e1                                      mov r6, r0
005690d0  c8 f9 ff eb                                      bl #0x5677f8
005690d4  78 30 9f e5                                      ldr r3, [pc, #0x78]
005690d8  04 40 8f e0                                      add r4, pc, r4
005690dc  03 30 94 e7                                      ldr r3, [r4, r3]
005690e0  08 30 83 e2                                      add r3, r3, #8
005690e4  00 30 86 e5                                      str r3, [r6]
005690e8  18 60 8d e5                                      str r6, [sp, #0x18]
005690ec  0a 00 95 e9                                      ldmib r5, {r1, r3}
005690f0  03 00 51 e1                                      cmp r1, r3
005690f4  0d 00 00 0a                                      beq #0x569130
005690f8  00 60 81 e5                                      str r6, [r1]
005690fc  04 30 95 e5                                      ldr r3, [r5, #4]
00569100  04 30 83 e2                                      add r3, r3, #4
00569104  04 30 85 e5                                      str r3, [r5, #4]
00569108  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056910c  09 10 a0 e1                                      mov r1, sb
00569110  04 30 93 e5                                      ldr r3, [r3, #4]
00569114  04 30 13 e5                                      ldr r3, [r3, #-4]
00569118  03 00 a0 e1                                      mov r0, r3
0056911c  00 30 93 e5                                      ldr r3, [r3]
00569120  0f e0 a0 e1                                      mov lr, pc
00569124  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00569128  20 d0 8d e2                                      add sp, sp, #0x20
0056912c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00569130  01 c0 a0 e3                                      mov ip, #1
00569134  05 00 a0 e1                                      mov r0, r5
00569138  18 20 8d e2                                      add r2, sp, #0x18
0056913c  1c 30 8d e2                                      add r3, sp, #0x1c
00569140  04 c0 8d e5                                      str ip, [sp, #4]
00569144  00 c0 8d e5                                      str ip, [sp]
00569148  c6 e8 ff eb                                      bl #0x563468
0056914c  ed ff ff ea                                      b #0x569108
; mapping-symbol data/literal pool
00569150  b8 b9 42 00 9c 08 00 00                          .byte 0xb8, 0xb9, 0x42, 0x00, 0x9c, 0x08, 0x00, 0x00

; FUNCTION 0x00569158, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12addVector3diEPKcRKNS_4core8vector3dIiEEb
; demangled: glitch::io::CAttributes::addVector3di(char const*, glitch::core::vector3d<int> const&, bool)
; decoder-mode: arm
00569158  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056915c  01 40 a0 e1                                      mov r4, r1
00569160  48 50 90 e5                                      ldr r5, [r0, #0x48]
00569164  10 d0 4d e2                                      sub sp, sp, #0x10
00569168  00 10 a0 e3                                      mov r1, #0
0056916c  44 00 a0 e3                                      mov r0, #0x44
00569170  02 80 a0 e1                                      mov r8, r2
00569174  03 70 a0 e1                                      mov r7, r3
00569178  0b 2c ff eb                                      bl #0x5341ac
0056917c  04 10 a0 e1                                      mov r1, r4
00569180  07 30 a0 e1                                      mov r3, r7
00569184  08 20 a0 e1                                      mov r2, r8
00569188  60 40 9f e5                                      ldr r4, [pc, #0x60]
0056918c  00 60 a0 e1                                      mov r6, r0
00569190  98 f9 ff eb                                      bl #0x5677f8
00569194  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569198  04 40 8f e0                                      add r4, pc, r4
0056919c  03 30 94 e7                                      ldr r3, [r4, r3]
005691a0  08 30 83 e2                                      add r3, r3, #8
005691a4  00 30 86 e5                                      str r3, [r6]
005691a8  08 60 8d e5                                      str r6, [sp, #8]
005691ac  0a 00 95 e9                                      ldmib r5, {r1, r3}
005691b0  03 00 51 e1                                      cmp r1, r3
005691b4  05 00 00 0a                                      beq #0x5691d0
005691b8  00 60 81 e5                                      str r6, [r1]
005691bc  04 30 95 e5                                      ldr r3, [r5, #4]
005691c0  04 30 83 e2                                      add r3, r3, #4
005691c4  04 30 85 e5                                      str r3, [r5, #4]
005691c8  10 d0 8d e2                                      add sp, sp, #0x10
005691cc  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
005691d0  01 c0 a0 e3                                      mov ip, #1
005691d4  05 00 a0 e1                                      mov r0, r5
005691d8  08 20 8d e2                                      add r2, sp, #8
005691dc  0c 30 8d e2                                      add r3, sp, #0xc
005691e0  04 c0 8d e5                                      str ip, [sp, #4]
005691e4  00 c0 8d e5                                      str ip, [sp]
005691e8  9e e8 ff eb                                      bl #0x563468
005691ec  f5 ff ff ea                                      b #0x5691c8
; mapping-symbol data/literal pool
005691f0  f8 b8 42 00 9c 08 00 00                          .byte 0xf8, 0xb8, 0x42, 0x00, 0x9c, 0x08, 0x00, 0x00

; FUNCTION 0x005691f8, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes20addStringAsVector2diEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsVector2di(char const*, wchar_t const*, bool)
; decoder-mode: arm
005691f8  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005691fc  00 c0 a0 e3                                      mov ip, #0
00569200  18 d0 4d e2                                      sub sp, sp, #0x18
00569204  08 c0 8d e5                                      str ip, [sp, #8]
00569208  0c c0 8d e5                                      str ip, [sp, #0xc]
0056920c  00 70 a0 e1                                      mov r7, r0
00569210  01 80 a0 e1                                      mov r8, r1
00569214  44 00 a0 e3                                      mov r0, #0x44
00569218  0c 10 a0 e1                                      mov r1, ip
0056921c  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569220  03 a0 a0 e1                                      mov sl, r3
00569224  02 90 a0 e1                                      mov sb, r2
00569228  df 2b ff eb                                      bl #0x5341ac
0056922c  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00569230  08 10 a0 e1                                      mov r1, r8
00569234  0a 30 a0 e1                                      mov r3, sl
00569238  08 20 8d e2                                      add r2, sp, #8
0056923c  00 60 a0 e1                                      mov r6, r0
00569240  c8 f9 ff eb                                      bl #0x567968
00569244  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569248  04 40 8f e0                                      add r4, pc, r4
0056924c  03 30 94 e7                                      ldr r3, [r4, r3]
00569250  08 30 83 e2                                      add r3, r3, #8
00569254  00 30 86 e5                                      str r3, [r6]
00569258  10 60 8d e5                                      str r6, [sp, #0x10]
0056925c  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569260  03 00 51 e1                                      cmp r1, r3
00569264  0d 00 00 0a                                      beq #0x5692a0
00569268  00 60 81 e5                                      str r6, [r1]
0056926c  04 30 95 e5                                      ldr r3, [r5, #4]
00569270  04 30 83 e2                                      add r3, r3, #4
00569274  04 30 85 e5                                      str r3, [r5, #4]
00569278  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056927c  09 10 a0 e1                                      mov r1, sb
00569280  04 30 93 e5                                      ldr r3, [r3, #4]
00569284  04 30 13 e5                                      ldr r3, [r3, #-4]
00569288  03 00 a0 e1                                      mov r0, r3
0056928c  00 30 93 e5                                      ldr r3, [r3]
00569290  0f e0 a0 e1                                      mov lr, pc
00569294  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00569298  18 d0 8d e2                                      add sp, sp, #0x18
0056929c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
005692a0  01 c0 a0 e3                                      mov ip, #1
005692a4  05 00 a0 e1                                      mov r0, r5
005692a8  10 20 8d e2                                      add r2, sp, #0x10
005692ac  14 30 8d e2                                      add r3, sp, #0x14
005692b0  04 c0 8d e5                                      str ip, [sp, #4]
005692b4  00 c0 8d e5                                      str ip, [sp]
005692b8  6a e8 ff eb                                      bl #0x563468
005692bc  ed ff ff ea                                      b #0x569278
; mapping-symbol data/literal pool
005692c0  48 b8 42 00 3c 27 00 00                          .byte 0x48, 0xb8, 0x42, 0x00, 0x3c, 0x27, 0x00, 0x00

; FUNCTION 0x005692c8, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12addVector2diEPKcRKNS_4core8vector2dIiEEb
; demangled: glitch::io::CAttributes::addVector2di(char const*, glitch::core::vector2d<int> const&, bool)
; decoder-mode: arm
005692c8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
005692cc  01 40 a0 e1                                      mov r4, r1
005692d0  48 50 90 e5                                      ldr r5, [r0, #0x48]
005692d4  10 d0 4d e2                                      sub sp, sp, #0x10
005692d8  00 10 a0 e3                                      mov r1, #0
005692dc  44 00 a0 e3                                      mov r0, #0x44
005692e0  02 80 a0 e1                                      mov r8, r2
005692e4  03 70 a0 e1                                      mov r7, r3
005692e8  af 2b ff eb                                      bl #0x5341ac
005692ec  04 10 a0 e1                                      mov r1, r4
005692f0  07 30 a0 e1                                      mov r3, r7
005692f4  08 20 a0 e1                                      mov r2, r8
005692f8  60 40 9f e5                                      ldr r4, [pc, #0x60]
005692fc  00 60 a0 e1                                      mov r6, r0
00569300  98 f9 ff eb                                      bl #0x567968
00569304  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569308  04 40 8f e0                                      add r4, pc, r4
0056930c  03 30 94 e7                                      ldr r3, [r4, r3]
00569310  08 30 83 e2                                      add r3, r3, #8
00569314  00 30 86 e5                                      str r3, [r6]
00569318  08 60 8d e5                                      str r6, [sp, #8]
0056931c  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569320  03 00 51 e1                                      cmp r1, r3
00569324  05 00 00 0a                                      beq #0x569340
00569328  00 60 81 e5                                      str r6, [r1]
0056932c  04 30 95 e5                                      ldr r3, [r5, #4]
00569330  04 30 83 e2                                      add r3, r3, #4
00569334  04 30 85 e5                                      str r3, [r5, #4]
00569338  10 d0 8d e2                                      add sp, sp, #0x10
0056933c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00569340  01 c0 a0 e3                                      mov ip, #1
00569344  05 00 a0 e1                                      mov r0, r5
00569348  08 20 8d e2                                      add r2, sp, #8
0056934c  0c 30 8d e2                                      add r3, sp, #0xc
00569350  04 c0 8d e5                                      str ip, [sp, #4]
00569354  00 c0 8d e5                                      str ip, [sp]
00569358  42 e8 ff eb                                      bl #0x563468
0056935c  f5 ff ff ea                                      b #0x569338
; mapping-symbol data/literal pool
00569360  88 b7 42 00 3c 27 00 00                          .byte 0x88, 0xb7, 0x42, 0x00, 0x3c, 0x27, 0x00, 0x00

; FUNCTION 0x00569368, declared_size=228, range_size=228, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes17addStringAsLine3dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsLine3d(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569368  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056936c  01 40 a0 e1                                      mov r4, r1
00569370  2c d0 4d e2                                      sub sp, sp, #0x2c
00569374  00 70 a0 e1                                      mov r7, r0
00569378  00 10 a0 e3                                      mov r1, #0
0056937c  44 00 a0 e3                                      mov r0, #0x44
00569380  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569384  02 80 a0 e1                                      mov r8, r2
00569388  03 a0 a0 e1                                      mov sl, r3
0056938c  86 2b ff eb                                      bl #0x5341ac
00569390  00 e0 a0 e3                                      mov lr, #0
00569394  fe c5 a0 e3                                      mov ip, #0x3f800000
00569398  04 10 a0 e1                                      mov r1, r4
0056939c  0a 30 a0 e1                                      mov r3, sl
005693a0  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
005693a4  08 20 8d e2                                      add r2, sp, #8
005693a8  00 60 a0 e1                                      mov r6, r0
005693ac  10 e0 8d e5                                      str lr, [sp, #0x10]
005693b0  1c c0 8d e5                                      str ip, [sp, #0x1c]
005693b4  08 e0 8d e5                                      str lr, [sp, #8]
005693b8  0c e0 8d e5                                      str lr, [sp, #0xc]
005693bc  14 c0 8d e5                                      str ip, [sp, #0x14]
005693c0  18 c0 8d e5                                      str ip, [sp, #0x18]
005693c4  dc f9 ff eb                                      bl #0x567b3c
005693c8  78 30 9f e5                                      ldr r3, [pc, #0x78]
005693cc  04 40 8f e0                                      add r4, pc, r4
005693d0  03 30 94 e7                                      ldr r3, [r4, r3]
005693d4  08 30 83 e2                                      add r3, r3, #8
005693d8  00 30 86 e5                                      str r3, [r6]
005693dc  20 60 8d e5                                      str r6, [sp, #0x20]
005693e0  0a 00 95 e9                                      ldmib r5, {r1, r3}
005693e4  03 00 51 e1                                      cmp r1, r3
005693e8  0d 00 00 0a                                      beq #0x569424
005693ec  00 60 81 e5                                      str r6, [r1]
005693f0  04 30 95 e5                                      ldr r3, [r5, #4]
005693f4  04 30 83 e2                                      add r3, r3, #4
005693f8  04 30 85 e5                                      str r3, [r5, #4]
005693fc  48 30 97 e5                                      ldr r3, [r7, #0x48]
00569400  08 10 a0 e1                                      mov r1, r8
00569404  04 30 93 e5                                      ldr r3, [r3, #4]
00569408  04 30 13 e5                                      ldr r3, [r3, #-4]
0056940c  03 00 a0 e1                                      mov r0, r3
00569410  00 30 93 e5                                      ldr r3, [r3]
00569414  0f e0 a0 e1                                      mov lr, pc
00569418  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056941c  2c d0 8d e2                                      add sp, sp, #0x2c
00569420  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00569424  01 c0 a0 e3                                      mov ip, #1
00569428  05 00 a0 e1                                      mov r0, r5
0056942c  20 20 8d e2                                      add r2, sp, #0x20
00569430  24 30 8d e2                                      add r3, sp, #0x24
00569434  04 c0 8d e5                                      str ip, [sp, #4]
00569438  00 c0 8d e5                                      str ip, [sp]
0056943c  09 e8 ff eb                                      bl #0x563468
00569440  ed ff ff ea                                      b #0x5693fc
; mapping-symbol data/literal pool
00569444  c4 b6 42 00 18 4b 00 00                          .byte 0xc4, 0xb6, 0x42, 0x00, 0x18, 0x4b, 0x00, 0x00

; FUNCTION 0x0056944c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addLine3dEPKcNS_4core6line3dIfEEb
; demangled: glitch::io::CAttributes::addLine3d(char const*, glitch::core::line3d<float>, bool)
; decoder-mode: arm
0056944c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00569450  14 c0 92 e5                                      ldr ip, [r2, #0x14]
00569454  34 d0 4d e2                                      sub sp, sp, #0x34
00569458  01 40 a0 e1                                      mov r4, r1
0056945c  0c c0 8d e5                                      str ip, [sp, #0xc]
00569460  10 c0 92 e5                                      ldr ip, [r2, #0x10]
00569464  48 50 90 e5                                      ldr r5, [r0, #0x48]
00569468  00 10 a0 e3                                      mov r1, #0
0056946c  44 00 a0 e3                                      mov r0, #0x44
00569470  00 70 92 e5                                      ldr r7, [r2]
00569474  04 80 92 e5                                      ldr r8, [r2, #4]
00569478  08 a0 92 e5                                      ldr sl, [r2, #8]
0056947c  0c 90 92 e5                                      ldr sb, [r2, #0xc]
00569480  03 b0 a0 e1                                      mov fp, r3
00569484  08 c0 8d e5                                      str ip, [sp, #8]
00569488  47 2b ff eb                                      bl #0x5341ac
0056948c  08 c0 9d e5                                      ldr ip, [sp, #8]
00569490  04 10 a0 e1                                      mov r1, r4
00569494  0b 30 a0 e1                                      mov r3, fp
00569498  20 c0 8d e5                                      str ip, [sp, #0x20]
0056949c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
005694a0  78 40 9f e5                                      ldr r4, [pc, #0x78]
005694a4  10 20 8d e2                                      add r2, sp, #0x10
005694a8  00 60 a0 e1                                      mov r6, r0
005694ac  10 70 8d e5                                      str r7, [sp, #0x10]
005694b0  14 80 8d e5                                      str r8, [sp, #0x14]
005694b4  18 a0 8d e5                                      str sl, [sp, #0x18]
005694b8  1c 90 8d e5                                      str sb, [sp, #0x1c]
005694bc  24 c0 8d e5                                      str ip, [sp, #0x24]
005694c0  9d f9 ff eb                                      bl #0x567b3c
005694c4  58 30 9f e5                                      ldr r3, [pc, #0x58]
005694c8  04 40 8f e0                                      add r4, pc, r4
005694cc  03 30 94 e7                                      ldr r3, [r4, r3]
005694d0  08 30 83 e2                                      add r3, r3, #8
005694d4  00 30 86 e5                                      str r3, [r6]
005694d8  28 60 8d e5                                      str r6, [sp, #0x28]
005694dc  0a 00 95 e9                                      ldmib r5, {r1, r3}
005694e0  03 00 51 e1                                      cmp r1, r3
005694e4  05 00 00 0a                                      beq #0x569500
005694e8  00 60 81 e5                                      str r6, [r1]
005694ec  04 30 95 e5                                      ldr r3, [r5, #4]
005694f0  04 30 83 e2                                      add r3, r3, #4
005694f4  04 30 85 e5                                      str r3, [r5, #4]
005694f8  34 d0 8d e2                                      add sp, sp, #0x34
005694fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00569500  01 c0 a0 e3                                      mov ip, #1
00569504  05 00 a0 e1                                      mov r0, r5
00569508  28 20 8d e2                                      add r2, sp, #0x28
0056950c  2c 30 8d e2                                      add r3, sp, #0x2c
00569510  04 c0 8d e5                                      str ip, [sp, #4]
00569514  00 c0 8d e5                                      str ip, [sp]
00569518  d2 e7 ff eb                                      bl #0x563468
0056951c  f5 ff ff ea                                      b #0x5694f8
; mapping-symbol data/literal pool
00569520  c8 b5 42 00 18 4b 00 00                          .byte 0xc8, 0xb5, 0x42, 0x00, 0x18, 0x4b, 0x00, 0x00

; FUNCTION 0x00569528, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes17addStringAsLine2dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsLine2d(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569528  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056952c  01 40 a0 e1                                      mov r4, r1
00569530  24 d0 4d e2                                      sub sp, sp, #0x24
00569534  00 70 a0 e1                                      mov r7, r0
00569538  00 10 a0 e3                                      mov r1, #0
0056953c  44 00 a0 e3                                      mov r0, #0x44
00569540  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569544  02 80 a0 e1                                      mov r8, r2
00569548  03 a0 a0 e1                                      mov sl, r3
0056954c  16 2b ff eb                                      bl #0x5341ac
00569550  00 e0 a0 e3                                      mov lr, #0
00569554  fe c5 a0 e3                                      mov ip, #0x3f800000
00569558  04 10 a0 e1                                      mov r1, r4
0056955c  0a 30 a0 e1                                      mov r3, sl
00569560  94 40 9f e5                                      ldr r4, [pc, #0x94]
00569564  08 20 8d e2                                      add r2, sp, #8
00569568  00 60 a0 e1                                      mov r6, r0
0056956c  0c e0 8d e5                                      str lr, [sp, #0xc]
00569570  14 c0 8d e5                                      str ip, [sp, #0x14]
00569574  08 e0 8d e5                                      str lr, [sp, #8]
00569578  10 c0 8d e5                                      str ip, [sp, #0x10]
0056957c  d9 f1 ff eb                                      bl #0x565ce8
00569580  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569584  04 40 8f e0                                      add r4, pc, r4
00569588  03 30 94 e7                                      ldr r3, [r4, r3]
0056958c  08 30 83 e2                                      add r3, r3, #8
00569590  00 30 86 e5                                      str r3, [r6]
00569594  18 60 8d e5                                      str r6, [sp, #0x18]
00569598  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056959c  03 00 51 e1                                      cmp r1, r3
005695a0  0d 00 00 0a                                      beq #0x5695dc
005695a4  00 60 81 e5                                      str r6, [r1]
005695a8  04 30 95 e5                                      ldr r3, [r5, #4]
005695ac  04 30 83 e2                                      add r3, r3, #4
005695b0  04 30 85 e5                                      str r3, [r5, #4]
005695b4  48 30 97 e5                                      ldr r3, [r7, #0x48]
005695b8  08 10 a0 e1                                      mov r1, r8
005695bc  04 30 93 e5                                      ldr r3, [r3, #4]
005695c0  04 30 13 e5                                      ldr r3, [r3, #-4]
005695c4  03 00 a0 e1                                      mov r0, r3
005695c8  00 30 93 e5                                      ldr r3, [r3]
005695cc  0f e0 a0 e1                                      mov lr, pc
005695d0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
005695d4  24 d0 8d e2                                      add sp, sp, #0x24
005695d8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
005695dc  01 c0 a0 e3                                      mov ip, #1
005695e0  05 00 a0 e1                                      mov r0, r5
005695e4  18 20 8d e2                                      add r2, sp, #0x18
005695e8  1c 30 8d e2                                      add r3, sp, #0x1c
005695ec  04 c0 8d e5                                      str ip, [sp, #4]
005695f0  00 c0 8d e5                                      str ip, [sp]
005695f4  9b e7 ff eb                                      bl #0x563468
005695f8  ed ff ff ea                                      b #0x5695b4
; mapping-symbol data/literal pool
005695fc  0c b5 42 00 c0 2a 00 00                          .byte 0x0c, 0xb5, 0x42, 0x00, 0xc0, 0x2a, 0x00, 0x00

; FUNCTION 0x00569604, declared_size=188, range_size=188, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addLine2dEPKcNS_4core6line2dIfEEb
; demangled: glitch::io::CAttributes::addLine2d(char const*, glitch::core::line2d<float>, bool)
; decoder-mode: arm
00569604  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00569608  01 40 a0 e1                                      mov r4, r1
0056960c  24 d0 4d e2                                      sub sp, sp, #0x24
00569610  48 50 90 e5                                      ldr r5, [r0, #0x48]
00569614  00 10 a0 e3                                      mov r1, #0
00569618  44 00 a0 e3                                      mov r0, #0x44
0056961c  0c 90 92 e5                                      ldr sb, [r2, #0xc]
00569620  00 70 92 e5                                      ldr r7, [r2]
00569624  04 80 92 e5                                      ldr r8, [r2, #4]
00569628  08 a0 92 e5                                      ldr sl, [r2, #8]
0056962c  03 b0 a0 e1                                      mov fp, r3
00569630  dd 2a ff eb                                      bl #0x5341ac
00569634  04 10 a0 e1                                      mov r1, r4
00569638  0b 30 a0 e1                                      mov r3, fp
0056963c  74 40 9f e5                                      ldr r4, [pc, #0x74]
00569640  08 20 8d e2                                      add r2, sp, #8
00569644  00 60 a0 e1                                      mov r6, r0
00569648  08 70 8d e5                                      str r7, [sp, #8]
0056964c  0c 80 8d e5                                      str r8, [sp, #0xc]
00569650  10 a0 8d e5                                      str sl, [sp, #0x10]
00569654  14 90 8d e5                                      str sb, [sp, #0x14]
00569658  a2 f1 ff eb                                      bl #0x565ce8
0056965c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569660  04 40 8f e0                                      add r4, pc, r4
00569664  03 30 94 e7                                      ldr r3, [r4, r3]
00569668  08 30 83 e2                                      add r3, r3, #8
0056966c  00 30 86 e5                                      str r3, [r6]
00569670  18 60 8d e5                                      str r6, [sp, #0x18]
00569674  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569678  03 00 51 e1                                      cmp r1, r3
0056967c  05 00 00 0a                                      beq #0x569698
00569680  00 60 81 e5                                      str r6, [r1]
00569684  04 30 95 e5                                      ldr r3, [r5, #4]
00569688  04 30 83 e2                                      add r3, r3, #4
0056968c  04 30 85 e5                                      str r3, [r5, #4]
00569690  24 d0 8d e2                                      add sp, sp, #0x24
00569694  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00569698  01 c0 a0 e3                                      mov ip, #1
0056969c  05 00 a0 e1                                      mov r0, r5
005696a0  18 20 8d e2                                      add r2, sp, #0x18
005696a4  1c 30 8d e2                                      add r3, sp, #0x1c
005696a8  04 c0 8d e5                                      str ip, [sp, #4]
005696ac  00 c0 8d e5                                      str ip, [sp]
005696b0  6c e7 ff eb                                      bl #0x563468
005696b4  f5 ff ff ea                                      b #0x569690
; mapping-symbol data/literal pool
005696b8  30 b4 42 00 c0 2a 00 00                          .byte 0x30, 0xb4, 0x42, 0x00, 0xc0, 0x2a, 0x00, 0x00

; FUNCTION 0x005696c0, declared_size=236, range_size=236, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes21addStringAsTriangle3dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsTriangle3d(char const*, wchar_t const*, bool)
; decoder-mode: arm
005696c0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005696c4  01 40 a0 e1                                      mov r4, r1
005696c8  3c d0 4d e2                                      sub sp, sp, #0x3c
005696cc  00 70 a0 e1                                      mov r7, r0
005696d0  00 10 a0 e3                                      mov r1, #0
005696d4  44 00 a0 e3                                      mov r0, #0x44
005696d8  48 50 97 e5                                      ldr r5, [r7, #0x48]
005696dc  02 80 a0 e1                                      mov r8, r2
005696e0  03 a0 a0 e1                                      mov sl, r3
005696e4  b0 2a ff eb                                      bl #0x5341ac
005696e8  00 c0 a0 e3                                      mov ip, #0
005696ec  04 10 a0 e1                                      mov r1, r4
005696f0  0a 30 a0 e1                                      mov r3, sl
005696f4  a8 40 9f e5                                      ldr r4, [pc, #0xa8]
005696f8  0c 20 8d e2                                      add r2, sp, #0xc
005696fc  00 60 a0 e1                                      mov r6, r0
00569700  2c c0 8d e5                                      str ip, [sp, #0x2c]
00569704  0c c0 8d e5                                      str ip, [sp, #0xc]
00569708  10 c0 8d e5                                      str ip, [sp, #0x10]
0056970c  14 c0 8d e5                                      str ip, [sp, #0x14]
00569710  18 c0 8d e5                                      str ip, [sp, #0x18]
00569714  1c c0 8d e5                                      str ip, [sp, #0x1c]
00569718  20 c0 8d e5                                      str ip, [sp, #0x20]
0056971c  24 c0 8d e5                                      str ip, [sp, #0x24]
00569720  28 c0 8d e5                                      str ip, [sp, #0x28]
00569724  da f1 ff eb                                      bl #0x565e94
00569728  78 30 9f e5                                      ldr r3, [pc, #0x78]
0056972c  04 40 8f e0                                      add r4, pc, r4
00569730  03 30 94 e7                                      ldr r3, [r4, r3]
00569734  08 30 83 e2                                      add r3, r3, #8
00569738  00 30 86 e5                                      str r3, [r6]
0056973c  30 60 8d e5                                      str r6, [sp, #0x30]
00569740  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569744  03 00 51 e1                                      cmp r1, r3
00569748  0d 00 00 0a                                      beq #0x569784
0056974c  00 60 81 e5                                      str r6, [r1]
00569750  04 30 95 e5                                      ldr r3, [r5, #4]
00569754  04 30 83 e2                                      add r3, r3, #4
00569758  04 30 85 e5                                      str r3, [r5, #4]
0056975c  48 30 97 e5                                      ldr r3, [r7, #0x48]
00569760  08 10 a0 e1                                      mov r1, r8
00569764  04 30 93 e5                                      ldr r3, [r3, #4]
00569768  04 30 13 e5                                      ldr r3, [r3, #-4]
0056976c  03 00 a0 e1                                      mov r0, r3
00569770  00 30 93 e5                                      ldr r3, [r3]
00569774  0f e0 a0 e1                                      mov lr, pc
00569778  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056977c  3c d0 8d e2                                      add sp, sp, #0x3c
00569780  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00569784  01 c0 a0 e3                                      mov ip, #1
00569788  05 00 a0 e1                                      mov r0, r5
0056978c  30 20 8d e2                                      add r2, sp, #0x30
00569790  34 30 8d e2                                      add r3, sp, #0x34
00569794  04 c0 8d e5                                      str ip, [sp, #4]
00569798  00 c0 8d e5                                      str ip, [sp]
0056979c  31 e7 ff eb                                      bl #0x563468
005697a0  ed ff ff ea                                      b #0x56975c
; mapping-symbol data/literal pool
005697a4  64 b3 42 00 04 38 00 00                          .byte 0x64, 0xb3, 0x42, 0x00, 0x04, 0x38, 0x00, 0x00

; FUNCTION 0x005697ac, declared_size=268, range_size=268, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13addTriangle3dEPKcNS_4core10triangle3dIfEEb
; demangled: glitch::io::CAttributes::addTriangle3d(char const*, glitch::core::triangle3d<float>, bool)
; decoder-mode: arm
005697ac  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005697b0  20 c0 92 e5                                      ldr ip, [r2, #0x20]
005697b4  54 d0 4d e2                                      sub sp, sp, #0x54
005697b8  01 40 a0 e1                                      mov r4, r1
005697bc  14 c0 8d e5                                      str ip, [sp, #0x14]
005697c0  14 e0 92 e5                                      ldr lr, [r2, #0x14]
005697c4  00 70 92 e5                                      ldr r7, [r2]
005697c8  04 80 92 e5                                      ldr r8, [r2, #4]
005697cc  08 a0 92 e5                                      ldr sl, [r2, #8]
005697d0  0c 90 92 e5                                      ldr sb, [r2, #0xc]
005697d4  10 c0 92 e5                                      ldr ip, [r2, #0x10]
005697d8  10 e0 8d e5                                      str lr, [sp, #0x10]
005697dc  18 e0 92 e5                                      ldr lr, [r2, #0x18]
005697e0  00 10 a0 e3                                      mov r1, #0
005697e4  03 b0 a0 e1                                      mov fp, r3
005697e8  1c e0 8d e5                                      str lr, [sp, #0x1c]
005697ec  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
005697f0  18 20 8d e5                                      str r2, [sp, #0x18]
005697f4  48 50 90 e5                                      ldr r5, [r0, #0x48]
005697f8  44 00 a0 e3                                      mov r0, #0x44
005697fc  0c c0 8d e5                                      str ip, [sp, #0xc]
00569800  69 2a ff eb                                      bl #0x5341ac
00569804  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00569808  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0056980c  04 10 a0 e1                                      mov r1, r4
00569810  34 c0 8d e5                                      str ip, [sp, #0x34]
00569814  10 c0 9d e5                                      ldr ip, [sp, #0x10]
00569818  3c e0 8d e5                                      str lr, [sp, #0x3c]
0056981c  14 e0 9d e5                                      ldr lr, [sp, #0x14]
00569820  38 c0 8d e5                                      str ip, [sp, #0x38]
00569824  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00569828  0b 30 a0 e1                                      mov r3, fp
0056982c  7c 40 9f e5                                      ldr r4, [pc, #0x7c]
00569830  24 20 8d e2                                      add r2, sp, #0x24
00569834  00 60 a0 e1                                      mov r6, r0
00569838  24 70 8d e5                                      str r7, [sp, #0x24]
0056983c  28 80 8d e5                                      str r8, [sp, #0x28]
00569840  2c a0 8d e5                                      str sl, [sp, #0x2c]
00569844  30 90 8d e5                                      str sb, [sp, #0x30]
00569848  40 c0 8d e5                                      str ip, [sp, #0x40]
0056984c  44 e0 8d e5                                      str lr, [sp, #0x44]
00569850  8f f1 ff eb                                      bl #0x565e94
00569854  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569858  04 40 8f e0                                      add r4, pc, r4
0056985c  03 30 94 e7                                      ldr r3, [r4, r3]
00569860  08 30 83 e2                                      add r3, r3, #8
00569864  00 30 86 e5                                      str r3, [r6]
00569868  48 60 8d e5                                      str r6, [sp, #0x48]
0056986c  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569870  03 00 51 e1                                      cmp r1, r3
00569874  05 00 00 0a                                      beq #0x569890
00569878  00 60 81 e5                                      str r6, [r1]
0056987c  04 30 95 e5                                      ldr r3, [r5, #4]
00569880  04 30 83 e2                                      add r3, r3, #4
00569884  04 30 85 e5                                      str r3, [r5, #4]
00569888  54 d0 8d e2                                      add sp, sp, #0x54
0056988c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00569890  01 c0 a0 e3                                      mov ip, #1
00569894  05 00 a0 e1                                      mov r0, r5
00569898  48 20 8d e2                                      add r2, sp, #0x48
0056989c  4c 30 8d e2                                      add r3, sp, #0x4c
005698a0  04 c0 8d e5                                      str ip, [sp, #4]
005698a4  00 c0 8d e5                                      str ip, [sp]
005698a8  ee e6 ff eb                                      bl #0x563468
005698ac  f5 ff ff ea                                      b #0x569888
; mapping-symbol data/literal pool
005698b0  38 b2 42 00 04 38 00 00                          .byte 0x38, 0xb2, 0x42, 0x00, 0x04, 0x38, 0x00, 0x00

; FUNCTION 0x005698b8, declared_size=224, range_size=224, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes18addStringAsPlane3dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsPlane3d(char const*, wchar_t const*, bool)
; decoder-mode: arm
005698b8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
005698bc  01 40 a0 e1                                      mov r4, r1
005698c0  24 d0 4d e2                                      sub sp, sp, #0x24
005698c4  00 70 a0 e1                                      mov r7, r0
005698c8  00 10 a0 e3                                      mov r1, #0
005698cc  44 00 a0 e3                                      mov r0, #0x44
005698d0  48 50 97 e5                                      ldr r5, [r7, #0x48]
005698d4  02 80 a0 e1                                      mov r8, r2
005698d8  03 a0 a0 e1                                      mov sl, r3
005698dc  32 2a ff eb                                      bl #0x5341ac
005698e0  fe e5 a0 e3                                      mov lr, #0x3f800000
005698e4  00 c0 a0 e3                                      mov ip, #0
005698e8  04 10 a0 e1                                      mov r1, r4
005698ec  0a 30 a0 e1                                      mov r3, sl
005698f0  0c e0 8d e5                                      str lr, [sp, #0xc]
005698f4  94 40 9f e5                                      ldr r4, [pc, #0x94]
005698f8  02 e1 a0 e3                                      mov lr, #0x80000000
005698fc  08 20 8d e2                                      add r2, sp, #8
00569900  00 60 a0 e1                                      mov r6, r0
00569904  10 c0 8d e5                                      str ip, [sp, #0x10]
00569908  14 e0 8d e5                                      str lr, [sp, #0x14]
0056990c  08 c0 8d e5                                      str ip, [sp, #8]
00569910  15 f2 ff eb                                      bl #0x56616c
00569914  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569918  04 40 8f e0                                      add r4, pc, r4
0056991c  03 30 94 e7                                      ldr r3, [r4, r3]
00569920  08 30 83 e2                                      add r3, r3, #8
00569924  00 30 86 e5                                      str r3, [r6]
00569928  18 60 8d e5                                      str r6, [sp, #0x18]
0056992c  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569930  03 00 51 e1                                      cmp r1, r3
00569934  0d 00 00 0a                                      beq #0x569970
00569938  00 60 81 e5                                      str r6, [r1]
0056993c  04 30 95 e5                                      ldr r3, [r5, #4]
00569940  04 30 83 e2                                      add r3, r3, #4
00569944  04 30 85 e5                                      str r3, [r5, #4]
00569948  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056994c  08 10 a0 e1                                      mov r1, r8
00569950  04 30 93 e5                                      ldr r3, [r3, #4]
00569954  04 30 13 e5                                      ldr r3, [r3, #-4]
00569958  03 00 a0 e1                                      mov r0, r3
0056995c  00 30 93 e5                                      ldr r3, [r3]
00569960  0f e0 a0 e1                                      mov lr, pc
00569964  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00569968  24 d0 8d e2                                      add sp, sp, #0x24
0056996c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00569970  01 c0 a0 e3                                      mov ip, #1
00569974  05 00 a0 e1                                      mov r0, r5
00569978  18 20 8d e2                                      add r2, sp, #0x18
0056997c  1c 30 8d e2                                      add r3, sp, #0x1c
00569980  04 c0 8d e5                                      str ip, [sp, #4]
00569984  00 c0 8d e5                                      str ip, [sp]
00569988  b6 e6 ff eb                                      bl #0x563468
0056998c  ed ff ff ea                                      b #0x569948
; mapping-symbol data/literal pool
00569990  78 b1 42 00 5c 43 00 00                          .byte 0x78, 0xb1, 0x42, 0x00, 0x5c, 0x43, 0x00, 0x00

; FUNCTION 0x00569998, declared_size=188, range_size=188, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes10addPlane3dEPKcNS_4core7plane3dIfEEb
; demangled: glitch::io::CAttributes::addPlane3d(char const*, glitch::core::plane3d<float>, bool)
; decoder-mode: arm
00569998  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056999c  01 40 a0 e1                                      mov r4, r1
005699a0  24 d0 4d e2                                      sub sp, sp, #0x24
005699a4  48 50 90 e5                                      ldr r5, [r0, #0x48]
005699a8  00 10 a0 e3                                      mov r1, #0
005699ac  44 00 a0 e3                                      mov r0, #0x44
005699b0  0c 90 92 e5                                      ldr sb, [r2, #0xc]
005699b4  00 70 92 e5                                      ldr r7, [r2]
005699b8  04 80 92 e5                                      ldr r8, [r2, #4]
005699bc  08 a0 92 e5                                      ldr sl, [r2, #8]
005699c0  03 b0 a0 e1                                      mov fp, r3
005699c4  f8 29 ff eb                                      bl #0x5341ac
005699c8  04 10 a0 e1                                      mov r1, r4
005699cc  0b 30 a0 e1                                      mov r3, fp
005699d0  74 40 9f e5                                      ldr r4, [pc, #0x74]
005699d4  08 20 8d e2                                      add r2, sp, #8
005699d8  00 60 a0 e1                                      mov r6, r0
005699dc  08 70 8d e5                                      str r7, [sp, #8]
005699e0  0c 80 8d e5                                      str r8, [sp, #0xc]
005699e4  10 a0 8d e5                                      str sl, [sp, #0x10]
005699e8  14 90 8d e5                                      str sb, [sp, #0x14]
005699ec  de f1 ff eb                                      bl #0x56616c
005699f0  58 30 9f e5                                      ldr r3, [pc, #0x58]
005699f4  04 40 8f e0                                      add r4, pc, r4
005699f8  03 30 94 e7                                      ldr r3, [r4, r3]
005699fc  08 30 83 e2                                      add r3, r3, #8
00569a00  00 30 86 e5                                      str r3, [r6]
00569a04  18 60 8d e5                                      str r6, [sp, #0x18]
00569a08  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569a0c  03 00 51 e1                                      cmp r1, r3
00569a10  05 00 00 0a                                      beq #0x569a2c
00569a14  00 60 81 e5                                      str r6, [r1]
00569a18  04 30 95 e5                                      ldr r3, [r5, #4]
00569a1c  04 30 83 e2                                      add r3, r3, #4
00569a20  04 30 85 e5                                      str r3, [r5, #4]
00569a24  24 d0 8d e2                                      add sp, sp, #0x24
00569a28  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00569a2c  01 c0 a0 e3                                      mov ip, #1
00569a30  05 00 a0 e1                                      mov r0, r5
00569a34  18 20 8d e2                                      add r2, sp, #0x18
00569a38  1c 30 8d e2                                      add r3, sp, #0x1c
00569a3c  04 c0 8d e5                                      str ip, [sp, #4]
00569a40  00 c0 8d e5                                      str ip, [sp]
00569a44  87 e6 ff eb                                      bl #0x563468
00569a48  f5 ff ff ea                                      b #0x569a24
; mapping-symbol data/literal pool
00569a4c  9c b0 42 00 5c 43 00 00                          .byte 0x9c, 0xb0, 0x42, 0x00, 0x5c, 0x43, 0x00, 0x00

; FUNCTION 0x00569a54, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16addStringAsBox3dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsBox3d(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569a54  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00569a58  01 40 a0 e1                                      mov r4, r1
00569a5c  2c d0 4d e2                                      sub sp, sp, #0x2c
00569a60  00 70 a0 e1                                      mov r7, r0
00569a64  00 10 a0 e3                                      mov r1, #0
00569a68  44 00 a0 e3                                      mov r0, #0x44
00569a6c  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569a70  02 80 a0 e1                                      mov r8, r2
00569a74  03 a0 a0 e1                                      mov sl, r3
00569a78  cb 29 ff eb                                      bl #0x5341ac
00569a7c  bf e4 a0 e3                                      mov lr, #0xbf000000
00569a80  02 e5 8e e2                                      add lr, lr, #0x800000
00569a84  fe c5 a0 e3                                      mov ip, #0x3f800000
00569a88  04 10 a0 e1                                      mov r1, r4
00569a8c  0a 30 a0 e1                                      mov r3, sl
00569a90  9c 40 9f e5                                      ldr r4, [pc, #0x9c]
00569a94  08 20 8d e2                                      add r2, sp, #8
00569a98  00 60 a0 e1                                      mov r6, r0
00569a9c  10 e0 8d e5                                      str lr, [sp, #0x10]
00569aa0  1c c0 8d e5                                      str ip, [sp, #0x1c]
00569aa4  08 e0 8d e5                                      str lr, [sp, #8]
00569aa8  0c e0 8d e5                                      str lr, [sp, #0xc]
00569aac  14 c0 8d e5                                      str ip, [sp, #0x14]
00569ab0  18 c0 8d e5                                      str ip, [sp, #0x18]
00569ab4  17 f2 ff eb                                      bl #0x566318
00569ab8  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569abc  04 40 8f e0                                      add r4, pc, r4
00569ac0  03 30 94 e7                                      ldr r3, [r4, r3]
00569ac4  08 30 83 e2                                      add r3, r3, #8
00569ac8  00 30 86 e5                                      str r3, [r6]
00569acc  20 60 8d e5                                      str r6, [sp, #0x20]
00569ad0  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569ad4  03 00 51 e1                                      cmp r1, r3
00569ad8  0d 00 00 0a                                      beq #0x569b14
00569adc  00 60 81 e5                                      str r6, [r1]
00569ae0  04 30 95 e5                                      ldr r3, [r5, #4]
00569ae4  04 30 83 e2                                      add r3, r3, #4
00569ae8  04 30 85 e5                                      str r3, [r5, #4]
00569aec  48 30 97 e5                                      ldr r3, [r7, #0x48]
00569af0  08 10 a0 e1                                      mov r1, r8
00569af4  04 30 93 e5                                      ldr r3, [r3, #4]
00569af8  04 30 13 e5                                      ldr r3, [r3, #-4]
00569afc  03 00 a0 e1                                      mov r0, r3
00569b00  00 30 93 e5                                      ldr r3, [r3]
00569b04  0f e0 a0 e1                                      mov lr, pc
00569b08  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00569b0c  2c d0 8d e2                                      add sp, sp, #0x2c
00569b10  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00569b14  01 c0 a0 e3                                      mov ip, #1
00569b18  05 00 a0 e1                                      mov r0, r5
00569b1c  20 20 8d e2                                      add r2, sp, #0x20
00569b20  24 30 8d e2                                      add r3, sp, #0x24
00569b24  04 c0 8d e5                                      str ip, [sp, #4]
00569b28  00 c0 8d e5                                      str ip, [sp]
00569b2c  4d e6 ff eb                                      bl #0x563468
00569b30  ed ff ff ea                                      b #0x569aec
; mapping-symbol data/literal pool
00569b34  d4 af 42 00 80 27 00 00                          .byte 0xd4, 0xaf, 0x42, 0x00, 0x80, 0x27, 0x00, 0x00

; FUNCTION 0x00569b3c, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8addBox3dEPKcNS_4core8aabbox3dIfEEb
; demangled: glitch::io::CAttributes::addBox3d(char const*, glitch::core::aabbox3d<float>, bool)
; decoder-mode: arm
00569b3c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00569b40  14 c0 92 e5                                      ldr ip, [r2, #0x14]
00569b44  34 d0 4d e2                                      sub sp, sp, #0x34
00569b48  01 40 a0 e1                                      mov r4, r1
00569b4c  0c c0 8d e5                                      str ip, [sp, #0xc]
00569b50  10 c0 92 e5                                      ldr ip, [r2, #0x10]
00569b54  48 50 90 e5                                      ldr r5, [r0, #0x48]
00569b58  00 10 a0 e3                                      mov r1, #0
00569b5c  44 00 a0 e3                                      mov r0, #0x44
00569b60  00 70 92 e5                                      ldr r7, [r2]
00569b64  04 80 92 e5                                      ldr r8, [r2, #4]
00569b68  08 a0 92 e5                                      ldr sl, [r2, #8]
00569b6c  0c 90 92 e5                                      ldr sb, [r2, #0xc]
00569b70  03 b0 a0 e1                                      mov fp, r3
00569b74  08 c0 8d e5                                      str ip, [sp, #8]
00569b78  8b 29 ff eb                                      bl #0x5341ac
00569b7c  08 c0 9d e5                                      ldr ip, [sp, #8]
00569b80  04 10 a0 e1                                      mov r1, r4
00569b84  0b 30 a0 e1                                      mov r3, fp
00569b88  20 c0 8d e5                                      str ip, [sp, #0x20]
00569b8c  0c c0 9d e5                                      ldr ip, [sp, #0xc]
00569b90  78 40 9f e5                                      ldr r4, [pc, #0x78]
00569b94  10 20 8d e2                                      add r2, sp, #0x10
00569b98  00 60 a0 e1                                      mov r6, r0
00569b9c  10 70 8d e5                                      str r7, [sp, #0x10]
00569ba0  14 80 8d e5                                      str r8, [sp, #0x14]
00569ba4  18 a0 8d e5                                      str sl, [sp, #0x18]
00569ba8  1c 90 8d e5                                      str sb, [sp, #0x1c]
00569bac  24 c0 8d e5                                      str ip, [sp, #0x24]
00569bb0  d8 f1 ff eb                                      bl #0x566318
00569bb4  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569bb8  04 40 8f e0                                      add r4, pc, r4
00569bbc  03 30 94 e7                                      ldr r3, [r4, r3]
00569bc0  08 30 83 e2                                      add r3, r3, #8
00569bc4  00 30 86 e5                                      str r3, [r6]
00569bc8  28 60 8d e5                                      str r6, [sp, #0x28]
00569bcc  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569bd0  03 00 51 e1                                      cmp r1, r3
00569bd4  05 00 00 0a                                      beq #0x569bf0
00569bd8  00 60 81 e5                                      str r6, [r1]
00569bdc  04 30 95 e5                                      ldr r3, [r5, #4]
00569be0  04 30 83 e2                                      add r3, r3, #4
00569be4  04 30 85 e5                                      str r3, [r5, #4]
00569be8  34 d0 8d e2                                      add sp, sp, #0x34
00569bec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00569bf0  01 c0 a0 e3                                      mov ip, #1
00569bf4  05 00 a0 e1                                      mov r0, r5
00569bf8  28 20 8d e2                                      add r2, sp, #0x28
00569bfc  2c 30 8d e2                                      add r3, sp, #0x2c
00569c00  04 c0 8d e5                                      str ip, [sp, #4]
00569c04  00 c0 8d e5                                      str ip, [sp]
00569c08  16 e6 ff eb                                      bl #0x563468
00569c0c  f5 ff ff ea                                      b #0x569be8
; mapping-symbol data/literal pool
00569c10  d8 ae 42 00 80 27 00 00                          .byte 0xd8, 0xae, 0x42, 0x00, 0x80, 0x27, 0x00, 0x00

; FUNCTION 0x00569c18, declared_size=232, range_size=232, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes21addStringAsQuaternionEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsQuaternion(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569c18  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00569c1c  01 40 a0 e1                                      mov r4, r1
00569c20  2c d0 4d e2                                      sub sp, sp, #0x2c
00569c24  00 70 a0 e1                                      mov r7, r0
00569c28  00 10 a0 e3                                      mov r1, #0
00569c2c  44 00 a0 e3                                      mov r0, #0x44
00569c30  03 80 a0 e1                                      mov r8, r3
00569c34  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569c38  02 a0 a0 e1                                      mov sl, r2
00569c3c  5a 29 ff eb                                      bl #0x5341ac
00569c40  00 20 a0 e3                                      mov r2, #0
00569c44  fe e5 a0 e3                                      mov lr, #0x3f800000
00569c48  00 c0 a0 e3                                      mov ip, #0
00569c4c  04 10 a0 e1                                      mov r1, r4
00569c50  02 30 a0 e1                                      mov r3, r2
00569c54  1c e0 8d e5                                      str lr, [sp, #0x1c]
00569c58  98 40 9f e5                                      ldr r4, [pc, #0x98]
00569c5c  fe e5 a0 e3                                      mov lr, #0x3f800000
00569c60  00 60 a0 e1                                      mov r6, r0
00569c64  10 c0 8d e5                                      str ip, [sp, #0x10]
00569c68  08 80 8d e5                                      str r8, [sp, #8]
00569c6c  04 40 8d e8                                      stm sp, {r2, lr}
00569c70  18 c0 8d e5                                      str ip, [sp, #0x18]
00569c74  14 c0 8d e5                                      str ip, [sp, #0x14]
00569c78  2f f2 ff eb                                      bl #0x56653c
00569c7c  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569c80  04 40 8f e0                                      add r4, pc, r4
00569c84  03 30 94 e7                                      ldr r3, [r4, r3]
00569c88  08 30 83 e2                                      add r3, r3, #8
00569c8c  00 30 86 e5                                      str r3, [r6]
00569c90  20 60 8d e5                                      str r6, [sp, #0x20]
00569c94  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569c98  03 00 51 e1                                      cmp r1, r3
00569c9c  0d 00 00 0a                                      beq #0x569cd8
00569ca0  00 60 81 e5                                      str r6, [r1]
00569ca4  04 30 95 e5                                      ldr r3, [r5, #4]
00569ca8  04 30 83 e2                                      add r3, r3, #4
00569cac  04 30 85 e5                                      str r3, [r5, #4]
00569cb0  48 30 97 e5                                      ldr r3, [r7, #0x48]
00569cb4  0a 10 a0 e1                                      mov r1, sl
00569cb8  04 30 93 e5                                      ldr r3, [r3, #4]
00569cbc  04 30 13 e5                                      ldr r3, [r3, #-4]
00569cc0  03 00 a0 e1                                      mov r0, r3
00569cc4  00 30 93 e5                                      ldr r3, [r3]
00569cc8  0f e0 a0 e1                                      mov lr, pc
00569ccc  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00569cd0  2c d0 8d e2                                      add sp, sp, #0x2c
00569cd4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00569cd8  01 c0 a0 e3                                      mov ip, #1
00569cdc  05 00 a0 e1                                      mov r0, r5
00569ce0  20 20 8d e2                                      add r2, sp, #0x20
00569ce4  24 30 8d e2                                      add r3, sp, #0x24
00569ce8  04 c0 8d e5                                      str ip, [sp, #4]
00569cec  00 c0 8d e5                                      str ip, [sp]
00569cf0  dc e5 ff eb                                      bl #0x563468
00569cf4  ed ff ff ea                                      b #0x569cb0
; mapping-symbol data/literal pool
00569cf8  10 ae 42 00 9c 48 00 00                          .byte 0x10, 0xae, 0x42, 0x00, 0x9c, 0x48, 0x00, 0x00

; FUNCTION 0x00569d00, declared_size=228, range_size=228, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes13addQuaternionEPKcNS_4core10quaternionEb
; demangled: glitch::io::CAttributes::addQuaternion(char const*, glitch::core::quaternion, bool)
; decoder-mode: arm
00569d00  08 d0 4d e2                                      sub sp, sp, #8
00569d04  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00569d08  2c d0 4d e2                                      sub sp, sp, #0x2c
00569d0c  50 20 8d e5                                      str r2, [sp, #0x50]
00569d10  54 30 8d e5                                      str r3, [sp, #0x54]
00569d14  48 40 90 e5                                      ldr r4, [r0, #0x48]
00569d18  01 a0 a0 e1                                      mov sl, r1
00569d1c  44 00 a0 e3                                      mov r0, #0x44
00569d20  00 10 a0 e3                                      mov r1, #0
00569d24  58 60 9d e5                                      ldr r6, [sp, #0x58]
00569d28  5c 70 9d e5                                      ldr r7, [sp, #0x5c]
00569d2c  50 90 9d e5                                      ldr sb, [sp, #0x50]
00569d30  54 b0 9d e5                                      ldr fp, [sp, #0x54]
00569d34  60 80 dd e5                                      ldrb r8, [sp, #0x60]
00569d38  1b 29 ff eb                                      bl #0x5341ac
00569d3c  18 60 8d e5                                      str r6, [sp, #0x18]
00569d40  18 c0 9d e5                                      ldr ip, [sp, #0x18]
00569d44  1c 70 8d e5                                      str r7, [sp, #0x1c]
00569d48  14 b0 8d e5                                      str fp, [sp, #0x14]
00569d4c  00 c0 8d e5                                      str ip, [sp]
00569d50  1c c0 9d e5                                      ldr ip, [sp, #0x1c]
00569d54  10 90 8d e5                                      str sb, [sp, #0x10]
00569d58  0a 10 a0 e1                                      mov r1, sl
00569d5c  14 30 9d e5                                      ldr r3, [sp, #0x14]
00569d60  74 60 9f e5                                      ldr r6, [pc, #0x74]
00569d64  10 20 9d e5                                      ldr r2, [sp, #0x10]
00569d68  00 50 a0 e1                                      mov r5, r0
00569d6c  08 80 8d e5                                      str r8, [sp, #8]
00569d70  04 c0 8d e5                                      str ip, [sp, #4]
00569d74  f0 f1 ff eb                                      bl #0x56653c
00569d78  60 30 9f e5                                      ldr r3, [pc, #0x60]
00569d7c  06 60 8f e0                                      add r6, pc, r6
00569d80  03 30 96 e7                                      ldr r3, [r6, r3]
00569d84  08 30 83 e2                                      add r3, r3, #8
00569d88  00 30 85 e5                                      str r3, [r5]
00569d8c  20 50 8d e5                                      str r5, [sp, #0x20]
00569d90  0a 00 94 e9                                      ldmib r4, {r1, r3}
00569d94  03 00 51 e1                                      cmp r1, r3
00569d98  07 00 00 0a                                      beq #0x569dbc
00569d9c  00 50 81 e5                                      str r5, [r1]
00569da0  04 30 94 e5                                      ldr r3, [r4, #4]
00569da4  04 30 83 e2                                      add r3, r3, #4
00569da8  04 30 84 e5                                      str r3, [r4, #4]
00569dac  2c d0 8d e2                                      add sp, sp, #0x2c
00569db0  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00569db4  08 d0 8d e2                                      add sp, sp, #8
00569db8  1e ff 2f e1                                      bx lr
00569dbc  01 c0 a0 e3                                      mov ip, #1
00569dc0  04 00 a0 e1                                      mov r0, r4
00569dc4  20 20 8d e2                                      add r2, sp, #0x20
00569dc8  24 30 8d e2                                      add r3, sp, #0x24
00569dcc  04 c0 8d e5                                      str ip, [sp, #4]
00569dd0  00 c0 8d e5                                      str ip, [sp]
00569dd4  a3 e5 ff eb                                      bl #0x563468
00569dd8  f3 ff ff ea                                      b #0x569dac
; mapping-symbol data/literal pool
00569ddc  14 ad 42 00 9c 48 00 00                          .byte 0x14, 0xad, 0x42, 0x00, 0x9c, 0x48, 0x00, 0x00

; FUNCTION 0x00569de4, declared_size=216, range_size=216, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes19addStringAsVector4dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsVector4d(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569de4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00569de8  00 c0 a0 e3                                      mov ip, #0
00569dec  20 d0 4d e2                                      sub sp, sp, #0x20
00569df0  14 c0 8d e5                                      str ip, [sp, #0x14]
00569df4  08 c0 8d e5                                      str ip, [sp, #8]
00569df8  0c c0 8d e5                                      str ip, [sp, #0xc]
00569dfc  10 c0 8d e5                                      str ip, [sp, #0x10]
00569e00  00 70 a0 e1                                      mov r7, r0
00569e04  01 80 a0 e1                                      mov r8, r1
00569e08  44 00 a0 e3                                      mov r0, #0x44
00569e0c  00 10 a0 e3                                      mov r1, #0
00569e10  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569e14  03 a0 a0 e1                                      mov sl, r3
00569e18  02 90 a0 e1                                      mov sb, r2
00569e1c  e2 28 ff eb                                      bl #0x5341ac
00569e20  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00569e24  08 10 a0 e1                                      mov r1, r8
00569e28  0a 30 a0 e1                                      mov r3, sl
00569e2c  08 20 8d e2                                      add r2, sp, #8
00569e30  00 60 a0 e1                                      mov r6, r0
00569e34  9c f2 ff eb                                      bl #0x5668ac
00569e38  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569e3c  04 40 8f e0                                      add r4, pc, r4
00569e40  03 30 94 e7                                      ldr r3, [r4, r3]
00569e44  08 30 83 e2                                      add r3, r3, #8
00569e48  00 30 86 e5                                      str r3, [r6]
00569e4c  18 60 8d e5                                      str r6, [sp, #0x18]
00569e50  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569e54  03 00 51 e1                                      cmp r1, r3
00569e58  0d 00 00 0a                                      beq #0x569e94
00569e5c  00 60 81 e5                                      str r6, [r1]
00569e60  04 30 95 e5                                      ldr r3, [r5, #4]
00569e64  04 30 83 e2                                      add r3, r3, #4
00569e68  04 30 85 e5                                      str r3, [r5, #4]
00569e6c  48 30 97 e5                                      ldr r3, [r7, #0x48]
00569e70  09 10 a0 e1                                      mov r1, sb
00569e74  04 30 93 e5                                      ldr r3, [r3, #4]
00569e78  04 30 13 e5                                      ldr r3, [r3, #-4]
00569e7c  03 00 a0 e1                                      mov r0, r3
00569e80  00 30 93 e5                                      ldr r3, [r3]
00569e84  0f e0 a0 e1                                      mov lr, pc
00569e88  94 f0 93 e5                                      ldr pc, [r3, #0x94]
00569e8c  20 d0 8d e2                                      add sp, sp, #0x20
00569e90  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00569e94  01 c0 a0 e3                                      mov ip, #1
00569e98  05 00 a0 e1                                      mov r0, r5
00569e9c  18 20 8d e2                                      add r2, sp, #0x18
00569ea0  1c 30 8d e2                                      add r3, sp, #0x1c
00569ea4  04 c0 8d e5                                      str ip, [sp, #4]
00569ea8  00 c0 8d e5                                      str ip, [sp]
00569eac  6d e5 ff eb                                      bl #0x563468
00569eb0  ed ff ff ea                                      b #0x569e6c
; mapping-symbol data/literal pool
00569eb4  54 ac 42 00 f0 0e 00 00                          .byte 0x54, 0xac, 0x42, 0x00, 0xf0, 0x0e, 0x00, 0x00

; FUNCTION 0x00569ebc, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11addVector4dEPKcRKNS_4core8vector4dIfEEb
; demangled: glitch::io::CAttributes::addVector4d(char const*, glitch::core::vector4d<float> const&, bool)
; decoder-mode: arm
00569ebc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00569ec0  01 40 a0 e1                                      mov r4, r1
00569ec4  48 50 90 e5                                      ldr r5, [r0, #0x48]
00569ec8  10 d0 4d e2                                      sub sp, sp, #0x10
00569ecc  00 10 a0 e3                                      mov r1, #0
00569ed0  44 00 a0 e3                                      mov r0, #0x44
00569ed4  02 80 a0 e1                                      mov r8, r2
00569ed8  03 70 a0 e1                                      mov r7, r3
00569edc  b2 28 ff eb                                      bl #0x5341ac
00569ee0  04 10 a0 e1                                      mov r1, r4
00569ee4  07 30 a0 e1                                      mov r3, r7
00569ee8  08 20 a0 e1                                      mov r2, r8
00569eec  60 40 9f e5                                      ldr r4, [pc, #0x60]
00569ef0  00 60 a0 e1                                      mov r6, r0
00569ef4  6c f2 ff eb                                      bl #0x5668ac
00569ef8  58 30 9f e5                                      ldr r3, [pc, #0x58]
00569efc  04 40 8f e0                                      add r4, pc, r4
00569f00  03 30 94 e7                                      ldr r3, [r4, r3]
00569f04  08 30 83 e2                                      add r3, r3, #8
00569f08  00 30 86 e5                                      str r3, [r6]
00569f0c  08 60 8d e5                                      str r6, [sp, #8]
00569f10  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569f14  03 00 51 e1                                      cmp r1, r3
00569f18  05 00 00 0a                                      beq #0x569f34
00569f1c  00 60 81 e5                                      str r6, [r1]
00569f20  04 30 95 e5                                      ldr r3, [r5, #4]
00569f24  04 30 83 e2                                      add r3, r3, #4
00569f28  04 30 85 e5                                      str r3, [r5, #4]
00569f2c  10 d0 8d e2                                      add sp, sp, #0x10
00569f30  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00569f34  01 c0 a0 e3                                      mov ip, #1
00569f38  05 00 a0 e1                                      mov r0, r5
00569f3c  08 20 8d e2                                      add r2, sp, #8
00569f40  0c 30 8d e2                                      add r3, sp, #0xc
00569f44  04 c0 8d e5                                      str ip, [sp, #4]
00569f48  00 c0 8d e5                                      str ip, [sp]
00569f4c  45 e5 ff eb                                      bl #0x563468
00569f50  f5 ff ff ea                                      b #0x569f2c
; mapping-symbol data/literal pool
00569f54  94 ab 42 00 f0 0e 00 00                          .byte 0x94, 0xab, 0x42, 0x00, 0xf0, 0x0e, 0x00, 0x00

; FUNCTION 0x00569f5c, declared_size=212, range_size=212, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes19addStringAsVector3dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsVector3d(char const*, wchar_t const*, bool)
; decoder-mode: arm
00569f5c  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00569f60  00 c0 a0 e3                                      mov ip, #0
00569f64  20 d0 4d e2                                      sub sp, sp, #0x20
00569f68  14 c0 8d e5                                      str ip, [sp, #0x14]
00569f6c  0c c0 8d e5                                      str ip, [sp, #0xc]
00569f70  10 c0 8d e5                                      str ip, [sp, #0x10]
00569f74  00 70 a0 e1                                      mov r7, r0
00569f78  01 80 a0 e1                                      mov r8, r1
00569f7c  44 00 a0 e3                                      mov r0, #0x44
00569f80  00 10 a0 e3                                      mov r1, #0
00569f84  48 50 97 e5                                      ldr r5, [r7, #0x48]
00569f88  03 a0 a0 e1                                      mov sl, r3
00569f8c  02 90 a0 e1                                      mov sb, r2
00569f90  85 28 ff eb                                      bl #0x5341ac
00569f94  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
00569f98  08 10 a0 e1                                      mov r1, r8
00569f9c  0a 30 a0 e1                                      mov r3, sl
00569fa0  0c 20 8d e2                                      add r2, sp, #0xc
00569fa4  00 60 a0 e1                                      mov r6, r0
00569fa8  b5 f2 ff eb                                      bl #0x566a84
00569fac  78 30 9f e5                                      ldr r3, [pc, #0x78]
00569fb0  04 40 8f e0                                      add r4, pc, r4
00569fb4  03 30 94 e7                                      ldr r3, [r4, r3]
00569fb8  08 30 83 e2                                      add r3, r3, #8
00569fbc  00 30 86 e5                                      str r3, [r6]
00569fc0  18 60 8d e5                                      str r6, [sp, #0x18]
00569fc4  0a 00 95 e9                                      ldmib r5, {r1, r3}
00569fc8  03 00 51 e1                                      cmp r1, r3
00569fcc  0d 00 00 0a                                      beq #0x56a008
00569fd0  00 60 81 e5                                      str r6, [r1]
00569fd4  04 30 95 e5                                      ldr r3, [r5, #4]
00569fd8  04 30 83 e2                                      add r3, r3, #4
00569fdc  04 30 85 e5                                      str r3, [r5, #4]
00569fe0  48 30 97 e5                                      ldr r3, [r7, #0x48]
00569fe4  09 10 a0 e1                                      mov r1, sb
00569fe8  04 30 93 e5                                      ldr r3, [r3, #4]
00569fec  04 30 13 e5                                      ldr r3, [r3, #-4]
00569ff0  03 00 a0 e1                                      mov r0, r3
00569ff4  00 30 93 e5                                      ldr r3, [r3]
00569ff8  0f e0 a0 e1                                      mov lr, pc
00569ffc  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056a000  20 d0 8d e2                                      add sp, sp, #0x20
0056a004  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056a008  01 c0 a0 e3                                      mov ip, #1
0056a00c  05 00 a0 e1                                      mov r0, r5
0056a010  18 20 8d e2                                      add r2, sp, #0x18
0056a014  1c 30 8d e2                                      add r3, sp, #0x1c
0056a018  04 c0 8d e5                                      str ip, [sp, #4]
0056a01c  00 c0 8d e5                                      str ip, [sp]
0056a020  10 e5 ff eb                                      bl #0x563468
0056a024  ed ff ff ea                                      b #0x569fe0
; mapping-symbol data/literal pool
0056a028  e0 aa 42 00 d8 4a 00 00                          .byte 0xe0, 0xaa, 0x42, 0x00, 0xd8, 0x4a, 0x00, 0x00

; FUNCTION 0x0056a030, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11addVector3dEPKcRKNS_4core8vector3dIfEEb
; demangled: glitch::io::CAttributes::addVector3d(char const*, glitch::core::vector3d<float> const&, bool)
; decoder-mode: arm
0056a030  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056a034  01 40 a0 e1                                      mov r4, r1
0056a038  48 50 90 e5                                      ldr r5, [r0, #0x48]
0056a03c  10 d0 4d e2                                      sub sp, sp, #0x10
0056a040  00 10 a0 e3                                      mov r1, #0
0056a044  44 00 a0 e3                                      mov r0, #0x44
0056a048  02 80 a0 e1                                      mov r8, r2
0056a04c  03 70 a0 e1                                      mov r7, r3
0056a050  55 28 ff eb                                      bl #0x5341ac
0056a054  04 10 a0 e1                                      mov r1, r4
0056a058  07 30 a0 e1                                      mov r3, r7
0056a05c  08 20 a0 e1                                      mov r2, r8
0056a060  60 40 9f e5                                      ldr r4, [pc, #0x60]
0056a064  00 60 a0 e1                                      mov r6, r0
0056a068  85 f2 ff eb                                      bl #0x566a84
0056a06c  58 30 9f e5                                      ldr r3, [pc, #0x58]
0056a070  04 40 8f e0                                      add r4, pc, r4
0056a074  03 30 94 e7                                      ldr r3, [r4, r3]
0056a078  08 30 83 e2                                      add r3, r3, #8
0056a07c  00 30 86 e5                                      str r3, [r6]
0056a080  08 60 8d e5                                      str r6, [sp, #8]
0056a084  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a088  03 00 51 e1                                      cmp r1, r3
0056a08c  05 00 00 0a                                      beq #0x56a0a8
0056a090  00 60 81 e5                                      str r6, [r1]
0056a094  04 30 95 e5                                      ldr r3, [r5, #4]
0056a098  04 30 83 e2                                      add r3, r3, #4
0056a09c  04 30 85 e5                                      str r3, [r5, #4]
0056a0a0  10 d0 8d e2                                      add sp, sp, #0x10
0056a0a4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056a0a8  01 c0 a0 e3                                      mov ip, #1
0056a0ac  05 00 a0 e1                                      mov r0, r5
0056a0b0  08 20 8d e2                                      add r2, sp, #8
0056a0b4  0c 30 8d e2                                      add r3, sp, #0xc
0056a0b8  04 c0 8d e5                                      str ip, [sp, #4]
0056a0bc  00 c0 8d e5                                      str ip, [sp]
0056a0c0  e8 e4 ff eb                                      bl #0x563468
0056a0c4  f5 ff ff ea                                      b #0x56a0a0
; mapping-symbol data/literal pool
0056a0c8  20 aa 42 00 d8 4a 00 00                          .byte 0x20, 0xaa, 0x42, 0x00, 0xd8, 0x4a, 0x00, 0x00

; FUNCTION 0x0056a0d0, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes19addStringAsVector2dEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsVector2d(char const*, wchar_t const*, bool)
; decoder-mode: arm
0056a0d0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056a0d4  00 c0 a0 e3                                      mov ip, #0
0056a0d8  18 d0 4d e2                                      sub sp, sp, #0x18
0056a0dc  0c c0 8d e5                                      str ip, [sp, #0xc]
0056a0e0  08 c0 8d e5                                      str ip, [sp, #8]
0056a0e4  00 70 a0 e1                                      mov r7, r0
0056a0e8  01 80 a0 e1                                      mov r8, r1
0056a0ec  44 00 a0 e3                                      mov r0, #0x44
0056a0f0  00 10 a0 e3                                      mov r1, #0
0056a0f4  48 50 97 e5                                      ldr r5, [r7, #0x48]
0056a0f8  03 a0 a0 e1                                      mov sl, r3
0056a0fc  02 90 a0 e1                                      mov sb, r2
0056a100  29 28 ff eb                                      bl #0x5341ac
0056a104  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
0056a108  08 10 a0 e1                                      mov r1, r8
0056a10c  0a 30 a0 e1                                      mov r3, sl
0056a110  08 20 8d e2                                      add r2, sp, #8
0056a114  00 60 a0 e1                                      mov r6, r0
0056a118  d8 ed ff eb                                      bl #0x565880
0056a11c  78 30 9f e5                                      ldr r3, [pc, #0x78]
0056a120  04 40 8f e0                                      add r4, pc, r4
0056a124  03 30 94 e7                                      ldr r3, [r4, r3]
0056a128  08 30 83 e2                                      add r3, r3, #8
0056a12c  00 30 86 e5                                      str r3, [r6]
0056a130  10 60 8d e5                                      str r6, [sp, #0x10]
0056a134  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a138  03 00 51 e1                                      cmp r1, r3
0056a13c  0d 00 00 0a                                      beq #0x56a178
0056a140  00 60 81 e5                                      str r6, [r1]
0056a144  04 30 95 e5                                      ldr r3, [r5, #4]
0056a148  04 30 83 e2                                      add r3, r3, #4
0056a14c  04 30 85 e5                                      str r3, [r5, #4]
0056a150  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056a154  09 10 a0 e1                                      mov r1, sb
0056a158  04 30 93 e5                                      ldr r3, [r3, #4]
0056a15c  04 30 13 e5                                      ldr r3, [r3, #-4]
0056a160  03 00 a0 e1                                      mov r0, r3
0056a164  00 30 93 e5                                      ldr r3, [r3]
0056a168  0f e0 a0 e1                                      mov lr, pc
0056a16c  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056a170  18 d0 8d e2                                      add sp, sp, #0x18
0056a174  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056a178  01 c0 a0 e3                                      mov ip, #1
0056a17c  05 00 a0 e1                                      mov r0, r5
0056a180  10 20 8d e2                                      add r2, sp, #0x10
0056a184  14 30 8d e2                                      add r3, sp, #0x14
0056a188  04 c0 8d e5                                      str ip, [sp, #4]
0056a18c  00 c0 8d e5                                      str ip, [sp]
0056a190  b4 e4 ff eb                                      bl #0x563468
0056a194  ed ff ff ea                                      b #0x56a150
; mapping-symbol data/literal pool
0056a198  70 a9 42 00 84 0b 00 00                          .byte 0x70, 0xa9, 0x42, 0x00, 0x84, 0x0b, 0x00, 0x00

; FUNCTION 0x0056a1a0, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes11addVector2dEPKcRKNS_4core8vector2dIfEEb
; demangled: glitch::io::CAttributes::addVector2d(char const*, glitch::core::vector2d<float> const&, bool)
; decoder-mode: arm
0056a1a0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056a1a4  01 40 a0 e1                                      mov r4, r1
0056a1a8  48 50 90 e5                                      ldr r5, [r0, #0x48]
0056a1ac  10 d0 4d e2                                      sub sp, sp, #0x10
0056a1b0  00 10 a0 e3                                      mov r1, #0
0056a1b4  44 00 a0 e3                                      mov r0, #0x44
0056a1b8  02 80 a0 e1                                      mov r8, r2
0056a1bc  03 70 a0 e1                                      mov r7, r3
0056a1c0  f9 27 ff eb                                      bl #0x5341ac
0056a1c4  04 10 a0 e1                                      mov r1, r4
0056a1c8  07 30 a0 e1                                      mov r3, r7
0056a1cc  08 20 a0 e1                                      mov r2, r8
0056a1d0  60 40 9f e5                                      ldr r4, [pc, #0x60]
0056a1d4  00 60 a0 e1                                      mov r6, r0
0056a1d8  a8 ed ff eb                                      bl #0x565880
0056a1dc  58 30 9f e5                                      ldr r3, [pc, #0x58]
0056a1e0  04 40 8f e0                                      add r4, pc, r4
0056a1e4  03 30 94 e7                                      ldr r3, [r4, r3]
0056a1e8  08 30 83 e2                                      add r3, r3, #8
0056a1ec  00 30 86 e5                                      str r3, [r6]
0056a1f0  08 60 8d e5                                      str r6, [sp, #8]
0056a1f4  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a1f8  03 00 51 e1                                      cmp r1, r3
0056a1fc  05 00 00 0a                                      beq #0x56a218
0056a200  00 60 81 e5                                      str r6, [r1]
0056a204  04 30 95 e5                                      ldr r3, [r5, #4]
0056a208  04 30 83 e2                                      add r3, r3, #4
0056a20c  04 30 85 e5                                      str r3, [r5, #4]
0056a210  10 d0 8d e2                                      add sp, sp, #0x10
0056a214  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056a218  01 c0 a0 e3                                      mov ip, #1
0056a21c  05 00 a0 e1                                      mov r0, r5
0056a220  08 20 8d e2                                      add r2, sp, #8
0056a224  0c 30 8d e2                                      add r3, sp, #0xc
0056a228  04 c0 8d e5                                      str ip, [sp, #4]
0056a22c  00 c0 8d e5                                      str ip, [sp]
0056a230  8c e4 ff eb                                      bl #0x563468
0056a234  f5 ff ff ea                                      b #0x56a210
; mapping-symbol data/literal pool
0056a238  b0 a8 42 00 84 0b 00 00                          .byte 0xb0, 0xa8, 0x42, 0x00, 0x84, 0x0b, 0x00, 0x00

; FUNCTION 0x0056a240, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes17addStringAsColorfEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsColorf(char const*, wchar_t const*, bool)
; decoder-mode: arm
0056a240  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056a244  01 40 a0 e1                                      mov r4, r1
0056a248  24 d0 4d e2                                      sub sp, sp, #0x24
0056a24c  00 70 a0 e1                                      mov r7, r0
0056a250  00 10 a0 e3                                      mov r1, #0
0056a254  44 00 a0 e3                                      mov r0, #0x44
0056a258  48 50 97 e5                                      ldr r5, [r7, #0x48]
0056a25c  02 a0 a0 e1                                      mov sl, r2
0056a260  03 80 a0 e1                                      mov r8, r3
0056a264  d0 27 ff eb                                      bl #0x5341ac
0056a268  00 c0 a0 e3                                      mov ip, #0
0056a26c  20 20 8d e2                                      add r2, sp, #0x20
0056a270  04 10 a0 e1                                      mov r1, r4
0056a274  08 30 a0 e1                                      mov r3, r8
0056a278  fe e5 a0 e3                                      mov lr, #0x3f800000
0056a27c  18 c0 22 e5                                      str ip, [r2, #-0x18]!
0056a280  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
0056a284  00 60 a0 e1                                      mov r6, r0
0056a288  14 e0 8d e5                                      str lr, [sp, #0x14]
0056a28c  10 c0 8d e5                                      str ip, [sp, #0x10]
0056a290  0c c0 8d e5                                      str ip, [sp, #0xc]
0056a294  ee ed ff eb                                      bl #0x565a54
0056a298  78 30 9f e5                                      ldr r3, [pc, #0x78]
0056a29c  04 40 8f e0                                      add r4, pc, r4
0056a2a0  03 30 94 e7                                      ldr r3, [r4, r3]
0056a2a4  08 30 83 e2                                      add r3, r3, #8
0056a2a8  00 30 86 e5                                      str r3, [r6]
0056a2ac  18 60 8d e5                                      str r6, [sp, #0x18]
0056a2b0  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a2b4  03 00 51 e1                                      cmp r1, r3
0056a2b8  0d 00 00 0a                                      beq #0x56a2f4
0056a2bc  00 60 81 e5                                      str r6, [r1]
0056a2c0  04 30 95 e5                                      ldr r3, [r5, #4]
0056a2c4  04 30 83 e2                                      add r3, r3, #4
0056a2c8  04 30 85 e5                                      str r3, [r5, #4]
0056a2cc  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056a2d0  0a 10 a0 e1                                      mov r1, sl
0056a2d4  04 30 93 e5                                      ldr r3, [r3, #4]
0056a2d8  04 30 13 e5                                      ldr r3, [r3, #-4]
0056a2dc  03 00 a0 e1                                      mov r0, r3
0056a2e0  00 30 93 e5                                      ldr r3, [r3]
0056a2e4  0f e0 a0 e1                                      mov lr, pc
0056a2e8  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056a2ec  24 d0 8d e2                                      add sp, sp, #0x24
0056a2f0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056a2f4  01 c0 a0 e3                                      mov ip, #1
0056a2f8  05 00 a0 e1                                      mov r0, r5
0056a2fc  18 20 8d e2                                      add r2, sp, #0x18
0056a300  1c 30 8d e2                                      add r3, sp, #0x1c
0056a304  04 c0 8d e5                                      str ip, [sp, #4]
0056a308  00 c0 8d e5                                      str ip, [sp]
0056a30c  55 e4 ff eb                                      bl #0x563468
0056a310  ed ff ff ea                                      b #0x56a2cc
; mapping-symbol data/literal pool
0056a314  f4 a7 42 00 c0 24 00 00                          .byte 0xf4, 0xa7, 0x42, 0x00, 0xc0, 0x24, 0x00, 0x00

; FUNCTION 0x0056a31c, declared_size=208, range_size=208, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addColorfEPKcNS_5video7SColorfEb
; demangled: glitch::io::CAttributes::addColorf(char const*, glitch::video::SColorf, bool)
; decoder-mode: arm
0056a31c  08 d0 4d e2                                      sub sp, sp, #8
0056a320  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056a324  24 d0 4d e2                                      sub sp, sp, #0x24
0056a328  48 20 8d e5                                      str r2, [sp, #0x48]
0056a32c  4c 30 8d e5                                      str r3, [sp, #0x4c]
0056a330  48 50 90 e5                                      ldr r5, [r0, #0x48]
0056a334  01 90 a0 e1                                      mov sb, r1
0056a338  44 00 a0 e3                                      mov r0, #0x44
0056a33c  00 10 a0 e3                                      mov r1, #0
0056a340  58 40 dd e5                                      ldrb r4, [sp, #0x58]
0056a344  48 b0 9d e5                                      ldr fp, [sp, #0x48]
0056a348  4c a0 9d e5                                      ldr sl, [sp, #0x4c]
0056a34c  50 80 9d e5                                      ldr r8, [sp, #0x50]
0056a350  54 70 9d e5                                      ldr r7, [sp, #0x54]
0056a354  94 27 ff eb                                      bl #0x5341ac
0056a358  20 20 8d e2                                      add r2, sp, #0x20
0056a35c  04 30 a0 e1                                      mov r3, r4
0056a360  09 10 a0 e1                                      mov r1, sb
0056a364  18 b0 22 e5                                      str fp, [r2, #-0x18]!
0056a368  74 40 9f e5                                      ldr r4, [pc, #0x74]
0056a36c  00 60 a0 e1                                      mov r6, r0
0056a370  14 70 8d e5                                      str r7, [sp, #0x14]
0056a374  10 80 8d e5                                      str r8, [sp, #0x10]
0056a378  0c a0 8d e5                                      str sl, [sp, #0xc]
0056a37c  b4 ed ff eb                                      bl #0x565a54
0056a380  60 30 9f e5                                      ldr r3, [pc, #0x60]
0056a384  04 40 8f e0                                      add r4, pc, r4
0056a388  03 30 94 e7                                      ldr r3, [r4, r3]
0056a38c  08 30 83 e2                                      add r3, r3, #8
0056a390  00 30 86 e5                                      str r3, [r6]
0056a394  18 60 8d e5                                      str r6, [sp, #0x18]
0056a398  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a39c  03 00 51 e1                                      cmp r1, r3
0056a3a0  07 00 00 0a                                      beq #0x56a3c4
0056a3a4  00 60 81 e5                                      str r6, [r1]
0056a3a8  04 30 95 e5                                      ldr r3, [r5, #4]
0056a3ac  04 30 83 e2                                      add r3, r3, #4
0056a3b0  04 30 85 e5                                      str r3, [r5, #4]
0056a3b4  24 d0 8d e2                                      add sp, sp, #0x24
0056a3b8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056a3bc  08 d0 8d e2                                      add sp, sp, #8
0056a3c0  1e ff 2f e1                                      bx lr
0056a3c4  01 c0 a0 e3                                      mov ip, #1
0056a3c8  05 00 a0 e1                                      mov r0, r5
0056a3cc  18 20 8d e2                                      add r2, sp, #0x18
0056a3d0  1c 30 8d e2                                      add r3, sp, #0x1c
0056a3d4  04 c0 8d e5                                      str ip, [sp, #4]
0056a3d8  00 c0 8d e5                                      str ip, [sp]
0056a3dc  21 e4 ff eb                                      bl #0x563468
0056a3e0  f3 ff ff ea                                      b #0x56a3b4
; mapping-symbol data/literal pool
0056a3e4  0c a7 42 00 c0 24 00 00                          .byte 0x0c, 0xa7, 0x42, 0x00, 0xc0, 0x24, 0x00, 0x00

; FUNCTION 0x0056a3ec, declared_size=316, range_size=316, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes16addStringAsColorEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsColor(char const*, wchar_t const*, bool)
; decoder-mode: arm
0056a3ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056a3f0  00 70 a0 e1                                      mov r7, r0
0056a3f4  2c d0 4d e2                                      sub sp, sp, #0x2c
0056a3f8  00 00 a0 e3                                      mov r0, #0
0056a3fc  03 40 a0 e1                                      mov r4, r3
0056a400  0c 20 8d e5                                      str r2, [sp, #0xc]
0056a404  01 90 a0 e1                                      mov sb, r1
0056a408  55 91 f6 eb                                      bl #0x30e964
0056a40c  81 10 08 e3                                      movw r1, #0x8081
0056a410  80 1b 43 e3                                      movt r1, #0x3b80
0056a414  54 92 f6 eb                                      bl #0x30ed6c
0056a418  00 b0 a0 e1                                      mov fp, r0
0056a41c  00 00 a0 e3                                      mov r0, #0
0056a420  4f 91 f6 eb                                      bl #0x30e964
0056a424  81 10 08 e3                                      movw r1, #0x8081
0056a428  80 1b 43 e3                                      movt r1, #0x3b80
0056a42c  4e 92 f6 eb                                      bl #0x30ed6c
0056a430  00 c0 a0 e1                                      mov ip, r0
0056a434  00 00 a0 e3                                      mov r0, #0
0056a438  08 c0 8d e5                                      str ip, [sp, #8]
0056a43c  48 91 f6 eb                                      bl #0x30e964
0056a440  81 10 08 e3                                      movw r1, #0x8081
0056a444  80 1b 43 e3                                      movt r1, #0x3b80
0056a448  47 92 f6 eb                                      bl #0x30ed6c
0056a44c  00 a0 a0 e1                                      mov sl, r0
0056a450  00 00 a0 e3                                      mov r0, #0
0056a454  42 91 f6 eb                                      bl #0x30e964
0056a458  81 10 08 e3                                      movw r1, #0x8081
0056a45c  80 1b 43 e3                                      movt r1, #0x3b80
0056a460  41 92 f6 eb                                      bl #0x30ed6c
0056a464  00 10 a0 e3                                      mov r1, #0
0056a468  00 80 a0 e1                                      mov r8, r0
0056a46c  44 00 a0 e3                                      mov r0, #0x44
0056a470  48 50 97 e5                                      ldr r5, [r7, #0x48]
0056a474  4c 27 ff eb                                      bl #0x5341ac
0056a478  28 20 8d e2                                      add r2, sp, #0x28
0056a47c  18 b0 22 e5                                      str fp, [r2, #-0x18]!
0056a480  08 c0 9d e5                                      ldr ip, [sp, #8]
0056a484  04 30 a0 e1                                      mov r3, r4
0056a488  09 10 a0 e1                                      mov r1, sb
0056a48c  8c 40 9f e5                                      ldr r4, [pc, #0x8c]
0056a490  00 60 a0 e1                                      mov r6, r0
0056a494  1c 80 8d e5                                      str r8, [sp, #0x1c]
0056a498  18 a0 8d e5                                      str sl, [sp, #0x18]
0056a49c  14 c0 8d e5                                      str ip, [sp, #0x14]
0056a4a0  6b ed ff eb                                      bl #0x565a54
0056a4a4  78 30 9f e5                                      ldr r3, [pc, #0x78]
0056a4a8  04 40 8f e0                                      add r4, pc, r4
0056a4ac  03 30 94 e7                                      ldr r3, [r4, r3]
0056a4b0  08 30 83 e2                                      add r3, r3, #8
0056a4b4  00 30 86 e5                                      str r3, [r6]
0056a4b8  20 60 8d e5                                      str r6, [sp, #0x20]
0056a4bc  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a4c0  03 00 51 e1                                      cmp r1, r3
0056a4c4  0d 00 00 0a                                      beq #0x56a500
0056a4c8  00 60 81 e5                                      str r6, [r1]
0056a4cc  04 30 95 e5                                      ldr r3, [r5, #4]
0056a4d0  04 30 83 e2                                      add r3, r3, #4
0056a4d4  04 30 85 e5                                      str r3, [r5, #4]
0056a4d8  48 30 97 e5                                      ldr r3, [r7, #0x48]
0056a4dc  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0056a4e0  04 30 93 e5                                      ldr r3, [r3, #4]
0056a4e4  04 30 13 e5                                      ldr r3, [r3, #-4]
0056a4e8  03 00 a0 e1                                      mov r0, r3
0056a4ec  00 30 93 e5                                      ldr r3, [r3]
0056a4f0  0f e0 a0 e1                                      mov lr, pc
0056a4f4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056a4f8  2c d0 8d e2                                      add sp, sp, #0x2c
0056a4fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056a500  01 c0 a0 e3                                      mov ip, #1
0056a504  05 00 a0 e1                                      mov r0, r5
0056a508  20 20 8d e2                                      add r2, sp, #0x20
0056a50c  24 30 8d e2                                      add r3, sp, #0x24
0056a510  04 c0 8d e5                                      str ip, [sp, #4]
0056a514  00 c0 8d e5                                      str ip, [sp]
0056a518  d2 e3 ff eb                                      bl #0x563468
0056a51c  ed ff ff ea                                      b #0x56a4d8
; mapping-symbol data/literal pool
0056a520  e8 a5 42 00 38 16 00 00                          .byte 0xe8, 0xa5, 0x42, 0x00, 0x38, 0x16, 0x00, 0x00

; FUNCTION 0x0056a528, declared_size=272, range_size=272, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8addColorEPKcNS_5video6SColorEb
; demangled: glitch::io::CAttributes::addColor(char const*, glitch::video::SColor, bool)
; decoder-mode: arm
0056a528  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056a52c  2c d0 4d e2                                      sub sp, sp, #0x2c
0056a530  0c 20 8d e5                                      str r2, [sp, #0xc]
0056a534  48 50 90 e5                                      ldr r5, [r0, #0x48]
0056a538  0c 00 dd e5                                      ldrb r0, [sp, #0xc]
0056a53c  03 40 a0 e1                                      mov r4, r3
0056a540  01 90 a0 e1                                      mov sb, r1
0056a544  06 91 f6 eb                                      bl #0x30e964
0056a548  81 10 08 e3                                      movw r1, #0x8081
0056a54c  80 1b 43 e3                                      movt r1, #0x3b80
0056a550  05 92 f6 eb                                      bl #0x30ed6c
0056a554  00 b0 a0 e1                                      mov fp, r0
0056a558  0d 00 dd e5                                      ldrb r0, [sp, #0xd]
0056a55c  00 91 f6 eb                                      bl #0x30e964
0056a560  81 10 08 e3                                      movw r1, #0x8081
0056a564  80 1b 43 e3                                      movt r1, #0x3b80
0056a568  ff 91 f6 eb                                      bl #0x30ed6c
0056a56c  00 a0 a0 e1                                      mov sl, r0
0056a570  0e 00 dd e5                                      ldrb r0, [sp, #0xe]
0056a574  fa 90 f6 eb                                      bl #0x30e964
0056a578  81 10 08 e3                                      movw r1, #0x8081
0056a57c  80 1b 43 e3                                      movt r1, #0x3b80
0056a580  f9 91 f6 eb                                      bl #0x30ed6c
0056a584  00 80 a0 e1                                      mov r8, r0
0056a588  0f 00 dd e5                                      ldrb r0, [sp, #0xf]
0056a58c  f4 90 f6 eb                                      bl #0x30e964
0056a590  81 10 08 e3                                      movw r1, #0x8081
0056a594  80 1b 43 e3                                      movt r1, #0x3b80
0056a598  f3 91 f6 eb                                      bl #0x30ed6c
0056a59c  00 10 a0 e3                                      mov r1, #0
0056a5a0  00 70 a0 e1                                      mov r7, r0
0056a5a4  44 00 a0 e3                                      mov r0, #0x44
0056a5a8  ff 26 ff eb                                      bl #0x5341ac
0056a5ac  28 20 8d e2                                      add r2, sp, #0x28
0056a5b0  04 30 a0 e1                                      mov r3, r4
0056a5b4  09 10 a0 e1                                      mov r1, sb
0056a5b8  18 b0 22 e5                                      str fp, [r2, #-0x18]!
0056a5bc  6c 40 9f e5                                      ldr r4, [pc, #0x6c]
0056a5c0  00 60 a0 e1                                      mov r6, r0
0056a5c4  1c 70 8d e5                                      str r7, [sp, #0x1c]
0056a5c8  18 80 8d e5                                      str r8, [sp, #0x18]
0056a5cc  14 a0 8d e5                                      str sl, [sp, #0x14]
0056a5d0  1f ed ff eb                                      bl #0x565a54
0056a5d4  58 30 9f e5                                      ldr r3, [pc, #0x58]
0056a5d8  04 40 8f e0                                      add r4, pc, r4
0056a5dc  03 30 94 e7                                      ldr r3, [r4, r3]
0056a5e0  08 30 83 e2                                      add r3, r3, #8
0056a5e4  00 30 86 e5                                      str r3, [r6]
0056a5e8  20 60 8d e5                                      str r6, [sp, #0x20]
0056a5ec  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056a5f0  03 00 51 e1                                      cmp r1, r3
0056a5f4  05 00 00 0a                                      beq #0x56a610
0056a5f8  00 60 81 e5                                      str r6, [r1]
0056a5fc  04 30 95 e5                                      ldr r3, [r5, #4]
0056a600  04 30 83 e2                                      add r3, r3, #4
0056a604  04 30 85 e5                                      str r3, [r5, #4]
0056a608  2c d0 8d e2                                      add sp, sp, #0x2c
0056a60c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056a610  01 c0 a0 e3                                      mov ip, #1
0056a614  05 00 a0 e1                                      mov r0, r5
0056a618  20 20 8d e2                                      add r2, sp, #0x20
0056a61c  24 30 8d e2                                      add r3, sp, #0x24
0056a620  04 c0 8d e5                                      str ip, [sp, #4]
0056a624  00 c0 8d e5                                      str ip, [sp]
0056a628  8e e3 ff eb                                      bl #0x563468
0056a62c  f5 ff ff ea                                      b #0x56a608
; mapping-symbol data/literal pool
0056a630  b8 a4 42 00 38 16 00 00                          .byte 0xb8, 0xa4, 0x42, 0x00, 0x38, 0x16, 0x00, 0x00

; FUNCTION 0x0056a638, declared_size=212, range_size=212, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes17addStringAsMatrixEPKcPKwb
; demangled: glitch::io::CAttributes::addStringAsMatrix(char const*, wchar_t const*, bool)
; decoder-mode: arm
0056a638  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056a63c  5c d0 4d e2                                      sub sp, sp, #0x5c
0056a640  00 70 a0 e3                                      mov r7, #0
0056a644  0c 60 8d e2                                      add r6, sp, #0xc
0056a648  00 50 a0 e1                                      mov r5, r0
0056a64c  01 90 a0 e1                                      mov sb, r1
0056a650  02 b0 a0 e1                                      mov fp, r2
0056a654  07 10 a0 e1                                      mov r1, r7
0056a658  40 20 a0 e3                                      mov r2, #0x40
0056a65c  06 00 a0 e1                                      mov r0, r6
0056a660  03 a0 a0 e1                                      mov sl, r3
0056a664  48 40 95 e5                                      ldr r4, [r5, #0x48]
0056a668  01 80 a0 e3                                      mov r8, #1
0056a66c  7b 8f f6 eb                                      bl #0x30e460
0056a670  fe 35 a0 e3                                      mov r3, #0x3f800000
0056a674  07 10 a0 e1                                      mov r1, r7
0056a678  44 00 a0 e3                                      mov r0, #0x44
0056a67c  48 30 8d e5                                      str r3, [sp, #0x48]
0056a680  0c 30 8d e5                                      str r3, [sp, #0xc]
0056a684  20 30 8d e5                                      str r3, [sp, #0x20]
0056a688  34 30 8d e5                                      str r3, [sp, #0x34]
0056a68c  4c 80 cd e5                                      strb r8, [sp, #0x4c]
0056a690  c5 26 ff eb                                      bl #0x5341ac
0056a694  09 10 a0 e1                                      mov r1, sb
0056a698  00 70 a0 e1                                      mov r7, r0
0056a69c  0a 30 a0 e1                                      mov r3, sl
0056a6a0  06 20 a0 e1                                      mov r2, r6
0056a6a4  67 f0 ff eb                                      bl #0x566848
0056a6a8  50 70 8d e5                                      str r7, [sp, #0x50]
0056a6ac  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056a6b0  03 00 51 e1                                      cmp r1, r3
0056a6b4  0d 00 00 0a                                      beq #0x56a6f0
0056a6b8  00 70 81 e5                                      str r7, [r1]
0056a6bc  04 30 94 e5                                      ldr r3, [r4, #4]
0056a6c0  04 30 83 e2                                      add r3, r3, #4
0056a6c4  04 30 84 e5                                      str r3, [r4, #4]
0056a6c8  48 30 95 e5                                      ldr r3, [r5, #0x48]
0056a6cc  0b 10 a0 e1                                      mov r1, fp
0056a6d0  04 30 93 e5                                      ldr r3, [r3, #4]
0056a6d4  04 30 13 e5                                      ldr r3, [r3, #-4]
0056a6d8  03 00 a0 e1                                      mov r0, r3
0056a6dc  00 30 93 e5                                      ldr r3, [r3]
0056a6e0  0f e0 a0 e1                                      mov lr, pc
0056a6e4  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056a6e8  5c d0 8d e2                                      add sp, sp, #0x5c
0056a6ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056a6f0  04 00 a0 e1                                      mov r0, r4
0056a6f4  50 20 8d e2                                      add r2, sp, #0x50
0056a6f8  54 30 8d e2                                      add r3, sp, #0x54
0056a6fc  04 80 8d e5                                      str r8, [sp, #4]
0056a700  00 80 8d e5                                      str r8, [sp]
0056a704  57 e3 ff eb                                      bl #0x563468
0056a708  ee ff ff ea                                      b #0x56a6c8

; FUNCTION 0x0056a70c, declared_size=140, range_size=140, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addMatrixEPKcRKNS_4core8CMatrix4IfEEb
; demangled: glitch::io::CAttributes::addMatrix(char const*, glitch::core::CMatrix4<float> const&, bool)
; decoder-mode: arm
0056a70c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056a710  58 d0 4d e2                                      sub sp, sp, #0x58
0056a714  0c 50 8d e2                                      add r5, sp, #0xc
0056a718  48 40 90 e5                                      ldr r4, [r0, #0x48]
0056a71c  01 70 a0 e1                                      mov r7, r1
0056a720  05 00 a0 e1                                      mov r0, r5
0056a724  02 10 a0 e1                                      mov r1, r2
0056a728  03 80 a0 e1                                      mov r8, r3
0056a72c  08 e5 ff eb                                      bl #0x563b54
0056a730  00 10 a0 e3                                      mov r1, #0
0056a734  44 00 a0 e3                                      mov r0, #0x44
0056a738  9b 26 ff eb                                      bl #0x5341ac
0056a73c  07 10 a0 e1                                      mov r1, r7
0056a740  00 60 a0 e1                                      mov r6, r0
0056a744  08 30 a0 e1                                      mov r3, r8
0056a748  05 20 a0 e1                                      mov r2, r5
0056a74c  3d f0 ff eb                                      bl #0x566848
0056a750  50 60 8d e5                                      str r6, [sp, #0x50]
0056a754  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056a758  03 00 51 e1                                      cmp r1, r3
0056a75c  05 00 00 0a                                      beq #0x56a778
0056a760  00 60 81 e5                                      str r6, [r1]
0056a764  04 30 94 e5                                      ldr r3, [r4, #4]
0056a768  04 30 83 e2                                      add r3, r3, #4
0056a76c  04 30 84 e5                                      str r3, [r4, #4]
0056a770  58 d0 8d e2                                      add sp, sp, #0x58
0056a774  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056a778  01 c0 a0 e3                                      mov ip, #1
0056a77c  04 00 a0 e1                                      mov r0, r4
0056a780  50 20 8d e2                                      add r2, sp, #0x50
0056a784  54 30 8d e2                                      add r3, sp, #0x54
0056a788  04 c0 8d e5                                      str ip, [sp, #4]
0056a78c  00 c0 8d e5                                      str ip, [sp]
0056a790  34 e3 ff eb                                      bl #0x563468
0056a794  f5 ff ff ea                                      b #0x56a770

; FUNCTION 0x0056a798, declared_size=128, range_size=128, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addStringEPKcPKwb
; demangled: glitch::io::CAttributes::addString(char const*, wchar_t const*, bool)
; decoder-mode: arm
0056a798  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056a79c  01 60 a0 e1                                      mov r6, r1
0056a7a0  48 40 90 e5                                      ldr r4, [r0, #0x48]
0056a7a4  10 d0 4d e2                                      sub sp, sp, #0x10
0056a7a8  00 10 a0 e3                                      mov r1, #0
0056a7ac  84 00 a0 e3                                      mov r0, #0x84
0056a7b0  02 80 a0 e1                                      mov r8, r2
0056a7b4  03 70 a0 e1                                      mov r7, r3
0056a7b8  7b 26 ff eb                                      bl #0x5341ac
0056a7bc  06 10 a0 e1                                      mov r1, r6
0056a7c0  00 50 a0 e1                                      mov r5, r0
0056a7c4  07 30 a0 e1                                      mov r3, r7
0056a7c8  08 20 a0 e1                                      mov r2, r8
0056a7cc  0b ed ff eb                                      bl #0x565c00
0056a7d0  08 50 8d e5                                      str r5, [sp, #8]
0056a7d4  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056a7d8  03 00 51 e1                                      cmp r1, r3
0056a7dc  05 00 00 0a                                      beq #0x56a7f8
0056a7e0  00 50 81 e5                                      str r5, [r1]
0056a7e4  04 30 94 e5                                      ldr r3, [r4, #4]
0056a7e8  04 30 83 e2                                      add r3, r3, #4
0056a7ec  04 30 84 e5                                      str r3, [r4, #4]
0056a7f0  10 d0 8d e2                                      add sp, sp, #0x10
0056a7f4  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056a7f8  01 c0 a0 e3                                      mov ip, #1
0056a7fc  04 00 a0 e1                                      mov r0, r4
0056a800  08 20 8d e2                                      add r2, sp, #8
0056a804  0c 30 8d e2                                      add r3, sp, #0xc
0056a808  04 c0 8d e5                                      str ip, [sp, #4]
0056a80c  00 c0 8d e5                                      str ip, [sp]
0056a810  14 e3 ff eb                                      bl #0x563468
0056a814  f5 ff ff ea                                      b #0x56a7f0

; FUNCTION 0x0056a818, declared_size=156, range_size=156, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes9addStringEPKcS3_b
; demangled: glitch::io::CAttributes::addString(char const*, char const*, bool)
; decoder-mode: arm
0056a818  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056a81c  01 80 a0 e1                                      mov r8, r1
0056a820  48 40 90 e5                                      ldr r4, [r0, #0x48]
0056a824  10 d0 4d e2                                      sub sp, sp, #0x10
0056a828  84 00 a0 e3                                      mov r0, #0x84
0056a82c  00 10 a0 e3                                      mov r1, #0
0056a830  02 60 a0 e1                                      mov r6, r2
0056a834  03 70 a0 e1                                      mov r7, r3
0056a838  5b 26 ff eb                                      bl #0x5341ac
0056a83c  00 00 56 e3                                      cmp r6, #0
0056a840  00 50 a0 e1                                      mov r5, r0
0056a844  0e 00 00 0a                                      beq #0x56a884
0056a848  08 10 a0 e1                                      mov r1, r8
0056a84c  07 30 a0 e1                                      mov r3, r7
0056a850  06 20 a0 e1                                      mov r2, r6
0056a854  05 00 a0 e1                                      mov r0, r5
0056a858  40 f5 ff eb                                      bl #0x567d60
0056a85c  08 50 8d e5                                      str r5, [sp, #8]
0056a860  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056a864  03 00 51 e1                                      cmp r1, r3
0056a868  08 00 00 0a                                      beq #0x56a890
0056a86c  00 50 81 e5                                      str r5, [r1]
0056a870  04 30 94 e5                                      ldr r3, [r4, #4]
0056a874  04 30 83 e2                                      add r3, r3, #4
0056a878  04 30 84 e5                                      str r3, [r4, #4]
0056a87c  10 d0 8d e2                                      add sp, sp, #0x10
0056a880  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056a884  24 60 9f e5                                      ldr r6, [pc, #0x24]
0056a888  06 60 8f e0                                      add r6, pc, r6
0056a88c  ed ff ff ea                                      b #0x56a848
0056a890  01 c0 a0 e3                                      mov ip, #1
0056a894  04 00 a0 e1                                      mov r0, r4
0056a898  08 20 8d e2                                      add r2, sp, #8
0056a89c  0c 30 8d e2                                      add r3, sp, #0xc
0056a8a0  04 c0 8d e5                                      str ip, [sp, #4]
0056a8a4  00 c0 8d e5                                      str ip, [sp]
0056a8a8  ee e2 ff eb                                      bl #0x563468
0056a8ac  f2 ff ff ea                                      b #0x56a87c
; mapping-symbol data/literal pool
0056a8b0  80 0f 36 00                                      .byte 0x80, 0x0f, 0x36, 0x00

; FUNCTION 0x0056a8b4, declared_size=148, range_size=148, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes8addArrayEPKcSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEEb
; demangled: glitch::io::CAttributes::addArray(char const*, std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >, bool)
; decoder-mode: arm
0056a8b4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056a8b8  20 d0 4d e2                                      sub sp, sp, #0x20
0056a8bc  0c 50 8d e2                                      add r5, sp, #0xc
0056a8c0  48 40 90 e5                                      ldr r4, [r0, #0x48]
0056a8c4  01 70 a0 e1                                      mov r7, r1
0056a8c8  05 00 a0 e1                                      mov r0, r5
0056a8cc  02 10 a0 e1                                      mov r1, r2
0056a8d0  03 80 a0 e1                                      mov r8, r3
0056a8d4  68 e1 ff eb                                      bl #0x562e7c
0056a8d8  00 10 a0 e3                                      mov r1, #0
0056a8dc  30 00 a0 e3                                      mov r0, #0x30
0056a8e0  31 26 ff eb                                      bl #0x5341ac
0056a8e4  07 10 a0 e1                                      mov r1, r7
0056a8e8  00 60 a0 e1                                      mov r6, r0
0056a8ec  08 30 a0 e1                                      mov r3, r8
0056a8f0  05 20 a0 e1                                      mov r2, r5
0056a8f4  ad eb ff eb                                      bl #0x5657b0
0056a8f8  18 60 8d e5                                      str r6, [sp, #0x18]
0056a8fc  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056a900  03 00 51 e1                                      cmp r1, r3
0056a904  07 00 00 0a                                      beq #0x56a928
0056a908  00 60 81 e5                                      str r6, [r1]
0056a90c  04 30 94 e5                                      ldr r3, [r4, #4]
0056a910  04 30 83 e2                                      add r3, r3, #4
0056a914  04 30 84 e5                                      str r3, [r4, #4]
0056a918  05 00 a0 e1                                      mov r0, r5
0056a91c  79 98 ff eb                                      bl #0x550b08
0056a920  20 d0 8d e2                                      add sp, sp, #0x20
0056a924  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056a928  01 c0 a0 e3                                      mov ip, #1
0056a92c  04 00 a0 e1                                      mov r0, r4
0056a930  18 20 8d e2                                      add r2, sp, #0x18
0056a934  1c 30 8d e2                                      add r3, sp, #0x1c
0056a938  04 c0 8d e5                                      str ip, [sp, #4]
0056a93c  00 c0 8d e5                                      str ip, [sp]
0056a940  c8 e2 ff eb                                      bl #0x563468
0056a944  f3 ff ff ea                                      b #0x56a918

; FUNCTION 0x0056a948, declared_size=336, range_size=336, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcS3_
; demangled: glitch::io::CAttributes::setAttribute(char const*, char const*)
; decoder-mode: arm
0056a948  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056a94c  48 40 90 e5                                      ldr r4, [r0, #0x48]
0056a950  02 a0 a0 e1                                      mov sl, r2
0056a954  14 d0 4d e2                                      sub sp, sp, #0x14
0056a958  00 30 94 e5                                      ldr r3, [r4]
0056a95c  04 20 94 e5                                      ldr r2, [r4, #4]
0056a960  00 50 a0 e1                                      mov r5, r0
0056a964  01 60 a0 e1                                      mov r6, r1
0056a968  02 20 63 e0                                      rsb r2, r3, r2
0056a96c  22 21 b0 e1                                      lsrs r2, r2, #2
0056a970  1b 00 00 0a                                      beq #0x56a9e4
0056a974  00 70 a0 e3                                      mov r7, #0
0056a978  05 00 00 ea                                      b #0x56a994
0056a97c  48 40 95 e5                                      ldr r4, [r5, #0x48]
0056a980  00 30 94 e5                                      ldr r3, [r4]
0056a984  04 20 94 e5                                      ldr r2, [r4, #4]
0056a988  02 20 63 e0                                      rsb r2, r3, r2
0056a98c  42 01 57 e1                                      cmp r7, r2, asr #2
0056a990  13 00 00 2a                                      bhs #0x56a9e4
0056a994  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0056a998  06 10 a0 e1                                      mov r1, r6
0056a99c  07 81 a0 e1                                      lsl r8, r7, #2
0056a9a0  08 00 80 e2                                      add r0, r0, #8
0056a9a4  65 2e ff eb                                      bl #0x536340
0056a9a8  00 00 50 e3                                      cmp r0, #0
0056a9ac  01 70 87 e2                                      add r7, r7, #1
0056a9b0  f1 ff ff 0a                                      beq #0x56a97c
0056a9b4  00 00 5a e3                                      cmp sl, #0
0056a9b8  1c 00 00 0a                                      beq #0x56aa30
0056a9bc  48 30 95 e5                                      ldr r3, [r5, #0x48]
0056a9c0  0a 10 a0 e1                                      mov r1, sl
0056a9c4  00 30 93 e5                                      ldr r3, [r3]
0056a9c8  08 30 93 e7                                      ldr r3, [r3, r8]
0056a9cc  03 00 a0 e1                                      mov r0, r3
0056a9d0  00 30 93 e5                                      ldr r3, [r3]
0056a9d4  0f e0 a0 e1                                      mov lr, pc
0056a9d8  90 f0 93 e5                                      ldr pc, [r3, #0x90]
0056a9dc  14 d0 8d e2                                      add sp, sp, #0x14
0056a9e0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056a9e4  00 00 5a e3                                      cmp sl, #0
0056a9e8  fb ff ff 0a                                      beq #0x56a9dc
0056a9ec  00 10 a0 e3                                      mov r1, #0
0056a9f0  84 00 a0 e3                                      mov r0, #0x84
0056a9f4  ec 25 ff eb                                      bl #0x5341ac
0056a9f8  06 10 a0 e1                                      mov r1, r6
0056a9fc  00 50 a0 e1                                      mov r5, r0
0056aa00  00 30 a0 e3                                      mov r3, #0
0056aa04  0a 20 a0 e1                                      mov r2, sl
0056aa08  d4 f4 ff eb                                      bl #0x567d60
0056aa0c  08 50 8d e5                                      str r5, [sp, #8]
0056aa10  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056aa14  03 00 51 e1                                      cmp r1, r3
0056aa18  16 00 00 0a                                      beq #0x56aa78
0056aa1c  00 50 81 e5                                      str r5, [r1]
0056aa20  04 30 94 e5                                      ldr r3, [r4, #4]
0056aa24  04 30 83 e2                                      add r3, r3, #4
0056aa28  04 30 84 e5                                      str r3, [r4, #4]
0056aa2c  ea ff ff ea                                      b #0x56a9dc
0056aa30  48 30 95 e5                                      ldr r3, [r5, #0x48]
0056aa34  00 30 93 e5                                      ldr r3, [r3]
0056aa38  08 00 93 e7                                      ldr r0, [r3, r8]
0056aa3c  d0 ca f6 eb                                      bl #0x31d584
0056aa40  48 40 95 e5                                      ldr r4, [r5, #0x48]
0056aa44  09 00 94 e8                                      ldm r4, {r0, r3}
0056aa48  08 00 80 e0                                      add r0, r0, r8
0056aa4c  04 10 80 e2                                      add r1, r0, #4
0056aa50  03 00 51 e1                                      cmp r1, r3
0056aa54  04 00 00 0a                                      beq #0x56aa6c
0056aa58  01 20 53 e0                                      subs r2, r3, r1
0056aa5c  03 10 a0 01                                      moveq r1, r3
0056aa60  01 00 00 0a                                      beq #0x56aa6c
0056aa64  33 8d f6 eb                                      bl #0x30df38
0056aa68  04 10 94 e5                                      ldr r1, [r4, #4]
0056aa6c  04 10 41 e2                                      sub r1, r1, #4
0056aa70  04 10 84 e5                                      str r1, [r4, #4]
0056aa74  d8 ff ff ea                                      b #0x56a9dc
0056aa78  01 c0 a0 e3                                      mov ip, #1
0056aa7c  04 00 a0 e1                                      mov r0, r4
0056aa80  08 20 8d e2                                      add r2, sp, #8
0056aa84  0c 30 8d e2                                      add r3, sp, #0xc
0056aa88  04 c0 8d e5                                      str ip, [sp, #4]
0056aa8c  00 c0 8d e5                                      str ip, [sp]
0056aa90  74 e2 ff eb                                      bl #0x563468
0056aa94  d0 ff ff ea                                      b #0x56a9dc

; FUNCTION 0x0056aa98, declared_size=336, range_size=336, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcPKw
; demangled: glitch::io::CAttributes::setAttribute(char const*, wchar_t const*)
; decoder-mode: arm
0056aa98  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056aa9c  48 40 90 e5                                      ldr r4, [r0, #0x48]
0056aaa0  02 a0 a0 e1                                      mov sl, r2
0056aaa4  14 d0 4d e2                                      sub sp, sp, #0x14
0056aaa8  00 30 94 e5                                      ldr r3, [r4]
0056aaac  04 20 94 e5                                      ldr r2, [r4, #4]
0056aab0  00 50 a0 e1                                      mov r5, r0
0056aab4  01 60 a0 e1                                      mov r6, r1
0056aab8  02 20 63 e0                                      rsb r2, r3, r2
0056aabc  22 21 b0 e1                                      lsrs r2, r2, #2
0056aac0  1b 00 00 0a                                      beq #0x56ab34
0056aac4  00 70 a0 e3                                      mov r7, #0
0056aac8  05 00 00 ea                                      b #0x56aae4
0056aacc  48 40 95 e5                                      ldr r4, [r5, #0x48]
0056aad0  00 30 94 e5                                      ldr r3, [r4]
0056aad4  04 20 94 e5                                      ldr r2, [r4, #4]
0056aad8  02 20 63 e0                                      rsb r2, r3, r2
0056aadc  42 01 57 e1                                      cmp r7, r2, asr #2
0056aae0  13 00 00 2a                                      bhs #0x56ab34
0056aae4  07 01 93 e7                                      ldr r0, [r3, r7, lsl #2]
0056aae8  06 10 a0 e1                                      mov r1, r6
0056aaec  07 81 a0 e1                                      lsl r8, r7, #2
0056aaf0  08 00 80 e2                                      add r0, r0, #8
0056aaf4  11 2e ff eb                                      bl #0x536340
0056aaf8  00 00 50 e3                                      cmp r0, #0
0056aafc  01 70 87 e2                                      add r7, r7, #1
0056ab00  f1 ff ff 0a                                      beq #0x56aacc
0056ab04  00 00 5a e3                                      cmp sl, #0
0056ab08  1c 00 00 0a                                      beq #0x56ab80
0056ab0c  48 30 95 e5                                      ldr r3, [r5, #0x48]
0056ab10  0a 10 a0 e1                                      mov r1, sl
0056ab14  00 30 93 e5                                      ldr r3, [r3]
0056ab18  08 30 93 e7                                      ldr r3, [r3, r8]
0056ab1c  03 00 a0 e1                                      mov r0, r3
0056ab20  00 30 93 e5                                      ldr r3, [r3]
0056ab24  0f e0 a0 e1                                      mov lr, pc
0056ab28  94 f0 93 e5                                      ldr pc, [r3, #0x94]
0056ab2c  14 d0 8d e2                                      add sp, sp, #0x14
0056ab30  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056ab34  00 00 5a e3                                      cmp sl, #0
0056ab38  fb ff ff 0a                                      beq #0x56ab2c
0056ab3c  00 10 a0 e3                                      mov r1, #0
0056ab40  84 00 a0 e3                                      mov r0, #0x84
0056ab44  98 25 ff eb                                      bl #0x5341ac
0056ab48  06 10 a0 e1                                      mov r1, r6
0056ab4c  00 50 a0 e1                                      mov r5, r0
0056ab50  00 30 a0 e3                                      mov r3, #0
0056ab54  0a 20 a0 e1                                      mov r2, sl
0056ab58  28 ec ff eb                                      bl #0x565c00
0056ab5c  08 50 8d e5                                      str r5, [sp, #8]
0056ab60  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056ab64  03 00 51 e1                                      cmp r1, r3
0056ab68  16 00 00 0a                                      beq #0x56abc8
0056ab6c  00 50 81 e5                                      str r5, [r1]
0056ab70  04 30 94 e5                                      ldr r3, [r4, #4]
0056ab74  04 30 83 e2                                      add r3, r3, #4
0056ab78  04 30 84 e5                                      str r3, [r4, #4]
0056ab7c  ea ff ff ea                                      b #0x56ab2c
0056ab80  48 30 95 e5                                      ldr r3, [r5, #0x48]
0056ab84  00 30 93 e5                                      ldr r3, [r3]
0056ab88  08 00 93 e7                                      ldr r0, [r3, r8]
0056ab8c  7c ca f6 eb                                      bl #0x31d584
0056ab90  48 40 95 e5                                      ldr r4, [r5, #0x48]
0056ab94  09 00 94 e8                                      ldm r4, {r0, r3}
0056ab98  08 00 80 e0                                      add r0, r0, r8
0056ab9c  04 10 80 e2                                      add r1, r0, #4
0056aba0  03 00 51 e1                                      cmp r1, r3
0056aba4  04 00 00 0a                                      beq #0x56abbc
0056aba8  01 20 53 e0                                      subs r2, r3, r1
0056abac  03 10 a0 01                                      moveq r1, r3
0056abb0  01 00 00 0a                                      beq #0x56abbc
0056abb4  df 8c f6 eb                                      bl #0x30df38
0056abb8  04 10 94 e5                                      ldr r1, [r4, #4]
0056abbc  04 10 41 e2                                      sub r1, r1, #4
0056abc0  04 10 84 e5                                      str r1, [r4, #4]
0056abc4  d8 ff ff ea                                      b #0x56ab2c
0056abc8  01 c0 a0 e3                                      mov ip, #1
0056abcc  04 00 a0 e1                                      mov r0, r4
0056abd0  08 20 8d e2                                      add r2, sp, #8
0056abd4  0c 30 8d e2                                      add r3, sp, #0xc
0056abd8  04 c0 8d e5                                      str ip, [sp, #4]
0056abdc  00 c0 8d e5                                      str ip, [sp]
0056abe0  20 e2 ff eb                                      bl #0x563468
0056abe4  d0 ff ff ea                                      b #0x56ab2c

; FUNCTION 0x0056abe8, declared_size=328, range_size=328, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_5video6SColorE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::video::SColor)
; decoder-mode: arm
0056abe8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056abec  2c d0 4d e2                                      sub sp, sp, #0x2c
0056abf0  0c 20 8d e5                                      str r2, [sp, #0xc]
0056abf4  22 6c a0 e1                                      lsr r6, r2, #0x18
0056abf8  00 50 a0 e1                                      mov r5, r0
0056abfc  01 90 a0 e1                                      mov sb, r1
0056ac00  72 a0 ef e6                                      uxtb sl, r2
0056ac04  52 84 e7 e7                                      ubfx r8, r2, #8, #8
0056ac08  52 b8 e7 e7                                      ubfx fp, r2, #0x10, #8
0056ac0c  e3 dc ff eb                                      bl #0x561fa0
0056ac10  10 41 9f e5                                      ldr r4, [pc, #0x110]
0056ac14  00 70 50 e2                                      subs r7, r0, #0
0056ac18  04 40 8f e0                                      add r4, pc, r4
0056ac1c  05 00 00 0a                                      beq #0x56ac38
0056ac20  00 30 97 e5                                      ldr r3, [r7]
0056ac24  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0056ac28  0f e0 a0 e1                                      mov lr, pc
0056ac2c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0056ac30  2c d0 8d e2                                      add sp, sp, #0x2c
0056ac34  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056ac38  0a 00 a0 e1                                      mov r0, sl
0056ac3c  48 8f f6 eb                                      bl #0x30e964
0056ac40  81 10 08 e3                                      movw r1, #0x8081
0056ac44  80 1b 43 e3                                      movt r1, #0x3b80
0056ac48  47 90 f6 eb                                      bl #0x30ed6c
0056ac4c  00 a0 a0 e1                                      mov sl, r0
0056ac50  08 00 a0 e1                                      mov r0, r8
0056ac54  42 8f f6 eb                                      bl #0x30e964
0056ac58  81 10 08 e3                                      movw r1, #0x8081
0056ac5c  80 1b 43 e3                                      movt r1, #0x3b80
0056ac60  41 90 f6 eb                                      bl #0x30ed6c
0056ac64  00 c0 a0 e1                                      mov ip, r0
0056ac68  0b 00 a0 e1                                      mov r0, fp
0056ac6c  08 c0 8d e5                                      str ip, [sp, #8]
0056ac70  3b 8f f6 eb                                      bl #0x30e964
0056ac74  81 10 08 e3                                      movw r1, #0x8081
0056ac78  80 1b 43 e3                                      movt r1, #0x3b80
0056ac7c  3a 90 f6 eb                                      bl #0x30ed6c
0056ac80  00 b0 a0 e1                                      mov fp, r0
0056ac84  06 00 a0 e1                                      mov r0, r6
0056ac88  35 8f f6 eb                                      bl #0x30e964
0056ac8c  81 10 08 e3                                      movw r1, #0x8081
0056ac90  80 1b 43 e3                                      movt r1, #0x3b80
0056ac94  34 90 f6 eb                                      bl #0x30ed6c
0056ac98  07 10 a0 e1                                      mov r1, r7
0056ac9c  00 80 a0 e1                                      mov r8, r0
0056aca0  44 00 a0 e3                                      mov r0, #0x44
0056aca4  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056aca8  3f 25 ff eb                                      bl #0x5341ac
0056acac  28 20 8d e2                                      add r2, sp, #0x28
0056acb0  18 a0 22 e5                                      str sl, [r2, #-0x18]!
0056acb4  08 c0 9d e5                                      ldr ip, [sp, #8]
0056acb8  09 10 a0 e1                                      mov r1, sb
0056acbc  07 30 a0 e1                                      mov r3, r7
0056acc0  00 60 a0 e1                                      mov r6, r0
0056acc4  1c 80 8d e5                                      str r8, [sp, #0x1c]
0056acc8  18 b0 8d e5                                      str fp, [sp, #0x18]
0056accc  14 c0 8d e5                                      str ip, [sp, #0x14]
0056acd0  5f eb ff eb                                      bl #0x565a54
0056acd4  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056acd8  03 30 94 e7                                      ldr r3, [r4, r3]
0056acdc  08 30 83 e2                                      add r3, r3, #8
0056ace0  00 30 86 e5                                      str r3, [r6]
0056ace4  20 60 8d e5                                      str r6, [sp, #0x20]
0056ace8  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056acec  03 00 51 e1                                      cmp r1, r3
0056acf0  04 00 00 0a                                      beq #0x56ad08
0056acf4  00 60 81 e5                                      str r6, [r1]
0056acf8  04 30 95 e5                                      ldr r3, [r5, #4]
0056acfc  04 30 83 e2                                      add r3, r3, #4
0056ad00  04 30 85 e5                                      str r3, [r5, #4]
0056ad04  c9 ff ff ea                                      b #0x56ac30
0056ad08  01 c0 a0 e3                                      mov ip, #1
0056ad0c  05 00 a0 e1                                      mov r0, r5
0056ad10  20 20 8d e2                                      add r2, sp, #0x20
0056ad14  24 30 8d e2                                      add r3, sp, #0x24
0056ad18  04 c0 8d e5                                      str ip, [sp, #4]
0056ad1c  00 c0 8d e5                                      str ip, [sp]
0056ad20  d0 e1 ff eb                                      bl #0x563468
0056ad24  c1 ff ff ea                                      b #0x56ac30
; mapping-symbol data/literal pool
0056ad28  78 9e 42 00 38 16 00 00                          .byte 0x78, 0x9e, 0x42, 0x00, 0x38, 0x16, 0x00, 0x00

; FUNCTION 0x0056ad30, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcPv
; demangled: glitch::io::CAttributes::setAttribute(char const*, void*)
; decoder-mode: arm
0056ad30  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056ad34  10 d0 4d e2                                      sub sp, sp, #0x10
0056ad38  02 70 a0 e1                                      mov r7, r2
0056ad3c  00 40 a0 e1                                      mov r4, r0
0056ad40  01 80 a0 e1                                      mov r8, r1
0056ad44  95 dc ff eb                                      bl #0x561fa0
0056ad48  00 60 50 e2                                      subs r6, r0, #0
0056ad4c  05 00 00 0a                                      beq #0x56ad68
0056ad50  00 30 96 e5                                      ldr r3, [r6]
0056ad54  07 10 a0 e1                                      mov r1, r7
0056ad58  0f e0 a0 e1                                      mov lr, pc
0056ad5c  f4 f0 93 e5                                      ldr pc, [r3, #0xf4]
0056ad60  10 d0 8d e2                                      add sp, sp, #0x10
0056ad64  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056ad68  06 10 a0 e1                                      mov r1, r6
0056ad6c  28 00 a0 e3                                      mov r0, #0x28
0056ad70  48 40 94 e5                                      ldr r4, [r4, #0x48]
0056ad74  0c 25 ff eb                                      bl #0x5341ac
0056ad78  08 10 a0 e1                                      mov r1, r8
0056ad7c  00 50 a0 e1                                      mov r5, r0
0056ad80  06 30 a0 e1                                      mov r3, r6
0056ad84  07 20 a0 e1                                      mov r2, r7
0056ad88  99 ef ff eb                                      bl #0x566bf4
0056ad8c  08 50 8d e5                                      str r5, [sp, #8]
0056ad90  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056ad94  03 00 51 e1                                      cmp r1, r3
0056ad98  04 00 00 0a                                      beq #0x56adb0
0056ad9c  00 50 81 e5                                      str r5, [r1]
0056ada0  04 30 94 e5                                      ldr r3, [r4, #4]
0056ada4  04 30 83 e2                                      add r3, r3, #4
0056ada8  04 30 84 e5                                      str r3, [r4, #4]
0056adac  eb ff ff ea                                      b #0x56ad60
0056adb0  01 c0 a0 e3                                      mov ip, #1
0056adb4  04 00 a0 e1                                      mov r0, r4
0056adb8  08 20 8d e2                                      add r2, sp, #8
0056adbc  0c 30 8d e2                                      add r3, sp, #0xc
0056adc0  04 c0 8d e5                                      str ip, [sp, #4]
0056adc4  00 c0 8d e5                                      str ip, [sp]
0056adc8  a6 e1 ff eb                                      bl #0x563468
0056adcc  e3 ff ff ea                                      b #0x56ad60

; FUNCTION 0x0056add0, declared_size=276, range_size=276, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core10quaternionE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::quaternion)
; decoder-mode: arm
0056add0  08 d0 4d e2                                      sub sp, sp, #8
0056add4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056add8  34 d0 4d e2                                      sub sp, sp, #0x34
0056addc  58 20 8d e5                                      str r2, [sp, #0x58]
0056ade0  5c 30 8d e5                                      str r3, [sp, #0x5c]
0056ade4  00 60 a0 e1                                      mov r6, r0
0056ade8  01 70 a0 e1                                      mov r7, r1
0056adec  58 80 9d e5                                      ldr r8, [sp, #0x58]
0056adf0  5c a0 9d e5                                      ldr sl, [sp, #0x5c]
0056adf4  60 90 9d e5                                      ldr sb, [sp, #0x60]
0056adf8  64 b0 9d e5                                      ldr fp, [sp, #0x64]
0056adfc  67 dc ff eb                                      bl #0x561fa0
0056ae00  d4 40 9f e5                                      ldr r4, [pc, #0xd4]
0056ae04  00 50 50 e2                                      subs r5, r0, #0
0056ae08  04 40 8f e0                                      add r4, pc, r4
0056ae0c  0a 00 00 0a                                      beq #0x56ae3c
0056ae10  64 20 9d e5                                      ldr r2, [sp, #0x64]
0056ae14  58 30 8d e2                                      add r3, sp, #0x58
0056ae18  00 c0 95 e5                                      ldr ip, [r5]
0056ae1c  00 20 8d e5                                      str r2, [sp]
0056ae20  0e 00 93 e8                                      ldm r3, {r1, r2, r3}
0056ae24  0f e0 a0 e1                                      mov lr, pc
0056ae28  c0 f0 9c e5                                      ldr pc, [ip, #0xc0]
0056ae2c  34 d0 8d e2                                      add sp, sp, #0x34
0056ae30  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056ae34  08 d0 8d e2                                      add sp, sp, #8
0056ae38  1e ff 2f e1                                      bx lr
0056ae3c  05 10 a0 e1                                      mov r1, r5
0056ae40  44 00 a0 e3                                      mov r0, #0x44
0056ae44  48 60 96 e5                                      ldr r6, [r6, #0x48]
0056ae48  d7 24 ff eb                                      bl #0x5341ac
0056ae4c  20 90 8d e5                                      str sb, [sp, #0x20]
0056ae50  20 e0 9d e5                                      ldr lr, [sp, #0x20]
0056ae54  24 b0 8d e5                                      str fp, [sp, #0x24]
0056ae58  1c a0 8d e5                                      str sl, [sp, #0x1c]
0056ae5c  00 e0 8d e5                                      str lr, [sp]
0056ae60  24 e0 9d e5                                      ldr lr, [sp, #0x24]
0056ae64  18 80 8d e5                                      str r8, [sp, #0x18]
0056ae68  07 10 a0 e1                                      mov r1, r7
0056ae6c  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0056ae70  18 20 9d e5                                      ldr r2, [sp, #0x18]
0056ae74  08 50 8d e5                                      str r5, [sp, #8]
0056ae78  04 e0 8d e5                                      str lr, [sp, #4]
0056ae7c  14 00 8d e5                                      str r0, [sp, #0x14]
0056ae80  ad ed ff eb                                      bl #0x56653c
0056ae84  54 30 9f e5                                      ldr r3, [pc, #0x54]
0056ae88  14 c0 9d e5                                      ldr ip, [sp, #0x14]
0056ae8c  03 30 94 e7                                      ldr r3, [r4, r3]
0056ae90  08 30 83 e2                                      add r3, r3, #8
0056ae94  00 30 8c e5                                      str r3, [ip]
0056ae98  28 c0 8d e5                                      str ip, [sp, #0x28]
0056ae9c  0a 00 96 e9                                      ldmib r6, {r1, r3}
0056aea0  03 00 51 e1                                      cmp r1, r3
0056aea4  04 00 00 0a                                      beq #0x56aebc
0056aea8  00 c0 81 e5                                      str ip, [r1]
0056aeac  04 30 96 e5                                      ldr r3, [r6, #4]
0056aeb0  04 30 83 e2                                      add r3, r3, #4
0056aeb4  04 30 86 e5                                      str r3, [r6, #4]
0056aeb8  db ff ff ea                                      b #0x56ae2c
0056aebc  01 c0 a0 e3                                      mov ip, #1
0056aec0  06 00 a0 e1                                      mov r0, r6
0056aec4  28 20 8d e2                                      add r2, sp, #0x28
0056aec8  2c 30 8d e2                                      add r3, sp, #0x2c
0056aecc  04 c0 8d e5                                      str ip, [sp, #4]
0056aed0  00 c0 8d e5                                      str ip, [sp]
0056aed4  63 e1 ff eb                                      bl #0x563468
0056aed8  d3 ff ff ea                                      b #0x56ae2c
; mapping-symbol data/literal pool
0056aedc  88 9c 42 00 9c 48 00 00                          .byte 0x88, 0x9c, 0x42, 0x00, 0x9c, 0x48, 0x00, 0x00

; FUNCTION 0x0056aee4, declared_size=196, range_size=196, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8CMatrix4IfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::CMatrix4<float> const&)
; decoder-mode: arm
0056aee4  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056aee8  98 d0 4d e2                                      sub sp, sp, #0x98
0056aeec  02 50 a0 e1                                      mov r5, r2
0056aef0  00 40 a0 e1                                      mov r4, r0
0056aef4  01 70 a0 e1                                      mov r7, r1
0056aef8  28 dc ff eb                                      bl #0x561fa0
0056aefc  00 60 50 e2                                      subs r6, r0, #0
0056af00  0a 00 00 0a                                      beq #0x56af30
0056af04  00 30 96 e5                                      ldr r3, [r6]
0056af08  4c 40 8d e2                                      add r4, sp, #0x4c
0056af0c  05 10 a0 e1                                      mov r1, r5
0056af10  04 00 a0 e1                                      mov r0, r4
0056af14  c4 50 93 e5                                      ldr r5, [r3, #0xc4]
0056af18  0d e3 ff eb                                      bl #0x563b54
0056af1c  06 00 a0 e1                                      mov r0, r6
0056af20  04 10 a0 e1                                      mov r1, r4
0056af24  35 ff 2f e1                                      blx r5
0056af28  98 d0 8d e2                                      add sp, sp, #0x98
0056af2c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056af30  08 80 8d e2                                      add r8, sp, #8
0056af34  05 10 a0 e1                                      mov r1, r5
0056af38  08 00 a0 e1                                      mov r0, r8
0056af3c  48 40 94 e5                                      ldr r4, [r4, #0x48]
0056af40  03 e3 ff eb                                      bl #0x563b54
0056af44  06 10 a0 e1                                      mov r1, r6
0056af48  44 00 a0 e3                                      mov r0, #0x44
0056af4c  96 24 ff eb                                      bl #0x5341ac
0056af50  07 10 a0 e1                                      mov r1, r7
0056af54  00 50 a0 e1                                      mov r5, r0
0056af58  06 30 a0 e1                                      mov r3, r6
0056af5c  08 20 a0 e1                                      mov r2, r8
0056af60  38 ee ff eb                                      bl #0x566848
0056af64  90 50 8d e5                                      str r5, [sp, #0x90]
0056af68  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056af6c  03 00 51 e1                                      cmp r1, r3
0056af70  04 00 00 0a                                      beq #0x56af88
0056af74  00 50 81 e5                                      str r5, [r1]
0056af78  04 30 94 e5                                      ldr r3, [r4, #4]
0056af7c  04 30 83 e2                                      add r3, r3, #4
0056af80  04 30 84 e5                                      str r3, [r4, #4]
0056af84  e7 ff ff ea                                      b #0x56af28
0056af88  01 c0 a0 e3                                      mov ip, #1
0056af8c  04 00 a0 e1                                      mov r0, r4
0056af90  90 20 8d e2                                      add r2, sp, #0x90
0056af94  94 30 8d e2                                      add r3, sp, #0x94
0056af98  04 c0 8d e5                                      str ip, [sp, #4]
0056af9c  00 c0 8d e5                                      str ip, [sp]
0056afa0  30 e1 ff eb                                      bl #0x563468
0056afa4  df ff ff ea                                      b #0x56af28

; FUNCTION 0x0056afa8, declared_size=212, range_size=212, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, std::vector<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, glitch::core::SAllocator<std::basic_string<wchar_t, std::char_traits<wchar_t>, glitch::core::SAllocator<wchar_t, (glitch::memory::E_MEMORY_HINT)0> >, (glitch::memory::E_MEMORY_HINT)0> >)
; decoder-mode: arm
0056afa8  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056afac  28 d0 4d e2                                      sub sp, sp, #0x28
0056afb0  02 60 a0 e1                                      mov r6, r2
0056afb4  00 40 a0 e1                                      mov r4, r0
0056afb8  01 80 a0 e1                                      mov r8, r1
0056afbc  f7 db ff eb                                      bl #0x561fa0
0056afc0  00 70 50 e2                                      subs r7, r0, #0
0056afc4  0c 00 00 0a                                      beq #0x56affc
0056afc8  00 30 97 e5                                      ldr r3, [r7]
0056afcc  14 40 8d e2                                      add r4, sp, #0x14
0056afd0  06 10 a0 e1                                      mov r1, r6
0056afd4  04 00 a0 e1                                      mov r0, r4
0056afd8  98 50 93 e5                                      ldr r5, [r3, #0x98]
0056afdc  a6 df ff eb                                      bl #0x562e7c
0056afe0  07 00 a0 e1                                      mov r0, r7
0056afe4  04 10 a0 e1                                      mov r1, r4
0056afe8  35 ff 2f e1                                      blx r5
0056afec  04 00 a0 e1                                      mov r0, r4
0056aff0  c4 96 ff eb                                      bl #0x550b08
0056aff4  28 d0 8d e2                                      add sp, sp, #0x28
0056aff8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056affc  08 50 8d e2                                      add r5, sp, #8
0056b000  06 10 a0 e1                                      mov r1, r6
0056b004  05 00 a0 e1                                      mov r0, r5
0056b008  48 40 94 e5                                      ldr r4, [r4, #0x48]
0056b00c  9a df ff eb                                      bl #0x562e7c
0056b010  07 10 a0 e1                                      mov r1, r7
0056b014  30 00 a0 e3                                      mov r0, #0x30
0056b018  63 24 ff eb                                      bl #0x5341ac
0056b01c  08 10 a0 e1                                      mov r1, r8
0056b020  00 60 a0 e1                                      mov r6, r0
0056b024  07 30 a0 e1                                      mov r3, r7
0056b028  05 20 a0 e1                                      mov r2, r5
0056b02c  df e9 ff eb                                      bl #0x5657b0
0056b030  20 60 8d e5                                      str r6, [sp, #0x20]
0056b034  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056b038  03 00 51 e1                                      cmp r1, r3
0056b03c  06 00 00 0a                                      beq #0x56b05c
0056b040  00 60 81 e5                                      str r6, [r1]
0056b044  04 30 94 e5                                      ldr r3, [r4, #4]
0056b048  04 30 83 e2                                      add r3, r3, #4
0056b04c  04 30 84 e5                                      str r3, [r4, #4]
0056b050  05 00 a0 e1                                      mov r0, r5
0056b054  ab 96 ff eb                                      bl #0x550b08
0056b058  e5 ff ff ea                                      b #0x56aff4
0056b05c  01 c0 a0 e3                                      mov ip, #1
0056b060  04 00 a0 e1                                      mov r0, r4
0056b064  20 20 8d e2                                      add r2, sp, #0x20
0056b068  24 30 8d e2                                      add r3, sp, #0x24
0056b06c  04 c0 8d e5                                      str ip, [sp, #4]
0056b070  00 c0 8d e5                                      str ip, [sp]
0056b074  fb e0 ff eb                                      bl #0x563468
0056b078  f4 ff ff ea                                      b #0x56b050

; FUNCTION 0x0056b07c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcf
; demangled: glitch::io::CAttributes::setAttribute(char const*, float)
; decoder-mode: arm
0056b07c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056b080  10 d0 4d e2                                      sub sp, sp, #0x10
0056b084  02 70 a0 e1                                      mov r7, r2
0056b088  00 40 a0 e1                                      mov r4, r0
0056b08c  01 80 a0 e1                                      mov r8, r1
0056b090  c2 db ff eb                                      bl #0x561fa0
0056b094  00 60 50 e2                                      subs r6, r0, #0
0056b098  05 00 00 0a                                      beq #0x56b0b4
0056b09c  00 30 96 e5                                      ldr r3, [r6]
0056b0a0  07 10 a0 e1                                      mov r1, r7
0056b0a4  0f e0 a0 e1                                      mov lr, pc
0056b0a8  8c f0 93 e5                                      ldr pc, [r3, #0x8c]
0056b0ac  10 d0 8d e2                                      add sp, sp, #0x10
0056b0b0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056b0b4  06 10 a0 e1                                      mov r1, r6
0056b0b8  28 00 a0 e3                                      mov r0, #0x28
0056b0bc  48 40 94 e5                                      ldr r4, [r4, #0x48]
0056b0c0  39 24 ff eb                                      bl #0x5341ac
0056b0c4  08 10 a0 e1                                      mov r1, r8
0056b0c8  00 50 a0 e1                                      mov r5, r0
0056b0cc  06 30 a0 e1                                      mov r3, r6
0056b0d0  07 20 a0 e1                                      mov r2, r7
0056b0d4  4b f0 ff eb                                      bl #0x567208
0056b0d8  08 50 8d e5                                      str r5, [sp, #8]
0056b0dc  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056b0e0  03 00 51 e1                                      cmp r1, r3
0056b0e4  04 00 00 0a                                      beq #0x56b0fc
0056b0e8  00 50 81 e5                                      str r5, [r1]
0056b0ec  04 30 94 e5                                      ldr r3, [r4, #4]
0056b0f0  04 30 83 e2                                      add r3, r3, #4
0056b0f4  04 30 84 e5                                      str r3, [r4, #4]
0056b0f8  eb ff ff ea                                      b #0x56b0ac
0056b0fc  01 c0 a0 e3                                      mov ip, #1
0056b100  04 00 a0 e1                                      mov r0, r4
0056b104  08 20 8d e2                                      add r2, sp, #8
0056b108  0c 30 8d e2                                      add r3, sp, #0xc
0056b10c  04 c0 8d e5                                      str ip, [sp, #4]
0056b110  00 c0 8d e5                                      str ip, [sp]
0056b114  d3 e0 ff eb                                      bl #0x563468
0056b118  e3 ff ff ea                                      b #0x56b0ac

; FUNCTION 0x0056b11c, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKci
; demangled: glitch::io::CAttributes::setAttribute(char const*, int)
; decoder-mode: arm
0056b11c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056b120  10 d0 4d e2                                      sub sp, sp, #0x10
0056b124  02 70 a0 e1                                      mov r7, r2
0056b128  00 40 a0 e1                                      mov r4, r0
0056b12c  01 80 a0 e1                                      mov r8, r1
0056b130  9a db ff eb                                      bl #0x561fa0
0056b134  00 60 50 e2                                      subs r6, r0, #0
0056b138  05 00 00 0a                                      beq #0x56b154
0056b13c  00 30 96 e5                                      ldr r3, [r6]
0056b140  07 10 a0 e1                                      mov r1, r7
0056b144  0f e0 a0 e1                                      mov lr, pc
0056b148  88 f0 93 e5                                      ldr pc, [r3, #0x88]
0056b14c  10 d0 8d e2                                      add sp, sp, #0x10
0056b150  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056b154  06 10 a0 e1                                      mov r1, r6
0056b158  28 00 a0 e3                                      mov r0, #0x28
0056b15c  48 40 94 e5                                      ldr r4, [r4, #0x48]
0056b160  11 24 ff eb                                      bl #0x5341ac
0056b164  08 10 a0 e1                                      mov r1, r8
0056b168  00 50 a0 e1                                      mov r5, r0
0056b16c  06 30 a0 e1                                      mov r3, r6
0056b170  07 20 a0 e1                                      mov r2, r7
0056b174  4a f0 ff eb                                      bl #0x5672a4
0056b178  08 50 8d e5                                      str r5, [sp, #8]
0056b17c  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056b180  03 00 51 e1                                      cmp r1, r3
0056b184  04 00 00 0a                                      beq #0x56b19c
0056b188  00 50 81 e5                                      str r5, [r1]
0056b18c  04 30 94 e5                                      ldr r3, [r4, #4]
0056b190  04 30 83 e2                                      add r3, r3, #4
0056b194  04 30 84 e5                                      str r3, [r4, #4]
0056b198  eb ff ff ea                                      b #0x56b14c
0056b19c  01 c0 a0 e3                                      mov ip, #1
0056b1a0  04 00 a0 e1                                      mov r0, r4
0056b1a4  08 20 8d e2                                      add r2, sp, #8
0056b1a8  0c 30 8d e2                                      add r3, sp, #0xc
0056b1ac  04 c0 8d e5                                      str ip, [sp, #4]
0056b1b0  00 c0 8d e5                                      str ip, [sp]
0056b1b4  ab e0 ff eb                                      bl #0x563468
0056b1b8  e3 ff ff ea                                      b #0x56b14c

; FUNCTION 0x0056b1bc, declared_size=160, range_size=160, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcb
; demangled: glitch::io::CAttributes::setAttribute(char const*, bool)
; decoder-mode: arm
0056b1bc  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
0056b1c0  10 d0 4d e2                                      sub sp, sp, #0x10
0056b1c4  02 70 a0 e1                                      mov r7, r2
0056b1c8  00 40 a0 e1                                      mov r4, r0
0056b1cc  01 80 a0 e1                                      mov r8, r1
0056b1d0  72 db ff eb                                      bl #0x561fa0
0056b1d4  00 60 50 e2                                      subs r6, r0, #0
0056b1d8  05 00 00 0a                                      beq #0x56b1f4
0056b1dc  00 30 96 e5                                      ldr r3, [r6]
0056b1e0  07 10 a0 e1                                      mov r1, r7
0056b1e4  0f e0 a0 e1                                      mov lr, pc
0056b1e8  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
0056b1ec  10 d0 8d e2                                      add sp, sp, #0x10
0056b1f0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
0056b1f4  06 10 a0 e1                                      mov r1, r6
0056b1f8  24 00 a0 e3                                      mov r0, #0x24
0056b1fc  48 40 94 e5                                      ldr r4, [r4, #0x48]
0056b200  e9 23 ff eb                                      bl #0x5341ac
0056b204  08 10 a0 e1                                      mov r1, r8
0056b208  00 50 a0 e1                                      mov r5, r0
0056b20c  06 30 a0 e1                                      mov r3, r6
0056b210  07 20 a0 e1                                      mov r2, r7
0056b214  d4 ef ff eb                                      bl #0x56716c
0056b218  08 50 8d e5                                      str r5, [sp, #8]
0056b21c  0a 00 94 e9                                      ldmib r4, {r1, r3}
0056b220  03 00 51 e1                                      cmp r1, r3
0056b224  04 00 00 0a                                      beq #0x56b23c
0056b228  00 50 81 e5                                      str r5, [r1]
0056b22c  04 30 94 e5                                      ldr r3, [r4, #4]
0056b230  04 30 83 e2                                      add r3, r3, #4
0056b234  04 30 84 e5                                      str r3, [r4, #4]
0056b238  eb ff ff ea                                      b #0x56b1ec
0056b23c  01 c0 a0 e3                                      mov ip, #1
0056b240  04 00 a0 e1                                      mov r0, r4
0056b244  08 20 8d e2                                      add r2, sp, #8
0056b248  0c 30 8d e2                                      add r3, sp, #0xc
0056b24c  04 c0 8d e5                                      str ip, [sp, #4]
0056b250  00 c0 8d e5                                      str ip, [sp]
0056b254  83 e0 ff eb                                      bl #0x563468
0056b258  e3 ff ff ea                                      b #0x56b1ec

; FUNCTION 0x0056b25c, declared_size=256, range_size=256, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_5video7SColorfE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::video::SColorf)
; decoder-mode: arm
0056b25c  08 d0 4d e2                                      sub sp, sp, #8
0056b260  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056b264  2c d0 4d e2                                      sub sp, sp, #0x2c
0056b268  50 20 8d e5                                      str r2, [sp, #0x50]
0056b26c  54 30 8d e5                                      str r3, [sp, #0x54]
0056b270  00 70 a0 e1                                      mov r7, r0
0056b274  01 90 a0 e1                                      mov sb, r1
0056b278  50 b0 9d e5                                      ldr fp, [sp, #0x50]
0056b27c  54 80 9d e5                                      ldr r8, [sp, #0x54]
0056b280  58 50 9d e5                                      ldr r5, [sp, #0x58]
0056b284  5c 60 9d e5                                      ldr r6, [sp, #0x5c]
0056b288  44 db ff eb                                      bl #0x561fa0
0056b28c  c0 40 9f e5                                      ldr r4, [pc, #0xc0]
0056b290  00 a0 50 e2                                      subs sl, r0, #0
0056b294  04 40 8f e0                                      add r4, pc, r4
0056b298  0a 00 00 0a                                      beq #0x56b2c8
0056b29c  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
0056b2a0  50 30 8d e2                                      add r3, sp, #0x50
0056b2a4  00 c0 9a e5                                      ldr ip, [sl]
0056b2a8  00 20 8d e5                                      str r2, [sp]
0056b2ac  0e 00 93 e8                                      ldm r3, {r1, r2, r3}
0056b2b0  0f e0 a0 e1                                      mov lr, pc
0056b2b4  9c f0 9c e5                                      ldr pc, [ip, #0x9c]
0056b2b8  2c d0 8d e2                                      add sp, sp, #0x2c
0056b2bc  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056b2c0  08 d0 8d e2                                      add sp, sp, #8
0056b2c4  1e ff 2f e1                                      bx lr
0056b2c8  0a 10 a0 e1                                      mov r1, sl
0056b2cc  44 00 a0 e3                                      mov r0, #0x44
0056b2d0  48 70 97 e5                                      ldr r7, [r7, #0x48]
0056b2d4  b4 23 ff eb                                      bl #0x5341ac
0056b2d8  28 20 8d e2                                      add r2, sp, #0x28
0056b2dc  18 b0 22 e5                                      str fp, [r2, #-0x18]!
0056b2e0  09 10 a0 e1                                      mov r1, sb
0056b2e4  0a 30 a0 e1                                      mov r3, sl
0056b2e8  1c 60 8d e5                                      str r6, [sp, #0x1c]
0056b2ec  18 50 8d e5                                      str r5, [sp, #0x18]
0056b2f0  14 80 8d e5                                      str r8, [sp, #0x14]
0056b2f4  0c 00 8d e5                                      str r0, [sp, #0xc]
0056b2f8  d5 e9 ff eb                                      bl #0x565a54
0056b2fc  54 30 9f e5                                      ldr r3, [pc, #0x54]
0056b300  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056b304  03 30 94 e7                                      ldr r3, [r4, r3]
0056b308  08 30 83 e2                                      add r3, r3, #8
0056b30c  00 30 8c e5                                      str r3, [ip]
0056b310  20 c0 8d e5                                      str ip, [sp, #0x20]
0056b314  0a 00 97 e9                                      ldmib r7, {r1, r3}
0056b318  03 00 51 e1                                      cmp r1, r3
0056b31c  04 00 00 0a                                      beq #0x56b334
0056b320  00 c0 81 e5                                      str ip, [r1]
0056b324  04 30 97 e5                                      ldr r3, [r7, #4]
0056b328  04 30 83 e2                                      add r3, r3, #4
0056b32c  04 30 87 e5                                      str r3, [r7, #4]
0056b330  e0 ff ff ea                                      b #0x56b2b8
0056b334  01 c0 a0 e3                                      mov ip, #1
0056b338  07 00 a0 e1                                      mov r0, r7
0056b33c  20 20 8d e2                                      add r2, sp, #0x20
0056b340  24 30 8d e2                                      add r3, sp, #0x24
0056b344  04 c0 8d e5                                      str ip, [sp, #4]
0056b348  00 c0 8d e5                                      str ip, [sp]
0056b34c  45 e0 ff eb                                      bl #0x563468
0056b350  d8 ff ff ea                                      b #0x56b2b8
; mapping-symbol data/literal pool
0056b354  fc 97 42 00 c0 24 00 00                          .byte 0xfc, 0x97, 0x42, 0x00, 0xc0, 0x24, 0x00, 0x00

; FUNCTION 0x0056b35c, declared_size=164, range_size=164, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcN5boost13intrusive_ptrINS_5video8ITextureEEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, boost::intrusive_ptr<glitch::video::ITexture>)
; decoder-mode: arm
0056b35c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056b360  14 d0 4d e2                                      sub sp, sp, #0x14
0056b364  02 70 a0 e1                                      mov r7, r2
0056b368  00 80 a0 e1                                      mov r8, r0
0056b36c  01 a0 a0 e1                                      mov sl, r1
0056b370  0a db ff eb                                      bl #0x561fa0
0056b374  00 40 50 e2                                      subs r4, r0, #0
0056b378  05 00 00 0a                                      beq #0x56b394
0056b37c  00 30 94 e5                                      ldr r3, [r4]
0056b380  07 10 a0 e1                                      mov r1, r7
0056b384  0f e0 a0 e1                                      mov lr, pc
0056b388  fc f0 93 e5                                      ldr pc, [r3, #0xfc]
0056b38c  14 d0 8d e2                                      add sp, sp, #0x14
0056b390  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056b394  04 10 a0 e1                                      mov r1, r4
0056b398  2c 00 a0 e3                                      mov r0, #0x2c
0056b39c  48 50 98 e5                                      ldr r5, [r8, #0x48]
0056b3a0  81 23 ff eb                                      bl #0x5341ac
0056b3a4  58 30 98 e5                                      ldr r3, [r8, #0x58]
0056b3a8  00 60 a0 e1                                      mov r6, r0
0056b3ac  0a 10 a0 e1                                      mov r1, sl
0056b3b0  07 20 a0 e1                                      mov r2, r7
0056b3b4  00 40 8d e5                                      str r4, [sp]
0056b3b8  b8 ee ff eb                                      bl #0x566ea0
0056b3bc  08 60 8d e5                                      str r6, [sp, #8]
0056b3c0  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b3c4  03 00 51 e1                                      cmp r1, r3
0056b3c8  04 00 00 0a                                      beq #0x56b3e0
0056b3cc  00 60 81 e5                                      str r6, [r1]
0056b3d0  04 30 95 e5                                      ldr r3, [r5, #4]
0056b3d4  04 30 83 e2                                      add r3, r3, #4
0056b3d8  04 30 85 e5                                      str r3, [r5, #4]
0056b3dc  ea ff ff ea                                      b #0x56b38c
0056b3e0  01 c0 a0 e3                                      mov ip, #1
0056b3e4  05 00 a0 e1                                      mov r0, r5
0056b3e8  08 20 8d e2                                      add r2, sp, #8
0056b3ec  0c 30 8d e2                                      add r3, sp, #0xc
0056b3f0  04 c0 8d e5                                      str ip, [sp, #4]
0056b3f4  00 c0 8d e5                                      str ip, [sp]
0056b3f8  1a e0 ff eb                                      bl #0x563468
0056b3fc  e2 ff ff ea                                      b #0x56b38c

; FUNCTION 0x0056b400, declared_size=172, range_size=172, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcS3_PKS3_
; demangled: glitch::io::CAttributes::setAttribute(char const*, char const*, char const* const*)
; decoder-mode: arm
0056b400  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056b404  14 d0 4d e2                                      sub sp, sp, #0x14
0056b408  02 80 a0 e1                                      mov r8, r2
0056b40c  03 70 a0 e1                                      mov r7, r3
0056b410  00 50 a0 e1                                      mov r5, r0
0056b414  01 a0 a0 e1                                      mov sl, r1
0056b418  e0 da ff eb                                      bl #0x561fa0
0056b41c  00 40 50 e2                                      subs r4, r0, #0
0056b420  06 00 00 0a                                      beq #0x56b440
0056b424  00 30 94 e5                                      ldr r3, [r4]
0056b428  08 10 a0 e1                                      mov r1, r8
0056b42c  07 20 a0 e1                                      mov r2, r7
0056b430  0f e0 a0 e1                                      mov lr, pc
0056b434  f8 f0 93 e5                                      ldr pc, [r3, #0xf8]
0056b438  14 d0 8d e2                                      add sp, sp, #0x14
0056b43c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056b440  04 10 a0 e1                                      mov r1, r4
0056b444  48 00 a0 e3                                      mov r0, #0x48
0056b448  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056b44c  56 23 ff eb                                      bl #0x5341ac
0056b450  0a 10 a0 e1                                      mov r1, sl
0056b454  00 60 a0 e1                                      mov r6, r0
0056b458  07 30 a0 e1                                      mov r3, r7
0056b45c  08 20 a0 e1                                      mov r2, r8
0056b460  00 40 8d e5                                      str r4, [sp]
0056b464  00 ef ff eb                                      bl #0x56706c
0056b468  08 60 8d e5                                      str r6, [sp, #8]
0056b46c  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b470  03 00 51 e1                                      cmp r1, r3
0056b474  04 00 00 0a                                      beq #0x56b48c
0056b478  00 60 81 e5                                      str r6, [r1]
0056b47c  04 30 95 e5                                      ldr r3, [r5, #4]
0056b480  04 30 83 e2                                      add r3, r3, #4
0056b484  04 30 85 e5                                      str r3, [r5, #4]
0056b488  ea ff ff ea                                      b #0x56b438
0056b48c  01 c0 a0 e3                                      mov ip, #1
0056b490  05 00 a0 e1                                      mov r0, r5
0056b494  08 20 8d e2                                      add r2, sp, #8
0056b498  0c 30 8d e2                                      add r3, sp, #0xc
0056b49c  04 c0 8d e5                                      str ip, [sp, #4]
0056b4a0  00 c0 8d e5                                      str ip, [sp]
0056b4a4  ef df ff eb                                      bl #0x563468
0056b4a8  e2 ff ff ea                                      b #0x56b438

; FUNCTION 0x0056b4ac, declared_size=204, range_size=204, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcPvi
; demangled: glitch::io::CAttributes::setAttribute(char const*, void*, int)
; decoder-mode: arm
0056b4ac  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056b4b0  10 d0 4d e2                                      sub sp, sp, #0x10
0056b4b4  02 a0 a0 e1                                      mov sl, r2
0056b4b8  03 80 a0 e1                                      mov r8, r3
0056b4bc  00 60 a0 e1                                      mov r6, r0
0056b4c0  01 90 a0 e1                                      mov sb, r1
0056b4c4  b5 da ff eb                                      bl #0x561fa0
0056b4c8  a0 40 9f e5                                      ldr r4, [pc, #0xa0]
0056b4cc  00 50 50 e2                                      subs r5, r0, #0
0056b4d0  04 40 8f e0                                      add r4, pc, r4
0056b4d4  06 00 00 0a                                      beq #0x56b4f4
0056b4d8  00 30 95 e5                                      ldr r3, [r5]
0056b4dc  0a 10 a0 e1                                      mov r1, sl
0056b4e0  08 20 a0 e1                                      mov r2, r8
0056b4e4  0f e0 a0 e1                                      mov lr, pc
0056b4e8  a8 f0 93 e5                                      ldr pc, [r3, #0xa8]
0056b4ec  10 d0 8d e2                                      add sp, sp, #0x10
0056b4f0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056b4f4  05 10 a0 e1                                      mov r1, r5
0056b4f8  84 00 a0 e3                                      mov r0, #0x84
0056b4fc  48 60 96 e5                                      ldr r6, [r6, #0x48]
0056b500  29 23 ff eb                                      bl #0x5341ac
0056b504  09 10 a0 e1                                      mov r1, sb
0056b508  08 30 a0 e1                                      mov r3, r8
0056b50c  0a 20 a0 e1                                      mov r2, sl
0056b510  00 70 a0 e1                                      mov r7, r0
0056b514  00 50 8d e5                                      str r5, [sp]
0056b518  97 ee ff eb                                      bl #0x566f7c
0056b51c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b520  03 30 94 e7                                      ldr r3, [r4, r3]
0056b524  08 30 83 e2                                      add r3, r3, #8
0056b528  00 30 87 e5                                      str r3, [r7]
0056b52c  08 70 8d e5                                      str r7, [sp, #8]
0056b530  0a 00 96 e9                                      ldmib r6, {r1, r3}
0056b534  03 00 51 e1                                      cmp r1, r3
0056b538  04 00 00 0a                                      beq #0x56b550
0056b53c  00 70 81 e5                                      str r7, [r1]
0056b540  04 30 96 e5                                      ldr r3, [r6, #4]
0056b544  04 30 83 e2                                      add r3, r3, #4
0056b548  04 30 86 e5                                      str r3, [r6, #4]
0056b54c  e6 ff ff ea                                      b #0x56b4ec
0056b550  01 c0 a0 e3                                      mov ip, #1
0056b554  06 00 a0 e1                                      mov r0, r6
0056b558  08 20 8d e2                                      add r2, sp, #8
0056b55c  0c 30 8d e2                                      add r3, sp, #0xc
0056b560  04 c0 8d e5                                      str ip, [sp, #4]
0056b564  00 c0 8d e5                                      str ip, [sp]
0056b568  be df ff eb                                      bl #0x563468
0056b56c  de ff ff ea                                      b #0x56b4ec
; mapping-symbol data/literal pool
0056b570  c0 95 42 00 78 06 00 00                          .byte 0xc0, 0x95, 0x42, 0x00, 0x78, 0x06, 0x00, 0x00

; FUNCTION 0x0056b578, declared_size=192, range_size=192, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8vector4dIiEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::vector4d<int> const&)
; decoder-mode: arm
0056b578  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056b57c  14 d0 4d e2                                      sub sp, sp, #0x14
0056b580  02 80 a0 e1                                      mov r8, r2
0056b584  00 50 a0 e1                                      mov r5, r0
0056b588  01 a0 a0 e1                                      mov sl, r1
0056b58c  83 da ff eb                                      bl #0x561fa0
0056b590  98 40 9f e5                                      ldr r4, [pc, #0x98]
0056b594  00 70 50 e2                                      subs r7, r0, #0
0056b598  04 40 8f e0                                      add r4, pc, r4
0056b59c  05 00 00 0a                                      beq #0x56b5b8
0056b5a0  00 30 97 e5                                      ldr r3, [r7]
0056b5a4  08 10 a0 e1                                      mov r1, r8
0056b5a8  0f e0 a0 e1                                      mov lr, pc
0056b5ac  d4 f0 93 e5                                      ldr pc, [r3, #0xd4]
0056b5b0  14 d0 8d e2                                      add sp, sp, #0x14
0056b5b4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056b5b8  07 10 a0 e1                                      mov r1, r7
0056b5bc  44 00 a0 e3                                      mov r0, #0x44
0056b5c0  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056b5c4  f8 22 ff eb                                      bl #0x5341ac
0056b5c8  0a 10 a0 e1                                      mov r1, sl
0056b5cc  07 30 a0 e1                                      mov r3, r7
0056b5d0  08 20 a0 e1                                      mov r2, r8
0056b5d4  00 60 a0 e1                                      mov r6, r0
0056b5d8  10 f0 ff eb                                      bl #0x567620
0056b5dc  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b5e0  03 30 94 e7                                      ldr r3, [r4, r3]
0056b5e4  08 30 83 e2                                      add r3, r3, #8
0056b5e8  00 30 86 e5                                      str r3, [r6]
0056b5ec  08 60 8d e5                                      str r6, [sp, #8]
0056b5f0  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b5f4  03 00 51 e1                                      cmp r1, r3
0056b5f8  04 00 00 0a                                      beq #0x56b610
0056b5fc  00 60 81 e5                                      str r6, [r1]
0056b600  04 30 95 e5                                      ldr r3, [r5, #4]
0056b604  04 30 83 e2                                      add r3, r3, #4
0056b608  04 30 85 e5                                      str r3, [r5, #4]
0056b60c  e7 ff ff ea                                      b #0x56b5b0
0056b610  01 c0 a0 e3                                      mov ip, #1
0056b614  05 00 a0 e1                                      mov r0, r5
0056b618  08 20 8d e2                                      add r2, sp, #8
0056b61c  0c 30 8d e2                                      add r3, sp, #0xc
0056b620  04 c0 8d e5                                      str ip, [sp, #4]
0056b624  00 c0 8d e5                                      str ip, [sp]
0056b628  8e df ff eb                                      bl #0x563468
0056b62c  df ff ff ea                                      b #0x56b5b0
; mapping-symbol data/literal pool
0056b630  f8 94 42 00 c0 2b 00 00                          .byte 0xf8, 0x94, 0x42, 0x00, 0xc0, 0x2b, 0x00, 0x00

; FUNCTION 0x0056b638, declared_size=192, range_size=192, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8vector3dIiEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::vector3d<int> const&)
; decoder-mode: arm
0056b638  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056b63c  14 d0 4d e2                                      sub sp, sp, #0x14
0056b640  02 80 a0 e1                                      mov r8, r2
0056b644  00 50 a0 e1                                      mov r5, r0
0056b648  01 a0 a0 e1                                      mov sl, r1
0056b64c  53 da ff eb                                      bl #0x561fa0
0056b650  98 40 9f e5                                      ldr r4, [pc, #0x98]
0056b654  00 70 50 e2                                      subs r7, r0, #0
0056b658  04 40 8f e0                                      add r4, pc, r4
0056b65c  05 00 00 0a                                      beq #0x56b678
0056b660  00 30 97 e5                                      ldr r3, [r7]
0056b664  08 10 a0 e1                                      mov r1, r8
0056b668  0f e0 a0 e1                                      mov lr, pc
0056b66c  d0 f0 93 e5                                      ldr pc, [r3, #0xd0]
0056b670  14 d0 8d e2                                      add sp, sp, #0x14
0056b674  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056b678  07 10 a0 e1                                      mov r1, r7
0056b67c  44 00 a0 e3                                      mov r0, #0x44
0056b680  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056b684  c8 22 ff eb                                      bl #0x5341ac
0056b688  0a 10 a0 e1                                      mov r1, sl
0056b68c  07 30 a0 e1                                      mov r3, r7
0056b690  08 20 a0 e1                                      mov r2, r8
0056b694  00 60 a0 e1                                      mov r6, r0
0056b698  56 f0 ff eb                                      bl #0x5677f8
0056b69c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b6a0  03 30 94 e7                                      ldr r3, [r4, r3]
0056b6a4  08 30 83 e2                                      add r3, r3, #8
0056b6a8  00 30 86 e5                                      str r3, [r6]
0056b6ac  08 60 8d e5                                      str r6, [sp, #8]
0056b6b0  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b6b4  03 00 51 e1                                      cmp r1, r3
0056b6b8  04 00 00 0a                                      beq #0x56b6d0
0056b6bc  00 60 81 e5                                      str r6, [r1]
0056b6c0  04 30 95 e5                                      ldr r3, [r5, #4]
0056b6c4  04 30 83 e2                                      add r3, r3, #4
0056b6c8  04 30 85 e5                                      str r3, [r5, #4]
0056b6cc  e7 ff ff ea                                      b #0x56b670
0056b6d0  01 c0 a0 e3                                      mov ip, #1
0056b6d4  05 00 a0 e1                                      mov r0, r5
0056b6d8  08 20 8d e2                                      add r2, sp, #8
0056b6dc  0c 30 8d e2                                      add r3, sp, #0xc
0056b6e0  04 c0 8d e5                                      str ip, [sp, #4]
0056b6e4  00 c0 8d e5                                      str ip, [sp]
0056b6e8  5e df ff eb                                      bl #0x563468
0056b6ec  df ff ff ea                                      b #0x56b670
; mapping-symbol data/literal pool
0056b6f0  38 94 42 00 9c 08 00 00                          .byte 0x38, 0x94, 0x42, 0x00, 0x9c, 0x08, 0x00, 0x00

; FUNCTION 0x0056b6f8, declared_size=192, range_size=192, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8vector4dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::vector4d<float> const&)
; decoder-mode: arm
0056b6f8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056b6fc  14 d0 4d e2                                      sub sp, sp, #0x14
0056b700  02 80 a0 e1                                      mov r8, r2
0056b704  00 50 a0 e1                                      mov r5, r0
0056b708  01 a0 a0 e1                                      mov sl, r1
0056b70c  23 da ff eb                                      bl #0x561fa0
0056b710  98 40 9f e5                                      ldr r4, [pc, #0x98]
0056b714  00 70 50 e2                                      subs r7, r0, #0
0056b718  04 40 8f e0                                      add r4, pc, r4
0056b71c  05 00 00 0a                                      beq #0x56b738
0056b720  00 30 97 e5                                      ldr r3, [r7]
0056b724  08 10 a0 e1                                      mov r1, r8
0056b728  0f e0 a0 e1                                      mov lr, pc
0056b72c  b4 f0 93 e5                                      ldr pc, [r3, #0xb4]
0056b730  14 d0 8d e2                                      add sp, sp, #0x14
0056b734  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056b738  07 10 a0 e1                                      mov r1, r7
0056b73c  44 00 a0 e3                                      mov r0, #0x44
0056b740  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056b744  98 22 ff eb                                      bl #0x5341ac
0056b748  0a 10 a0 e1                                      mov r1, sl
0056b74c  07 30 a0 e1                                      mov r3, r7
0056b750  08 20 a0 e1                                      mov r2, r8
0056b754  00 60 a0 e1                                      mov r6, r0
0056b758  53 ec ff eb                                      bl #0x5668ac
0056b75c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b760  03 30 94 e7                                      ldr r3, [r4, r3]
0056b764  08 30 83 e2                                      add r3, r3, #8
0056b768  00 30 86 e5                                      str r3, [r6]
0056b76c  08 60 8d e5                                      str r6, [sp, #8]
0056b770  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b774  03 00 51 e1                                      cmp r1, r3
0056b778  04 00 00 0a                                      beq #0x56b790
0056b77c  00 60 81 e5                                      str r6, [r1]
0056b780  04 30 95 e5                                      ldr r3, [r5, #4]
0056b784  04 30 83 e2                                      add r3, r3, #4
0056b788  04 30 85 e5                                      str r3, [r5, #4]
0056b78c  e7 ff ff ea                                      b #0x56b730
0056b790  01 c0 a0 e3                                      mov ip, #1
0056b794  05 00 a0 e1                                      mov r0, r5
0056b798  08 20 8d e2                                      add r2, sp, #8
0056b79c  0c 30 8d e2                                      add r3, sp, #0xc
0056b7a0  04 c0 8d e5                                      str ip, [sp, #4]
0056b7a4  00 c0 8d e5                                      str ip, [sp]
0056b7a8  2e df ff eb                                      bl #0x563468
0056b7ac  df ff ff ea                                      b #0x56b730
; mapping-symbol data/literal pool
0056b7b0  78 93 42 00 f0 0e 00 00                          .byte 0x78, 0x93, 0x42, 0x00, 0xf0, 0x0e, 0x00, 0x00

; FUNCTION 0x0056b7b8, declared_size=192, range_size=192, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcRKNS_4core8vector3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::vector3d<float> const&)
; decoder-mode: arm
0056b7b8  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
0056b7bc  14 d0 4d e2                                      sub sp, sp, #0x14
0056b7c0  02 80 a0 e1                                      mov r8, r2
0056b7c4  00 50 a0 e1                                      mov r5, r0
0056b7c8  01 a0 a0 e1                                      mov sl, r1
0056b7cc  f3 d9 ff eb                                      bl #0x561fa0
0056b7d0  98 40 9f e5                                      ldr r4, [pc, #0x98]
0056b7d4  00 70 50 e2                                      subs r7, r0, #0
0056b7d8  04 40 8f e0                                      add r4, pc, r4
0056b7dc  05 00 00 0a                                      beq #0x56b7f8
0056b7e0  00 30 97 e5                                      ldr r3, [r7]
0056b7e4  08 10 a0 e1                                      mov r1, r8
0056b7e8  0f e0 a0 e1                                      mov lr, pc
0056b7ec  b0 f0 93 e5                                      ldr pc, [r3, #0xb0]
0056b7f0  14 d0 8d e2                                      add sp, sp, #0x14
0056b7f4  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
0056b7f8  07 10 a0 e1                                      mov r1, r7
0056b7fc  44 00 a0 e3                                      mov r0, #0x44
0056b800  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056b804  68 22 ff eb                                      bl #0x5341ac
0056b808  0a 10 a0 e1                                      mov r1, sl
0056b80c  07 30 a0 e1                                      mov r3, r7
0056b810  08 20 a0 e1                                      mov r2, r8
0056b814  00 60 a0 e1                                      mov r6, r0
0056b818  99 ec ff eb                                      bl #0x566a84
0056b81c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b820  03 30 94 e7                                      ldr r3, [r4, r3]
0056b824  08 30 83 e2                                      add r3, r3, #8
0056b828  00 30 86 e5                                      str r3, [r6]
0056b82c  08 60 8d e5                                      str r6, [sp, #8]
0056b830  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b834  03 00 51 e1                                      cmp r1, r3
0056b838  04 00 00 0a                                      beq #0x56b850
0056b83c  00 60 81 e5                                      str r6, [r1]
0056b840  04 30 95 e5                                      ldr r3, [r5, #4]
0056b844  04 30 83 e2                                      add r3, r3, #4
0056b848  04 30 85 e5                                      str r3, [r5, #4]
0056b84c  e7 ff ff ea                                      b #0x56b7f0
0056b850  01 c0 a0 e3                                      mov ip, #1
0056b854  05 00 a0 e1                                      mov r0, r5
0056b858  08 20 8d e2                                      add r2, sp, #8
0056b85c  0c 30 8d e2                                      add r3, sp, #0xc
0056b860  04 c0 8d e5                                      str ip, [sp, #4]
0056b864  00 c0 8d e5                                      str ip, [sp]
0056b868  fe de ff eb                                      bl #0x563468
0056b86c  df ff ff ea                                      b #0x56b7f0
; mapping-symbol data/literal pool
0056b870  b8 92 42 00 d8 4a 00 00                          .byte 0xb8, 0x92, 0x42, 0x00, 0xd8, 0x4a, 0x00, 0x00

; FUNCTION 0x0056b878, declared_size=256, range_size=256, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core4rectIiEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::rect<int>)
; decoder-mode: arm
0056b878  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056b87c  3c d0 4d e2                                      sub sp, sp, #0x3c
0056b880  02 60 a0 e1                                      mov r6, r2
0056b884  00 50 a0 e1                                      mov r5, r0
0056b888  01 b0 a0 e1                                      mov fp, r1
0056b88c  c3 d9 ff eb                                      bl #0x561fa0
0056b890  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
0056b894  00 90 50 e2                                      subs sb, r0, #0
0056b898  04 40 8f e0                                      add r4, pc, r4
0056b89c  0d 00 00 0a                                      beq #0x56b8d8
0056b8a0  00 30 99 e5                                      ldr r3, [sb]
0056b8a4  08 10 96 e5                                      ldr r1, [r6, #8]
0056b8a8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0056b8ac  00 e0 96 e5                                      ldr lr, [r6]
0056b8b0  04 c0 96 e5                                      ldr ip, [r6, #4]
0056b8b4  bc 30 93 e5                                      ldr r3, [r3, #0xbc]
0056b8b8  28 10 8d e5                                      str r1, [sp, #0x28]
0056b8bc  20 e0 8d e5                                      str lr, [sp, #0x20]
0056b8c0  24 c0 8d e5                                      str ip, [sp, #0x24]
0056b8c4  2c 20 8d e5                                      str r2, [sp, #0x2c]
0056b8c8  20 10 8d e2                                      add r1, sp, #0x20
0056b8cc  33 ff 2f e1                                      blx r3
0056b8d0  3c d0 8d e2                                      add sp, sp, #0x3c
0056b8d4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056b8d8  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056b8dc  09 10 a0 e1                                      mov r1, sb
0056b8e0  44 00 a0 e3                                      mov r0, #0x44
0056b8e4  80 05 96 e8                                      ldm r6, {r7, r8, sl}
0056b8e8  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056b8ec  0c c0 8d e5                                      str ip, [sp, #0xc]
0056b8f0  2d 22 ff eb                                      bl #0x5341ac
0056b8f4  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056b8f8  0b 10 a0 e1                                      mov r1, fp
0056b8fc  09 30 a0 e1                                      mov r3, sb
0056b900  10 20 8d e2                                      add r2, sp, #0x10
0056b904  00 60 a0 e1                                      mov r6, r0
0056b908  10 70 8d e5                                      str r7, [sp, #0x10]
0056b90c  14 80 8d e5                                      str r8, [sp, #0x14]
0056b910  18 a0 8d e5                                      str sl, [sp, #0x18]
0056b914  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056b918  88 ee ff eb                                      bl #0x567340
0056b91c  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b920  03 30 94 e7                                      ldr r3, [r4, r3]
0056b924  08 30 83 e2                                      add r3, r3, #8
0056b928  00 30 86 e5                                      str r3, [r6]
0056b92c  30 60 8d e5                                      str r6, [sp, #0x30]
0056b930  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056b934  03 00 51 e1                                      cmp r1, r3
0056b938  04 00 00 0a                                      beq #0x56b950
0056b93c  00 60 81 e5                                      str r6, [r1]
0056b940  04 30 95 e5                                      ldr r3, [r5, #4]
0056b944  04 30 83 e2                                      add r3, r3, #4
0056b948  04 30 85 e5                                      str r3, [r5, #4]
0056b94c  df ff ff ea                                      b #0x56b8d0
0056b950  01 c0 a0 e3                                      mov ip, #1
0056b954  05 00 a0 e1                                      mov r0, r5
0056b958  30 20 8d e2                                      add r2, sp, #0x30
0056b95c  34 30 8d e2                                      add r3, sp, #0x34
0056b960  04 c0 8d e5                                      str ip, [sp, #4]
0056b964  00 c0 8d e5                                      str ip, [sp]
0056b968  be de ff eb                                      bl #0x563468
0056b96c  d7 ff ff ea                                      b #0x56b8d0
; mapping-symbol data/literal pool
0056b970  f8 91 42 00 a0 15 00 00                          .byte 0xf8, 0x91, 0x42, 0x00, 0xa0, 0x15, 0x00, 0x00

; FUNCTION 0x0056b978, declared_size=220, range_size=220, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core10position2dIiEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::position2d<int>)
; decoder-mode: arm
0056b978  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
0056b97c  20 d0 4d e2                                      sub sp, sp, #0x20
0056b980  02 50 a0 e1                                      mov r5, r2
0056b984  00 60 a0 e1                                      mov r6, r0
0056b988  01 90 a0 e1                                      mov sb, r1
0056b98c  83 d9 ff eb                                      bl #0x561fa0
0056b990  b4 40 9f e5                                      ldr r4, [pc, #0xb4]
0056b994  00 a0 50 e2                                      subs sl, r0, #0
0056b998  04 40 8f e0                                      add r4, pc, r4
0056b99c  09 00 00 0a                                      beq #0x56b9c8
0056b9a0  00 30 9a e5                                      ldr r3, [sl]
0056b9a4  04 10 95 e5                                      ldr r1, [r5, #4]
0056b9a8  00 20 95 e5                                      ldr r2, [r5]
0056b9ac  b8 30 93 e5                                      ldr r3, [r3, #0xb8]
0056b9b0  14 10 8d e5                                      str r1, [sp, #0x14]
0056b9b4  10 20 8d e5                                      str r2, [sp, #0x10]
0056b9b8  10 10 8d e2                                      add r1, sp, #0x10
0056b9bc  33 ff 2f e1                                      blx r3
0056b9c0  20 d0 8d e2                                      add sp, sp, #0x20
0056b9c4  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0056b9c8  0a 10 a0 e1                                      mov r1, sl
0056b9cc  44 00 a0 e3                                      mov r0, #0x44
0056b9d0  80 01 95 e8                                      ldm r5, {r7, r8}
0056b9d4  48 50 96 e5                                      ldr r5, [r6, #0x48]
0056b9d8  f3 21 ff eb                                      bl #0x5341ac
0056b9dc  09 10 a0 e1                                      mov r1, sb
0056b9e0  0a 30 a0 e1                                      mov r3, sl
0056b9e4  08 20 8d e2                                      add r2, sp, #8
0056b9e8  00 60 a0 e1                                      mov r6, r0
0056b9ec  08 70 8d e5                                      str r7, [sp, #8]
0056b9f0  0c 80 8d e5                                      str r8, [sp, #0xc]
0056b9f4  bc ee ff eb                                      bl #0x5674ec
0056b9f8  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056b9fc  03 30 94 e7                                      ldr r3, [r4, r3]
0056ba00  08 30 83 e2                                      add r3, r3, #8
0056ba04  00 30 86 e5                                      str r3, [r6]
0056ba08  18 60 8d e5                                      str r6, [sp, #0x18]
0056ba0c  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056ba10  03 00 51 e1                                      cmp r1, r3
0056ba14  04 00 00 0a                                      beq #0x56ba2c
0056ba18  00 60 81 e5                                      str r6, [r1]
0056ba1c  04 30 95 e5                                      ldr r3, [r5, #4]
0056ba20  04 30 83 e2                                      add r3, r3, #4
0056ba24  04 30 85 e5                                      str r3, [r5, #4]
0056ba28  e4 ff ff ea                                      b #0x56b9c0
0056ba2c  01 c0 a0 e3                                      mov ip, #1
0056ba30  05 00 a0 e1                                      mov r0, r5
0056ba34  18 20 8d e2                                      add r2, sp, #0x18
0056ba38  1c 30 8d e2                                      add r3, sp, #0x1c
0056ba3c  04 c0 8d e5                                      str ip, [sp, #4]
0056ba40  00 c0 8d e5                                      str ip, [sp]
0056ba44  87 de ff eb                                      bl #0x563468
0056ba48  dc ff ff ea                                      b #0x56b9c0
; mapping-symbol data/literal pool
0056ba4c  f8 90 42 00 08 17 00 00                          .byte 0xf8, 0x90, 0x42, 0x00, 0x08, 0x17, 0x00, 0x00

; FUNCTION 0x0056ba54, declared_size=312, range_size=312, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core8aabbox3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::aabbox3d<float>)
; decoder-mode: arm
0056ba54  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056ba58  54 d0 4d e2                                      sub sp, sp, #0x54
0056ba5c  02 60 a0 e1                                      mov r6, r2
0056ba60  00 50 a0 e1                                      mov r5, r0
0056ba64  01 b0 a0 e1                                      mov fp, r1
0056ba68  4c d9 ff eb                                      bl #0x561fa0
0056ba6c  10 41 9f e5                                      ldr r4, [pc, #0x110]
0056ba70  00 90 50 e2                                      subs sb, r0, #0
0056ba74  04 40 8f e0                                      add r4, pc, r4
0056ba78  11 00 00 0a                                      beq #0x56bac4
0056ba7c  00 30 99 e5                                      ldr r3, [sb]
0056ba80  10 10 96 e5                                      ldr r1, [r6, #0x10]
0056ba84  14 20 96 e5                                      ldr r2, [r6, #0x14]
0056ba88  00 50 96 e5                                      ldr r5, [r6]
0056ba8c  04 40 96 e5                                      ldr r4, [r6, #4]
0056ba90  08 e0 96 e5                                      ldr lr, [r6, #8]
0056ba94  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056ba98  ec 30 93 e5                                      ldr r3, [r3, #0xec]
0056ba9c  40 10 8d e5                                      str r1, [sp, #0x40]
0056baa0  30 50 8d e5                                      str r5, [sp, #0x30]
0056baa4  34 40 8d e5                                      str r4, [sp, #0x34]
0056baa8  38 e0 8d e5                                      str lr, [sp, #0x38]
0056baac  3c c0 8d e5                                      str ip, [sp, #0x3c]
0056bab0  44 20 8d e5                                      str r2, [sp, #0x44]
0056bab4  30 10 8d e2                                      add r1, sp, #0x30
0056bab8  33 ff 2f e1                                      blx r3
0056babc  54 d0 8d e2                                      add sp, sp, #0x54
0056bac0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056bac4  14 30 96 e5                                      ldr r3, [r6, #0x14]
0056bac8  09 10 a0 e1                                      mov r1, sb
0056bacc  44 00 a0 e3                                      mov r0, #0x44
0056bad0  10 30 8d e5                                      str r3, [sp, #0x10]
0056bad4  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056bad8  00 70 96 e5                                      ldr r7, [r6]
0056badc  04 80 96 e5                                      ldr r8, [r6, #4]
0056bae0  08 a0 96 e5                                      ldr sl, [r6, #8]
0056bae4  14 c0 8d e5                                      str ip, [sp, #0x14]
0056bae8  10 c0 96 e5                                      ldr ip, [r6, #0x10]
0056baec  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056baf0  0c c0 8d e5                                      str ip, [sp, #0xc]
0056baf4  ac 21 ff eb                                      bl #0x5341ac
0056baf8  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056bafc  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0056bb00  0b 10 a0 e1                                      mov r1, fp
0056bb04  28 c0 8d e5                                      str ip, [sp, #0x28]
0056bb08  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056bb0c  09 30 a0 e1                                      mov r3, sb
0056bb10  18 20 8d e2                                      add r2, sp, #0x18
0056bb14  00 60 a0 e1                                      mov r6, r0
0056bb18  18 70 8d e5                                      str r7, [sp, #0x18]
0056bb1c  1c 80 8d e5                                      str r8, [sp, #0x1c]
0056bb20  20 a0 8d e5                                      str sl, [sp, #0x20]
0056bb24  24 e0 8d e5                                      str lr, [sp, #0x24]
0056bb28  2c c0 8d e5                                      str ip, [sp, #0x2c]
0056bb2c  f9 e9 ff eb                                      bl #0x566318
0056bb30  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056bb34  03 30 94 e7                                      ldr r3, [r4, r3]
0056bb38  08 30 83 e2                                      add r3, r3, #8
0056bb3c  00 30 86 e5                                      str r3, [r6]
0056bb40  48 60 8d e5                                      str r6, [sp, #0x48]
0056bb44  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056bb48  03 00 51 e1                                      cmp r1, r3
0056bb4c  04 00 00 0a                                      beq #0x56bb64
0056bb50  00 60 81 e5                                      str r6, [r1]
0056bb54  04 30 95 e5                                      ldr r3, [r5, #4]
0056bb58  04 30 83 e2                                      add r3, r3, #4
0056bb5c  04 30 85 e5                                      str r3, [r5, #4]
0056bb60  d5 ff ff ea                                      b #0x56babc
0056bb64  01 c0 a0 e3                                      mov ip, #1
0056bb68  05 00 a0 e1                                      mov r0, r5
0056bb6c  48 20 8d e2                                      add r2, sp, #0x48
0056bb70  4c 30 8d e2                                      add r3, sp, #0x4c
0056bb74  04 c0 8d e5                                      str ip, [sp, #4]
0056bb78  00 c0 8d e5                                      str ip, [sp]
0056bb7c  39 de ff eb                                      bl #0x563468
0056bb80  cd ff ff ea                                      b #0x56babc
; mapping-symbol data/literal pool
0056bb84  1c 90 42 00 80 27 00 00                          .byte 0x1c, 0x90, 0x42, 0x00, 0x80, 0x27, 0x00, 0x00

; FUNCTION 0x0056bb8c, declared_size=312, range_size=312, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core6line3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::line3d<float>)
; decoder-mode: arm
0056bb8c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056bb90  54 d0 4d e2                                      sub sp, sp, #0x54
0056bb94  02 60 a0 e1                                      mov r6, r2
0056bb98  00 50 a0 e1                                      mov r5, r0
0056bb9c  01 b0 a0 e1                                      mov fp, r1
0056bba0  fe d8 ff eb                                      bl #0x561fa0
0056bba4  10 41 9f e5                                      ldr r4, [pc, #0x110]
0056bba8  00 90 50 e2                                      subs sb, r0, #0
0056bbac  04 40 8f e0                                      add r4, pc, r4
0056bbb0  11 00 00 0a                                      beq #0x56bbfc
0056bbb4  00 30 99 e5                                      ldr r3, [sb]
0056bbb8  10 10 96 e5                                      ldr r1, [r6, #0x10]
0056bbbc  14 20 96 e5                                      ldr r2, [r6, #0x14]
0056bbc0  00 50 96 e5                                      ldr r5, [r6]
0056bbc4  04 40 96 e5                                      ldr r4, [r6, #4]
0056bbc8  08 e0 96 e5                                      ldr lr, [r6, #8]
0056bbcc  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056bbd0  e0 30 93 e5                                      ldr r3, [r3, #0xe0]
0056bbd4  40 10 8d e5                                      str r1, [sp, #0x40]
0056bbd8  30 50 8d e5                                      str r5, [sp, #0x30]
0056bbdc  34 40 8d e5                                      str r4, [sp, #0x34]
0056bbe0  38 e0 8d e5                                      str lr, [sp, #0x38]
0056bbe4  3c c0 8d e5                                      str ip, [sp, #0x3c]
0056bbe8  44 20 8d e5                                      str r2, [sp, #0x44]
0056bbec  30 10 8d e2                                      add r1, sp, #0x30
0056bbf0  33 ff 2f e1                                      blx r3
0056bbf4  54 d0 8d e2                                      add sp, sp, #0x54
0056bbf8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056bbfc  14 30 96 e5                                      ldr r3, [r6, #0x14]
0056bc00  09 10 a0 e1                                      mov r1, sb
0056bc04  44 00 a0 e3                                      mov r0, #0x44
0056bc08  10 30 8d e5                                      str r3, [sp, #0x10]
0056bc0c  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056bc10  00 70 96 e5                                      ldr r7, [r6]
0056bc14  04 80 96 e5                                      ldr r8, [r6, #4]
0056bc18  08 a0 96 e5                                      ldr sl, [r6, #8]
0056bc1c  14 c0 8d e5                                      str ip, [sp, #0x14]
0056bc20  10 c0 96 e5                                      ldr ip, [r6, #0x10]
0056bc24  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056bc28  0c c0 8d e5                                      str ip, [sp, #0xc]
0056bc2c  5e 21 ff eb                                      bl #0x5341ac
0056bc30  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056bc34  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0056bc38  0b 10 a0 e1                                      mov r1, fp
0056bc3c  28 c0 8d e5                                      str ip, [sp, #0x28]
0056bc40  10 c0 9d e5                                      ldr ip, [sp, #0x10]
0056bc44  09 30 a0 e1                                      mov r3, sb
0056bc48  18 20 8d e2                                      add r2, sp, #0x18
0056bc4c  00 60 a0 e1                                      mov r6, r0
0056bc50  18 70 8d e5                                      str r7, [sp, #0x18]
0056bc54  1c 80 8d e5                                      str r8, [sp, #0x1c]
0056bc58  20 a0 8d e5                                      str sl, [sp, #0x20]
0056bc5c  24 e0 8d e5                                      str lr, [sp, #0x24]
0056bc60  2c c0 8d e5                                      str ip, [sp, #0x2c]
0056bc64  b4 ef ff eb                                      bl #0x567b3c
0056bc68  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056bc6c  03 30 94 e7                                      ldr r3, [r4, r3]
0056bc70  08 30 83 e2                                      add r3, r3, #8
0056bc74  00 30 86 e5                                      str r3, [r6]
0056bc78  48 60 8d e5                                      str r6, [sp, #0x48]
0056bc7c  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056bc80  03 00 51 e1                                      cmp r1, r3
0056bc84  04 00 00 0a                                      beq #0x56bc9c
0056bc88  00 60 81 e5                                      str r6, [r1]
0056bc8c  04 30 95 e5                                      ldr r3, [r5, #4]
0056bc90  04 30 83 e2                                      add r3, r3, #4
0056bc94  04 30 85 e5                                      str r3, [r5, #4]
0056bc98  d5 ff ff ea                                      b #0x56bbf4
0056bc9c  01 c0 a0 e3                                      mov ip, #1
0056bca0  05 00 a0 e1                                      mov r0, r5
0056bca4  48 20 8d e2                                      add r2, sp, #0x48
0056bca8  4c 30 8d e2                                      add r3, sp, #0x4c
0056bcac  04 c0 8d e5                                      str ip, [sp, #4]
0056bcb0  00 c0 8d e5                                      str ip, [sp]
0056bcb4  eb dd ff eb                                      bl #0x563468
0056bcb8  cd ff ff ea                                      b #0x56bbf4
; mapping-symbol data/literal pool
0056bcbc  e4 8e 42 00 18 4b 00 00                          .byte 0xe4, 0x8e, 0x42, 0x00, 0x18, 0x4b, 0x00, 0x00

; FUNCTION 0x0056bcc4, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core6line2dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::line2d<float>)
; decoder-mode: arm
0056bcc4  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056bcc8  3c d0 4d e2                                      sub sp, sp, #0x3c
0056bccc  02 60 a0 e1                                      mov r6, r2
0056bcd0  00 50 a0 e1                                      mov r5, r0
0056bcd4  01 b0 a0 e1                                      mov fp, r1
0056bcd8  b0 d8 ff eb                                      bl #0x561fa0
0056bcdc  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
0056bce0  00 90 50 e2                                      subs sb, r0, #0
0056bce4  04 40 8f e0                                      add r4, pc, r4
0056bce8  0d 00 00 0a                                      beq #0x56bd24
0056bcec  00 30 99 e5                                      ldr r3, [sb]
0056bcf0  08 10 96 e5                                      ldr r1, [r6, #8]
0056bcf4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0056bcf8  00 e0 96 e5                                      ldr lr, [r6]
0056bcfc  04 c0 96 e5                                      ldr ip, [r6, #4]
0056bd00  d8 30 93 e5                                      ldr r3, [r3, #0xd8]
0056bd04  28 10 8d e5                                      str r1, [sp, #0x28]
0056bd08  20 e0 8d e5                                      str lr, [sp, #0x20]
0056bd0c  24 c0 8d e5                                      str ip, [sp, #0x24]
0056bd10  2c 20 8d e5                                      str r2, [sp, #0x2c]
0056bd14  20 10 8d e2                                      add r1, sp, #0x20
0056bd18  33 ff 2f e1                                      blx r3
0056bd1c  3c d0 8d e2                                      add sp, sp, #0x3c
0056bd20  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056bd24  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056bd28  09 10 a0 e1                                      mov r1, sb
0056bd2c  44 00 a0 e3                                      mov r0, #0x44
0056bd30  00 70 96 e5                                      ldr r7, [r6]
0056bd34  04 80 96 e5                                      ldr r8, [r6, #4]
0056bd38  08 a0 96 e5                                      ldr sl, [r6, #8]
0056bd3c  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056bd40  0c c0 8d e5                                      str ip, [sp, #0xc]
0056bd44  18 21 ff eb                                      bl #0x5341ac
0056bd48  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056bd4c  0b 10 a0 e1                                      mov r1, fp
0056bd50  09 30 a0 e1                                      mov r3, sb
0056bd54  10 20 8d e2                                      add r2, sp, #0x10
0056bd58  00 60 a0 e1                                      mov r6, r0
0056bd5c  10 70 8d e5                                      str r7, [sp, #0x10]
0056bd60  14 80 8d e5                                      str r8, [sp, #0x14]
0056bd64  18 a0 8d e5                                      str sl, [sp, #0x18]
0056bd68  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056bd6c  dd e7 ff eb                                      bl #0x565ce8
0056bd70  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056bd74  03 30 94 e7                                      ldr r3, [r4, r3]
0056bd78  08 30 83 e2                                      add r3, r3, #8
0056bd7c  00 30 86 e5                                      str r3, [r6]
0056bd80  30 60 8d e5                                      str r6, [sp, #0x30]
0056bd84  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056bd88  03 00 51 e1                                      cmp r1, r3
0056bd8c  04 00 00 0a                                      beq #0x56bda4
0056bd90  00 60 81 e5                                      str r6, [r1]
0056bd94  04 30 95 e5                                      ldr r3, [r5, #4]
0056bd98  04 30 83 e2                                      add r3, r3, #4
0056bd9c  04 30 85 e5                                      str r3, [r5, #4]
0056bda0  dd ff ff ea                                      b #0x56bd1c
0056bda4  01 c0 a0 e3                                      mov ip, #1
0056bda8  05 00 a0 e1                                      mov r0, r5
0056bdac  30 20 8d e2                                      add r2, sp, #0x30
0056bdb0  34 30 8d e2                                      add r3, sp, #0x34
0056bdb4  04 c0 8d e5                                      str ip, [sp, #4]
0056bdb8  00 c0 8d e5                                      str ip, [sp]
0056bdbc  a9 dd ff eb                                      bl #0x563468
0056bdc0  d5 ff ff ea                                      b #0x56bd1c
; mapping-symbol data/literal pool
0056bdc4  ac 8d 42 00 c0 2a 00 00                          .byte 0xac, 0x8d, 0x42, 0x00, 0xc0, 0x2a, 0x00, 0x00

; FUNCTION 0x0056bdcc, declared_size=384, range_size=384, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core10triangle3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::triangle3d<float>)
; decoder-mode: arm
0056bdcc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056bdd0  74 d0 4d e2                                      sub sp, sp, #0x74
0056bdd4  02 60 a0 e1                                      mov r6, r2
0056bdd8  00 50 a0 e1                                      mov r5, r0
0056bddc  01 b0 a0 e1                                      mov fp, r1
0056bde0  6e d8 ff eb                                      bl #0x561fa0
0056bde4  58 41 9f e5                                      ldr r4, [pc, #0x158]
0056bde8  00 90 50 e2                                      subs sb, r0, #0
0056bdec  04 40 8f e0                                      add r4, pc, r4
0056bdf0  17 00 00 0a                                      beq #0x56be54
0056bdf4  00 30 99 e5                                      ldr r3, [sb]
0056bdf8  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0056bdfc  20 20 96 e5                                      ldr r2, [r6, #0x20]
0056be00  00 a0 96 e5                                      ldr sl, [r6]
0056be04  04 80 96 e5                                      ldr r8, [r6, #4]
0056be08  08 70 96 e5                                      ldr r7, [r6, #8]
0056be0c  0c 50 96 e5                                      ldr r5, [r6, #0xc]
0056be10  10 40 96 e5                                      ldr r4, [r6, #0x10]
0056be14  14 e0 96 e5                                      ldr lr, [r6, #0x14]
0056be18  18 c0 96 e5                                      ldr ip, [r6, #0x18]
0056be1c  c8 30 93 e5                                      ldr r3, [r3, #0xc8]
0056be20  60 10 8d e5                                      str r1, [sp, #0x60]
0056be24  44 a0 8d e5                                      str sl, [sp, #0x44]
0056be28  48 80 8d e5                                      str r8, [sp, #0x48]
0056be2c  4c 70 8d e5                                      str r7, [sp, #0x4c]
0056be30  50 50 8d e5                                      str r5, [sp, #0x50]
0056be34  54 40 8d e5                                      str r4, [sp, #0x54]
0056be38  58 e0 8d e5                                      str lr, [sp, #0x58]
0056be3c  5c c0 8d e5                                      str ip, [sp, #0x5c]
0056be40  64 20 8d e5                                      str r2, [sp, #0x64]
0056be44  44 10 8d e2                                      add r1, sp, #0x44
0056be48  33 ff 2f e1                                      blx r3
0056be4c  74 d0 8d e2                                      add sp, sp, #0x74
0056be50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056be54  20 30 96 e5                                      ldr r3, [r6, #0x20]
0056be58  09 10 a0 e1                                      mov r1, sb
0056be5c  44 00 a0 e3                                      mov r0, #0x44
0056be60  18 30 8d e5                                      str r3, [sp, #0x18]
0056be64  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056be68  00 70 96 e5                                      ldr r7, [r6]
0056be6c  04 80 96 e5                                      ldr r8, [r6, #4]
0056be70  08 a0 96 e5                                      ldr sl, [r6, #8]
0056be74  14 c0 8d e5                                      str ip, [sp, #0x14]
0056be78  10 e0 96 e5                                      ldr lr, [r6, #0x10]
0056be7c  10 e0 8d e5                                      str lr, [sp, #0x10]
0056be80  14 30 96 e5                                      ldr r3, [r6, #0x14]
0056be84  0c 30 8d e5                                      str r3, [sp, #0xc]
0056be88  18 c0 96 e5                                      ldr ip, [r6, #0x18]
0056be8c  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056be90  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
0056be94  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056be98  08 c0 8d e5                                      str ip, [sp, #8]
0056be9c  c2 20 ff eb                                      bl #0x5341ac
0056bea0  14 e0 9d e5                                      ldr lr, [sp, #0x14]
0056bea4  08 c0 9d e5                                      ldr ip, [sp, #8]
0056bea8  0b 10 a0 e1                                      mov r1, fp
0056beac  2c e0 8d e5                                      str lr, [sp, #0x2c]
0056beb0  10 e0 9d e5                                      ldr lr, [sp, #0x10]
0056beb4  3c c0 8d e5                                      str ip, [sp, #0x3c]
0056beb8  18 c0 9d e5                                      ldr ip, [sp, #0x18]
0056bebc  30 e0 8d e5                                      str lr, [sp, #0x30]
0056bec0  0c e0 9d e5                                      ldr lr, [sp, #0xc]
0056bec4  09 30 a0 e1                                      mov r3, sb
0056bec8  20 20 8d e2                                      add r2, sp, #0x20
0056becc  34 e0 8d e5                                      str lr, [sp, #0x34]
0056bed0  1c e0 9d e5                                      ldr lr, [sp, #0x1c]
0056bed4  00 60 a0 e1                                      mov r6, r0
0056bed8  20 70 8d e5                                      str r7, [sp, #0x20]
0056bedc  24 80 8d e5                                      str r8, [sp, #0x24]
0056bee0  28 a0 8d e5                                      str sl, [sp, #0x28]
0056bee4  38 e0 8d e5                                      str lr, [sp, #0x38]
0056bee8  40 c0 8d e5                                      str ip, [sp, #0x40]
0056beec  e8 e7 ff eb                                      bl #0x565e94
0056bef0  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056bef4  03 30 94 e7                                      ldr r3, [r4, r3]
0056bef8  08 30 83 e2                                      add r3, r3, #8
0056befc  00 30 86 e5                                      str r3, [r6]
0056bf00  68 60 8d e5                                      str r6, [sp, #0x68]
0056bf04  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056bf08  03 00 51 e1                                      cmp r1, r3
0056bf0c  04 00 00 0a                                      beq #0x56bf24
0056bf10  00 60 81 e5                                      str r6, [r1]
0056bf14  04 30 95 e5                                      ldr r3, [r5, #4]
0056bf18  04 30 83 e2                                      add r3, r3, #4
0056bf1c  04 30 85 e5                                      str r3, [r5, #4]
0056bf20  c9 ff ff ea                                      b #0x56be4c
0056bf24  01 c0 a0 e3                                      mov ip, #1
0056bf28  05 00 a0 e1                                      mov r0, r5
0056bf2c  68 20 8d e2                                      add r2, sp, #0x68
0056bf30  6c 30 8d e2                                      add r3, sp, #0x6c
0056bf34  04 c0 8d e5                                      str ip, [sp, #4]
0056bf38  00 c0 8d e5                                      str ip, [sp]
0056bf3c  49 dd ff eb                                      bl #0x563468
0056bf40  c1 ff ff ea                                      b #0x56be4c
; mapping-symbol data/literal pool
0056bf44  a4 8c 42 00 04 38 00 00                          .byte 0xa4, 0x8c, 0x42, 0x00, 0x04, 0x38, 0x00, 0x00

; FUNCTION 0x0056bf4c, declared_size=264, range_size=264, mode=arm
; class-group: glitch::io::CAttributes
; alias: _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core7plane3dIfEE
; demangled: glitch::io::CAttributes::setAttribute(char const*, glitch::core::plane3d<float>)
; decoder-mode: arm
0056bf4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0056bf50  3c d0 4d e2                                      sub sp, sp, #0x3c
0056bf54  02 60 a0 e1                                      mov r6, r2
0056bf58  00 50 a0 e1                                      mov r5, r0
0056bf5c  01 b0 a0 e1                                      mov fp, r1
0056bf60  0e d8 ff eb                                      bl #0x561fa0
0056bf64  e0 40 9f e5                                      ldr r4, [pc, #0xe0]
0056bf68  00 90 50 e2                                      subs sb, r0, #0
0056bf6c  04 40 8f e0                                      add r4, pc, r4
0056bf70  0d 00 00 0a                                      beq #0x56bfac
0056bf74  00 30 99 e5                                      ldr r3, [sb]
0056bf78  08 10 96 e5                                      ldr r1, [r6, #8]
0056bf7c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
0056bf80  00 e0 96 e5                                      ldr lr, [r6]
0056bf84  04 c0 96 e5                                      ldr ip, [r6, #4]
0056bf88  f0 30 93 e5                                      ldr r3, [r3, #0xf0]
0056bf8c  28 10 8d e5                                      str r1, [sp, #0x28]
0056bf90  20 e0 8d e5                                      str lr, [sp, #0x20]
0056bf94  24 c0 8d e5                                      str ip, [sp, #0x24]
0056bf98  2c 20 8d e5                                      str r2, [sp, #0x2c]
0056bf9c  20 10 8d e2                                      add r1, sp, #0x20
0056bfa0  33 ff 2f e1                                      blx r3
0056bfa4  3c d0 8d e2                                      add sp, sp, #0x3c
0056bfa8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0056bfac  0c c0 96 e5                                      ldr ip, [r6, #0xc]
0056bfb0  09 10 a0 e1                                      mov r1, sb
0056bfb4  44 00 a0 e3                                      mov r0, #0x44
0056bfb8  00 70 96 e5                                      ldr r7, [r6]
0056bfbc  04 80 96 e5                                      ldr r8, [r6, #4]
0056bfc0  08 a0 96 e5                                      ldr sl, [r6, #8]
0056bfc4  48 50 95 e5                                      ldr r5, [r5, #0x48]
0056bfc8  0c c0 8d e5                                      str ip, [sp, #0xc]
0056bfcc  76 20 ff eb                                      bl #0x5341ac
0056bfd0  0c c0 9d e5                                      ldr ip, [sp, #0xc]
0056bfd4  0b 10 a0 e1                                      mov r1, fp
0056bfd8  09 30 a0 e1                                      mov r3, sb
0056bfdc  10 20 8d e2                                      add r2, sp, #0x10
0056bfe0  00 60 a0 e1                                      mov r6, r0
0056bfe4  10 70 8d e5                                      str r7, [sp, #0x10]
0056bfe8  14 80 8d e5                                      str r8, [sp, #0x14]
0056bfec  18 a0 8d e5                                      str sl, [sp, #0x18]
0056bff0  1c c0 8d e5                                      str ip, [sp, #0x1c]
0056bff4  5c e8 ff eb                                      bl #0x56616c
0056bff8  50 30 9f e5                                      ldr r3, [pc, #0x50]
0056bffc  03 30 94 e7                                      ldr r3, [r4, r3]
0056c000  08 30 83 e2                                      add r3, r3, #8
0056c004  00 30 86 e5                                      str r3, [r6]
0056c008  30 60 8d e5                                      str r6, [sp, #0x30]
0056c00c  0a 00 95 e9                                      ldmib r5, {r1, r3}
0056c010  03 00 51 e1                                      cmp r1, r3
0056c014  04 00 00 0a                                      beq #0x56c02c
0056c018  00 60 81 e5                                      str r6, [r1]
0056c01c  04 30 95 e5                                      ldr r3, [r5, #4]
0056c020  04 30 83 e2                                      add r3, r3, #4
0056c024  04 30 85 e5                                      str r3, [r5, #4]
0056c028  dd ff ff ea                                      b #0x56bfa4
0056c02c  01 c0 a0 e3                                      mov ip, #1
0056c030  05 00 a0 e1                                      mov r0, r5
0056c034  30 20 8d e2                                      add r2, sp, #0x30
0056c038  34 30 8d e2                                      add r3, sp, #0x34
0056c03c  04 c0 8d e5                                      str ip, [sp, #4]
0056c040  00 c0 8d e5                                      str ip, [sp]
0056c044  07 dd ff eb                                      bl #0x563468
0056c048  d5 ff ff ea                                      b #0x56bfa4
; mapping-symbol data/literal pool
0056c04c  24 8b 42 00 5c 43 00 00                          .byte 0x24, 0x8b, 0x42, 0x00, 0x5c, 0x43, 0x00, 0x00
