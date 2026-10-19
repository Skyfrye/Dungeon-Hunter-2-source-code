; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003af76c, declared_size=16, range_size=16, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties9PROPS_GetEib.clone.3
; demangled: CharProperties::PROPS_Get(int, bool) const [clone .clone.3]
; decoder-mode: arm
003af76c  01 20 a0 e1                                      mov r2, r1
003af770  a9 1e 80 e2                                      add r1, r0, #0xa90
003af774  04 10 81 e2                                      add r1, r1, #4
003af778  8d bd 00 ea                                      b #0x3dedb4

; FUNCTION 0x003b55d4, declared_size=164, range_size=164, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties18PROPS_GetFromSheetEiPN7Structs19CharacterPropertiesE
; demangled: CharProperties::PROPS_GetFromSheet(int, Structs::CharacterProperties*) const
; decoder-mode: arm
003b55d4  04 e0 2d e5                                      str lr, [sp, #-4]!
003b55d8  80 30 9f e5                                      ldr r3, [pc, #0x80]
003b55dc  00 c0 52 e2                                      subs ip, r2, #0
003b55e0  0c d0 4d e2                                      sub sp, sp, #0xc
003b55e4  01 20 a0 e1                                      mov r2, r1
003b55e8  03 30 8f e0                                      add r3, pc, r3
003b55ec  03 00 00 0a                                      beq #0x3b5600
003b55f0  0c 10 a0 e1                                      mov r1, ip
003b55f4  0c d0 8d e2                                      add sp, sp, #0xc
003b55f8  04 e0 9d e4                                      pop {lr}
003b55fc  ec a5 00 ea                                      b #0x3dedb4
003b5600  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
003b5604  02 20 93 e7                                      ldr r2, [r3, r2]
003b5608  00 20 92 e5                                      ldr r2, [r2]
003b560c  02 00 52 e3                                      cmp r2, #2
003b5610  00 c0 8c 05                                      streq ip, [ip]
003b5614  01 00 00 0a                                      beq #0x3b5620
003b5618  01 00 52 e3                                      cmp r2, #1
003b561c  02 00 00 0a                                      beq #0x3b562c
003b5620  00 00 e0 e3                                      mvn r0, #0
003b5624  0c d0 8d e2                                      add sp, sp, #0xc
003b5628  00 80 bd e8                                      ldm sp!, {pc}
003b562c  34 00 9f e5                                      ldr r0, [pc, #0x34]
003b5630  34 10 9f e5                                      ldr r1, [pc, #0x34]
003b5634  34 20 9f e5                                      ldr r2, [pc, #0x34]
003b5638  00 00 93 e7                                      ldr r0, [r3, r0]
003b563c  30 30 9f e5                                      ldr r3, [pc, #0x30]
003b5640  37 c1 00 e3                                      movw ip, #0x137
003b5644  01 10 8f e0                                      add r1, pc, r1
003b5648  02 20 8f e0                                      add r2, pc, r2
003b564c  03 30 8f e0                                      add r3, pc, r3
003b5650  a8 00 80 e2                                      add r0, r0, #0xa8
003b5654  00 c0 8d e5                                      str ip, [sp]
003b5658  69 62 fd eb                                      bl #0x30e004
003b565c  ef ff ff ea                                      b #0x3b5620
; mapping-symbol data/literal pool
003b5660  a8 f4 5d 00 c0 39 00 00 c0 19 00 00 94 8d 50 00  .byte 0xa8, 0xf4, 0x5d, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x94, 0x8d, 0x50, 0x00
003b5670  80 e8 50 00 84 e8 50 00                          .byte 0x80, 0xe8, 0x50, 0x00, 0x84, 0xe8, 0x50, 0x00

; FUNCTION 0x003bd130, declared_size=16, range_size=16, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties9PROPS_GetEib.clone.9
; demangled: CharProperties::PROPS_Get(int, bool) const [clone .clone.9]
; decoder-mode: arm
003bd130  01 20 a0 e1                                      mov r2, r1
003bd134  a9 1e 80 e2                                      add r1, r0, #0xa90
003bd138  04 10 81 e2                                      add r1, r1, #4
003bd13c  1c 87 00 ea                                      b #0x3dedb4

; FUNCTION 0x003de6c4, declared_size=68, range_size=68, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties18PROPS_GetWalkSpeedEv
; demangled: CharProperties::PROPS_GetWalkSpeed() const
; decoder-mode: arm
003de6c4  10 40 2d e9                                      push {r4, lr}
003de6c8  50 0b 90 e5                                      ldr r0, [r0, #0xb50]
003de6cc  a4 c0 fc eb                                      bl #0x30e964
003de6d0  ee 15 a0 e3                                      mov r1, #0x3b800000
003de6d4  a4 c1 fc eb                                      bl #0x30ed6c
003de6d8  0a 17 0d e3                                      movw r1, #0xd70a
003de6dc  23 1c 43 e3                                      movt r1, #0x3c23
003de6e0  a1 c1 fc eb                                      bl #0x30ed6c
003de6e4  fe 15 a0 e3                                      mov r1, #0x3f800000
003de6e8  2d c1 fc eb                                      bl #0x30eba4
003de6ec  00 10 a0 e3                                      mov r1, #0
003de6f0  00 40 a0 e1                                      mov r4, r0
003de6f4  ff be fc eb                                      bl #0x30e2f8
003de6f8  00 00 50 e3                                      cmp r0, #0
003de6fc  00 40 a0 03                                      moveq r4, #0
003de700  04 00 a0 e1                                      mov r0, r4
003de704  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003de708, declared_size=68, range_size=68, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties22PROPS_GetRotationSpeedEv
; demangled: CharProperties::PROPS_GetRotationSpeed() const
; decoder-mode: arm
003de708  10 40 2d e9                                      push {r4, lr}
003de70c  54 0b 90 e5                                      ldr r0, [r0, #0xb54]
003de710  93 c0 fc eb                                      bl #0x30e964
003de714  ee 15 a0 e3                                      mov r1, #0x3b800000
003de718  93 c1 fc eb                                      bl #0x30ed6c
003de71c  0a 17 0d e3                                      movw r1, #0xd70a
003de720  23 1c 43 e3                                      movt r1, #0x3c23
003de724  90 c1 fc eb                                      bl #0x30ed6c
003de728  fe 15 a0 e3                                      mov r1, #0x3f800000
003de72c  1c c1 fc eb                                      bl #0x30eba4
003de730  00 10 a0 e3                                      mov r1, #0
003de734  00 40 a0 e1                                      mov r4, r0
003de738  ee be fc eb                                      bl #0x30e2f8
003de73c  00 00 50 e3                                      cmp r0, #0
003de740  00 40 a0 03                                      moveq r4, #0
003de744  04 00 a0 e1                                      mov r0, r4
003de748  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003de74c, declared_size=68, range_size=68, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties20PROPS_GetAttackSpeedEv
; demangled: CharProperties::PROPS_GetAttackSpeed() const
; decoder-mode: arm
003de74c  10 40 2d e9                                      push {r4, lr}
003de750  58 0b 90 e5                                      ldr r0, [r0, #0xb58]
003de754  82 c0 fc eb                                      bl #0x30e964
003de758  ee 15 a0 e3                                      mov r1, #0x3b800000
003de75c  82 c1 fc eb                                      bl #0x30ed6c
003de760  0a 17 0d e3                                      movw r1, #0xd70a
003de764  23 1c 43 e3                                      movt r1, #0x3c23
003de768  7f c1 fc eb                                      bl #0x30ed6c
003de76c  fe 15 a0 e3                                      mov r1, #0x3f800000
003de770  0b c1 fc eb                                      bl #0x30eba4
003de774  00 10 a0 e3                                      mov r1, #0
003de778  00 40 a0 e1                                      mov r4, r0
003de77c  dd be fc eb                                      bl #0x30e2f8
003de780  00 00 50 e3                                      cmp r0, #0
003de784  00 40 a0 03                                      moveq r4, #0
003de788  04 00 a0 e1                                      mov r0, r4
003de78c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003de790, declared_size=92, range_size=92, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties16PROPS_GetOpacityEv
; demangled: CharProperties::PROPS_GetOpacity() const
; decoder-mode: arm
003de790  10 40 2d e9                                      push {r4, lr}
003de794  5c 0b 90 e5                                      ldr r0, [r0, #0xb5c]
003de798  71 c0 fc eb                                      bl #0x30e964
003de79c  ee 15 a0 e3                                      mov r1, #0x3b800000
003de7a0  71 c1 fc eb                                      bl #0x30ed6c
003de7a4  0a 17 0d e3                                      movw r1, #0xd70a
003de7a8  23 1c 43 e3                                      movt r1, #0x3c23
003de7ac  6e c1 fc eb                                      bl #0x30ed6c
003de7b0  fe 15 a0 e3                                      mov r1, #0x3f800000
003de7b4  fa c0 fc eb                                      bl #0x30eba4
003de7b8  00 10 a0 e3                                      mov r1, #0
003de7bc  00 40 a0 e1                                      mov r4, r0
003de7c0  cc be fc eb                                      bl #0x30e2f8
003de7c4  00 00 50 e3                                      cmp r0, #0
003de7c8  00 40 a0 03                                      moveq r4, #0
003de7cc  04 00 00 0a                                      beq #0x3de7e4
003de7d0  04 00 a0 e1                                      mov r0, r4
003de7d4  fe 15 a0 e3                                      mov r1, #0x3f800000
003de7d8  cb bf fc eb                                      bl #0x30e70c
003de7dc  00 00 50 e3                                      cmp r0, #0
003de7e0  fe 45 a0 03                                      moveq r4, #0x3f800000
003de7e4  04 00 a0 e1                                      mov r0, r4
003de7e8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003de7ec, declared_size=40, range_size=40, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties19PROPS_GetModifiedXPEi
; demangled: CharProperties::PROPS_GetModifiedXP(int) const
; decoder-mode: arm
003de7ec  b8 2d 90 e5                                      ldr r2, [r0, #0xdb8]
003de7f0  1f 35 08 e3                                      movw r3, #0x851f
003de7f4  eb 31 45 e3                                      movt r3, #0x51eb
003de7f8  19 2b 82 e2                                      add r2, r2, #0x6400
003de7fc  93 02 c3 e0                                      smull r0, r3, r3, r2
003de800  c2 2f a0 e1                                      asr r2, r2, #0x1f
003de804  c3 32 62 e0                                      rsb r3, r2, r3, asr #5
003de808  93 01 03 e0                                      mul r3, r3, r1
003de80c  43 04 a0 e1                                      asr r0, r3, #8
003de810  1e ff 2f e1                                      bx lr

; FUNCTION 0x003de814, declared_size=40, range_size=40, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties22PROPS_GetModifiedPriceEi
; demangled: CharProperties::PROPS_GetModifiedPrice(int) const
; decoder-mode: arm
003de814  bc 2d 90 e5                                      ldr r2, [r0, #0xdbc]
003de818  1f 35 08 e3                                      movw r3, #0x851f
003de81c  eb 31 45 e3                                      movt r3, #0x51eb
003de820  19 2b 82 e2                                      add r2, r2, #0x6400
003de824  93 02 c3 e0                                      smull r0, r3, r3, r2
003de828  c2 2f a0 e1                                      asr r2, r2, #0x1f
003de82c  c3 32 62 e0                                      rsb r3, r2, r3, asr #5
003de830  93 01 03 e0                                      mul r3, r3, r1
003de834  43 04 a0 e1                                      asr r0, r3, #8
003de838  1e ff 2f e1                                      bx lr

; FUNCTION 0x003de83c, declared_size=4, range_size=4, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties15PROPS_RemoveDotEi
; demangled: CharProperties::PROPS_RemoveDot(int)
; decoder-mode: arm
003de83c  1e ff 2f e1                                      bx lr

; FUNCTION 0x003de840, declared_size=4, range_size=4, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties20DBG_PROPS_DumpToFileEPKcb
; demangled: CharProperties::DBG_PROPS_DumpToFile(char const*, bool) const
; decoder-mode: arm
003de840  1e ff 2f e1                                      bx lr

; FUNCTION 0x003de844, declared_size=4, range_size=4, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties15DBG_PROPS_PrintEii
; demangled: CharProperties::DBG_PROPS_Print(int, int) const
; decoder-mode: arm
003de844  1e ff 2f e1                                      bx lr

; FUNCTION 0x003de848, declared_size=40, range_size=40, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties17DBG_PROPS_GetNameEi
; demangled: CharProperties::DBG_PROPS_GetName(int) const
; decoder-mode: arm
003de848  18 30 9f e5                                      ldr r3, [pc, #0x18]
003de84c  18 20 9f e5                                      ldr r2, [pc, #0x18]
003de850  03 30 8f e0                                      add r3, pc, r3
003de854  02 20 93 e7                                      ldr r2, [r3, r2]
003de858  18 30 a0 e3                                      mov r3, #0x18
003de85c  93 21 22 e0                                      mla r2, r3, r1, r2
003de860  14 00 92 e5                                      ldr r0, [r2, #0x14]
003de864  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003de868  40 62 5b 00 cc 19 00 00                          .byte 0x40, 0x62, 0x5b, 0x00, 0xcc, 0x19, 0x00, 0x00

; FUNCTION 0x003dec0c, declared_size=148, range_size=148, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties12SetCharacterEP9Character
; demangled: CharProperties::SetCharacter(Character*)
; decoder-mode: arm
003dec0c  30 40 2d e9                                      push {r4, r5, lr}
003dec10  70 30 9f e5                                      ldr r3, [pc, #0x70]
003dec14  00 40 51 e2                                      subs r4, r1, #0
003dec18  0c d0 4d e2                                      sub sp, sp, #0xc
003dec1c  00 50 a0 e1                                      mov r5, r0
003dec20  03 30 8f e0                                      add r3, pc, r3
003dec24  02 00 00 0a                                      beq #0x3dec34
003dec28  04 40 85 e5                                      str r4, [r5, #4]
003dec2c  0c d0 8d e2                                      add sp, sp, #0xc
003dec30  30 80 bd e8                                      pop {r4, r5, pc}
003dec34  50 20 9f e5                                      ldr r2, [pc, #0x50]
003dec38  02 20 93 e7                                      ldr r2, [r3, r2]
003dec3c  00 20 92 e5                                      ldr r2, [r2]
003dec40  02 00 52 e3                                      cmp r2, #2
003dec44  00 40 84 05                                      streq r4, [r4]
003dec48  f6 ff ff 0a                                      beq #0x3dec28
003dec4c  01 00 52 e3                                      cmp r2, #1
003dec50  f4 ff ff 1a                                      bne #0x3dec28
003dec54  34 00 9f e5                                      ldr r0, [pc, #0x34]
003dec58  34 10 9f e5                                      ldr r1, [pc, #0x34]
003dec5c  34 20 9f e5                                      ldr r2, [pc, #0x34]
003dec60  00 00 93 e7                                      ldr r0, [r3, r0]
003dec64  30 30 9f e5                                      ldr r3, [pc, #0x30]
003dec68  47 c1 00 e3                                      movw ip, #0x147
003dec6c  01 10 8f e0                                      add r1, pc, r1
003dec70  02 20 8f e0                                      add r2, pc, r2
003dec74  03 30 8f e0                                      add r3, pc, r3
003dec78  a8 00 80 e2                                      add r0, r0, #0xa8
003dec7c  00 c0 8d e5                                      str ip, [sp]
003dec80  df bc fc eb                                      bl #0x30e004
003dec84  e7 ff ff ea                                      b #0x3dec28
; mapping-symbol data/literal pool
003dec88  70 5e 5b 00 c0 39 00 00 c0 19 00 00 6c f7 4d 00  .byte 0x70, 0x5e, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x6c, 0xf7, 0x4d, 0x00
003dec98  18 34 51 00 3c 70 4e 00                          .byte 0x18, 0x34, 0x51, 0x00, 0x3c, 0x70, 0x4e, 0x00

; FUNCTION 0x003deca0, declared_size=276, range_size=276, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties12_SetPropertyERN7Structs19CharacterPropertiesEii
; demangled: CharProperties::_SetProperty(Structs::CharacterProperties&, int, int)
; decoder-mode: arm
003deca0  04 e0 2d e5                                      str lr, [sp, #-4]!
003deca4  e0 c0 9f e5                                      ldr ip, [pc, #0xe0]
003deca8  00 00 52 e3                                      cmp r2, #0
003decac  0c d0 4d e2                                      sub sp, sp, #0xc
003decb0  0c c0 8f e0                                      add ip, pc, ip
003decb4  0a 00 00 ba                                      blt #0x3dece4
003decb8  df 00 52 e3                                      cmp r2, #0xdf
003decbc  10 00 00 da                                      ble #0x3ded04
003decc0  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003decc4  03 30 9c e7                                      ldr r3, [ip, r3]
003decc8  00 30 93 e5                                      ldr r3, [r3]
003deccc  02 00 53 e3                                      cmp r3, #2
003decd0  08 00 00 0a                                      beq #0x3decf8
003decd4  01 00 53 e3                                      cmp r3, #1
003decd8  1e 00 00 0a                                      beq #0x3ded58
003decdc  0c d0 8d e2                                      add sp, sp, #0xc
003dece0  00 80 bd e8                                      ldm sp!, {pc}
003dece4  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003dece8  03 30 9c e7                                      ldr r3, [ip, r3]
003decec  00 30 93 e5                                      ldr r3, [r3]
003decf0  02 00 53 e3                                      cmp r3, #2
003decf4  08 00 00 1a                                      bne #0x3ded1c
003decf8  00 30 a0 e3                                      mov r3, #0
003decfc  00 30 83 e5                                      str r3, [r3]
003ded00  f5 ff ff ea                                      b #0x3decdc
003ded04  88 00 9f e5                                      ldr r0, [pc, #0x88]
003ded08  00 00 9c e7                                      ldr r0, [ip, r0]
003ded0c  02 21 90 e7                                      ldr r2, [r0, r2, lsl #2]
003ded10  02 10 81 e0                                      add r1, r1, r2
003ded14  04 30 81 e5                                      str r3, [r1, #4]
003ded18  ef ff ff ea                                      b #0x3decdc
003ded1c  01 00 53 e3                                      cmp r3, #1
003ded20  ed ff ff 1a                                      bne #0x3decdc
003ded24  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
003ded28  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003ded2c  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003ded30  00 00 9c e7                                      ldr r0, [ip, r0]
003ded34  68 30 9f e5                                      ldr r3, [pc, #0x68]
003ded38  13 c1 00 e3                                      movw ip, #0x113
003ded3c  01 10 8f e0                                      add r1, pc, r1
003ded40  02 20 8f e0                                      add r2, pc, r2
003ded44  03 30 8f e0                                      add r3, pc, r3
003ded48  a8 00 80 e2                                      add r0, r0, #0xa8
003ded4c  00 c0 8d e5                                      str ip, [sp]
003ded50  ab bc fc eb                                      bl #0x30e004
003ded54  e0 ff ff ea                                      b #0x3decdc
003ded58  38 00 9f e5                                      ldr r0, [pc, #0x38]
003ded5c  44 10 9f e5                                      ldr r1, [pc, #0x44]
003ded60  44 20 9f e5                                      ldr r2, [pc, #0x44]
003ded64  00 00 9c e7                                      ldr r0, [ip, r0]
003ded68  40 30 9f e5                                      ldr r3, [pc, #0x40]
003ded6c  45 cf a0 e3                                      mov ip, #0x114
003ded70  01 10 8f e0                                      add r1, pc, r1
003ded74  02 20 8f e0                                      add r2, pc, r2
003ded78  03 30 8f e0                                      add r3, pc, r3
003ded7c  a8 00 80 e2                                      add r0, r0, #0xa8
003ded80  00 c0 8d e5                                      str ip, [sp]
003ded84  9e bc fc eb                                      bl #0x30e004
003ded88  d3 ff ff ea                                      b #0x3decdc
; mapping-symbol data/literal pool
003ded8c  e0 5d 5b 00 c0 39 00 00 a8 22 00 00 c0 19 00 00  .byte 0xe0, 0x5d, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xa8, 0x22, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003ded9c  9c f6 4d 00 d0 6f 4e 00 6c 6f 4e 00 68 f6 4d 00  .byte 0x9c, 0xf6, 0x4d, 0x00, 0xd0, 0x6f, 0x4e, 0x00, 0x6c, 0x6f, 0x4e, 0x00, 0x68, 0xf6, 0x4d, 0x00
003dedac  ac 6f 4e 00 38 6f 4e 00                          .byte 0xac, 0x6f, 0x4e, 0x00, 0x38, 0x6f, 0x4e, 0x00

; FUNCTION 0x003dedb4, declared_size=292, range_size=292, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties12_GetPropertyERKN7Structs19CharacterPropertiesEi
; demangled: CharProperties::_GetProperty(Structs::CharacterProperties const&, int) const
; decoder-mode: arm
003dedb4  04 e0 2d e5                                      str lr, [sp, #-4]!
003dedb8  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
003dedbc  00 00 52 e3                                      cmp r2, #0
003dedc0  0c d0 4d e2                                      sub sp, sp, #0xc
003dedc4  03 30 8f e0                                      add r3, pc, r3
003dedc8  0b 00 00 ba                                      blt #0x3dedfc
003dedcc  df 00 52 e3                                      cmp r2, #0xdf
003dedd0  12 00 00 da                                      ble #0x3dee20
003dedd4  d8 20 9f e5                                      ldr r2, [pc, #0xd8]
003dedd8  02 20 93 e7                                      ldr r2, [r3, r2]
003deddc  00 20 92 e5                                      ldr r2, [r2]
003dede0  02 00 52 e3                                      cmp r2, #2
003dede4  09 00 00 0a                                      beq #0x3dee10
003dede8  01 00 52 e3                                      cmp r2, #1
003dedec  21 00 00 0a                                      beq #0x3dee78
003dedf0  00 00 e0 e3                                      mvn r0, #0
003dedf4  0c d0 8d e2                                      add sp, sp, #0xc
003dedf8  00 80 bd e8                                      ldm sp!, {pc}
003dedfc  b0 20 9f e5                                      ldr r2, [pc, #0xb0]
003dee00  02 20 93 e7                                      ldr r2, [r3, r2]
003dee04  00 20 92 e5                                      ldr r2, [r2]
003dee08  02 00 52 e3                                      cmp r2, #2
003dee0c  09 00 00 1a                                      bne #0x3dee38
003dee10  00 30 a0 e3                                      mov r3, #0
003dee14  00 30 83 e5                                      str r3, [r3]
003dee18  00 00 e0 e3                                      mvn r0, #0
003dee1c  f4 ff ff ea                                      b #0x3dedf4
003dee20  90 00 9f e5                                      ldr r0, [pc, #0x90]
003dee24  00 30 93 e7                                      ldr r3, [r3, r0]
003dee28  02 31 93 e7                                      ldr r3, [r3, r2, lsl #2]
003dee2c  03 10 81 e0                                      add r1, r1, r3
003dee30  04 00 91 e5                                      ldr r0, [r1, #4]
003dee34  ee ff ff ea                                      b #0x3dedf4
003dee38  01 00 52 e3                                      cmp r2, #1
003dee3c  eb ff ff 1a                                      bne #0x3dedf0
003dee40  74 00 9f e5                                      ldr r0, [pc, #0x74]
003dee44  74 10 9f e5                                      ldr r1, [pc, #0x74]
003dee48  74 20 9f e5                                      ldr r2, [pc, #0x74]
003dee4c  00 00 93 e7                                      ldr r0, [r3, r0]
003dee50  70 30 9f e5                                      ldr r3, [pc, #0x70]
003dee54  03 c1 00 e3                                      movw ip, #0x103
003dee58  01 10 8f e0                                      add r1, pc, r1
003dee5c  a8 00 80 e2                                      add r0, r0, #0xa8
003dee60  02 20 8f e0                                      add r2, pc, r2
003dee64  03 30 8f e0                                      add r3, pc, r3
003dee68  00 c0 8d e5                                      str ip, [sp]
003dee6c  64 bc fc eb                                      bl #0x30e004
003dee70  00 00 e0 e3                                      mvn r0, #0
003dee74  de ff ff ea                                      b #0x3dedf4
003dee78  3c 00 9f e5                                      ldr r0, [pc, #0x3c]
003dee7c  48 10 9f e5                                      ldr r1, [pc, #0x48]
003dee80  48 20 9f e5                                      ldr r2, [pc, #0x48]
003dee84  00 00 93 e7                                      ldr r0, [r3, r0]
003dee88  44 30 9f e5                                      ldr r3, [pc, #0x44]
003dee8c  41 cf a0 e3                                      mov ip, #0x104
003dee90  01 10 8f e0                                      add r1, pc, r1
003dee94  a8 00 80 e2                                      add r0, r0, #0xa8
003dee98  02 20 8f e0                                      add r2, pc, r2
003dee9c  03 30 8f e0                                      add r3, pc, r3
003deea0  00 c0 8d e5                                      str ip, [sp]
003deea4  56 bc fc eb                                      bl #0x30e004
003deea8  00 00 e0 e3                                      mvn r0, #0
003deeac  d0 ff ff ea                                      b #0x3dedf4
; mapping-symbol data/literal pool
003deeb0  cc 5c 5b 00 c0 39 00 00 a8 22 00 00 c0 19 00 00  .byte 0xcc, 0x5c, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xa8, 0x22, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
003deec0  80 f5 4d 00 b0 6e 4e 00 4c 6e 4e 00 48 f5 4d 00  .byte 0x80, 0xf5, 0x4d, 0x00, 0xb0, 0x6e, 0x4e, 0x00, 0x4c, 0x6e, 0x4e, 0x00, 0x48, 0xf5, 0x4d, 0x00
003deed0  88 6e 4e 00 14 6e 4e 00                          .byte 0x88, 0x6e, 0x4e, 0x00, 0x14, 0x6e, 0x4e, 0x00

; FUNCTION 0x003deed8, declared_size=56, range_size=56, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties8_GetTypeEi
; demangled: CharProperties::_GetType(int) const
; decoder-mode: arm
003deed8  28 30 9f e5                                      ldr r3, [pc, #0x28]
003deedc  01 20 a0 e1                                      mov r2, r1
003deee0  24 10 9f e5                                      ldr r1, [pc, #0x24]
003deee4  10 40 2d e9                                      push {r4, lr}
003deee8  03 30 8f e0                                      add r3, pc, r3
003deeec  01 c0 93 e7                                      ldr ip, [r3, r1]
003deef0  00 10 9c e5                                      ldr r1, [ip]
003deef4  e1 1f 81 e2                                      add r1, r1, #0x384
003deef8  ad ff ff eb                                      bl #0x3dedb4
003deefc  01 00 70 e3                                      cmn r0, #1
003def00  10 00 a0 03                                      moveq r0, #0x10
003def04  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003def08  a8 5b 5b 00 50 2b 00 00                          .byte 0xa8, 0x5b, 0x5b, 0x00, 0x50, 0x2b, 0x00, 0x00

; FUNCTION 0x003def10, declared_size=36, range_size=36, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties11_GetDefaultEi
; demangled: CharProperties::_GetDefault(int) const
; decoder-mode: arm
003def10  14 30 9f e5                                      ldr r3, [pc, #0x14]
003def14  01 20 a0 e1                                      mov r2, r1
003def18  10 10 9f e5                                      ldr r1, [pc, #0x10]
003def1c  03 30 8f e0                                      add r3, pc, r3
003def20  01 c0 93 e7                                      ldr ip, [r3, r1]
003def24  00 10 9c e5                                      ldr r1, [ip]
003def28  a1 ff ff ea                                      b #0x3dedb4
; mapping-symbol data/literal pool
003def2c  74 5b 5b 00 50 2b 00 00                          .byte 0x74, 0x5b, 0x5b, 0x00, 0x50, 0x2b, 0x00, 0x00

; FUNCTION 0x003def34, declared_size=80, range_size=80, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties16_ResetPropertiesERN7Structs19CharacterPropertiesE
; demangled: CharProperties::_ResetProperties(Structs::CharacterProperties&)
; decoder-mode: arm
003def34  40 30 9f e5                                      ldr r3, [pc, #0x40]
003def38  40 20 9f e5                                      ldr r2, [pc, #0x40]
003def3c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003def40  03 30 8f e0                                      add r3, pc, r3
003def44  00 80 a0 e1                                      mov r8, r0
003def48  02 70 93 e7                                      ldr r7, [r3, r2]
003def4c  01 60 a0 e1                                      mov r6, r1
003def50  00 40 a0 e3                                      mov r4, #0
003def54  04 10 a0 e1                                      mov r1, r4
003def58  08 00 a0 e1                                      mov r0, r8
003def5c  04 51 97 e7                                      ldr r5, [r7, r4, lsl #2]
003def60  ea ff ff eb                                      bl #0x3def10
003def64  01 40 84 e2                                      add r4, r4, #1
003def68  04 50 85 e2                                      add r5, r5, #4
003def6c  e0 00 54 e3                                      cmp r4, #0xe0
003def70  05 00 86 e7                                      str r0, [r6, r5]
003def74  f6 ff ff 1a                                      bne #0x3def54
003def78  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003def7c  50 5b 5b 00 a8 22 00 00                          .byte 0x50, 0x5b, 0x5b, 0x00, 0xa8, 0x22, 0x00, 0x00

; FUNCTION 0x003def84, declared_size=40, range_size=40, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties16PROPS_ResetSheetEPN7Structs19CharacterPropertiesE
; demangled: CharProperties::PROPS_ResetSheet(Structs::CharacterProperties*)
; decoder-mode: arm
003def84  18 30 9f e5                                      ldr r3, [pc, #0x18]
003def88  00 00 51 e3                                      cmp r1, #0
003def8c  03 30 8f e0                                      add r3, pc, r3
003def90  00 00 00 0a                                      beq #0x3def98
003def94  e6 ff ff ea                                      b #0x3def34
003def98  08 20 9f e5                                      ldr r2, [pc, #8]
003def9c  02 10 93 e7                                      ldr r1, [r3, r2]
003defa0  fb ff ff ea                                      b #0x3def94
; mapping-symbol data/literal pool
003defa4  04 5b 5b 00 4c 10 00 00                          .byte 0x04, 0x5b, 0x5b, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003defac, declared_size=8, range_size=8, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties20ResetGearsPropertiesEv
; demangled: CharProperties::ResetGearsProperties()
; decoder-mode: arm
003defac  71 1e 80 e2                                      add r1, r0, #0x710
003defb0  df ff ff ea                                      b #0x3def34

; FUNCTION 0x003defb4, declared_size=8, range_size=8, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties20ResetSavedPropertiesEv
; demangled: CharProperties::ResetSavedProperties()
; decoder-mode: arm
003defb4  e3 1f 80 e2                                      add r1, r0, #0x38c
003defb8  dd ff ff ea                                      b #0x3def34

; FUNCTION 0x003defbc, declared_size=8, range_size=8, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties19ResetBasePropertiesEv
; demangled: CharProperties::ResetBaseProperties()
; decoder-mode: arm
003defbc  08 10 80 e2                                      add r1, r0, #8
003defc0  db ff ff ea                                      b #0x3def34

; FUNCTION 0x003defc4, declared_size=48, range_size=48, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties18ResetAllPropertiesEv
; demangled: CharProperties::ResetAllProperties()
; decoder-mode: arm
003defc4  10 40 2d e9                                      push {r4, lr}
003defc8  00 40 a0 e1                                      mov r4, r0
003defcc  fa ff ff eb                                      bl #0x3defbc
003defd0  04 00 a0 e1                                      mov r0, r4
003defd4  f6 ff ff eb                                      bl #0x3defb4
003defd8  04 00 a0 e1                                      mov r0, r4
003defdc  f2 ff ff eb                                      bl #0x3defac
003defe0  a9 1e 84 e2                                      add r1, r4, #0xa90
003defe4  04 00 a0 e1                                      mov r0, r4
003defe8  04 10 81 e2                                      add r1, r1, #4
003defec  10 40 bd e8                                      pop {r4, lr}
003deff0  cf ff ff ea                                      b #0x3def34

; FUNCTION 0x003deff4, declared_size=144, range_size=144, mode=arm
; class-group: CharProperties
; alias: _ZN14CharPropertiesC1Ev
; demangled: CharProperties::CharProperties()
; decoder-mode: arm
003deff4  70 40 2d e9                                      push {r4, r5, r6, lr}
003deff8  74 50 9f e5                                      ldr r5, [pc, #0x74]
003deffc  74 30 9f e5                                      ldr r3, [pc, #0x74]
003df000  74 10 9f e5                                      ldr r1, [pc, #0x74]
003df004  05 50 8f e0                                      add r5, pc, r5
003df008  03 30 95 e7                                      ldr r3, [r5, r3]
003df00c  01 10 95 e7                                      ldr r1, [r5, r1]
003df010  e1 2e 80 e2                                      add r2, r0, #0xe10
003df014  08 20 82 e2                                      add r2, r2, #8
003df018  08 10 81 e2                                      add r1, r1, #8
003df01c  08 c0 83 e2                                      add ip, r3, #8
003df020  00 30 a0 e3                                      mov r3, #0
003df024  00 c0 80 e5                                      str ip, [r0]
003df028  24 2e 80 e5                                      str r2, [r0, #0xe24]
003df02c  20 2e 80 e5                                      str r2, [r0, #0xe20]
003df030  94 1a 80 e5                                      str r1, [r0, #0xa94]
003df034  30 3e 80 e5                                      str r3, [r0, #0xe30]
003df038  04 30 80 e5                                      str r3, [r0, #4]
003df03c  08 10 80 e5                                      str r1, [r0, #8]
003df040  8c 13 80 e5                                      str r1, [r0, #0x38c]
003df044  10 17 80 e5                                      str r1, [r0, #0x710]
003df048  1c 3e 80 e5                                      str r3, [r0, #0xe1c]
003df04c  18 3e c0 e5                                      strb r3, [r0, #0xe18]
003df050  28 3e 80 e5                                      str r3, [r0, #0xe28]
003df054  00 40 a0 e1                                      mov r4, r0
003df058  d9 ff ff eb                                      bl #0x3defc4
003df05c  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003df060  04 00 a0 e1                                      mov r0, r4
003df064  03 10 95 e7                                      ldr r1, [r5, r3]
003df068  b1 ff ff eb                                      bl #0x3def34
003df06c  04 00 a0 e1                                      mov r0, r4
003df070  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003df074  8c 5a 5b 00 d0 39 00 00 8c 29 00 00 4c 10 00 00  .byte 0x8c, 0x5a, 0x5b, 0x00, 0xd0, 0x39, 0x00, 0x00, 0x8c, 0x29, 0x00, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003df084, declared_size=144, range_size=144, mode=arm
; class-group: CharProperties
; alias: _ZN14CharPropertiesC2Ev
; demangled: CharProperties::CharProperties()
; decoder-mode: arm
003df084  70 40 2d e9                                      push {r4, r5, r6, lr}
003df088  74 50 9f e5                                      ldr r5, [pc, #0x74]
003df08c  74 30 9f e5                                      ldr r3, [pc, #0x74]
003df090  74 10 9f e5                                      ldr r1, [pc, #0x74]
003df094  05 50 8f e0                                      add r5, pc, r5
003df098  03 30 95 e7                                      ldr r3, [r5, r3]
003df09c  01 10 95 e7                                      ldr r1, [r5, r1]
003df0a0  e1 2e 80 e2                                      add r2, r0, #0xe10
003df0a4  08 20 82 e2                                      add r2, r2, #8
003df0a8  08 10 81 e2                                      add r1, r1, #8
003df0ac  08 c0 83 e2                                      add ip, r3, #8
003df0b0  00 30 a0 e3                                      mov r3, #0
003df0b4  00 c0 80 e5                                      str ip, [r0]
003df0b8  24 2e 80 e5                                      str r2, [r0, #0xe24]
003df0bc  20 2e 80 e5                                      str r2, [r0, #0xe20]
003df0c0  94 1a 80 e5                                      str r1, [r0, #0xa94]
003df0c4  30 3e 80 e5                                      str r3, [r0, #0xe30]
003df0c8  04 30 80 e5                                      str r3, [r0, #4]
003df0cc  08 10 80 e5                                      str r1, [r0, #8]
003df0d0  8c 13 80 e5                                      str r1, [r0, #0x38c]
003df0d4  10 17 80 e5                                      str r1, [r0, #0x710]
003df0d8  1c 3e 80 e5                                      str r3, [r0, #0xe1c]
003df0dc  18 3e c0 e5                                      strb r3, [r0, #0xe18]
003df0e0  28 3e 80 e5                                      str r3, [r0, #0xe28]
003df0e4  00 40 a0 e1                                      mov r4, r0
003df0e8  b5 ff ff eb                                      bl #0x3defc4
003df0ec  1c 30 9f e5                                      ldr r3, [pc, #0x1c]
003df0f0  04 00 a0 e1                                      mov r0, r4
003df0f4  03 10 95 e7                                      ldr r1, [r5, r3]
003df0f8  8d ff ff eb                                      bl #0x3def34
003df0fc  04 00 a0 e1                                      mov r0, r4
003df100  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003df104  fc 59 5b 00 d0 39 00 00 8c 29 00 00 4c 10 00 00  .byte 0xfc, 0x59, 0x5b, 0x00, 0xd0, 0x39, 0x00, 0x00, 0x8c, 0x29, 0x00, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003df114, declared_size=44, range_size=44, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties14_IsPropertySetERKN7Structs19CharacterPropertiesEi
; demangled: CharProperties::_IsPropertySet(Structs::CharacterProperties const&, int) const
; decoder-mode: arm
003df114  70 40 2d e9                                      push {r4, r5, r6, lr}
003df118  02 40 a0 e1                                      mov r4, r2
003df11c  00 50 a0 e1                                      mov r5, r0
003df120  23 ff ff eb                                      bl #0x3dedb4
003df124  04 10 a0 e1                                      mov r1, r4
003df128  00 60 a0 e1                                      mov r6, r0
003df12c  05 00 a0 e1                                      mov r0, r5
003df130  76 ff ff eb                                      bl #0x3def10
003df134  00 00 56 e0                                      subs r0, r6, r0
003df138  01 00 a0 13                                      movne r0, #1
003df13c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003df140, declared_size=96, range_size=96, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties12_AddPropertyERN7Structs19CharacterPropertiesEii
; demangled: CharProperties::_AddProperty(Structs::CharacterProperties&, int, int)
; decoder-mode: arm
003df140  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003df144  03 70 a0 e1                                      mov r7, r3
003df148  00 60 a0 e1                                      mov r6, r0
003df14c  01 50 a0 e1                                      mov r5, r1
003df150  02 40 a0 e1                                      mov r4, r2
003df154  ee ff ff eb                                      bl #0x3df114
003df158  00 00 50 e3                                      cmp r0, #0
003df15c  05 00 00 1a                                      bne #0x3df178
003df160  06 00 a0 e1                                      mov r0, r6
003df164  05 10 a0 e1                                      mov r1, r5
003df168  04 20 a0 e1                                      mov r2, r4
003df16c  07 30 a0 e1                                      mov r3, r7
003df170  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003df174  c9 fe ff ea                                      b #0x3deca0
003df178  05 10 a0 e1                                      mov r1, r5
003df17c  04 20 a0 e1                                      mov r2, r4
003df180  06 00 a0 e1                                      mov r0, r6
003df184  0a ff ff eb                                      bl #0x3dedb4
003df188  05 10 a0 e1                                      mov r1, r5
003df18c  07 30 80 e0                                      add r3, r0, r7
003df190  04 20 a0 e1                                      mov r2, r4
003df194  06 00 a0 e1                                      mov r0, r6
003df198  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003df19c  bf fe ff ea                                      b #0x3deca0

; FUNCTION 0x003df250, declared_size=84, range_size=84, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties18_LoadFromCharTableERN7Structs19CharacterPropertiesEi
; demangled: CharProperties::_LoadFromCharTable(Structs::CharacterProperties&, int)
; decoder-mode: arm
003df250  40 30 9f e5                                      ldr r3, [pc, #0x40]
003df254  00 c0 52 e2                                      subs ip, r2, #0
003df258  03 30 8f e0                                      add r3, pc, r3
003df25c  1e ff 2f b1                                      bxlt lr
003df260  34 20 9f e5                                      ldr r2, [pc, #0x34]
003df264  02 20 93 e7                                      ldr r2, [r3, r2]
003df268  00 20 92 e5                                      ldr r2, [r2]
003df26c  02 00 5c e1                                      cmp ip, r2
003df270  1e ff 2f a1                                      bxge lr
003df274  24 20 9f e5                                      ldr r2, [pc, #0x24]
003df278  04 00 81 e2                                      add r0, r1, #4
003df27c  e1 1f a0 e3                                      mov r1, #0x384
003df280  02 30 93 e7                                      ldr r3, [r3, r2]
003df284  0e 2d a0 e3                                      mov r2, #0x380
003df288  00 30 93 e5                                      ldr r3, [r3]
003df28c  91 3c 2c e0                                      mla ip, r1, ip, r3
003df290  04 10 8c e2                                      add r1, ip, #4
003df294  73 bd fc ea                                      b #0x30e868
; mapping-symbol data/literal pool
003df298  38 58 5b 00 04 42 00 00 50 2b 00 00              .byte 0x38, 0x58, 0x5b, 0x00, 0x04, 0x42, 0x00, 0x00, 0x50, 0x2b, 0x00, 0x00

; FUNCTION 0x003df2a4, declared_size=12, range_size=12, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties18LoadBasePropertiesEi
; demangled: CharProperties::LoadBaseProperties(int)
; decoder-mode: arm
003df2a4  01 20 a0 e1                                      mov r2, r1
003df2a8  08 10 80 e2                                      add r1, r0, #8
003df2ac  e7 ff ff ea                                      b #0x3df250

; FUNCTION 0x003df2b0, declared_size=100, range_size=100, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties15UnLoadPropNamesEv
; demangled: CharProperties::UnLoadPropNames()
; decoder-mode: arm
003df2b0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003df2b4  50 70 9f e5                                      ldr r7, [pc, #0x50]
003df2b8  50 80 9f e5                                      ldr r8, [pc, #0x50]
003df2bc  07 70 8f e0                                      add r7, pc, r7
003df2c0  08 30 97 e7                                      ldr r3, [r7, r8]
003df2c4  30 00 93 e8                                      ldm r3, {r4, r5}
003df2c8  05 00 54 e1                                      cmp r4, r5
003df2cc  0d 00 00 0a                                      beq #0x3df308
003df2d0  00 60 a0 e3                                      mov r6, #0
003df2d4  00 00 94 e5                                      ldr r0, [r4]
003df2d8  00 00 50 e3                                      cmp r0, #0
003df2dc  01 00 00 0a                                      beq #0x3df2e8
003df2e0  56 c4 fc eb                                      bl #0x310440
003df2e4  00 60 84 e5                                      str r6, [r4]
003df2e8  04 40 84 e2                                      add r4, r4, #4
003df2ec  05 00 54 e1                                      cmp r4, r5
003df2f0  f7 ff ff 1a                                      bne #0x3df2d4
003df2f4  08 30 97 e7                                      ldr r3, [r7, r8]
003df2f8  00 20 93 e5                                      ldr r2, [r3]
003df2fc  04 10 93 e5                                      ldr r1, [r3, #4]
003df300  01 00 52 e1                                      cmp r2, r1
003df304  04 20 83 15                                      strne r2, [r3, #4]
003df308  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003df30c  d4 57 5b 00 80 11 00 00                          .byte 0xd4, 0x57, 0x5b, 0x00, 0x80, 0x11, 0x00, 0x00

; FUNCTION 0x003df314, declared_size=164, range_size=164, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties23PROPS_ApplyClassToSheetEiPN7Structs19CharacterPropertiesE
; demangled: CharProperties::PROPS_ApplyClassToSheet(int, Structs::CharacterProperties*)
; decoder-mode: arm
003df314  04 e0 2d e5                                      str lr, [sp, #-4]!
003df318  80 30 9f e5                                      ldr r3, [pc, #0x80]
003df31c  00 c0 52 e2                                      subs ip, r2, #0
003df320  0c d0 4d e2                                      sub sp, sp, #0xc
003df324  01 20 a0 e1                                      mov r2, r1
003df328  03 30 8f e0                                      add r3, pc, r3
003df32c  04 00 00 0a                                      beq #0x3df344
003df330  0c 10 a0 e1                                      mov r1, ip
003df334  01 30 a0 e3                                      mov r3, #1
003df338  0c d0 8d e2                                      add sp, sp, #0xc
003df33c  04 e0 9d e4                                      pop {lr}
003df340  b6 0e 00 ea                                      b #0x3e2e20
003df344  58 20 9f e5                                      ldr r2, [pc, #0x58]
003df348  02 20 93 e7                                      ldr r2, [r3, r2]
003df34c  00 20 92 e5                                      ldr r2, [r2]
003df350  02 00 52 e3                                      cmp r2, #2
003df354  00 c0 8c 05                                      streq ip, [ip]
003df358  01 00 00 0a                                      beq #0x3df364
003df35c  01 00 52 e3                                      cmp r2, #1
003df360  01 00 00 0a                                      beq #0x3df36c
003df364  0c d0 8d e2                                      add sp, sp, #0xc
003df368  00 80 bd e8                                      ldm sp!, {pc}
003df36c  34 00 9f e5                                      ldr r0, [pc, #0x34]
003df370  34 10 9f e5                                      ldr r1, [pc, #0x34]
003df374  34 20 9f e5                                      ldr r2, [pc, #0x34]
003df378  00 00 93 e7                                      ldr r0, [r3, r0]
003df37c  30 30 9f e5                                      ldr r3, [pc, #0x30]
003df380  c7 cf a0 e3                                      mov ip, #0x31c
003df384  01 10 8f e0                                      add r1, pc, r1
003df388  02 20 8f e0                                      add r2, pc, r2
003df38c  03 30 8f e0                                      add r3, pc, r3
003df390  a8 00 80 e2                                      add r0, r0, #0xa8
003df394  00 c0 8d e5                                      str ip, [sp]
003df398  19 bb fc eb                                      bl #0x30e004
003df39c  f0 ff ff ea                                      b #0x3df364
; mapping-symbol data/literal pool
003df3a0  68 57 5b 00 c0 39 00 00 c0 19 00 00 54 f0 4d 00  .byte 0x68, 0x57, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x54, 0xf0, 0x4d, 0x00
003df3b0  40 4b 4e 00 24 69 4e 00                          .byte 0x40, 0x4b, 0x4e, 0x00, 0x24, 0x69, 0x4e, 0x00

; FUNCTION 0x003df3b8, declared_size=56, range_size=56, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties16PROPS_ApplyClassEib
; demangled: CharProperties::PROPS_ApplyClass(int, bool)
; decoder-mode: arm
003df3b8  28 c0 9f e5                                      ldr ip, [pc, #0x28]
003df3bc  00 30 52 e2                                      subs r3, r2, #0
003df3c0  01 20 a0 e1                                      mov r2, r1
003df3c4  0c c0 8f e0                                      add ip, pc, ip
003df3c8  02 00 00 1a                                      bne #0x3df3d8
003df3cc  a9 1e 80 e2                                      add r1, r0, #0xa90
003df3d0  04 10 81 e2                                      add r1, r1, #4
003df3d4  91 0e 00 ea                                      b #0x3e2e20
003df3d8  0c 10 9f e5                                      ldr r1, [pc, #0xc]
003df3dc  01 30 a0 e3                                      mov r3, #1
003df3e0  01 10 9c e7                                      ldr r1, [ip, r1]
003df3e4  8d 0e 00 ea                                      b #0x3e2e20
; mapping-symbol data/literal pool
003df3e8  cc 56 5b 00 4c 10 00 00                          .byte 0xcc, 0x56, 0x5b, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003df3f0, declared_size=144, range_size=144, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties10HandleDotsEv
; demangled: CharProperties::HandleDots()
; decoder-mode: arm
003df3f0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003df3f4  a9 6e 80 e2                                      add r6, r0, #0xa90
003df3f8  30 d0 4d e2                                      sub sp, sp, #0x30
003df3fc  00 50 a0 e1                                      mov r5, r0
003df400  04 60 86 e2                                      add r6, r6, #4
003df404  00 40 e0 e3                                      mvn r4, #0
003df408  08 70 8d e2                                      add r7, sp, #8
003df40c  7f 20 84 e2                                      add r2, r4, #0x7f
003df410  06 10 a0 e1                                      mov r1, r6
003df414  05 00 a0 e1                                      mov r0, r5
003df418  65 fe ff eb                                      bl #0x3dedb4
003df41c  00 80 50 e2                                      subs r8, r0, #0
003df420  11 00 00 da                                      ble #0x3df46c
003df424  04 30 95 e5                                      ldr r3, [r5, #4]
003df428  03 00 a0 e1                                      mov r0, r3
003df42c  00 30 93 e5                                      ldr r3, [r3]
003df430  0f e0 a0 e1                                      mov lr, pc
003df434  34 f0 93 e5                                      ldr pc, [r3, #0x34]
003df438  08 30 a0 e1                                      mov r3, r8
003df43c  00 80 50 e2                                      subs r8, r0, #0
003df440  07 00 a0 e1                                      mov r0, r7
003df444  08 00 00 1a                                      bne #0x3df46c
003df448  04 10 95 e5                                      ldr r1, [r5, #4]
003df44c  00 40 8d e5                                      str r4, [sp]
003df450  01 20 a0 e1                                      mov r2, r1
003df454  83 4e ff eb                                      bl #0x3b2e68
003df458  04 10 95 e5                                      ldr r1, [r5, #4]
003df45c  08 30 a0 e1                                      mov r3, r8
003df460  07 00 a0 e1                                      mov r0, r7
003df464  01 20 a0 e1                                      mov r2, r1
003df468  11 47 ff eb                                      bl #0x3b10b4
003df46c  01 40 84 e2                                      add r4, r4, #1
003df470  05 00 54 e3                                      cmp r4, #5
003df474  e4 ff ff 1a                                      bne #0x3df40c
003df478  30 d0 8d e2                                      add sp, sp, #0x30
003df47c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003df480, declared_size=200, range_size=200, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties19LoadGearsPropertiesEv
; demangled: CharProperties::LoadGearsProperties()
; decoder-mode: arm
003df480  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003df484  00 50 a0 e1                                      mov r5, r0
003df488  04 00 95 e5                                      ldr r0, [r5, #4]
003df48c  00 70 a0 e3                                      mov r7, #0
003df490  df 0f 80 e2                                      add r0, r0, #0x37c
003df494  21 82 00 eb                                      bl #0x3ffd20
003df498  00 00 57 e1                                      cmp r7, r0
003df49c  28 00 00 2a                                      bhs #0x3df544
003df4a0  04 00 95 e5                                      ldr r0, [r5, #4]
003df4a4  07 10 a0 e1                                      mov r1, r7
003df4a8  df 0f 80 e2                                      add r0, r0, #0x37c
003df4ac  62 82 00 eb                                      bl #0x3ffe3c
003df4b0  00 60 50 e2                                      subs r6, r0, #0
003df4b4  1c 00 00 0a                                      beq #0x3df52c
003df4b8  50 6a 00 eb                                      bl #0x3f9e00
003df4bc  00 80 a0 e1                                      mov r8, r0
003df4c0  04 00 95 e5                                      ldr r0, [r5, #4]
003df4c4  07 10 a0 e1                                      mov r1, r7
003df4c8  00 40 a0 e3                                      mov r4, #0
003df4cc  df 0f 80 e2                                      add r0, r0, #0x37c
003df4d0  55 83 00 eb                                      bl #0x40022c
003df4d4  08 10 a0 e1                                      mov r1, r8
003df4d8  00 20 a0 e1                                      mov r2, r0
003df4dc  05 00 a0 e1                                      mov r0, r5
003df4e0  1b 0f 00 eb                                      bl #0x3e3154
003df4e4  0a 00 00 ea                                      b #0x3df514
003df4e8  d2 6a 00 eb                                      bl #0x3fa038
003df4ec  00 80 a0 e1                                      mov r8, r0
003df4f0  04 00 95 e5                                      ldr r0, [r5, #4]
003df4f4  07 10 a0 e1                                      mov r1, r7
003df4f8  01 40 84 e2                                      add r4, r4, #1
003df4fc  df 0f 80 e2                                      add r0, r0, #0x37c
003df500  49 83 00 eb                                      bl #0x40022c
003df504  08 10 a0 e1                                      mov r1, r8
003df508  00 20 a0 e1                                      mov r2, r0
003df50c  05 00 a0 e1                                      mov r0, r5
003df510  67 0f 00 eb                                      bl #0x3e32b4
003df514  06 00 a0 e1                                      mov r0, r6
003df518  58 6a 00 eb                                      bl #0x3f9e80
003df51c  00 00 54 e1                                      cmp r4, r0
003df520  04 10 a0 e1                                      mov r1, r4
003df524  06 00 a0 e1                                      mov r0, r6
003df528  ee ff ff 3a                                      blo #0x3df4e8
003df52c  04 00 95 e5                                      ldr r0, [r5, #4]
003df530  01 70 87 e2                                      add r7, r7, #1
003df534  df 0f 80 e2                                      add r0, r0, #0x37c
003df538  f8 81 00 eb                                      bl #0x3ffd20
003df53c  00 00 57 e1                                      cmp r7, r0
003df540  d6 ff ff 3a                                      blo #0x3df4a0
003df544  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003df6e0, declared_size=56, range_size=56, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties12PROPS_GetIntEib
; demangled: CharProperties::PROPS_GetInt(int, bool) const
; decoder-mode: arm
003df6e0  28 30 9f e5                                      ldr r3, [pc, #0x28]
003df6e4  00 00 52 e3                                      cmp r2, #0
003df6e8  01 20 a0 e1                                      mov r2, r1
003df6ec  a9 1e 80 02                                      addeq r1, r0, #0xa90
003df6f0  03 30 8f e0                                      add r3, pc, r3
003df6f4  10 40 2d e9                                      push {r4, lr}
003df6f8  04 10 81 02                                      addeq r1, r1, #4
003df6fc  10 10 9f 15                                      ldrne r1, [pc, #0x10]
003df700  01 10 93 17                                      ldrne r1, [r3, r1]
003df704  aa fd ff eb                                      bl #0x3dedb4
003df708  40 04 a0 e1                                      asr r0, r0, #8
003df70c  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003df710  a0 53 5b 00 4c 10 00 00                          .byte 0xa0, 0x53, 0x5b, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003df718, declared_size=84, range_size=84, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties25PROPS_GetMagicDamageBonusEv
; demangled: CharProperties::PROPS_GetMagicDamageBonus() const
; decoder-mode: arm
003df718  70 40 2d e9                                      push {r4, r5, r6, lr}
003df71c  04 40 90 e5                                      ldr r4, [r0, #4]
003df720  00 10 e0 e3                                      mvn r1, #0
003df724  00 50 a0 e1                                      mov r5, r0
003df728  04 00 a0 e1                                      mov r0, r4
003df72c  96 70 ff eb                                      bl #0x3bb98c
003df730  00 10 a0 e1                                      mov r1, r0
003df734  04 00 a0 e1                                      mov r0, r4
003df738  e0 3c ff eb                                      bl #0x3aeac0
003df73c  08 20 90 e5                                      ldr r2, [r0, #8]
003df740  01 00 72 e3                                      cmn r2, #1
003df744  06 00 00 0a                                      beq #0x3df764
003df748  04 00 95 e5                                      ldr r0, [r5, #4]
003df74c  a6 20 82 e2                                      add r2, r2, #0xa6
003df750  ff 1e 80 e2                                      add r1, r0, #0xff0
003df754  04 10 81 e2                                      add r1, r1, #4
003df758  56 0e 80 e2                                      add r0, r0, #0x560
003df75c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003df760  93 fd ff ea                                      b #0x3dedb4
003df764  00 00 a0 e3                                      mov r0, #0
003df768  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003df76c, declared_size=88, range_size=88, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties19PROPS_GetMagicToHitEv
; demangled: CharProperties::PROPS_GetMagicToHit() const
; decoder-mode: arm
003df76c  70 40 2d e9                                      push {r4, r5, r6, lr}
003df770  04 40 90 e5                                      ldr r4, [r0, #4]
003df774  00 10 e0 e3                                      mvn r1, #0
003df778  00 50 a0 e1                                      mov r5, r0
003df77c  04 00 a0 e1                                      mov r0, r4
003df780  81 70 ff eb                                      bl #0x3bb98c
003df784  00 10 a0 e1                                      mov r1, r0
003df788  04 00 a0 e1                                      mov r0, r4
003df78c  cb 3c ff eb                                      bl #0x3aeac0
003df790  08 20 90 e5                                      ldr r2, [r0, #8]
003df794  01 00 72 e3                                      cmn r2, #1
003df798  07 00 00 0a                                      beq #0x3df7bc
003df79c  04 00 95 e5                                      ldr r0, [r5, #4]
003df7a0  9f 20 82 e2                                      add r2, r2, #0x9f
003df7a4  ff 1e 80 e2                                      add r1, r0, #0xff0
003df7a8  04 10 81 e2                                      add r1, r1, #4
003df7ac  56 0e 80 e2                                      add r0, r0, #0x560
003df7b0  7f fd ff eb                                      bl #0x3dedb4
003df7b4  4b 0c 80 e2                                      add r0, r0, #0x4b00
003df7b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003df7bc  4b 0c a0 e3                                      mov r0, #0x4b00
003df7c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003df7c4, declared_size=88, range_size=88, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties24PROPS_GetBonusCritRatingEb
; demangled: CharProperties::PROPS_GetBonusCritRating(bool) const
; decoder-mode: arm
003df7c4  10 40 2d e9                                      push {r4, lr}
003df7c8  00 40 a0 e1                                      mov r4, r0
003df7cc  04 00 90 e5                                      ldr r0, [r0, #4]
003df7d0  00 00 51 e3                                      cmp r1, #0
003df7d4  02 10 a0 13                                      movne r1, #2
003df7d8  01 10 a0 03                                      moveq r1, #1
003df7dc  df 0f 80 e2                                      add r0, r0, #0x37c
003df7e0  95 81 00 eb                                      bl #0x3ffe3c
003df7e4  00 00 50 e3                                      cmp r0, #0
003df7e8  09 00 00 0a                                      beq #0x3df814
003df7ec  85 69 00 eb                                      bl #0x3f9e08
003df7f0  94 20 90 e5                                      ldr r2, [r0, #0x94]
003df7f4  01 00 72 e3                                      cmn r2, #1
003df7f8  05 00 00 0a                                      beq #0x3df814
003df7fc  a9 1e 84 e2                                      add r1, r4, #0xa90
003df800  04 00 a0 e1                                      mov r0, r4
003df804  04 10 81 e2                                      add r1, r1, #4
003df808  40 20 82 e2                                      add r2, r2, #0x40
003df80c  10 40 bd e8                                      pop {r4, lr}
003df810  67 fd ff ea                                      b #0x3dedb4
003df814  00 00 a0 e3                                      mov r0, #0
003df818  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003df81c, declared_size=144, range_size=144, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties26PROPS_GetBonusAttackRatingEb
; demangled: CharProperties::PROPS_GetBonusAttackRating(bool) const
; decoder-mode: arm
003df81c  70 40 2d e9                                      push {r4, r5, r6, lr}
003df820  00 40 a0 e1                                      mov r4, r0
003df824  04 00 90 e5                                      ldr r0, [r0, #4]
003df828  00 00 51 e3                                      cmp r1, #0
003df82c  02 10 a0 13                                      movne r1, #2
003df830  01 10 a0 03                                      moveq r1, #1
003df834  df 0f 80 e2                                      add r0, r0, #0x37c
003df838  7f 81 00 eb                                      bl #0x3ffe3c
003df83c  00 00 50 e3                                      cmp r0, #0
003df840  11 00 00 0a                                      beq #0x3df88c
003df844  6f 69 00 eb                                      bl #0x3f9e08
003df848  94 20 90 e5                                      ldr r2, [r0, #0x94]
003df84c  01 00 72 e3                                      cmn r2, #1
003df850  0d 00 00 0a                                      beq #0x3df88c
003df854  a9 5e 84 e2                                      add r5, r4, #0xa90
003df858  04 50 85 e2                                      add r5, r5, #4
003df85c  33 20 82 e2                                      add r2, r2, #0x33
003df860  05 10 a0 e1                                      mov r1, r5
003df864  04 00 a0 e1                                      mov r0, r4
003df868  51 fd ff eb                                      bl #0x3dedb4
003df86c  00 60 a0 e1                                      mov r6, r0
003df870  04 00 94 e5                                      ldr r0, [r4, #4]
003df874  df 0f 80 e2                                      add r0, r0, #0x37c
003df878  47 82 00 eb                                      bl #0x40019c
003df87c  00 00 50 e3                                      cmp r0, #0
003df880  03 00 00 1a                                      bne #0x3df894
003df884  06 00 80 e0                                      add r0, r0, r6
003df888  70 80 bd e8                                      pop {r4, r5, r6, pc}
003df88c  00 00 a0 e3                                      mov r0, #0
003df890  70 80 bd e8                                      pop {r4, r5, r6, pc}
003df894  04 00 a0 e1                                      mov r0, r4
003df898  05 10 a0 e1                                      mov r1, r5
003df89c  3a 20 a0 e3                                      mov r2, #0x3a
003df8a0  43 fd ff eb                                      bl #0x3dedb4
003df8a4  06 00 80 e0                                      add r0, r0, r6
003df8a8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003df8ac, declared_size=212, range_size=212, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties20PROPS_GetBonusDamageEb
; demangled: CharProperties::PROPS_GetBonusDamage(bool) const
; decoder-mode: arm
003df8ac  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003df8b0  00 40 a0 e1                                      mov r4, r0
003df8b4  04 00 90 e5                                      ldr r0, [r0, #4]
003df8b8  00 00 51 e3                                      cmp r1, #0
003df8bc  02 10 a0 13                                      movne r1, #2
003df8c0  01 10 a0 03                                      moveq r1, #1
003df8c4  df 0f 80 e2                                      add r0, r0, #0x37c
003df8c8  5b 81 00 eb                                      bl #0x3ffe3c
003df8cc  00 00 50 e3                                      cmp r0, #0
003df8d0  18 00 00 0a                                      beq #0x3df938
003df8d4  4b 69 00 eb                                      bl #0x3f9e08
003df8d8  94 20 90 e5                                      ldr r2, [r0, #0x94]
003df8dc  01 00 72 e3                                      cmn r2, #1
003df8e0  14 00 00 0a                                      beq #0x3df938
003df8e4  a9 5e 84 e2                                      add r5, r4, #0xa90
003df8e8  04 50 85 e2                                      add r5, r5, #4
003df8ec  53 20 82 e2                                      add r2, r2, #0x53
003df8f0  05 10 a0 e1                                      mov r1, r5
003df8f4  04 00 a0 e1                                      mov r0, r4
003df8f8  2d fd ff eb                                      bl #0x3dedb4
003df8fc  00 70 a0 e1                                      mov r7, r0
003df900  04 00 94 e5                                      ldr r0, [r4, #4]
003df904  01 10 a0 e3                                      mov r1, #1
003df908  df 0f 80 e2                                      add r0, r0, #0x37c
003df90c  23 82 00 eb                                      bl #0x4001a0
003df910  00 00 50 e3                                      cmp r0, #0
003df914  09 00 00 1a                                      bne #0x3df940
003df918  04 30 94 e5                                      ldr r3, [r4, #4]
003df91c  07 60 80 e0                                      add r6, r0, r7
003df920  df 0f 83 e2                                      add r0, r3, #0x37c
003df924  1c 82 00 eb                                      bl #0x40019c
003df928  00 00 50 e3                                      cmp r0, #0
003df92c  0d 00 00 1a                                      bne #0x3df968
003df930  00 00 86 e0                                      add r0, r6, r0
003df934  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003df938  00 00 a0 e3                                      mov r0, #0
003df93c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003df940  05 10 a0 e1                                      mov r1, r5
003df944  5b 20 a0 e3                                      mov r2, #0x5b
003df948  04 00 a0 e1                                      mov r0, r4
003df94c  18 fd ff eb                                      bl #0x3dedb4
003df950  04 30 94 e5                                      ldr r3, [r4, #4]
003df954  07 60 80 e0                                      add r6, r0, r7
003df958  df 0f 83 e2                                      add r0, r3, #0x37c
003df95c  0e 82 00 eb                                      bl #0x40019c
003df960  00 00 50 e3                                      cmp r0, #0
003df964  f1 ff ff 0a                                      beq #0x3df930
003df968  04 00 a0 e1                                      mov r0, r4
003df96c  05 10 a0 e1                                      mov r1, r5
003df970  5a 20 a0 e3                                      mov r2, #0x5a
003df974  0e fd ff eb                                      bl #0x3dedb4
003df978  00 00 86 e0                                      add r0, r6, r0
003df97c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003df980, declared_size=284, range_size=284, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties21PROPS_GetIntWithBonusEib
; demangled: CharProperties::PROPS_GetIntWithBonus(int, bool) const
; decoder-mode: arm
003df980  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
003df984  00 00 52 e3                                      cmp r2, #0
003df988  70 40 2d e9                                      push {r4, r5, r6, lr}
003df98c  01 50 a0 e1                                      mov r5, r1
003df990  a9 1e 80 02                                      addeq r1, r0, #0xa90
003df994  03 30 8f e0                                      add r3, pc, r3
003df998  00 40 a0 e1                                      mov r4, r0
003df99c  04 10 81 02                                      addeq r1, r1, #4
003df9a0  f0 20 9f 15                                      ldrne r2, [pc, #0xf0]
003df9a4  02 10 93 17                                      ldrne r1, [r3, r2]
003df9a8  05 20 a0 e1                                      mov r2, r5
003df9ac  04 00 a0 e1                                      mov r0, r4
003df9b0  ff fc ff eb                                      bl #0x3dedb4
003df9b4  32 50 45 e2                                      sub r5, r5, #0x32
003df9b8  40 64 a0 e1                                      asr r6, r0, #8
003df9bc  20 00 55 e3                                      cmp r5, #0x20
003df9c0  05 f1 8f 90                                      addls pc, pc, r5, lsl #2
003df9c4  24 00 00 ea                                      b #0x3dfa5c
003df9c8  2b 00 00 ea                                      b #0x3dfa7c
003df9cc  22 00 00 ea                                      b #0x3dfa5c
003df9d0  21 00 00 ea                                      b #0x3dfa5c
003df9d4  20 00 00 ea                                      b #0x3dfa5c
003df9d8  1f 00 00 ea                                      b #0x3dfa5c
003df9dc  1e 00 00 ea                                      b #0x3dfa5c
003df9e0  1d 00 00 ea                                      b #0x3dfa5c
003df9e4  1c 00 00 ea                                      b #0x3dfa5c
003df9e8  1b 00 00 ea                                      b #0x3dfa5c
003df9ec  1a 00 00 ea                                      b #0x3dfa5c
003df9f0  19 00 00 ea                                      b #0x3dfa5c
003df9f4  18 00 00 ea                                      b #0x3dfa5c
003df9f8  17 00 00 ea                                      b #0x3dfa5c
003df9fc  16 00 00 ea                                      b #0x3dfa5c
003dfa00  15 00 00 ea                                      b #0x3dfa5c
003dfa04  14 00 00 ea                                      b #0x3dfa5c
003dfa08  13 00 00 ea                                      b #0x3dfa5c
003dfa0c  12 00 00 ea                                      b #0x3dfa5c
003dfa10  11 00 00 ea                                      b #0x3dfa5c
003dfa14  10 00 00 ea                                      b #0x3dfa5c
003dfa18  0f 00 00 ea                                      b #0x3dfa5c
003dfa1c  0e 00 00 ea                                      b #0x3dfa5c
003dfa20  0d 00 00 ea                                      b #0x3dfa5c
003dfa24  0c 00 00 ea                                      b #0x3dfa5c
003dfa28  0b 00 00 ea                                      b #0x3dfa5c
003dfa2c  0a 00 00 ea                                      b #0x3dfa5c
003dfa30  09 00 00 ea                                      b #0x3dfa5c
003dfa34  08 00 00 ea                                      b #0x3dfa5c
003dfa38  07 00 00 ea                                      b #0x3dfa5c
003dfa3c  08 00 00 ea                                      b #0x3dfa64
003dfa40  07 00 00 ea                                      b #0x3dfa64
003dfa44  00 00 00 ea                                      b #0x3dfa4c
003dfa48  ff ff ff ea                                      b #0x3dfa4c
003dfa4c  04 00 a0 e1                                      mov r0, r4
003dfa50  01 10 a0 e3                                      mov r1, #1
003dfa54  94 ff ff eb                                      bl #0x3df8ac
003dfa58  40 64 86 e0                                      add r6, r6, r0, asr #8
003dfa5c  06 00 a0 e1                                      mov r0, r6
003dfa60  70 80 bd e8                                      pop {r4, r5, r6, pc}
003dfa64  04 00 a0 e1                                      mov r0, r4
003dfa68  00 10 a0 e3                                      mov r1, #0
003dfa6c  8e ff ff eb                                      bl #0x3df8ac
003dfa70  40 64 86 e0                                      add r6, r6, r0, asr #8
003dfa74  06 00 a0 e1                                      mov r0, r6
003dfa78  70 80 bd e8                                      pop {r4, r5, r6, pc}
003dfa7c  04 00 a0 e1                                      mov r0, r4
003dfa80  00 10 a0 e3                                      mov r1, #0
003dfa84  64 ff ff eb                                      bl #0x3df81c
003dfa88  40 64 86 e0                                      add r6, r6, r0, asr #8
003dfa8c  06 00 a0 e1                                      mov r0, r6
003dfa90  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003dfa94  fc 50 5b 00 4c 10 00 00                          .byte 0xfc, 0x50, 0x5b, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003dfd18, declared_size=328, range_size=328, mode=arm
; class-group: CharProperties
; alias: _ZNK14CharProperties13PROPS_IsBonusEi
; demangled: CharProperties::PROPS_IsBonus(int) const
; decoder-mode: arm
003dfd18  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003dfd1c  2c d0 4d e2                                      sub sp, sp, #0x2c
003dfd20  01 70 a0 e1                                      mov r7, r1
003dfd24  00 60 a0 e1                                      mov r6, r0
003dfd28  78 fc ff eb                                      bl #0x3def10
003dfd2c  71 1e 86 e2                                      add r1, r6, #0x710
003dfd30  00 80 a0 e1                                      mov r8, r0
003dfd34  07 20 a0 e1                                      mov r2, r7
003dfd38  06 00 a0 e1                                      mov r0, r6
003dfd3c  1c fc ff eb                                      bl #0x3dedb4
003dfd40  00 00 58 e1                                      cmp r8, r0
003dfd44  02 00 00 0a                                      beq #0x3dfd54
003dfd48  01 00 a0 e3                                      mov r0, #1
003dfd4c  2c d0 8d e2                                      add sp, sp, #0x2c
003dfd50  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003dfd54  20 be 96 e5                                      ldr fp, [r6, #0xe20]
003dfd58  e1 3e 86 e2                                      add r3, r6, #0xe10
003dfd5c  08 30 83 e2                                      add r3, r3, #8
003dfd60  03 00 5b e1                                      cmp fp, r3
003dfd64  04 30 8d e5                                      str r3, [sp, #4]
003dfd68  2a 00 00 0a                                      beq #0x3dfe18
003dfd6c  08 c0 8d e2                                      add ip, sp, #8
003dfd70  00 c0 8d e5                                      str ip, [sp]
003dfd74  18 40 8d e2                                      add r4, sp, #0x18
003dfd78  00 c0 9d e5                                      ldr ip, [sp]
003dfd7c  34 a0 8b e2                                      add sl, fp, #0x34
003dfd80  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
003dfd84  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003dfd88  44 00 8b e2                                      add r0, fp, #0x44
003dfd8c  00 10 9d e5                                      ldr r1, [sp]
003dfd90  b6 fa ff eb                                      bl #0x3de870
003dfd94  00 90 50 e2                                      subs sb, r0, #0
003dfd98  11 00 00 0a                                      beq #0x3dfde4
003dfd9c  00 50 a0 e3                                      mov r5, #0
003dfda0  01 00 00 ea                                      b #0x3dfdac
003dfda4  09 00 55 e1                                      cmp r5, sb
003dfda8  0d 00 00 0a                                      beq #0x3dfde4
003dfdac  0f 00 9a e8                                      ldm sl, {r0, r1, r2, r3}
003dfdb0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003dfdb4  05 10 a0 e1                                      mov r1, r5
003dfdb8  04 00 a0 e1                                      mov r0, r4
003dfdbc  bc fa ff eb                                      bl #0x3de8b4
003dfdc0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003dfdc4  06 00 a0 e1                                      mov r0, r6
003dfdc8  07 20 a0 e1                                      mov r2, r7
003dfdcc  00 10 93 e5                                      ldr r1, [r3]
003dfdd0  f7 fb ff eb                                      bl #0x3dedb4
003dfdd4  00 00 58 e1                                      cmp r8, r0
003dfdd8  01 50 85 e2                                      add r5, r5, #1
003dfddc  f0 ff ff 0a                                      beq #0x3dfda4
003dfde0  d8 ff ff ea                                      b #0x3dfd48
003dfde4  0c 10 9b e5                                      ldr r1, [fp, #0xc]
003dfde8  00 00 51 e3                                      cmp r1, #0
003dfdec  01 20 a0 e1                                      mov r2, r1
003dfdf0  01 00 00 1a                                      bne #0x3dfdfc
003dfdf4  09 00 00 ea                                      b #0x3dfe20
003dfdf8  03 20 a0 e1                                      mov r2, r3
003dfdfc  08 30 92 e5                                      ldr r3, [r2, #8]
003dfe00  00 00 53 e3                                      cmp r3, #0
003dfe04  fb ff ff 1a                                      bne #0x3dfdf8
003dfe08  02 b0 a0 e1                                      mov fp, r2
003dfe0c  04 30 9d e5                                      ldr r3, [sp, #4]
003dfe10  0b 00 53 e1                                      cmp r3, fp
003dfe14  d7 ff ff 1a                                      bne #0x3dfd78
003dfe18  00 00 a0 e3                                      mov r0, #0
003dfe1c  ca ff ff ea                                      b #0x3dfd4c
003dfe20  04 30 9b e5                                      ldr r3, [fp, #4]
003dfe24  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003dfe28  02 00 5b e1                                      cmp fp, r2
003dfe2c  03 00 00 0a                                      beq #0x3dfe40
003dfe30  01 00 53 e1                                      cmp r3, r1
003dfe34  03 b0 a0 11                                      movne fp, r3
003dfe38  f3 ff ff ea                                      b #0x3dfe0c
003dfe3c  02 30 a0 e1                                      mov r3, r2
003dfe40  04 20 93 e5                                      ldr r2, [r3, #4]
003dfe44  0c 10 92 e5                                      ldr r1, [r2, #0xc]
003dfe48  03 00 51 e1                                      cmp r1, r3
003dfe4c  fa ff ff 0a                                      beq #0x3dfe3c
003dfe50  03 b0 a0 e1                                      mov fp, r3
003dfe54  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003dfe58  02 30 a0 e1                                      mov r3, r2
003dfe5c  f3 ff ff ea                                      b #0x3dfe30

; FUNCTION 0x003dfe60, declared_size=1972, range_size=1972, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties14RecalcPropertyEi
; demangled: CharProperties::RecalcProperty(int)
; decoder-mode: arm
003dfe60  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003dfe64  54 d0 4d e2                                      sub sp, sp, #0x54
003dfe68  00 60 a0 e1                                      mov r6, r0
003dfe6c  01 70 a0 e1                                      mov r7, r1
003dfe70  18 fc ff eb                                      bl #0x3deed8
003dfe74  04 00 10 e3                                      tst r0, #4
003dfe78  a4 00 00 1a                                      bne #0x3e0110
003dfe7c  02 00 10 e3                                      tst r0, #2
003dfe80  0d 01 00 1a                                      bne #0x3e02bc
003dfe84  01 00 10 e3                                      tst r0, #1
003dfe88  7c 00 00 0a                                      beq #0x3e0080
003dfe8c  a9 2e 86 e2                                      add r2, r6, #0xa90
003dfe90  04 20 82 e2                                      add r2, r2, #4
003dfe94  04 20 8d e5                                      str r2, [sp, #4]
003dfe98  20 3e 96 e5                                      ldr r3, [r6, #0xe20]
003dfe9c  e1 9e 86 e2                                      add sb, r6, #0xe10
003dfea0  08 90 89 e2                                      add sb, sb, #8
003dfea4  0c 30 8d e5                                      str r3, [sp, #0xc]
003dfea8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003dfeac  20 c0 8d e2                                      add ip, sp, #0x20
003dfeb0  08 c0 8d e5                                      str ip, [sp, #8]
003dfeb4  09 00 52 e1                                      cmp r2, sb
003dfeb8  10 40 8d e2                                      add r4, sp, #0x10
003dfebc  06 80 a0 e1                                      mov r8, r6
003dfec0  54 00 00 0a                                      beq #0x3e0018
003dfec4  00 30 d9 e5                                      ldrb r3, [sb]
003dfec8  00 00 53 e3                                      cmp r3, #0
003dfecc  04 00 00 1a                                      bne #0x3dfee4
003dfed0  04 30 99 e5                                      ldr r3, [sb, #4]
003dfed4  04 30 93 e5                                      ldr r3, [r3, #4]
003dfed8  09 00 53 e1                                      cmp r3, sb
003dfedc  0c c0 99 05                                      ldreq ip, [sb, #0xc]
003dfee0  07 00 00 0a                                      beq #0x3dff04
003dfee4  08 c0 99 e5                                      ldr ip, [sb, #8]
003dfee8  00 00 5c e3                                      cmp ip, #0
003dfeec  01 00 00 1a                                      bne #0x3dfef8
003dfef0  6f 00 00 ea                                      b #0x3e00b4
003dfef4  03 c0 a0 e1                                      mov ip, r3
003dfef8  0c 30 9c e5                                      ldr r3, [ip, #0xc]
003dfefc  00 00 53 e3                                      cmp r3, #0
003dff00  fb ff ff 1a                                      bne #0x3dfef4
003dff04  08 e0 9d e5                                      ldr lr, [sp, #8]
003dff08  34 50 8c e2                                      add r5, ip, #0x34
003dff0c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003dff10  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
003dff14  44 00 8c e2                                      add r0, ip, #0x44
003dff18  08 10 9d e5                                      ldr r1, [sp, #8]
003dff1c  53 fa ff eb                                      bl #0x3de870
003dff20  00 a0 50 e2                                      subs sl, r0, #0
003dff24  27 00 00 0a                                      beq #0x3dffc8
003dff28  00 b0 a0 e3                                      mov fp, #0
003dff2c  0b 60 a0 e1                                      mov r6, fp
003dff30  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003dff34  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003dff38  06 10 a0 e1                                      mov r1, r6
003dff3c  04 00 a0 e1                                      mov r0, r4
003dff40  5b fa ff eb                                      bl #0x3de8b4
003dff44  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003dff48  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003dff4c  06 10 a0 e1                                      mov r1, r6
003dff50  04 00 a0 e1                                      mov r0, r4
003dff54  56 fa ff eb                                      bl #0x3de8b4
003dff58  10 30 9d e5                                      ldr r3, [sp, #0x10]
003dff5c  07 20 a0 e1                                      mov r2, r7
003dff60  08 00 a0 e1                                      mov r0, r8
003dff64  00 10 93 e5                                      ldr r1, [r3]
003dff68  69 fc ff eb                                      bl #0x3df114
003dff6c  00 00 50 e3                                      cmp r0, #0
003dff70  0f 00 00 0a                                      beq #0x3dffb4
003dff74  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003dff78  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003dff7c  06 10 a0 e1                                      mov r1, r6
003dff80  04 00 a0 e1                                      mov r0, r4
003dff84  4a fa ff eb                                      bl #0x3de8b4
003dff88  10 30 9d e5                                      ldr r3, [sp, #0x10]
003dff8c  07 20 a0 e1                                      mov r2, r7
003dff90  08 00 a0 e1                                      mov r0, r8
003dff94  00 10 93 e5                                      ldr r1, [r3]
003dff98  85 fb ff eb                                      bl #0x3dedb4
003dff9c  04 10 9d e5                                      ldr r1, [sp, #4]
003dffa0  00 30 a0 e1                                      mov r3, r0
003dffa4  07 20 a0 e1                                      mov r2, r7
003dffa8  08 00 a0 e1                                      mov r0, r8
003dffac  3b fb ff eb                                      bl #0x3deca0
003dffb0  01 b0 a0 e3                                      mov fp, #1
003dffb4  01 60 86 e2                                      add r6, r6, #1
003dffb8  0a 00 56 e1                                      cmp r6, sl
003dffbc  db ff ff 1a                                      bne #0x3dff30
003dffc0  00 00 5b e3                                      cmp fp, #0
003dffc4  2a 01 00 1a                                      bne #0x3e0474
003dffc8  00 30 d9 e5                                      ldrb r3, [sb]
003dffcc  00 00 53 e3                                      cmp r3, #0
003dffd0  04 00 00 1a                                      bne #0x3dffe8
003dffd4  04 30 99 e5                                      ldr r3, [sb, #4]
003dffd8  04 30 93 e5                                      ldr r3, [r3, #4]
003dffdc  09 00 53 e1                                      cmp r3, sb
003dffe0  0c 30 99 05                                      ldreq r3, [sb, #0xc]
003dffe4  07 00 00 0a                                      beq #0x3e0008
003dffe8  08 30 99 e5                                      ldr r3, [sb, #8]
003dffec  00 00 53 e3                                      cmp r3, #0
003dfff0  01 00 00 1a                                      bne #0x3dfffc
003dfff4  3a 00 00 ea                                      b #0x3e00e4
003dfff8  02 30 a0 e1                                      mov r3, r2
003dfffc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e0000  00 00 52 e3                                      cmp r2, #0
003e0004  fb ff ff 1a                                      bne #0x3dfff8
003e0008  03 90 a0 e1                                      mov sb, r3
003e000c  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003e0010  09 00 52 e1                                      cmp r2, sb
003e0014  aa ff ff 1a                                      bne #0x3dfec4
003e0018  71 4e 88 e2                                      add r4, r8, #0x710
003e001c  08 00 a0 e1                                      mov r0, r8
003e0020  04 10 a0 e1                                      mov r1, r4
003e0024  07 20 a0 e1                                      mov r2, r7
003e0028  39 fc ff eb                                      bl #0x3df114
003e002c  00 00 50 e3                                      cmp r0, #0
003e0030  08 60 a0 e1                                      mov r6, r8
003e0034  10 01 00 1a                                      bne #0x3e047c
003e0038  e3 4f 86 e2                                      add r4, r6, #0x38c
003e003c  06 00 a0 e1                                      mov r0, r6
003e0040  04 10 a0 e1                                      mov r1, r4
003e0044  07 20 a0 e1                                      mov r2, r7
003e0048  31 fc ff eb                                      bl #0x3df114
003e004c  00 00 50 e3                                      cmp r0, #0
003e0050  09 01 00 1a                                      bne #0x3e047c
003e0054  08 40 86 e2                                      add r4, r6, #8
003e0058  06 00 a0 e1                                      mov r0, r6
003e005c  04 10 a0 e1                                      mov r1, r4
003e0060  07 20 a0 e1                                      mov r2, r7
003e0064  2a fc ff eb                                      bl #0x3df114
003e0068  00 00 50 e3                                      cmp r0, #0
003e006c  02 01 00 1a                                      bne #0x3e047c
003e0070  06 00 a0 e1                                      mov r0, r6
003e0074  07 10 a0 e1                                      mov r1, r7
003e0078  a4 fb ff eb                                      bl #0x3def10
003e007c  02 01 00 ea                                      b #0x3e048c
003e0080  20 00 10 e3                                      tst r0, #0x20
003e0084  31 01 00 1a                                      bne #0x3e0550
003e0088  10 00 10 e3                                      tst r0, #0x10
003e008c  a9 ce 86 02                                      addeq ip, r6, #0xa90
003e0090  04 c0 8c 02                                      addeq ip, ip, #4
003e0094  04 c0 8d 05                                      streq ip, [sp, #4]
003e0098  e6 00 00 1a                                      bne #0x3e0438
003e009c  06 00 a0 e1                                      mov r0, r6
003e00a0  04 10 9d e5                                      ldr r1, [sp, #4]
003e00a4  07 20 a0 e1                                      mov r2, r7
003e00a8  41 fb ff eb                                      bl #0x3dedb4
003e00ac  54 d0 8d e2                                      add sp, sp, #0x54
003e00b0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e00b4  04 c0 99 e5                                      ldr ip, [sb, #4]
003e00b8  08 30 9c e5                                      ldr r3, [ip, #8]
003e00bc  09 00 53 e1                                      cmp r3, sb
003e00c0  01 00 00 0a                                      beq #0x3e00cc
003e00c4  8e ff ff ea                                      b #0x3dff04
003e00c8  03 c0 a0 e1                                      mov ip, r3
003e00cc  04 30 9c e5                                      ldr r3, [ip, #4]
003e00d0  08 20 93 e5                                      ldr r2, [r3, #8]
003e00d4  0c 00 52 e1                                      cmp r2, ip
003e00d8  fa ff ff 0a                                      beq #0x3e00c8
003e00dc  03 c0 a0 e1                                      mov ip, r3
003e00e0  87 ff ff ea                                      b #0x3dff04
003e00e4  04 30 99 e5                                      ldr r3, [sb, #4]
003e00e8  08 20 93 e5                                      ldr r2, [r3, #8]
003e00ec  02 00 59 e1                                      cmp sb, r2
003e00f0  c4 ff ff 1a                                      bne #0x3e0008
003e00f4  03 20 a0 e1                                      mov r2, r3
003e00f8  04 30 93 e5                                      ldr r3, [r3, #4]
003e00fc  08 10 93 e5                                      ldr r1, [r3, #8]
003e0100  02 00 51 e1                                      cmp r1, r2
003e0104  fa ff ff 0a                                      beq #0x3e00f4
003e0108  03 90 a0 e1                                      mov sb, r3
003e010c  be ff ff ea                                      b #0x3e000c
003e0110  a9 2e 86 e2                                      add r2, r6, #0xa90
003e0114  04 20 82 e2                                      add r2, r2, #4
003e0118  07 10 a0 e1                                      mov r1, r7
003e011c  06 00 a0 e1                                      mov r0, r6
003e0120  04 20 8d e5                                      str r2, [sp, #4]
003e0124  79 fb ff eb                                      bl #0x3def10
003e0128  08 40 86 e2                                      add r4, r6, #8
003e012c  00 30 a0 e1                                      mov r3, r0
003e0130  04 10 9d e5                                      ldr r1, [sp, #4]
003e0134  06 00 a0 e1                                      mov r0, r6
003e0138  07 20 a0 e1                                      mov r2, r7
003e013c  d7 fa ff eb                                      bl #0x3deca0
003e0140  06 00 a0 e1                                      mov r0, r6
003e0144  04 10 a0 e1                                      mov r1, r4
003e0148  07 20 a0 e1                                      mov r2, r7
003e014c  f0 fb ff eb                                      bl #0x3df114
003e0150  00 00 50 e3                                      cmp r0, #0
003e0154  f3 00 00 1a                                      bne #0x3e0528
003e0158  e3 4f 86 e2                                      add r4, r6, #0x38c
003e015c  06 00 a0 e1                                      mov r0, r6
003e0160  04 10 a0 e1                                      mov r1, r4
003e0164  07 20 a0 e1                                      mov r2, r7
003e0168  e9 fb ff eb                                      bl #0x3df114
003e016c  00 00 50 e3                                      cmp r0, #0
003e0170  e2 00 00 1a                                      bne #0x3e0500
003e0174  71 4e 86 e2                                      add r4, r6, #0x710
003e0178  06 00 a0 e1                                      mov r0, r6
003e017c  04 10 a0 e1                                      mov r1, r4
003e0180  07 20 a0 e1                                      mov r2, r7
003e0184  e2 fb ff eb                                      bl #0x3df114
003e0188  00 00 50 e3                                      cmp r0, #0
003e018c  d1 00 00 1a                                      bne #0x3e04d8
003e0190  e1 3e 86 e2                                      add r3, r6, #0xe10
003e0194  08 30 83 e2                                      add r3, r3, #8
003e0198  08 30 8d e5                                      str r3, [sp, #8]
003e019c  20 9e 96 e5                                      ldr sb, [r6, #0xe20]
003e01a0  40 b0 8d e2                                      add fp, sp, #0x40
003e01a4  10 40 8d e2                                      add r4, sp, #0x10
003e01a8  08 c0 9d e5                                      ldr ip, [sp, #8]
003e01ac  0c 00 59 e1                                      cmp sb, ip
003e01b0  b9 ff ff 0a                                      beq #0x3e009c
003e01b4  34 80 89 e2                                      add r8, sb, #0x34
003e01b8  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
003e01bc  0f 00 8b e8                                      stm fp, {r0, r1, r2, r3}
003e01c0  44 00 89 e2                                      add r0, sb, #0x44
003e01c4  0b 10 a0 e1                                      mov r1, fp
003e01c8  a8 f9 ff eb                                      bl #0x3de870
003e01cc  00 a0 50 e2                                      subs sl, r0, #0
003e01d0  22 00 00 0a                                      beq #0x3e0260
003e01d4  00 50 a0 e3                                      mov r5, #0
003e01d8  02 00 00 ea                                      b #0x3e01e8
003e01dc  01 50 85 e2                                      add r5, r5, #1
003e01e0  0a 00 55 e1                                      cmp r5, sl
003e01e4  1d 00 00 0a                                      beq #0x3e0260
003e01e8  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
003e01ec  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e01f0  05 10 a0 e1                                      mov r1, r5
003e01f4  04 00 a0 e1                                      mov r0, r4
003e01f8  ad f9 ff eb                                      bl #0x3de8b4
003e01fc  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e0200  07 20 a0 e1                                      mov r2, r7
003e0204  06 00 a0 e1                                      mov r0, r6
003e0208  00 10 93 e5                                      ldr r1, [r3]
003e020c  c0 fb ff eb                                      bl #0x3df114
003e0210  00 00 50 e3                                      cmp r0, #0
003e0214  f0 ff ff 0a                                      beq #0x3e01dc
003e0218  0f 00 98 e8                                      ldm r8, {r0, r1, r2, r3}
003e021c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e0220  05 10 a0 e1                                      mov r1, r5
003e0224  04 00 a0 e1                                      mov r0, r4
003e0228  a1 f9 ff eb                                      bl #0x3de8b4
003e022c  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e0230  07 20 a0 e1                                      mov r2, r7
003e0234  06 00 a0 e1                                      mov r0, r6
003e0238  00 10 93 e5                                      ldr r1, [r3]
003e023c  dc fa ff eb                                      bl #0x3dedb4
003e0240  01 50 85 e2                                      add r5, r5, #1
003e0244  00 30 a0 e1                                      mov r3, r0
003e0248  04 10 9d e5                                      ldr r1, [sp, #4]
003e024c  06 00 a0 e1                                      mov r0, r6
003e0250  07 20 a0 e1                                      mov r2, r7
003e0254  b9 fb ff eb                                      bl #0x3df140
003e0258  0a 00 55 e1                                      cmp r5, sl
003e025c  e1 ff ff 1a                                      bne #0x3e01e8
003e0260  0c 20 99 e5                                      ldr r2, [sb, #0xc]
003e0264  00 00 52 e3                                      cmp r2, #0
003e0268  01 00 00 1a                                      bne #0x3e0274
003e026c  05 00 00 ea                                      b #0x3e0288
003e0270  03 20 a0 e1                                      mov r2, r3
003e0274  08 30 92 e5                                      ldr r3, [r2, #8]
003e0278  00 00 53 e3                                      cmp r3, #0
003e027c  fb ff ff 1a                                      bne #0x3e0270
003e0280  02 90 a0 e1                                      mov sb, r2
003e0284  c7 ff ff ea                                      b #0x3e01a8
003e0288  04 30 99 e5                                      ldr r3, [sb, #4]
003e028c  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e0290  01 00 59 e1                                      cmp sb, r1
003e0294  05 00 00 1a                                      bne #0x3e02b0
003e0298  03 90 a0 e1                                      mov sb, r3
003e029c  04 30 93 e5                                      ldr r3, [r3, #4]
003e02a0  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e02a4  02 00 59 e1                                      cmp sb, r2
003e02a8  fa ff ff 0a                                      beq #0x3e0298
003e02ac  0c 20 99 e5                                      ldr r2, [sb, #0xc]
003e02b0  02 00 53 e1                                      cmp r3, r2
003e02b4  03 90 a0 11                                      movne sb, r3
003e02b8  ba ff ff ea                                      b #0x3e01a8
003e02bc  08 40 86 e2                                      add r4, r6, #8
003e02c0  04 10 a0 e1                                      mov r1, r4
003e02c4  06 00 a0 e1                                      mov r0, r6
003e02c8  07 20 a0 e1                                      mov r2, r7
003e02cc  90 fb ff eb                                      bl #0x3df114
003e02d0  00 00 50 e3                                      cmp r0, #0
003e02d4  04 10 a0 11                                      movne r1, r4
003e02d8  57 00 00 1a                                      bne #0x3e043c
003e02dc  e3 4f 86 e2                                      add r4, r6, #0x38c
003e02e0  06 00 a0 e1                                      mov r0, r6
003e02e4  04 10 a0 e1                                      mov r1, r4
003e02e8  07 20 a0 e1                                      mov r2, r7
003e02ec  88 fb ff eb                                      bl #0x3df114
003e02f0  00 00 50 e3                                      cmp r0, #0
003e02f4  ab 00 00 1a                                      bne #0x3e05a8
003e02f8  71 4e 86 e2                                      add r4, r6, #0x710
003e02fc  06 00 a0 e1                                      mov r0, r6
003e0300  04 10 a0 e1                                      mov r1, r4
003e0304  07 20 a0 e1                                      mov r2, r7
003e0308  81 fb ff eb                                      bl #0x3df114
003e030c  00 00 50 e3                                      cmp r0, #0
003e0310  b8 00 00 1a                                      bne #0x3e05f8
003e0314  e1 ee 86 e2                                      add lr, r6, #0xe10
003e0318  a9 2e 86 e2                                      add r2, r6, #0xa90
003e031c  08 e0 8e e2                                      add lr, lr, #8
003e0320  04 20 82 e2                                      add r2, r2, #4
003e0324  0c e0 8d e5                                      str lr, [sp, #0xc]
003e0328  04 20 8d e5                                      str r2, [sp, #4]
003e032c  30 30 8d e2                                      add r3, sp, #0x30
003e0330  20 ae 96 e5                                      ldr sl, [r6, #0xe20]
003e0334  10 40 8d e2                                      add r4, sp, #0x10
003e0338  08 30 8d e5                                      str r3, [sp, #8]
003e033c  06 80 a0 e1                                      mov r8, r6
003e0340  0c e0 9d e5                                      ldr lr, [sp, #0xc]
003e0344  0a 00 5e e1                                      cmp lr, sl
003e0348  a5 00 00 0a                                      beq #0x3e05e4
003e034c  08 c0 9d e5                                      ldr ip, [sp, #8]
003e0350  34 50 8a e2                                      add r5, sl, #0x34
003e0354  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0358  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e035c  44 00 8a e2                                      add r0, sl, #0x44
003e0360  08 10 9d e5                                      ldr r1, [sp, #8]
003e0364  41 f9 ff eb                                      bl #0x3de870
003e0368  00 90 50 e2                                      subs sb, r0, #0
003e036c  27 00 00 0a                                      beq #0x3e0410
003e0370  00 60 a0 e3                                      mov r6, #0
003e0374  06 b0 a0 e1                                      mov fp, r6
003e0378  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e037c  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e0380  06 10 a0 e1                                      mov r1, r6
003e0384  04 00 a0 e1                                      mov r0, r4
003e0388  49 f9 ff eb                                      bl #0x3de8b4
003e038c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0390  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e0394  06 10 a0 e1                                      mov r1, r6
003e0398  04 00 a0 e1                                      mov r0, r4
003e039c  44 f9 ff eb                                      bl #0x3de8b4
003e03a0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e03a4  07 20 a0 e1                                      mov r2, r7
003e03a8  08 00 a0 e1                                      mov r0, r8
003e03ac  00 10 93 e5                                      ldr r1, [r3]
003e03b0  57 fb ff eb                                      bl #0x3df114
003e03b4  00 00 50 e3                                      cmp r0, #0
003e03b8  0f 00 00 0a                                      beq #0x3e03fc
003e03bc  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e03c0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e03c4  06 10 a0 e1                                      mov r1, r6
003e03c8  04 00 a0 e1                                      mov r0, r4
003e03cc  38 f9 ff eb                                      bl #0x3de8b4
003e03d0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e03d4  07 20 a0 e1                                      mov r2, r7
003e03d8  08 00 a0 e1                                      mov r0, r8
003e03dc  00 10 93 e5                                      ldr r1, [r3]
003e03e0  73 fa ff eb                                      bl #0x3dedb4
003e03e4  04 10 9d e5                                      ldr r1, [sp, #4]
003e03e8  00 30 a0 e1                                      mov r3, r0
003e03ec  07 20 a0 e1                                      mov r2, r7
003e03f0  08 00 a0 e1                                      mov r0, r8
003e03f4  29 fa ff eb                                      bl #0x3deca0
003e03f8  01 b0 a0 e3                                      mov fp, #1
003e03fc  01 60 86 e2                                      add r6, r6, #1
003e0400  09 00 56 e1                                      cmp r6, sb
003e0404  db ff ff 1a                                      bne #0x3e0378
003e0408  00 00 5b e3                                      cmp fp, #0
003e040c  18 00 00 1a                                      bne #0x3e0474
003e0410  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003e0414  00 00 52 e3                                      cmp r2, #0
003e0418  21 00 00 0a                                      beq #0x3e04a4
003e041c  02 a0 a0 e1                                      mov sl, r2
003e0420  00 00 00 ea                                      b #0x3e0428
003e0424  03 a0 a0 e1                                      mov sl, r3
003e0428  08 30 9a e5                                      ldr r3, [sl, #8]
003e042c  00 00 53 e3                                      cmp r3, #0
003e0430  fb ff ff 1a                                      bne #0x3e0424
003e0434  c1 ff ff ea                                      b #0x3e0340
003e0438  08 10 86 e2                                      add r1, r6, #8
003e043c  07 20 a0 e1                                      mov r2, r7
003e0440  a9 ee 86 e2                                      add lr, r6, #0xa90
003e0444  06 00 a0 e1                                      mov r0, r6
003e0448  04 e0 8d e5                                      str lr, [sp, #4]
003e044c  58 fa ff eb                                      bl #0x3dedb4
003e0450  04 20 9d e5                                      ldr r2, [sp, #4]
003e0454  00 30 a0 e1                                      mov r3, r0
003e0458  04 20 82 e2                                      add r2, r2, #4
003e045c  04 20 8d e5                                      str r2, [sp, #4]
003e0460  02 10 a0 e1                                      mov r1, r2
003e0464  06 00 a0 e1                                      mov r0, r6
003e0468  07 20 a0 e1                                      mov r2, r7
003e046c  0b fa ff eb                                      bl #0x3deca0
003e0470  09 ff ff ea                                      b #0x3e009c
003e0474  08 60 a0 e1                                      mov r6, r8
003e0478  07 ff ff ea                                      b #0x3e009c
003e047c  04 10 a0 e1                                      mov r1, r4
003e0480  06 00 a0 e1                                      mov r0, r6
003e0484  07 20 a0 e1                                      mov r2, r7
003e0488  49 fa ff eb                                      bl #0x3dedb4
003e048c  00 30 a0 e1                                      mov r3, r0
003e0490  04 10 9d e5                                      ldr r1, [sp, #4]
003e0494  06 00 a0 e1                                      mov r0, r6
003e0498  07 20 a0 e1                                      mov r2, r7
003e049c  ff f9 ff eb                                      bl #0x3deca0
003e04a0  fd fe ff ea                                      b #0x3e009c
003e04a4  04 30 9a e5                                      ldr r3, [sl, #4]
003e04a8  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e04ac  01 00 5a e1                                      cmp sl, r1
003e04b0  05 00 00 1a                                      bne #0x3e04cc
003e04b4  03 a0 a0 e1                                      mov sl, r3
003e04b8  04 30 93 e5                                      ldr r3, [r3, #4]
003e04bc  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e04c0  0a 00 52 e1                                      cmp r2, sl
003e04c4  fa ff ff 0a                                      beq #0x3e04b4
003e04c8  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003e04cc  02 00 53 e1                                      cmp r3, r2
003e04d0  03 a0 a0 11                                      movne sl, r3
003e04d4  99 ff ff ea                                      b #0x3e0340
003e04d8  04 10 a0 e1                                      mov r1, r4
003e04dc  07 20 a0 e1                                      mov r2, r7
003e04e0  06 00 a0 e1                                      mov r0, r6
003e04e4  32 fa ff eb                                      bl #0x3dedb4
003e04e8  04 10 9d e5                                      ldr r1, [sp, #4]
003e04ec  00 30 a0 e1                                      mov r3, r0
003e04f0  07 20 a0 e1                                      mov r2, r7
003e04f4  06 00 a0 e1                                      mov r0, r6
003e04f8  10 fb ff eb                                      bl #0x3df140
003e04fc  23 ff ff ea                                      b #0x3e0190
003e0500  04 10 a0 e1                                      mov r1, r4
003e0504  07 20 a0 e1                                      mov r2, r7
003e0508  06 00 a0 e1                                      mov r0, r6
003e050c  28 fa ff eb                                      bl #0x3dedb4
003e0510  04 10 9d e5                                      ldr r1, [sp, #4]
003e0514  00 30 a0 e1                                      mov r3, r0
003e0518  07 20 a0 e1                                      mov r2, r7
003e051c  06 00 a0 e1                                      mov r0, r6
003e0520  06 fb ff eb                                      bl #0x3df140
003e0524  12 ff ff ea                                      b #0x3e0174
003e0528  04 10 a0 e1                                      mov r1, r4
003e052c  07 20 a0 e1                                      mov r2, r7
003e0530  06 00 a0 e1                                      mov r0, r6
003e0534  1e fa ff eb                                      bl #0x3dedb4
003e0538  04 10 9d e5                                      ldr r1, [sp, #4]
003e053c  00 30 a0 e1                                      mov r3, r0
003e0540  07 20 a0 e1                                      mov r2, r7
003e0544  06 00 a0 e1                                      mov r0, r6
003e0548  fc fa ff eb                                      bl #0x3df140
003e054c  01 ff ff ea                                      b #0x3e0158
003e0550  a9 3e 86 e2                                      add r3, r6, #0xa90
003e0554  04 30 83 e2                                      add r3, r3, #4
003e0558  08 10 86 e2                                      add r1, r6, #8
003e055c  07 20 a0 e1                                      mov r2, r7
003e0560  06 00 a0 e1                                      mov r0, r6
003e0564  04 30 8d e5                                      str r3, [sp, #4]
003e0568  11 fa ff eb                                      bl #0x3dedb4
003e056c  04 10 9d e5                                      ldr r1, [sp, #4]
003e0570  00 30 a0 e1                                      mov r3, r0
003e0574  07 20 a0 e1                                      mov r2, r7
003e0578  06 00 a0 e1                                      mov r0, r6
003e057c  c7 f9 ff eb                                      bl #0x3deca0
003e0580  e3 1f 86 e2                                      add r1, r6, #0x38c
003e0584  07 20 a0 e1                                      mov r2, r7
003e0588  06 00 a0 e1                                      mov r0, r6
003e058c  08 fa ff eb                                      bl #0x3dedb4
003e0590  04 10 9d e5                                      ldr r1, [sp, #4]
003e0594  00 30 a0 e1                                      mov r3, r0
003e0598  07 20 a0 e1                                      mov r2, r7
003e059c  06 00 a0 e1                                      mov r0, r6
003e05a0  e6 fa ff eb                                      bl #0x3df140
003e05a4  bc fe ff ea                                      b #0x3e009c
003e05a8  a9 3e 86 e2                                      add r3, r6, #0xa90
003e05ac  04 10 a0 e1                                      mov r1, r4
003e05b0  07 20 a0 e1                                      mov r2, r7
003e05b4  06 00 a0 e1                                      mov r0, r6
003e05b8  04 30 8d e5                                      str r3, [sp, #4]
003e05bc  fc f9 ff eb                                      bl #0x3dedb4
003e05c0  04 c0 9d e5                                      ldr ip, [sp, #4]
003e05c4  00 30 a0 e1                                      mov r3, r0
003e05c8  07 20 a0 e1                                      mov r2, r7
003e05cc  04 c0 8c e2                                      add ip, ip, #4
003e05d0  06 00 a0 e1                                      mov r0, r6
003e05d4  0c 10 a0 e1                                      mov r1, ip
003e05d8  04 c0 8d e5                                      str ip, [sp, #4]
003e05dc  af f9 ff eb                                      bl #0x3deca0
003e05e0  ad fe ff ea                                      b #0x3e009c
003e05e4  08 00 a0 e1                                      mov r0, r8
003e05e8  07 10 a0 e1                                      mov r1, r7
003e05ec  08 60 a0 e1                                      mov r6, r8
003e05f0  46 fa ff eb                                      bl #0x3def10
003e05f4  a4 ff ff ea                                      b #0x3e048c
003e05f8  07 20 a0 e1                                      mov r2, r7
003e05fc  04 10 a0 e1                                      mov r1, r4
003e0600  06 00 a0 e1                                      mov r0, r6
003e0604  ea f9 ff eb                                      bl #0x3dedb4
003e0608  a9 2e 86 e2                                      add r2, r6, #0xa90
003e060c  00 30 a0 e1                                      mov r3, r0
003e0610  90 ff ff ea                                      b #0x3e0458

; FUNCTION 0x003e0614, declared_size=244, range_size=244, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties16PROPS_SetToSheetEiiPN7Structs19CharacterPropertiesE
; demangled: CharProperties::PROPS_SetToSheet(int, int, Structs::CharacterProperties*)
; decoder-mode: arm
003e0614  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003e0618  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
003e061c  00 70 53 e2                                      subs r7, r3, #0
003e0620  0c d0 4d e2                                      sub sp, sp, #0xc
003e0624  0c c0 8f e0                                      add ip, pc, ip
003e0628  02 60 a0 e1                                      mov r6, r2
003e062c  00 50 a0 e1                                      mov r5, r0
003e0630  01 40 a0 e1                                      mov r4, r1
003e0634  18 00 00 0a                                      beq #0x3e069c
003e0638  26 fa ff eb                                      bl #0x3deed8
003e063c  04 00 10 e3                                      tst r0, #4
003e0640  0b 00 00 1a                                      bne #0x3e0674
003e0644  08 00 10 e3                                      tst r0, #8
003e0648  01 00 00 1a                                      bne #0x3e0654
003e064c  0c d0 8d e2                                      add sp, sp, #0xc
003e0650  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}
003e0654  a9 1e 85 e2                                      add r1, r5, #0xa90
003e0658  05 00 a0 e1                                      mov r0, r5
003e065c  04 10 81 e2                                      add r1, r1, #4
003e0660  04 20 a0 e1                                      mov r2, r4
003e0664  06 30 a0 e1                                      mov r3, r6
003e0668  0c d0 8d e2                                      add sp, sp, #0xc
003e066c  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003e0670  8a f9 ff ea                                      b #0x3deca0
003e0674  07 10 a0 e1                                      mov r1, r7
003e0678  05 00 a0 e1                                      mov r0, r5
003e067c  06 30 a0 e1                                      mov r3, r6
003e0680  04 20 a0 e1                                      mov r2, r4
003e0684  85 f9 ff eb                                      bl #0x3deca0
003e0688  05 00 a0 e1                                      mov r0, r5
003e068c  04 10 a0 e1                                      mov r1, r4
003e0690  0c d0 8d e2                                      add sp, sp, #0xc
003e0694  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003e0698  f0 fd ff ea                                      b #0x3dfe60
003e069c  50 30 9f e5                                      ldr r3, [pc, #0x50]
003e06a0  03 30 9c e7                                      ldr r3, [ip, r3]
003e06a4  00 30 93 e5                                      ldr r3, [r3]
003e06a8  02 00 53 e3                                      cmp r3, #2
003e06ac  00 70 87 05                                      streq r7, [r7]
003e06b0  e5 ff ff 0a                                      beq #0x3e064c
003e06b4  01 00 53 e3                                      cmp r3, #1
003e06b8  e3 ff ff 1a                                      bne #0x3e064c
003e06bc  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e06c0  34 10 9f e5                                      ldr r1, [pc, #0x34]
003e06c4  34 20 9f e5                                      ldr r2, [pc, #0x34]
003e06c8  00 00 9c e7                                      ldr r0, [ip, r0]
003e06cc  30 30 9f e5                                      ldr r3, [pc, #0x30]
003e06d0  26 c3 00 e3                                      movw ip, #0x326
003e06d4  01 10 8f e0                                      add r1, pc, r1
003e06d8  02 20 8f e0                                      add r2, pc, r2
003e06dc  03 30 8f e0                                      add r3, pc, r3
003e06e0  a8 00 80 e2                                      add r0, r0, #0xa8
003e06e4  00 c0 8d e5                                      str ip, [sp]
003e06e8  45 b6 fc eb                                      bl #0x30e004
003e06ec  d6 ff ff ea                                      b #0x3e064c
; mapping-symbol data/literal pool
003e06f0  6c 44 5b 00 c0 39 00 00 c0 19 00 00 04 dd 4d 00  .byte 0x6c, 0x44, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0x04, 0xdd, 0x4d, 0x00
003e0700  f0 37 4e 00 d4 55 4e 00                          .byte 0xf0, 0x37, 0x4e, 0x00, 0xd4, 0x55, 0x4e, 0x00

; FUNCTION 0x003e0708, declared_size=144, range_size=144, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties9PROPS_AddEii
; demangled: CharProperties::PROPS_Add(int, int)
; decoder-mode: arm
003e0708  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e070c  02 70 a0 e1                                      mov r7, r2
003e0710  00 40 a0 e1                                      mov r4, r0
003e0714  01 50 a0 e1                                      mov r5, r1
003e0718  ee f9 ff eb                                      bl #0x3deed8
003e071c  20 00 10 e3                                      tst r0, #0x20
003e0720  0e 00 00 1a                                      bne #0x3e0760
003e0724  08 00 10 e3                                      tst r0, #8
003e0728  00 00 00 1a                                      bne #0x3e0730
003e072c  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e0730  a9 6e 84 e2                                      add r6, r4, #0xa90
003e0734  04 60 86 e2                                      add r6, r6, #4
003e0738  06 10 a0 e1                                      mov r1, r6
003e073c  05 20 a0 e1                                      mov r2, r5
003e0740  04 00 a0 e1                                      mov r0, r4
003e0744  9a f9 ff eb                                      bl #0x3dedb4
003e0748  06 10 a0 e1                                      mov r1, r6
003e074c  07 30 80 e0                                      add r3, r0, r7
003e0750  05 20 a0 e1                                      mov r2, r5
003e0754  04 00 a0 e1                                      mov r0, r4
003e0758  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e075c  4f f9 ff ea                                      b #0x3deca0
003e0760  e3 6f 84 e2                                      add r6, r4, #0x38c
003e0764  06 10 a0 e1                                      mov r1, r6
003e0768  05 20 a0 e1                                      mov r2, r5
003e076c  04 00 a0 e1                                      mov r0, r4
003e0770  8f f9 ff eb                                      bl #0x3dedb4
003e0774  06 10 a0 e1                                      mov r1, r6
003e0778  07 30 80 e0                                      add r3, r0, r7
003e077c  05 20 a0 e1                                      mov r2, r5
003e0780  04 00 a0 e1                                      mov r0, r4
003e0784  45 f9 ff eb                                      bl #0x3deca0
003e0788  04 00 a0 e1                                      mov r0, r4
003e078c  05 10 a0 e1                                      mov r1, r5
003e0790  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e0794  b1 fd ff ea                                      b #0x3dfe60

; FUNCTION 0x003e0798, declared_size=8, range_size=8, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties12PROPS_AddIntEii
; demangled: CharProperties::PROPS_AddInt(int, int)
; decoder-mode: arm
003e0798  02 24 a0 e1                                      lsl r2, r2, #8
003e079c  d9 ff ff ea                                      b #0x3e0708

; FUNCTION 0x003e07a0, declared_size=104, range_size=104, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties9PROPS_SetEii
; demangled: CharProperties::PROPS_Set(int, int)
; decoder-mode: arm
003e07a0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e07a4  02 60 a0 e1                                      mov r6, r2
003e07a8  00 40 a0 e1                                      mov r4, r0
003e07ac  01 50 a0 e1                                      mov r5, r1
003e07b0  c8 f9 ff eb                                      bl #0x3deed8
003e07b4  20 00 10 e3                                      tst r0, #0x20
003e07b8  09 00 00 1a                                      bne #0x3e07e4
003e07bc  08 00 10 e3                                      tst r0, #8
003e07c0  00 00 00 1a                                      bne #0x3e07c8
003e07c4  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e07c8  a9 1e 84 e2                                      add r1, r4, #0xa90
003e07cc  04 00 a0 e1                                      mov r0, r4
003e07d0  04 10 81 e2                                      add r1, r1, #4
003e07d4  05 20 a0 e1                                      mov r2, r5
003e07d8  06 30 a0 e1                                      mov r3, r6
003e07dc  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e07e0  2e f9 ff ea                                      b #0x3deca0
003e07e4  04 00 a0 e1                                      mov r0, r4
003e07e8  e3 1f 84 e2                                      add r1, r4, #0x38c
003e07ec  06 30 a0 e1                                      mov r3, r6
003e07f0  05 20 a0 e1                                      mov r2, r5
003e07f4  29 f9 ff eb                                      bl #0x3deca0
003e07f8  04 00 a0 e1                                      mov r0, r4
003e07fc  05 10 a0 e1                                      mov r1, r5
003e0800  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e0804  95 fd ff ea                                      b #0x3dfe60

; FUNCTION 0x003e0808, declared_size=8, range_size=8, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties12PROPS_SetIntEii
; demangled: CharProperties::PROPS_SetInt(int, int)
; decoder-mode: arm
003e0808  02 24 a0 e1                                      lsl r2, r2, #8
003e080c  e3 ff ff ea                                      b #0x3e07a0

; FUNCTION 0x003e0810, declared_size=68, range_size=68, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties16RecalcPropertiesEb
; demangled: CharProperties::RecalcProperties(bool)
; decoder-mode: arm
003e0810  00 00 51 e3                                      cmp r1, #0
003e0814  70 40 2d e9                                      push {r4, r5, r6, lr}
003e0818  00 40 a0 e1                                      mov r4, r0
003e081c  07 00 00 1a                                      bne #0x3e0840
003e0820  00 50 a0 e3                                      mov r5, #0
003e0824  05 10 a0 e1                                      mov r1, r5
003e0828  04 00 a0 e1                                      mov r0, r4
003e082c  01 50 85 e2                                      add r5, r5, #1
003e0830  8a fd ff eb                                      bl #0x3dfe60
003e0834  e0 00 55 e3                                      cmp r5, #0xe0
003e0838  f9 ff ff 1a                                      bne #0x3e0824
003e083c  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e0840  08 10 80 e2                                      add r1, r0, #8
003e0844  74 20 90 e5                                      ldr r2, [r0, #0x74]
003e0848  00 30 a0 e3                                      mov r3, #0
003e084c  73 09 00 eb                                      bl #0x3e2e20
003e0850  f2 ff ff ea                                      b #0x3e0820

; FUNCTION 0x003e0854, declared_size=40, range_size=40, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties28LoadPropertiesForClassSelectEi
; demangled: CharProperties::LoadPropertiesForClassSelect(int)
; decoder-mode: arm
003e0854  10 40 2d e9                                      push {r4, lr}
003e0858  04 20 90 e5                                      ldr r2, [r0, #4]
003e085c  c8 33 01 e3                                      movw r3, #0x13c8
003e0860  00 40 a0 e1                                      mov r4, r0
003e0864  b3 10 82 e1                                      strh r1, [r2, r3]
003e0868  8d fa ff eb                                      bl #0x3df2a4
003e086c  04 00 a0 e1                                      mov r0, r4
003e0870  01 10 a0 e3                                      mov r1, #1
003e0874  10 40 bd e8                                      pop {r4, lr}
003e0878  e4 ff ff ea                                      b #0x3e0810

; FUNCTION 0x003e087c, declared_size=44, range_size=44, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties20UpdateBasePropertiesEi
; demangled: CharProperties::UpdateBaseProperties(int)
; decoder-mode: arm
003e087c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e0880  00 40 a0 e1                                      mov r4, r0
003e0884  01 50 a0 e1                                      mov r5, r1
003e0888  cb f9 ff eb                                      bl #0x3defbc
003e088c  04 00 a0 e1                                      mov r0, r4
003e0890  05 10 a0 e1                                      mov r1, r5
003e0894  82 fa ff eb                                      bl #0x3df2a4
003e0898  04 00 a0 e1                                      mov r0, r4
003e089c  01 10 a0 e3                                      mov r1, #1
003e08a0  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e08a4  d9 ff ff ea                                      b #0x3e0810

; FUNCTION 0x003e08a8, declared_size=36, range_size=36, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties21UpdateGearsPropertiesEv
; demangled: CharProperties::UpdateGearsProperties()
; decoder-mode: arm
003e08a8  10 40 2d e9                                      push {r4, lr}
003e08ac  00 40 a0 e1                                      mov r4, r0
003e08b0  bd f9 ff eb                                      bl #0x3defac
003e08b4  04 00 a0 e1                                      mov r0, r4
003e08b8  f0 fa ff eb                                      bl #0x3df480
003e08bc  04 00 a0 e1                                      mov r0, r4
003e08c0  01 10 a0 e3                                      mov r1, #1
003e08c4  10 40 bd e8                                      pop {r4, lr}
003e08c8  d0 ff ff ea                                      b #0x3e0810

; FUNCTION 0x003e0af8, declared_size=372, range_size=372, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties20PROPS_RemoveAllBuffsEv
; demangled: CharProperties::PROPS_RemoveAllBuffs()
; decoder-mode: arm
003e0af8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e0afc  60 21 9f e5                                      ldr r2, [pc, #0x160]
003e0b00  34 d0 4d e2                                      sub sp, sp, #0x34
003e0b04  e1 3e 80 e2                                      add r3, r0, #0xe10
003e0b08  02 20 8f e0                                      add r2, pc, r2
003e0b0c  08 20 8d e5                                      str r2, [sp, #8]
003e0b10  50 21 9f e5                                      ldr r2, [pc, #0x150]
003e0b14  08 30 83 e2                                      add r3, r3, #8
003e0b18  04 30 8d e5                                      str r3, [sp, #4]
003e0b1c  20 ae 90 e5                                      ldr sl, [r0, #0xe20]
003e0b20  00 70 a0 e1                                      mov r7, r0
003e0b24  20 90 8d e2                                      add sb, sp, #0x20
003e0b28  10 40 8d e2                                      add r4, sp, #0x10
003e0b2c  0c 20 8d e5                                      str r2, [sp, #0xc]
003e0b30  04 30 9d e5                                      ldr r3, [sp, #4]
003e0b34  0a 00 53 e1                                      cmp r3, sl
003e0b38  2b 00 00 0a                                      beq #0x3e0bec
003e0b3c  34 50 8a e2                                      add r5, sl, #0x34
003e0b40  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0b44  0f 00 89 e8                                      stm sb, {r0, r1, r2, r3}
003e0b48  44 00 8a e2                                      add r0, sl, #0x44
003e0b4c  09 10 a0 e1                                      mov r1, sb
003e0b50  46 f7 ff eb                                      bl #0x3de870
003e0b54  00 80 50 e2                                      subs r8, r0, #0
003e0b58  12 00 00 0a                                      beq #0x3e0ba8
003e0b5c  00 60 a0 e3                                      mov r6, #0
003e0b60  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0b64  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e0b68  06 10 a0 e1                                      mov r1, r6
003e0b6c  04 00 a0 e1                                      mov r0, r4
003e0b70  4f f7 ff eb                                      bl #0x3de8b4
003e0b74  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e0b78  04 00 97 e5                                      ldr r0, [r7, #4]
003e0b7c  01 60 86 e2                                      add r6, r6, #1
003e0b80  00 b0 93 e5                                      ldr fp, [r3]
003e0b84  ed 0f 80 e2                                      add r0, r0, #0x3b4
003e0b88  88 13 9b e5                                      ldr r1, [fp, #0x388]
003e0b8c  d1 e9 ff eb                                      bl #0x3db2d8
003e0b90  0b 00 a0 e1                                      mov r0, fp
003e0b94  e9 92 03 eb                                      bl #0x4c5740
003e0b98  0b 00 a0 e1                                      mov r0, fp
003e0b9c  27 be fc eb                                      bl #0x310440
003e0ba0  08 00 56 e1                                      cmp r6, r8
003e0ba4  ed ff ff 1a                                      bne #0x3e0b60
003e0ba8  08 20 9d e5                                      ldr r2, [sp, #8]
003e0bac  0c 30 9d e5                                      ldr r3, [sp, #0xc]
003e0bb0  18 10 8a e2                                      add r1, sl, #0x18
003e0bb4  03 00 92 e7                                      ldr r0, [r2, r3]
003e0bb8  6e cf 02 eb                                      bl #0x494978
003e0bbc  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003e0bc0  00 00 52 e3                                      cmp r2, #0
003e0bc4  01 00 00 1a                                      bne #0x3e0bd0
003e0bc8  18 00 00 ea                                      b #0x3e0c30
003e0bcc  03 20 a0 e1                                      mov r2, r3
003e0bd0  08 30 92 e5                                      ldr r3, [r2, #8]
003e0bd4  00 00 53 e3                                      cmp r3, #0
003e0bd8  fb ff ff 1a                                      bne #0x3e0bcc
003e0bdc  04 30 9d e5                                      ldr r3, [sp, #4]
003e0be0  02 a0 a0 e1                                      mov sl, r2
003e0be4  0a 00 53 e1                                      cmp r3, sl
003e0be8  d3 ff ff 1a                                      bne #0x3e0b3c
003e0bec  28 3e 97 e5                                      ldr r3, [r7, #0xe28]
003e0bf0  00 00 53 e3                                      cmp r3, #0
003e0bf4  08 00 00 0a                                      beq #0x3e0c1c
003e0bf8  04 00 9d e5                                      ldr r0, [sp, #4]
003e0bfc  1c 1e 97 e5                                      ldr r1, [r7, #0xe1c]
003e0c00  ac ff ff eb                                      bl #0x3e0ab8
003e0c04  04 20 9d e5                                      ldr r2, [sp, #4]
003e0c08  00 30 a0 e3                                      mov r3, #0
003e0c0c  28 3e 87 e5                                      str r3, [r7, #0xe28]
003e0c10  24 2e 87 e5                                      str r2, [r7, #0xe24]
003e0c14  20 2e 87 e5                                      str r2, [r7, #0xe20]
003e0c18  1c 3e 87 e5                                      str r3, [r7, #0xe1c]
003e0c1c  07 00 a0 e1                                      mov r0, r7
003e0c20  01 10 a0 e3                                      mov r1, #1
003e0c24  f9 fe ff eb                                      bl #0x3e0810
003e0c28  34 d0 8d e2                                      add sp, sp, #0x34
003e0c2c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e0c30  04 30 9a e5                                      ldr r3, [sl, #4]
003e0c34  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e0c38  0a 00 51 e1                                      cmp r1, sl
003e0c3c  05 00 00 1a                                      bne #0x3e0c58
003e0c40  03 a0 a0 e1                                      mov sl, r3
003e0c44  04 30 93 e5                                      ldr r3, [r3, #4]
003e0c48  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e0c4c  0a 00 52 e1                                      cmp r2, sl
003e0c50  fa ff ff 0a                                      beq #0x3e0c40
003e0c54  0c 20 9a e5                                      ldr r2, [sl, #0xc]
003e0c58  02 00 53 e1                                      cmp r3, r2
003e0c5c  03 a0 a0 11                                      movne sl, r3
003e0c60  b2 ff ff ea                                      b #0x3e0b30
; mapping-symbol data/literal pool
003e0c64  88 3f 5b 00 08 1b 00 00                          .byte 0x88, 0x3f, 0x5b, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003e0c6c, declared_size=420, range_size=420, mode=arm
; class-group: CharProperties
; alias: _ZN14CharPropertiesD1Ev
; demangled: CharProperties::~CharProperties()
; decoder-mode: arm
003e0c6c  90 21 9f e5                                      ldr r2, [pc, #0x190]
003e0c70  90 31 9f e5                                      ldr r3, [pc, #0x190]
003e0c74  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e0c78  02 20 8f e0                                      add r2, pc, r2
003e0c7c  03 30 92 e7                                      ldr r3, [r2, r3]
003e0c80  34 d0 4d e2                                      sub sp, sp, #0x34
003e0c84  08 20 8d e5                                      str r2, [sp, #8]
003e0c88  08 30 83 e2                                      add r3, r3, #8
003e0c8c  00 30 80 e5                                      str r3, [r0]
003e0c90  74 31 9f e5                                      ldr r3, [pc, #0x174]
003e0c94  e1 9e 80 e2                                      add sb, r0, #0xe10
003e0c98  20 7e 90 e5                                      ldr r7, [r0, #0xe20]
003e0c9c  00 b0 a0 e1                                      mov fp, r0
003e0ca0  08 90 89 e2                                      add sb, sb, #8
003e0ca4  20 a0 8d e2                                      add sl, sp, #0x20
003e0ca8  10 40 8d e2                                      add r4, sp, #0x10
003e0cac  0c 30 8d e5                                      str r3, [sp, #0xc]
003e0cb0  07 00 59 e1                                      cmp sb, r7
003e0cb4  2e 00 00 0a                                      beq #0x3e0d74
003e0cb8  34 50 87 e2                                      add r5, r7, #0x34
003e0cbc  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0cc0  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
003e0cc4  44 00 87 e2                                      add r0, r7, #0x44
003e0cc8  0a 10 a0 e1                                      mov r1, sl
003e0ccc  e7 f6 ff eb                                      bl #0x3de870
003e0cd0  00 80 50 e2                                      subs r8, r0, #0
003e0cd4  11 00 00 0a                                      beq #0x3e0d20
003e0cd8  00 60 a0 e3                                      mov r6, #0
003e0cdc  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0ce0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e0ce4  06 10 a0 e1                                      mov r1, r6
003e0ce8  04 00 a0 e1                                      mov r0, r4
003e0cec  f0 f6 ff eb                                      bl #0x3de8b4
003e0cf0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e0cf4  01 60 86 e2                                      add r6, r6, #1
003e0cf8  00 30 93 e5                                      ldr r3, [r3]
003e0cfc  00 00 53 e2                                      subs r0, r3, #0
003e0d00  04 00 00 0a                                      beq #0x3e0d18
003e0d04  04 30 8d e5                                      str r3, [sp, #4]
003e0d08  8c 92 03 eb                                      bl #0x4c5740
003e0d0c  04 30 9d e5                                      ldr r3, [sp, #4]
003e0d10  03 00 a0 e1                                      mov r0, r3
003e0d14  c9 bd fc eb                                      bl #0x310440
003e0d18  08 00 56 e1                                      cmp r6, r8
003e0d1c  ee ff ff 1a                                      bne #0x3e0cdc
003e0d20  05 00 a0 e1                                      mov r0, r5
003e0d24  00 ff ff eb                                      bl #0x3e092c
003e0d28  18 30 97 e5                                      ldr r3, [r7, #0x18]
003e0d2c  00 00 53 e3                                      cmp r3, #0
003e0d30  04 00 00 0a                                      beq #0x3e0d48
003e0d34  08 30 9d e5                                      ldr r3, [sp, #8]
003e0d38  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003e0d3c  18 10 87 e2                                      add r1, r7, #0x18
003e0d40  02 00 93 e7                                      ldr r0, [r3, r2]
003e0d44  0b cf 02 eb                                      bl #0x494978
003e0d48  0c 20 97 e5                                      ldr r2, [r7, #0xc]
003e0d4c  00 00 52 e3                                      cmp r2, #0
003e0d50  01 00 00 1a                                      bne #0x3e0d5c
003e0d54  1d 00 00 ea                                      b #0x3e0dd0
003e0d58  03 20 a0 e1                                      mov r2, r3
003e0d5c  08 30 92 e5                                      ldr r3, [r2, #8]
003e0d60  00 00 53 e3                                      cmp r3, #0
003e0d64  fb ff ff 1a                                      bne #0x3e0d58
003e0d68  02 70 a0 e1                                      mov r7, r2
003e0d6c  07 00 59 e1                                      cmp sb, r7
003e0d70  d0 ff ff 1a                                      bne #0x3e0cb8
003e0d74  28 3e 9b e5                                      ldr r3, [fp, #0xe28]
003e0d78  00 00 53 e3                                      cmp r3, #0
003e0d7c  07 00 00 0a                                      beq #0x3e0da0
003e0d80  09 00 a0 e1                                      mov r0, sb
003e0d84  1c 1e 9b e5                                      ldr r1, [fp, #0xe1c]
003e0d88  4a ff ff eb                                      bl #0x3e0ab8
003e0d8c  00 30 a0 e3                                      mov r3, #0
003e0d90  24 9e 8b e5                                      str sb, [fp, #0xe24]
003e0d94  28 3e 8b e5                                      str r3, [fp, #0xe28]
003e0d98  20 9e 8b e5                                      str sb, [fp, #0xe20]
003e0d9c  1c 3e 8b e5                                      str r3, [fp, #0xe1c]
003e0da0  a9 0e 8b e2                                      add r0, fp, #0xa90
003e0da4  04 00 80 e2                                      add r0, r0, #4
003e0da8  64 92 03 eb                                      bl #0x4c5740
003e0dac  71 0e 8b e2                                      add r0, fp, #0x710
003e0db0  62 92 03 eb                                      bl #0x4c5740
003e0db4  e3 0f 8b e2                                      add r0, fp, #0x38c
003e0db8  60 92 03 eb                                      bl #0x4c5740
003e0dbc  08 00 8b e2                                      add r0, fp, #8
003e0dc0  5e 92 03 eb                                      bl #0x4c5740
003e0dc4  0b 00 a0 e1                                      mov r0, fp
003e0dc8  34 d0 8d e2                                      add sp, sp, #0x34
003e0dcc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e0dd0  04 30 97 e5                                      ldr r3, [r7, #4]
003e0dd4  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e0dd8  01 00 57 e1                                      cmp r7, r1
003e0ddc  05 00 00 1a                                      bne #0x3e0df8
003e0de0  03 70 a0 e1                                      mov r7, r3
003e0de4  04 30 93 e5                                      ldr r3, [r3, #4]
003e0de8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e0dec  07 00 52 e1                                      cmp r2, r7
003e0df0  fa ff ff 0a                                      beq #0x3e0de0
003e0df4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
003e0df8  02 00 53 e1                                      cmp r3, r2
003e0dfc  03 70 a0 11                                      movne r7, r3
003e0e00  aa ff ff ea                                      b #0x3e0cb0
; mapping-symbol data/literal pool
003e0e04  18 3e 5b 00 d0 39 00 00 08 1b 00 00              .byte 0x18, 0x3e, 0x5b, 0x00, 0xd0, 0x39, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003e0e10, declared_size=28, range_size=28, mode=arm
; class-group: CharProperties
; alias: _ZN14CharPropertiesD0Ev
; demangled: CharProperties::~CharProperties()
; decoder-mode: arm
003e0e10  10 40 2d e9                                      push {r4, lr}
003e0e14  00 40 a0 e1                                      mov r4, r0
003e0e18  93 ff ff eb                                      bl #0x3e0c6c
003e0e1c  04 00 a0 e1                                      mov r0, r4
003e0e20  86 bd fc eb                                      bl #0x310440
003e0e24  04 00 a0 e1                                      mov r0, r4
003e0e28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003e0e2c, declared_size=420, range_size=420, mode=arm
; class-group: CharProperties
; alias: _ZN14CharPropertiesD2Ev
; demangled: CharProperties::~CharProperties()
; decoder-mode: arm
003e0e2c  90 21 9f e5                                      ldr r2, [pc, #0x190]
003e0e30  90 31 9f e5                                      ldr r3, [pc, #0x190]
003e0e34  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e0e38  02 20 8f e0                                      add r2, pc, r2
003e0e3c  03 30 92 e7                                      ldr r3, [r2, r3]
003e0e40  34 d0 4d e2                                      sub sp, sp, #0x34
003e0e44  08 20 8d e5                                      str r2, [sp, #8]
003e0e48  08 30 83 e2                                      add r3, r3, #8
003e0e4c  00 30 80 e5                                      str r3, [r0]
003e0e50  74 31 9f e5                                      ldr r3, [pc, #0x174]
003e0e54  e1 9e 80 e2                                      add sb, r0, #0xe10
003e0e58  20 7e 90 e5                                      ldr r7, [r0, #0xe20]
003e0e5c  00 b0 a0 e1                                      mov fp, r0
003e0e60  08 90 89 e2                                      add sb, sb, #8
003e0e64  20 a0 8d e2                                      add sl, sp, #0x20
003e0e68  10 40 8d e2                                      add r4, sp, #0x10
003e0e6c  0c 30 8d e5                                      str r3, [sp, #0xc]
003e0e70  07 00 59 e1                                      cmp sb, r7
003e0e74  2e 00 00 0a                                      beq #0x3e0f34
003e0e78  34 50 87 e2                                      add r5, r7, #0x34
003e0e7c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0e80  0f 00 8a e8                                      stm sl, {r0, r1, r2, r3}
003e0e84  44 00 87 e2                                      add r0, r7, #0x44
003e0e88  0a 10 a0 e1                                      mov r1, sl
003e0e8c  77 f6 ff eb                                      bl #0x3de870
003e0e90  00 80 50 e2                                      subs r8, r0, #0
003e0e94  11 00 00 0a                                      beq #0x3e0ee0
003e0e98  00 60 a0 e3                                      mov r6, #0
003e0e9c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e0ea0  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e0ea4  06 10 a0 e1                                      mov r1, r6
003e0ea8  04 00 a0 e1                                      mov r0, r4
003e0eac  80 f6 ff eb                                      bl #0x3de8b4
003e0eb0  10 30 9d e5                                      ldr r3, [sp, #0x10]
003e0eb4  01 60 86 e2                                      add r6, r6, #1
003e0eb8  00 30 93 e5                                      ldr r3, [r3]
003e0ebc  00 00 53 e2                                      subs r0, r3, #0
003e0ec0  04 00 00 0a                                      beq #0x3e0ed8
003e0ec4  04 30 8d e5                                      str r3, [sp, #4]
003e0ec8  1c 92 03 eb                                      bl #0x4c5740
003e0ecc  04 30 9d e5                                      ldr r3, [sp, #4]
003e0ed0  03 00 a0 e1                                      mov r0, r3
003e0ed4  59 bd fc eb                                      bl #0x310440
003e0ed8  08 00 56 e1                                      cmp r6, r8
003e0edc  ee ff ff 1a                                      bne #0x3e0e9c
003e0ee0  05 00 a0 e1                                      mov r0, r5
003e0ee4  90 fe ff eb                                      bl #0x3e092c
003e0ee8  18 30 97 e5                                      ldr r3, [r7, #0x18]
003e0eec  00 00 53 e3                                      cmp r3, #0
003e0ef0  04 00 00 0a                                      beq #0x3e0f08
003e0ef4  08 30 9d e5                                      ldr r3, [sp, #8]
003e0ef8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003e0efc  18 10 87 e2                                      add r1, r7, #0x18
003e0f00  02 00 93 e7                                      ldr r0, [r3, r2]
003e0f04  9b ce 02 eb                                      bl #0x494978
003e0f08  0c 20 97 e5                                      ldr r2, [r7, #0xc]
003e0f0c  00 00 52 e3                                      cmp r2, #0
003e0f10  01 00 00 1a                                      bne #0x3e0f1c
003e0f14  1d 00 00 ea                                      b #0x3e0f90
003e0f18  03 20 a0 e1                                      mov r2, r3
003e0f1c  08 30 92 e5                                      ldr r3, [r2, #8]
003e0f20  00 00 53 e3                                      cmp r3, #0
003e0f24  fb ff ff 1a                                      bne #0x3e0f18
003e0f28  02 70 a0 e1                                      mov r7, r2
003e0f2c  07 00 59 e1                                      cmp sb, r7
003e0f30  d0 ff ff 1a                                      bne #0x3e0e78
003e0f34  28 3e 9b e5                                      ldr r3, [fp, #0xe28]
003e0f38  00 00 53 e3                                      cmp r3, #0
003e0f3c  07 00 00 0a                                      beq #0x3e0f60
003e0f40  09 00 a0 e1                                      mov r0, sb
003e0f44  1c 1e 9b e5                                      ldr r1, [fp, #0xe1c]
003e0f48  da fe ff eb                                      bl #0x3e0ab8
003e0f4c  00 30 a0 e3                                      mov r3, #0
003e0f50  24 9e 8b e5                                      str sb, [fp, #0xe24]
003e0f54  28 3e 8b e5                                      str r3, [fp, #0xe28]
003e0f58  20 9e 8b e5                                      str sb, [fp, #0xe20]
003e0f5c  1c 3e 8b e5                                      str r3, [fp, #0xe1c]
003e0f60  a9 0e 8b e2                                      add r0, fp, #0xa90
003e0f64  04 00 80 e2                                      add r0, r0, #4
003e0f68  f4 91 03 eb                                      bl #0x4c5740
003e0f6c  71 0e 8b e2                                      add r0, fp, #0x710
003e0f70  f2 91 03 eb                                      bl #0x4c5740
003e0f74  e3 0f 8b e2                                      add r0, fp, #0x38c
003e0f78  f0 91 03 eb                                      bl #0x4c5740
003e0f7c  08 00 8b e2                                      add r0, fp, #8
003e0f80  ee 91 03 eb                                      bl #0x4c5740
003e0f84  0b 00 a0 e1                                      mov r0, fp
003e0f88  34 d0 8d e2                                      add sp, sp, #0x34
003e0f8c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e0f90  04 30 97 e5                                      ldr r3, [r7, #4]
003e0f94  0c 10 93 e5                                      ldr r1, [r3, #0xc]
003e0f98  01 00 57 e1                                      cmp r7, r1
003e0f9c  05 00 00 1a                                      bne #0x3e0fb8
003e0fa0  03 70 a0 e1                                      mov r7, r3
003e0fa4  04 30 93 e5                                      ldr r3, [r3, #4]
003e0fa8  0c 20 93 e5                                      ldr r2, [r3, #0xc]
003e0fac  07 00 52 e1                                      cmp r2, r7
003e0fb0  fa ff ff 0a                                      beq #0x3e0fa0
003e0fb4  0c 20 97 e5                                      ldr r2, [r7, #0xc]
003e0fb8  02 00 53 e1                                      cmp r3, r2
003e0fbc  03 70 a0 11                                      movne r7, r3
003e0fc0  aa ff ff ea                                      b #0x3e0e70
; mapping-symbol data/literal pool
003e0fc4  58 3c 5b 00 d0 39 00 00 08 1b 00 00              .byte 0x58, 0x3c, 0x5b, 0x00, 0xd0, 0x39, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003e101c, declared_size=544, range_size=544, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties13PROPS_DelBuffEiPN7Structs19CharacterPropertiesE
; demangled: CharProperties::PROPS_DelBuff(int, Structs::CharacterProperties*)
; decoder-mode: arm
003e101c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e1020  1c 4e 90 e5                                      ldr r4, [r0, #0xe1c]
003e1024  08 72 9f e5                                      ldr r7, [pc, #0x208]
003e1028  e1 5e 80 e2                                      add r5, r0, #0xe10
003e102c  00 00 54 e3                                      cmp r4, #0
003e1030  07 70 8f e0                                      add r7, pc, r7
003e1034  54 d0 4d e2                                      sub sp, sp, #0x54
003e1038  00 90 a0 e1                                      mov sb, r0
003e103c  02 60 a0 e1                                      mov r6, r2
003e1040  08 50 85 e2                                      add r5, r5, #8
003e1044  37 00 00 0a                                      beq #0x3e1128
003e1048  05 20 a0 e1                                      mov r2, r5
003e104c  00 00 00 ea                                      b #0x3e1054
003e1050  03 40 a0 e1                                      mov r4, r3
003e1054  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e1058  01 00 53 e1                                      cmp r3, r1
003e105c  0c 30 94 b5                                      ldrlt r3, [r4, #0xc]
003e1060  08 30 94 a5                                      ldrge r3, [r4, #8]
003e1064  02 40 a0 b1                                      movlt r4, r2
003e1068  04 20 a0 e1                                      mov r2, r4
003e106c  00 00 53 e3                                      cmp r3, #0
003e1070  f6 ff ff 1a                                      bne #0x3e1050
003e1074  04 00 55 e1                                      cmp r5, r4
003e1078  2d 00 00 0a                                      beq #0x3e1134
003e107c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e1080  01 00 53 e1                                      cmp r3, r1
003e1084  27 00 00 ca                                      bgt #0x3e1128
003e1088  04 00 55 e1                                      cmp r5, r4
003e108c  28 00 00 0a                                      beq #0x3e1134
003e1090  34 30 84 e2                                      add r3, r4, #0x34
003e1094  18 c0 8d e2                                      add ip, sp, #0x18
003e1098  04 30 8d e5                                      str r3, [sp, #4]
003e109c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003e10a0  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e10a4  0c 10 a0 e1                                      mov r1, ip
003e10a8  44 00 84 e2                                      add r0, r4, #0x44
003e10ac  ef f5 ff eb                                      bl #0x3de870
003e10b0  01 00 50 e3                                      cmp r0, #1
003e10b4  36 00 00 0a                                      beq #0x3e1194
003e10b8  00 00 56 e3                                      cmp r6, #0
003e10bc  1c 00 00 0a                                      beq #0x3e1134
003e10c0  40 a0 94 e5                                      ldr sl, [r4, #0x40]
003e10c4  38 80 94 e5                                      ldr r8, [r4, #0x38]
003e10c8  3c 50 94 e5                                      ldr r5, [r4, #0x3c]
003e10cc  34 70 94 e5                                      ldr r7, [r4, #0x34]
003e10d0  44 30 94 e5                                      ldr r3, [r4, #0x44]
003e10d4  07 00 53 e1                                      cmp r3, r7
003e10d8  15 00 00 0a                                      beq #0x3e1134
003e10dc  00 40 97 e5                                      ldr r4, [r7]
003e10e0  06 00 54 e1                                      cmp r4, r6
003e10e4  04 b0 a0 e1                                      mov fp, r4
003e10e8  14 00 00 0a                                      beq #0x3e1140
003e10ec  04 70 87 e2                                      add r7, r7, #4
003e10f0  05 00 57 e1                                      cmp r7, r5
003e10f4  07 00 00 0a                                      beq #0x3e1118
003e10f8  07 00 53 e1                                      cmp r3, r7
003e10fc  0c 00 00 0a                                      beq #0x3e1134
003e1100  00 40 97 e5                                      ldr r4, [r7]
003e1104  06 00 54 e1                                      cmp r4, r6
003e1108  0b 00 00 0a                                      beq #0x3e113c
003e110c  04 70 87 e2                                      add r7, r7, #4
003e1110  07 00 55 e1                                      cmp r5, r7
003e1114  f7 ff ff 1a                                      bne #0x3e10f8
003e1118  04 80 ba e5                                      ldr r8, [sl, #4]!
003e111c  80 50 88 e2                                      add r5, r8, #0x80
003e1120  08 70 a0 e1                                      mov r7, r8
003e1124  ea ff ff ea                                      b #0x3e10d4
003e1128  05 40 a0 e1                                      mov r4, r5
003e112c  04 00 55 e1                                      cmp r5, r4
003e1130  d6 ff ff 1a                                      bne #0x3e1090
003e1134  54 d0 8d e2                                      add sp, sp, #0x54
003e1138  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e113c  06 b0 a0 e1                                      mov fp, r6
003e1140  04 00 99 e5                                      ldr r0, [sb, #4]
003e1144  88 13 94 e5                                      ldr r1, [r4, #0x388]
003e1148  ed 0f 80 e2                                      add r0, r0, #0x3b4
003e114c  61 e8 ff eb                                      bl #0x3db2d8
003e1150  0b 00 a0 e1                                      mov r0, fp
003e1154  79 91 03 eb                                      bl #0x4c5740
003e1158  04 00 a0 e1                                      mov r0, r4
003e115c  b7 bc fc eb                                      bl #0x310440
003e1160  04 10 9d e5                                      ldr r1, [sp, #4]
003e1164  38 00 8d e2                                      add r0, sp, #0x38
003e1168  28 20 8d e2                                      add r2, sp, #0x28
003e116c  4c 30 8d e2                                      add r3, sp, #0x4c
003e1170  34 a0 8d e5                                      str sl, [sp, #0x34]
003e1174  30 50 8d e5                                      str r5, [sp, #0x30]
003e1178  2c 80 8d e5                                      str r8, [sp, #0x2c]
003e117c  28 70 8d e5                                      str r7, [sp, #0x28]
003e1180  45 fa ff eb                                      bl #0x3dfa9c
003e1184  09 00 a0 e1                                      mov r0, sb
003e1188  01 10 a0 e3                                      mov r1, #1
003e118c  9f fd ff eb                                      bl #0x3e0810
003e1190  e7 ff ff ea                                      b #0x3e1134
003e1194  04 e0 9d e5                                      ldr lr, [sp, #4]
003e1198  04 c0 99 e5                                      ldr ip, [sb, #4]
003e119c  08 60 8d e2                                      add r6, sp, #8
003e11a0  0f 00 9e e8                                      ldm lr, {r0, r1, r2, r3}
003e11a4  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
003e11a8  06 00 a0 e1                                      mov r0, r6
003e11ac  00 10 a0 e3                                      mov r1, #0
003e11b0  ed 8f 8c e2                                      add r8, ip, #0x3b4
003e11b4  be f5 ff eb                                      bl #0x3de8b4
003e11b8  08 30 9d e5                                      ldr r3, [sp, #8]
003e11bc  08 00 a0 e1                                      mov r0, r8
003e11c0  00 30 93 e5                                      ldr r3, [r3]
003e11c4  88 13 93 e5                                      ldr r1, [r3, #0x388]
003e11c8  42 e8 ff eb                                      bl #0x3db2d8
003e11cc  04 c0 9d e5                                      ldr ip, [sp, #4]
003e11d0  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
003e11d4  0f 00 86 e8                                      stm r6, {r0, r1, r2, r3}
003e11d8  06 00 a0 e1                                      mov r0, r6
003e11dc  00 10 a0 e3                                      mov r1, #0
003e11e0  b3 f5 ff eb                                      bl #0x3de8b4
003e11e4  08 30 9d e5                                      ldr r3, [sp, #8]
003e11e8  00 60 93 e5                                      ldr r6, [r3]
003e11ec  00 00 56 e3                                      cmp r6, #0
003e11f0  03 00 00 0a                                      beq #0x3e1204
003e11f4  06 00 a0 e1                                      mov r0, r6
003e11f8  50 91 03 eb                                      bl #0x4c5740
003e11fc  06 00 a0 e1                                      mov r0, r6
003e1200  8e bc fc eb                                      bl #0x310440
003e1204  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003e1208  18 10 84 e2                                      add r1, r4, #0x18
003e120c  03 00 97 e7                                      ldr r0, [r7, r3]
003e1210  d8 cd 02 eb                                      bl #0x494978
003e1214  50 10 8d e2                                      add r1, sp, #0x50
003e1218  08 40 21 e5                                      str r4, [r1, #-8]!
003e121c  05 00 a0 e1                                      mov r0, r5
003e1220  6a ff ff eb                                      bl #0x3e0fd0
003e1224  09 00 a0 e1                                      mov r0, sb
003e1228  01 10 a0 e3                                      mov r1, #1
003e122c  77 fd ff eb                                      bl #0x3e0810
003e1230  bf ff ff ea                                      b #0x3e1134
; mapping-symbol data/literal pool
003e1234  60 3a 5b 00 08 1b 00 00                          .byte 0x60, 0x3a, 0x5b, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003e123c, declared_size=312, range_size=312, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties11BuffExpiredEPN10CharTimers5TimerE
; demangled: CharProperties::BuffExpired(CharTimers::Timer*)
; decoder-mode: arm
003e123c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
003e1240  08 41 9f e5                                      ldr r4, [pc, #0x108]
003e1244  00 50 51 e2                                      subs r5, r1, #0
003e1248  0c d0 4d e2                                      sub sp, sp, #0xc
003e124c  00 70 a0 e1                                      mov r7, r0
003e1250  04 40 8f e0                                      add r4, pc, r4
003e1254  1b 00 00 0a                                      beq #0x3e12c8
003e1258  00 30 95 e5                                      ldr r3, [r5]
003e125c  05 00 a0 e1                                      mov r0, r5
003e1260  0f e0 a0 e1                                      mov lr, pc
003e1264  04 f0 93 e5                                      ldr pc, [r3, #4]
003e1268  00 30 95 e5                                      ldr r3, [r5]
003e126c  00 60 a0 e1                                      mov r6, r0
003e1270  05 00 a0 e1                                      mov r0, r5
003e1274  88 53 96 e5                                      ldr r5, [r6, #0x388]
003e1278  0f e0 a0 e1                                      mov lr, pc
003e127c  00 f0 93 e5                                      ldr pc, [r3]
003e1280  00 00 55 e1                                      cmp r5, r0
003e1284  08 00 00 0a                                      beq #0x3e12ac
003e1288  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003e128c  03 30 94 e7                                      ldr r3, [r4, r3]
003e1290  00 30 93 e5                                      ldr r3, [r3]
003e1294  02 00 53 e3                                      cmp r3, #2
003e1298  00 30 a0 03                                      moveq r3, #0
003e129c  00 30 83 05                                      streq r3, [r3]
003e12a0  01 00 00 0a                                      beq #0x3e12ac
003e12a4  01 00 53 e3                                      cmp r3, #1
003e12a8  1b 00 00 0a                                      beq #0x3e131c
003e12ac  90 33 96 e5                                      ldr r3, [r6, #0x390]
003e12b0  07 00 a0 e1                                      mov r0, r7
003e12b4  06 20 a0 e1                                      mov r2, r6
003e12b8  00 10 93 e5                                      ldr r1, [r3]
003e12bc  0c d0 8d e2                                      add sp, sp, #0xc
003e12c0  f0 40 bd e8                                      pop {r4, r5, r6, r7, lr}
003e12c4  54 ff ff ea                                      b #0x3e101c
003e12c8  84 30 9f e5                                      ldr r3, [pc, #0x84]
003e12cc  03 30 94 e7                                      ldr r3, [r4, r3]
003e12d0  00 30 93 e5                                      ldr r3, [r3]
003e12d4  02 00 53 e3                                      cmp r3, #2
003e12d8  00 50 85 05                                      streq r5, [r5]
003e12dc  dd ff ff 0a                                      beq #0x3e1258
003e12e0  01 00 53 e3                                      cmp r3, #1
003e12e4  db ff ff 1a                                      bne #0x3e1258
003e12e8  68 00 9f e5                                      ldr r0, [pc, #0x68]
003e12ec  68 10 9f e5                                      ldr r1, [pc, #0x68]
003e12f0  68 20 9f e5                                      ldr r2, [pc, #0x68]
003e12f4  00 00 94 e7                                      ldr r0, [r4, r0]
003e12f8  64 30 9f e5                                      ldr r3, [pc, #0x64]
003e12fc  0d cd a0 e3                                      mov ip, #0x340
003e1300  01 10 8f e0                                      add r1, pc, r1
003e1304  02 20 8f e0                                      add r2, pc, r2
003e1308  03 30 8f e0                                      add r3, pc, r3
003e130c  a8 00 80 e2                                      add r0, r0, #0xa8
003e1310  00 c0 8d e5                                      str ip, [sp]
003e1314  3a b3 fc eb                                      bl #0x30e004
003e1318  ce ff ff ea                                      b #0x3e1258
003e131c  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e1320  40 10 9f e5                                      ldr r1, [pc, #0x40]
003e1324  40 20 9f e5                                      ldr r2, [pc, #0x40]
003e1328  00 00 94 e7                                      ldr r0, [r4, r0]
003e132c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
003e1330  d1 cf a0 e3                                      mov ip, #0x344
003e1334  01 10 8f e0                                      add r1, pc, r1
003e1338  02 20 8f e0                                      add r2, pc, r2
003e133c  03 30 8f e0                                      add r3, pc, r3
003e1340  a8 00 80 e2                                      add r0, r0, #0xa8
003e1344  00 c0 8d e5                                      str ip, [sp]
003e1348  2d b3 fc eb                                      bl #0x30e004
003e134c  d6 ff ff ea                                      b #0x3e12ac
; mapping-symbol data/literal pool
003e1350  40 38 5b 00 c0 39 00 00 c0 19 00 00 d8 d0 4d 00  .byte 0x40, 0x38, 0x5b, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xd8, 0xd0, 0x4d, 0x00
003e1360  2c 4a 4e 00 a8 49 4e 00 a4 d0 4d 00 00 4a 4e 00  .byte 0x2c, 0x4a, 0x4e, 0x00, 0xa8, 0x49, 0x4e, 0x00, 0xa4, 0xd0, 0x4d, 0x00, 0x00, 0x4a, 0x4e, 0x00
003e1370  74 49 4e 00                                      .byte 0x74, 0x49, 0x4e, 0x00

; FUNCTION 0x003e1374, declared_size=876, range_size=876, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties13LoadPropNamesEPKc
; demangled: CharProperties::LoadPropNames(char const*)
; decoder-mode: arm
003e1374  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e1378  48 83 9f e5                                      ldr r8, [pc, #0x348]
003e137c  48 13 9f e5                                      ldr r1, [pc, #0x348]
003e1380  48 23 9f e5                                      ldr r2, [pc, #0x348]
003e1384  08 80 8f e0                                      add r8, pc, r8
003e1388  01 30 98 e7                                      ldr r3, [r8, r1]
003e138c  02 50 98 e7                                      ldr r5, [r8, r2]
003e1390  7c d0 4d e2                                      sub sp, sp, #0x7c
003e1394  00 30 93 e5                                      ldr r3, [r3]
003e1398  00 60 a0 e1                                      mov r6, r0
003e139c  05 00 a0 e1                                      mov r0, r5
003e13a0  74 30 8d e5                                      str r3, [sp, #0x74]
003e13a4  10 10 8d e5                                      str r1, [sp, #0x10]
003e13a8  36 59 fd eb                                      bl #0x337888
003e13ac  20 13 9f e5                                      ldr r1, [pc, #0x320]
003e13b0  5c 40 8d e2                                      add r4, sp, #0x5c
003e13b4  04 00 a0 e1                                      mov r0, r4
003e13b8  01 10 8f e0                                      add r1, pc, r1
003e13bc  17 20 81 e2                                      add r2, r1, #0x17
003e13c0  6c 40 8d e5                                      str r4, [sp, #0x6c]
003e13c4  70 40 8d e5                                      str r4, [sp, #0x70]
003e13c8  c6 c0 fc eb                                      bl #0x3116e8
003e13cc  05 00 a0 e1                                      mov r0, r5
003e13d0  04 10 a0 e1                                      mov r1, r4
003e13d4  ab 59 fd eb                                      bl #0x337a88
003e13d8  70 00 9d e5                                      ldr r0, [sp, #0x70]
003e13dc  04 00 50 e1                                      cmp r0, r4
003e13e0  06 00 00 0a                                      beq #0x3e1400
003e13e4  00 00 50 e3                                      cmp r0, #0
003e13e8  04 00 00 0a                                      beq #0x3e1400
003e13ec  5c 10 9d e5                                      ldr r1, [sp, #0x5c]
003e13f0  01 10 60 e0                                      rsb r1, r0, r1
003e13f4  80 00 51 e3                                      cmp r1, #0x80
003e13f8  a5 00 00 8a                                      bhi #0x3e1694
003e13fc  bf 9e 0c eb                                      bl #0x708f00
003e1400  d0 32 9f e5                                      ldr r3, [pc, #0x2d0]
003e1404  06 10 a0 e1                                      mov r1, r6
003e1408  03 40 98 e7                                      ldr r4, [r8, r3]
003e140c  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e1410  34 30 93 e5                                      ldr r3, [r3, #0x34]
003e1414  03 00 a0 e1                                      mov r0, r3
003e1418  00 30 93 e5                                      ldr r3, [r3]
003e141c  0f e0 a0 e1                                      mov lr, pc
003e1420  90 f0 93 e5                                      ldr pc, [r3, #0x90]
003e1424  00 30 50 e2                                      subs r3, r0, #0
003e1428  54 00 00 0a                                      beq #0x3e1580
003e142c  18 60 8d e2                                      add r6, sp, #0x18
003e1430  03 10 a0 e1                                      mov r1, r3
003e1434  06 00 a0 e1                                      mov r0, r6
003e1438  58 30 8d e5                                      str r3, [sp, #0x58]
003e143c  a5 d7 fc eb                                      bl #0x3172d8
003e1440  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e1444  58 10 8d e2                                      add r1, sp, #0x58
003e1448  78 40 8d e2                                      add r4, sp, #0x78
003e144c  34 30 93 e5                                      ldr r3, [r3, #0x34]
003e1450  03 00 a0 e1                                      mov r0, r3
003e1454  00 30 93 e5                                      ldr r3, [r3]
003e1458  0f e0 a0 e1                                      mov lr, pc
003e145c  78 f0 93 e5                                      ldr pc, [r3, #0x78]
003e1460  00 30 a0 e3                                      mov r3, #0
003e1464  24 30 24 e5                                      str r3, [r4, #-0x24]!
003e1468  06 00 a0 e1                                      mov r0, r6
003e146c  04 10 a0 e1                                      mov r1, r4
003e1470  4a f7 ff eb                                      bl #0x3df1a0
003e1474  01 30 a0 e3                                      mov r3, #1
003e1478  00 00 53 e3                                      cmp r3, #0
003e147c  4c 30 8d e5                                      str r3, [sp, #0x4c]
003e1480  6f 00 00 0a                                      beq #0x3e1644
003e1484  54 30 9d e5                                      ldr r3, [sp, #0x54]
003e1488  00 00 53 e3                                      cmp r3, #0
003e148c  39 00 00 0a                                      beq #0x3e1578
003e1490  50 b0 8d e2                                      add fp, sp, #0x50
003e1494  01 70 a0 e3                                      mov r7, #1
003e1498  3c 92 9f e5                                      ldr sb, [pc, #0x23c]
003e149c  4c 20 8d e2                                      add r2, sp, #0x4c
003e14a0  07 30 8b e0                                      add r3, fp, r7
003e14a4  02 10 8b e2                                      add r1, fp, #2
003e14a8  00 50 a0 e3                                      mov r5, #0
003e14ac  14 20 8d e5                                      str r2, [sp, #0x14]
003e14b0  08 30 8d e5                                      str r3, [sp, #8]
003e14b4  0c 10 8d e5                                      str r1, [sp, #0xc]
003e14b8  06 00 a0 e1                                      mov r0, r6
003e14bc  0b 10 a0 e1                                      mov r1, fp
003e14c0  36 f7 ff eb                                      bl #0x3df1a0
003e14c4  00 00 57 e3                                      cmp r7, #0
003e14c8  4c 70 8d e5                                      str r7, [sp, #0x4c]
003e14cc  0f 00 00 1a                                      bne #0x3e1510
003e14d0  08 30 9d e5                                      ldr r3, [sp, #8]
003e14d4  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003e14d8  01 00 d2 e5                                      ldrb r0, [r2, #1]
003e14dc  01 10 53 e5                                      ldrb r1, [r3, #-1]
003e14e0  02 00 53 e1                                      cmp r3, r2
003e14e4  01 10 20 e0                                      eor r1, r0, r1
003e14e8  01 10 43 e5                                      strb r1, [r3, #-1]
003e14ec  01 00 d2 e5                                      ldrb r0, [r2, #1]
003e14f0  00 10 21 e0                                      eor r1, r1, r0
003e14f4  01 10 c2 e5                                      strb r1, [r2, #1]
003e14f8  01 00 53 e5                                      ldrb r0, [r3, #-1]
003e14fc  01 20 42 e2                                      sub r2, r2, #1
003e1500  00 10 21 e0                                      eor r1, r1, r0
003e1504  01 10 43 e5                                      strb r1, [r3, #-1]
003e1508  01 30 83 e2                                      add r3, r3, #1
003e150c  f1 ff ff 3a                                      blo #0x3e14d8
003e1510  50 00 9d e5                                      ldr r0, [sp, #0x50]
003e1514  00 10 a0 e3                                      mov r1, #0
003e1518  01 00 80 e2                                      add r0, r0, #1
003e151c  12 bc fc eb                                      bl #0x31056c
003e1520  00 40 a0 e1                                      mov r4, r0
003e1524  04 10 a0 e1                                      mov r1, r4
003e1528  50 20 9d e5                                      ldr r2, [sp, #0x50]
003e152c  00 30 a0 e3                                      mov r3, #0
003e1530  06 00 a0 e1                                      mov r0, r6
003e1534  c6 d7 fc eb                                      bl #0x317454
003e1538  50 20 9d e5                                      ldr r2, [sp, #0x50]
003e153c  09 30 98 e7                                      ldr r3, [r8, sb]
003e1540  00 10 a0 e3                                      mov r1, #0
003e1544  02 10 c4 e7                                      strb r1, [r4, r2]
003e1548  04 a0 93 e5                                      ldr sl, [r3, #4]
003e154c  08 20 93 e5                                      ldr r2, [r3, #8]
003e1550  02 00 5a e1                                      cmp sl, r2
003e1554  11 00 00 0a                                      beq #0x3e15a0
003e1558  00 40 8a e5                                      str r4, [sl]
003e155c  04 20 93 e5                                      ldr r2, [r3, #4]
003e1560  04 20 82 e2                                      add r2, r2, #4
003e1564  04 20 83 e5                                      str r2, [r3, #4]
003e1568  54 30 9d e5                                      ldr r3, [sp, #0x54]
003e156c  01 50 85 e2                                      add r5, r5, #1
003e1570  05 00 53 e1                                      cmp r3, r5
003e1574  cf ff ff 8a                                      bhi #0x3e14b8
003e1578  06 00 a0 e1                                      mov r0, r6
003e157c  10 d5 fc eb                                      bl #0x3169c4
003e1580  10 20 9d e5                                      ldr r2, [sp, #0x10]
003e1584  02 30 98 e7                                      ldr r3, [r8, r2]
003e1588  74 20 9d e5                                      ldr r2, [sp, #0x74]
003e158c  00 30 93 e5                                      ldr r3, [r3]
003e1590  03 00 52 e1                                      cmp r2, r3
003e1594  4a 00 00 1a                                      bne #0x3e16c4
003e1598  7c d0 8d e2                                      add sp, sp, #0x7c
003e159c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e15a0  00 20 93 e5                                      ldr r2, [r3]
003e15a4  0a 20 62 e0                                      rsb r2, r2, sl
003e15a8  42 21 a0 e1                                      asr r2, r2, #2
003e15ac  01 00 52 e3                                      cmp r2, #1
003e15b0  02 30 82 20                                      addhs r3, r2, r2
003e15b4  01 30 82 32                                      addlo r3, r2, #1
003e15b8  07 01 73 e3                                      cmn r3, #0xc0000001
003e15bc  31 00 00 9a                                      bls #0x3e1688
003e15c0  03 31 e0 e3                                      mvn r3, #0xc0000000
003e15c4  09 c0 98 e7                                      ldr ip, [r8, sb]
003e15c8  03 10 a0 e1                                      mov r1, r3
003e15cc  14 20 9d e5                                      ldr r2, [sp, #0x14]
003e15d0  08 00 8c e2                                      add r0, ip, #8
003e15d4  4c 30 8d e5                                      str r3, [sp, #0x4c]
003e15d8  04 c0 8d e5                                      str ip, [sp, #4]
003e15dc  68 80 fe eb                                      bl #0x381784
003e15e0  04 c0 9d e5                                      ldr ip, [sp, #4]
003e15e4  00 30 a0 e1                                      mov r3, r0
003e15e8  00 10 9c e5                                      ldr r1, [ip]
003e15ec  01 a0 5a e0                                      subs sl, sl, r1
003e15f0  00 a0 a0 01                                      moveq sl, r0
003e15f4  2c 00 00 1a                                      bne #0x3e16ac
003e15f8  09 20 98 e7                                      ldr r2, [r8, sb]
003e15fc  04 40 8a e4                                      str r4, [sl], #4
003e1600  00 00 92 e5                                      ldr r0, [r2]
003e1604  08 20 92 e5                                      ldr r2, [r2, #8]
003e1608  00 00 50 e3                                      cmp r0, #0
003e160c  06 00 00 0a                                      beq #0x3e162c
003e1610  02 20 60 e0                                      rsb r2, r0, r2
003e1614  03 10 c2 e3                                      bic r1, r2, #3
003e1618  80 00 51 e3                                      cmp r1, #0x80
003e161c  1e 00 00 8a                                      bhi #0x3e169c
003e1620  04 30 8d e5                                      str r3, [sp, #4]
003e1624  35 9e 0c eb                                      bl #0x708f00
003e1628  04 30 9d e5                                      ldr r3, [sp, #4]
003e162c  4c 10 9d e5                                      ldr r1, [sp, #0x4c]
003e1630  09 20 98 e7                                      ldr r2, [r8, sb]
003e1634  01 11 83 e0                                      add r1, r3, r1, lsl #2
003e1638  08 10 82 e5                                      str r1, [r2, #8]
003e163c  08 04 82 e8                                      stm r2, {r3, sl}
003e1640  c8 ff ff ea                                      b #0x3e1568
003e1644  02 30 84 e2                                      add r3, r4, #2
003e1648  01 40 84 e2                                      add r4, r4, #1
003e164c  01 10 d3 e5                                      ldrb r1, [r3, #1]
003e1650  01 20 54 e5                                      ldrb r2, [r4, #-1]
003e1654  04 00 53 e1                                      cmp r3, r4
003e1658  02 20 21 e0                                      eor r2, r1, r2
003e165c  01 20 44 e5                                      strb r2, [r4, #-1]
003e1660  01 10 d3 e5                                      ldrb r1, [r3, #1]
003e1664  01 20 22 e0                                      eor r2, r2, r1
003e1668  01 20 c3 e5                                      strb r2, [r3, #1]
003e166c  01 10 54 e5                                      ldrb r1, [r4, #-1]
003e1670  01 30 43 e2                                      sub r3, r3, #1
003e1674  01 20 22 e0                                      eor r2, r2, r1
003e1678  01 20 44 e5                                      strb r2, [r4, #-1]
003e167c  01 40 84 e2                                      add r4, r4, #1
003e1680  f1 ff ff 8a                                      bhi #0x3e164c
003e1684  7e ff ff ea                                      b #0x3e1484
003e1688  03 00 52 e1                                      cmp r2, r3
003e168c  cc ff ff 9a                                      bls #0x3e15c4
003e1690  ca ff ff ea                                      b #0x3e15c0
003e1694  69 bb fc eb                                      bl #0x310440
003e1698  58 ff ff ea                                      b #0x3e1400
003e169c  04 30 8d e5                                      str r3, [sp, #4]
003e16a0  66 bb fc eb                                      bl #0x310440
003e16a4  04 30 9d e5                                      ldr r3, [sp, #4]
003e16a8  df ff ff ea                                      b #0x3e162c
003e16ac  0a 20 a0 e1                                      mov r2, sl
003e16b0  04 00 8d e5                                      str r0, [sp, #4]
003e16b4  1f b2 fc eb                                      bl #0x30df38
003e16b8  04 30 9d e5                                      ldr r3, [sp, #4]
003e16bc  0a a0 80 e0                                      add sl, r0, sl
003e16c0  cc ff ff ea                                      b #0x3e15f8
003e16c4  11 b3 fc eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003e16c8  0c 37 5b 00 ac 40 00 00 84 08 00 00 a8 49 4e 00  .byte 0x0c, 0x37, 0x5b, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xa8, 0x49, 0x4e, 0x00
003e16d8  f4 37 00 00 80 11 00 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x80, 0x11, 0x00, 0x00

; FUNCTION 0x003e16e0, declared_size=120, range_size=120, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties17GetNameFromPropIDEi
; demangled: CharProperties::GetNameFromPropID(int)
; decoder-mode: arm
003e16e0  70 40 2d e9                                      push {r4, r5, r6, lr}
003e16e4  60 40 9f e5                                      ldr r4, [pc, #0x60]
003e16e8  60 60 9f e5                                      ldr r6, [pc, #0x60]
003e16ec  00 50 a0 e1                                      mov r5, r0
003e16f0  04 40 8f e0                                      add r4, pc, r4
003e16f4  06 30 94 e7                                      ldr r3, [r4, r6]
003e16f8  0c 00 93 e8                                      ldm r3, {r2, r3}
003e16fc  03 30 62 e0                                      rsb r3, r2, r3
003e1700  23 31 b0 e1                                      lsrs r3, r3, #2
003e1704  03 00 00 0a                                      beq #0x3e1718
003e1708  00 00 55 e3                                      cmp r5, #0
003e170c  06 00 00 aa                                      bge #0x3e172c
003e1710  00 00 a0 e3                                      mov r0, #0
003e1714  70 80 bd e8                                      pop {r4, r5, r6, pc}
003e1718  34 00 9f e5                                      ldr r0, [pc, #0x34]
003e171c  00 00 8f e0                                      add r0, pc, r0
003e1720  13 ff ff eb                                      bl #0x3e1374
003e1724  00 00 55 e3                                      cmp r5, #0
003e1728  f8 ff ff ba                                      blt #0x3e1710
003e172c  06 30 94 e7                                      ldr r3, [r4, r6]
003e1730  04 20 93 e5                                      ldr r2, [r3, #4]
003e1734  00 30 93 e5                                      ldr r3, [r3]
003e1738  02 20 63 e0                                      rsb r2, r3, r2
003e173c  42 01 55 e1                                      cmp r5, r2, asr #2
003e1740  f2 ff ff aa                                      bge #0x3e1710
003e1744  05 01 93 e7                                      ldr r0, [r3, r5, lsl #2]
003e1748  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e174c  a0 33 5b 00 80 11 00 00 5c 46 4e 00              .byte 0xa0, 0x33, 0x5b, 0x00, 0x80, 0x11, 0x00, 0x00, 0x5c, 0x46, 0x4e, 0x00

; FUNCTION 0x003e1758, declared_size=160, range_size=160, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties17GetPropIDFromNameEPKc
; demangled: CharProperties::GetPropIDFromName(char const*)
; decoder-mode: arm
003e1758  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e175c  88 50 9f e5                                      ldr r5, [pc, #0x88]
003e1760  88 60 9f e5                                      ldr r6, [pc, #0x88]
003e1764  00 40 a0 e1                                      mov r4, r0
003e1768  05 50 8f e0                                      add r5, pc, r5
003e176c  06 30 95 e7                                      ldr r3, [r5, r6]
003e1770  0c 00 93 e8                                      ldm r3, {r2, r3}
003e1774  03 30 62 e0                                      rsb r3, r2, r3
003e1778  23 31 b0 e1                                      lsrs r3, r3, #2
003e177c  14 00 00 0a                                      beq #0x3e17d4
003e1780  00 00 54 e3                                      cmp r4, #0
003e1784  10 00 00 0a                                      beq #0x3e17cc
003e1788  06 30 95 e7                                      ldr r3, [r5, r6]
003e178c  a0 00 93 e8                                      ldm r3, {r5, r7}
003e1790  07 70 65 e0                                      rsb r7, r5, r7
003e1794  47 71 b0 e1                                      asrs r7, r7, #2
003e1798  0b 00 00 0a                                      beq #0x3e17cc
003e179c  00 60 a0 e3                                      mov r6, #0
003e17a0  02 00 00 ea                                      b #0x3e17b0
003e17a4  01 60 86 e2                                      add r6, r6, #1
003e17a8  07 00 56 e1                                      cmp r6, r7
003e17ac  0c 00 00 0a                                      beq #0x3e17e4
003e17b0  06 11 95 e7                                      ldr r1, [r5, r6, lsl #2]
003e17b4  04 00 a0 e1                                      mov r0, r4
003e17b8  ca b3 fc eb                                      bl #0x30e6e8
003e17bc  00 00 50 e3                                      cmp r0, #0
003e17c0  f7 ff ff 1a                                      bne #0x3e17a4
003e17c4  06 00 a0 e1                                      mov r0, r6
003e17c8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e17cc  00 00 e0 e3                                      mvn r0, #0
003e17d0  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
003e17d4  18 00 9f e5                                      ldr r0, [pc, #0x18]
003e17d8  00 00 8f e0                                      add r0, pc, r0
003e17dc  e4 fe ff eb                                      bl #0x3e1374
003e17e0  e6 ff ff ea                                      b #0x3e1780
003e17e4  00 00 e0 e3                                      mvn r0, #0
003e17e8  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
003e17ec  28 33 5b 00 80 11 00 00 a0 45 4e 00              .byte 0x28, 0x33, 0x5b, 0x00, 0x80, 0x11, 0x00, 0x00, 0xa0, 0x45, 0x4e, 0x00

; FUNCTION 0x003e232c, declared_size=1012, range_size=1012, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties13PROPS_AddBuffEijijiPKc
; demangled: CharProperties::PROPS_AddBuff(int, unsigned int, int, unsigned int, int, char const*)
; decoder-mode: arm
003e232c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e2330  00 80 a0 e1                                      mov r8, r0
003e2334  1c ce 90 e5                                      ldr ip, [r0, #0xe1c]
003e2338  d4 03 9f e5                                      ldr r0, [pc, #0x3d4]
003e233c  94 d0 4d e2                                      sub sp, sp, #0x94
003e2340  e1 be 88 e2                                      add fp, r8, #0xe10
003e2344  00 00 8f e0                                      add r0, pc, r0
003e2348  00 00 5c e3                                      cmp ip, #0
003e234c  0c 00 8d e5                                      str r0, [sp, #0xc]
003e2350  24 10 8d e5                                      str r1, [sp, #0x24]
003e2354  10 20 8d e5                                      str r2, [sp, #0x10]
003e2358  03 70 a0 e1                                      mov r7, r3
003e235c  08 b0 8b e2                                      add fp, fp, #8
003e2360  b8 a0 9d e5                                      ldr sl, [sp, #0xb8]
003e2364  59 00 00 0a                                      beq #0x3e24d0
003e2368  0b 20 a0 e1                                      mov r2, fp
003e236c  00 00 00 ea                                      b #0x3e2374
003e2370  03 c0 a0 e1                                      mov ip, r3
003e2374  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e2378  03 00 51 e1                                      cmp r1, r3
003e237c  0c 30 9c c5                                      ldrgt r3, [ip, #0xc]
003e2380  08 30 9c d5                                      ldrle r3, [ip, #8]
003e2384  02 c0 a0 c1                                      movgt ip, r2
003e2388  0c 20 a0 e1                                      mov r2, ip
003e238c  00 00 53 e3                                      cmp r3, #0
003e2390  f6 ff ff 1a                                      bne #0x3e2370
003e2394  0c 00 5b e1                                      cmp fp, ip
003e2398  02 00 00 0a                                      beq #0x3e23a8
003e239c  10 30 9c e5                                      ldr r3, [ip, #0x10]
003e23a0  03 00 51 e1                                      cmp r1, r3
003e23a4  49 00 00 ba                                      blt #0x3e24d0
003e23a8  00 00 57 e3                                      cmp r7, #0
003e23ac  80 70 a0 d3                                      movle r7, #0x80
003e23b0  00 50 a0 e3                                      mov r5, #0
003e23b4  0c 00 5b e1                                      cmp fp, ip
003e23b8  8c 50 8d e5                                      str r5, [sp, #0x8c]
003e23bc  4a 00 00 0a                                      beq #0x3e24ec
003e23c0  6c e0 8d e2                                      add lr, sp, #0x6c
003e23c4  34 90 8c e2                                      add sb, ip, #0x34
003e23c8  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
003e23cc  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
003e23d0  44 00 8c e2                                      add r0, ip, #0x44
003e23d4  0e 10 a0 e1                                      mov r1, lr
003e23d8  24 f1 ff eb                                      bl #0x3de870
003e23dc  00 00 57 e1                                      cmp r7, r0
003e23e0  8d 00 00 0a                                      beq #0x3e261c
003e23e4  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003e23e8  00 00 53 e3                                      cmp r3, #0
003e23ec  3e 00 00 0a                                      beq #0x3e24ec
003e23f0  04 00 98 e5                                      ldr r0, [r8, #4]
003e23f4  88 13 93 e5                                      ldr r1, [r3, #0x388]
003e23f8  ed 0f 80 e2                                      add r0, r0, #0x3b4
003e23fc  b5 e3 ff eb                                      bl #0x3db2d8
003e2400  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003e2404  00 20 e0 e3                                      mvn r2, #0
003e2408  88 23 83 e5                                      str r2, [r3, #0x388]
003e240c  10 20 9d e5                                      ldr r2, [sp, #0x10]
003e2410  00 00 52 e3                                      cmp r2, #0
003e2414  8c 10 9d 05                                      ldreq r1, [sp, #0x8c]
003e2418  6c 00 00 1a                                      bne #0x3e25d0
003e241c  90 e3 91 e5                                      ldr lr, [r1, #0x390]
003e2420  04 30 9e e5                                      ldr r3, [lr, #4]
003e2424  00 00 53 e3                                      cmp r3, #0
003e2428  1f 00 00 0a                                      beq #0x3e24ac
003e242c  3c c0 8d e2                                      add ip, sp, #0x3c
003e2430  20 30 8e e2                                      add r3, lr, #0x20
003e2434  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003e2438  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e243c  30 00 8e e2                                      add r0, lr, #0x30
003e2440  0c 10 a0 e1                                      mov r1, ip
003e2444  09 f1 ff eb                                      bl #0x3de870
003e2448  01 00 50 e3                                      cmp r0, #1
003e244c  15 00 00 9a                                      bls #0x3e24a8
003e2450  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003e2454  90 33 93 e5                                      ldr r3, [r3, #0x390]
003e2458  04 00 93 e5                                      ldr r0, [r3, #4]
003e245c  3b c0 02 eb                                      bl #0x492550
003e2460  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
003e2464  00 30 90 e5                                      ldr r3, [r0]
003e2468  2c c0 8d e2                                      add ip, sp, #0x2c
003e246c  90 e3 92 e5                                      ldr lr, [r2, #0x390]
003e2470  1c 50 93 e5                                      ldr r5, [r3, #0x1c]
003e2474  00 40 a0 e1                                      mov r4, r0
003e2478  20 30 8e e2                                      add r3, lr, #0x20
003e247c  0f 00 93 e8                                      ldm r3, {r0, r1, r2, r3}
003e2480  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e2484  0c 10 a0 e1                                      mov r1, ip
003e2488  30 00 8e e2                                      add r0, lr, #0x30
003e248c  f7 f0 ff eb                                      bl #0x3de870
003e2490  00 30 a0 e3                                      mov r3, #0
003e2494  01 10 40 e2                                      sub r1, r0, #1
003e2498  00 30 8d e5                                      str r3, [sp]
003e249c  04 00 a0 e1                                      mov r0, r4
003e24a0  01 20 a0 e3                                      mov r2, #1
003e24a4  35 ff 2f e1                                      blx r5
003e24a8  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
003e24ac  08 00 a0 e1                                      mov r0, r8
003e24b0  b3 f2 ff eb                                      bl #0x3def84
003e24b4  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003e24b8  0a a4 a0 e1                                      lsl sl, sl, #8
003e24bc  b4 a2 83 e5                                      str sl, [r3, #0x2b4]
003e24c0  8c 00 9d e5                                      ldr r0, [sp, #0x8c]
003e24c4  48 ad 88 e5                                      str sl, [r8, #0xd48]
003e24c8  94 d0 8d e2                                      add sp, sp, #0x94
003e24cc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e24d0  00 00 57 e3                                      cmp r7, #0
003e24d4  0b c0 a0 e1                                      mov ip, fp
003e24d8  80 70 a0 d3                                      movle r7, #0x80
003e24dc  00 50 a0 e3                                      mov r5, #0
003e24e0  0c 00 5b e1                                      cmp fp, ip
003e24e4  8c 50 8d e5                                      str r5, [sp, #0x8c]
003e24e8  b4 ff ff 1a                                      bne #0x3e23c0
003e24ec  24 10 8d e2                                      add r1, sp, #0x24
003e24f0  0b 00 a0 e1                                      mov r0, fp
003e24f4  e8 fe ff eb                                      bl #0x3e209c
003e24f8  24 30 9d e5                                      ldr r3, [sp, #0x24]
003e24fc  00 50 a0 e1                                      mov r5, r0
003e2500  00 40 a0 e1                                      mov r4, r0
003e2504  c0 00 9d e5                                      ldr r0, [sp, #0xc0]
003e2508  08 30 85 e4                                      str r3, [r5], #8
003e250c  50 ae fc eb                                      bl #0x30de54
003e2510  c0 10 9d e5                                      ldr r1, [sp, #0xc0]
003e2514  00 20 81 e0                                      add r2, r1, r0
003e2518  05 00 a0 e1                                      mov r0, r5
003e251c  2f b9 fc eb                                      bl #0x3109e0
003e2520  04 20 94 e5                                      ldr r2, [r4, #4]
003e2524  bc c0 9d e5                                      ldr ip, [sp, #0xbc]
003e2528  01 30 72 e2                                      rsbs r3, r2, #1
003e252c  00 30 a0 33                                      movlo r3, #0
003e2530  01 00 7c e3                                      cmn ip, #1
003e2534  00 30 a0 03                                      moveq r3, #0
003e2538  00 00 53 e3                                      cmp r3, #0
003e253c  68 00 00 1a                                      bne #0x3e26e4
003e2540  4c c0 8d e2                                      add ip, sp, #0x4c
003e2544  20 50 84 e2                                      add r5, r4, #0x20
003e2548  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
003e254c  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
003e2550  0c 10 a0 e1                                      mov r1, ip
003e2554  30 00 84 e2                                      add r0, r4, #0x30
003e2558  c4 f0 ff eb                                      bl #0x3de870
003e255c  00 00 57 e1                                      cmp r7, r0
003e2560  2b 00 00 9a                                      bls #0x3e2614
003e2564  00 10 a0 e3                                      mov r1, #0
003e2568  e5 0f a0 e3                                      mov r0, #0x394
003e256c  ff b7 fc eb                                      bl #0x310570
003e2570  90 43 80 e5                                      str r4, [r0, #0x390]
003e2574  0c 10 9d e5                                      ldr r1, [sp, #0xc]
003e2578  98 31 9f e5                                      ldr r3, [pc, #0x198]
003e257c  00 20 e0 e3                                      mvn r2, #0
003e2580  03 30 91 e7                                      ldr r3, [r1, r3]
003e2584  08 30 83 e2                                      add r3, r3, #8
003e2588  00 30 80 e5                                      str r3, [r0]
003e258c  8c 00 8d e5                                      str r0, [sp, #0x8c]
003e2590  8c 83 80 e5                                      str r8, [r0, #0x38c]
003e2594  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003e2598  84 a3 83 e5                                      str sl, [r3, #0x384]
003e259c  8c 30 9d e5                                      ldr r3, [sp, #0x8c]
003e25a0  88 23 83 e5                                      str r2, [r3, #0x388]
003e25a4  38 20 94 e5                                      ldr r2, [r4, #0x38]
003e25a8  30 30 94 e5                                      ldr r3, [r4, #0x30]
003e25ac  04 20 42 e2                                      sub r2, r2, #4
003e25b0  02 00 53 e1                                      cmp r3, r2
003e25b4  52 00 00 0a                                      beq #0x3e2704
003e25b8  8c 20 9d e5                                      ldr r2, [sp, #0x8c]
003e25bc  00 20 83 e5                                      str r2, [r3]
003e25c0  30 30 94 e5                                      ldr r3, [r4, #0x30]
003e25c4  04 30 83 e2                                      add r3, r3, #4
003e25c8  30 30 84 e5                                      str r3, [r4, #0x30]
003e25cc  8e ff ff ea                                      b #0x3e240c
003e25d0  04 00 98 e5                                      ldr r0, [r8, #4]
003e25d4  8c 40 9d e5                                      ldr r4, [sp, #0x8c]
003e25d8  02 10 a0 e1                                      mov r1, r2
003e25dc  36 30 a0 e3                                      mov r3, #0x36
003e25e0  ed 0f 80 e2                                      add r0, r0, #0x3b4
003e25e4  00 20 a0 e3                                      mov r2, #0
003e25e8  00 40 8d e5                                      str r4, [sp]
003e25ec  0c e6 ff eb                                      bl #0x3dbe24
003e25f0  88 03 84 e5                                      str r0, [r4, #0x388]
003e25f4  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
003e25f8  88 33 91 e5                                      ldr r3, [r1, #0x388]
003e25fc  01 00 73 e3                                      cmn r3, #1
003e2600  85 ff ff 1a                                      bne #0x3e241c
003e2604  01 20 a0 e1                                      mov r2, r1
003e2608  08 00 a0 e1                                      mov r0, r8
003e260c  24 10 9d e5                                      ldr r1, [sp, #0x24]
003e2610  81 fa ff eb                                      bl #0x3e101c
003e2614  00 00 a0 e3                                      mov r0, #0
003e2618  aa ff ff ea                                      b #0x3e24c8
003e261c  88 10 8d e2                                      add r1, sp, #0x88
003e2620  84 20 8d e2                                      add r2, sp, #0x84
003e2624  80 30 8d e2                                      add r3, sp, #0x80
003e2628  7c c0 8d e2                                      add ip, sp, #0x7c
003e262c  5c 40 8d e2                                      add r4, sp, #0x5c
003e2630  14 10 8d e5                                      str r1, [sp, #0x14]
003e2634  18 20 8d e5                                      str r2, [sp, #0x18]
003e2638  1c 30 8d e5                                      str r3, [sp, #0x1c]
003e263c  20 c0 8d e5                                      str ip, [sp, #0x20]
003e2640  02 00 00 ea                                      b #0x3e2650
003e2644  01 50 85 e2                                      add r5, r5, #1
003e2648  05 00 57 e1                                      cmp r7, r5
003e264c  64 ff ff da                                      ble #0x3e23e4
003e2650  0f 00 99 e8                                      ldm sb, {r0, r1, r2, r3}
003e2654  0f 00 84 e8                                      stm r4, {r0, r1, r2, r3}
003e2658  05 10 a0 e1                                      mov r1, r5
003e265c  04 00 a0 e1                                      mov r0, r4
003e2660  93 f0 ff eb                                      bl #0x3de8b4
003e2664  5c 30 9d e5                                      ldr r3, [sp, #0x5c]
003e2668  00 60 93 e5                                      ldr r6, [r3]
003e266c  84 33 96 e5                                      ldr r3, [r6, #0x384]
003e2670  0a 00 53 e1                                      cmp r3, sl
003e2674  8c 60 8d 35                                      strlo r6, [sp, #0x8c]
003e2678  84 a3 86 35                                      strlo sl, [r6, #0x384]
003e267c  f0 ff ff 3a                                      blo #0x3e2644
003e2680  ef ff ff 1a                                      bne #0x3e2644
003e2684  88 13 96 e5                                      ldr r1, [r6, #0x388]
003e2688  14 20 9d e5                                      ldr r2, [sp, #0x14]
003e268c  18 30 9d e5                                      ldr r3, [sp, #0x18]
003e2690  01 00 71 e3                                      cmn r1, #1
003e2694  10 00 00 0a                                      beq #0x3e26dc
003e2698  8c 10 9d e5                                      ldr r1, [sp, #0x8c]
003e269c  00 00 51 e3                                      cmp r1, #0
003e26a0  0d 00 00 0a                                      beq #0x3e26dc
003e26a4  04 00 98 e5                                      ldr r0, [r8, #4]
003e26a8  88 13 91 e5                                      ldr r1, [r1, #0x388]
003e26ac  ed 0f 80 e2                                      add r0, r0, #0x3b4
003e26b0  23 e3 ff eb                                      bl #0x3db344
003e26b4  04 00 98 e5                                      ldr r0, [r8, #4]
003e26b8  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
003e26bc  20 30 9d e5                                      ldr r3, [sp, #0x20]
003e26c0  88 13 96 e5                                      ldr r1, [r6, #0x388]
003e26c4  ed 0f 80 e2                                      add r0, r0, #0x3b4
003e26c8  1d e3 ff eb                                      bl #0x3db344
003e26cc  80 30 9d e5                                      ldr r3, [sp, #0x80]
003e26d0  88 20 9d e5                                      ldr r2, [sp, #0x88]
003e26d4  03 00 52 e1                                      cmp r2, r3
003e26d8  d9 ff ff 2a                                      bhs #0x3e2644
003e26dc  8c 60 8d e5                                      str r6, [sp, #0x8c]
003e26e0  d7 ff ff ea                                      b #0x3e2644
003e26e4  0c 10 a0 e1                                      mov r1, ip
003e26e8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
003e26ec  0c c0 9d e5                                      ldr ip, [sp, #0xc]
003e26f0  04 20 98 e5                                      ldr r2, [r8, #4]
003e26f4  03 00 9c e7                                      ldr r0, [ip, r3]
003e26f8  4c cb 02 eb                                      bl #0x495430
003e26fc  04 00 84 e5                                      str r0, [r4, #4]
003e2700  8e ff ff ea                                      b #0x3e2540
003e2704  05 00 a0 e1                                      mov r0, r5
003e2708  8c 10 8d e2                                      add r1, sp, #0x8c
003e270c  a5 fe ff eb                                      bl #0x3e21a8
003e2710  3d ff ff ea                                      b #0x3e240c
; mapping-symbol data/literal pool
003e2714  4c 27 5b 00 8c 29 00 00 08 1b 00 00              .byte 0x4c, 0x27, 0x5b, 0x00, 0x8c, 0x29, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00

; FUNCTION 0x003e2720, declared_size=828, range_size=828, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties12PROPS_AddDotEiii
; demangled: CharProperties::PROPS_AddDot(int, int, int)
; decoder-mode: arm
003e2720  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e2724  c4 42 9f e5                                      ldr r4, [pc, #0x2c4]
003e2728  1c d0 4d e2                                      sub sp, sp, #0x1c
003e272c  00 00 51 e3                                      cmp r1, #0
003e2730  04 40 8f e0                                      add r4, pc, r4
003e2734  14 10 8d e5                                      str r1, [sp, #0x14]
003e2738  00 70 a0 e1                                      mov r7, r0
003e273c  02 60 a0 e1                                      mov r6, r2
003e2740  03 50 a0 e1                                      mov r5, r3
003e2744  50 00 00 da                                      ble #0x3e288c
003e2748  00 00 56 e3                                      cmp r6, #0
003e274c  38 00 00 ba                                      blt #0x3e2834
003e2750  9c 32 9f e5                                      ldr r3, [pc, #0x29c]
003e2754  03 30 94 e7                                      ldr r3, [r4, r3]
003e2758  00 a0 93 e5                                      ldr sl, [r3]
003e275c  00 00 5a e3                                      cmp sl, #0
003e2760  31 00 00 0a                                      beq #0x3e282c
003e2764  8c 32 9f e5                                      ldr r3, [pc, #0x28c]
003e2768  8c b2 9f e5                                      ldr fp, [pc, #0x28c]
003e276c  00 80 a0 e3                                      mov r8, #0
003e2770  03 30 94 e7                                      ldr r3, [r4, r3]
003e2774  0b b0 8f e0                                      add fp, pc, fp
003e2778  00 90 93 e5                                      ldr sb, [r3]
003e277c  02 00 00 ea                                      b #0x3e278c
003e2780  01 80 88 e2                                      add r8, r8, #1
003e2784  0a 00 58 e1                                      cmp r8, sl
003e2788  27 00 00 0a                                      beq #0x3e282c
003e278c  08 11 99 e7                                      ldr r1, [sb, r8, lsl #2]
003e2790  0b 00 a0 e1                                      mov r0, fp
003e2794  e0 ae fc eb                                      bl #0x30e31c
003e2798  00 00 50 e3                                      cmp r0, #0
003e279c  f7 ff ff 1a                                      bne #0x3e2780
003e27a0  58 32 9f e5                                      ldr r3, [pc, #0x258]
003e27a4  05 80 88 e0                                      add r8, r8, r5
003e27a8  10 80 8d e5                                      str r8, [sp, #0x10]
003e27ac  03 30 94 e7                                      ldr r3, [r4, r3]
003e27b0  00 a0 93 e5                                      ldr sl, [r3]
003e27b4  00 00 5a e3                                      cmp sl, #0
003e27b8  19 00 00 0a                                      beq #0x3e2824
003e27bc  40 32 9f e5                                      ldr r3, [pc, #0x240]
003e27c0  40 b2 9f e5                                      ldr fp, [pc, #0x240]
003e27c4  00 80 a0 e3                                      mov r8, #0
003e27c8  03 30 94 e7                                      ldr r3, [r4, r3]
003e27cc  0b b0 8f e0                                      add fp, pc, fp
003e27d0  00 90 93 e5                                      ldr sb, [r3]
003e27d4  02 00 00 ea                                      b #0x3e27e4
003e27d8  01 80 88 e2                                      add r8, r8, #1
003e27dc  0a 00 58 e1                                      cmp r8, sl
003e27e0  0f 00 00 0a                                      beq #0x3e2824
003e27e4  08 11 99 e7                                      ldr r1, [sb, r8, lsl #2]
003e27e8  0b 00 a0 e1                                      mov r0, fp
003e27ec  ca ae fc eb                                      bl #0x30e31c
003e27f0  00 00 50 e3                                      cmp r0, #0
003e27f4  f7 ff ff 1a                                      bne #0x3e27d8
003e27f8  01 30 85 e2                                      add r3, r5, #1
003e27fc  05 80 88 e0                                      add r8, r8, r5
003e2800  05 00 53 e3                                      cmp r3, #5
003e2804  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003e2808  35 00 00 ea                                      b #0x3e28e4
003e280c  4f 00 00 ea                                      b #0x3e2950
003e2810  51 00 00 ea                                      b #0x3e295c
003e2814  53 00 00 ea                                      b #0x3e2968
003e2818  55 00 00 ea                                      b #0x3e2974
003e281c  57 00 00 ea                                      b #0x3e2980
003e2820  59 00 00 ea                                      b #0x3e298c
003e2824  00 80 e0 e3                                      mvn r8, #0
003e2828  f2 ff ff ea                                      b #0x3e27f8
003e282c  00 80 e0 e3                                      mvn r8, #0
003e2830  da ff ff ea                                      b #0x3e27a0
003e2834  d0 31 9f e5                                      ldr r3, [pc, #0x1d0]
003e2838  03 30 94 e7                                      ldr r3, [r4, r3]
003e283c  00 30 93 e5                                      ldr r3, [r3]
003e2840  02 00 53 e3                                      cmp r3, #2
003e2844  00 30 a0 03                                      moveq r3, #0
003e2848  00 30 83 05                                      streq r3, [r3]
003e284c  bf ff ff 0a                                      beq #0x3e2750
003e2850  01 00 53 e3                                      cmp r3, #1
003e2854  bd ff ff 1a                                      bne #0x3e2750
003e2858  b0 01 9f e5                                      ldr r0, [pc, #0x1b0]
003e285c  b0 11 9f e5                                      ldr r1, [pc, #0x1b0]
003e2860  b0 21 9f e5                                      ldr r2, [pc, #0x1b0]
003e2864  00 00 94 e7                                      ldr r0, [r4, r0]
003e2868  ac 31 9f e5                                      ldr r3, [pc, #0x1ac]
003e286c  36 c4 00 e3                                      movw ip, #0x436
003e2870  01 10 8f e0                                      add r1, pc, r1
003e2874  02 20 8f e0                                      add r2, pc, r2
003e2878  03 30 8f e0                                      add r3, pc, r3
003e287c  a8 00 80 e2                                      add r0, r0, #0xa8
003e2880  00 c0 8d e5                                      str ip, [sp]
003e2884  de ad fc eb                                      bl #0x30e004
003e2888  b0 ff ff ea                                      b #0x3e2750
003e288c  78 31 9f e5                                      ldr r3, [pc, #0x178]
003e2890  03 30 94 e7                                      ldr r3, [r4, r3]
003e2894  00 30 93 e5                                      ldr r3, [r3]
003e2898  02 00 53 e3                                      cmp r3, #2
003e289c  00 30 a0 03                                      moveq r3, #0
003e28a0  00 30 83 05                                      streq r3, [r3]
003e28a4  a7 ff ff 0a                                      beq #0x3e2748
003e28a8  01 00 53 e3                                      cmp r3, #1
003e28ac  a5 ff ff 1a                                      bne #0x3e2748
003e28b0  58 01 9f e5                                      ldr r0, [pc, #0x158]
003e28b4  64 11 9f e5                                      ldr r1, [pc, #0x164]
003e28b8  64 21 9f e5                                      ldr r2, [pc, #0x164]
003e28bc  00 00 94 e7                                      ldr r0, [r4, r0]
003e28c0  60 31 9f e5                                      ldr r3, [pc, #0x160]
003e28c4  35 c4 00 e3                                      movw ip, #0x435
003e28c8  01 10 8f e0                                      add r1, pc, r1
003e28cc  02 20 8f e0                                      add r2, pc, r2
003e28d0  03 30 8f e0                                      add r3, pc, r3
003e28d4  a8 00 80 e2                                      add r0, r0, #0xa8
003e28d8  00 c0 8d e5                                      str ip, [sp]
003e28dc  c8 ad fc eb                                      bl #0x30e004
003e28e0  98 ff ff ea                                      b #0x3e2748
003e28e4  20 31 9f e5                                      ldr r3, [pc, #0x120]
003e28e8  03 30 94 e7                                      ldr r3, [r4, r3]
003e28ec  00 30 93 e5                                      ldr r3, [r3]
003e28f0  02 00 53 e3                                      cmp r3, #2
003e28f4  29 00 00 0a                                      beq #0x3e29a0
003e28f8  01 00 53 e3                                      cmp r3, #1
003e28fc  2c 00 00 0a                                      beq #0x3e29b4
003e2900  24 c1 9f e5                                      ldr ip, [pc, #0x124]
003e2904  0c c0 8f e0                                      add ip, pc, ip
003e2908  10 10 9d e5                                      ldr r1, [sp, #0x10]
003e290c  14 20 9d e5                                      ldr r2, [sp, #0x14]
003e2910  07 00 a0 e1                                      mov r0, r7
003e2914  01 30 a0 e3                                      mov r3, #1
003e2918  40 11 8d e8                                      stm sp, {r6, r8, ip}
003e291c  82 fe ff eb                                      bl #0x3e232c
003e2920  00 10 50 e2                                      subs r1, r0, #0
003e2924  1b 00 00 0a                                      beq #0x3e2998
003e2928  7f 50 85 e2                                      add r5, r5, #0x7f
003e292c  07 00 a0 e1                                      mov r0, r7
003e2930  06 30 a0 e1                                      mov r3, r6
003e2934  05 20 a0 e1                                      mov r2, r5
003e2938  d8 f0 ff eb                                      bl #0x3deca0
003e293c  07 00 a0 e1                                      mov r0, r7
003e2940  05 10 a0 e1                                      mov r1, r5
003e2944  1c d0 8d e2                                      add sp, sp, #0x1c
003e2948  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e294c  43 f5 ff ea                                      b #0x3dfe60
003e2950  d8 c0 9f e5                                      ldr ip, [pc, #0xd8]
003e2954  0c c0 8f e0                                      add ip, pc, ip
003e2958  ea ff ff ea                                      b #0x3e2908
003e295c  d0 c0 9f e5                                      ldr ip, [pc, #0xd0]
003e2960  0c c0 8f e0                                      add ip, pc, ip
003e2964  e7 ff ff ea                                      b #0x3e2908
003e2968  c8 c0 9f e5                                      ldr ip, [pc, #0xc8]
003e296c  0c c0 8f e0                                      add ip, pc, ip
003e2970  e4 ff ff ea                                      b #0x3e2908
003e2974  c0 c0 9f e5                                      ldr ip, [pc, #0xc0]
003e2978  0c c0 8f e0                                      add ip, pc, ip
003e297c  e1 ff ff ea                                      b #0x3e2908
003e2980  b8 c0 9f e5                                      ldr ip, [pc, #0xb8]
003e2984  0c c0 8f e0                                      add ip, pc, ip
003e2988  de ff ff ea                                      b #0x3e2908
003e298c  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
003e2990  0c c0 8f e0                                      add ip, pc, ip
003e2994  db ff ff ea                                      b #0x3e2908
003e2998  1c d0 8d e2                                      add sp, sp, #0x1c
003e299c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e29a0  a0 c0 9f e5                                      ldr ip, [pc, #0xa0]
003e29a4  00 30 a0 e3                                      mov r3, #0
003e29a8  00 30 83 e5                                      str r3, [r3]
003e29ac  0c c0 8f e0                                      add ip, pc, ip
003e29b0  d4 ff ff ea                                      b #0x3e2908
003e29b4  54 00 9f e5                                      ldr r0, [pc, #0x54]
003e29b8  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
003e29bc  8c 20 9f e5                                      ldr r2, [pc, #0x8c]
003e29c0  00 00 94 e7                                      ldr r0, [r4, r0]
003e29c4  88 30 9f e5                                      ldr r3, [pc, #0x88]
003e29c8  45 c4 00 e3                                      movw ip, #0x445
003e29cc  01 10 8f e0                                      add r1, pc, r1
003e29d0  a8 00 80 e2                                      add r0, r0, #0xa8
003e29d4  02 20 8f e0                                      add r2, pc, r2
003e29d8  03 30 8f e0                                      add r3, pc, r3
003e29dc  00 c0 8d e5                                      str ip, [sp]
003e29e0  87 ad fc eb                                      bl #0x30e004
003e29e4  6c c0 9f e5                                      ldr ip, [pc, #0x6c]
003e29e8  0c c0 8f e0                                      add ip, pc, ip
003e29ec  c5 ff ff ea                                      b #0x3e2908
; mapping-symbol data/literal pool
003e29f0  60 23 5b 00 68 35 00 00 90 2a 00 00 54 36 4e 00  .byte 0x60, 0x23, 0x5b, 0x00, 0x68, 0x35, 0x00, 0x00, 0x90, 0x2a, 0x00, 0x00, 0x54, 0x36, 0x4e, 0x00
003e2a00  c4 06 00 00 94 12 00 00 fc 35 4e 00 c0 39 00 00  .byte 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00, 0xfc, 0x35, 0x4e, 0x00, 0xc0, 0x39, 0x00, 0x00
003e2a10  c0 19 00 00 68 bb 4d 00 44 35 4e 00 38 34 4e 00  .byte 0xc0, 0x19, 0x00, 0x00, 0x68, 0xbb, 0x4d, 0x00, 0x44, 0x35, 0x4e, 0x00, 0x38, 0x34, 0x4e, 0x00
003e2a20  10 bb 4d 00 dc 34 4e 00 e0 33 4e 00 34 35 4e 00  .byte 0x10, 0xbb, 0x4d, 0x00, 0xdc, 0x34, 0x4e, 0x00, 0xe0, 0x33, 0x4e, 0x00, 0x34, 0x35, 0x4e, 0x00
003e2a30  9c 34 4e 00 80 34 4e 00 94 34 4e 00 98 34 4e 00  .byte 0x9c, 0x34, 0x4e, 0x00, 0x80, 0x34, 0x4e, 0x00, 0x94, 0x34, 0x4e, 0x00, 0x98, 0x34, 0x4e, 0x00
003e2a40  9c 34 4e 00 a0 34 4e 00 8c 34 4e 00 0c ba 4d 00  .byte 0x9c, 0x34, 0x4e, 0x00, 0xa0, 0x34, 0x4e, 0x00, 0x8c, 0x34, 0x4e, 0x00, 0x0c, 0xba, 0x4d, 0x00
003e2a50  74 34 4e 00 d8 32 4e 00 50 34 4e 00              .byte 0x74, 0x34, 0x4e, 0x00, 0xd8, 0x32, 0x4e, 0x00, 0x50, 0x34, 0x4e, 0x00

; FUNCTION 0x003e2a5c, declared_size=368, range_size=368, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties16PROPS_DebuffSlowEj
; demangled: CharProperties::PROPS_DebuffSlow(unsigned int)
; decoder-mode: arm
003e2a5c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e2a60  00 50 a0 e1                                      mov r5, r0
003e2a64  14 d0 4d e2                                      sub sp, sp, #0x14
003e2a68  04 00 90 e5                                      ldr r0, [r0, #4]
003e2a6c  01 a0 a0 e1                                      mov sl, r1
003e2a70  b8 01 ff eb                                      bl #0x3a3158
003e2a74  30 71 9f e5                                      ldr r7, [pc, #0x130]
003e2a78  00 40 50 e2                                      subs r4, r0, #0
003e2a7c  07 70 8f e0                                      add r7, pc, r7
003e2a80  45 00 00 1a                                      bne #0x3e2b9c
003e2a84  00 00 5a e3                                      cmp sl, #0
003e2a88  43 00 00 0a                                      beq #0x3e2b9c
003e2a8c  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
003e2a90  03 30 97 e7                                      ldr r3, [r7, r3]
003e2a94  00 80 93 e5                                      ldr r8, [r3]
003e2a98  00 00 58 e3                                      cmp r8, #0
003e2a9c  3e 00 00 0a                                      beq #0x3e2b9c
003e2aa0  0c 31 9f e5                                      ldr r3, [pc, #0x10c]
003e2aa4  0c b1 9f e5                                      ldr fp, [pc, #0x10c]
003e2aa8  03 30 97 e7                                      ldr r3, [r7, r3]
003e2aac  0b b0 8f e0                                      add fp, pc, fp
003e2ab0  00 90 93 e5                                      ldr sb, [r3]
003e2ab4  02 00 00 ea                                      b #0x3e2ac4
003e2ab8  01 40 84 e2                                      add r4, r4, #1
003e2abc  08 00 54 e1                                      cmp r4, r8
003e2ac0  35 00 00 0a                                      beq #0x3e2b9c
003e2ac4  04 11 99 e7                                      ldr r1, [sb, r4, lsl #2]
003e2ac8  0b 00 a0 e1                                      mov r0, fp
003e2acc  12 ae fc eb                                      bl #0x30e31c
003e2ad0  00 00 50 e3                                      cmp r0, #0
003e2ad4  f7 ff ff 1a                                      bne #0x3e2ab8
003e2ad8  01 00 74 e3                                      cmn r4, #1
003e2adc  2e 00 00 0a                                      beq #0x3e2b9c
003e2ae0  d4 30 9f e5                                      ldr r3, [pc, #0xd4]
003e2ae4  03 30 97 e7                                      ldr r3, [r7, r3]
003e2ae8  00 80 93 e5                                      ldr r8, [r3]
003e2aec  00 00 58 e3                                      cmp r8, #0
003e2af0  2b 00 00 0a                                      beq #0x3e2ba4
003e2af4  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
003e2af8  c4 90 9f e5                                      ldr sb, [pc, #0xc4]
003e2afc  00 60 a0 e1                                      mov r6, r0
003e2b00  03 30 97 e7                                      ldr r3, [r7, r3]
003e2b04  09 90 8f e0                                      add sb, pc, sb
003e2b08  00 70 93 e5                                      ldr r7, [r3]
003e2b0c  02 00 00 ea                                      b #0x3e2b1c
003e2b10  01 60 86 e2                                      add r6, r6, #1
003e2b14  08 00 56 e1                                      cmp r6, r8
003e2b18  21 00 00 0a                                      beq #0x3e2ba4
003e2b1c  06 11 97 e7                                      ldr r1, [r7, r6, lsl #2]
003e2b20  09 00 a0 e1                                      mov r0, sb
003e2b24  fc ad fc eb                                      bl #0x30e31c
003e2b28  00 00 50 e3                                      cmp r0, #0
003e2b2c  f7 ff ff 1a                                      bne #0x3e2b10
003e2b30  06 e0 a0 e1                                      mov lr, r6
003e2b34  8c c0 9f e5                                      ldr ip, [pc, #0x8c]
003e2b38  0a 20 a0 e1                                      mov r2, sl
003e2b3c  05 00 a0 e1                                      mov r0, r5
003e2b40  0c c0 8f e0                                      add ip, pc, ip
003e2b44  04 10 a0 e1                                      mov r1, r4
003e2b48  01 30 a0 e3                                      mov r3, #1
003e2b4c  00 60 a0 e3                                      mov r6, #0
003e2b50  40 40 8d e8                                      stm sp, {r6, lr}
003e2b54  08 c0 8d e5                                      str ip, [sp, #8]
003e2b58  f3 fd ff eb                                      bl #0x3e232c
003e2b5c  00 20 50 e2                                      subs r2, r0, #0
003e2b60  0d 00 00 0a                                      beq #0x3e2b9c
003e2b64  04 10 a0 e1                                      mov r1, r4
003e2b68  05 00 a0 e1                                      mov r0, r5
003e2b6c  e8 f1 ff eb                                      bl #0x3df314
003e2b70  05 00 a0 e1                                      mov r0, r5
003e2b74  30 10 a0 e3                                      mov r1, #0x30
003e2b78  b8 f4 ff eb                                      bl #0x3dfe60
003e2b7c  05 00 a0 e1                                      mov r0, r5
003e2b80  2f 10 a0 e3                                      mov r1, #0x2f
003e2b84  b5 f4 ff eb                                      bl #0x3dfe60
003e2b88  05 00 a0 e1                                      mov r0, r5
003e2b8c  2e 10 a0 e3                                      mov r1, #0x2e
003e2b90  14 d0 8d e2                                      add sp, sp, #0x14
003e2b94  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e2b98  b0 f4 ff ea                                      b #0x3dfe60
003e2b9c  14 d0 8d e2                                      add sp, sp, #0x14
003e2ba0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003e2ba4  00 e0 e0 e3                                      mvn lr, #0
003e2ba8  e1 ff ff ea                                      b #0x3e2b34
; mapping-symbol data/literal pool
003e2bac  14 20 5b 00 68 35 00 00 90 2a 00 00 c4 33 4e 00  .byte 0x14, 0x20, 0x5b, 0x00, 0x68, 0x35, 0x00, 0x00, 0x90, 0x2a, 0x00, 0x00, 0xc4, 0x33, 0x4e, 0x00
003e2bbc  c4 06 00 00 94 12 00 00 7c 33 4e 00 58 33 4e 00  .byte 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00, 0x7c, 0x33, 0x4e, 0x00, 0x58, 0x33, 0x4e, 0x00

; FUNCTION 0x003e2bcc, declared_size=4, range_size=4, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties17_ApplyGroupOnlyIfERN7Structs19CharacterPropertiesEPNS0_9ClassFuncE
; demangled: CharProperties::_ApplyGroupOnlyIf(Structs::CharacterProperties&, Structs::ClassFunc*)
; decoder-mode: arm
003e2bcc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003e2bd0, declared_size=12, range_size=12, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties7_SetOIDERN7Structs19CharacterPropertiesEPNS0_9ClassFuncE
; demangled: CharProperties::_SetOID(Structs::CharacterProperties&, Structs::ClassFunc*)
; decoder-mode: arm
003e2bd0  0c 30 92 e5                                      ldr r3, [r2, #0xc]
003e2bd4  04 20 92 e5                                      ldr r2, [r2, #4]
003e2bd8  30 f0 ff ea                                      b #0x3deca0

; FUNCTION 0x003e2bdc, declared_size=52, range_size=52, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties9_AddValueERN7Structs19CharacterPropertiesEPNS0_9ClassFuncE
; demangled: CharProperties::_AddValue(Structs::CharacterProperties&, Structs::ClassFunc*)
; decoder-mode: arm
003e2bdc  70 40 2d e9                                      push {r4, r5, r6, lr}
003e2be0  02 50 a0 e1                                      mov r5, r2
003e2be4  04 20 92 e5                                      ldr r2, [r2, #4]
003e2be8  00 40 a0 e1                                      mov r4, r0
003e2bec  01 60 a0 e1                                      mov r6, r1
003e2bf0  6f f0 ff eb                                      bl #0x3dedb4
003e2bf4  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003e2bf8  04 20 95 e5                                      ldr r2, [r5, #4]
003e2bfc  06 10 a0 e1                                      mov r1, r6
003e2c00  03 30 80 e0                                      add r3, r0, r3
003e2c04  04 00 a0 e1                                      mov r0, r4
003e2c08  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e2c0c  23 f0 ff ea                                      b #0x3deca0

; FUNCTION 0x003e2c10, declared_size=104, range_size=104, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties27_ScaleWithPercentageForBuffERN7Structs19CharacterPropertiesEPNS0_9ClassFuncEb
; demangled: CharProperties::_ScaleWithPercentageForBuff(Structs::CharacterProperties&, Structs::ClassFunc*, bool)
; decoder-mode: arm
003e2c10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e2c14  02 40 a0 e1                                      mov r4, r2
003e2c18  0c 20 92 e5                                      ldr r2, [r2, #0xc]
003e2c1c  03 80 a0 e1                                      mov r8, r3
003e2c20  00 50 a0 e1                                      mov r5, r0
003e2c24  01 60 a0 e1                                      mov r6, r1
003e2c28  61 f0 ff eb                                      bl #0x3dedb4
003e2c2c  06 10 a0 e1                                      mov r1, r6
003e2c30  00 70 a0 e1                                      mov r7, r0
003e2c34  04 20 94 e5                                      ldr r2, [r4, #4]
003e2c38  05 00 a0 e1                                      mov r0, r5
003e2c3c  5c f0 ff eb                                      bl #0x3dedb4
003e2c40  00 00 58 e3                                      cmp r8, #0
003e2c44  04 00 00 0a                                      beq #0x3e2c5c
003e2c48  a9 1e 85 e2                                      add r1, r5, #0xa90
003e2c4c  04 10 81 e2                                      add r1, r1, #4
003e2c50  05 00 a0 e1                                      mov r0, r5
003e2c54  04 20 94 e5                                      ldr r2, [r4, #4]
003e2c58  55 f0 ff eb                                      bl #0x3dedb4
003e2c5c  97 00 03 e0                                      mul r3, r7, r0
003e2c60  04 20 94 e5                                      ldr r2, [r4, #4]
003e2c64  05 00 a0 e1                                      mov r0, r5
003e2c68  06 10 a0 e1                                      mov r1, r6
003e2c6c  43 34 a0 e1                                      asr r3, r3, #8
003e2c70  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e2c74  09 f0 ff ea                                      b #0x3deca0

; FUNCTION 0x003e2c78, declared_size=72, range_size=72, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties20_ScaleWithPercentageERN7Structs19CharacterPropertiesEPNS0_9ClassFuncEb
; demangled: CharProperties::_ScaleWithPercentage(Structs::CharacterProperties&, Structs::ClassFunc*, bool)
; decoder-mode: arm
003e2c78  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e2c7c  02 40 a0 e1                                      mov r4, r2
003e2c80  0c 20 92 e5                                      ldr r2, [r2, #0xc]
003e2c84  00 50 a0 e1                                      mov r5, r0
003e2c88  01 60 a0 e1                                      mov r6, r1
003e2c8c  48 f0 ff eb                                      bl #0x3dedb4
003e2c90  06 10 a0 e1                                      mov r1, r6
003e2c94  00 70 a0 e1                                      mov r7, r0
003e2c98  04 20 94 e5                                      ldr r2, [r4, #4]
003e2c9c  05 00 a0 e1                                      mov r0, r5
003e2ca0  43 f0 ff eb                                      bl #0x3dedb4
003e2ca4  97 00 03 e0                                      mul r3, r7, r0
003e2ca8  04 20 94 e5                                      ldr r2, [r4, #4]
003e2cac  06 10 a0 e1                                      mov r1, r6
003e2cb0  05 00 a0 e1                                      mov r0, r5
003e2cb4  43 34 a0 e1                                      asr r3, r3, #8
003e2cb8  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e2cbc  f7 ef ff ea                                      b #0x3deca0

; FUNCTION 0x003e2cc0, declared_size=68, range_size=68, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties13_AddOtherPropERN7Structs19CharacterPropertiesEPNS0_9ClassFuncE
; demangled: CharProperties::_AddOtherProp(Structs::CharacterProperties&, Structs::ClassFunc*)
; decoder-mode: arm
003e2cc0  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e2cc4  02 40 a0 e1                                      mov r4, r2
003e2cc8  04 20 92 e5                                      ldr r2, [r2, #4]
003e2ccc  00 50 a0 e1                                      mov r5, r0
003e2cd0  01 60 a0 e1                                      mov r6, r1
003e2cd4  36 f0 ff eb                                      bl #0x3dedb4
003e2cd8  06 10 a0 e1                                      mov r1, r6
003e2cdc  00 70 a0 e1                                      mov r7, r0
003e2ce0  0c 20 94 e5                                      ldr r2, [r4, #0xc]
003e2ce4  05 00 a0 e1                                      mov r0, r5
003e2ce8  31 f0 ff eb                                      bl #0x3dedb4
003e2cec  04 20 94 e5                                      ldr r2, [r4, #4]
003e2cf0  07 30 80 e0                                      add r3, r0, r7
003e2cf4  06 10 a0 e1                                      mov r1, r6
003e2cf8  05 00 a0 e1                                      mov r0, r5
003e2cfc  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e2d00  e6 ef ff ea                                      b #0x3deca0

; FUNCTION 0x003e2d04, declared_size=72, range_size=72, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties7_MinMaxERN7Structs19CharacterPropertiesEPNS0_9ClassFuncE
; demangled: CharProperties::_MinMax(Structs::CharacterProperties&, Structs::ClassFunc*)
; decoder-mode: arm
003e2d04  70 40 2d e9                                      push {r4, r5, r6, lr}
003e2d08  02 40 a0 e1                                      mov r4, r2
003e2d0c  04 20 92 e5                                      ldr r2, [r2, #4]
003e2d10  00 60 a0 e1                                      mov r6, r0
003e2d14  01 50 a0 e1                                      mov r5, r1
003e2d18  25 f0 ff eb                                      bl #0x3dedb4
003e2d1c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
003e2d20  03 00 50 e1                                      cmp r0, r3
003e2d24  03 00 00 ba                                      blt #0x3e2d38
003e2d28  10 30 94 e5                                      ldr r3, [r4, #0x10]
003e2d2c  03 00 50 e1                                      cmp r0, r3
003e2d30  00 30 a0 b1                                      movlt r3, r0
003e2d34  03 30 a0 a1                                      movge r3, r3
003e2d38  04 20 94 e5                                      ldr r2, [r4, #4]
003e2d3c  06 00 a0 e1                                      mov r0, r6
003e2d40  05 10 a0 e1                                      mov r1, r5
003e2d44  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e2d48  d4 ef ff ea                                      b #0x3deca0

; FUNCTION 0x003e2d4c, declared_size=212, range_size=212, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties28_LinearWithPropPlusBaseValueERN7Structs19CharacterPropertiesEPNS0_9ClassFuncEb
; demangled: CharProperties::_LinearWithPropPlusBaseValue(Structs::CharacterProperties&, Structs::ClassFunc*, bool)
; decoder-mode: arm
003e2d4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e2d50  02 40 a0 e1                                      mov r4, r2
003e2d54  0c 60 92 e5                                      ldr r6, [r2, #0xc]
003e2d58  04 d0 4d e2                                      sub sp, sp, #4
003e2d5c  10 20 92 e5                                      ldr r2, [r2, #0x10]
003e2d60  03 90 a0 e1                                      mov sb, r3
003e2d64  00 70 a0 e1                                      mov r7, r0
003e2d68  01 50 a0 e1                                      mov r5, r1
003e2d6c  10 f0 ff eb                                      bl #0x3dedb4
003e2d70  a0 80 9f e5                                      ldr r8, [pc, #0xa0]
003e2d74  a6 3f e0 e3                                      mvn r3, #0x298
003e2d78  01 30 43 e2                                      sub r3, r3, #1
003e2d7c  03 00 56 e1                                      cmp r6, r3
003e2d80  08 80 8f e0                                      add r8, pc, r8
003e2d84  00 a0 a0 e1                                      mov sl, r0
003e2d88  14 b0 94 e5                                      ldr fp, [r4, #0x14]
003e2d8c  1b 00 00 0a                                      beq #0x3e2e00
003e2d90  84 30 9f e5                                      ldr r3, [pc, #0x84]
003e2d94  03 30 98 e7                                      ldr r3, [r8, r3]
003e2d98  03 00 55 e1                                      cmp r5, r3
003e2d9c  14 00 00 0a                                      beq #0x3e2df4
003e2da0  00 00 59 e3                                      cmp sb, #0
003e2da4  0d 00 00 0a                                      beq #0x3e2de0
003e2da8  a9 1e 87 e2                                      add r1, r7, #0xa90
003e2dac  04 10 81 e2                                      add r1, r1, #4
003e2db0  07 00 a0 e1                                      mov r0, r7
003e2db4  10 20 94 e5                                      ldr r2, [r4, #0x10]
003e2db8  fd ef ff eb                                      bl #0x3dedb4
003e2dbc  00 a0 a0 e1                                      mov sl, r0
003e2dc0  4a 34 a0 e1                                      asr r3, sl, #8
003e2dc4  9b 63 23 e0                                      mla r3, fp, r3, r6
003e2dc8  04 20 94 e5                                      ldr r2, [r4, #4]
003e2dcc  07 00 a0 e1                                      mov r0, r7
003e2dd0  05 10 a0 e1                                      mov r1, r5
003e2dd4  04 d0 8d e2                                      add sp, sp, #4
003e2dd8  f0 4f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003e2ddc  af ef ff ea                                      b #0x3deca0
003e2de0  07 00 a0 e1                                      mov r0, r7
003e2de4  10 10 94 e5                                      ldr r1, [r4, #0x10]
003e2de8  1c f4 ff eb                                      bl #0x3dfe60
003e2dec  00 a0 a0 e1                                      mov sl, r0
003e2df0  f2 ff ff ea                                      b #0x3e2dc0
003e2df4  00 00 59 e3                                      cmp sb, #0
003e2df8  f0 ff ff 0a                                      beq #0x3e2dc0
003e2dfc  e9 ff ff ea                                      b #0x3e2da8
003e2e00  07 00 a0 e1                                      mov r0, r7
003e2e04  05 10 a0 e1                                      mov r1, r5
003e2e08  04 20 94 e5                                      ldr r2, [r4, #4]
003e2e0c  e8 ef ff eb                                      bl #0x3dedb4
003e2e10  00 60 a0 e1                                      mov r6, r0
003e2e14  dd ff ff ea                                      b #0x3e2d90
; mapping-symbol data/literal pool
003e2e18  10 1d 5b 00 4c 10 00 00                          .byte 0x10, 0x1d, 0x5b, 0x00, 0x4c, 0x10, 0x00, 0x00

; FUNCTION 0x003e2e20, declared_size=500, range_size=500, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties10_LoadClassERN7Structs19CharacterPropertiesEib
; demangled: CharProperties::_LoadClass(Structs::CharacterProperties&, int, bool)
; decoder-mode: arm
003e2e20  e0 c1 9f e5                                      ldr ip, [pc, #0x1e0]
003e2e24  00 00 52 e3                                      cmp r2, #0
003e2e28  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e2e2c  0c c0 8f e0                                      add ip, pc, ip
003e2e30  00 80 a0 e1                                      mov r8, r0
003e2e34  01 a0 a0 e1                                      mov sl, r1
003e2e38  03 90 a0 e1                                      mov sb, r3
003e2e3c  27 00 00 ba                                      blt #0x3e2ee0
003e2e40  c4 31 9f e5                                      ldr r3, [pc, #0x1c4]
003e2e44  03 30 9c e7                                      ldr r3, [ip, r3]
003e2e48  00 30 93 e5                                      ldr r3, [r3]
003e2e4c  03 00 52 e1                                      cmp r2, r3
003e2e50  22 00 00 aa                                      bge #0x3e2ee0
003e2e54  b4 31 9f e5                                      ldr r3, [pc, #0x1b4]
003e2e58  0c 70 a0 e3                                      mov r7, #0xc
003e2e5c  03 30 9c e7                                      ldr r3, [ip, r3]
003e2e60  00 30 93 e5                                      ldr r3, [r3]
003e2e64  97 32 27 e0                                      mla r7, r7, r2, r3
003e2e68  04 20 97 e5                                      ldr r2, [r7, #4]
003e2e6c  00 00 52 e3                                      cmp r2, #0
003e2e70  1a 00 00 0a                                      beq #0x3e2ee0
003e2e74  00 40 a0 e3                                      mov r4, #0
003e2e78  04 60 a0 e1                                      mov r6, r4
003e2e7c  08 50 97 e5                                      ldr r5, [r7, #8]
003e2e80  04 50 85 e0                                      add r5, r5, r4
003e2e84  08 30 95 e5                                      ldr r3, [r5, #8]
003e2e88  09 00 53 e3                                      cmp r3, #9
003e2e8c  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003e2e90  0e 00 00 ea                                      b #0x3e2ed0
003e2e94  50 00 00 ea                                      b #0x3e2fdc
003e2e98  44 00 00 ea                                      b #0x3e2fb0
003e2e9c  39 00 00 ea                                      b #0x3e2f88
003e2ea0  0a 00 00 ea                                      b #0x3e2ed0
003e2ea4  2d 00 00 ea                                      b #0x3e2f60
003e2ea8  21 00 00 ea                                      b #0x3e2f34
003e2eac  0c 00 00 ea                                      b #0x3e2ee4
003e2eb0  10 00 00 ea                                      b #0x3e2ef8
003e2eb4  19 00 00 ea                                      b #0x3e2f20
003e2eb8  ff ff ff ea                                      b #0x3e2ebc
003e2ebc  05 20 a0 e1                                      mov r2, r5
003e2ec0  08 00 a0 e1                                      mov r0, r8
003e2ec4  0a 10 a0 e1                                      mov r1, sl
003e2ec8  40 ff ff eb                                      bl #0x3e2bd0
003e2ecc  04 20 97 e5                                      ldr r2, [r7, #4]
003e2ed0  01 60 86 e2                                      add r6, r6, #1
003e2ed4  06 00 52 e1                                      cmp r2, r6
003e2ed8  18 40 84 e2                                      add r4, r4, #0x18
003e2edc  e6 ff ff 8a                                      bhi #0x3e2e7c
003e2ee0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003e2ee4  08 00 a0 e1                                      mov r0, r8
003e2ee8  0a 10 a0 e1                                      mov r1, sl
003e2eec  05 20 a0 e1                                      mov r2, r5
003e2ef0  09 30 a0 e1                                      mov r3, sb
003e2ef4  45 ff ff eb                                      bl #0x3e2c10
003e2ef8  05 20 a0 e1                                      mov r2, r5
003e2efc  08 00 a0 e1                                      mov r0, r8
003e2f00  0a 10 a0 e1                                      mov r1, sl
003e2f04  34 ff ff eb                                      bl #0x3e2bdc
003e2f08  04 20 97 e5                                      ldr r2, [r7, #4]
003e2f0c  01 60 86 e2                                      add r6, r6, #1
003e2f10  18 40 84 e2                                      add r4, r4, #0x18
003e2f14  06 00 52 e1                                      cmp r2, r6
003e2f18  d7 ff ff 8a                                      bhi #0x3e2e7c
003e2f1c  ef ff ff ea                                      b #0x3e2ee0
003e2f20  08 00 a0 e1                                      mov r0, r8
003e2f24  0a 10 a0 e1                                      mov r1, sl
003e2f28  05 20 a0 e1                                      mov r2, r5
003e2f2c  f0 47 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, lr}
003e2f30  25 ff ff ea                                      b #0x3e2bcc
003e2f34  05 20 a0 e1                                      mov r2, r5
003e2f38  08 00 a0 e1                                      mov r0, r8
003e2f3c  0a 10 a0 e1                                      mov r1, sl
003e2f40  09 30 a0 e1                                      mov r3, sb
003e2f44  4b ff ff eb                                      bl #0x3e2c78
003e2f48  04 20 97 e5                                      ldr r2, [r7, #4]
003e2f4c  01 60 86 e2                                      add r6, r6, #1
003e2f50  18 40 84 e2                                      add r4, r4, #0x18
003e2f54  06 00 52 e1                                      cmp r2, r6
003e2f58  c7 ff ff 8a                                      bhi #0x3e2e7c
003e2f5c  df ff ff ea                                      b #0x3e2ee0
003e2f60  05 20 a0 e1                                      mov r2, r5
003e2f64  08 00 a0 e1                                      mov r0, r8
003e2f68  0a 10 a0 e1                                      mov r1, sl
003e2f6c  53 ff ff eb                                      bl #0x3e2cc0
003e2f70  04 20 97 e5                                      ldr r2, [r7, #4]
003e2f74  01 60 86 e2                                      add r6, r6, #1
003e2f78  18 40 84 e2                                      add r4, r4, #0x18
003e2f7c  06 00 52 e1                                      cmp r2, r6
003e2f80  bd ff ff 8a                                      bhi #0x3e2e7c
003e2f84  d5 ff ff ea                                      b #0x3e2ee0
003e2f88  05 20 a0 e1                                      mov r2, r5
003e2f8c  08 00 a0 e1                                      mov r0, r8
003e2f90  0a 10 a0 e1                                      mov r1, sl
003e2f94  5a ff ff eb                                      bl #0x3e2d04
003e2f98  04 20 97 e5                                      ldr r2, [r7, #4]
003e2f9c  01 60 86 e2                                      add r6, r6, #1
003e2fa0  18 40 84 e2                                      add r4, r4, #0x18
003e2fa4  06 00 52 e1                                      cmp r2, r6
003e2fa8  b3 ff ff 8a                                      bhi #0x3e2e7c
003e2fac  cb ff ff ea                                      b #0x3e2ee0
003e2fb0  05 20 a0 e1                                      mov r2, r5
003e2fb4  08 00 a0 e1                                      mov r0, r8
003e2fb8  0a 10 a0 e1                                      mov r1, sl
003e2fbc  09 30 a0 e1                                      mov r3, sb
003e2fc0  61 ff ff eb                                      bl #0x3e2d4c
003e2fc4  04 20 97 e5                                      ldr r2, [r7, #4]
003e2fc8  01 60 86 e2                                      add r6, r6, #1
003e2fcc  18 40 84 e2                                      add r4, r4, #0x18
003e2fd0  06 00 52 e1                                      cmp r2, r6
003e2fd4  a8 ff ff 8a                                      bhi #0x3e2e7c
003e2fd8  c0 ff ff ea                                      b #0x3e2ee0
003e2fdc  05 20 a0 e1                                      mov r2, r5
003e2fe0  08 00 a0 e1                                      mov r0, r8
003e2fe4  0a 10 a0 e1                                      mov r1, sl
003e2fe8  09 30 a0 e1                                      mov r3, sb
003e2fec  08 00 00 eb                                      bl #0x3e3014
003e2ff0  04 20 97 e5                                      ldr r2, [r7, #4]
003e2ff4  01 60 86 e2                                      add r6, r6, #1
003e2ff8  18 40 84 e2                                      add r4, r4, #0x18
003e2ffc  06 00 52 e1                                      cmp r2, r6
003e3000  9d ff ff 8a                                      bhi #0x3e2e7c
003e3004  b5 ff ff ea                                      b #0x3e2ee0
; mapping-symbol data/literal pool
003e3008  64 1c 5b 00 68 35 00 00 90 34 00 00              .byte 0x64, 0x1c, 0x5b, 0x00, 0x68, 0x35, 0x00, 0x00, 0x90, 0x34, 0x00, 0x00

; FUNCTION 0x003e3014, declared_size=100, range_size=100, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties6_GroupERN7Structs19CharacterPropertiesEPNS0_9ClassFuncEb
; demangled: CharProperties::_Group(Structs::CharacterProperties&, Structs::ClassFunc*, bool)
; decoder-mode: arm
003e3014  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003e3018  02 40 a0 e1                                      mov r4, r2
003e301c  0c 20 92 e5                                      ldr r2, [r2, #0xc]
003e3020  00 70 a0 e1                                      mov r7, r0
003e3024  01 60 a0 e1                                      mov r6, r1
003e3028  01 00 72 e3                                      cmn r2, #1
003e302c  03 50 a0 e1                                      mov r5, r3
003e3030  00 00 00 0a                                      beq #0x3e3038
003e3034  79 ff ff eb                                      bl #0x3e2e20
003e3038  10 20 94 e5                                      ldr r2, [r4, #0x10]
003e303c  01 00 72 e3                                      cmn r2, #1
003e3040  03 00 00 0a                                      beq #0x3e3054
003e3044  07 00 a0 e1                                      mov r0, r7
003e3048  06 10 a0 e1                                      mov r1, r6
003e304c  05 30 a0 e1                                      mov r3, r5
003e3050  72 ff ff eb                                      bl #0x3e2e20
003e3054  14 20 94 e5                                      ldr r2, [r4, #0x14]
003e3058  01 00 72 e3                                      cmn r2, #1
003e305c  04 00 00 0a                                      beq #0x3e3074
003e3060  07 00 a0 e1                                      mov r0, r7
003e3064  06 10 a0 e1                                      mov r1, r6
003e3068  05 30 a0 e1                                      mov r3, r5
003e306c  f0 41 bd e8                                      pop {r4, r5, r6, r7, r8, lr}
003e3070  6a ff ff ea                                      b #0x3e2e20
003e3074  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}

; FUNCTION 0x003e3154, declared_size=352, range_size=352, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties14_LoadGearStatsEib
; demangled: CharProperties::_LoadGearStats(int, bool)
; decoder-mode: arm
003e3154  50 31 9f e5                                      ldr r3, [pc, #0x150]
003e3158  50 c1 9f e5                                      ldr ip, [pc, #0x150]
003e315c  70 40 2d e9                                      push {r4, r5, r6, lr}
003e3160  03 30 8f e0                                      add r3, pc, r3
003e3164  0c c0 93 e7                                      ldr ip, [r3, ip]
003e3168  a4 40 a0 e3                                      mov r4, #0xa4
003e316c  00 50 a0 e1                                      mov r5, r0
003e3170  00 30 9c e5                                      ldr r3, [ip]
003e3174  94 31 24 e0                                      mla r4, r4, r1, r3
003e3178  58 30 94 e5                                      ldr r3, [r4, #0x58]
003e317c  0c 00 53 e3                                      cmp r3, #0xc
003e3180  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003e3184  47 00 00 ea                                      b #0x3e32a8
003e3188  0b 00 00 ea                                      b #0x3e31bc
003e318c  18 00 00 ea                                      b #0x3e31f4
003e3190  0b 00 00 ea                                      b #0x3e31c4
003e3194  08 00 00 ea                                      b #0x3e31bc
003e3198  21 00 00 ea                                      b #0x3e3224
003e319c  20 00 00 ea                                      b #0x3e3224
003e31a0  30 00 00 ea                                      b #0x3e3268
003e31a4  3a 00 00 ea                                      b #0x3e3294
003e31a8  39 00 00 ea                                      b #0x3e3294
003e31ac  38 00 00 ea                                      b #0x3e3294
003e31b0  37 00 00 ea                                      b #0x3e3294
003e31b4  3b 00 00 ea                                      b #0x3e32a8
003e31b8  35 00 00 ea                                      b #0x3e3294
003e31bc  00 00 52 e3                                      cmp r2, #0
003e31c0  0b 00 00 1a                                      bne #0x3e31f4
003e31c4  71 6e 85 e2                                      add r6, r5, #0x710
003e31c8  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003e31cc  05 00 a0 e1                                      mov r0, r5
003e31d0  06 10 a0 e1                                      mov r1, r6
003e31d4  4f 20 a0 e3                                      mov r2, #0x4f
003e31d8  d8 ef ff eb                                      bl #0x3df140
003e31dc  90 30 94 e5                                      ldr r3, [r4, #0x90]
003e31e0  05 00 a0 e1                                      mov r0, r5
003e31e4  06 10 a0 e1                                      mov r1, r6
003e31e8  50 20 a0 e3                                      mov r2, #0x50
003e31ec  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e31f0  d2 ef ff ea                                      b #0x3df140
003e31f4  71 6e 85 e2                                      add r6, r5, #0x710
003e31f8  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003e31fc  05 00 a0 e1                                      mov r0, r5
003e3200  06 10 a0 e1                                      mov r1, r6
003e3204  51 20 a0 e3                                      mov r2, #0x51
003e3208  cc ef ff eb                                      bl #0x3df140
003e320c  90 30 94 e5                                      ldr r3, [r4, #0x90]
003e3210  05 00 a0 e1                                      mov r0, r5
003e3214  06 10 a0 e1                                      mov r1, r6
003e3218  52 20 a0 e3                                      mov r2, #0x52
003e321c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e3220  c6 ef ff ea                                      b #0x3df140
003e3224  71 6e 80 e2                                      add r6, r0, #0x710
003e3228  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003e322c  06 10 a0 e1                                      mov r1, r6
003e3230  4f 20 a0 e3                                      mov r2, #0x4f
003e3234  c1 ef ff eb                                      bl #0x3df140
003e3238  05 00 a0 e1                                      mov r0, r5
003e323c  06 10 a0 e1                                      mov r1, r6
003e3240  90 30 94 e5                                      ldr r3, [r4, #0x90]
003e3244  50 20 a0 e3                                      mov r2, #0x50
003e3248  bc ef ff eb                                      bl #0x3df140
003e324c  64 30 94 e5                                      ldr r3, [r4, #0x64]
003e3250  05 00 a0 e1                                      mov r0, r5
003e3254  06 10 a0 e1                                      mov r1, r6
003e3258  03 34 a0 e1                                      lsl r3, r3, #8
003e325c  61 20 a0 e3                                      mov r2, #0x61
003e3260  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e3264  b5 ef ff ea                                      b #0x3df140
003e3268  71 6e 80 e2                                      add r6, r0, #0x710
003e326c  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003e3270  06 10 a0 e1                                      mov r1, r6
003e3274  47 20 a0 e3                                      mov r2, #0x47
003e3278  b0 ef ff eb                                      bl #0x3df140
003e327c  90 30 94 e5                                      ldr r3, [r4, #0x90]
003e3280  05 00 a0 e1                                      mov r0, r5
003e3284  06 10 a0 e1                                      mov r1, r6
003e3288  3d 20 a0 e3                                      mov r2, #0x3d
003e328c  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e3290  aa ef ff ea                                      b #0x3df140
003e3294  8c 30 94 e5                                      ldr r3, [r4, #0x8c]
003e3298  71 1e 80 e2                                      add r1, r0, #0x710
003e329c  47 20 a0 e3                                      mov r2, #0x47
003e32a0  70 40 bd e8                                      pop {r4, r5, r6, lr}
003e32a4  a5 ef ff ea                                      b #0x3df140
003e32a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003e32ac  30 19 5b 00 6c 28 00 00                          .byte 0x30, 0x19, 0x5b, 0x00, 0x6c, 0x28, 0x00, 0x00

; FUNCTION 0x003e32b4, declared_size=2660, range_size=2660, mode=arm
; class-group: CharProperties
; alias: _ZN14CharProperties14_LoadGearPowerEib
; demangled: CharProperties::_LoadGearPower(int, bool)
; decoder-mode: arm
003e32b4  54 3a 9f e5                                      ldr r3, [pc, #0xa54]
003e32b8  54 ca 9f e5                                      ldr ip, [pc, #0xa54]
003e32bc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003e32c0  03 30 8f e0                                      add r3, pc, r3
003e32c4  0c c0 93 e7                                      ldr ip, [r3, ip]
003e32c8  28 60 a0 e3                                      mov r6, #0x28
003e32cc  02 a0 a0 e1                                      mov sl, r2
003e32d0  00 30 9c e5                                      ldr r3, [ip]
003e32d4  00 70 a0 e1                                      mov r7, r0
003e32d8  96 31 26 e0                                      mla r6, r6, r1, r3
003e32dc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e32e0  00 00 52 e3                                      cmp r2, #0
003e32e4  43 00 00 0a                                      beq #0x3e33f8
003e32e8  71 8e 80 e2                                      add r8, r0, #0x710
003e32ec  00 40 a0 e3                                      mov r4, #0
003e32f0  10 50 96 e5                                      ldr r5, [r6, #0x10]
003e32f4  04 52 85 e0                                      add r5, r5, r4, lsl #4
003e32f8  04 30 95 e5                                      ldr r3, [r5, #4]
003e32fc  30 00 53 e3                                      cmp r3, #0x30
003e3300  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
003e3304  38 00 00 ea                                      b #0x3e33ec
003e3308  58 02 00 ea                                      b #0x3e3c70
003e330c  4d 02 00 ea                                      b #0x3e3c48
003e3310  42 02 00 ea                                      b #0x3e3c20
003e3314  37 02 00 ea                                      b #0x3e3bf8
003e3318  2c 02 00 ea                                      b #0x3e3bd0
003e331c  21 02 00 ea                                      b #0x3e3ba8
003e3320  16 02 00 ea                                      b #0x3e3b80
003e3324  09 02 00 ea                                      b #0x3e3b50
003e3328  fc 01 00 ea                                      b #0x3e3b20
003e332c  ef 01 00 ea                                      b #0x3e3af0
003e3330  e2 01 00 ea                                      b #0x3e3ac0
003e3334  d5 01 00 ea                                      b #0x3e3a90
003e3338  c8 01 00 ea                                      b #0x3e3a60
003e333c  bb 01 00 ea                                      b #0x3e3a30
003e3340  ae 01 00 ea                                      b #0x3e3a00
003e3344  a1 01 00 ea                                      b #0x3e39d0
003e3348  94 01 00 ea                                      b #0x3e39a0
003e334c  1e 00 00 ea                                      b #0x3e33cc
003e3350  86 01 00 ea                                      b #0x3e3970
003e3354  79 01 00 ea                                      b #0x3e3940
003e3358  6e 01 00 ea                                      b #0x3e3918
003e335c  63 01 00 ea                                      b #0x3e38f0
003e3360  58 01 00 ea                                      b #0x3e38c8
003e3364  4d 01 00 ea                                      b #0x3e38a0
003e3368  42 01 00 ea                                      b #0x3e3878
003e336c  37 01 00 ea                                      b #0x3e3850
003e3370  2c 01 00 ea                                      b #0x3e3828
003e3374  21 01 00 ea                                      b #0x3e3800
003e3378  0f 01 00 ea                                      b #0x3e37bc
003e337c  04 01 00 ea                                      b #0x3e3794
003e3380  f9 00 00 ea                                      b #0x3e376c
003e3384  ee 00 00 ea                                      b #0x3e3744
003e3388  e3 00 00 ea                                      b #0x3e371c
003e338c  d8 00 00 ea                                      b #0x3e36f4
003e3390  cd 00 00 ea                                      b #0x3e36cc
003e3394  c2 00 00 ea                                      b #0x3e36a4
003e3398  a3 00 00 ea                                      b #0x3e362c
003e339c  98 00 00 ea                                      b #0x3e3604
003e33a0  8d 00 00 ea                                      b #0x3e35dc
003e33a4  82 00 00 ea                                      b #0x3e35b4
003e33a8  77 00 00 ea                                      b #0x3e358c
003e33ac  58 00 00 ea                                      b #0x3e3514
003e33b0  4d 00 00 ea                                      b #0x3e34ec
003e33b4  42 00 00 ea                                      b #0x3e34c4
003e33b8  37 00 00 ea                                      b #0x3e349c
003e33bc  2c 00 00 ea                                      b #0x3e3474
003e33c0  21 00 00 ea                                      b #0x3e344c
003e33c4  16 00 00 ea                                      b #0x3e3424
003e33c8  0b 00 00 ea                                      b #0x3e33fc
003e33cc  00 00 5a e3                                      cmp sl, #0
003e33d0  74 20 a0 13                                      movne r2, #0x74
003e33d4  72 20 a0 03                                      moveq r2, #0x72
003e33d8  08 30 95 e5                                      ldr r3, [r5, #8]
003e33dc  07 00 a0 e1                                      mov r0, r7
003e33e0  08 10 a0 e1                                      mov r1, r8
003e33e4  55 ef ff eb                                      bl #0x3df140
003e33e8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e33ec  01 40 84 e2                                      add r4, r4, #1
003e33f0  04 00 52 e1                                      cmp r2, r4
003e33f4  bd ff ff 8a                                      bhi #0x3e32f0
003e33f8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003e33fc  c4 20 a0 e3                                      mov r2, #0xc4
003e3400  08 30 95 e5                                      ldr r3, [r5, #8]
003e3404  07 00 a0 e1                                      mov r0, r7
003e3408  08 10 a0 e1                                      mov r1, r8
003e340c  4b ef ff eb                                      bl #0x3df140
003e3410  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3414  01 40 84 e2                                      add r4, r4, #1
003e3418  04 00 52 e1                                      cmp r2, r4
003e341c  b3 ff ff 8a                                      bhi #0x3e32f0
003e3420  f4 ff ff ea                                      b #0x3e33f8
003e3424  c3 20 a0 e3                                      mov r2, #0xc3
003e3428  08 30 95 e5                                      ldr r3, [r5, #8]
003e342c  07 00 a0 e1                                      mov r0, r7
003e3430  08 10 a0 e1                                      mov r1, r8
003e3434  41 ef ff eb                                      bl #0x3df140
003e3438  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e343c  01 40 84 e2                                      add r4, r4, #1
003e3440  04 00 52 e1                                      cmp r2, r4
003e3444  a9 ff ff 8a                                      bhi #0x3e32f0
003e3448  ea ff ff ea                                      b #0x3e33f8
003e344c  a6 20 a0 e3                                      mov r2, #0xa6
003e3450  08 30 95 e5                                      ldr r3, [r5, #8]
003e3454  07 00 a0 e1                                      mov r0, r7
003e3458  08 10 a0 e1                                      mov r1, r8
003e345c  37 ef ff eb                                      bl #0x3df140
003e3460  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3464  01 40 84 e2                                      add r4, r4, #1
003e3468  04 00 52 e1                                      cmp r2, r4
003e346c  9f ff ff 8a                                      bhi #0x3e32f0
003e3470  e0 ff ff ea                                      b #0x3e33f8
003e3474  a9 20 a0 e3                                      mov r2, #0xa9
003e3478  08 30 95 e5                                      ldr r3, [r5, #8]
003e347c  07 00 a0 e1                                      mov r0, r7
003e3480  08 10 a0 e1                                      mov r1, r8
003e3484  2d ef ff eb                                      bl #0x3df140
003e3488  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e348c  01 40 84 e2                                      add r4, r4, #1
003e3490  04 00 52 e1                                      cmp r2, r4
003e3494  95 ff ff 8a                                      bhi #0x3e32f0
003e3498  d6 ff ff ea                                      b #0x3e33f8
003e349c  a8 20 a0 e3                                      mov r2, #0xa8
003e34a0  08 30 95 e5                                      ldr r3, [r5, #8]
003e34a4  07 00 a0 e1                                      mov r0, r7
003e34a8  08 10 a0 e1                                      mov r1, r8
003e34ac  23 ef ff eb                                      bl #0x3df140
003e34b0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e34b4  01 40 84 e2                                      add r4, r4, #1
003e34b8  04 00 52 e1                                      cmp r2, r4
003e34bc  8b ff ff 8a                                      bhi #0x3e32f0
003e34c0  cc ff ff ea                                      b #0x3e33f8
003e34c4  a7 20 a0 e3                                      mov r2, #0xa7
003e34c8  08 30 95 e5                                      ldr r3, [r5, #8]
003e34cc  07 00 a0 e1                                      mov r0, r7
003e34d0  08 10 a0 e1                                      mov r1, r8
003e34d4  19 ef ff eb                                      bl #0x3df140
003e34d8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e34dc  01 40 84 e2                                      add r4, r4, #1
003e34e0  04 00 52 e1                                      cmp r2, r4
003e34e4  81 ff ff 8a                                      bhi #0x3e32f0
003e34e8  c2 ff ff ea                                      b #0x3e33f8
003e34ec  aa 20 a0 e3                                      mov r2, #0xaa
003e34f0  08 30 95 e5                                      ldr r3, [r5, #8]
003e34f4  07 00 a0 e1                                      mov r0, r7
003e34f8  08 10 a0 e1                                      mov r1, r8
003e34fc  0f ef ff eb                                      bl #0x3df140
003e3500  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3504  01 40 84 e2                                      add r4, r4, #1
003e3508  04 00 52 e1                                      cmp r2, r4
003e350c  77 ff ff 8a                                      bhi #0x3e32f0
003e3510  b8 ff ff ea                                      b #0x3e33f8
003e3514  a6 20 a0 e3                                      mov r2, #0xa6
003e3518  08 30 95 e5                                      ldr r3, [r5, #8]
003e351c  07 00 a0 e1                                      mov r0, r7
003e3520  08 10 a0 e1                                      mov r1, r8
003e3524  05 ef ff eb                                      bl #0x3df140
003e3528  07 00 a0 e1                                      mov r0, r7
003e352c  08 10 a0 e1                                      mov r1, r8
003e3530  a9 20 a0 e3                                      mov r2, #0xa9
003e3534  08 30 95 e5                                      ldr r3, [r5, #8]
003e3538  00 ef ff eb                                      bl #0x3df140
003e353c  07 00 a0 e1                                      mov r0, r7
003e3540  08 10 a0 e1                                      mov r1, r8
003e3544  a7 20 a0 e3                                      mov r2, #0xa7
003e3548  08 30 95 e5                                      ldr r3, [r5, #8]
003e354c  fb ee ff eb                                      bl #0x3df140
003e3550  07 00 a0 e1                                      mov r0, r7
003e3554  08 10 a0 e1                                      mov r1, r8
003e3558  aa 20 a0 e3                                      mov r2, #0xaa
003e355c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3560  f6 ee ff eb                                      bl #0x3df140
003e3564  a8 20 a0 e3                                      mov r2, #0xa8
003e3568  07 00 a0 e1                                      mov r0, r7
003e356c  08 10 a0 e1                                      mov r1, r8
003e3570  08 30 95 e5                                      ldr r3, [r5, #8]
003e3574  f1 ee ff eb                                      bl #0x3df140
003e3578  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e357c  01 40 84 e2                                      add r4, r4, #1
003e3580  04 00 52 e1                                      cmp r2, r4
003e3584  59 ff ff 8a                                      bhi #0x3e32f0
003e3588  9a ff ff ea                                      b #0x3e33f8
003e358c  9e 20 a0 e3                                      mov r2, #0x9e
003e3590  08 30 95 e5                                      ldr r3, [r5, #8]
003e3594  07 00 a0 e1                                      mov r0, r7
003e3598  08 10 a0 e1                                      mov r1, r8
003e359c  e7 ee ff eb                                      bl #0x3df140
003e35a0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e35a4  01 40 84 e2                                      add r4, r4, #1
003e35a8  04 00 52 e1                                      cmp r2, r4
003e35ac  4f ff ff 8a                                      bhi #0x3e32f0
003e35b0  90 ff ff ea                                      b #0x3e33f8
003e35b4  a5 20 a0 e3                                      mov r2, #0xa5
003e35b8  08 30 95 e5                                      ldr r3, [r5, #8]
003e35bc  07 00 a0 e1                                      mov r0, r7
003e35c0  08 10 a0 e1                                      mov r1, r8
003e35c4  dd ee ff eb                                      bl #0x3df140
003e35c8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e35cc  01 40 84 e2                                      add r4, r4, #1
003e35d0  04 00 52 e1                                      cmp r2, r4
003e35d4  45 ff ff 8a                                      bhi #0x3e32f0
003e35d8  86 ff ff ea                                      b #0x3e33f8
003e35dc  85 20 a0 e3                                      mov r2, #0x85
003e35e0  08 30 95 e5                                      ldr r3, [r5, #8]
003e35e4  07 00 a0 e1                                      mov r0, r7
003e35e8  08 10 a0 e1                                      mov r1, r8
003e35ec  d3 ee ff eb                                      bl #0x3df140
003e35f0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e35f4  01 40 84 e2                                      add r4, r4, #1
003e35f8  04 00 52 e1                                      cmp r2, r4
003e35fc  3b ff ff 8a                                      bhi #0x3e32f0
003e3600  7c ff ff ea                                      b #0x3e33f8
003e3604  84 20 a0 e3                                      mov r2, #0x84
003e3608  08 30 95 e5                                      ldr r3, [r5, #8]
003e360c  07 00 a0 e1                                      mov r0, r7
003e3610  08 10 a0 e1                                      mov r1, r8
003e3614  c9 ee ff eb                                      bl #0x3df140
003e3618  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e361c  01 40 84 e2                                      add r4, r4, #1
003e3620  04 00 52 e1                                      cmp r2, r4
003e3624  31 ff ff 8a                                      bhi #0x3e32f0
003e3628  72 ff ff ea                                      b #0x3e33f8
003e362c  4a 20 a0 e3                                      mov r2, #0x4a
003e3630  08 30 95 e5                                      ldr r3, [r5, #8]
003e3634  07 00 a0 e1                                      mov r0, r7
003e3638  08 10 a0 e1                                      mov r1, r8
003e363c  bf ee ff eb                                      bl #0x3df140
003e3640  07 00 a0 e1                                      mov r0, r7
003e3644  08 10 a0 e1                                      mov r1, r8
003e3648  4d 20 a0 e3                                      mov r2, #0x4d
003e364c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3650  ba ee ff eb                                      bl #0x3df140
003e3654  07 00 a0 e1                                      mov r0, r7
003e3658  08 10 a0 e1                                      mov r1, r8
003e365c  4b 20 a0 e3                                      mov r2, #0x4b
003e3660  08 30 95 e5                                      ldr r3, [r5, #8]
003e3664  b5 ee ff eb                                      bl #0x3df140
003e3668  07 00 a0 e1                                      mov r0, r7
003e366c  08 10 a0 e1                                      mov r1, r8
003e3670  4e 20 a0 e3                                      mov r2, #0x4e
003e3674  08 30 95 e5                                      ldr r3, [r5, #8]
003e3678  b0 ee ff eb                                      bl #0x3df140
003e367c  4c 20 a0 e3                                      mov r2, #0x4c
003e3680  07 00 a0 e1                                      mov r0, r7
003e3684  08 10 a0 e1                                      mov r1, r8
003e3688  08 30 95 e5                                      ldr r3, [r5, #8]
003e368c  ab ee ff eb                                      bl #0x3df140
003e3690  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3694  01 40 84 e2                                      add r4, r4, #1
003e3698  04 00 52 e1                                      cmp r2, r4
003e369c  13 ff ff 8a                                      bhi #0x3e32f0
003e36a0  54 ff ff ea                                      b #0x3e33f8
003e36a4  4c 20 a0 e3                                      mov r2, #0x4c
003e36a8  08 30 95 e5                                      ldr r3, [r5, #8]
003e36ac  07 00 a0 e1                                      mov r0, r7
003e36b0  08 10 a0 e1                                      mov r1, r8
003e36b4  a1 ee ff eb                                      bl #0x3df140
003e36b8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e36bc  01 40 84 e2                                      add r4, r4, #1
003e36c0  04 00 52 e1                                      cmp r2, r4
003e36c4  09 ff ff 8a                                      bhi #0x3e32f0
003e36c8  4a ff ff ea                                      b #0x3e33f8
003e36cc  4e 20 a0 e3                                      mov r2, #0x4e
003e36d0  08 30 95 e5                                      ldr r3, [r5, #8]
003e36d4  07 00 a0 e1                                      mov r0, r7
003e36d8  08 10 a0 e1                                      mov r1, r8
003e36dc  97 ee ff eb                                      bl #0x3df140
003e36e0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e36e4  01 40 84 e2                                      add r4, r4, #1
003e36e8  04 00 52 e1                                      cmp r2, r4
003e36ec  ff fe ff 8a                                      bhi #0x3e32f0
003e36f0  40 ff ff ea                                      b #0x3e33f8
003e36f4  4b 20 a0 e3                                      mov r2, #0x4b
003e36f8  08 30 95 e5                                      ldr r3, [r5, #8]
003e36fc  07 00 a0 e1                                      mov r0, r7
003e3700  08 10 a0 e1                                      mov r1, r8
003e3704  8d ee ff eb                                      bl #0x3df140
003e3708  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e370c  01 40 84 e2                                      add r4, r4, #1
003e3710  04 00 52 e1                                      cmp r2, r4
003e3714  f5 fe ff 8a                                      bhi #0x3e32f0
003e3718  36 ff ff ea                                      b #0x3e33f8
003e371c  4d 20 a0 e3                                      mov r2, #0x4d
003e3720  08 30 95 e5                                      ldr r3, [r5, #8]
003e3724  07 00 a0 e1                                      mov r0, r7
003e3728  08 10 a0 e1                                      mov r1, r8
003e372c  83 ee ff eb                                      bl #0x3df140
003e3730  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3734  01 40 84 e2                                      add r4, r4, #1
003e3738  04 00 52 e1                                      cmp r2, r4
003e373c  eb fe ff 8a                                      bhi #0x3e32f0
003e3740  2c ff ff ea                                      b #0x3e33f8
003e3744  4a 20 a0 e3                                      mov r2, #0x4a
003e3748  08 30 95 e5                                      ldr r3, [r5, #8]
003e374c  07 00 a0 e1                                      mov r0, r7
003e3750  08 10 a0 e1                                      mov r1, r8
003e3754  79 ee ff eb                                      bl #0x3df140
003e3758  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e375c  01 40 84 e2                                      add r4, r4, #1
003e3760  04 00 52 e1                                      cmp r2, r4
003e3764  e1 fe ff 8a                                      bhi #0x3e32f0
003e3768  22 ff ff ea                                      b #0x3e33f8
003e376c  3b 20 a0 e3                                      mov r2, #0x3b
003e3770  08 30 95 e5                                      ldr r3, [r5, #8]
003e3774  07 00 a0 e1                                      mov r0, r7
003e3778  08 10 a0 e1                                      mov r1, r8
003e377c  6f ee ff eb                                      bl #0x3df140
003e3780  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3784  01 40 84 e2                                      add r4, r4, #1
003e3788  04 00 52 e1                                      cmp r2, r4
003e378c  d7 fe ff 8a                                      bhi #0x3e32f0
003e3790  18 ff ff ea                                      b #0x3e33f8
003e3794  32 20 a0 e3                                      mov r2, #0x32
003e3798  08 30 95 e5                                      ldr r3, [r5, #8]
003e379c  07 00 a0 e1                                      mov r0, r7
003e37a0  08 10 a0 e1                                      mov r1, r8
003e37a4  65 ee ff eb                                      bl #0x3df140
003e37a8  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e37ac  01 40 84 e2                                      add r4, r4, #1
003e37b0  04 00 52 e1                                      cmp r2, r4
003e37b4  cd fe ff 8a                                      bhi #0x3e32f0
003e37b8  0e ff ff ea                                      b #0x3e33f8
003e37bc  00 00 5a e3                                      cmp sl, #0
003e37c0  43 01 00 0a                                      beq #0x3e3cd4
003e37c4  51 20 a0 e3                                      mov r2, #0x51
003e37c8  08 30 95 e5                                      ldr r3, [r5, #8]
003e37cc  07 00 a0 e1                                      mov r0, r7
003e37d0  08 10 a0 e1                                      mov r1, r8
003e37d4  59 ee ff eb                                      bl #0x3df140
003e37d8  52 20 a0 e3                                      mov r2, #0x52
003e37dc  07 00 a0 e1                                      mov r0, r7
003e37e0  08 10 a0 e1                                      mov r1, r8
003e37e4  08 30 95 e5                                      ldr r3, [r5, #8]
003e37e8  54 ee ff eb                                      bl #0x3df140
003e37ec  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e37f0  01 40 84 e2                                      add r4, r4, #1
003e37f4  04 00 52 e1                                      cmp r2, r4
003e37f8  bc fe ff 8a                                      bhi #0x3e32f0
003e37fc  fd fe ff ea                                      b #0x3e33f8
003e3800  47 20 a0 e3                                      mov r2, #0x47
003e3804  08 30 95 e5                                      ldr r3, [r5, #8]
003e3808  07 00 a0 e1                                      mov r0, r7
003e380c  08 10 a0 e1                                      mov r1, r8
003e3810  4a ee ff eb                                      bl #0x3df140
003e3814  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3818  01 40 84 e2                                      add r4, r4, #1
003e381c  04 00 52 e1                                      cmp r2, r4
003e3820  b2 fe ff 8a                                      bhi #0x3e32f0
003e3824  f3 fe ff ea                                      b #0x3e33f8
003e3828  3d 20 a0 e3                                      mov r2, #0x3d
003e382c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3830  07 00 a0 e1                                      mov r0, r7
003e3834  08 10 a0 e1                                      mov r1, r8
003e3838  40 ee ff eb                                      bl #0x3df140
003e383c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3840  01 40 84 e2                                      add r4, r4, #1
003e3844  04 00 52 e1                                      cmp r2, r4
003e3848  a8 fe ff 8a                                      bhi #0x3e32f0
003e384c  e9 fe ff ea                                      b #0x3e33f8
003e3850  3c 20 a0 e3                                      mov r2, #0x3c
003e3854  08 30 95 e5                                      ldr r3, [r5, #8]
003e3858  07 00 a0 e1                                      mov r0, r7
003e385c  08 10 a0 e1                                      mov r1, r8
003e3860  36 ee ff eb                                      bl #0x3df140
003e3864  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3868  01 40 84 e2                                      add r4, r4, #1
003e386c  04 00 52 e1                                      cmp r2, r4
003e3870  9e fe ff 8a                                      bhi #0x3e32f0
003e3874  df fe ff ea                                      b #0x3e33f8
003e3878  3f 20 a0 e3                                      mov r2, #0x3f
003e387c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3880  07 00 a0 e1                                      mov r0, r7
003e3884  08 10 a0 e1                                      mov r1, r8
003e3888  2c ee ff eb                                      bl #0x3df140
003e388c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3890  01 40 84 e2                                      add r4, r4, #1
003e3894  04 00 52 e1                                      cmp r2, r4
003e3898  94 fe ff 8a                                      bhi #0x3e32f0
003e389c  d5 fe ff ea                                      b #0x3e33f8
003e38a0  2d 20 a0 e3                                      mov r2, #0x2d
003e38a4  08 30 95 e5                                      ldr r3, [r5, #8]
003e38a8  07 00 a0 e1                                      mov r0, r7
003e38ac  08 10 a0 e1                                      mov r1, r8
003e38b0  22 ee ff eb                                      bl #0x3df140
003e38b4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e38b8  01 40 84 e2                                      add r4, r4, #1
003e38bc  04 00 52 e1                                      cmp r2, r4
003e38c0  8a fe ff 8a                                      bhi #0x3e32f0
003e38c4  cb fe ff ea                                      b #0x3e33f8
003e38c8  28 20 a0 e3                                      mov r2, #0x28
003e38cc  08 30 95 e5                                      ldr r3, [r5, #8]
003e38d0  07 00 a0 e1                                      mov r0, r7
003e38d4  08 10 a0 e1                                      mov r1, r8
003e38d8  18 ee ff eb                                      bl #0x3df140
003e38dc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e38e0  01 40 84 e2                                      add r4, r4, #1
003e38e4  04 00 52 e1                                      cmp r2, r4
003e38e8  80 fe ff 8a                                      bhi #0x3e32f0
003e38ec  c1 fe ff ea                                      b #0x3e33f8
003e38f0  2c 20 a0 e3                                      mov r2, #0x2c
003e38f4  08 30 95 e5                                      ldr r3, [r5, #8]
003e38f8  07 00 a0 e1                                      mov r0, r7
003e38fc  08 10 a0 e1                                      mov r1, r8
003e3900  0e ee ff eb                                      bl #0x3df140
003e3904  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3908  01 40 84 e2                                      add r4, r4, #1
003e390c  04 00 52 e1                                      cmp r2, r4
003e3910  76 fe ff 8a                                      bhi #0x3e32f0
003e3914  b7 fe ff ea                                      b #0x3e33f8
003e3918  27 20 a0 e3                                      mov r2, #0x27
003e391c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3920  07 00 a0 e1                                      mov r0, r7
003e3924  08 10 a0 e1                                      mov r1, r8
003e3928  04 ee ff eb                                      bl #0x3df140
003e392c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3930  01 40 84 e2                                      add r4, r4, #1
003e3934  04 00 52 e1                                      cmp r2, r4
003e3938  6c fe ff 8a                                      bhi #0x3e32f0
003e393c  ad fe ff ea                                      b #0x3e33f8
003e3940  00 00 5a e3                                      cmp sl, #0
003e3944  78 20 a0 13                                      movne r2, #0x78
003e3948  76 20 a0 03                                      moveq r2, #0x76
003e394c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3950  07 00 a0 e1                                      mov r0, r7
003e3954  08 10 a0 e1                                      mov r1, r8
003e3958  f8 ed ff eb                                      bl #0x3df140
003e395c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3960  01 40 84 e2                                      add r4, r4, #1
003e3964  04 00 52 e1                                      cmp r2, r4
003e3968  60 fe ff 8a                                      bhi #0x3e32f0
003e396c  a1 fe ff ea                                      b #0x3e33f8
003e3970  00 00 5a e3                                      cmp sl, #0
003e3974  77 20 a0 13                                      movne r2, #0x77
003e3978  75 20 a0 03                                      moveq r2, #0x75
003e397c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3980  07 00 a0 e1                                      mov r0, r7
003e3984  08 10 a0 e1                                      mov r1, r8
003e3988  ec ed ff eb                                      bl #0x3df140
003e398c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3990  01 40 84 e2                                      add r4, r4, #1
003e3994  04 00 52 e1                                      cmp r2, r4
003e3998  54 fe ff 8a                                      bhi #0x3e32f0
003e399c  95 fe ff ea                                      b #0x3e33f8
003e39a0  00 00 5a e3                                      cmp sl, #0
003e39a4  73 20 a0 13                                      movne r2, #0x73
003e39a8  71 20 a0 03                                      moveq r2, #0x71
003e39ac  08 30 95 e5                                      ldr r3, [r5, #8]
003e39b0  07 00 a0 e1                                      mov r0, r7
003e39b4  08 10 a0 e1                                      mov r1, r8
003e39b8  e0 ed ff eb                                      bl #0x3df140
003e39bc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e39c0  01 40 84 e2                                      add r4, r4, #1
003e39c4  04 00 52 e1                                      cmp r2, r4
003e39c8  48 fe ff 8a                                      bhi #0x3e32f0
003e39cc  89 fe ff ea                                      b #0x3e33f8
003e39d0  00 00 5a e3                                      cmp sl, #0
003e39d4  70 20 a0 13                                      movne r2, #0x70
003e39d8  6e 20 a0 03                                      moveq r2, #0x6e
003e39dc  08 30 95 e5                                      ldr r3, [r5, #8]
003e39e0  07 00 a0 e1                                      mov r0, r7
003e39e4  08 10 a0 e1                                      mov r1, r8
003e39e8  d4 ed ff eb                                      bl #0x3df140
003e39ec  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e39f0  01 40 84 e2                                      add r4, r4, #1
003e39f4  04 00 52 e1                                      cmp r2, r4
003e39f8  3c fe ff 8a                                      bhi #0x3e32f0
003e39fc  7d fe ff ea                                      b #0x3e33f8
003e3a00  00 00 5a e3                                      cmp sl, #0
003e3a04  6f 20 a0 13                                      movne r2, #0x6f
003e3a08  6d 20 a0 03                                      moveq r2, #0x6d
003e3a0c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3a10  07 00 a0 e1                                      mov r0, r7
003e3a14  08 10 a0 e1                                      mov r1, r8
003e3a18  c8 ed ff eb                                      bl #0x3df140
003e3a1c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3a20  01 40 84 e2                                      add r4, r4, #1
003e3a24  04 00 52 e1                                      cmp r2, r4
003e3a28  30 fe ff 8a                                      bhi #0x3e32f0
003e3a2c  71 fe ff ea                                      b #0x3e33f8
003e3a30  00 00 5a e3                                      cmp sl, #0
003e3a34  6c 20 a0 13                                      movne r2, #0x6c
003e3a38  6a 20 a0 03                                      moveq r2, #0x6a
003e3a3c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3a40  07 00 a0 e1                                      mov r0, r7
003e3a44  08 10 a0 e1                                      mov r1, r8
003e3a48  bc ed ff eb                                      bl #0x3df140
003e3a4c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3a50  01 40 84 e2                                      add r4, r4, #1
003e3a54  04 00 52 e1                                      cmp r2, r4
003e3a58  24 fe ff 8a                                      bhi #0x3e32f0
003e3a5c  65 fe ff ea                                      b #0x3e33f8
003e3a60  00 00 5a e3                                      cmp sl, #0
003e3a64  6b 20 a0 13                                      movne r2, #0x6b
003e3a68  69 20 a0 03                                      moveq r2, #0x69
003e3a6c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3a70  07 00 a0 e1                                      mov r0, r7
003e3a74  08 10 a0 e1                                      mov r1, r8
003e3a78  b0 ed ff eb                                      bl #0x3df140
003e3a7c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3a80  01 40 84 e2                                      add r4, r4, #1
003e3a84  04 00 52 e1                                      cmp r2, r4
003e3a88  18 fe ff 8a                                      bhi #0x3e32f0
003e3a8c  59 fe ff ea                                      b #0x3e33f8
003e3a90  00 00 5a e3                                      cmp sl, #0
003e3a94  68 20 a0 13                                      movne r2, #0x68
003e3a98  66 20 a0 03                                      moveq r2, #0x66
003e3a9c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3aa0  07 00 a0 e1                                      mov r0, r7
003e3aa4  08 10 a0 e1                                      mov r1, r8
003e3aa8  a4 ed ff eb                                      bl #0x3df140
003e3aac  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3ab0  01 40 84 e2                                      add r4, r4, #1
003e3ab4  04 00 52 e1                                      cmp r2, r4
003e3ab8  0c fe ff 8a                                      bhi #0x3e32f0
003e3abc  4d fe ff ea                                      b #0x3e33f8
003e3ac0  00 00 5a e3                                      cmp sl, #0
003e3ac4  67 20 a0 13                                      movne r2, #0x67
003e3ac8  65 20 a0 03                                      moveq r2, #0x65
003e3acc  08 30 95 e5                                      ldr r3, [r5, #8]
003e3ad0  07 00 a0 e1                                      mov r0, r7
003e3ad4  08 10 a0 e1                                      mov r1, r8
003e3ad8  98 ed ff eb                                      bl #0x3df140
003e3adc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3ae0  01 40 84 e2                                      add r4, r4, #1
003e3ae4  04 00 52 e1                                      cmp r2, r4
003e3ae8  00 fe ff 8a                                      bhi #0x3e32f0
003e3aec  41 fe ff ea                                      b #0x3e33f8
003e3af0  00 00 5a e3                                      cmp sl, #0
003e3af4  64 20 a0 13                                      movne r2, #0x64
003e3af8  61 20 a0 03                                      moveq r2, #0x61
003e3afc  08 30 95 e5                                      ldr r3, [r5, #8]
003e3b00  07 00 a0 e1                                      mov r0, r7
003e3b04  08 10 a0 e1                                      mov r1, r8
003e3b08  64 ec ff eb                                      bl #0x3deca0
003e3b0c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3b10  01 40 84 e2                                      add r4, r4, #1
003e3b14  04 00 52 e1                                      cmp r2, r4
003e3b18  f4 fd ff 8a                                      bhi #0x3e32f0
003e3b1c  35 fe ff ea                                      b #0x3e33f8
003e3b20  00 00 5a e3                                      cmp sl, #0
003e3b24  63 20 a0 13                                      movne r2, #0x63
003e3b28  60 20 a0 03                                      moveq r2, #0x60
003e3b2c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3b30  07 00 a0 e1                                      mov r0, r7
003e3b34  08 10 a0 e1                                      mov r1, r8
003e3b38  80 ed ff eb                                      bl #0x3df140
003e3b3c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3b40  01 40 84 e2                                      add r4, r4, #1
003e3b44  04 00 52 e1                                      cmp r2, r4
003e3b48  e8 fd ff 8a                                      bhi #0x3e32f0
003e3b4c  29 fe ff ea                                      b #0x3e33f8
003e3b50  00 00 5a e3                                      cmp sl, #0
003e3b54  62 20 a0 13                                      movne r2, #0x62
003e3b58  5f 20 a0 03                                      moveq r2, #0x5f
003e3b5c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3b60  07 00 a0 e1                                      mov r0, r7
003e3b64  08 10 a0 e1                                      mov r1, r8
003e3b68  74 ed ff eb                                      bl #0x3df140
003e3b6c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3b70  01 40 84 e2                                      add r4, r4, #1
003e3b74  04 00 52 e1                                      cmp r2, r4
003e3b78  dc fd ff 8a                                      bhi #0x3e32f0
003e3b7c  1d fe ff ea                                      b #0x3e33f8
003e3b80  2b 20 a0 e3                                      mov r2, #0x2b
003e3b84  08 30 95 e5                                      ldr r3, [r5, #8]
003e3b88  07 00 a0 e1                                      mov r0, r7
003e3b8c  08 10 a0 e1                                      mov r1, r8
003e3b90  6a ed ff eb                                      bl #0x3df140
003e3b94  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3b98  01 40 84 e2                                      add r4, r4, #1
003e3b9c  04 00 52 e1                                      cmp r2, r4
003e3ba0  d2 fd ff 8a                                      bhi #0x3e32f0
003e3ba4  13 fe ff ea                                      b #0x3e33f8
003e3ba8  26 20 a0 e3                                      mov r2, #0x26
003e3bac  08 30 95 e5                                      ldr r3, [r5, #8]
003e3bb0  07 00 a0 e1                                      mov r0, r7
003e3bb4  08 10 a0 e1                                      mov r1, r8
003e3bb8  60 ed ff eb                                      bl #0x3df140
003e3bbc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3bc0  01 40 84 e2                                      add r4, r4, #1
003e3bc4  04 00 52 e1                                      cmp r2, r4
003e3bc8  c8 fd ff 8a                                      bhi #0x3e32f0
003e3bcc  09 fe ff ea                                      b #0x3e33f8
003e3bd0  98 20 a0 e3                                      mov r2, #0x98
003e3bd4  08 30 95 e5                                      ldr r3, [r5, #8]
003e3bd8  07 00 a0 e1                                      mov r0, r7
003e3bdc  08 10 a0 e1                                      mov r1, r8
003e3be0  56 ed ff eb                                      bl #0x3df140
003e3be4  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3be8  01 40 84 e2                                      add r4, r4, #1
003e3bec  04 00 52 e1                                      cmp r2, r4
003e3bf0  be fd ff 8a                                      bhi #0x3e32f0
003e3bf4  ff fd ff ea                                      b #0x3e33f8
003e3bf8  97 20 a0 e3                                      mov r2, #0x97
003e3bfc  08 30 95 e5                                      ldr r3, [r5, #8]
003e3c00  07 00 a0 e1                                      mov r0, r7
003e3c04  08 10 a0 e1                                      mov r1, r8
003e3c08  4c ed ff eb                                      bl #0x3df140
003e3c0c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3c10  01 40 84 e2                                      add r4, r4, #1
003e3c14  04 00 52 e1                                      cmp r2, r4
003e3c18  b4 fd ff 8a                                      bhi #0x3e32f0
003e3c1c  f5 fd ff ea                                      b #0x3e33f8
003e3c20  96 20 a0 e3                                      mov r2, #0x96
003e3c24  08 30 95 e5                                      ldr r3, [r5, #8]
003e3c28  07 00 a0 e1                                      mov r0, r7
003e3c2c  08 10 a0 e1                                      mov r1, r8
003e3c30  42 ed ff eb                                      bl #0x3df140
003e3c34  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3c38  01 40 84 e2                                      add r4, r4, #1
003e3c3c  04 00 52 e1                                      cmp r2, r4
003e3c40  aa fd ff 8a                                      bhi #0x3e32f0
003e3c44  eb fd ff ea                                      b #0x3e33f8
003e3c48  95 20 a0 e3                                      mov r2, #0x95
003e3c4c  08 30 95 e5                                      ldr r3, [r5, #8]
003e3c50  07 00 a0 e1                                      mov r0, r7
003e3c54  08 10 a0 e1                                      mov r1, r8
003e3c58  38 ed ff eb                                      bl #0x3df140
003e3c5c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3c60  01 40 84 e2                                      add r4, r4, #1
003e3c64  04 00 52 e1                                      cmp r2, r4
003e3c68  a0 fd ff 8a                                      bhi #0x3e32f0
003e3c6c  e1 fd ff ea                                      b #0x3e33f8
003e3c70  95 20 a0 e3                                      mov r2, #0x95
003e3c74  08 30 95 e5                                      ldr r3, [r5, #8]
003e3c78  07 00 a0 e1                                      mov r0, r7
003e3c7c  08 10 a0 e1                                      mov r1, r8
003e3c80  2e ed ff eb                                      bl #0x3df140
003e3c84  07 00 a0 e1                                      mov r0, r7
003e3c88  08 10 a0 e1                                      mov r1, r8
003e3c8c  96 20 a0 e3                                      mov r2, #0x96
003e3c90  08 30 95 e5                                      ldr r3, [r5, #8]
003e3c94  29 ed ff eb                                      bl #0x3df140
003e3c98  07 00 a0 e1                                      mov r0, r7
003e3c9c  08 10 a0 e1                                      mov r1, r8
003e3ca0  97 20 a0 e3                                      mov r2, #0x97
003e3ca4  08 30 95 e5                                      ldr r3, [r5, #8]
003e3ca8  24 ed ff eb                                      bl #0x3df140
003e3cac  98 20 a0 e3                                      mov r2, #0x98
003e3cb0  07 00 a0 e1                                      mov r0, r7
003e3cb4  08 10 a0 e1                                      mov r1, r8
003e3cb8  08 30 95 e5                                      ldr r3, [r5, #8]
003e3cbc  1f ed ff eb                                      bl #0x3df140
003e3cc0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3cc4  01 40 84 e2                                      add r4, r4, #1
003e3cc8  04 00 52 e1                                      cmp r2, r4
003e3ccc  87 fd ff 8a                                      bhi #0x3e32f0
003e3cd0  c8 fd ff ea                                      b #0x3e33f8
003e3cd4  4f 20 a0 e3                                      mov r2, #0x4f
003e3cd8  08 30 95 e5                                      ldr r3, [r5, #8]
003e3cdc  07 00 a0 e1                                      mov r0, r7
003e3ce0  08 10 a0 e1                                      mov r1, r8
003e3ce4  15 ed ff eb                                      bl #0x3df140
003e3ce8  50 20 a0 e3                                      mov r2, #0x50
003e3cec  07 00 a0 e1                                      mov r0, r7
003e3cf0  08 10 a0 e1                                      mov r1, r8
003e3cf4  08 30 95 e5                                      ldr r3, [r5, #8]
003e3cf8  10 ed ff eb                                      bl #0x3df140
003e3cfc  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003e3d00  01 40 84 e2                                      add r4, r4, #1
003e3d04  04 00 52 e1                                      cmp r2, r4
003e3d08  78 fd ff 8a                                      bhi #0x3e32f0
003e3d0c  b9 fd ff ea                                      b #0x3e33f8
; mapping-symbol data/literal pool
003e3d10  d0 17 5b 00 e8 3b 00 00                          .byte 0xd0, 0x17, 0x5b, 0x00, 0xe8, 0x3b, 0x00, 0x00
