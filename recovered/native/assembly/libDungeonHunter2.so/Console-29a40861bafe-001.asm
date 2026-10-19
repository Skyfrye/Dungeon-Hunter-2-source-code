; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0032fdc0, declared_size=104, range_size=104, mode=arm
; class-group: Console
; alias: _ZN7Console12_destroyListEv
; demangled: Console::_destroyList()
; decoder-mode: arm
0032fdc0  10 40 2d e9                                      push {r4, lr}
0032fdc4  40 30 90 e5                                      ldr r3, [r0, #0x40]
0032fdc8  00 40 a0 e1                                      mov r4, r0
0032fdcc  00 00 53 e3                                      cmp r3, #0
0032fdd0  0a 00 00 0a                                      beq #0x32fe00
0032fdd4  03 00 a0 e1                                      mov r0, r3
0032fdd8  00 30 93 e5                                      ldr r3, [r3]
0032fddc  0f e0 a0 e1                                      mov lr, pc
0032fde0  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0032fde4  40 30 94 e5                                      ldr r3, [r4, #0x40]
0032fde8  03 00 a0 e1                                      mov r0, r3
0032fdec  00 30 93 e5                                      ldr r3, [r3]
0032fdf0  0f e0 a0 e1                                      mov lr, pc
0032fdf4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0032fdf8  00 30 a0 e3                                      mov r3, #0
0032fdfc  40 30 84 e5                                      str r3, [r4, #0x40]
0032fe00  44 30 94 e5                                      ldr r3, [r4, #0x44]
0032fe04  00 00 53 e3                                      cmp r3, #0
0032fe08  05 00 00 0a                                      beq #0x32fe24
0032fe0c  03 00 a0 e1                                      mov r0, r3
0032fe10  00 30 93 e5                                      ldr r3, [r3]
0032fe14  0f e0 a0 e1                                      mov lr, pc
0032fe18  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0032fe1c  00 30 a0 e3                                      mov r3, #0
0032fe20  44 30 84 e5                                      str r3, [r4, #0x44]
0032fe24  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0032fe28, declared_size=880, range_size=880, mode=arm
; class-group: Console
; alias: _ZN7Console11_createListERSt6vectorISsSaISsEEPc
; demangled: Console::_createList(std::vector<std::basic_string<char, std::char_traits<char>, std::allocator<char> >, std::allocator<std::basic_string<char, std::char_traits<char>, std::allocator<char> > > >&, char*)
; decoder-mode: arm
0032fe28  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0032fe2c  51 dd 4d e2                                      sub sp, sp, #0x1440
0032fe30  1c d0 4d e2                                      sub sp, sp, #0x1c
0032fe34  50 a3 9f e5                                      ldr sl, [pc, #0x350]
0032fe38  00 50 a0 e1                                      mov r5, r0
0032fe3c  02 b0 a0 e1                                      mov fp, r2
0032fe40  01 40 a0 e1                                      mov r4, r1
0032fe44  dd ff ff eb                                      bl #0x32fdc0
0032fe48  40 33 9f e5                                      ldr r3, [pc, #0x340]
0032fe4c  0a a0 8f e0                                      add sl, pc, sl
0032fe50  00 60 a0 e3                                      mov r6, #0
0032fe54  03 70 9a e7                                      ldr r7, [sl, r3]
0032fe58  01 80 a0 e3                                      mov r8, #1
0032fe5c  00 90 e0 e3                                      mvn sb, #0
0032fe60  10 30 97 e5                                      ldr r3, [r7, #0x10]
0032fe64  18 30 93 e5                                      ldr r3, [r3, #0x18]
0032fe68  03 00 a0 e1                                      mov r0, r3
0032fe6c  00 30 93 e5                                      ldr r3, [r3]
0032fe70  0f e0 a0 e1                                      mov lr, pc
0032fe74  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0032fe78  06 10 a0 e1                                      mov r1, r6
0032fe7c  00 30 90 e5                                      ldr r3, [r0]
0032fe80  0f e0 a0 e1                                      mov lr, pc
0032fe84  28 f0 93 e5                                      ldr pc, [r3, #0x28]
0032fe88  00 10 a0 e1                                      mov r1, r0
0032fe8c  00 30 a0 e1                                      mov r3, r0
0032fe90  51 0d 8d e2                                      add r0, sp, #0x1440
0032fe94  0b 20 a0 e1                                      mov r2, fp
0032fe98  04 00 80 e2                                      add r0, r0, #4
0032fe9c  00 30 93 e5                                      ldr r3, [r3]
0032fea0  0f e0 a0 e1                                      mov lr, pc
0032fea4  20 f0 93 e5                                      ldr pc, [r3, #0x20]
0032fea8  10 30 97 e5                                      ldr r3, [r7, #0x10]
0032feac  01 1a 8d e2                                      add r1, sp, #0x1000
0032feb0  44 24 91 e5                                      ldr r2, [r1, #0x444]
0032feb4  18 00 93 e5                                      ldr r0, [r3, #0x18]
0032feb8  48 34 91 e5                                      ldr r3, [r1, #0x448]
0032febc  01 ea 8d e2                                      add lr, sp, #0x1000
0032fec0  00 10 90 e5                                      ldr r1, [r0]
0032fec4  0e 20 82 e2                                      add r2, r2, #0xe
0032fec8  1c 30 83 e2                                      add r3, r3, #0x1c
0032fecc  a8 c0 91 e5                                      ldr ip, [r1, #0xa8]
0032fed0  0a 10 a0 e3                                      mov r1, #0xa
0032fed4  34 14 8e e5                                      str r1, [lr, #0x434]
0032fed8  14 10 a0 e3                                      mov r1, #0x14
0032fedc  38 14 8e e5                                      str r1, [lr, #0x438]
0032fee0  01 1a 8d e2                                      add r1, sp, #0x1000
0032fee4  3c 24 8e e5                                      str r2, [lr, #0x43c]
0032fee8  28 10 81 e2                                      add r1, r1, #0x28
0032feec  05 2b 8d e2                                      add r2, sp, #0x1400
0032fef0  40 34 8e e5                                      str r3, [lr, #0x440]
0032fef4  04 10 41 e2                                      sub r1, r1, #4
0032fef8  06 30 a0 e1                                      mov r3, r6
0032fefc  34 20 82 e2                                      add r2, r2, #0x34
0032ff00  00 60 8d e5                                      str r6, [sp]
0032ff04  04 60 8d e5                                      str r6, [sp, #4]
0032ff08  08 60 8d e5                                      str r6, [sp, #8]
0032ff0c  0c 80 8d e5                                      str r8, [sp, #0xc]
0032ff10  3c ff 2f e1                                      blx ip
0032ff14  02 10 a0 e3                                      mov r1, #2
0032ff18  44 00 85 e5                                      str r0, [r5, #0x44]
0032ff1c  00 30 90 e5                                      ldr r3, [r0]
0032ff20  01 20 a0 e1                                      mov r2, r1
0032ff24  0f e0 a0 e1                                      mov lr, pc
0032ff28  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
0032ff2c  44 00 95 e5                                      ldr r0, [r5, #0x44]
0032ff30  05 1b 8d e2                                      add r1, sp, #0x1400
0032ff34  01 2a 8d e2                                      add r2, sp, #0x1000
0032ff38  00 30 90 e5                                      ldr r3, [r0]
0032ff3c  84 30 93 e5                                      ldr r3, [r3, #0x84]
0032ff40  55 90 c1 e5                                      strb sb, [r1, #0x55]
0032ff44  57 90 c1 e5                                      strb sb, [r1, #0x57]
0032ff48  54 60 c1 e5                                      strb r6, [r1, #0x54]
0032ff4c  56 60 c1 e5                                      strb r6, [r1, #0x56]
0032ff50  54 14 92 e5                                      ldr r1, [r2, #0x454]
0032ff54  33 ff 2f e1                                      blx r3
0032ff58  44 00 95 e5                                      ldr r0, [r5, #0x44]
0032ff5c  05 cb 8d e2                                      add ip, sp, #0x1400
0032ff60  01 ea 8d e2                                      add lr, sp, #0x1000
0032ff64  00 30 90 e5                                      ldr r3, [r0]
0032ff68  94 30 93 e5                                      ldr r3, [r3, #0x94]
0032ff6c  53 90 cc e5                                      strb sb, [ip, #0x53]
0032ff70  50 60 cc e5                                      strb r6, [ip, #0x50]
0032ff74  51 60 cc e5                                      strb r6, [ip, #0x51]
0032ff78  52 60 cc e5                                      strb r6, [ip, #0x52]
0032ff7c  50 14 9e e5                                      ldr r1, [lr, #0x450]
0032ff80  33 ff 2f e1                                      blx r3
0032ff84  10 10 97 e5                                      ldr r1, [r7, #0x10]
0032ff88  44 30 95 e5                                      ldr r3, [r5, #0x44]
0032ff8c  10 20 91 e5                                      ldr r2, [r1, #0x10]
0032ff90  18 a0 91 e5                                      ldr sl, [r1, #0x18]
0032ff94  03 00 a0 e1                                      mov r0, r3
0032ff98  cc 20 92 e5                                      ldr r2, [r2, #0xcc]
0032ff9c  00 10 9a e5                                      ldr r1, [sl]
0032ffa0  00 30 93 e5                                      ldr r3, [r3]
0032ffa4  04 20 12 e5                                      ldr r2, [r2, #-4]
0032ffa8  98 c0 91 e5                                      ldr ip, [r1, #0x98]
0032ffac  10 90 92 e5                                      ldr sb, [r2, #0x10]
0032ffb0  0c b0 92 e5                                      ldr fp, [r2, #0xc]
0032ffb4  14 c0 8d e5                                      str ip, [sp, #0x14]
0032ffb8  0f e0 a0 e1                                      mov lr, pc
0032ffbc  ac f0 93 e5                                      ldr pc, [r3, #0xac]
0032ffc0  1e 0e 59 e3                                      cmp sb, #0x1e0
0032ffc4  1e 9e a0 a3                                      movge sb, #0x1e0
0032ffc8  0a 0d 5b e3                                      cmp fp, #0x280
0032ffcc  0a bd a0 a3                                      movge fp, #0x280
0032ffd0  01 1a 8d e2                                      add r1, sp, #0x1000
0032ffd4  18 00 80 e2                                      add r0, r0, #0x18
0032ffd8  32 30 a0 e3                                      mov r3, #0x32
0032ffdc  73 b0 4b e2                                      sub fp, fp, #0x73
0032ffe0  1e 90 49 e2                                      sub sb, sb, #0x1e
0032ffe4  24 34 81 e5                                      str r3, [r1, #0x424]
0032ffe8  28 04 81 e5                                      str r0, [r1, #0x428]
0032ffec  2c b4 81 e5                                      str fp, [r1, #0x42c]
0032fff0  30 94 81 e5                                      str sb, [r1, #0x430]
0032fff4  05 1b 8d e2                                      add r1, sp, #0x1400
0032fff8  06 20 a0 e1                                      mov r2, r6
0032fffc  24 10 81 e2                                      add r1, r1, #0x24
00330000  06 30 a0 e1                                      mov r3, r6
00330004  14 c0 9d e5                                      ldr ip, [sp, #0x14]
00330008  00 80 8d e5                                      str r8, [sp]
0033000c  0a 00 a0 e1                                      mov r0, sl
00330010  3c ff 2f e1                                      blx ip
00330014  40 00 85 e5                                      str r0, [r5, #0x40]
00330018  00 30 90 e5                                      ldr r3, [r0]
0033001c  08 10 a0 e1                                      mov r1, r8
00330020  0f e0 a0 e1                                      mov lr, pc
00330024  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
00330028  64 31 9f e5                                      ldr r3, [pc, #0x164]
0033002c  03 30 8f e0                                      add r3, pc, r3
00330030  00 20 d3 e5                                      ldrb r2, [r3]
00330034  06 00 52 e1                                      cmp r2, r6
00330038  28 00 00 0a                                      beq #0x3300e0
0033003c  04 20 94 e5                                      ldr r2, [r4, #4]
00330040  00 30 94 e5                                      ldr r3, [r4]
00330044  02 30 63 e0                                      rsb r3, r3, r2
00330048  c3 31 a0 e1                                      asr r3, r3, #3
0033004c  03 21 83 e0                                      add r2, r3, r3, lsl #2
00330050  02 22 82 e0                                      add r2, r2, r2, lsl #4
00330054  02 24 82 e0                                      add r2, r2, r2, lsl #8
00330058  02 28 82 e0                                      add r2, r2, r2, lsl #16
0033005c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00330060  00 00 53 e3                                      cmp r3, #0
00330064  14 00 00 0a                                      beq #0x3300bc
00330068  58 70 8d e2                                      add r7, sp, #0x58
0033006c  34 70 47 e2                                      sub r7, r7, #0x34
00330070  00 60 a0 e3                                      mov r6, #0
00330074  40 30 95 e5                                      ldr r3, [r5, #0x40]
00330078  07 10 a0 e1                                      mov r1, r7
0033007c  01 60 86 e2                                      add r6, r6, #1
00330080  03 00 a0 e1                                      mov r0, r3
00330084  00 30 93 e5                                      ldr r3, [r3]
00330088  0f e0 a0 e1                                      mov lr, pc
0033008c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00330090  04 20 94 e5                                      ldr r2, [r4, #4]
00330094  00 30 94 e5                                      ldr r3, [r4]
00330098  02 30 63 e0                                      rsb r3, r3, r2
0033009c  c3 31 a0 e1                                      asr r3, r3, #3
003300a0  03 21 83 e0                                      add r2, r3, r3, lsl #2
003300a4  02 22 82 e0                                      add r2, r2, r2, lsl #4
003300a8  02 24 82 e0                                      add r2, r2, r2, lsl #8
003300ac  02 28 82 e0                                      add r2, r2, r2, lsl #16
003300b0  82 30 83 e0                                      add r3, r3, r2, lsl #1
003300b4  03 00 56 e1                                      cmp r6, r3
003300b8  ed ff ff 3a                                      blo #0x330074
003300bc  40 30 95 e5                                      ldr r3, [r5, #0x40]
003300c0  00 10 e0 e3                                      mvn r1, #0
003300c4  03 00 a0 e1                                      mov r0, r3
003300c8  00 30 93 e5                                      ldr r3, [r3]
003300cc  0f e0 a0 e1                                      mov lr, pc
003300d0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003300d4  5c d0 8d e2                                      add sp, sp, #0x5c
003300d8  05 db 8d e2                                      add sp, sp, #0x1400
003300dc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003300e0  10 20 97 e5                                      ldr r2, [r7, #0x10]
003300e4  00 80 c3 e5                                      strb r8, [r3]
003300e8  51 6d 8d e2                                      add r6, sp, #0x1440
003300ec  18 30 92 e5                                      ldr r3, [r2, #0x18]
003300f0  18 60 86 e2                                      add r6, r6, #0x18
003300f4  03 00 a0 e1                                      mov r0, r3
003300f8  00 30 93 e5                                      ldr r3, [r3]
003300fc  0f e0 a0 e1                                      mov lr, pc
00330100  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00330104  03 10 a0 e3                                      mov r1, #3
00330108  00 30 90 e5                                      ldr r3, [r0]
0033010c  0f e0 a0 e1                                      mov lr, pc
00330110  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00330114  af 34 a0 e3                                      mov r3, #0xaf000000
00330118  18 20 8d e2                                      add r2, sp, #0x18
0033011c  50 ec e7 e7                                      ubfx lr, r0, #0x18, #8
00330120  50 c4 e7 e7                                      ubfx ip, r0, #8, #8
00330124  50 18 e7 e7                                      ubfx r1, r0, #0x10, #8
00330128  43 39 a0 e1                                      asr r3, r3, #0x12
0033012c  03 00 c6 e7                                      strb r0, [r6, r3]
00330130  03 e0 c2 e5                                      strb lr, [r2, #3]
00330134  01 c0 c2 e5                                      strb ip, [r2, #1]
00330138  02 10 c2 e5                                      strb r1, [r2, #2]
0033013c  03 30 96 e7                                      ldr r3, [r6, r3]
00330140  10 20 97 e5                                      ldr r2, [r7, #0x10]
00330144  01 ca 8d e2                                      add ip, sp, #0x1000
00330148  23 1c a0 e1                                      lsr r1, r3, #0x18
0033014c  32 10 81 e2                                      add r1, r1, #0x32
00330150  05 eb 8d e2                                      add lr, sp, #0x1400
00330154  4c 34 8c e5                                      str r3, [ip, #0x44c]
00330158  4f 10 ce e5                                      strb r1, [lr, #0x4f]
0033015c  18 30 92 e5                                      ldr r3, [r2, #0x18]
00330160  01 6a 8d e2                                      add r6, sp, #0x1000
00330164  03 00 a0 e1                                      mov r0, r3
00330168  00 30 93 e5                                      ldr r3, [r3]
0033016c  0f e0 a0 e1                                      mov lr, pc
00330170  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00330174  03 10 a0 e3                                      mov r1, #3
00330178  00 30 90 e5                                      ldr r3, [r0]
0033017c  4c 24 96 e5                                      ldr r2, [r6, #0x44c]
00330180  0f e0 a0 e1                                      mov lr, pc
00330184  14 f0 93 e5                                      ldr pc, [r3, #0x14]
00330188  ab ff ff ea                                      b #0x33003c
; mapping-symbol data/literal pool
0033018c  44 4c 66 00 f4 37 00 00 8c fc 66 00              .byte 0x44, 0x4c, 0x66, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x8c, 0xfc, 0x66, 0x00

; FUNCTION 0x00330198, declared_size=44, range_size=44, mode=arm
; class-group: Console
; alias: _ZN7Console10_addToListEPKc
; demangled: Console::_addToList(char const*)
; decoder-mode: arm
00330198  10 40 2d e9                                      push {r4, lr}
0033019c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
003301a0  40 30 90 e5                                      ldr r3, [r0, #0x40]
003301a4  01 10 8f e0                                      add r1, pc, r1
003301a8  03 00 a0 e1                                      mov r0, r3
003301ac  04 10 81 e2                                      add r1, r1, #4
003301b0  00 30 93 e5                                      ldr r3, [r3]
003301b4  0f e0 a0 e1                                      mov lr, pc
003301b8  84 f0 93 e5                                      ldr pc, [r3, #0x84]
003301bc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003301c0  14 fb 66 00                                      .byte 0x14, 0xfb, 0x66, 0x00

; FUNCTION 0x003301c4, declared_size=20, range_size=20, mode=arm
; class-group: Console
; alias: _ZN7Console17_setMenuLevelListEv
; demangled: Console::_setMenuLevelList()
; decoder-mode: arm
003301c4  08 20 9f e5                                      ldr r2, [pc, #8]
003301c8  10 10 80 e2                                      add r1, r0, #0x10
003301cc  02 20 8f e0                                      add r2, pc, r2
003301d0  14 ff ff ea                                      b #0x32fe28
; mapping-symbol data/literal pool
003301d4  bc f5 58 00                                      .byte 0xbc, 0xf5, 0x58, 0x00

; FUNCTION 0x003301d8, declared_size=4, range_size=4, mode=arm
; class-group: Console
; alias: _ZN7Console15_setMenuCamerasEv
; demangled: Console::_setMenuCameras()
; decoder-mode: arm
003301d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003301dc, declared_size=20, range_size=20, mode=arm
; class-group: Console
; alias: _ZN7Console25_setMenuLoadQuestProgressEv
; demangled: Console::_setMenuLoadQuestProgress()
; decoder-mode: arm
003301dc  08 20 9f e5                                      ldr r2, [pc, #8]
003301e0  34 10 80 e2                                      add r1, r0, #0x34
003301e4  02 20 8f e0                                      add r2, pc, r2
003301e8  0e ff ff ea                                      b #0x32fe28
; mapping-symbol data/literal pool
003301ec  ac f5 58 00                                      .byte 0xac, 0xf5, 0x58, 0x00

; FUNCTION 0x0033026c, declared_size=4, range_size=4, mode=arm
; class-group: Console
; alias: _ZN7Console24SetShowRoomDisplayedAnimEi
; demangled: Console::SetShowRoomDisplayedAnim(int)
; decoder-mode: arm
0033026c  1e ff 2f e1                                      bx lr

; FUNCTION 0x00330270, declared_size=76, range_size=76, mode=arm
; class-group: Console
; alias: _ZN7Console6UpdateEd
; demangled: Console::Update(double)
; decoder-mode: arm
00330270  10 40 2d e9                                      push {r4, lr}
00330274  40 30 90 e5                                      ldr r3, [r0, #0x40]
00330278  34 40 9f e5                                      ldr r4, [pc, #0x34]
0033027c  00 20 a0 e1                                      mov r2, r0
00330280  00 00 53 e3                                      cmp r3, #0
00330284  04 40 8f e0                                      add r4, pc, r4
00330288  04 00 00 0a                                      beq #0x3302a0
0033028c  03 00 a0 e1                                      mov r0, r3
00330290  0c 10 92 e5                                      ldr r1, [r2, #0xc]
00330294  00 30 93 e5                                      ldr r3, [r3]
00330298  0f e0 a0 e1                                      mov lr, pc
0033029c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003302a0  10 30 9f e5                                      ldr r3, [pc, #0x10]
003302a4  00 20 a0 e3                                      mov r2, #0
003302a8  03 30 94 e7                                      ldr r3, [r4, r3]
003302ac  00 20 c3 e5                                      strb r2, [r3]
003302b0  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
003302b4  0c 48 66 00 bc 48 00 00                          .byte 0x0c, 0x48, 0x66, 0x00, 0xbc, 0x48, 0x00, 0x00

; FUNCTION 0x003306a8, declared_size=152, range_size=152, mode=arm
; class-group: Console
; alias: _ZN7Console19CreateQuestSaveFileEv
; demangled: Console::CreateQuestSaveFile()
; decoder-mode: arm
003306a8  84 30 9f e5                                      ldr r3, [pc, #0x84]
003306ac  84 20 9f e5                                      ldr r2, [pc, #0x84]
003306b0  70 40 2d e9                                      push {r4, r5, r6, lr}
003306b4  03 30 8f e0                                      add r3, pc, r3
003306b8  02 40 93 e7                                      ldr r4, [r3, r2]
003306bc  78 10 9f e5                                      ldr r1, [pc, #0x78]
003306c0  08 d0 4d e2                                      sub sp, sp, #8
003306c4  10 00 94 e5                                      ldr r0, [r4, #0x10]
003306c8  01 10 8f e0                                      add r1, pc, r1
003306cc  01 20 a0 e3                                      mov r2, #1
003306d0  34 30 90 e5                                      ldr r3, [r0, #0x34]
003306d4  03 00 a0 e1                                      mov r0, r3
003306d8  00 30 93 e5                                      ldr r3, [r3]
003306dc  0f e0 a0 e1                                      mov lr, pc
003306e0  94 f0 93 e5                                      ldr pc, [r3, #0x94]
003306e4  00 60 50 e2                                      subs r6, r0, #0
003306e8  0f 00 00 0a                                      beq #0x33072c
003306ec  08 50 8d e2                                      add r5, sp, #8
003306f0  00 10 a0 e3                                      mov r1, #0
003306f4  01 20 a0 e3                                      mov r2, #1
003306f8  40 00 94 e5                                      ldr r0, [r4, #0x40]
003306fc  04 60 25 e5                                      str r6, [r5, #-4]!
00330700  0f f8 00 eb                                      bl #0x36e744
00330704  60 16 90 e5                                      ldr r1, [r0, #0x660]
00330708  06 00 a0 e1                                      mov r0, r6
0033070c  0b 2d 02 eb                                      bl #0x3bbb40
00330710  10 30 94 e5                                      ldr r3, [r4, #0x10]
00330714  05 10 a0 e1                                      mov r1, r5
00330718  34 30 93 e5                                      ldr r3, [r3, #0x34]
0033071c  03 00 a0 e1                                      mov r0, r3
00330720  00 30 93 e5                                      ldr r3, [r3]
00330724  0f e0 a0 e1                                      mov lr, pc
00330728  78 f0 93 e5                                      ldr pc, [r3, #0x78]
0033072c  08 d0 8d e2                                      add sp, sp, #8
00330730  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00330734  dc 43 66 00 f4 37 00 00 e0 f0 58 00              .byte 0xdc, 0x43, 0x66, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe0, 0xf0, 0x58, 0x00

; FUNCTION 0x003307ac, declared_size=552, range_size=552, mode=arm
; class-group: Console
; alias: _ZNK7Console19_getMaxNumberOfItemEv
; demangled: Console::_getMaxNumberOfItem() const
; decoder-mode: arm
003307ac  70 40 2d e9                                      push {r4, r5, r6, lr}
003307b0  f0 31 9f e5                                      ldr r3, [pc, #0x1f0]
003307b4  08 20 90 e5                                      ldr r2, [r0, #8]
003307b8  03 30 8f e0                                      add r3, pc, r3
003307bc  13 00 52 e3                                      cmp r2, #0x13
003307c0  02 f1 8f 90                                      addls pc, pc, r2, lsl #2
003307c4  1d 00 00 ea                                      b #0x330840
003307c8  1e 00 00 ea                                      b #0x330848
003307cc  27 00 00 ea                                      b #0x330870
003307d0  29 00 00 ea                                      b #0x33087c
003307d4  2b 00 00 ea                                      b #0x330888
003307d8  2d 00 00 ea                                      b #0x330894
003307dc  2e 00 00 ea                                      b #0x33089c
003307e0  31 00 00 ea                                      b #0x3308ac
003307e4  34 00 00 ea                                      b #0x3308bc
003307e8  37 00 00 ea                                      b #0x3308cc
003307ec  3a 00 00 ea                                      b #0x3308dc
003307f0  3d 00 00 ea                                      b #0x3308ec
003307f4  40 00 00 ea                                      b #0x3308fc
003307f8  10 00 00 ea                                      b #0x330840
003307fc  42 00 00 ea                                      b #0x33090c
00330800  45 00 00 ea                                      b #0x33091c
00330804  07 00 00 ea                                      b #0x330828
00330808  0c 00 00 ea                                      b #0x330840
0033080c  49 00 00 ea                                      b #0x330938
00330810  50 00 00 ea                                      b #0x330958
00330814  ff ff ff ea                                      b #0x330818
00330818  8c 21 9f e5                                      ldr r2, [pc, #0x18c]
0033081c  02 30 93 e7                                      ldr r3, [r3, r2]
00330820  00 00 93 e5                                      ldr r0, [r3]
00330824  70 80 bd e8                                      pop {r4, r5, r6, pc}
00330828  80 21 9f e5                                      ldr r2, [pc, #0x180]
0033082c  02 30 93 e7                                      ldr r3, [r3, r2]
00330830  40 00 93 e5                                      ldr r0, [r3, #0x40]
00330834  d6 ff ff eb                                      bl #0x330794
00330838  00 00 50 e3                                      cmp r0, #0
0033083c  48 00 00 1a                                      bne #0x330964
00330840  00 00 a0 e3                                      mov r0, #0
00330844  70 80 bd e8                                      pop {r4, r5, r6, pc}
00330848  10 30 90 e5                                      ldr r3, [r0, #0x10]
0033084c  14 20 90 e5                                      ldr r2, [r0, #0x14]
00330850  02 30 63 e0                                      rsb r3, r3, r2
00330854  c3 31 a0 e1                                      asr r3, r3, #3
00330858  03 01 83 e0                                      add r0, r3, r3, lsl #2
0033085c  00 02 80 e0                                      add r0, r0, r0, lsl #4
00330860  00 04 80 e0                                      add r0, r0, r0, lsl #8
00330864  00 08 80 e0                                      add r0, r0, r0, lsl #16
00330868  80 00 83 e0                                      add r0, r3, r0, lsl #1
0033086c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00330870  b2 ff ff eb                                      bl #0x330740
00330874  10 00 90 e5                                      ldr r0, [r0, #0x10]
00330878  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033087c  af ff ff eb                                      bl #0x330740
00330880  28 00 90 e5                                      ldr r0, [r0, #0x28]
00330884  70 80 bd e8                                      pop {r4, r5, r6, pc}
00330888  1b e7 03 eb                                      bl #0x42a4fc
0033088c  16 00 a0 e3                                      mov r0, #0x16
00330890  70 80 bd e8                                      pop {r4, r5, r6, pc}
00330894  0f 00 a0 e3                                      mov r0, #0xf
00330898  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033089c  10 21 9f e5                                      ldr r2, [pc, #0x110]
003308a0  02 30 93 e7                                      ldr r3, [r3, r2]
003308a4  00 00 93 e5                                      ldr r0, [r3]
003308a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003308ac  04 21 9f e5                                      ldr r2, [pc, #0x104]
003308b0  02 30 93 e7                                      ldr r3, [r3, r2]
003308b4  00 00 93 e5                                      ldr r0, [r3]
003308b8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003308bc  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
003308c0  02 30 93 e7                                      ldr r3, [r3, r2]
003308c4  00 00 93 e5                                      ldr r0, [r3]
003308c8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003308cc  ec 20 9f e5                                      ldr r2, [pc, #0xec]
003308d0  02 30 93 e7                                      ldr r3, [r3, r2]
003308d4  00 00 93 e5                                      ldr r0, [r3]
003308d8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003308dc  e0 20 9f e5                                      ldr r2, [pc, #0xe0]
003308e0  02 30 93 e7                                      ldr r3, [r3, r2]
003308e4  00 00 93 e5                                      ldr r0, [r3]
003308e8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003308ec  d4 20 9f e5                                      ldr r2, [pc, #0xd4]
003308f0  02 30 93 e7                                      ldr r3, [r3, r2]
003308f4  00 00 93 e5                                      ldr r0, [r3]
003308f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003308fc  c8 20 9f e5                                      ldr r2, [pc, #0xc8]
00330900  02 30 93 e7                                      ldr r3, [r3, r2]
00330904  00 00 93 e5                                      ldr r0, [r3]
00330908  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033090c  5e f0 03 eb                                      bl #0x42ca8c
00330910  88 f0 03 eb                                      bl #0x42cb38
00330914  01 00 80 e2                                      add r0, r0, #1
00330918  70 80 bd e8                                      pop {r4, r5, r6, pc}
0033091c  ac 20 9f e5                                      ldr r2, [pc, #0xac]
00330920  02 20 93 e7                                      ldr r2, [r3, r2]
00330924  18 30 92 e5                                      ldr r3, [r2, #0x18]
00330928  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0033092c  02 30 63 e0                                      rsb r3, r3, r2
00330930  43 31 a0 e1                                      asr r3, r3, #2
00330934  c7 ff ff ea                                      b #0x330858
00330938  a0 20 90 e5                                      ldr r2, [r0, #0xa0]
0033093c  a4 30 90 e5                                      ldr r3, [r0, #0xa4]
00330940  03 00 52 e1                                      cmp r2, r3
00330944  28 30 90 15                                      ldrne r3, [r0, #0x28]
00330948  2c 20 90 15                                      ldrne r2, [r0, #0x2c]
0033094c  1c 30 90 05                                      ldreq r3, [r0, #0x1c]
00330950  20 20 90 05                                      ldreq r2, [r0, #0x20]
00330954  bd ff ff ea                                      b #0x330850
00330958  34 30 90 e5                                      ldr r3, [r0, #0x34]
0033095c  38 20 90 e5                                      ldr r2, [r0, #0x38]
00330960  ba ff ff ea                                      b #0x330850
00330964  d8 52 90 e5                                      ldr r5, [r0, #0x2d8]
00330968  00 00 55 e3                                      cmp r5, #0
0033096c  b3 ff ff 0a                                      beq #0x330840
00330970  00 40 a0 e3                                      mov r4, #0
00330974  04 60 a0 e1                                      mov r6, r4
00330978  05 00 a0 e1                                      mov r0, r5
0033097c  48 01 05 eb                                      bl #0x470ea4
00330980  04 00 50 e1                                      cmp r0, r4
00330984  04 10 a0 e1                                      mov r1, r4
00330988  05 00 a0 e1                                      mov r0, r5
0033098c  01 00 00 ca                                      bgt #0x330998
00330990  06 00 a0 e1                                      mov r0, r6
00330994  70 80 bd e8                                      pop {r4, r5, r6, pc}
00330998  3d 01 05 eb                                      bl #0x470e94
0033099c  01 40 84 e2                                      add r4, r4, #1
003309a0  00 60 86 e0                                      add r6, r6, r0
003309a4  f3 ff ff ea                                      b #0x330978
; mapping-symbol data/literal pool
003309a8  d8 42 66 00 70 3a 00 00 f4 37 00 00 20 35 00 00  .byte 0xd8, 0x42, 0x66, 0x00, 0x70, 0x3a, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0x35, 0x00, 0x00
003309b8  24 44 00 00 c0 18 00 00 74 22 00 00 38 22 00 00  .byte 0x24, 0x44, 0x00, 0x00, 0xc0, 0x18, 0x00, 0x00, 0x74, 0x22, 0x00, 0x00, 0x38, 0x22, 0x00, 0x00
003309c8  88 0b 00 00 c4 06 00 00 20 1a 00 00              .byte 0x88, 0x0b, 0x00, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00

; FUNCTION 0x003309d4, declared_size=104, range_size=104, mode=arm
; class-group: Console
; alias: _ZN7Console15_cmdReloadLevelEv
; demangled: Console::_cmdReloadLevel()
; decoder-mode: arm
003309d4  58 30 9f e5                                      ldr r3, [pc, #0x58]
003309d8  58 20 9f e5                                      ldr r2, [pc, #0x58]
003309dc  10 40 2d e9                                      push {r4, lr}
003309e0  03 30 8f e0                                      add r3, pc, r3
003309e4  02 40 93 e7                                      ldr r4, [r3, r2]
003309e8  18 d0 4d e2                                      sub sp, sp, #0x18
003309ec  04 00 a0 e1                                      mov r0, r4
003309f0  e7 ba ff eb                                      bl #0x31f594
003309f4  00 00 50 e3                                      cmp r0, #0
003309f8  0b 00 00 0a                                      beq #0x330a2c
003309fc  00 c0 a0 e3                                      mov ip, #0
00330a00  0c 11 90 e5                                      ldr r1, [r0, #0x10c]
00330a04  01 e0 a0 e3                                      mov lr, #1
00330a08  0c 20 a0 e1                                      mov r2, ip
00330a0c  04 00 a0 e1                                      mov r0, r4
00330a10  0c 30 a0 e1                                      mov r3, ip
00330a14  00 50 8d e8                                      stm sp, {ip, lr}
00330a18  08 c0 8d e5                                      str ip, [sp, #8]
00330a1c  0c c0 8d e5                                      str ip, [sp, #0xc]
00330a20  10 c0 8d e5                                      str ip, [sp, #0x10]
00330a24  14 c0 8d e5                                      str ip, [sp, #0x14]
00330a28  e6 ec ff eb                                      bl #0x32bdc8
00330a2c  18 d0 8d e2                                      add sp, sp, #0x18
00330a30  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00330a34  b0 40 66 00 f4 37 00 00                          .byte 0xb0, 0x40, 0x66, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00330b6c, declared_size=68, range_size=68, mode=arm
; class-group: Console
; alias: _ZN7Console28_setMenuLoadModuleFolderListEv
; demangled: Console::_setMenuLoadModuleFolderList()
; decoder-mode: arm
00330b6c  34 10 9f e5                                      ldr r1, [pc, #0x34]
00330b70  00 30 a0 e3                                      mov r3, #0
00330b74  10 40 2d e9                                      push {r4, lr}
00330b78  01 10 8f e0                                      add r1, pc, r1
00330b7c  00 40 a0 e1                                      mov r4, r0
00330b80  0c 30 80 e5                                      str r3, [r0, #0xc]
00330b84  01 20 a0 e1                                      mov r2, r1
00330b88  90 00 80 e2                                      add r0, r0, #0x90
00330b8c  93 7f ff eb                                      bl #0x3109e0
00330b90  14 20 9f e5                                      ldr r2, [pc, #0x14]
00330b94  04 00 a0 e1                                      mov r0, r4
00330b98  1c 10 84 e2                                      add r1, r4, #0x1c
00330b9c  02 20 8f e0                                      add r2, pc, r2
00330ba0  10 40 bd e8                                      pop {r4, lr}
00330ba4  9f fc ff ea                                      b #0x32fe28
; mapping-symbol data/literal pool
00330ba8  90 ac 59 00 2c ec 58 00                          .byte 0x90, 0xac, 0x59, 0x00, 0x2c, 0xec, 0x58, 0x00

; FUNCTION 0x00330bf0, declared_size=208, range_size=208, mode=arm
; class-group: Console
; alias: _ZN7Console16_setMenuAnimListEv
; demangled: Console::_setMenuAnimList()
; decoder-mode: arm
00330bf0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00330bf4  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
00330bf8  10 d0 4d e2                                      sub sp, sp, #0x10
00330bfc  04 60 8d e2                                      add r6, sp, #4
00330c00  00 50 a0 e3                                      mov r5, #0
00330c04  00 40 a0 e1                                      mov r4, r0
00330c08  02 20 8f e0                                      add r2, pc, r2
00330c0c  06 10 a0 e1                                      mov r1, r6
00330c10  04 50 8d e5                                      str r5, [sp, #4]
00330c14  08 50 8d e5                                      str r5, [sp, #8]
00330c18  0c 50 8d e5                                      str r5, [sp, #0xc]
00330c1c  90 80 9f e5                                      ldr r8, [pc, #0x90]
00330c20  80 fc ff eb                                      bl #0x32fe28
00330c24  40 30 94 e5                                      ldr r3, [r4, #0x40]
00330c28  88 a0 9f e5                                      ldr sl, [pc, #0x88]
00330c2c  08 80 8f e0                                      add r8, pc, r8
00330c30  03 00 a0 e1                                      mov r0, r3
00330c34  00 30 93 e5                                      ldr r3, [r3]
00330c38  0f e0 a0 e1                                      mov lr, pc
00330c3c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00330c40  0a 30 98 e7                                      ldr r3, [r8, sl]
00330c44  00 30 93 e5                                      ldr r3, [r3]
00330c48  05 00 53 e1                                      cmp r3, r5
00330c4c  0d 00 00 0a                                      beq #0x330c88
00330c50  64 30 9f e5                                      ldr r3, [pc, #0x64]
00330c54  05 70 a0 e1                                      mov r7, r5
00330c58  03 90 98 e7                                      ldr sb, [r8, r3]
00330c5c  00 30 99 e5                                      ldr r3, [sb]
00330c60  04 00 a0 e1                                      mov r0, r4
00330c64  01 70 87 e2                                      add r7, r7, #1
00330c68  05 30 83 e0                                      add r3, r3, r5
00330c6c  08 10 93 e5                                      ldr r1, [r3, #8]
00330c70  48 fd ff eb                                      bl #0x330198
00330c74  0a 30 98 e7                                      ldr r3, [r8, sl]
00330c78  0c 50 85 e2                                      add r5, r5, #0xc
00330c7c  00 30 93 e5                                      ldr r3, [r3]
00330c80  07 00 53 e1                                      cmp r3, r7
00330c84  f4 ff ff 8a                                      bhi #0x330c5c
00330c88  40 30 94 e5                                      ldr r3, [r4, #0x40]
00330c8c  00 10 e0 e3                                      mvn r1, #0
00330c90  03 00 a0 e1                                      mov r0, r3
00330c94  00 30 93 e5                                      ldr r3, [r3]
00330c98  0f e0 a0 e1                                      mov lr, pc
00330c9c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00330ca0  06 00 a0 e1                                      mov r0, r6
00330ca4  a1 8c ff eb                                      bl #0x313f30
00330ca8  10 d0 8d e2                                      add sp, sp, #0x10
00330cac  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00330cb0  e0 eb 58 00 64 3e 66 00 38 22 00 00 70 0e 00 00  .byte 0xe0, 0xeb, 0x58, 0x00, 0x64, 0x3e, 0x66, 0x00, 0x38, 0x22, 0x00, 0x00, 0x70, 0x0e, 0x00, 0x00

; FUNCTION 0x00330cc0, declared_size=176, range_size=176, mode=arm
; class-group: Console
; alias: _ZN7Console18_setMenuVFXSetListEv
; demangled: Console::_setMenuVFXSetList()
; decoder-mode: arm
00330cc0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00330cc4  94 20 9f e5                                      ldr r2, [pc, #0x94]
00330cc8  94 40 9f e5                                      ldr r4, [pc, #0x94]
00330ccc  14 d0 4d e2                                      sub sp, sp, #0x14
00330cd0  90 60 9f e5                                      ldr r6, [pc, #0x90]
00330cd4  04 80 8d e2                                      add r8, sp, #4
00330cd8  00 70 a0 e3                                      mov r7, #0
00330cdc  04 40 8f e0                                      add r4, pc, r4
00330ce0  02 20 8f e0                                      add r2, pc, r2
00330ce4  08 10 a0 e1                                      mov r1, r8
00330ce8  04 70 8d e5                                      str r7, [sp, #4]
00330cec  08 70 8d e5                                      str r7, [sp, #8]
00330cf0  0c 70 8d e5                                      str r7, [sp, #0xc]
00330cf4  00 50 a0 e1                                      mov r5, r0
00330cf8  4a fc ff eb                                      bl #0x32fe28
00330cfc  06 30 94 e7                                      ldr r3, [r4, r6]
00330d00  00 30 93 e5                                      ldr r3, [r3]
00330d04  07 00 53 e1                                      cmp r3, r7
00330d08  0a 00 00 0a                                      beq #0x330d38
00330d0c  58 30 9f e5                                      ldr r3, [pc, #0x58]
00330d10  03 a0 94 e7                                      ldr sl, [r4, r3]
00330d14  00 30 9a e5                                      ldr r3, [sl]
00330d18  05 00 a0 e1                                      mov r0, r5
00330d1c  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
00330d20  1c fd ff eb                                      bl #0x330198
00330d24  06 30 94 e7                                      ldr r3, [r4, r6]
00330d28  01 70 87 e2                                      add r7, r7, #1
00330d2c  00 30 93 e5                                      ldr r3, [r3]
00330d30  07 00 53 e1                                      cmp r3, r7
00330d34  f6 ff ff 8a                                      bhi #0x330d14
00330d38  40 30 95 e5                                      ldr r3, [r5, #0x40]
00330d3c  00 10 e0 e3                                      mvn r1, #0
00330d40  03 00 a0 e1                                      mov r0, r3
00330d44  00 30 93 e5                                      ldr r3, [r3]
00330d48  0f e0 a0 e1                                      mov lr, pc
00330d4c  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00330d50  08 00 a0 e1                                      mov r0, r8
00330d54  75 8c ff eb                                      bl #0x313f30
00330d58  14 d0 8d e2                                      add sp, sp, #0x14
00330d5c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00330d60  10 eb 58 00 b4 3d 66 00 c4 06 00 00 94 12 00 00  .byte 0x10, 0xeb, 0x58, 0x00, 0xb4, 0x3d, 0x66, 0x00, 0xc4, 0x06, 0x00, 0x00, 0x94, 0x12, 0x00, 0x00

; FUNCTION 0x00330d70, declared_size=176, range_size=176, mode=arm
; class-group: Console
; alias: _ZN7Console15_setMenuVFXListEv
; demangled: Console::_setMenuVFXList()
; decoder-mode: arm
00330d70  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00330d74  94 20 9f e5                                      ldr r2, [pc, #0x94]
00330d78  94 40 9f e5                                      ldr r4, [pc, #0x94]
00330d7c  14 d0 4d e2                                      sub sp, sp, #0x14
00330d80  90 60 9f e5                                      ldr r6, [pc, #0x90]
00330d84  04 80 8d e2                                      add r8, sp, #4
00330d88  00 70 a0 e3                                      mov r7, #0
00330d8c  04 40 8f e0                                      add r4, pc, r4
00330d90  02 20 8f e0                                      add r2, pc, r2
00330d94  08 10 a0 e1                                      mov r1, r8
00330d98  04 70 8d e5                                      str r7, [sp, #4]
00330d9c  08 70 8d e5                                      str r7, [sp, #8]
00330da0  0c 70 8d e5                                      str r7, [sp, #0xc]
00330da4  00 50 a0 e1                                      mov r5, r0
00330da8  1e fc ff eb                                      bl #0x32fe28
00330dac  06 30 94 e7                                      ldr r3, [r4, r6]
00330db0  00 30 93 e5                                      ldr r3, [r3]
00330db4  07 00 53 e1                                      cmp r3, r7
00330db8  0a 00 00 0a                                      beq #0x330de8
00330dbc  58 30 9f e5                                      ldr r3, [pc, #0x58]
00330dc0  03 a0 94 e7                                      ldr sl, [r4, r3]
00330dc4  00 30 9a e5                                      ldr r3, [sl]
00330dc8  05 00 a0 e1                                      mov r0, r5
00330dcc  07 11 93 e7                                      ldr r1, [r3, r7, lsl #2]
00330dd0  f0 fc ff eb                                      bl #0x330198
00330dd4  06 30 94 e7                                      ldr r3, [r4, r6]
00330dd8  01 70 87 e2                                      add r7, r7, #1
00330ddc  00 30 93 e5                                      ldr r3, [r3]
00330de0  07 00 53 e1                                      cmp r3, r7
00330de4  f6 ff ff 8a                                      bhi #0x330dc4
00330de8  40 30 95 e5                                      ldr r3, [r5, #0x40]
00330dec  00 10 e0 e3                                      mvn r1, #0
00330df0  03 00 a0 e1                                      mov r0, r3
00330df4  00 30 93 e5                                      ldr r3, [r3]
00330df8  0f e0 a0 e1                                      mov lr, pc
00330dfc  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
00330e00  08 00 a0 e1                                      mov r0, r8
00330e04  49 8c ff eb                                      bl #0x313f30
00330e08  14 d0 8d e2                                      add sp, sp, #0x14
00330e0c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00330e10  68 ea 58 00 04 3d 66 00 88 0b 00 00 ec 26 00 00  .byte 0x68, 0xea, 0x58, 0x00, 0x04, 0x3d, 0x66, 0x00, 0x88, 0x0b, 0x00, 0x00, 0xec, 0x26, 0x00, 0x00

; FUNCTION 0x00330e20, declared_size=192, range_size=192, mode=arm
; class-group: Console
; alias: _ZN7Console17_setLootTableListEv
; demangled: Console::_setLootTableList()
; decoder-mode: arm
00330e20  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00330e24  a0 20 9f e5                                      ldr r2, [pc, #0xa0]
00330e28  10 d0 4d e2                                      sub sp, sp, #0x10
00330e2c  04 60 8d e2                                      add r6, sp, #4
00330e30  00 50 a0 e3                                      mov r5, #0
00330e34  00 40 a0 e1                                      mov r4, r0
00330e38  02 20 8f e0                                      add r2, pc, r2
00330e3c  06 10 a0 e1                                      mov r1, r6
00330e40  04 50 8d e5                                      str r5, [sp, #4]
00330e44  08 50 8d e5                                      str r5, [sp, #8]
00330e48  0c 50 8d e5                                      str r5, [sp, #0xc]
00330e4c  7c 70 9f e5                                      ldr r7, [pc, #0x7c]
00330e50  f4 fb ff eb                                      bl #0x32fe28
00330e54  40 30 94 e5                                      ldr r3, [r4, #0x40]
00330e58  74 80 9f e5                                      ldr r8, [pc, #0x74]
00330e5c  07 70 8f e0                                      add r7, pc, r7
00330e60  03 00 a0 e1                                      mov r0, r3
00330e64  00 30 93 e5                                      ldr r3, [r3]
00330e68  0f e0 a0 e1                                      mov lr, pc
00330e6c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00330e70  08 30 97 e7                                      ldr r3, [r7, r8]
00330e74  00 30 93 e5                                      ldr r3, [r3]
00330e78  05 00 53 e1                                      cmp r3, r5
00330e7c  0e 00 00 0a                                      beq #0x330ebc
00330e80  50 a0 9f e5                                      ldr sl, [pc, #0x50]
00330e84  50 90 9f e5                                      ldr sb, [pc, #0x50]
00330e88  0a a0 8f e0                                      add sl, pc, sl
00330e8c  03 00 55 e1                                      cmp r5, r3
00330e90  09 30 97 37                                      ldrlo r3, [r7, sb]
00330e94  0a 10 a0 21                                      movhs r1, sl
00330e98  04 00 a0 e1                                      mov r0, r4
00330e9c  00 30 93 35                                      ldrlo r3, [r3]
00330ea0  05 11 93 37                                      ldrlo r1, [r3, r5, lsl #2]
00330ea4  bb fc ff eb                                      bl #0x330198
00330ea8  08 30 97 e7                                      ldr r3, [r7, r8]
00330eac  01 50 85 e2                                      add r5, r5, #1
00330eb0  00 30 93 e5                                      ldr r3, [r3]
00330eb4  05 00 53 e1                                      cmp r3, r5
00330eb8  f3 ff ff 8a                                      bhi #0x330e8c
00330ebc  06 00 a0 e1                                      mov r0, r6
00330ec0  1a 8c ff eb                                      bl #0x313f30
00330ec4  10 d0 8d e2                                      add sp, sp, #0x10
00330ec8  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
; mapping-symbol data/literal pool
00330ecc  c8 e9 58 00 34 3c 66 00 20 35 00 00 88 e9 58 00  .byte 0xc8, 0xe9, 0x58, 0x00, 0x34, 0x3c, 0x66, 0x00, 0x20, 0x35, 0x00, 0x00, 0x88, 0xe9, 0x58, 0x00
00330edc  78 2e 00 00                                      .byte 0x78, 0x2e, 0x00, 0x00

; FUNCTION 0x00330ee0, declared_size=280, range_size=280, mode=arm
; class-group: Console
; alias: _ZN7Console19_setMenuCharModulesEv
; demangled: Console::_setMenuCharModules()
; decoder-mode: arm
00330ee0  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00330ee4  41 de 4d e2                                      sub sp, sp, #0x410
00330ee8  04 d0 4d e2                                      sub sp, sp, #4
00330eec  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00330ef0  01 ab 8d e2                                      add sl, sp, #0x400
00330ef4  04 a0 8a e2                                      add sl, sl, #4
00330ef8  00 50 a0 e3                                      mov r5, #0
00330efc  02 20 8f e0                                      add r2, pc, r2
00330f00  00 70 a0 e1                                      mov r7, r0
00330f04  0a 10 a0 e1                                      mov r1, sl
00330f08  04 54 8d e5                                      str r5, [sp, #0x404]
00330f0c  08 54 8d e5                                      str r5, [sp, #0x408]
00330f10  0c 54 8d e5                                      str r5, [sp, #0x40c]
00330f14  c3 fb ff eb                                      bl #0x32fe28
00330f18  40 30 97 e5                                      ldr r3, [r7, #0x40]
00330f1c  cc 40 9f e5                                      ldr r4, [pc, #0xcc]
00330f20  03 00 a0 e1                                      mov r0, r3
00330f24  00 30 93 e5                                      ldr r3, [r3]
00330f28  0f e0 a0 e1                                      mov lr, pc
00330f2c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00330f30  bc 30 9f e5                                      ldr r3, [pc, #0xbc]
00330f34  04 40 8f e0                                      add r4, pc, r4
00330f38  05 10 a0 e1                                      mov r1, r5
00330f3c  03 30 94 e7                                      ldr r3, [r4, r3]
00330f40  01 20 a0 e3                                      mov r2, #1
00330f44  40 00 93 e5                                      ldr r0, [r3, #0x40]
00330f48  4a f5 00 eb                                      bl #0x36e478
00330f4c  60 36 90 e5                                      ldr r3, [r0, #0x660]
00330f50  05 00 53 e1                                      cmp r3, r5
00330f54  1f 00 00 0a                                      beq #0x330fd8
00330f58  d8 62 93 e5                                      ldr r6, [r3, #0x2d8]
00330f5c  05 00 56 e1                                      cmp r6, r5
00330f60  10 80 8d 12                                      addne r8, sp, #0x10
00330f64  0c 80 48 12                                      subne r8, r8, #0xc
00330f68  1a 00 00 0a                                      beq #0x330fd8
00330f6c  06 00 a0 e1                                      mov r0, r6
00330f70  cb ff 04 eb                                      bl #0x470ea4
00330f74  05 00 50 e1                                      cmp r0, r5
00330f78  16 00 00 da                                      ble #0x330fd8
00330f7c  00 40 a0 e3                                      mov r4, #0
00330f80  07 00 00 ea                                      b #0x330fa4
00330f84  ba ff 04 eb                                      bl #0x470e74
00330f88  40 30 97 e5                                      ldr r3, [r7, #0x40]
00330f8c  08 10 a0 e1                                      mov r1, r8
00330f90  01 40 84 e2                                      add r4, r4, #1
00330f94  03 00 a0 e1                                      mov r0, r3
00330f98  00 30 93 e5                                      ldr r3, [r3]
00330f9c  0f e0 a0 e1                                      mov lr, pc
00330fa0  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00330fa4  05 10 a0 e1                                      mov r1, r5
00330fa8  06 00 a0 e1                                      mov r0, r6
00330fac  b8 ff 04 eb                                      bl #0x470e94
00330fb0  00 00 54 e1                                      cmp r4, r0
00330fb4  04 20 a0 e1                                      mov r2, r4
00330fb8  05 10 a0 e1                                      mov r1, r5
00330fbc  06 00 a0 e1                                      mov r0, r6
00330fc0  ef ff ff ba                                      blt #0x330f84
00330fc4  06 00 a0 e1                                      mov r0, r6
00330fc8  b5 ff 04 eb                                      bl #0x470ea4
00330fcc  01 50 85 e2                                      add r5, r5, #1
00330fd0  05 00 50 e1                                      cmp r0, r5
00330fd4  e8 ff ff ca                                      bgt #0x330f7c
00330fd8  0a 00 a0 e1                                      mov r0, sl
00330fdc  d3 8b ff eb                                      bl #0x313f30
00330fe0  14 d0 8d e2                                      add sp, sp, #0x14
00330fe4  01 db 8d e2                                      add sp, sp, #0x400
00330fe8  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
; mapping-symbol data/literal pool
00330fec  1c e9 58 00 5c 3b 66 00 f4 37 00 00              .byte 0x1c, 0xe9, 0x58, 0x00, 0x5c, 0x3b, 0x66, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00330ff8, declared_size=328, range_size=328, mode=arm
; class-group: Console
; alias: _ZN7Console15_setMenuScriptsEv
; demangled: Console::_setMenuScripts()
; decoder-mode: arm
00330ff8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00330ffc  2c 21 9f e5                                      ldr r2, [pc, #0x12c]
00331000  24 d0 4d e2                                      sub sp, sp, #0x24
00331004  0c 30 8d e2                                      add r3, sp, #0xc
00331008  00 40 a0 e3                                      mov r4, #0
0033100c  00 50 a0 e1                                      mov r5, r0
00331010  03 10 a0 e1                                      mov r1, r3
00331014  02 20 8f e0                                      add r2, pc, r2
00331018  04 30 8d e5                                      str r3, [sp, #4]
0033101c  0c 40 8d e5                                      str r4, [sp, #0xc]
00331020  10 40 8d e5                                      str r4, [sp, #0x10]
00331024  14 40 8d e5                                      str r4, [sp, #0x14]
00331028  7e fb ff eb                                      bl #0x32fe28
0033102c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00331030  fc 60 9f e5                                      ldr r6, [pc, #0xfc]
00331034  03 00 a0 e1                                      mov r0, r3
00331038  00 30 93 e5                                      ldr r3, [r3]
0033103c  0f e0 a0 e1                                      mov lr, pc
00331040  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00331044  ec 30 9f e5                                      ldr r3, [pc, #0xec]
00331048  06 60 8f e0                                      add r6, pc, r6
0033104c  03 60 96 e7                                      ldr r6, [r6, r3]
00331050  1c a0 96 e5                                      ldr sl, [r6, #0x1c]
00331054  18 30 96 e5                                      ldr r3, [r6, #0x18]
00331058  0a 30 63 e0                                      rsb r3, r3, sl
0033105c  43 31 a0 e1                                      asr r3, r3, #2
00331060  03 a1 83 e0                                      add sl, r3, r3, lsl #2
00331064  0a a2 8a e0                                      add sl, sl, sl, lsl #4
00331068  0a a4 8a e0                                      add sl, sl, sl, lsl #8
0033106c  0a a8 8a e0                                      add sl, sl, sl, lsl #16
00331070  8a a0 83 e0                                      add sl, r3, sl, lsl #1
00331074  04 00 5a e1                                      cmp sl, r4
00331078  24 00 00 da                                      ble #0x331110
0033107c  ff 74 a0 e3                                      mov r7, #0xff000000
00331080  ff 86 a0 e3                                      mov r8, #0xff00000
00331084  ff 7c 87 e2                                      add r7, r7, #0xff00
00331088  0f 88 88 e2                                      add r8, r8, #0xf0000
0033108c  1c b0 8d e2                                      add fp, sp, #0x1c
00331090  0a 90 a0 e1                                      mov sb, sl
00331094  04 10 a0 e1                                      mov r1, r4
00331098  06 00 a0 e1                                      mov r0, r6
0033109c  d2 92 04 eb                                      bl #0x455bec
003310a0  04 10 a0 e1                                      mov r1, r4
003310a4  00 00 50 e3                                      cmp r0, #0
003310a8  06 00 a0 e1                                      mov r0, r6
003310ac  07 a0 a0 11                                      movne sl, r7
003310b0  08 a0 a0 01                                      moveq sl, r8
003310b4  b4 92 04 eb                                      bl #0x455b8c
003310b8  00 10 a0 e1                                      mov r1, r0
003310bc  05 00 a0 e1                                      mov r0, r5
003310c0  34 fc ff eb                                      bl #0x330198
003310c4  40 00 95 e5                                      ldr r0, [r5, #0x40]
003310c8  00 e0 a0 e3                                      mov lr, #0
003310cc  2a 1c a0 e1                                      lsr r1, sl, #0x18
003310d0  00 c0 90 e5                                      ldr ip, [r0]
003310d4  5a 34 e7 e7                                      ubfx r3, sl, #8, #8
003310d8  5a 28 e7 e7                                      ubfx r2, sl, #0x10, #8
003310dc  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
003310e0  1e 10 cd e5                                      strb r1, [sp, #0x1e]
003310e4  1d 20 cd e5                                      strb r2, [sp, #0x1d]
003310e8  1c 30 cd e5                                      strb r3, [sp, #0x1c]
003310ec  04 10 a0 e1                                      mov r1, r4
003310f0  1f e0 cd e5                                      strb lr, [sp, #0x1f]
003310f4  18 a0 8d e5                                      str sl, [sp, #0x18]
003310f8  01 40 84 e2                                      add r4, r4, #1
003310fc  0e 20 a0 e1                                      mov r2, lr
00331100  0b 30 a0 e1                                      mov r3, fp
00331104  3c ff 2f e1                                      blx ip
00331108  09 00 54 e1                                      cmp r4, sb
0033110c  e0 ff ff 1a                                      bne #0x331094
00331110  24 10 9f e5                                      ldr r1, [pc, #0x24]
00331114  05 00 a0 e1                                      mov r0, r5
00331118  01 10 8f e0                                      add r1, pc, r1
0033111c  1d fc ff eb                                      bl #0x330198
00331120  04 00 9d e5                                      ldr r0, [sp, #4]
00331124  81 8b ff eb                                      bl #0x313f30
00331128  24 d0 8d e2                                      add sp, sp, #0x24
0033112c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00331130  1c e8 58 00 48 3a 66 00 20 1a 00 00 20 e7 58 00  .byte 0x1c, 0xe8, 0x58, 0x00, 0x48, 0x3a, 0x66, 0x00, 0x20, 0x1a, 0x00, 0x00, 0x20, 0xe7, 0x58, 0x00

; FUNCTION 0x00331140, declared_size=380, range_size=380, mode=arm
; class-group: Console
; alias: _ZN7Console13_setMenuMenusEv
; demangled: Console::_setMenuMenus()
; decoder-mode: arm
00331140  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00331144  60 11 9f e5                                      ldr r1, [pc, #0x160]
00331148  60 21 9f e5                                      ldr r2, [pc, #0x160]
0033114c  4c d0 4d e2                                      sub sp, sp, #0x4c
00331150  01 10 8f e0                                      add r1, pc, r1
00331154  02 30 91 e7                                      ldr r3, [r1, r2]
00331158  10 20 8d e5                                      str r2, [sp, #0x10]
0033115c  50 21 9f e5                                      ldr r2, [pc, #0x150]
00331160  00 30 93 e5                                      ldr r3, [r3]
00331164  00 50 a0 e1                                      mov r5, r0
00331168  02 20 8f e0                                      add r2, pc, r2
0033116c  00 40 a0 e3                                      mov r4, #0
00331170  0c 10 8d e5                                      str r1, [sp, #0xc]
00331174  18 10 8d e2                                      add r1, sp, #0x18
00331178  14 10 8d e5                                      str r1, [sp, #0x14]
0033117c  44 30 8d e5                                      str r3, [sp, #0x44]
00331180  18 40 8d e5                                      str r4, [sp, #0x18]
00331184  1c 40 8d e5                                      str r4, [sp, #0x1c]
00331188  20 40 8d e5                                      str r4, [sp, #0x20]
0033118c  25 fb ff eb                                      bl #0x32fe28
00331190  40 30 95 e5                                      ldr r3, [r5, #0x40]
00331194  03 00 a0 e1                                      mov r0, r3
00331198  00 30 93 e5                                      ldr r3, [r3]
0033119c  0f e0 a0 e1                                      mov lr, pc
003311a0  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003311a4  38 ee 03 eb                                      bl #0x42ca8c
003311a8  00 60 a0 e1                                      mov r6, r0
003311ac  61 ee 03 eb                                      bl #0x42cb38
003311b0  00 00 50 e3                                      cmp r0, #0
003311b4  04 00 8d e5                                      str r0, [sp, #4]
003311b8  2b 00 00 da                                      ble #0x33126c
003311bc  ff a4 a0 e3                                      mov sl, #0xff000000
003311c0  ff 96 a0 e3                                      mov sb, #0xff00000
003311c4  28 20 8d e2                                      add r2, sp, #0x28
003311c8  ff ac 8a e2                                      add sl, sl, #0xff00
003311cc  0f 98 89 e2                                      add sb, sb, #0xf0000
003311d0  2c 70 8d e2                                      add r7, sp, #0x2c
003311d4  08 20 8d e5                                      str r2, [sp, #8]
003311d8  04 10 a0 e1                                      mov r1, r4
003311dc  06 00 a0 e1                                      mov r0, r6
003311e0  59 ee 03 eb                                      bl #0x42cb4c
003311e4  82 b8 03 eb                                      bl #0x41f3f4
003311e8  04 20 a0 e1                                      mov r2, r4
003311ec  00 00 50 e3                                      cmp r0, #0
003311f0  06 10 a0 e1                                      mov r1, r6
003311f4  07 00 a0 e1                                      mov r0, r7
003311f8  0a 80 a0 11                                      movne r8, sl
003311fc  09 80 a0 01                                      moveq r8, sb
00331200  a4 f3 03 eb                                      bl #0x42e098
00331204  40 10 9d e5                                      ldr r1, [sp, #0x40]
00331208  05 00 a0 e1                                      mov r0, r5
0033120c  e1 fb ff eb                                      bl #0x330198
00331210  40 30 95 e5                                      ldr r3, [r5, #0x40]
00331214  00 10 a0 e1                                      mov r1, r0
00331218  28 ec a0 e1                                      lsr lr, r8, #0x18
0033121c  00 c0 93 e5                                      ldr ip, [r3]
00331220  58 24 e7 e7                                      ubfx r2, r8, #8, #8
00331224  58 08 e7 e7                                      ubfx r0, r8, #0x10, #8
00331228  00 b0 a0 e3                                      mov fp, #0
0033122c  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
00331230  2a e0 cd e5                                      strb lr, [sp, #0x2a]
00331234  29 00 cd e5                                      strb r0, [sp, #0x29]
00331238  28 20 cd e5                                      strb r2, [sp, #0x28]
0033123c  03 00 a0 e1                                      mov r0, r3
00331240  0b 20 a0 e1                                      mov r2, fp
00331244  08 30 9d e5                                      ldr r3, [sp, #8]
00331248  2b b0 cd e5                                      strb fp, [sp, #0x2b]
0033124c  24 80 8d e5                                      str r8, [sp, #0x24]
00331250  3c ff 2f e1                                      blx ip
00331254  07 00 a0 e1                                      mov r0, r7
00331258  d3 89 ff eb                                      bl #0x3139ac
0033125c  04 30 9d e5                                      ldr r3, [sp, #4]
00331260  01 40 84 e2                                      add r4, r4, #1
00331264  04 00 53 e1                                      cmp r3, r4
00331268  da ff ff 1a                                      bne #0x3311d8
0033126c  44 10 9f e5                                      ldr r1, [pc, #0x44]
00331270  05 00 a0 e1                                      mov r0, r5
00331274  01 10 8f e0                                      add r1, pc, r1
00331278  c6 fb ff eb                                      bl #0x330198
0033127c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00331280  2a 8b ff eb                                      bl #0x313f30
00331284  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00331288  10 10 9d e5                                      ldr r1, [sp, #0x10]
0033128c  01 30 92 e7                                      ldr r3, [r2, r1]
00331290  44 20 9d e5                                      ldr r2, [sp, #0x44]
00331294  00 30 93 e5                                      ldr r3, [r3]
00331298  03 00 52 e1                                      cmp r2, r3
0033129c  01 00 00 1a                                      bne #0x3312a8
003312a0  4c d0 8d e2                                      add sp, sp, #0x4c
003312a4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
003312a8  18 74 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003312ac  40 39 66 00 ac 40 00 00 70 ef 58 00 c4 e5 58 00  .byte 0x40, 0x39, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x70, 0xef, 0x58, 0x00, 0xc4, 0xe5, 0x58, 0x00

; FUNCTION 0x003312bc, declared_size=316, range_size=316, mode=arm
; class-group: Console
; alias: _ZN7Console17_setMenuListenersEv
; demangled: Console::_setMenuListeners()
; decoder-mode: arm
003312bc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003312c0  1c 21 9f e5                                      ldr r2, [pc, #0x11c]
003312c4  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
003312c8  24 d0 4d e2                                      sub sp, sp, #0x24
003312cc  18 81 9f e5                                      ldr r8, [pc, #0x118]
003312d0  0c 30 8d e2                                      add r3, sp, #0xc
003312d4  00 40 a0 e3                                      mov r4, #0
003312d8  05 50 8f e0                                      add r5, pc, r5
003312dc  03 10 a0 e1                                      mov r1, r3
003312e0  02 20 8f e0                                      add r2, pc, r2
003312e4  04 30 8d e5                                      str r3, [sp, #4]
003312e8  0c 40 8d e5                                      str r4, [sp, #0xc]
003312ec  10 40 8d e5                                      str r4, [sp, #0x10]
003312f0  14 40 8d e5                                      str r4, [sp, #0x14]
003312f4  00 60 a0 e1                                      mov r6, r0
003312f8  ca fa ff eb                                      bl #0x32fe28
003312fc  08 30 95 e7                                      ldr r3, [r5, r8]
00331300  00 30 93 e5                                      ldr r3, [r3]
00331304  04 00 53 e1                                      cmp r3, r4
00331308  2b 00 00 0a                                      beq #0x3313bc
0033130c  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
00331310  dc a0 9f e5                                      ldr sl, [pc, #0xdc]
00331314  03 70 95 e7                                      ldr r7, [r5, r3]
00331318  1c 30 8d e2                                      add r3, sp, #0x1c
0033131c  00 30 8d e5                                      str r3, [sp]
00331320  07 00 a0 e1                                      mov r0, r7
00331324  9a b8 ff eb                                      bl #0x31f594
00331328  00 00 50 e3                                      cmp r0, #0
0033132c  07 00 a0 e1                                      mov r0, r7
00331330  05 00 00 0a                                      beq #0x33134c
00331334  96 b8 ff eb                                      bl #0x31f594
00331338  e4 30 90 e5                                      ldr r3, [r0, #0xe4]
0033133c  04 00 53 e1                                      cmp r3, r4
00331340  ff 94 a0 03                                      moveq sb, #0xff000000
00331344  ff 9c 89 02                                      addeq sb, sb, #0xff00
00331348  01 00 00 0a                                      beq #0x331354
0033134c  02 91 a0 e3                                      mov sb, #0x80000000
00331350  c9 97 a0 e1                                      asr sb, sb, #0xf
00331354  0a 30 95 e7                                      ldr r3, [r5, sl]
00331358  06 00 a0 e1                                      mov r0, r6
0033135c  00 b0 a0 e3                                      mov fp, #0
00331360  00 30 93 e5                                      ldr r3, [r3]
00331364  04 11 93 e7                                      ldr r1, [r3, r4, lsl #2]
00331368  8a fb ff eb                                      bl #0x330198
0033136c  00 10 a0 e1                                      mov r1, r0
00331370  40 00 96 e5                                      ldr r0, [r6, #0x40]
00331374  29 ec a0 e1                                      lsr lr, sb, #0x18
00331378  59 34 e7 e7                                      ubfx r3, sb, #8, #8
0033137c  00 c0 90 e5                                      ldr ip, [r0]
00331380  59 28 e7 e7                                      ubfx r2, sb, #0x10, #8
00331384  01 40 84 e2                                      add r4, r4, #1
00331388  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
0033138c  1d 20 cd e5                                      strb r2, [sp, #0x1d]
00331390  1c 30 cd e5                                      strb r3, [sp, #0x1c]
00331394  1f b0 cd e5                                      strb fp, [sp, #0x1f]
00331398  00 30 9d e5                                      ldr r3, [sp]
0033139c  1e e0 cd e5                                      strb lr, [sp, #0x1e]
003313a0  18 90 8d e5                                      str sb, [sp, #0x18]
003313a4  0b 20 a0 e1                                      mov r2, fp
003313a8  3c ff 2f e1                                      blx ip
003313ac  08 30 95 e7                                      ldr r3, [r5, r8]
003313b0  00 30 93 e5                                      ldr r3, [r3]
003313b4  04 00 53 e1                                      cmp r3, r4
003313b8  d8 ff ff 8a                                      bhi #0x331320
003313bc  40 30 96 e5                                      ldr r3, [r6, #0x40]
003313c0  00 10 e0 e3                                      mvn r1, #0
003313c4  03 00 a0 e1                                      mov r0, r3
003313c8  00 30 93 e5                                      ldr r3, [r3]
003313cc  0f e0 a0 e1                                      mov lr, pc
003313d0  a0 f0 93 e5                                      ldr pc, [r3, #0xa0]
003313d4  04 00 9d e5                                      ldr r0, [sp, #4]
003313d8  d4 8a ff eb                                      bl #0x313f30
003313dc  24 d0 8d e2                                      add sp, sp, #0x24
003313e0  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
003313e4  68 e5 58 00 b8 37 66 00 70 3a 00 00 f4 37 00 00  .byte 0x68, 0xe5, 0x58, 0x00, 0xb8, 0x37, 0x66, 0x00, 0x70, 0x3a, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
003313f4  28 16 00 00                                      .byte 0x28, 0x16, 0x00, 0x00

; FUNCTION 0x003313f8, declared_size=336, range_size=336, mode=arm
; class-group: Console
; alias: _ZN7Console16_setMenuWorldMapEv
; demangled: Console::_setMenuWorldMap()
; decoder-mode: arm
003313f8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003313fc  30 21 9f e5                                      ldr r2, [pc, #0x130]
00331400  49 df 4d e2                                      sub sp, sp, #0x124
00331404  43 3f 8d e2                                      add r3, sp, #0x10c
00331408  00 40 a0 e3                                      mov r4, #0
0033140c  03 10 a0 e1                                      mov r1, r3
00331410  02 20 8f e0                                      add r2, pc, r2
00331414  00 50 a0 e1                                      mov r5, r0
00331418  04 30 8d e5                                      str r3, [sp, #4]
0033141c  0c 41 8d e5                                      str r4, [sp, #0x10c]
00331420  10 41 8d e5                                      str r4, [sp, #0x110]
00331424  14 41 8d e5                                      str r4, [sp, #0x114]
00331428  7e fa ff eb                                      bl #0x32fe28
0033142c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00331430  00 71 9f e5                                      ldr r7, [pc, #0x100]
00331434  00 81 9f e5                                      ldr r8, [pc, #0x100]
00331438  03 00 a0 e1                                      mov r0, r3
0033143c  00 30 93 e5                                      ldr r3, [r3]
00331440  0f e0 a0 e1                                      mov lr, pc
00331444  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00331448  f0 30 9f e5                                      ldr r3, [pc, #0xf0]
0033144c  07 70 8f e0                                      add r7, pc, r7
00331450  04 10 a0 e1                                      mov r1, r4
00331454  03 30 97 e7                                      ldr r3, [r7, r3]
00331458  01 20 a0 e3                                      mov r2, #1
0033145c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00331460  04 f4 00 eb                                      bl #0x36e478
00331464  08 30 97 e7                                      ldr r3, [r7, r8]
00331468  60 66 90 e5                                      ldr r6, [r0, #0x660]
0033146c  00 30 93 e5                                      ldr r3, [r3]
00331470  04 00 53 e1                                      cmp r3, r4
00331474  2a 00 00 0a                                      beq #0x331524
00331478  c4 30 9f e5                                      ldr r3, [pc, #0xc4]
0033147c  0c a0 8d e2                                      add sl, sp, #0xc
00331480  47 bf 8d e2                                      add fp, sp, #0x11c
00331484  03 30 8f e0                                      add r3, pc, r3
00331488  00 30 8d e5                                      str r3, [sp]
0033148c  07 90 a0 e1                                      mov sb, r7
00331490  00 00 56 e2                                      subs r0, r6, #0
00331494  02 71 a0 03                                      moveq r7, #0x80000000
00331498  04 10 a0 e1                                      mov r1, r4
0033149c  00 20 e0 e3                                      mvn r2, #0
003314a0  c7 77 a0 01                                      asreq r7, r7, #0xf
003314a4  04 00 00 0a                                      beq #0x3314bc
003314a8  4f 2a 02 eb                                      bl #0x3bbdec
003314ac  02 00 50 e3                                      cmp r0, #2
003314b0  00 30 9d 95                                      ldrls r3, [sp]
003314b4  00 70 a0 83                                      movhi r7, #0
003314b8  00 71 93 97                                      ldrls r7, [r3, r0, lsl #2]
003314bc  40 30 95 e5                                      ldr r3, [r5, #0x40]
003314c0  0a 10 a0 e1                                      mov r1, sl
003314c4  01 40 84 e2                                      add r4, r4, #1
003314c8  03 00 a0 e1                                      mov r0, r3
003314cc  00 30 93 e5                                      ldr r3, [r3]
003314d0  0f e0 a0 e1                                      mov lr, pc
003314d4  84 f0 93 e5                                      ldr pc, [r3, #0x84]
003314d8  00 10 a0 e1                                      mov r1, r0
003314dc  40 00 95 e5                                      ldr r0, [r5, #0x40]
003314e0  57 34 e7 e7                                      ubfx r3, r7, #8, #8
003314e4  57 28 e7 e7                                      ubfx r2, r7, #0x10, #8
003314e8  00 c0 90 e5                                      ldr ip, [r0]
003314ec  27 ec a0 e1                                      lsr lr, r7, #0x18
003314f0  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
003314f4  1d 21 cd e5                                      strb r2, [sp, #0x11d]
003314f8  1c 31 cd e5                                      strb r3, [sp, #0x11c]
003314fc  1f 71 cd e5                                      strb r7, [sp, #0x11f]
00331500  0b 30 a0 e1                                      mov r3, fp
00331504  1e e1 cd e5                                      strb lr, [sp, #0x11e]
00331508  18 71 8d e5                                      str r7, [sp, #0x118]
0033150c  00 20 a0 e3                                      mov r2, #0
00331510  3c ff 2f e1                                      blx ip
00331514  08 30 99 e7                                      ldr r3, [sb, r8]
00331518  00 30 93 e5                                      ldr r3, [r3]
0033151c  04 00 53 e1                                      cmp r3, r4
00331520  da ff ff 8a                                      bhi #0x331490
00331524  04 00 9d e5                                      ldr r0, [sp, #4]
00331528  80 8a ff eb                                      bl #0x313f30
0033152c  49 df 8d e2                                      add sp, sp, #0x124
00331530  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00331534  48 e4 58 00 44 36 66 00 74 22 00 00 f4 37 00 00  .byte 0x48, 0xe4, 0x58, 0x00, 0x44, 0x36, 0x66, 0x00, 0x74, 0x22, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00331544  ec e2 58 00                                      .byte 0xec, 0xe2, 0x58, 0x00

; FUNCTION 0x00331548, declared_size=340, range_size=340, mode=arm
; class-group: Console
; alias: _ZN7Console23_setMenuLevelListPyDataEv
; demangled: Console::_setMenuLevelListPyData()
; decoder-mode: arm
00331548  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033154c  34 21 9f e5                                      ldr r2, [pc, #0x134]
00331550  49 df 4d e2                                      sub sp, sp, #0x124
00331554  43 3f 8d e2                                      add r3, sp, #0x10c
00331558  00 40 a0 e3                                      mov r4, #0
0033155c  03 10 a0 e1                                      mov r1, r3
00331560  02 20 8f e0                                      add r2, pc, r2
00331564  00 50 a0 e1                                      mov r5, r0
00331568  00 30 8d e5                                      str r3, [sp]
0033156c  0c 41 8d e5                                      str r4, [sp, #0x10c]
00331570  10 41 8d e5                                      str r4, [sp, #0x110]
00331574  14 41 8d e5                                      str r4, [sp, #0x114]
00331578  2a fa ff eb                                      bl #0x32fe28
0033157c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00331580  04 71 9f e5                                      ldr r7, [pc, #0x104]
00331584  04 81 9f e5                                      ldr r8, [pc, #0x104]
00331588  03 00 a0 e1                                      mov r0, r3
0033158c  00 30 93 e5                                      ldr r3, [r3]
00331590  0f e0 a0 e1                                      mov lr, pc
00331594  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00331598  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0033159c  07 70 8f e0                                      add r7, pc, r7
003315a0  04 10 a0 e1                                      mov r1, r4
003315a4  03 30 97 e7                                      ldr r3, [r7, r3]
003315a8  01 20 a0 e3                                      mov r2, #1
003315ac  40 00 93 e5                                      ldr r0, [r3, #0x40]
003315b0  b0 f3 00 eb                                      bl #0x36e478
003315b4  08 30 97 e7                                      ldr r3, [r7, r8]
003315b8  60 66 90 e5                                      ldr r6, [r0, #0x660]
003315bc  00 30 93 e5                                      ldr r3, [r3]
003315c0  04 00 53 e1                                      cmp r3, r4
003315c4  2b 00 00 0a                                      beq #0x331678
003315c8  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003315cc  0c a0 8d e2                                      add sl, sp, #0xc
003315d0  47 bf 8d e2                                      add fp, sp, #0x11c
003315d4  03 30 8f e0                                      add r3, pc, r3
003315d8  04 30 8d e5                                      str r3, [sp, #4]
003315dc  07 90 a0 e1                                      mov sb, r7
003315e0  00 00 56 e2                                      subs r0, r6, #0
003315e4  02 71 a0 03                                      moveq r7, #0x80000000
003315e8  04 10 a0 e1                                      mov r1, r4
003315ec  00 20 e0 e3                                      mvn r2, #0
003315f0  c7 77 a0 01                                      asreq r7, r7, #0xf
003315f4  05 00 00 0a                                      beq #0x331610
003315f8  bc 29 02 eb                                      bl #0x3bbcf0
003315fc  01 00 50 e3                                      cmp r0, #1
00331600  04 30 9d 95                                      ldrls r3, [sp, #4]
00331604  00 70 e0 83                                      mvnhi r7, #0
00331608  00 01 83 90                                      addls r0, r3, r0, lsl #2
0033160c  0c 70 90 95                                      ldrls r7, [r0, #0xc]
00331610  40 30 95 e5                                      ldr r3, [r5, #0x40]
00331614  0a 10 a0 e1                                      mov r1, sl
00331618  01 40 84 e2                                      add r4, r4, #1
0033161c  03 00 a0 e1                                      mov r0, r3
00331620  00 30 93 e5                                      ldr r3, [r3]
00331624  0f e0 a0 e1                                      mov lr, pc
00331628  84 f0 93 e5                                      ldr pc, [r3, #0x84]
0033162c  00 10 a0 e1                                      mov r1, r0
00331630  40 00 95 e5                                      ldr r0, [r5, #0x40]
00331634  57 34 e7 e7                                      ubfx r3, r7, #8, #8
00331638  57 28 e7 e7                                      ubfx r2, r7, #0x10, #8
0033163c  00 c0 90 e5                                      ldr ip, [r0]
00331640  27 ec a0 e1                                      lsr lr, r7, #0x18
00331644  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
00331648  1d 21 cd e5                                      strb r2, [sp, #0x11d]
0033164c  1c 31 cd e5                                      strb r3, [sp, #0x11c]
00331650  1f 71 cd e5                                      strb r7, [sp, #0x11f]
00331654  0b 30 a0 e1                                      mov r3, fp
00331658  1e e1 cd e5                                      strb lr, [sp, #0x11e]
0033165c  18 71 8d e5                                      str r7, [sp, #0x118]
00331660  00 20 a0 e3                                      mov r2, #0
00331664  3c ff 2f e1                                      blx ip
00331668  08 30 99 e7                                      ldr r3, [sb, r8]
0033166c  00 30 93 e5                                      ldr r3, [r3]
00331670  04 00 53 e1                                      cmp r3, r4
00331674  d9 ff ff 8a                                      bhi #0x3315e0
00331678  00 00 9d e5                                      ldr r0, [sp]
0033167c  2b 8a ff eb                                      bl #0x313f30
00331680  49 df 8d e2                                      add sp, sp, #0x124
00331684  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00331688  10 e3 58 00 f4 34 66 00 c0 18 00 00 f4 37 00 00  .byte 0x10, 0xe3, 0x58, 0x00, 0xf4, 0x34, 0x66, 0x00, 0xc0, 0x18, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00331698  9c e1 58 00                                      .byte 0x9c, 0xe1, 0x58, 0x00

; FUNCTION 0x0033169c, declared_size=256, range_size=256, mode=arm
; class-group: Console
; alias: _ZN7Console13_setMenuStatsEv
; demangled: Console::_setMenuStats()
; decoder-mode: arm
0033169c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003316a0  e8 20 9f e5                                      ldr r2, [pc, #0xe8]
003316a4  24 d0 4d e2                                      sub sp, sp, #0x24
003316a8  0c 30 8d e2                                      add r3, sp, #0xc
003316ac  03 10 a0 e1                                      mov r1, r3
003316b0  00 40 a0 e3                                      mov r4, #0
003316b4  02 20 8f e0                                      add r2, pc, r2
003316b8  00 60 a0 e1                                      mov r6, r0
003316bc  04 30 8d e5                                      str r3, [sp, #4]
003316c0  0c 40 8d e5                                      str r4, [sp, #0xc]
003316c4  10 40 8d e5                                      str r4, [sp, #0x10]
003316c8  14 40 8d e5                                      str r4, [sp, #0x14]
003316cc  d5 f9 ff eb                                      bl #0x32fe28
003316d0  40 30 96 e5                                      ldr r3, [r6, #0x40]
003316d4  b8 90 9f e5                                      ldr sb, [pc, #0xb8]
003316d8  ff 74 a0 e3                                      mov r7, #0xff000000
003316dc  03 00 a0 e1                                      mov r0, r3
003316e0  00 30 93 e5                                      ldr r3, [r3]
003316e4  0f e0 a0 e1                                      mov lr, pc
003316e8  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003316ec  82 e3 03 eb                                      bl #0x42a4fc
003316f0  a0 30 9f e5                                      ldr r3, [pc, #0xa0]
003316f4  09 90 8f e0                                      add sb, pc, sb
003316f8  02 81 a0 e3                                      mov r8, #0x80000000
003316fc  03 a0 99 e7                                      ldr sl, [sb, r3]
00331700  1c 30 8d e2                                      add r3, sp, #0x1c
00331704  00 50 a0 e1                                      mov r5, r0
00331708  ff 7c 87 e2                                      add r7, r7, #0xff00
0033170c  c8 87 a0 e1                                      asr r8, r8, #0xf
00331710  00 30 8d e5                                      str r3, [sp]
00331714  e0 90 d5 e5                                      ldrb sb, [r5, #0xe0]
00331718  04 10 9a e7                                      ldr r1, [sl, r4]
0033171c  06 00 a0 e1                                      mov r0, r6
00331720  00 00 59 e3                                      cmp sb, #0
00331724  07 90 a0 11                                      movne sb, r7
00331728  08 90 a0 01                                      moveq sb, r8
0033172c  99 fa ff eb                                      bl #0x330198
00331730  00 10 a0 e1                                      mov r1, r0
00331734  40 00 96 e5                                      ldr r0, [r6, #0x40]
00331738  29 ec a0 e1                                      lsr lr, sb, #0x18
0033173c  59 34 e7 e7                                      ubfx r3, sb, #8, #8
00331740  00 c0 90 e5                                      ldr ip, [r0]
00331744  59 28 e7 e7                                      ubfx r2, sb, #0x10, #8
00331748  00 b0 a0 e3                                      mov fp, #0
0033174c  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
00331750  04 40 84 e2                                      add r4, r4, #4
00331754  1d 20 cd e5                                      strb r2, [sp, #0x1d]
00331758  1c 30 cd e5                                      strb r3, [sp, #0x1c]
0033175c  1f b0 cd e5                                      strb fp, [sp, #0x1f]
00331760  1e e0 cd e5                                      strb lr, [sp, #0x1e]
00331764  18 90 8d e5                                      str sb, [sp, #0x18]
00331768  0b 20 a0 e1                                      mov r2, fp
0033176c  00 30 9d e5                                      ldr r3, [sp]
00331770  3c ff 2f e1                                      blx ip
00331774  58 00 54 e3                                      cmp r4, #0x58
00331778  01 50 85 e2                                      add r5, r5, #1
0033177c  e4 ff ff 1a                                      bne #0x331714
00331780  04 00 9d e5                                      ldr r0, [sp, #4]
00331784  e9 89 ff eb                                      bl #0x313f30
00331788  24 d0 8d e2                                      add sp, sp, #0x24
0033178c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
00331790  cc e1 58 00 9c 33 66 00 9c 28 00 00              .byte 0xcc, 0xe1, 0x58, 0x00, 0x9c, 0x33, 0x66, 0x00, 0x9c, 0x28, 0x00, 0x00

; FUNCTION 0x0033179c, declared_size=424, range_size=424, mode=arm
; class-group: Console
; alias: _ZN7Console20DBG_TryStartingLevelEPKc
; demangled: Console::DBG_TryStartingLevel(char const*)
; decoder-mode: arm
0033179c  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
003317a0  80 41 9f e5                                      ldr r4, [pc, #0x180]
003317a4  80 51 9f e5                                      ldr r5, [pc, #0x180]
003317a8  00 10 a0 e3                                      mov r1, #0
003317ac  04 40 8f e0                                      add r4, pc, r4
003317b0  05 30 94 e7                                      ldr r3, [r4, r5]
003317b4  28 d0 4d e2                                      sub sp, sp, #0x28
003317b8  00 60 a0 e1                                      mov r6, r0
003317bc  01 20 a0 e1                                      mov r2, r1
003317c0  40 00 93 e5                                      ldr r0, [r3, #0x40]
003317c4  2b f3 00 eb                                      bl #0x36e478
003317c8  64 76 90 e5                                      ldr r7, [r0, #0x664]
003317cc  01 00 77 e3                                      cmn r7, #1
003317d0  23 00 00 0a                                      beq #0x331864
003317d4  05 80 94 e7                                      ldr r8, [r4, r5]
003317d8  00 10 a0 e3                                      mov r1, #0
003317dc  01 20 a0 e1                                      mov r2, r1
003317e0  40 00 98 e5                                      ldr r0, [r8, #0x40]
003317e4  23 f3 00 eb                                      bl #0x36e478
003317e8  60 36 90 e5                                      ldr r3, [r0, #0x660]
003317ec  00 00 53 e3                                      cmp r3, #0
003317f0  18 00 00 0a                                      beq #0x331858
003317f4  00 10 a0 e3                                      mov r1, #0
003317f8  01 20 a0 e1                                      mov r2, r1
003317fc  40 00 98 e5                                      ldr r0, [r8, #0x40]
00331800  1c f3 00 eb                                      bl #0x36e478
00331804  60 06 90 e5                                      ldr r0, [r0, #0x660]
00331808  35 28 02 eb                                      bl #0x3bb8e4
0033180c  00 e0 a0 e1                                      mov lr, r0
00331810  00 c0 a0 e3                                      mov ip, #0
00331814  03 00 5e e3                                      cmp lr, #3
00331818  05 00 94 e7                                      ldr r0, [r4, r5]
0033181c  0c e0 a0 81                                      movhi lr, ip
00331820  01 40 a0 e3                                      mov r4, #1
00331824  06 10 a0 e1                                      mov r1, r6
00331828  0c 20 a0 e1                                      mov r2, ip
0033182c  07 30 a0 e1                                      mov r3, r7
00331830  08 e0 8d e5                                      str lr, [sp, #8]
00331834  00 c0 8d e5                                      str ip, [sp]
00331838  04 40 8d e5                                      str r4, [sp, #4]
0033183c  0c c0 8d e5                                      str ip, [sp, #0xc]
00331840  10 c0 8d e5                                      str ip, [sp, #0x10]
00331844  14 c0 8d e5                                      str ip, [sp, #0x14]
00331848  5e e9 ff eb                                      bl #0x32bdc8
0033184c  04 00 a0 e1                                      mov r0, r4
00331850  28 d0 8d e2                                      add sp, sp, #0x28
00331854  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00331858  4c 30 98 e5                                      ldr r3, [r8, #0x4c]
0033185c  0c e0 93 e5                                      ldr lr, [r3, #0xc]
00331860  ea ff ff ea                                      b #0x331810
00331864  1c 80 8d e2                                      add r8, sp, #0x1c
00331868  08 00 a0 e1                                      mov r0, r8
0033186c  00 10 a0 e3                                      mov r1, #0
00331870  f1 c9 04 eb                                      bl #0x46403c
00331874  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00331878  20 30 9d e5                                      ldr r3, [sp, #0x20]
0033187c  03 30 62 e0                                      rsb r3, r2, r3
00331880  c3 31 a0 e1                                      asr r3, r3, #3
00331884  03 71 83 e0                                      add r7, r3, r3, lsl #2
00331888  07 72 87 e0                                      add r7, r7, r7, lsl #4
0033188c  07 74 87 e0                                      add r7, r7, r7, lsl #8
00331890  07 78 87 e0                                      add r7, r7, r7, lsl #16
00331894  87 70 93 e0                                      adds r7, r3, r7, lsl #1
00331898  1e 00 00 0a                                      beq #0x331918
0033189c  14 00 92 e5                                      ldr r0, [r2, #0x14]
003318a0  80 c7 04 eb                                      bl #0x4636a8
003318a4  00 10 a0 e3                                      mov r1, #0
003318a8  00 70 a0 e1                                      mov r7, r0
003318ac  84 24 04 eb                                      bl #0x43aac4
003318b0  08 00 a0 e1                                      mov r0, r8
003318b4  9d 89 ff eb                                      bl #0x313f30
003318b8  01 00 77 e3                                      cmn r7, #1
003318bc  c4 ff ff 1a                                      bne #0x3317d4
003318c0  68 30 9f e5                                      ldr r3, [pc, #0x68]
003318c4  03 30 94 e7                                      ldr r3, [r4, r3]
003318c8  00 30 93 e5                                      ldr r3, [r3]
003318cc  02 00 53 e3                                      cmp r3, #2
003318d0  00 30 a0 03                                      moveq r3, #0
003318d4  00 30 83 05                                      streq r3, [r3]
003318d8  bd ff ff 0a                                      beq #0x3317d4
003318dc  01 00 53 e3                                      cmp r3, #1
003318e0  bb ff ff 1a                                      bne #0x3317d4
003318e4  48 00 9f e5                                      ldr r0, [pc, #0x48]
003318e8  48 10 9f e5                                      ldr r1, [pc, #0x48]
003318ec  48 20 9f e5                                      ldr r2, [pc, #0x48]
003318f0  00 00 94 e7                                      ldr r0, [r4, r0]
003318f4  44 30 9f e5                                      ldr r3, [pc, #0x44]
003318f8  ba c3 00 e3                                      movw ip, #0x3ba
003318fc  01 10 8f e0                                      add r1, pc, r1
00331900  02 20 8f e0                                      add r2, pc, r2
00331904  03 30 8f e0                                      add r3, pc, r3
00331908  a8 00 80 e2                                      add r0, r0, #0xa8
0033190c  00 c0 8d e5                                      str ip, [sp]
00331910  bb 71 ff eb                                      bl #0x30e004
00331914  ae ff ff ea                                      b #0x3317d4
00331918  08 00 a0 e1                                      mov r0, r8
0033191c  83 89 ff eb                                      bl #0x313f30
00331920  07 00 a0 e1                                      mov r0, r7
00331924  c9 ff ff ea                                      b #0x331850
; mapping-symbol data/literal pool
00331928  e4 32 66 00 f4 37 00 00 c0 39 00 00 c0 19 00 00  .byte 0xe4, 0x32, 0x66, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00331938  dc ca 58 00 88 df 58 00 94 df 58 00              .byte 0xdc, 0xca, 0x58, 0x00, 0x88, 0xdf, 0x58, 0x00, 0x94, 0xdf, 0x58, 0x00

; FUNCTION 0x00331944, declared_size=204, range_size=204, mode=arm
; class-group: Console
; alias: _ZN7ConsoleD1Ev
; demangled: Console::~Console()
; decoder-mode: arm
00331944  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00331948  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
0033194c  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00331950  03 30 8f e0                                      add r3, pc, r3
00331954  70 40 2d e9                                      push {r4, r5, r6, lr}
00331958  02 20 93 e7                                      ldr r2, [r3, r2]
0033195c  01 50 93 e7                                      ldr r5, [r3, r1]
00331960  00 40 a0 e1                                      mov r4, r0
00331964  08 20 82 e2                                      add r2, r2, #8
00331968  00 20 80 e5                                      str r2, [r0]
0033196c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00331970  00 00 50 e3                                      cmp r0, #0
00331974  06 00 00 0a                                      beq #0x331994
00331978  04 10 a0 e3                                      mov r1, #4
0033197c  04 20 a0 e1                                      mov r2, r4
00331980  e5 19 00 eb                                      bl #0x33811c
00331984  14 00 95 e5                                      ldr r0, [r5, #0x14]
00331988  05 10 a0 e3                                      mov r1, #5
0033198c  04 20 a0 e1                                      mov r2, r4
00331990  e1 19 00 eb                                      bl #0x33811c
00331994  04 00 a0 e1                                      mov r0, r4
00331998  08 f9 ff eb                                      bl #0x32fdc0
0033199c  90 00 84 e2                                      add r0, r4, #0x90
003319a0  01 88 ff eb                                      bl #0x3139ac
003319a4  58 00 84 e2                                      add r0, r4, #0x58
003319a8  ff 87 ff eb                                      bl #0x3139ac
003319ac  48 00 94 e5                                      ldr r0, [r4, #0x48]
003319b0  48 30 84 e2                                      add r3, r4, #0x48
003319b4  00 00 50 e3                                      cmp r0, #0
003319b8  05 00 00 0a                                      beq #0x3319d4
003319bc  08 10 93 e5                                      ldr r1, [r3, #8]
003319c0  01 10 60 e0                                      rsb r1, r0, r1
003319c4  03 10 c1 e3                                      bic r1, r1, #3
003319c8  80 00 51 e3                                      cmp r1, #0x80
003319cc  0a 00 00 8a                                      bhi #0x3319fc
003319d0  4a 5d 0f eb                                      bl #0x708f00
003319d4  34 00 84 e2                                      add r0, r4, #0x34
003319d8  54 89 ff eb                                      bl #0x313f30
003319dc  28 00 84 e2                                      add r0, r4, #0x28
003319e0  52 89 ff eb                                      bl #0x313f30
003319e4  1c 00 84 e2                                      add r0, r4, #0x1c
003319e8  50 89 ff eb                                      bl #0x313f30
003319ec  10 00 84 e2                                      add r0, r4, #0x10
003319f0  4e 89 ff eb                                      bl #0x313f30
003319f4  04 00 a0 e1                                      mov r0, r4
003319f8  70 80 bd e8                                      pop {r4, r5, r6, pc}
003319fc  8f 7a ff eb                                      bl #0x310440
00331a00  f3 ff ff ea                                      b #0x3319d4
; mapping-symbol data/literal pool
00331a04  40 31 66 00 38 39 00 00 f4 37 00 00              .byte 0x40, 0x31, 0x66, 0x00, 0x38, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00331a10, declared_size=28, range_size=28, mode=arm
; class-group: Console
; alias: _ZN7ConsoleD0Ev
; demangled: Console::~Console()
; decoder-mode: arm
00331a10  10 40 2d e9                                      push {r4, lr}
00331a14  00 40 a0 e1                                      mov r4, r0
00331a18  c9 ff ff eb                                      bl #0x331944
00331a1c  04 00 a0 e1                                      mov r0, r4
00331a20  86 7a ff eb                                      bl #0x310440
00331a24  04 00 a0 e1                                      mov r0, r4
00331a28  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00331a2c, declared_size=204, range_size=204, mode=arm
; class-group: Console
; alias: _ZN7ConsoleD2Ev
; demangled: Console::~Console()
; decoder-mode: arm
00331a2c  b8 30 9f e5                                      ldr r3, [pc, #0xb8]
00331a30  b8 20 9f e5                                      ldr r2, [pc, #0xb8]
00331a34  b8 10 9f e5                                      ldr r1, [pc, #0xb8]
00331a38  03 30 8f e0                                      add r3, pc, r3
00331a3c  70 40 2d e9                                      push {r4, r5, r6, lr}
00331a40  02 20 93 e7                                      ldr r2, [r3, r2]
00331a44  01 50 93 e7                                      ldr r5, [r3, r1]
00331a48  00 40 a0 e1                                      mov r4, r0
00331a4c  08 20 82 e2                                      add r2, r2, #8
00331a50  00 20 80 e5                                      str r2, [r0]
00331a54  14 00 95 e5                                      ldr r0, [r5, #0x14]
00331a58  00 00 50 e3                                      cmp r0, #0
00331a5c  06 00 00 0a                                      beq #0x331a7c
00331a60  04 10 a0 e3                                      mov r1, #4
00331a64  04 20 a0 e1                                      mov r2, r4
00331a68  ab 19 00 eb                                      bl #0x33811c
00331a6c  14 00 95 e5                                      ldr r0, [r5, #0x14]
00331a70  05 10 a0 e3                                      mov r1, #5
00331a74  04 20 a0 e1                                      mov r2, r4
00331a78  a7 19 00 eb                                      bl #0x33811c
00331a7c  04 00 a0 e1                                      mov r0, r4
00331a80  ce f8 ff eb                                      bl #0x32fdc0
00331a84  90 00 84 e2                                      add r0, r4, #0x90
00331a88  c7 87 ff eb                                      bl #0x3139ac
00331a8c  58 00 84 e2                                      add r0, r4, #0x58
00331a90  c5 87 ff eb                                      bl #0x3139ac
00331a94  48 00 94 e5                                      ldr r0, [r4, #0x48]
00331a98  48 30 84 e2                                      add r3, r4, #0x48
00331a9c  00 00 50 e3                                      cmp r0, #0
00331aa0  05 00 00 0a                                      beq #0x331abc
00331aa4  08 10 93 e5                                      ldr r1, [r3, #8]
00331aa8  01 10 60 e0                                      rsb r1, r0, r1
00331aac  03 10 c1 e3                                      bic r1, r1, #3
00331ab0  80 00 51 e3                                      cmp r1, #0x80
00331ab4  0a 00 00 8a                                      bhi #0x331ae4
00331ab8  10 5d 0f eb                                      bl #0x708f00
00331abc  34 00 84 e2                                      add r0, r4, #0x34
00331ac0  1a 89 ff eb                                      bl #0x313f30
00331ac4  28 00 84 e2                                      add r0, r4, #0x28
00331ac8  18 89 ff eb                                      bl #0x313f30
00331acc  1c 00 84 e2                                      add r0, r4, #0x1c
00331ad0  16 89 ff eb                                      bl #0x313f30
00331ad4  10 00 84 e2                                      add r0, r4, #0x10
00331ad8  14 89 ff eb                                      bl #0x313f30
00331adc  04 00 a0 e1                                      mov r0, r4
00331ae0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00331ae4  55 7a ff eb                                      bl #0x310440
00331ae8  f3 ff ff ea                                      b #0x331abc
; mapping-symbol data/literal pool
00331aec  58 30 66 00 38 39 00 00 f4 37 00 00              .byte 0x58, 0x30, 0x66, 0x00, 0x38, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00331b68, declared_size=404, range_size=404, mode=arm
; class-group: Console
; alias: _ZN7Console21InitShowRoomCameraPosEv
; demangled: Console::InitShowRoomCameraPos()
; decoder-mode: arm
00331b68  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00331b6c  74 41 9f e5                                      ldr r4, [pc, #0x174]
00331b70  74 51 9f e5                                      ldr r5, [pc, #0x174]
00331b74  74 21 9f e5                                      ldr r2, [pc, #0x174]
00331b78  04 40 8f e0                                      add r4, pc, r4
00331b7c  05 30 94 e7                                      ldr r3, [r4, r5]
00331b80  02 80 94 e7                                      ldr r8, [r4, r2]
00331b84  38 d0 4d e2                                      sub sp, sp, #0x38
00331b88  00 30 93 e5                                      ldr r3, [r3]
00331b8c  00 70 a0 e1                                      mov r7, r0
00331b90  08 00 a0 e1                                      mov r0, r8
00331b94  34 30 8d e5                                      str r3, [sp, #0x34]
00331b98  3a 17 00 eb                                      bl #0x337888
00331b9c  50 11 9f e5                                      ldr r1, [pc, #0x150]
00331ba0  1c 60 8d e2                                      add r6, sp, #0x1c
00331ba4  18 20 8d e2                                      add r2, sp, #0x18
00331ba8  01 10 8f e0                                      add r1, pc, r1
00331bac  06 00 a0 e1                                      mov r0, r6
00331bb0  4d 89 ff eb                                      bl #0x3140ec
00331bb4  08 00 a0 e1                                      mov r0, r8
00331bb8  06 10 a0 e1                                      mov r1, r6
00331bbc  b1 17 00 eb                                      bl #0x337a88
00331bc0  00 00 50 e3                                      cmp r0, #0
00331bc4  3d 00 00 0a                                      beq #0x331cc0
00331bc8  28 21 9f e5                                      ldr r2, [pc, #0x128]
00331bcc  74 30 97 e5                                      ldr r3, [r7, #0x74]
00331bd0  02 20 94 e7                                      ldr r2, [r4, r2]
00331bd4  38 20 92 e5                                      ldr r2, [r2, #0x38]
00331bd8  60 20 82 e2                                      add r2, r2, #0x60
00331bdc  03 00 52 e1                                      cmp r2, r3
00331be0  36 00 00 0a                                      beq #0x331cc0
00331be4  7c 30 97 e5                                      ldr r3, [r7, #0x7c]
00331be8  00 00 53 e3                                      cmp r3, #0
00331bec  33 00 00 0a                                      beq #0x331cc0
00331bf0  06 00 a0 e1                                      mov r0, r6
00331bf4  6c 87 ff eb                                      bl #0x3139ac
00331bf8  74 30 97 e5                                      ldr r3, [r7, #0x74]
00331bfc  08 60 93 e5                                      ldr r6, [r3, #8]
00331c00  38 11 96 e5                                      ldr r1, [r6, #0x138]
00331c04  2c 01 96 e5                                      ldr r0, [r6, #0x12c]
00331c08  e5 73 ff eb                                      bl #0x30eba4
00331c0c  3f 14 a0 e3                                      mov r1, #0x3f000000
00331c10  55 74 ff eb                                      bl #0x30ed6c
00331c14  3c 11 96 e5                                      ldr r1, [r6, #0x13c]
00331c18  00 90 a0 e1                                      mov sb, r0
00331c1c  30 01 96 e5                                      ldr r0, [r6, #0x130]
00331c20  df 73 ff eb                                      bl #0x30eba4
00331c24  3f 14 a0 e3                                      mov r1, #0x3f000000
00331c28  4f 74 ff eb                                      bl #0x30ed6c
00331c2c  40 11 96 e5                                      ldr r1, [r6, #0x140]
00331c30  00 a0 a0 e1                                      mov sl, r0
00331c34  34 01 96 e5                                      ldr r0, [r6, #0x134]
00331c38  d9 73 ff eb                                      bl #0x30eba4
00331c3c  3f 14 a0 e3                                      mov r1, #0x3f000000
00331c40  49 74 ff eb                                      bl #0x30ed6c
00331c44  7c 60 97 e5                                      ldr r6, [r7, #0x7c]
00331c48  14 00 8d e5                                      str r0, [sp, #0x14]
00331c4c  0c 90 8d e5                                      str sb, [sp, #0xc]
00331c50  10 a0 8d e5                                      str sl, [sp, #0x10]
00331c54  00 30 96 e5                                      ldr r3, [r6]
00331c58  00 80 a0 e1                                      mov r8, r0
00331c5c  00 10 a0 e3                                      mov r1, #0
00331c60  09 00 a0 e1                                      mov r0, sb
00331c64  a4 90 93 e5                                      ldr sb, [r3, #0xa4]
00331c68  cd 73 ff eb                                      bl #0x30eba4
00331c6c  11 13 a0 e3                                      mov r1, #0x44000000
00331c70  00 00 8d e5                                      str r0, [sp]
00331c74  fa 18 81 e2                                      add r1, r1, #0xfa0000
00331c78  0a 00 a0 e1                                      mov r0, sl
00331c7c  c8 73 ff eb                                      bl #0x30eba4
00331c80  00 10 08 e3                                      movw r1, #0x8000
00331c84  04 00 8d e5                                      str r0, [sp, #4]
00331c88  bb 14 44 e3                                      movt r1, #0x44bb
00331c8c  08 00 a0 e1                                      mov r0, r8
00331c90  c3 73 ff eb                                      bl #0x30eba4
00331c94  0d 10 a0 e1                                      mov r1, sp
00331c98  08 00 8d e5                                      str r0, [sp, #8]
00331c9c  06 00 a0 e1                                      mov r0, r6
00331ca0  39 ff 2f e1                                      blx sb
00331ca4  7c 30 97 e5                                      ldr r3, [r7, #0x7c]
00331ca8  0c 10 8d e2                                      add r1, sp, #0xc
00331cac  03 00 a0 e1                                      mov r0, r3
00331cb0  00 30 93 e5                                      ldr r3, [r3]
00331cb4  0f e0 a0 e1                                      mov lr, pc
00331cb8  04 f1 93 e5                                      ldr pc, [r3, #0x104]
00331cbc  01 00 00 ea                                      b #0x331cc8
00331cc0  06 00 a0 e1                                      mov r0, r6
00331cc4  38 87 ff eb                                      bl #0x3139ac
00331cc8  05 30 94 e7                                      ldr r3, [r4, r5]
00331ccc  34 20 9d e5                                      ldr r2, [sp, #0x34]
00331cd0  00 30 93 e5                                      ldr r3, [r3]
00331cd4  03 00 52 e1                                      cmp r2, r3
00331cd8  01 00 00 1a                                      bne #0x331ce4
00331cdc  38 d0 8d e2                                      add sp, sp, #0x38
00331ce0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00331ce4  89 71 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00331ce8  18 2f 66 00 ac 40 00 00 84 08 00 00 c0 d3 58 00  .byte 0x18, 0x2f, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xc0, 0xd3, 0x58, 0x00
00331cf8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00331cfc, declared_size=640, range_size=640, mode=arm
; class-group: Console
; alias: _ZN7Console23UpdateToggleDisplayListEv
; demangled: Console::UpdateToggleDisplayList()
; decoder-mode: arm
00331cfc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00331d00  60 62 9f e5                                      ldr r6, [pc, #0x260]
00331d04  60 82 9f e5                                      ldr r8, [pc, #0x260]
00331d08  60 22 9f e5                                      ldr r2, [pc, #0x260]
00331d0c  06 60 8f e0                                      add r6, pc, r6
00331d10  08 30 96 e7                                      ldr r3, [r6, r8]
00331d14  02 70 96 e7                                      ldr r7, [r6, r2]
00331d18  44 d0 4d e2                                      sub sp, sp, #0x44
00331d1c  00 30 93 e5                                      ldr r3, [r3]
00331d20  00 50 a0 e1                                      mov r5, r0
00331d24  07 00 a0 e1                                      mov r0, r7
00331d28  3c 30 8d e5                                      str r3, [sp, #0x3c]
00331d2c  d5 16 00 eb                                      bl #0x337888
00331d30  3c 12 9f e5                                      ldr r1, [pc, #0x23c]
00331d34  24 40 8d e2                                      add r4, sp, #0x24
00331d38  20 20 8d e2                                      add r2, sp, #0x20
00331d3c  01 10 8f e0                                      add r1, pc, r1
00331d40  04 00 a0 e1                                      mov r0, r4
00331d44  e8 88 ff eb                                      bl #0x3140ec
00331d48  07 00 a0 e1                                      mov r0, r7
00331d4c  04 10 a0 e1                                      mov r1, r4
00331d50  4c 17 00 eb                                      bl #0x337a88
00331d54  00 70 a0 e1                                      mov r7, r0
00331d58  04 00 a0 e1                                      mov r0, r4
00331d5c  12 87 ff eb                                      bl #0x3139ac
00331d60  00 00 57 e3                                      cmp r7, #0
00331d64  3b 00 00 0a                                      beq #0x331e58
00331d68  08 32 9f e5                                      ldr r3, [pc, #0x208]
00331d6c  03 30 96 e7                                      ldr r3, [r6, r3]
00331d70  10 30 93 e5                                      ldr r3, [r3, #0x10]
00331d74  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00331d78  04 70 93 e5                                      ldr r7, [r3, #4]
00331d7c  f4 40 b7 e5                                      ldr r4, [r7, #0xf4]!
00331d80  07 00 54 e1                                      cmp r4, r7
00331d84  24 00 00 0a                                      beq #0x331e1c
00331d88  50 30 85 e2                                      add r3, r5, #0x50
00331d8c  08 30 8d e5                                      str r3, [sp, #8]
00331d90  14 30 8d e2                                      add r3, sp, #0x14
00331d94  18 90 8d e2                                      add sb, sp, #0x18
00331d98  1c b0 8d e2                                      add fp, sp, #0x1c
00331d9c  0c 30 8d e5                                      str r3, [sp, #0xc]
00331da0  06 a0 a0 e1                                      mov sl, r6
00331da4  02 00 00 ea                                      b #0x331db4
00331da8  00 40 94 e5                                      ldr r4, [r4]
00331dac  04 00 57 e1                                      cmp r7, r4
00331db0  18 00 00 0a                                      beq #0x331e18
00331db4  00 00 54 e3                                      cmp r4, #0
00331db8  04 30 a0 01                                      moveq r3, r4
00331dbc  04 30 44 12                                      subne r3, r4, #4
00331dc0  18 30 8d e5                                      str r3, [sp, #0x18]
00331dc4  1c 31 93 e5                                      ldr r3, [r3, #0x11c]
00331dc8  01 00 13 e3                                      tst r3, #1
00331dcc  f5 ff ff 0a                                      beq #0x331da8
00331dd0  0b 30 a0 e1                                      mov r3, fp
00331dd4  48 00 95 e5                                      ldr r0, [r5, #0x48]
00331dd8  4c 10 95 e5                                      ldr r1, [r5, #0x4c]
00331ddc  09 20 a0 e1                                      mov r2, sb
00331de0  35 f9 ff eb                                      bl #0x3302bc
00331de4  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00331de8  00 60 a0 e1                                      mov r6, r0
00331dec  03 00 50 e1                                      cmp r0, r3
00331df0  1f 00 00 0a                                      beq #0x331e74
00331df4  18 30 9d e5                                      ldr r3, [sp, #0x18]
00331df8  00 10 a0 e3                                      mov r1, #0
00331dfc  03 00 a0 e1                                      mov r0, r3
00331e00  00 30 93 e5                                      ldr r3, [r3]
00331e04  0f e0 a0 e1                                      mov lr, pc
00331e08  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00331e0c  00 40 94 e5                                      ldr r4, [r4]
00331e10  04 00 57 e1                                      cmp r7, r4
00331e14  e6 ff ff 1a                                      bne #0x331db4
00331e18  0a 60 a0 e1                                      mov r6, sl
00331e1c  54 30 95 e5                                      ldr r3, [r5, #0x54]
00331e20  00 00 53 e3                                      cmp r3, #0
00331e24  04 00 00 0a                                      beq #0x331e3c
00331e28  03 00 a0 e1                                      mov r0, r3
00331e2c  01 10 a0 e3                                      mov r1, #1
00331e30  00 30 93 e5                                      ldr r3, [r3]
00331e34  0f e0 a0 e1                                      mov lr, pc
00331e38  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00331e3c  08 30 96 e7                                      ldr r3, [r6, r8]
00331e40  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
00331e44  00 30 93 e5                                      ldr r3, [r3]
00331e48  03 00 52 e1                                      cmp r2, r3
00331e4c  44 00 00 1a                                      bne #0x331f64
00331e50  44 d0 8d e2                                      add sp, sp, #0x44
00331e54  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00331e58  48 30 95 e5                                      ldr r3, [r5, #0x48]
00331e5c  4c 20 95 e5                                      ldr r2, [r5, #0x4c]
00331e60  02 00 53 e1                                      cmp r3, r2
00331e64  4c 30 85 15                                      strne r3, [r5, #0x4c]
00331e68  00 30 a0 e3                                      mov r3, #0
00331e6c  54 30 85 e5                                      str r3, [r5, #0x54]
00331e70  f1 ff ff ea                                      b #0x331e3c
00331e74  50 30 95 e5                                      ldr r3, [r5, #0x50]
00331e78  03 00 50 e1                                      cmp r0, r3
00331e7c  05 00 00 0a                                      beq #0x331e98
00331e80  18 30 9d e5                                      ldr r3, [sp, #0x18]
00331e84  00 30 80 e5                                      str r3, [r0]
00331e88  4c 30 95 e5                                      ldr r3, [r5, #0x4c]
00331e8c  04 30 83 e2                                      add r3, r3, #4
00331e90  4c 30 85 e5                                      str r3, [r5, #0x4c]
00331e94  d6 ff ff ea                                      b #0x331df4
00331e98  48 20 95 e5                                      ldr r2, [r5, #0x48]
00331e9c  00 20 62 e0                                      rsb r2, r2, r0
00331ea0  42 21 a0 e1                                      asr r2, r2, #2
00331ea4  01 00 52 e3                                      cmp r2, #1
00331ea8  02 30 82 20                                      addhs r3, r2, r2
00331eac  01 30 82 32                                      addlo r3, r2, #1
00331eb0  07 01 73 e3                                      cmn r3, #0xc0000001
00331eb4  1e 00 00 8a                                      bhi #0x331f34
00331eb8  03 00 52 e1                                      cmp r2, r3
00331ebc  1c 00 00 8a                                      bhi #0x331f34
00331ec0  03 10 a0 e1                                      mov r1, r3
00331ec4  08 00 9d e5                                      ldr r0, [sp, #8]
00331ec8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
00331ecc  14 30 8d e5                                      str r3, [sp, #0x14]
00331ed0  08 ff ff eb                                      bl #0x331af8
00331ed4  48 10 95 e5                                      ldr r1, [r5, #0x48]
00331ed8  00 30 a0 e1                                      mov r3, r0
00331edc  01 60 56 e0                                      subs r6, r6, r1
00331ee0  00 60 a0 01                                      moveq r6, r0
00331ee4  14 00 00 1a                                      bne #0x331f3c
00331ee8  18 20 9d e5                                      ldr r2, [sp, #0x18]
00331eec  04 20 86 e4                                      str r2, [r6], #4
00331ef0  48 00 95 e5                                      ldr r0, [r5, #0x48]
00331ef4  50 10 95 e5                                      ldr r1, [r5, #0x50]
00331ef8  00 00 50 e3                                      cmp r0, #0
00331efc  06 00 00 0a                                      beq #0x331f1c
00331f00  01 10 60 e0                                      rsb r1, r0, r1
00331f04  03 10 c1 e3                                      bic r1, r1, #3
00331f08  80 00 51 e3                                      cmp r1, #0x80
00331f0c  10 00 00 8a                                      bhi #0x331f54
00331f10  04 30 8d e5                                      str r3, [sp, #4]
00331f14  f9 5b 0f eb                                      bl #0x708f00
00331f18  04 30 9d e5                                      ldr r3, [sp, #4]
00331f1c  14 20 9d e5                                      ldr r2, [sp, #0x14]
00331f20  48 30 85 e5                                      str r3, [r5, #0x48]
00331f24  4c 60 85 e5                                      str r6, [r5, #0x4c]
00331f28  02 31 83 e0                                      add r3, r3, r2, lsl #2
00331f2c  50 30 85 e5                                      str r3, [r5, #0x50]
00331f30  af ff ff ea                                      b #0x331df4
00331f34  03 31 e0 e3                                      mvn r3, #0xc0000000
00331f38  e0 ff ff ea                                      b #0x331ec0
00331f3c  06 20 a0 e1                                      mov r2, r6
00331f40  04 00 8d e5                                      str r0, [sp, #4]
00331f44  fb 6f ff eb                                      bl #0x30df38
00331f48  04 30 9d e5                                      ldr r3, [sp, #4]
00331f4c  06 60 80 e0                                      add r6, r0, r6
00331f50  e4 ff ff ea                                      b #0x331ee8
00331f54  04 30 8d e5                                      str r3, [sp, #4]
00331f58  38 79 ff eb                                      bl #0x310440
00331f5c  04 30 9d e5                                      ldr r3, [sp, #4]
00331f60  ed ff ff ea                                      b #0x331f1c
00331f64  e9 70 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00331f68  84 2d 66 00 ac 40 00 00 84 08 00 00 0c d2 58 00  .byte 0x84, 0x2d, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x0c, 0xd2, 0x58, 0x00
00331f78  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00331f7c, declared_size=368, range_size=368, mode=arm
; class-group: Console
; alias: _ZN7Console23UpdateCharacterShowRoomEv
; demangled: Console::UpdateCharacterShowRoom()
; decoder-mode: arm
00331f7c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00331f80  50 41 9f e5                                      ldr r4, [pc, #0x150]
00331f84  50 61 9f e5                                      ldr r6, [pc, #0x150]
00331f88  50 21 9f e5                                      ldr r2, [pc, #0x150]
00331f8c  04 40 8f e0                                      add r4, pc, r4
00331f90  06 30 94 e7                                      ldr r3, [r4, r6]
00331f94  02 70 94 e7                                      ldr r7, [r4, r2]
00331f98  34 d0 4d e2                                      sub sp, sp, #0x34
00331f9c  00 30 93 e5                                      ldr r3, [r3]
00331fa0  00 80 a0 e1                                      mov r8, r0
00331fa4  07 00 a0 e1                                      mov r0, r7
00331fa8  2c 30 8d e5                                      str r3, [sp, #0x2c]
00331fac  35 16 00 eb                                      bl #0x337888
00331fb0  2c 11 9f e5                                      ldr r1, [pc, #0x12c]
00331fb4  14 50 8d e2                                      add r5, sp, #0x14
00331fb8  10 20 8d e2                                      add r2, sp, #0x10
00331fbc  01 10 8f e0                                      add r1, pc, r1
00331fc0  05 00 a0 e1                                      mov r0, r5
00331fc4  48 88 ff eb                                      bl #0x3140ec
00331fc8  07 00 a0 e1                                      mov r0, r7
00331fcc  05 10 a0 e1                                      mov r1, r5
00331fd0  ac 16 00 eb                                      bl #0x337a88
00331fd4  00 70 a0 e1                                      mov r7, r0
00331fd8  05 00 a0 e1                                      mov r0, r5
00331fdc  72 86 ff eb                                      bl #0x3139ac
00331fe0  00 00 57 e3                                      cmp r7, #0
00331fe4  33 00 00 0a                                      beq #0x3320b8
00331fe8  f8 20 9f e5                                      ldr r2, [pc, #0xf8]
00331fec  74 30 98 e5                                      ldr r3, [r8, #0x74]
00331ff0  02 20 94 e7                                      ldr r2, [r4, r2]
00331ff4  38 20 92 e5                                      ldr r2, [r2, #0x38]
00331ff8  60 20 82 e2                                      add r2, r2, #0x60
00331ffc  03 00 52 e1                                      cmp r2, r3
00332000  2c 00 00 0a                                      beq #0x3320b8
00332004  08 50 93 e5                                      ldr r5, [r3, #8]
00332008  00 30 95 e5                                      ldr r3, [r5]
0033200c  05 00 a0 e1                                      mov r0, r5
00332010  0f e0 a0 e1                                      mov lr, pc
00332014  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
00332018  d8 02 95 e5                                      ldr r0, [r5, #0x2d8]
0033201c  01 10 a0 e3                                      mov r1, #1
00332020  d0 fc 04 eb                                      bl #0x471368
00332024  d8 32 95 e5                                      ldr r3, [r5, #0x2d8]
00332028  01 10 a0 e3                                      mov r1, #1
0033202c  08 30 93 e5                                      ldr r3, [r3, #8]
00332030  03 00 a0 e1                                      mov r0, r3
00332034  00 30 93 e5                                      ldr r3, [r3]
00332038  0f e0 a0 e1                                      mov lr, pc
0033203c  48 f0 93 e5                                      ldr pc, [r3, #0x48]
00332040  7c 70 98 e5                                      ldr r7, [r8, #0x7c]
00332044  00 00 57 e3                                      cmp r7, #0
00332048  1a 00 00 0a                                      beq #0x3320b8
0033204c  74 30 98 e5                                      ldr r3, [r8, #0x74]
00332050  08 50 93 e5                                      ldr r5, [r3, #8]
00332054  3c 11 95 e5                                      ldr r1, [r5, #0x13c]
00332058  30 01 95 e5                                      ldr r0, [r5, #0x130]
0033205c  d0 72 ff eb                                      bl #0x30eba4
00332060  3f 14 a0 e3                                      mov r1, #0x3f000000
00332064  40 73 ff eb                                      bl #0x30ed6c
00332068  40 11 95 e5                                      ldr r1, [r5, #0x140]
0033206c  00 a0 a0 e1                                      mov sl, r0
00332070  34 01 95 e5                                      ldr r0, [r5, #0x134]
00332074  ca 72 ff eb                                      bl #0x30eba4
00332078  3f 14 a0 e3                                      mov r1, #0x3f000000
0033207c  3a 73 ff eb                                      bl #0x30ed6c
00332080  38 11 95 e5                                      ldr r1, [r5, #0x138]
00332084  00 80 a0 e1                                      mov r8, r0
00332088  2c 01 95 e5                                      ldr r0, [r5, #0x12c]
0033208c  c4 72 ff eb                                      bl #0x30eba4
00332090  3f 14 a0 e3                                      mov r1, #0x3f000000
00332094  34 73 ff eb                                      bl #0x30ed6c
00332098  08 a0 8d e5                                      str sl, [sp, #8]
0033209c  04 00 8d e5                                      str r0, [sp, #4]
003320a0  0c 80 8d e5                                      str r8, [sp, #0xc]
003320a4  07 00 a0 e1                                      mov r0, r7
003320a8  00 30 97 e5                                      ldr r3, [r7]
003320ac  04 10 8d e2                                      add r1, sp, #4
003320b0  0f e0 a0 e1                                      mov lr, pc
003320b4  04 f1 93 e5                                      ldr pc, [r3, #0x104]
003320b8  06 30 94 e7                                      ldr r3, [r4, r6]
003320bc  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
003320c0  00 30 93 e5                                      ldr r3, [r3]
003320c4  03 00 52 e1                                      cmp r2, r3
003320c8  01 00 00 1a                                      bne #0x3320d4
003320cc  34 d0 8d e2                                      add sp, sp, #0x34
003320d0  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
003320d4  8d 70 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
003320d8  04 2b 66 00 ac 40 00 00 84 08 00 00 ac cf 58 00  .byte 0x04, 0x2b, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0xac, 0xcf, 0x58, 0x00
003320e8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003320ec, declared_size=408, range_size=408, mode=arm
; class-group: Console
; alias: _ZN7Console17_setMenuQuestListEv
; demangled: Console::_setMenuQuestList()
; decoder-mode: arm
003320ec  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003320f0  70 81 9f e5                                      ldr r8, [pc, #0x170]
003320f4  70 21 9f e5                                      ldr r2, [pc, #0x170]
003320f8  4c d0 4d e2                                      sub sp, sp, #0x4c
003320fc  08 80 8f e0                                      add r8, pc, r8
00332100  02 30 98 e7                                      ldr r3, [r8, r2]
00332104  10 20 8d e5                                      str r2, [sp, #0x10]
00332108  1c 20 8d e2                                      add r2, sp, #0x1c
0033210c  14 20 8d e5                                      str r2, [sp, #0x14]
00332110  58 21 9f e5                                      ldr r2, [pc, #0x158]
00332114  00 30 93 e5                                      ldr r3, [r3]
00332118  00 50 a0 e3                                      mov r5, #0
0033211c  02 20 8f e0                                      add r2, pc, r2
00332120  00 90 a0 e1                                      mov sb, r0
00332124  14 10 9d e5                                      ldr r1, [sp, #0x14]
00332128  44 30 8d e5                                      str r3, [sp, #0x44]
0033212c  1c 50 8d e5                                      str r5, [sp, #0x1c]
00332130  20 50 8d e5                                      str r5, [sp, #0x20]
00332134  24 50 8d e5                                      str r5, [sp, #0x24]
00332138  3a f7 ff eb                                      bl #0x32fe28
0033213c  40 30 99 e5                                      ldr r3, [sb, #0x40]
00332140  03 00 a0 e1                                      mov r0, r3
00332144  00 30 93 e5                                      ldr r3, [r3]
00332148  0f e0 a0 e1                                      mov lr, pc
0033214c  98 f0 93 e5                                      ldr pc, [r3, #0x98]
00332150  1c 31 9f e5                                      ldr r3, [pc, #0x11c]
00332154  05 10 a0 e1                                      mov r1, r5
00332158  01 20 a0 e3                                      mov r2, #1
0033215c  03 30 98 e7                                      ldr r3, [r8, r3]
00332160  40 00 93 e5                                      ldr r0, [r3, #0x40]
00332164  c3 f0 00 eb                                      bl #0x36e478
00332168  60 b6 90 e5                                      ldr fp, [r0, #0x660]
0033216c  05 00 5b e1                                      cmp fp, r5
00332170  31 00 00 0a                                      beq #0x33223c
00332174  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
00332178  00 30 8d e5                                      str r3, [sp]
0033217c  03 30 98 e7                                      ldr r3, [r8, r3]
00332180  00 30 93 e5                                      ldr r3, [r3]
00332184  05 00 53 e1                                      cmp r3, r5
00332188  2b 00 00 0a                                      beq #0x33223c
0033218c  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00332190  28 20 8d e2                                      add r2, sp, #0x28
00332194  2c 40 8d e2                                      add r4, sp, #0x2c
00332198  03 a0 98 e7                                      ldr sl, [r8, r3]
0033219c  dc 30 9f e5                                      ldr r3, [pc, #0xdc]
003321a0  08 20 8d e5                                      str r2, [sp, #8]
003321a4  03 30 8f e0                                      add r3, pc, r3
003321a8  04 30 8d e5                                      str r3, [sp, #4]
003321ac  03 30 83 e2                                      add r3, r3, #3
003321b0  0c 30 8d e5                                      str r3, [sp, #0xc]
003321b4  00 30 9a e5                                      ldr r3, [sl]
003321b8  00 20 e0 e3                                      mvn r2, #0
003321bc  0b 00 a0 e1                                      mov r0, fp
003321c0  05 61 93 e7                                      ldr r6, [r3, r5, lsl #2]
003321c4  01 50 85 e2                                      add r5, r5, #1
003321c8  06 10 a0 e1                                      mov r1, r6
003321cc  28 28 02 eb                                      bl #0x3bc274
003321d0  06 10 a0 e1                                      mov r1, r6
003321d4  00 70 a0 e1                                      mov r7, r0
003321d8  08 20 9d e5                                      ldr r2, [sp, #8]
003321dc  04 00 a0 e1                                      mov r0, r4
003321e0  c1 87 ff eb                                      bl #0x3140ec
003321e4  04 10 9d e5                                      ldr r1, [sp, #4]
003321e8  0c 20 9d e5                                      ldr r2, [sp, #0xc]
003321ec  04 00 a0 e1                                      mov r0, r4
003321f0  83 79 ff eb                                      bl #0x310804
003321f4  07 00 a0 e1                                      mov r0, r7
003321f8  41 35 05 eb                                      bl #0x47f704
003321fc  00 60 a0 e1                                      mov r6, r0
00332200  13 6f ff eb                                      bl #0x30de54
00332204  06 10 a0 e1                                      mov r1, r6
00332208  00 20 86 e0                                      add r2, r6, r0
0033220c  04 00 a0 e1                                      mov r0, r4
00332210  7b 79 ff eb                                      bl #0x310804
00332214  40 10 9d e5                                      ldr r1, [sp, #0x40]
00332218  09 00 a0 e1                                      mov r0, sb
0033221c  dd f7 ff eb                                      bl #0x330198
00332220  04 00 a0 e1                                      mov r0, r4
00332224  e0 85 ff eb                                      bl #0x3139ac
00332228  00 20 9d e5                                      ldr r2, [sp]
0033222c  02 30 98 e7                                      ldr r3, [r8, r2]
00332230  00 30 93 e5                                      ldr r3, [r3]
00332234  05 00 53 e1                                      cmp r3, r5
00332238  dd ff ff 8a                                      bhi #0x3321b4
0033223c  14 00 9d e5                                      ldr r0, [sp, #0x14]
00332240  3a 87 ff eb                                      bl #0x313f30
00332244  10 20 9d e5                                      ldr r2, [sp, #0x10]
00332248  02 30 98 e7                                      ldr r3, [r8, r2]
0033224c  44 20 9d e5                                      ldr r2, [sp, #0x44]
00332250  00 30 93 e5                                      ldr r3, [r3]
00332254  03 00 52 e1                                      cmp r2, r3
00332258  01 00 00 1a                                      bne #0x332264
0033225c  4c d0 8d e2                                      add sp, sp, #0x4c
00332260  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00332264  29 70 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00332268  94 29 66 00 ac 40 00 00 c4 d7 58 00 f4 37 00 00  .byte 0x94, 0x29, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xc4, 0xd7, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00
00332278  24 44 00 00 cc 20 00 00 44 d7 58 00              .byte 0x24, 0x44, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00, 0x44, 0xd7, 0x58, 0x00

; FUNCTION 0x00332488, declared_size=196, range_size=196, mode=arm
; class-group: Console
; alias: _ZN7Console16_setMenuCommandsEv
; demangled: Console::_setMenuCommands()
; decoder-mode: arm
00332488  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0033248c  a8 a0 9f e5                                      ldr sl, [pc, #0xa8]
00332490  a8 90 9f e5                                      ldr sb, [pc, #0xa8]
00332494  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00332498  0a a0 8f e0                                      add sl, pc, sl
0033249c  09 30 9a e7                                      ldr r3, [sl, sb]
003324a0  34 d0 4d e2                                      sub sp, sp, #0x34
003324a4  00 40 a0 e3                                      mov r4, #0
003324a8  00 30 93 e5                                      ldr r3, [r3]
003324ac  02 80 9a e7                                      ldr r8, [sl, r2]
003324b0  00 b0 a0 e1                                      mov fp, r0
003324b4  04 40 8d e5                                      str r4, [sp, #4]
003324b8  2c 30 8d e5                                      str r3, [sp, #0x2c]
003324bc  08 40 8d e5                                      str r4, [sp, #8]
003324c0  0c 40 8d e5                                      str r4, [sp, #0xc]
003324c4  14 50 8d e2                                      add r5, sp, #0x14
003324c8  10 70 8d e2                                      add r7, sp, #0x10
003324cc  04 60 8d e2                                      add r6, sp, #4
003324d0  07 20 a0 e1                                      mov r2, r7
003324d4  04 10 98 e7                                      ldr r1, [r8, r4]
003324d8  05 00 a0 e1                                      mov r0, r5
003324dc  02 87 ff eb                                      bl #0x3140ec
003324e0  06 00 a0 e1                                      mov r0, r6
003324e4  05 10 a0 e1                                      mov r1, r5
003324e8  7a e5 ff eb                                      bl #0x32bad8
003324ec  04 40 84 e2                                      add r4, r4, #4
003324f0  05 00 a0 e1                                      mov r0, r5
003324f4  2c 85 ff eb                                      bl #0x3139ac
003324f8  3c 00 54 e3                                      cmp r4, #0x3c
003324fc  f3 ff ff 1a                                      bne #0x3324d0
00332500  40 20 9f e5                                      ldr r2, [pc, #0x40]
00332504  0b 00 a0 e1                                      mov r0, fp
00332508  06 10 a0 e1                                      mov r1, r6
0033250c  02 20 8f e0                                      add r2, pc, r2
00332510  44 f6 ff eb                                      bl #0x32fe28
00332514  06 00 a0 e1                                      mov r0, r6
00332518  84 86 ff eb                                      bl #0x313f30
0033251c  09 30 9a e7                                      ldr r3, [sl, sb]
00332520  2c 20 9d e5                                      ldr r2, [sp, #0x2c]
00332524  00 30 93 e5                                      ldr r3, [r3]
00332528  03 00 52 e1                                      cmp r2, r3
0033252c  01 00 00 1a                                      bne #0x332538
00332530  34 d0 8d e2                                      add sp, sp, #0x34
00332534  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00332538  74 6f ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033253c  f8 25 66 00 ac 40 00 00 e4 0d 00 00 e4 d3 58 00  .byte 0xf8, 0x25, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xe4, 0x0d, 0x00, 0x00, 0xe4, 0xd3, 0x58, 0x00

; FUNCTION 0x003325cc, declared_size=336, range_size=336, mode=arm
; class-group: Console
; alias: _ZN7Console17LoadQuestSaveFileEPKc
; demangled: Console::LoadQuestSaveFile(char const*)
; decoder-mode: arm
003325cc  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
003325d0  34 41 9f e5                                      ldr r4, [pc, #0x134]
003325d4  34 91 9f e5                                      ldr sb, [pc, #0x134]
003325d8  40 d0 4d e2                                      sub sp, sp, #0x40
003325dc  04 40 8f e0                                      add r4, pc, r4
003325e0  09 30 94 e7                                      ldr r3, [r4, sb]
003325e4  0c 60 8d e2                                      add r6, sp, #0xc
003325e8  08 20 8d e2                                      add r2, sp, #8
003325ec  00 30 93 e5                                      ldr r3, [r3]
003325f0  06 00 a0 e1                                      mov r0, r6
003325f4  24 70 8d e2                                      add r7, sp, #0x24
003325f8  3c 30 8d e5                                      str r3, [sp, #0x3c]
003325fc  ba 86 ff eb                                      bl #0x3140ec
00332600  0c 11 9f e5                                      ldr r1, [pc, #0x10c]
00332604  0c 51 9f e5                                      ldr r5, [pc, #0x10c]
00332608  06 20 a0 e1                                      mov r2, r6
0033260c  01 10 8f e0                                      add r1, pc, r1
00332610  07 00 a0 e1                                      mov r0, r7
00332614  cc ff ff eb                                      bl #0x33254c
00332618  06 00 a0 e1                                      mov r0, r6
0033261c  e2 84 ff eb                                      bl #0x3139ac
00332620  05 60 94 e7                                      ldr r6, [r4, r5]
00332624  00 20 a0 e3                                      mov r2, #0
00332628  38 10 9d e5                                      ldr r1, [sp, #0x38]
0033262c  10 00 96 e5                                      ldr r0, [r6, #0x10]
00332630  02 30 a0 e1                                      mov r3, r2
00332634  34 c0 90 e5                                      ldr ip, [r0, #0x34]
00332638  0c 00 a0 e1                                      mov r0, ip
0033263c  00 c0 9c e5                                      ldr ip, [ip]
00332640  0f e0 a0 e1                                      mov lr, pc
00332644  88 f0 9c e5                                      ldr pc, [ip, #0x88]
00332648  00 00 50 e3                                      cmp r0, #0
0033264c  00 10 a0 e1                                      mov r1, r0
00332650  04 00 8d e5                                      str r0, [sp, #4]
00332654  22 00 00 0a                                      beq #0x3326e4
00332658  40 30 96 e5                                      ldr r3, [r6, #0x40]
0033265c  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
00332660  00 00 53 e3                                      cmp r3, #0
00332664  16 00 00 da                                      ble #0x3326c4
00332668  00 60 a0 e3                                      mov r6, #0
0033266c  00 00 00 ea                                      b #0x332674
00332670  04 10 9d e5                                      ldr r1, [sp, #4]
00332674  00 30 a0 e3                                      mov r3, #0
00332678  01 00 a0 e1                                      mov r0, r1
0033267c  00 20 a0 e3                                      mov r2, #0
00332680  00 10 91 e5                                      ldr r1, [r1]
00332684  0f e0 a0 e1                                      mov lr, pc
00332688  20 f0 91 e5                                      ldr pc, [r1, #0x20]
0033268c  05 80 94 e7                                      ldr r8, [r4, r5]
00332690  06 10 a0 e1                                      mov r1, r6
00332694  01 20 a0 e3                                      mov r2, #1
00332698  40 00 98 e5                                      ldr r0, [r8, #0x40]
0033269c  04 a0 9d e5                                      ldr sl, [sp, #4]
003326a0  27 f0 00 eb                                      bl #0x36e744
003326a4  60 16 90 e5                                      ldr r1, [r0, #0x660]
003326a8  0a 00 a0 e1                                      mov r0, sl
003326ac  24 25 02 eb                                      bl #0x3bbb44
003326b0  40 30 98 e5                                      ldr r3, [r8, #0x40]
003326b4  01 60 86 e2                                      add r6, r6, #1
003326b8  c4 36 93 e5                                      ldr r3, [r3, #0x6c4]
003326bc  03 00 56 e1                                      cmp r6, r3
003326c0  ea ff ff ba                                      blt #0x332670
003326c4  05 30 94 e7                                      ldr r3, [r4, r5]
003326c8  04 10 8d e2                                      add r1, sp, #4
003326cc  10 30 93 e5                                      ldr r3, [r3, #0x10]
003326d0  34 30 93 e5                                      ldr r3, [r3, #0x34]
003326d4  03 00 a0 e1                                      mov r0, r3
003326d8  00 30 93 e5                                      ldr r3, [r3]
003326dc  0f e0 a0 e1                                      mov lr, pc
003326e0  78 f0 93 e5                                      ldr pc, [r3, #0x78]
003326e4  07 00 a0 e1                                      mov r0, r7
003326e8  af 84 ff eb                                      bl #0x3139ac
003326ec  09 30 94 e7                                      ldr r3, [r4, sb]
003326f0  3c 20 9d e5                                      ldr r2, [sp, #0x3c]
003326f4  00 30 93 e5                                      ldr r3, [r3]
003326f8  03 00 52 e1                                      cmp r2, r3
003326fc  01 00 00 1a                                      bne #0x332708
00332700  40 d0 8d e2                                      add sp, sp, #0x40
00332704  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00332708  00 6f ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033270c  b4 24 66 00 ac 40 00 00 f4 d2 58 00 f4 37 00 00  .byte 0xb4, 0x24, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0xd2, 0x58, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0033271c, declared_size=4528, range_size=4528, mode=arm
; class-group: Console
; alias: _ZN7Console16onEventNotOpenedEPK6IEventPK12EventManager
; demangled: Console::onEventNotOpened(IEvent const*, EventManager const*)
; decoder-mode: arm
0033271c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00332720  9c 4e 9f e5                                      ldr r4, [pc, #0xe9c]
00332724  9c 5e 9f e5                                      ldr r5, [pc, #0xe9c]
00332728  9c 7e 9f e5                                      ldr r7, [pc, #0xe9c]
0033272c  04 40 8f e0                                      add r4, pc, r4
00332730  05 30 94 e7                                      ldr r3, [r4, r5]
00332734  07 a0 94 e7                                      ldr sl, [r4, r7]
00332738  7f df 4d e2                                      sub sp, sp, #0x1fc
0033273c  00 30 93 e5                                      ldr r3, [r3]
00332740  00 60 a0 e1                                      mov r6, r0
00332744  0a 00 a0 e1                                      mov r0, sl
00332748  01 80 a0 e1                                      mov r8, r1
0033274c  f4 31 8d e5                                      str r3, [sp, #0x1f4]
00332750  8f b3 ff eb                                      bl #0x31f594
00332754  00 00 50 e3                                      cmp r0, #0
00332758  02 00 00 0a                                      beq #0x332768
0033275c  30 31 90 e5                                      ldr r3, [r0, #0x130]
00332760  26 00 53 e3                                      cmp r3, #0x26
00332764  07 00 00 0a                                      beq #0x332788
00332768  05 30 94 e7                                      ldr r3, [r4, r5]
0033276c  f4 21 9d e5                                      ldr r2, [sp, #0x1f4]
00332770  00 00 a0 e3                                      mov r0, #0
00332774  00 30 93 e5                                      ldr r3, [r3]
00332778  03 00 52 e1                                      cmp r2, r3
0033277c  46 04 00 1a                                      bne #0x33389c
00332780  7f df 8d e2                                      add sp, sp, #0x1fc
00332784  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00332788  00 30 98 e5                                      ldr r3, [r8]
0033278c  08 00 a0 e1                                      mov r0, r8
00332790  0f e0 a0 e1                                      mov lr, pc
00332794  08 f0 93 e5                                      ldr pc, [r3, #8]
00332798  00 00 50 e3                                      cmp r0, #0
0033279c  f1 ff ff 1a                                      bne #0x332768
003327a0  0c 30 98 e5                                      ldr r3, [r8, #0xc]
003327a4  57 00 53 e3                                      cmp r3, #0x57
003327a8  c3 00 00 0a                                      beq #0x332abc
003327ac  53 00 53 e3                                      cmp r3, #0x53
003327b0  d6 00 00 0a                                      beq #0x332b10
003327b4  41 00 53 e3                                      cmp r3, #0x41
003327b8  e2 00 00 0a                                      beq #0x332b48
003327bc  44 00 53 e3                                      cmp r3, #0x44
003327c0  ed 00 00 0a                                      beq #0x332b7c
003327c4  58 00 53 e3                                      cmp r3, #0x58
003327c8  f8 00 00 0a                                      beq #0x332bb0
003327cc  00 30 98 e5                                      ldr r3, [r8]
003327d0  08 00 a0 e1                                      mov r0, r8
003327d4  0f e0 a0 e1                                      mov lr, pc
003327d8  08 f0 93 e5                                      ldr pc, [r3, #8]
003327dc  00 00 50 e3                                      cmp r0, #0
003327e0  e0 ff ff 1a                                      bne #0x332768
003327e4  10 30 d8 e5                                      ldrb r3, [r8, #0x10]
003327e8  00 00 53 e3                                      cmp r3, #0
003327ec  dd ff ff 0a                                      beq #0x332768
003327f0  0c 30 98 e5                                      ldr r3, [r8, #0xc]
003327f4  30 30 43 e2                                      sub r3, r3, #0x30
003327f8  ad 00 53 e3                                      cmp r3, #0xad
003327fc  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00332800  d8 ff ff ea                                      b #0x332768
00332804  bf 01 00 ea                                      b #0x332f08
00332808  d6 ff ff ea                                      b #0x332768
0033280c  d5 ff ff ea                                      b #0x332768
00332810  d4 ff ff ea                                      b #0x332768
00332814  d3 ff ff ea                                      b #0x332768
00332818  d2 ff ff ea                                      b #0x332768
0033281c  d1 ff ff ea                                      b #0x332768
00332820  d0 ff ff ea                                      b #0x332768
00332824  cf ff ff ea                                      b #0x332768
00332828  9c 01 00 ea                                      b #0x332ea0
0033282c  cd ff ff ea                                      b #0x332768
00332830  cc ff ff ea                                      b #0x332768
00332834  cb ff ff ea                                      b #0x332768
00332838  ca ff ff ea                                      b #0x332768
0033283c  c9 ff ff ea                                      b #0x332768
00332840  c8 ff ff ea                                      b #0x332768
00332844  c7 ff ff ea                                      b #0x332768
00332848  c6 ff ff ea                                      b #0x332768
0033284c  c5 ff ff ea                                      b #0x332768
00332850  c4 ff ff ea                                      b #0x332768
00332854  c3 ff ff ea                                      b #0x332768
00332858  c2 ff ff ea                                      b #0x332768
0033285c  e3 00 00 ea                                      b #0x332bf0
00332860  c0 ff ff ea                                      b #0x332768
00332864  bf ff ff ea                                      b #0x332768
00332868  be ff ff ea                                      b #0x332768
0033286c  bd ff ff ea                                      b #0x332768
00332870  82 01 00 ea                                      b #0x332e80
00332874  bb ff ff ea                                      b #0x332768
00332878  ba ff ff ea                                      b #0x332768
0033287c  b9 ff ff ea                                      b #0x332768
00332880  b8 ff ff ea                                      b #0x332768
00332884  60 01 00 ea                                      b #0x332e0c
00332888  b6 ff ff ea                                      b #0x332768
0033288c  5b 01 00 ea                                      b #0x332e00
00332890  b4 ff ff ea                                      b #0x332768
00332894  b3 ff ff ea                                      b #0x332768
00332898  50 01 00 ea                                      b #0x332de0
0033289c  b1 ff ff ea                                      b #0x332768
003328a0  b0 ff ff ea                                      b #0x332768
003328a4  af ff ff ea                                      b #0x332768
003328a8  ae ff ff ea                                      b #0x332768
003328ac  ad ff ff ea                                      b #0x332768
003328b0  ac ff ff ea                                      b #0x332768
003328b4  ab ff ff ea                                      b #0x332768
003328b8  45 01 00 ea                                      b #0x332dd4
003328bc  3f 01 00 ea                                      b #0x332dc0
003328c0  a8 ff ff ea                                      b #0x332768
003328c4  a7 ff ff ea                                      b #0x332768
003328c8  a6 ff ff ea                                      b #0x332768
003328cc  a5 ff ff ea                                      b #0x332768
003328d0  a4 ff ff ea                                      b #0x332768
003328d4  a3 ff ff ea                                      b #0x332768
003328d8  a2 ff ff ea                                      b #0x332768
003328dc  a1 ff ff ea                                      b #0x332768
003328e0  a0 ff ff ea                                      b #0x332768
003328e4  9f ff ff ea                                      b #0x332768
003328e8  9e ff ff ea                                      b #0x332768
003328ec  9d ff ff ea                                      b #0x332768
003328f0  9c ff ff ea                                      b #0x332768
003328f4  9b ff ff ea                                      b #0x332768
003328f8  9a ff ff ea                                      b #0x332768
003328fc  99 ff ff ea                                      b #0x332768
00332900  98 ff ff ea                                      b #0x332768
00332904  97 ff ff ea                                      b #0x332768
00332908  96 ff ff ea                                      b #0x332768
0033290c  95 ff ff ea                                      b #0x332768
00332910  94 ff ff ea                                      b #0x332768
00332914  93 ff ff ea                                      b #0x332768
00332918  92 ff ff ea                                      b #0x332768
0033291c  91 ff ff ea                                      b #0x332768
00332920  90 ff ff ea                                      b #0x332768
00332924  8f ff ff ea                                      b #0x332768
00332928  8e ff ff ea                                      b #0x332768
0033292c  8d ff ff ea                                      b #0x332768
00332930  8c ff ff ea                                      b #0x332768
00332934  8b ff ff ea                                      b #0x332768
00332938  8a ff ff ea                                      b #0x332768
0033293c  89 ff ff ea                                      b #0x332768
00332940  88 ff ff ea                                      b #0x332768
00332944  87 ff ff ea                                      b #0x332768
00332948  86 ff ff ea                                      b #0x332768
0033294c  85 ff ff ea                                      b #0x332768
00332950  cf 00 00 ea                                      b #0x332c94
00332954  75 02 00 ea                                      b #0x333330
00332958  33 02 00 ea                                      b #0x33322c
0033295c  e7 01 00 ea                                      b #0x333100
00332960  80 ff ff ea                                      b #0x332768
00332964  7f ff ff ea                                      b #0x332768
00332968  7e ff ff ea                                      b #0x332768
0033296c  7d ff ff ea                                      b #0x332768
00332970  d4 01 00 ea                                      b #0x3330c8
00332974  c5 01 00 ea                                      b #0x333090
00332978  7a ff ff ea                                      b #0x332768
0033297c  79 ff ff ea                                      b #0x332768
00332980  9e 01 00 ea                                      b #0x333000
00332984  79 01 00 ea                                      b #0x332f70
00332988  76 ff ff ea                                      b #0x332768
0033298c  75 ff ff ea                                      b #0x332768
00332990  74 ff ff ea                                      b #0x332768
00332994  73 ff ff ea                                      b #0x332768
00332998  72 ff ff ea                                      b #0x332768
0033299c  71 ff ff ea                                      b #0x332768
003329a0  70 ff ff ea                                      b #0x332768
003329a4  6f ff ff ea                                      b #0x332768
003329a8  6e ff ff ea                                      b #0x332768
003329ac  6d ff ff ea                                      b #0x332768
003329b0  6c ff ff ea                                      b #0x332768
003329b4  6b ff ff ea                                      b #0x332768
003329b8  6a ff ff ea                                      b #0x332768
003329bc  69 ff ff ea                                      b #0x332768
003329c0  68 ff ff ea                                      b #0x332768
003329c4  67 ff ff ea                                      b #0x332768
003329c8  66 ff ff ea                                      b #0x332768
003329cc  65 ff ff ea                                      b #0x332768
003329d0  64 ff ff ea                                      b #0x332768
003329d4  63 ff ff ea                                      b #0x332768
003329d8  62 ff ff ea                                      b #0x332768
003329dc  61 ff ff ea                                      b #0x332768
003329e0  60 ff ff ea                                      b #0x332768
003329e4  5f ff ff ea                                      b #0x332768
003329e8  5e ff ff ea                                      b #0x332768
003329ec  5d ff ff ea                                      b #0x332768
003329f0  5c ff ff ea                                      b #0x332768
003329f4  5b ff ff ea                                      b #0x332768
003329f8  5a ff ff ea                                      b #0x332768
003329fc  59 ff ff ea                                      b #0x332768
00332a00  58 ff ff ea                                      b #0x332768
00332a04  57 ff ff ea                                      b #0x332768
00332a08  56 ff ff ea                                      b #0x332768
00332a0c  55 ff ff ea                                      b #0x332768
00332a10  54 ff ff ea                                      b #0x332768
00332a14  53 ff ff ea                                      b #0x332768
00332a18  52 ff ff ea                                      b #0x332768
00332a1c  51 ff ff ea                                      b #0x332768
00332a20  50 ff ff ea                                      b #0x332768
00332a24  4f ff ff ea                                      b #0x332768
00332a28  4e ff ff ea                                      b #0x332768
00332a2c  4d ff ff ea                                      b #0x332768
00332a30  4c ff ff ea                                      b #0x332768
00332a34  4b ff ff ea                                      b #0x332768
00332a38  4a ff ff ea                                      b #0x332768
00332a3c  49 ff ff ea                                      b #0x332768
00332a40  48 ff ff ea                                      b #0x332768
00332a44  47 ff ff ea                                      b #0x332768
00332a48  46 ff ff ea                                      b #0x332768
00332a4c  45 ff ff ea                                      b #0x332768
00332a50  44 ff ff ea                                      b #0x332768
00332a54  43 ff ff ea                                      b #0x332768
00332a58  42 ff ff ea                                      b #0x332768
00332a5c  41 ff ff ea                                      b #0x332768
00332a60  40 ff ff ea                                      b #0x332768
00332a64  3f ff ff ea                                      b #0x332768
00332a68  3e ff ff ea                                      b #0x332768
00332a6c  3d ff ff ea                                      b #0x332768
00332a70  3c ff ff ea                                      b #0x332768
00332a74  3b ff ff ea                                      b #0x332768
00332a78  3a ff ff ea                                      b #0x332768
00332a7c  39 ff ff ea                                      b #0x332768
00332a80  38 ff ff ea                                      b #0x332768
00332a84  37 ff ff ea                                      b #0x332768
00332a88  36 ff ff ea                                      b #0x332768
00332a8c  35 ff ff ea                                      b #0x332768
00332a90  34 ff ff ea                                      b #0x332768
00332a94  33 ff ff ea                                      b #0x332768
00332a98  32 ff ff ea                                      b #0x332768
00332a9c  31 ff ff ea                                      b #0x332768
00332aa0  30 ff ff ea                                      b #0x332768
00332aa4  2f ff ff ea                                      b #0x332768
00332aa8  2e ff ff ea                                      b #0x332768
00332aac  2d ff ff ea                                      b #0x332768
00332ab0  25 01 00 ea                                      b #0x332f4c
00332ab4  2b ff ff ea                                      b #0x332768
00332ab8  09 01 00 ea                                      b #0x332ee4
00332abc  0a 00 a0 e1                                      mov r0, sl
00332ac0  b3 b2 ff eb                                      bl #0x31f594
00332ac4  00 00 50 e3                                      cmp r0, #0
00332ac8  1c 00 00 0a                                      beq #0x332b40
00332acc  28 a1 90 e5                                      ldr sl, [r0, #0x128]
00332ad0  00 00 5a e3                                      cmp sl, #0
00332ad4  19 00 00 0a                                      beq #0x332b40
00332ad8  43 14 a0 e3                                      mov r1, #0x43000000
00332adc  38 00 9a e5                                      ldr r0, [sl, #0x38]
00332ae0  12 17 81 e2                                      add r1, r1, #0x480000
00332ae4  30 6e ff eb                                      bl #0x30e3ac
00332ae8  08 30 9a e5                                      ldr r3, [sl, #8]
00332aec  38 00 8a e5                                      str r0, [sl, #0x38]
00332af0  00 10 05 e3                                      movw r1, #0x5000
00332af4  03 00 a0 e1                                      mov r0, r3
00332af8  43 17 44 e3                                      movt r1, #0x4743
00332afc  00 30 93 e5                                      ldr r3, [r3]
00332b00  0f e0 a0 e1                                      mov lr, pc
00332b04  34 f1 93 e5                                      ldr pc, [r3, #0x134]
00332b08  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00332b0c  28 ff ff ea                                      b #0x3327b4
00332b10  0a 00 a0 e1                                      mov r0, sl
00332b14  9e b2 ff eb                                      bl #0x31f594
00332b18  00 00 50 e3                                      cmp r0, #0
00332b1c  07 00 00 0a                                      beq #0x332b40
00332b20  28 a1 90 e5                                      ldr sl, [r0, #0x128]
00332b24  00 00 5a e3                                      cmp sl, #0
00332b28  04 00 00 0a                                      beq #0x332b40
00332b2c  43 14 a0 e3                                      mov r1, #0x43000000
00332b30  38 00 9a e5                                      ldr r0, [sl, #0x38]
00332b34  12 17 81 e2                                      add r1, r1, #0x480000
00332b38  19 70 ff eb                                      bl #0x30eba4
00332b3c  38 00 8a e5                                      str r0, [sl, #0x38]
00332b40  0c 30 98 e5                                      ldr r3, [r8, #0xc]
00332b44  1a ff ff ea                                      b #0x3327b4
00332b48  07 00 94 e7                                      ldr r0, [r4, r7]
00332b4c  90 b2 ff eb                                      bl #0x31f594
00332b50  00 00 50 e3                                      cmp r0, #0
00332b54  1c ff ff 0a                                      beq #0x3327cc
00332b58  28 a1 90 e5                                      ldr sl, [r0, #0x128]
00332b5c  00 00 5a e3                                      cmp sl, #0
00332b60  19 ff ff 0a                                      beq #0x3327cc
00332b64  43 14 a0 e3                                      mov r1, #0x43000000
00332b68  3c 00 9a e5                                      ldr r0, [sl, #0x3c]
00332b6c  12 17 81 e2                                      add r1, r1, #0x480000
00332b70  0d 6e ff eb                                      bl #0x30e3ac
00332b74  3c 00 8a e5                                      str r0, [sl, #0x3c]
00332b78  13 ff ff ea                                      b #0x3327cc
00332b7c  07 00 94 e7                                      ldr r0, [r4, r7]
00332b80  83 b2 ff eb                                      bl #0x31f594
00332b84  00 00 50 e3                                      cmp r0, #0
00332b88  0f ff ff 0a                                      beq #0x3327cc
00332b8c  28 a1 90 e5                                      ldr sl, [r0, #0x128]
00332b90  00 00 5a e3                                      cmp sl, #0
00332b94  0c ff ff 0a                                      beq #0x3327cc
00332b98  43 14 a0 e3                                      mov r1, #0x43000000
00332b9c  3c 00 9a e5                                      ldr r0, [sl, #0x3c]
00332ba0  12 17 81 e2                                      add r1, r1, #0x480000
00332ba4  fe 6f ff eb                                      bl #0x30eba4
00332ba8  3c 00 8a e5                                      str r0, [sl, #0x3c]
00332bac  06 ff ff ea                                      b #0x3327cc
00332bb0  07 00 94 e7                                      ldr r0, [r4, r7]
00332bb4  76 b2 ff eb                                      bl #0x31f594
00332bb8  00 00 50 e3                                      cmp r0, #0
00332bbc  02 ff ff 0a                                      beq #0x3327cc
00332bc0  28 31 90 e5                                      ldr r3, [r0, #0x128]
00332bc4  00 00 53 e3                                      cmp r3, #0
00332bc8  ff fe ff 0a                                      beq #0x3327cc
00332bcc  fc 29 9f e5                                      ldr r2, [pc, #0x9fc]
00332bd0  02 20 94 e7                                      ldr r2, [r4, r2]
00332bd4  00 10 92 e5                                      ldr r1, [r2]
00332bd8  38 10 83 e5                                      str r1, [r3, #0x38]
00332bdc  04 10 92 e5                                      ldr r1, [r2, #4]
00332be0  3c 10 83 e5                                      str r1, [r3, #0x3c]
00332be4  08 20 92 e5                                      ldr r2, [r2, #8]
00332be8  40 20 83 e5                                      str r2, [r3, #0x40]
00332bec  f6 fe ff ea                                      b #0x3327cc
00332bf0  07 30 94 e7                                      ldr r3, [r4, r7]
00332bf4  7c 20 96 e5                                      ldr r2, [r6, #0x7c]
00332bf8  10 30 93 e5                                      ldr r3, [r3, #0x10]
00332bfc  00 00 52 e3                                      cmp r2, #0
00332c00  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
00332c04  7e 02 00 0a                                      beq #0x333604
00332c08  cc f6 ff eb                                      bl #0x330740
00332c0c  c0 19 9f e5                                      ldr r1, [pc, #0x9c0]
00332c10  71 8f 8d e2                                      add r8, sp, #0x1c4
00332c14  00 90 a0 e1                                      mov sb, r0
00332c18  6c 20 8d e2                                      add r2, sp, #0x6c
00332c1c  01 10 8f e0                                      add r1, pc, r1
00332c20  08 00 a0 e1                                      mov r0, r8
00332c24  30 85 ff eb                                      bl #0x3140ec
00332c28  08 10 a0 e1                                      mov r1, r8
00332c2c  00 20 a0 e3                                      mov r2, #0
00332c30  09 00 a0 e1                                      mov r0, sb
00332c34  68 14 00 eb                                      bl #0x337ddc
00332c38  08 00 a0 e1                                      mov r0, r8
00332c3c  5a 83 ff eb                                      bl #0x3139ac
00332c40  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00332c44  07 80 94 e7                                      ldr r8, [r4, r7]
00332c48  00 00 53 e3                                      cmp r3, #0
00332c4c  03 10 a0 01                                      moveq r1, r3
00332c50  13 1e 83 12                                      addne r1, r3, #0x130
00332c54  08 00 a0 e1                                      mov r0, r8
00332c58  ac d9 ff eb                                      bl #0x329310
00332c5c  04 30 9a e5                                      ldr r3, [sl, #4]
00332c60  7c 10 96 e5                                      ldr r1, [r6, #0x7c]
00332c64  03 00 a0 e1                                      mov r0, r3
00332c68  00 30 93 e5                                      ldr r3, [r3]
00332c6c  0f e0 a0 e1                                      mov lr, pc
00332c70  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00332c74  00 30 a0 e3                                      mov r3, #0
00332c78  7c 30 86 e5                                      str r3, [r6, #0x7c]
00332c7c  08 00 a0 e1                                      mov r0, r8
00332c80  43 b2 ff eb                                      bl #0x31f594
00332c84  28 31 90 e5                                      ldr r3, [r0, #0x128]
00332c88  0a 00 a0 e1                                      mov r0, sl
00332c8c  08 10 93 e5                                      ldr r1, [r3, #8]
00332c90  0a 59 09 eb                                      bl #0x5890c0
00332c94  a9 f6 ff eb                                      bl #0x330740
00332c98  38 89 9f e5                                      ldr r8, [pc, #0x938]
00332c9c  65 9f 8d e2                                      add sb, sp, #0x194
00332ca0  00 30 a0 e1                                      mov r3, r0
00332ca4  08 80 8f e0                                      add r8, pc, r8
00332ca8  08 10 a0 e1                                      mov r1, r8
00332cac  64 20 8d e2                                      add r2, sp, #0x64
00332cb0  09 00 a0 e1                                      mov r0, sb
00332cb4  00 30 8d e5                                      str r3, [sp]
00332cb8  0b 85 ff eb                                      bl #0x3140ec
00332cbc  9f f6 ff eb                                      bl #0x330740
00332cc0  6b af 8d e2                                      add sl, sp, #0x1ac
00332cc4  00 b0 a0 e1                                      mov fp, r0
00332cc8  68 20 8d e2                                      add r2, sp, #0x68
00332ccc  08 10 a0 e1                                      mov r1, r8
00332cd0  0a 00 a0 e1                                      mov r0, sl
00332cd4  04 85 ff eb                                      bl #0x3140ec
00332cd8  0a 10 a0 e1                                      mov r1, sl
00332cdc  0b 00 a0 e1                                      mov r0, fp
00332ce0  68 13 00 eb                                      bl #0x337a88
00332ce4  00 30 9d e5                                      ldr r3, [sp]
00332ce8  01 20 20 e2                                      eor r2, r0, #1
00332cec  09 10 a0 e1                                      mov r1, sb
00332cf0  72 20 ef e6                                      uxtb r2, r2
00332cf4  03 00 a0 e1                                      mov r0, r3
00332cf8  37 14 00 eb                                      bl #0x337ddc
00332cfc  0a 00 a0 e1                                      mov r0, sl
00332d00  29 83 ff eb                                      bl #0x3139ac
00332d04  09 00 a0 e1                                      mov r0, sb
00332d08  27 83 ff eb                                      bl #0x3139ac
00332d0c  07 b0 94 e7                                      ldr fp, [r4, r7]
00332d10  5f 9f 8d e2                                      add sb, sp, #0x17c
00332d14  10 30 9b e5                                      ldr r3, [fp, #0x10]
00332d18  1c a0 93 e5                                      ldr sl, [r3, #0x1c]
00332d1c  87 f6 ff eb                                      bl #0x330740
00332d20  08 10 a0 e1                                      mov r1, r8
00332d24  00 30 a0 e1                                      mov r3, r0
00332d28  60 20 8d e2                                      add r2, sp, #0x60
00332d2c  09 00 a0 e1                                      mov r0, sb
00332d30  00 30 8d e5                                      str r3, [sp]
00332d34  ec 84 ff eb                                      bl #0x3140ec
00332d38  00 30 9d e5                                      ldr r3, [sp]
00332d3c  09 10 a0 e1                                      mov r1, sb
00332d40  03 00 a0 e1                                      mov r0, r3
00332d44  4f 13 00 eb                                      bl #0x337a88
00332d48  00 80 a0 e1                                      mov r8, r0
00332d4c  09 00 a0 e1                                      mov r0, sb
00332d50  15 83 ff eb                                      bl #0x3139ac
00332d54  00 00 58 e3                                      cmp r8, #0
00332d58  a3 01 00 1a                                      bne #0x3333ec
00332d5c  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00332d60  38 20 9b e5                                      ldr r2, [fp, #0x38]
00332d64  07 70 94 e7                                      ldr r7, [r4, r7]
00332d68  00 00 53 e3                                      cmp r3, #0
00332d6c  60 20 82 e2                                      add r2, r2, #0x60
00332d70  03 10 a0 01                                      moveq r1, r3
00332d74  13 1e 83 12                                      addne r1, r3, #0x130
00332d78  74 20 86 e5                                      str r2, [r6, #0x74]
00332d7c  07 00 a0 e1                                      mov r0, r7
00332d80  62 d9 ff eb                                      bl #0x329310
00332d84  04 30 9a e5                                      ldr r3, [sl, #4]
00332d88  7c 10 96 e5                                      ldr r1, [r6, #0x7c]
00332d8c  03 00 a0 e1                                      mov r0, r3
00332d90  00 30 93 e5                                      ldr r3, [r3]
00332d94  0f e0 a0 e1                                      mov lr, pc
00332d98  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00332d9c  07 00 a0 e1                                      mov r0, r7
00332da0  fb b1 ff eb                                      bl #0x31f594
00332da4  28 31 90 e5                                      ldr r3, [r0, #0x128]
00332da8  0a 00 a0 e1                                      mov r0, sl
00332dac  08 10 93 e5                                      ldr r1, [r3, #8]
00332db0  c2 58 09 eb                                      bl #0x5890c0
00332db4  00 30 a0 e3                                      mov r3, #0
00332db8  7c 30 86 e5                                      str r3, [r6, #0x7c]
00332dbc  69 fe ff ea                                      b #0x332768
00332dc0  14 18 9f e5                                      ldr r1, [pc, #0x814]
00332dc4  06 00 a0 e1                                      mov r0, r6
00332dc8  01 10 8f e0                                      add r1, pc, r1
00332dcc  fe fd ff eb                                      bl #0x3325cc
00332dd0  64 fe ff ea                                      b #0x332768
00332dd4  06 00 a0 e1                                      mov r0, r6
00332dd8  32 f6 ff eb                                      bl #0x3306a8
00332ddc  61 fe ff ea                                      b #0x332768
00332de0  6b 2a 13 eb                                      bl #0x7fd794
00332de4  05 30 d0 e5                                      ldrb r3, [r0, #5]
00332de8  00 00 53 e3                                      cmp r3, #0
00332dec  5d fe ff 0a                                      beq #0x332768
00332df0  07 30 94 e7                                      ldr r3, [r4, r7]
00332df4  38 00 93 e5                                      ldr r0, [r3, #0x38]
00332df8  74 54 00 eb                                      bl #0x347fd0
00332dfc  59 fe ff ea                                      b #0x332768
00332e00  06 00 a0 e1                                      mov r0, r6
00332e04  f2 f6 ff eb                                      bl #0x3309d4
00332e08  56 fe ff ea                                      b #0x332768
00332e0c  4b f6 ff eb                                      bl #0x330740
00332e10  c8 67 9f e5                                      ldr r6, [pc, #0x7c8]
00332e14  ec 70 8d e2                                      add r7, sp, #0xec
00332e18  48 20 8d e2                                      add r2, sp, #0x48
00332e1c  06 60 8f e0                                      add r6, pc, r6
00332e20  06 10 a0 e1                                      mov r1, r6
00332e24  00 90 a0 e1                                      mov sb, r0
00332e28  07 00 a0 e1                                      mov r0, r7
00332e2c  ae 84 ff eb                                      bl #0x3140ec
00332e30  42 f6 ff eb                                      bl #0x330740
00332e34  41 8f 8d e2                                      add r8, sp, #0x104
00332e38  4c 20 8d e2                                      add r2, sp, #0x4c
00332e3c  00 a0 a0 e1                                      mov sl, r0
00332e40  06 10 a0 e1                                      mov r1, r6
00332e44  08 00 a0 e1                                      mov r0, r8
00332e48  a7 84 ff eb                                      bl #0x3140ec
00332e4c  08 10 a0 e1                                      mov r1, r8
00332e50  0a 00 a0 e1                                      mov r0, sl
00332e54  0b 13 00 eb                                      bl #0x337a88
00332e58  01 20 20 e2                                      eor r2, r0, #1
00332e5c  72 20 ef e6                                      uxtb r2, r2
00332e60  09 00 a0 e1                                      mov r0, sb
00332e64  07 10 a0 e1                                      mov r1, r7
00332e68  db 13 00 eb                                      bl #0x337ddc
00332e6c  08 00 a0 e1                                      mov r0, r8
00332e70  cd 82 ff eb                                      bl #0x3139ac
00332e74  07 00 a0 e1                                      mov r0, r7
00332e78  cb 82 ff eb                                      bl #0x3139ac
00332e7c  39 fe ff ea                                      b #0x332768
00332e80  43 2a 13 eb                                      bl #0x7fd794
00332e84  05 30 d0 e5                                      ldrb r3, [r0, #5]
00332e88  00 00 53 e3                                      cmp r3, #0
00332e8c  35 fe ff 0a                                      beq #0x332768
00332e90  07 30 94 e7                                      ldr r3, [r4, r7]
00332e94  38 00 93 e5                                      ldr r0, [r3, #0x38]
00332e98  23 36 00 eb                                      bl #0x34072c
00332e9c  31 fe ff ea                                      b #0x332768
00332ea0  07 00 94 e7                                      ldr r0, [r4, r7]
00332ea4  ba b1 ff eb                                      bl #0x31f594
00332ea8  00 30 50 e2                                      subs r3, r0, #0
00332eac  28 31 93 15                                      ldrne r3, [r3, #0x128]
00332eb0  08 60 93 e5                                      ldr r6, [r3, #8]
00332eb4  00 30 96 e5                                      ldr r3, [r6]
00332eb8  06 00 a0 e1                                      mov r0, r6
00332ebc  3c 71 93 e5                                      ldr r7, [r3, #0x13c]
00332ec0  0f e0 a0 e1                                      mov lr, pc
00332ec4  28 f1 93 e5                                      ldr pc, [r3, #0x128]
00332ec8  35 1a 0f e3                                      movw r1, #0xfa35
00332ecc  8e 1c 43 e3                                      movt r1, #0x3c8e
00332ed0  35 6d ff eb                                      bl #0x30e3ac
00332ed4  00 10 a0 e1                                      mov r1, r0
00332ed8  06 00 a0 e1                                      mov r0, r6
00332edc  37 ff 2f e1                                      blx r7
00332ee0  20 fe ff ea                                      b #0x332768
00332ee4  07 00 94 e7                                      ldr r0, [r4, r7]
00332ee8  a9 b1 ff eb                                      bl #0x31f594
00332eec  00 00 50 e3                                      cmp r0, #0
00332ef0  1c fe ff 0a                                      beq #0x332768
00332ef4  28 01 90 e5                                      ldr r0, [r0, #0x128]
00332ef8  00 00 50 e3                                      cmp r0, #0
00332efc  19 fe ff 0a                                      beq #0x332768
00332f00  55 71 03 eb                                      bl #0x40f45c
00332f04  17 fe ff ea                                      b #0x332768
00332f08  07 00 94 e7                                      ldr r0, [r4, r7]
00332f0c  a0 b1 ff eb                                      bl #0x31f594
00332f10  00 30 50 e2                                      subs r3, r0, #0
00332f14  28 31 93 15                                      ldrne r3, [r3, #0x128]
00332f18  08 60 93 e5                                      ldr r6, [r3, #8]
00332f1c  00 30 96 e5                                      ldr r3, [r6]
00332f20  06 00 a0 e1                                      mov r0, r6
00332f24  3c 71 93 e5                                      ldr r7, [r3, #0x13c]
00332f28  0f e0 a0 e1                                      mov lr, pc
00332f2c  28 f1 93 e5                                      ldr pc, [r3, #0x128]
00332f30  35 1a 0f e3                                      movw r1, #0xfa35
00332f34  8e 1c 43 e3                                      movt r1, #0x3c8e
00332f38  19 6f ff eb                                      bl #0x30eba4
00332f3c  00 10 a0 e1                                      mov r1, r0
00332f40  06 00 a0 e1                                      mov r0, r6
00332f44  37 ff 2f e1                                      blx r7
00332f48  06 fe ff ea                                      b #0x332768
00332f4c  07 00 94 e7                                      ldr r0, [r4, r7]
00332f50  8f b1 ff eb                                      bl #0x31f594
00332f54  00 00 50 e3                                      cmp r0, #0
00332f58  02 fe ff 0a                                      beq #0x332768
00332f5c  2c 01 90 e5                                      ldr r0, [r0, #0x12c]
00332f60  00 00 50 e3                                      cmp r0, #0
00332f64  ff fd ff 0a                                      beq #0x332768
00332f68  3b 71 03 eb                                      bl #0x40f45c
00332f6c  fd fd ff ea                                      b #0x332768
00332f70  f2 f5 ff eb                                      bl #0x330740
00332f74  68 16 9f e5                                      ldr r1, [pc, #0x668]
00332f78  47 8f 8d e2                                      add r8, sp, #0x11c
00332f7c  00 a0 a0 e1                                      mov sl, r0
00332f80  50 20 8d e2                                      add r2, sp, #0x50
00332f84  01 10 8f e0                                      add r1, pc, r1
00332f88  08 00 a0 e1                                      mov r0, r8
00332f8c  56 84 ff eb                                      bl #0x3140ec
00332f90  0a 00 a0 e1                                      mov r0, sl
00332f94  08 10 a0 e1                                      mov r1, r8
00332f98  ba 12 00 eb                                      bl #0x337a88
00332f9c  00 a0 a0 e1                                      mov sl, r0
00332fa0  08 00 a0 e1                                      mov r0, r8
00332fa4  80 82 ff eb                                      bl #0x3139ac
00332fa8  00 00 5a e3                                      cmp sl, #0
00332fac  74 01 00 1a                                      bne #0x333584
00332fb0  07 00 94 e7                                      ldr r0, [r4, r7]
00332fb4  76 b1 ff eb                                      bl #0x31f594
00332fb8  00 00 50 e3                                      cmp r0, #0
00332fbc  e9 fd ff 0a                                      beq #0x332768
00332fc0  28 31 90 e5                                      ldr r3, [r0, #0x128]
00332fc4  00 00 53 e3                                      cmp r3, #0
00332fc8  e6 fd ff 0a                                      beq #0x332768
00332fcc  08 60 93 e5                                      ldr r6, [r3, #8]
00332fd0  00 30 96 e5                                      ldr r3, [r6]
00332fd4  06 00 a0 e1                                      mov r0, r6
00332fd8  30 71 93 e5                                      ldr r7, [r3, #0x130]
00332fdc  0f e0 a0 e1                                      mov lr, pc
00332fe0  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00332fe4  42 14 a0 e3                                      mov r1, #0x42000000
00332fe8  32 17 81 e2                                      add r1, r1, #0xc80000
00332fec  ee 6c ff eb                                      bl #0x30e3ac
00332ff0  00 10 a0 e1                                      mov r1, r0
00332ff4  06 00 a0 e1                                      mov r0, r6
00332ff8  37 ff 2f e1                                      blx r7
00332ffc  d9 fd ff ea                                      b #0x332768
00333000  ce f5 ff eb                                      bl #0x330740
00333004  dc 15 9f e5                                      ldr r1, [pc, #0x5dc]
00333008  4d 8f 8d e2                                      add r8, sp, #0x134
0033300c  00 a0 a0 e1                                      mov sl, r0
00333010  54 20 8d e2                                      add r2, sp, #0x54
00333014  01 10 8f e0                                      add r1, pc, r1
00333018  08 00 a0 e1                                      mov r0, r8
0033301c  32 84 ff eb                                      bl #0x3140ec
00333020  0a 00 a0 e1                                      mov r0, sl
00333024  08 10 a0 e1                                      mov r1, r8
00333028  96 12 00 eb                                      bl #0x337a88
0033302c  00 a0 a0 e1                                      mov sl, r0
00333030  08 00 a0 e1                                      mov r0, r8
00333034  5c 82 ff eb                                      bl #0x3139ac
00333038  00 00 5a e3                                      cmp sl, #0
0033303c  55 01 00 1a                                      bne #0x333598
00333040  07 00 94 e7                                      ldr r0, [r4, r7]
00333044  52 b1 ff eb                                      bl #0x31f594
00333048  00 00 50 e3                                      cmp r0, #0
0033304c  c5 fd ff 0a                                      beq #0x332768
00333050  28 31 90 e5                                      ldr r3, [r0, #0x128]
00333054  00 00 53 e3                                      cmp r3, #0
00333058  c2 fd ff 0a                                      beq #0x332768
0033305c  08 60 93 e5                                      ldr r6, [r3, #8]
00333060  00 30 96 e5                                      ldr r3, [r6]
00333064  06 00 a0 e1                                      mov r0, r6
00333068  30 71 93 e5                                      ldr r7, [r3, #0x130]
0033306c  0f e0 a0 e1                                      mov lr, pc
00333070  1c f1 93 e5                                      ldr pc, [r3, #0x11c]
00333074  42 14 a0 e3                                      mov r1, #0x42000000
00333078  32 17 81 e2                                      add r1, r1, #0xc80000
0033307c  c8 6e ff eb                                      bl #0x30eba4
00333080  00 10 a0 e1                                      mov r1, r0
00333084  06 00 a0 e1                                      mov r0, r6
00333088  37 ff 2f e1                                      blx r7
0033308c  b5 fd ff ea                                      b #0x332768
00333090  07 00 94 e7                                      ldr r0, [r4, r7]
00333094  3e b1 ff eb                                      bl #0x31f594
00333098  00 00 50 e3                                      cmp r0, #0
0033309c  b1 fd ff 0a                                      beq #0x332768
003330a0  28 31 90 e5                                      ldr r3, [r0, #0x128]
003330a4  00 00 53 e3                                      cmp r3, #0
003330a8  ae fd ff 0a                                      beq #0x332768
003330ac  08 60 93 e5                                      ldr r6, [r3, #8]
003330b0  00 30 96 e5                                      ldr r3, [r6]
003330b4  06 00 a0 e1                                      mov r0, r6
003330b8  34 71 93 e5                                      ldr r7, [r3, #0x134]
003330bc  0f e0 a0 e1                                      mov lr, pc
003330c0  20 f1 93 e5                                      ldr pc, [r3, #0x120]
003330c4  c6 ff ff ea                                      b #0x332fe4
003330c8  07 00 94 e7                                      ldr r0, [r4, r7]
003330cc  30 b1 ff eb                                      bl #0x31f594
003330d0  00 00 50 e3                                      cmp r0, #0
003330d4  a3 fd ff 0a                                      beq #0x332768
003330d8  28 31 90 e5                                      ldr r3, [r0, #0x128]
003330dc  00 00 53 e3                                      cmp r3, #0
003330e0  a0 fd ff 0a                                      beq #0x332768
003330e4  08 60 93 e5                                      ldr r6, [r3, #8]
003330e8  00 30 96 e5                                      ldr r3, [r6]
003330ec  06 00 a0 e1                                      mov r0, r6
003330f0  34 71 93 e5                                      ldr r7, [r3, #0x134]
003330f4  0f e0 a0 e1                                      mov lr, pc
003330f8  20 f1 93 e5                                      ldr pc, [r3, #0x120]
003330fc  dc ff ff ea                                      b #0x333074
00333100  8e f5 ff eb                                      bl #0x330740
00333104  e0 14 9f e5                                      ldr r1, [pc, #0x4e0]
00333108  d4 80 8d e2                                      add r8, sp, #0xd4
0033310c  00 a0 a0 e1                                      mov sl, r0
00333110  44 20 8d e2                                      add r2, sp, #0x44
00333114  01 10 8f e0                                      add r1, pc, r1
00333118  08 00 a0 e1                                      mov r0, r8
0033311c  f2 83 ff eb                                      bl #0x3140ec
00333120  0a 00 a0 e1                                      mov r0, sl
00333124  08 10 a0 e1                                      mov r1, r8
00333128  56 12 00 eb                                      bl #0x337a88
0033312c  00 a0 a0 e1                                      mov sl, r0
00333130  08 00 a0 e1                                      mov r0, r8
00333134  1c 82 ff eb                                      bl #0x3139ac
00333138  00 00 5a e3                                      cmp sl, #0
0033313c  15 00 00 0a                                      beq #0x333198
00333140  74 30 96 e5                                      ldr r3, [r6, #0x74]
00333144  07 20 94 e7                                      ldr r2, [r4, r7]
00333148  00 30 93 e5                                      ldr r3, [r3]
0033314c  74 30 86 e5                                      str r3, [r6, #0x74]
00333150  38 20 92 e5                                      ldr r2, [r2, #0x38]
00333154  60 10 82 e2                                      add r1, r2, #0x60
00333158  01 00 53 e1                                      cmp r3, r1
0033315c  cf 01 00 0a                                      beq #0x3338a0
00333160  00 10 a0 e3                                      mov r1, #0
00333164  06 00 a0 e1                                      mov r0, r6
00333168  3f f4 ff eb                                      bl #0x33026c
0033316c  06 00 a0 e1                                      mov r0, r6
00333170  7c fa ff eb                                      bl #0x331b68
00333174  74 30 96 e5                                      ldr r3, [r6, #0x74]
00333178  bc 70 8d e2                                      add r7, sp, #0xbc
0033317c  07 00 a0 e1                                      mov r0, r7
00333180  08 30 93 e5                                      ldr r3, [r3, #8]
00333184  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
00333188  08 10 93 e5                                      ldr r1, [r3, #8]
0033318c  c2 74 07 eb                                      bl #0x51049c
00333190  07 00 a0 e1                                      mov r0, r7
00333194  04 82 ff eb                                      bl #0x3139ac
00333198  48 20 96 e5                                      ldr r2, [r6, #0x48]
0033319c  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
003331a0  03 30 62 e0                                      rsb r3, r2, r3
003331a4  23 31 b0 e1                                      lsrs r3, r3, #2
003331a8  6e fd ff 0a                                      beq #0x332768
003331ac  54 30 96 e5                                      ldr r3, [r6, #0x54]
003331b0  00 00 53 e3                                      cmp r3, #0
003331b4  ff 00 00 0a                                      beq #0x3335b8
003331b8  03 00 a0 e1                                      mov r0, r3
003331bc  00 10 a0 e3                                      mov r1, #0
003331c0  00 30 93 e5                                      ldr r3, [r3]
003331c4  0f e0 a0 e1                                      mov lr, pc
003331c8  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003331cc  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
003331d0  3c 30 8d e2                                      add r3, sp, #0x3c
003331d4  48 00 96 e5                                      ldr r0, [r6, #0x48]
003331d8  54 20 86 e2                                      add r2, r6, #0x54
003331dc  36 f4 ff eb                                      bl #0x3302bc
003331e0  48 30 96 e5                                      ldr r3, [r6, #0x48]
003331e4  03 00 50 e1                                      cmp r0, r3
003331e8  4c 30 96 05                                      ldreq r3, [r6, #0x4c]
003331ec  04 10 10 15                                      ldrne r1, [r0, #-4]
003331f0  04 10 13 05                                      ldreq r1, [r3, #-4]
003331f4  54 10 86 e5                                      str r1, [r6, #0x54]
003331f8  a4 70 8d e2                                      add r7, sp, #0xa4
003331fc  58 60 86 e2                                      add r6, r6, #0x58
00333200  07 00 a0 e1                                      mov r0, r7
00333204  a4 74 07 eb                                      bl #0x51049c
00333208  07 00 56 e1                                      cmp r6, r7
0033320c  03 00 00 0a                                      beq #0x333220
00333210  06 00 a0 e1                                      mov r0, r6
00333214  b8 10 9d e5                                      ldr r1, [sp, #0xb8]
00333218  b4 20 9d e5                                      ldr r2, [sp, #0xb4]
0033321c  ef 75 ff eb                                      bl #0x3109e0
00333220  07 00 a0 e1                                      mov r0, r7
00333224  e0 81 ff eb                                      bl #0x3139ac
00333228  4e fd ff ea                                      b #0x332768
0033322c  43 f5 ff eb                                      bl #0x330740
00333230  b8 13 9f e5                                      ldr r1, [pc, #0x3b8]
00333234  8c 80 8d e2                                      add r8, sp, #0x8c
00333238  00 a0 a0 e1                                      mov sl, r0
0033323c  40 20 8d e2                                      add r2, sp, #0x40
00333240  01 10 8f e0                                      add r1, pc, r1
00333244  08 00 a0 e1                                      mov r0, r8
00333248  a7 83 ff eb                                      bl #0x3140ec
0033324c  0a 00 a0 e1                                      mov r0, sl
00333250  08 10 a0 e1                                      mov r1, r8
00333254  0b 12 00 eb                                      bl #0x337a88
00333258  00 a0 a0 e1                                      mov sl, r0
0033325c  08 00 a0 e1                                      mov r0, r8
00333260  d1 81 ff eb                                      bl #0x3139ac
00333264  00 00 5a e3                                      cmp sl, #0
00333268  0c 00 00 0a                                      beq #0x3332a0
0033326c  07 20 94 e7                                      ldr r2, [r4, r7]
00333270  74 30 96 e5                                      ldr r3, [r6, #0x74]
00333274  06 00 a0 e1                                      mov r0, r6
00333278  38 20 92 e5                                      ldr r2, [r2, #0x38]
0033327c  60 10 92 e5                                      ldr r1, [r2, #0x60]
00333280  03 00 51 e1                                      cmp r1, r3
00333284  64 30 92 05                                      ldreq r3, [r2, #0x64]
00333288  04 30 93 15                                      ldrne r3, [r3, #4]
0033328c  00 10 a0 e3                                      mov r1, #0
00333290  74 30 86 e5                                      str r3, [r6, #0x74]
00333294  f4 f3 ff eb                                      bl #0x33026c
00333298  06 00 a0 e1                                      mov r0, r6
0033329c  31 fa ff eb                                      bl #0x331b68
003332a0  4c 10 96 e5                                      ldr r1, [r6, #0x4c]
003332a4  48 00 96 e5                                      ldr r0, [r6, #0x48]
003332a8  01 30 60 e0                                      rsb r3, r0, r1
003332ac  23 31 b0 e1                                      lsrs r3, r3, #2
003332b0  2c fd ff 0a                                      beq #0x332768
003332b4  54 30 96 e5                                      ldr r3, [r6, #0x54]
003332b8  00 00 53 e3                                      cmp r3, #0
003332bc  ba 00 00 0a                                      beq #0x3335ac
003332c0  54 20 86 e2                                      add r2, r6, #0x54
003332c4  38 30 8d e2                                      add r3, sp, #0x38
003332c8  fb f3 ff eb                                      bl #0x3302bc
003332cc  54 30 96 e5                                      ldr r3, [r6, #0x54]
003332d0  00 10 a0 e3                                      mov r1, #0
003332d4  00 70 a0 e1                                      mov r7, r0
003332d8  03 00 a0 e1                                      mov r0, r3
003332dc  00 30 93 e5                                      ldr r3, [r3]
003332e0  0f e0 a0 e1                                      mov lr, pc
003332e4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003332e8  4c 30 96 e5                                      ldr r3, [r6, #0x4c]
003332ec  04 20 87 e2                                      add r2, r7, #4
003332f0  03 00 52 e1                                      cmp r2, r3
003332f4  48 30 96 05                                      ldreq r3, [r6, #0x48]
003332f8  04 10 97 15                                      ldrne r1, [r7, #4]
003332fc  00 10 93 05                                      ldreq r1, [r3]
00333300  54 10 86 e5                                      str r1, [r6, #0x54]
00333304  74 70 8d e2                                      add r7, sp, #0x74
00333308  58 60 86 e2                                      add r6, r6, #0x58
0033330c  07 00 a0 e1                                      mov r0, r7
00333310  61 74 07 eb                                      bl #0x51049c
00333314  07 00 56 e1                                      cmp r6, r7
00333318  c0 ff ff 0a                                      beq #0x333220
0033331c  06 00 a0 e1                                      mov r0, r6
00333320  88 10 9d e5                                      ldr r1, [sp, #0x88]
00333324  84 20 9d e5                                      ldr r2, [sp, #0x84]
00333328  ac 75 ff eb                                      bl #0x3109e0
0033332c  bb ff ff ea                                      b #0x333220
00333330  02 f5 ff eb                                      bl #0x330740
00333334  b8 72 9f e5                                      ldr r7, [pc, #0x2b8]
00333338  53 8f 8d e2                                      add r8, sp, #0x14c
0033333c  58 20 8d e2                                      add r2, sp, #0x58
00333340  07 70 8f e0                                      add r7, pc, r7
00333344  07 10 a0 e1                                      mov r1, r7
00333348  00 b0 a0 e1                                      mov fp, r0
0033334c  08 00 a0 e1                                      mov r0, r8
00333350  65 83 ff eb                                      bl #0x3140ec
00333354  f9 f4 ff eb                                      bl #0x330740
00333358  59 af 8d e2                                      add sl, sp, #0x164
0033335c  07 10 a0 e1                                      mov r1, r7
00333360  5c 20 8d e2                                      add r2, sp, #0x5c
00333364  00 90 a0 e1                                      mov sb, r0
00333368  0a 00 a0 e1                                      mov r0, sl
0033336c  5e 83 ff eb                                      bl #0x3140ec
00333370  0a 10 a0 e1                                      mov r1, sl
00333374  09 00 a0 e1                                      mov r0, sb
00333378  c2 11 00 eb                                      bl #0x337a88
0033337c  01 20 20 e2                                      eor r2, r0, #1
00333380  08 10 a0 e1                                      mov r1, r8
00333384  72 20 ef e6                                      uxtb r2, r2
00333388  0b 00 a0 e1                                      mov r0, fp
0033338c  92 12 00 eb                                      bl #0x337ddc
00333390  0a 00 a0 e1                                      mov r0, sl
00333394  84 81 ff eb                                      bl #0x3139ac
00333398  08 00 a0 e1                                      mov r0, r8
0033339c  82 81 ff eb                                      bl #0x3139ac
003333a0  48 70 96 e5                                      ldr r7, [r6, #0x48]
003333a4  4c 80 96 e5                                      ldr r8, [r6, #0x4c]
003333a8  08 00 57 e1                                      cmp r7, r8
003333ac  0b 00 00 0a                                      beq #0x3333e0
003333b0  04 30 97 e4                                      ldr r3, [r7], #4
003333b4  01 10 a0 e3                                      mov r1, #1
003333b8  03 00 a0 e1                                      mov r0, r3
003333bc  00 30 93 e5                                      ldr r3, [r3]
003333c0  0f e0 a0 e1                                      mov lr, pc
003333c4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003333c8  08 00 57 e1                                      cmp r7, r8
003333cc  f7 ff ff 1a                                      bne #0x3333b0
003333d0  48 30 96 e5                                      ldr r3, [r6, #0x48]
003333d4  4c 20 96 e5                                      ldr r2, [r6, #0x4c]
003333d8  02 00 53 e1                                      cmp r3, r2
003333dc  4c 30 86 15                                      strne r3, [r6, #0x4c]
003333e0  00 30 a0 e3                                      mov r3, #0
003333e4  54 30 86 e5                                      str r3, [r6, #0x54]
003333e8  de fc ff ea                                      b #0x332768
003333ec  38 30 9b e5                                      ldr r3, [fp, #0x38]
003333f0  06 00 a0 e1                                      mov r0, r6
003333f4  00 10 a0 e3                                      mov r1, #0
003333f8  60 30 93 e5                                      ldr r3, [r3, #0x60]
003333fc  74 30 86 e5                                      str r3, [r6, #0x74]
00333400  99 f3 ff eb                                      bl #0x33026c
00333404  ec 11 9f e5                                      ldr r1, [pc, #0x1ec]
00333408  04 20 9a e5                                      ldr r2, [sl, #4]
0033340c  00 30 9a e5                                      ldr r3, [sl]
00333410  01 10 8f e0                                      add r1, pc, r1
00333414  0a 00 a0 e1                                      mov r0, sl
00333418  0f e0 a0 e1                                      mov lr, pc
0033341c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00333420  7c 00 86 e5                                      str r0, [r6, #0x7c]
00333424  1a 8f 09 eb                                      bl #0x597094
00333428  00 30 90 e5                                      ldr r3, [r0]
0033342c  42 14 a0 e3                                      mov r1, #0x42000000
00333430  32 17 81 e2                                      add r1, r1, #0xc80000
00333434  08 80 93 e5                                      ldr r8, [r3, #8]
00333438  08 00 a0 e1                                      mov r0, r8
0033343c  00 30 98 e5                                      ldr r3, [r8]
00333440  0f e0 a0 e1                                      mov lr, pc
00333444  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00333448  00 10 04 e3                                      movw r1, #0x4000
0033344c  08 00 a0 e1                                      mov r0, r8
00333450  00 30 98 e5                                      ldr r3, [r8]
00333454  9c 15 44 e3                                      movt r1, #0x459c
00333458  0f e0 a0 e1                                      mov lr, pc
0033345c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00333460  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00333464  00 10 05 e3                                      movw r1, #0x5000
00333468  43 17 44 e3                                      movt r1, #0x4743
0033346c  03 00 a0 e1                                      mov r0, r3
00333470  00 30 93 e5                                      ldr r3, [r3]
00333474  0f e0 a0 e1                                      mov lr, pc
00333478  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0033347c  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00333480  07 70 94 e7                                      ldr r7, [r4, r7]
00333484  00 00 53 e3                                      cmp r3, #0
00333488  03 10 a0 01                                      moveq r1, r3
0033348c  13 1e 83 12                                      addne r1, r3, #0x130
00333490  07 00 a0 e1                                      mov r0, r7
00333494  78 f1 ff eb                                      bl #0x32fa7c
00333498  07 00 a0 e1                                      mov r0, r7
0033349c  3c b0 ff eb                                      bl #0x31f594
003334a0  28 31 90 e5                                      ldr r3, [r0, #0x128]
003334a4  14 00 8d e2                                      add r0, sp, #0x14
003334a8  08 70 93 e5                                      ldr r7, [r3, #8]
003334ac  07 10 a0 e1                                      mov r1, r7
003334b0  32 8f 09 eb                                      bl #0x597180
003334b4  00 30 97 e5                                      ldr r3, [r7]
003334b8  07 00 a0 e1                                      mov r0, r7
003334bc  0f e0 a0 e1                                      mov lr, pc
003334c0  08 f1 93 e5                                      ldr pc, [r3, #0x108]
003334c4  06 00 a0 e1                                      mov r0, r6
003334c8  a6 f9 ff eb                                      bl #0x331b68
003334cc  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
003334d0  00 10 a0 e3                                      mov r1, #0
003334d4  03 00 a0 e1                                      mov r0, r3
003334d8  00 30 93 e5                                      ldr r3, [r3]
003334dc  0f e0 a0 e1                                      mov lr, pc
003334e0  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
003334e4  7c 90 96 e5                                      ldr sb, [r6, #0x7c]
003334e8  00 30 97 e5                                      ldr r3, [r7]
003334ec  07 00 a0 e1                                      mov r0, r7
003334f0  00 20 99 e5                                      ldr r2, [sb]
003334f4  14 81 92 e5                                      ldr r8, [r2, #0x114]
003334f8  0f e0 a0 e1                                      mov lr, pc
003334fc  18 f1 93 e5                                      ldr pc, [r3, #0x118]
00333500  00 10 a0 e1                                      mov r1, r0
00333504  09 00 a0 e1                                      mov r0, sb
00333508  38 ff 2f e1                                      blx r8
0033350c  7c 90 96 e5                                      ldr sb, [r6, #0x7c]
00333510  00 30 97 e5                                      ldr r3, [r7]
00333514  07 00 a0 e1                                      mov r0, r7
00333518  00 20 99 e5                                      ldr r2, [sb]
0033351c  3c 81 92 e5                                      ldr r8, [r2, #0x13c]
00333520  0f e0 a0 e1                                      mov lr, pc
00333524  28 f1 93 e5                                      ldr pc, [r3, #0x128]
00333528  00 10 a0 e1                                      mov r1, r0
0033352c  09 00 a0 e1                                      mov r0, sb
00333530  38 ff 2f e1                                      blx r8
00333534  7c 80 96 e5                                      ldr r8, [r6, #0x7c]
00333538  00 30 97 e5                                      ldr r3, [r7]
0033353c  07 00 a0 e1                                      mov r0, r7
00333540  00 20 98 e5                                      ldr r2, [r8]
00333544  38 71 92 e5                                      ldr r7, [r2, #0x138]
00333548  0f e0 a0 e1                                      mov lr, pc
0033354c  24 f1 93 e5                                      ldr pc, [r3, #0x124]
00333550  00 10 a0 e1                                      mov r1, r0
00333554  08 00 a0 e1                                      mov r0, r8
00333558  37 ff 2f e1                                      blx r7
0033355c  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00333560  01 10 a0 e3                                      mov r1, #1
00333564  03 00 a0 e1                                      mov r0, r3
00333568  00 30 93 e5                                      ldr r3, [r3]
0033356c  0f e0 a0 e1                                      mov lr, pc
00333570  48 f1 93 e5                                      ldr pc, [r3, #0x148]
00333574  0a 00 a0 e1                                      mov r0, sl
00333578  7c 10 96 e5                                      ldr r1, [r6, #0x7c]
0033357c  cf 56 09 eb                                      bl #0x5890c0
00333580  78 fc ff ea                                      b #0x332768
00333584  70 10 96 e5                                      ldr r1, [r6, #0x70]
00333588  06 00 a0 e1                                      mov r0, r6
0033358c  01 10 41 e2                                      sub r1, r1, #1
00333590  35 f3 ff eb                                      bl #0x33026c
00333594  73 fc ff ea                                      b #0x332768
00333598  70 10 96 e5                                      ldr r1, [r6, #0x70]
0033359c  06 00 a0 e1                                      mov r0, r6
003335a0  01 10 81 e2                                      add r1, r1, #1
003335a4  30 f3 ff eb                                      bl #0x33026c
003335a8  6e fc ff ea                                      b #0x332768
003335ac  04 10 11 e5                                      ldr r1, [r1, #-4]
003335b0  54 10 86 e5                                      str r1, [r6, #0x54]
003335b4  52 ff ff ea                                      b #0x333304
003335b8  00 10 92 e5                                      ldr r1, [r2]
003335bc  54 10 86 e5                                      str r1, [r6, #0x54]
003335c0  0c ff ff ea                                      b #0x3331f8
; mapping-symbol data/literal pool
003335c4  64 23 66 00 ac 40 00 00 f4 37 00 00 2c 3f 00 00  .byte 0x64, 0x23, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x2c, 0x3f, 0x00, 0x00
003335d4  0c cd 58 00 c4 c2 58 00 98 cb 58 00 2c cb 58 00  .byte 0x0c, 0xcd, 0x58, 0x00, 0xc4, 0xc2, 0x58, 0x00, 0x98, 0xcb, 0x58, 0x00, 0x2c, 0xcb, 0x58, 0x00
003335e4  e4 bf 58 00 54 bf 58 00 54 be 58 00 28 bd 58 00  .byte 0xe4, 0xbf, 0x58, 0x00, 0x54, 0xbf, 0x58, 0x00, 0x54, 0xbe, 0x58, 0x00, 0x28, 0xbd, 0x58, 0x00
003335f4  08 bc 58 00 08 c5 58 00 08 c3 58 00 b0 c0 58 00  .byte 0x08, 0xbc, 0x58, 0x00, 0x08, 0xc5, 0x58, 0x00, 0x08, 0xc3, 0x58, 0x00, 0xb0, 0xc0, 0x58, 0x00
; decoder-mode: arm
00333604  10 10 1f e5                                      ldr r1, [pc, #-0x10]
00333608  04 20 9a e5                                      ldr r2, [sl, #4]
0033360c  00 30 9a e5                                      ldr r3, [sl]
00333610  01 10 8f e0                                      add r1, pc, r1
00333614  0a 00 a0 e1                                      mov r0, sl
00333618  0f e0 a0 e1                                      mov lr, pc
0033361c  6c f0 93 e5                                      ldr pc, [r3, #0x6c]
00333620  7c 00 86 e5                                      str r0, [r6, #0x7c]
00333624  9a 8e 09 eb                                      bl #0x597094
00333628  00 30 90 e5                                      ldr r3, [r0]
0033362c  42 14 a0 e3                                      mov r1, #0x42000000
00333630  32 17 81 e2                                      add r1, r1, #0xc80000
00333634  08 80 93 e5                                      ldr r8, [r3, #8]
00333638  08 00 a0 e1                                      mov r0, r8
0033363c  00 30 98 e5                                      ldr r3, [r8]
00333640  0f e0 a0 e1                                      mov lr, pc
00333644  60 f0 93 e5                                      ldr pc, [r3, #0x60]
00333648  00 10 04 e3                                      movw r1, #0x4000
0033364c  08 00 a0 e1                                      mov r0, r8
00333650  00 30 98 e5                                      ldr r3, [r8]
00333654  9c 15 44 e3                                      movt r1, #0x459c
00333658  0f e0 a0 e1                                      mov lr, pc
0033365c  58 f0 93 e5                                      ldr pc, [r3, #0x58]
00333660  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00333664  00 10 05 e3                                      movw r1, #0x5000
00333668  43 17 44 e3                                      movt r1, #0x4743
0033366c  03 00 a0 e1                                      mov r0, r3
00333670  00 30 93 e5                                      ldr r3, [r3]
00333674  0f e0 a0 e1                                      mov lr, pc
00333678  34 f1 93 e5                                      ldr pc, [r3, #0x134]
0033367c  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00333680  07 80 94 e7                                      ldr r8, [r4, r7]
00333684  00 00 53 e3                                      cmp r3, #0
00333688  13 3e 83 12                                      addne r3, r3, #0x130
0033368c  03 10 a0 e1                                      mov r1, r3
00333690  08 00 a0 e1                                      mov r0, r8
00333694  77 3f 8d e2                                      add r3, sp, #0x1dc
00333698  0c 30 8d e5                                      str r3, [sp, #0xc]
0033369c  f6 f0 ff eb                                      bl #0x32fa7c
003336a0  08 00 a0 e1                                      mov r0, r8
003336a4  ba af ff eb                                      bl #0x31f594
003336a8  28 31 90 e5                                      ldr r3, [r0, #0x128]
003336ac  2c 00 8d e2                                      add r0, sp, #0x2c
003336b0  08 80 93 e5                                      ldr r8, [r3, #8]
003336b4  08 10 a0 e1                                      mov r1, r8
003336b8  b0 8e 09 eb                                      bl #0x597180
003336bc  00 30 98 e5                                      ldr r3, [r8]
003336c0  08 00 a0 e1                                      mov r0, r8
003336c4  0f e0 a0 e1                                      mov lr, pc
003336c8  08 f1 93 e5                                      ldr pc, [r3, #0x108]
003336cc  7c b0 96 e5                                      ldr fp, [r6, #0x7c]
003336d0  04 20 90 e5                                      ldr r2, [r0, #4]
003336d4  00 90 a0 e1                                      mov sb, r0
003336d8  00 30 9b e5                                      ldr r3, [fp]
003336dc  02 10 a0 e1                                      mov r1, r2
003336e0  30 00 9d e5                                      ldr r0, [sp, #0x30]
003336e4  a4 c0 93 e5                                      ldr ip, [r3, #0xa4]
003336e8  08 20 8d e5                                      str r2, [sp, #8]
003336ec  04 c0 8d e5                                      str ip, [sp, #4]
003336f0  2d 6b ff eb                                      bl #0x30e3ac
003336f4  01 11 a0 e3                                      mov r1, #0x40000000
003336f8  0a 16 81 e2                                      add r1, r1, #0xa00000
003336fc  9a 6d ff eb                                      bl #0x30ed6c
00333700  08 20 9d e5                                      ldr r2, [sp, #8]
00333704  00 10 a0 e1                                      mov r1, r0
00333708  02 00 a0 e1                                      mov r0, r2
0033370c  24 6d ff eb                                      bl #0x30eba4
00333710  08 10 99 e5                                      ldr r1, [sb, #8]
00333714  00 30 a0 e1                                      mov r3, r0
00333718  34 00 9d e5                                      ldr r0, [sp, #0x34]
0033371c  00 30 8d e5                                      str r3, [sp]
00333720  21 6b ff eb                                      bl #0x30e3ac
00333724  01 11 a0 e3                                      mov r1, #0x40000000
00333728  0a 16 81 e2                                      add r1, r1, #0xa00000
0033372c  8e 6d ff eb                                      bl #0x30ed6c
00333730  00 10 a0 e1                                      mov r1, r0
00333734  08 00 99 e5                                      ldr r0, [sb, #8]
00333738  19 6d ff eb                                      bl #0x30eba4
0033373c  00 10 99 e5                                      ldr r1, [sb]
00333740  00 20 a0 e1                                      mov r2, r0
00333744  2c 00 9d e5                                      ldr r0, [sp, #0x2c]
00333748  08 20 8d e5                                      str r2, [sp, #8]
0033374c  16 6b ff eb                                      bl #0x30e3ac
00333750  01 11 a0 e3                                      mov r1, #0x40000000
00333754  0a 16 81 e2                                      add r1, r1, #0xa00000
00333758  83 6d ff eb                                      bl #0x30ed6c
0033375c  00 10 a0 e1                                      mov r1, r0
00333760  00 00 99 e5                                      ldr r0, [sb]
00333764  0e 6d ff eb                                      bl #0x30eba4
00333768  08 20 9d e5                                      ldr r2, [sp, #8]
0033376c  08 10 9d e8                                      ldm sp, {r3, ip}
00333770  28 20 8d e5                                      str r2, [sp, #0x28]
00333774  24 30 8d e5                                      str r3, [sp, #0x24]
00333778  20 00 8d e5                                      str r0, [sp, #0x20]
0033377c  20 10 8d e2                                      add r1, sp, #0x20
00333780  0b 00 a0 e1                                      mov r0, fp
00333784  3c ff 2f e1                                      blx ip
00333788  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
0033378c  00 10 a0 e3                                      mov r1, #0
00333790  03 00 a0 e1                                      mov r0, r3
00333794  00 30 93 e5                                      ldr r3, [r3]
00333798  0f e0 a0 e1                                      mov lr, pc
0033379c  b8 f0 93 e5                                      ldr pc, [r3, #0xb8]
003337a0  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
003337a4  00 20 98 e5                                      ldr r2, [r8]
003337a8  08 00 a0 e1                                      mov r0, r8
003337ac  00 10 93 e5                                      ldr r1, [r3]
003337b0  14 b1 91 e5                                      ldr fp, [r1, #0x114]
003337b4  00 30 8d e5                                      str r3, [sp]
003337b8  0f e0 a0 e1                                      mov lr, pc
003337bc  18 f1 92 e5                                      ldr pc, [r2, #0x118]
003337c0  00 30 9d e5                                      ldr r3, [sp]
003337c4  00 10 a0 e1                                      mov r1, r0
003337c8  03 00 a0 e1                                      mov r0, r3
003337cc  3b ff 2f e1                                      blx fp
003337d0  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
003337d4  00 20 98 e5                                      ldr r2, [r8]
003337d8  08 00 a0 e1                                      mov r0, r8
003337dc  00 10 93 e5                                      ldr r1, [r3]
003337e0  3c b1 91 e5                                      ldr fp, [r1, #0x13c]
003337e4  00 30 8d e5                                      str r3, [sp]
003337e8  0f e0 a0 e1                                      mov lr, pc
003337ec  28 f1 92 e5                                      ldr pc, [r2, #0x128]
003337f0  00 30 9d e5                                      ldr r3, [sp]
003337f4  00 10 a0 e1                                      mov r1, r0
003337f8  03 00 a0 e1                                      mov r0, r3
003337fc  3b ff 2f e1                                      blx fp
00333800  7c b0 96 e5                                      ldr fp, [r6, #0x7c]
00333804  00 30 98 e5                                      ldr r3, [r8]
00333808  08 00 a0 e1                                      mov r0, r8
0033380c  00 20 9b e5                                      ldr r2, [fp]
00333810  38 81 92 e5                                      ldr r8, [r2, #0x138]
00333814  0f e0 a0 e1                                      mov lr, pc
00333818  24 f1 93 e5                                      ldr pc, [r3, #0x124]
0033381c  00 10 a0 e1                                      mov r1, r0
00333820  0b 00 a0 e1                                      mov r0, fp
00333824  38 ff 2f e1                                      blx r8
00333828  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
0033382c  09 10 a0 e1                                      mov r1, sb
00333830  03 00 a0 e1                                      mov r0, r3
00333834  00 30 93 e5                                      ldr r3, [r3]
00333838  0f e0 a0 e1                                      mov lr, pc
0033383c  04 f1 93 e5                                      ldr pc, [r3, #0x104]
00333840  7c 30 96 e5                                      ldr r3, [r6, #0x7c]
00333844  01 10 a0 e3                                      mov r1, #1
00333848  03 00 a0 e1                                      mov r0, r3
0033384c  00 30 93 e5                                      ldr r3, [r3]
00333850  0f e0 a0 e1                                      mov lr, pc
00333854  48 f1 93 e5                                      ldr pc, [r3, #0x148]
00333858  7c 10 96 e5                                      ldr r1, [r6, #0x7c]
0033385c  0a 00 a0 e1                                      mov r0, sl
00333860  16 56 09 eb                                      bl #0x5890c0
00333864  b5 f3 ff eb                                      bl #0x330740
00333868  70 12 1f e5                                      ldr r1, [pc, #-0x270]
0033386c  00 80 a0 e1                                      mov r8, r0
00333870  70 20 8d e2                                      add r2, sp, #0x70
00333874  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00333878  01 10 8f e0                                      add r1, pc, r1
0033387c  1a 82 ff eb                                      bl #0x3140ec
00333880  08 00 a0 e1                                      mov r0, r8
00333884  0c 10 9d e5                                      ldr r1, [sp, #0xc]
00333888  01 20 a0 e3                                      mov r2, #1
0033388c  52 11 00 eb                                      bl #0x337ddc
00333890  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00333894  44 80 ff eb                                      bl #0x3139ac
00333898  fd fc ff ea                                      b #0x332c94
0033389c  9b 6a ff eb                                      bl #0x30e310
003338a0  60 30 92 e5                                      ldr r3, [r2, #0x60]
003338a4  01 10 a0 e3                                      mov r1, #1
003338a8  74 30 86 e5                                      str r3, [r6, #0x74]
003338ac  08 30 93 e5                                      ldr r3, [r3, #8]
003338b0  d8 32 93 e5                                      ldr r3, [r3, #0x2d8]
003338b4  08 30 93 e5                                      ldr r3, [r3, #8]
003338b8  03 00 a0 e1                                      mov r0, r3
003338bc  00 30 93 e5                                      ldr r3, [r3]
003338c0  0f e0 a0 e1                                      mov lr, pc
003338c4  48 f0 93 e5                                      ldr pc, [r3, #0x48]
003338c8  24 fe ff ea                                      b #0x333160

; FUNCTION 0x0033394c, declared_size=256, range_size=256, mode=arm
; class-group: Console
; alias: _ZN7Console22_setMenuLoadModuleListEj
; demangled: Console::_setMenuLoadModuleList(unsigned int)
; decoder-mode: arm
0033394c  f0 45 2d e9                                      push {r4, r5, r6, r7, r8, sl, lr}
00333950  dc 40 9f e5                                      ldr r4, [pc, #0xdc]
00333954  dc 80 9f e5                                      ldr r8, [pc, #0xdc]
00333958  1c 20 90 e5                                      ldr r2, [r0, #0x1c]
0033395c  04 40 8f e0                                      add r4, pc, r4
00333960  08 30 94 e7                                      ldr r3, [r4, r8]
00333964  00 50 a0 e1                                      mov r5, r0
00333968  18 00 a0 e3                                      mov r0, #0x18
0033396c  90 21 22 e0                                      mla r2, r0, r1, r2
00333970  c4 10 9f e5                                      ldr r1, [pc, #0xc4]
00333974  3c d0 4d e2                                      sub sp, sp, #0x3c
00333978  00 30 93 e5                                      ldr r3, [r3]
0033397c  1c 60 8d e2                                      add r6, sp, #0x1c
00333980  01 10 8f e0                                      add r1, pc, r1
00333984  06 00 a0 e1                                      mov r0, r6
00333988  34 30 8d e5                                      str r3, [sp, #0x34]
0033398c  ee fa ff eb                                      bl #0x33254c
00333990  a8 20 9f e5                                      ldr r2, [pc, #0xa8]
00333994  04 70 8d e2                                      add r7, sp, #4
00333998  90 a0 85 e2                                      add sl, r5, #0x90
0033399c  02 20 8f e0                                      add r2, pc, r2
003339a0  07 00 a0 e1                                      mov r0, r7
003339a4  06 10 a0 e1                                      mov r1, r6
003339a8  c7 ff ff eb                                      bl #0x3338cc
003339ac  07 00 5a e1                                      cmp sl, r7
003339b0  03 00 00 0a                                      beq #0x3339c4
003339b4  0a 00 a0 e1                                      mov r0, sl
003339b8  18 10 9d e5                                      ldr r1, [sp, #0x18]
003339bc  14 20 9d e5                                      ldr r2, [sp, #0x14]
003339c0  06 74 ff eb                                      bl #0x3109e0
003339c4  07 00 a0 e1                                      mov r0, r7
003339c8  f7 7f ff eb                                      bl #0x3139ac
003339cc  06 00 a0 e1                                      mov r0, r6
003339d0  f5 7f ff eb                                      bl #0x3139ac
003339d4  68 30 9f e5                                      ldr r3, [pc, #0x68]
003339d8  28 60 85 e2                                      add r6, r5, #0x28
003339dc  a4 10 95 e5                                      ldr r1, [r5, #0xa4]
003339e0  03 30 94 e7                                      ldr r3, [r4, r3]
003339e4  06 20 a0 e1                                      mov r2, r6
003339e8  10 30 93 e5                                      ldr r3, [r3, #0x10]
003339ec  34 30 93 e5                                      ldr r3, [r3, #0x34]
003339f0  03 00 a0 e1                                      mov r0, r3
003339f4  00 30 93 e5                                      ldr r3, [r3]
003339f8  0f e0 a0 e1                                      mov lr, pc
003339fc  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00333a00  40 20 9f e5                                      ldr r2, [pc, #0x40]
00333a04  05 00 a0 e1                                      mov r0, r5
00333a08  06 10 a0 e1                                      mov r1, r6
00333a0c  02 20 8f e0                                      add r2, pc, r2
00333a10  04 f1 ff eb                                      bl #0x32fe28
00333a14  08 30 94 e7                                      ldr r3, [r4, r8]
00333a18  34 20 9d e5                                      ldr r2, [sp, #0x34]
00333a1c  00 30 93 e5                                      ldr r3, [r3]
00333a20  03 00 52 e1                                      cmp r2, r3
00333a24  01 00 00 1a                                      bne #0x333a30
00333a28  3c d0 8d e2                                      add sp, sp, #0x3c
00333a2c  f0 85 bd e8                                      pop {r4, r5, r6, r7, r8, sl, pc}
00333a30  36 6a ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00333a34  34 11 66 00 ac 40 00 00 f0 bf 58 00 ec bf 58 00  .byte 0x34, 0x11, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf0, 0xbf, 0x58, 0x00, 0xec, 0xbf, 0x58, 0x00
00333a44  f4 37 00 00 84 bf 58 00                          .byte 0xf4, 0x37, 0x00, 0x00, 0x84, 0xbf, 0x58, 0x00

; FUNCTION 0x00333a4c, declared_size=1488, range_size=1488, mode=arm
; class-group: Console
; alias: _ZN7ConsoleC1Ev
; demangled: Console::Console()
; decoder-mode: arm
00333a4c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00333a50  64 65 9f e5                                      ldr r6, [pc, #0x564]
00333a54  64 35 9f e5                                      ldr r3, [pc, #0x564]
00333a58  64 25 9f e5                                      ldr r2, [pc, #0x564]
00333a5c  06 60 8f e0                                      add r6, pc, r6
00333a60  03 b0 96 e7                                      ldr fp, [r6, r3]
00333a64  02 20 96 e7                                      ldr r2, [r6, r2]
00333a68  00 50 a0 e3                                      mov r5, #0
00333a6c  00 30 9b e5                                      ldr r3, [fp]
00333a70  00 40 a0 e1                                      mov r4, r0
00333a74  08 10 82 e2                                      add r1, r2, #8
00333a78  58 20 80 e2                                      add r2, r0, #0x58
00333a7c  87 df 4d e2                                      sub sp, sp, #0x21c
00333a80  00 10 80 e5                                      str r1, [r0]
00333a84  02 00 a0 e1                                      mov r0, r2
00333a88  04 50 c4 e5                                      strb r5, [r4, #4]
00333a8c  08 50 84 e5                                      str r5, [r4, #8]
00333a90  0c 50 84 e5                                      str r5, [r4, #0xc]
00333a94  10 50 84 e5                                      str r5, [r4, #0x10]
00333a98  14 50 84 e5                                      str r5, [r4, #0x14]
00333a9c  18 50 84 e5                                      str r5, [r4, #0x18]
00333aa0  1c 50 84 e5                                      str r5, [r4, #0x1c]
00333aa4  20 50 84 e5                                      str r5, [r4, #0x20]
00333aa8  24 50 84 e5                                      str r5, [r4, #0x24]
00333aac  28 50 84 e5                                      str r5, [r4, #0x28]
00333ab0  2c 50 84 e5                                      str r5, [r4, #0x2c]
00333ab4  30 50 84 e5                                      str r5, [r4, #0x30]
00333ab8  34 50 84 e5                                      str r5, [r4, #0x34]
00333abc  38 50 84 e5                                      str r5, [r4, #0x38]
00333ac0  3c 50 84 e5                                      str r5, [r4, #0x3c]
00333ac4  40 50 84 e5                                      str r5, [r4, #0x40]
00333ac8  44 50 84 e5                                      str r5, [r4, #0x44]
00333acc  48 50 84 e5                                      str r5, [r4, #0x48]
00333ad0  4c 50 84 e5                                      str r5, [r4, #0x4c]
00333ad4  50 50 84 e5                                      str r5, [r4, #0x50]
00333ad8  54 50 84 e5                                      str r5, [r4, #0x54]
00333adc  68 20 84 e5                                      str r2, [r4, #0x68]
00333ae0  6c 20 84 e5                                      str r2, [r4, #0x6c]
00333ae4  10 10 a0 e3                                      mov r1, #0x10
00333ae8  14 32 8d e5                                      str r3, [sp, #0x214]
00333aec  e2 76 ff eb                                      bl #0x31167c
00333af0  68 10 94 e5                                      ldr r1, [r4, #0x68]
00333af4  90 30 84 e2                                      add r3, r4, #0x90
00333af8  00 20 e0 e3                                      mvn r2, #0
00333afc  00 50 c1 e5                                      strb r5, [r1]
00333b00  03 00 a0 e1                                      mov r0, r3
00333b04  8c 20 84 e5                                      str r2, [r4, #0x8c]
00333b08  74 50 84 e5                                      str r5, [r4, #0x74]
00333b0c  78 20 84 e5                                      str r2, [r4, #0x78]
00333b10  7c 50 84 e5                                      str r5, [r4, #0x7c]
00333b14  80 50 c4 e5                                      strb r5, [r4, #0x80]
00333b18  b2 58 c4 e1                                      strh r5, [r4, #0x82]
00333b1c  b4 58 c4 e1                                      strh r5, [r4, #0x84]
00333b20  86 50 c4 e5                                      strb r5, [r4, #0x86]
00333b24  88 50 84 e5                                      str r5, [r4, #0x88]
00333b28  a0 30 84 e5                                      str r3, [r4, #0xa0]
00333b2c  a4 30 84 e5                                      str r3, [r4, #0xa4]
00333b30  10 10 a0 e3                                      mov r1, #0x10
00333b34  d0 76 ff eb                                      bl #0x31167c
00333b38  88 24 9f e5                                      ldr r2, [pc, #0x488]
00333b3c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00333b40  04 10 a0 e3                                      mov r1, #4
00333b44  02 70 96 e7                                      ldr r7, [r6, r2]
00333b48  00 50 c3 e5                                      strb r5, [r3]
00333b4c  04 20 a0 e1                                      mov r2, r4
00333b50  0f 30 a0 e3                                      mov r3, #0xf
00333b54  14 00 97 e5                                      ldr r0, [r7, #0x14]
00333b58  90 14 00 eb                                      bl #0x338da0
00333b5c  05 10 a0 e3                                      mov r1, #5
00333b60  04 20 a0 e1                                      mov r2, r4
00333b64  14 00 97 e5                                      ldr r0, [r7, #0x14]
00333b68  0f 30 a0 e3                                      mov r3, #0xf
00333b6c  8b 14 00 eb                                      bl #0x338da0
00333b70  54 34 9f e5                                      ldr r3, [pc, #0x454]
00333b74  7f 8f 8d e2                                      add r8, sp, #0x1fc
00333b78  79 9f 8d e2                                      add sb, sp, #0x1e4
00333b7c  03 60 96 e7                                      ldr r6, [r6, r3]
00333b80  73 af 8d e2                                      add sl, sp, #0x1cc
00333b84  6d 7f 8d e2                                      add r7, sp, #0x1b4
00333b88  06 00 a0 e1                                      mov r0, r6
00333b8c  3d 0f 00 eb                                      bl #0x337888
00333b90  38 14 9f e5                                      ldr r1, [pc, #0x438]
00333b94  48 20 8d e2                                      add r2, sp, #0x48
00333b98  08 00 a0 e1                                      mov r0, r8
00333b9c  01 10 8f e0                                      add r1, pc, r1
00333ba0  51 81 ff eb                                      bl #0x3140ec
00333ba4  05 20 a0 e1                                      mov r2, r5
00333ba8  08 10 a0 e1                                      mov r1, r8
00333bac  06 00 a0 e1                                      mov r0, r6
00333bb0  89 10 00 eb                                      bl #0x337ddc
00333bb4  08 00 a0 e1                                      mov r0, r8
00333bb8  7b 7f ff eb                                      bl #0x3139ac
00333bbc  06 00 a0 e1                                      mov r0, r6
00333bc0  30 0f 00 eb                                      bl #0x337888
00333bc4  08 14 9f e5                                      ldr r1, [pc, #0x408]
00333bc8  44 20 8d e2                                      add r2, sp, #0x44
00333bcc  09 00 a0 e1                                      mov r0, sb
00333bd0  01 10 8f e0                                      add r1, pc, r1
00333bd4  44 81 ff eb                                      bl #0x3140ec
00333bd8  05 20 a0 e1                                      mov r2, r5
00333bdc  09 10 a0 e1                                      mov r1, sb
00333be0  06 00 a0 e1                                      mov r0, r6
00333be4  7c 10 00 eb                                      bl #0x337ddc
00333be8  09 00 a0 e1                                      mov r0, sb
00333bec  6e 7f ff eb                                      bl #0x3139ac
00333bf0  06 00 a0 e1                                      mov r0, r6
00333bf4  23 0f 00 eb                                      bl #0x337888
00333bf8  d8 13 9f e5                                      ldr r1, [pc, #0x3d8]
00333bfc  40 20 8d e2                                      add r2, sp, #0x40
00333c00  0a 00 a0 e1                                      mov r0, sl
00333c04  01 10 8f e0                                      add r1, pc, r1
00333c08  37 81 ff eb                                      bl #0x3140ec
00333c0c  05 20 a0 e1                                      mov r2, r5
00333c10  0a 10 a0 e1                                      mov r1, sl
00333c14  06 00 a0 e1                                      mov r0, r6
00333c18  6f 10 00 eb                                      bl #0x337ddc
00333c1c  0a 00 a0 e1                                      mov r0, sl
00333c20  61 7f ff eb                                      bl #0x3139ac
00333c24  06 00 a0 e1                                      mov r0, r6
00333c28  16 0f 00 eb                                      bl #0x337888
00333c2c  a8 13 9f e5                                      ldr r1, [pc, #0x3a8]
00333c30  07 00 a0 e1                                      mov r0, r7
00333c34  3c 20 8d e2                                      add r2, sp, #0x3c
00333c38  01 10 8f e0                                      add r1, pc, r1
00333c3c  2a 81 ff eb                                      bl #0x3140ec
00333c40  07 10 a0 e1                                      mov r1, r7
00333c44  05 20 a0 e1                                      mov r2, r5
00333c48  06 00 a0 e1                                      mov r0, r6
00333c4c  62 10 00 eb                                      bl #0x337ddc
00333c50  07 00 a0 e1                                      mov r0, r7
00333c54  54 7f ff eb                                      bl #0x3139ac
00333c58  06 00 a0 e1                                      mov r0, r6
00333c5c  09 0f 00 eb                                      bl #0x337888
00333c60  78 13 9f e5                                      ldr r1, [pc, #0x378]
00333c64  67 7f 8d e2                                      add r7, sp, #0x19c
00333c68  07 00 a0 e1                                      mov r0, r7
00333c6c  01 10 8f e0                                      add r1, pc, r1
00333c70  38 20 8d e2                                      add r2, sp, #0x38
00333c74  1c 81 ff eb                                      bl #0x3140ec
00333c78  07 10 a0 e1                                      mov r1, r7
00333c7c  05 20 a0 e1                                      mov r2, r5
00333c80  06 00 a0 e1                                      mov r0, r6
00333c84  54 10 00 eb                                      bl #0x337ddc
00333c88  07 00 a0 e1                                      mov r0, r7
00333c8c  46 7f ff eb                                      bl #0x3139ac
00333c90  06 00 a0 e1                                      mov r0, r6
00333c94  fb 0e 00 eb                                      bl #0x337888
00333c98  44 13 9f e5                                      ldr r1, [pc, #0x344]
00333c9c  61 7f 8d e2                                      add r7, sp, #0x184
00333ca0  07 00 a0 e1                                      mov r0, r7
00333ca4  01 10 8f e0                                      add r1, pc, r1
00333ca8  34 20 8d e2                                      add r2, sp, #0x34
00333cac  0e 81 ff eb                                      bl #0x3140ec
00333cb0  07 10 a0 e1                                      mov r1, r7
00333cb4  05 20 a0 e1                                      mov r2, r5
00333cb8  06 00 a0 e1                                      mov r0, r6
00333cbc  46 10 00 eb                                      bl #0x337ddc
00333cc0  07 00 a0 e1                                      mov r0, r7
00333cc4  38 7f ff eb                                      bl #0x3139ac
00333cc8  06 00 a0 e1                                      mov r0, r6
00333ccc  ed 0e 00 eb                                      bl #0x337888
00333cd0  10 13 9f e5                                      ldr r1, [pc, #0x310]
00333cd4  5b 7f 8d e2                                      add r7, sp, #0x16c
00333cd8  30 20 8d e2                                      add r2, sp, #0x30
00333cdc  01 10 8f e0                                      add r1, pc, r1
00333ce0  07 00 a0 e1                                      mov r0, r7
00333ce4  00 81 ff eb                                      bl #0x3140ec
00333ce8  07 10 a0 e1                                      mov r1, r7
00333cec  01 20 a0 e3                                      mov r2, #1
00333cf0  06 00 a0 e1                                      mov r0, r6
00333cf4  38 10 00 eb                                      bl #0x337ddc
00333cf8  07 00 a0 e1                                      mov r0, r7
00333cfc  2a 7f ff eb                                      bl #0x3139ac
00333d00  06 00 a0 e1                                      mov r0, r6
00333d04  df 0e 00 eb                                      bl #0x337888
00333d08  dc 12 9f e5                                      ldr r1, [pc, #0x2dc]
00333d0c  55 7f 8d e2                                      add r7, sp, #0x154
00333d10  2c 20 8d e2                                      add r2, sp, #0x2c
00333d14  01 10 8f e0                                      add r1, pc, r1
00333d18  07 00 a0 e1                                      mov r0, r7
00333d1c  f2 80 ff eb                                      bl #0x3140ec
00333d20  07 10 a0 e1                                      mov r1, r7
00333d24  01 20 a0 e3                                      mov r2, #1
00333d28  06 00 a0 e1                                      mov r0, r6
00333d2c  2a 10 00 eb                                      bl #0x337ddc
00333d30  07 00 a0 e1                                      mov r0, r7
00333d34  1c 7f ff eb                                      bl #0x3139ac
00333d38  06 00 a0 e1                                      mov r0, r6
00333d3c  d1 0e 00 eb                                      bl #0x337888
00333d40  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
00333d44  4f 7f 8d e2                                      add r7, sp, #0x13c
00333d48  07 00 a0 e1                                      mov r0, r7
00333d4c  01 10 8f e0                                      add r1, pc, r1
00333d50  28 20 8d e2                                      add r2, sp, #0x28
00333d54  e4 80 ff eb                                      bl #0x3140ec
00333d58  07 10 a0 e1                                      mov r1, r7
00333d5c  05 20 a0 e1                                      mov r2, r5
00333d60  06 00 a0 e1                                      mov r0, r6
00333d64  1c 10 00 eb                                      bl #0x337ddc
00333d68  07 00 a0 e1                                      mov r0, r7
00333d6c  0e 7f ff eb                                      bl #0x3139ac
00333d70  06 00 a0 e1                                      mov r0, r6
00333d74  c3 0e 00 eb                                      bl #0x337888
00333d78  74 12 9f e5                                      ldr r1, [pc, #0x274]
00333d7c  49 7f 8d e2                                      add r7, sp, #0x124
00333d80  07 00 a0 e1                                      mov r0, r7
00333d84  01 10 8f e0                                      add r1, pc, r1
00333d88  24 20 8d e2                                      add r2, sp, #0x24
00333d8c  d6 80 ff eb                                      bl #0x3140ec
00333d90  07 10 a0 e1                                      mov r1, r7
00333d94  05 20 a0 e1                                      mov r2, r5
00333d98  06 00 a0 e1                                      mov r0, r6
00333d9c  0e 10 00 eb                                      bl #0x337ddc
00333da0  07 00 a0 e1                                      mov r0, r7
00333da4  00 7f ff eb                                      bl #0x3139ac
00333da8  06 00 a0 e1                                      mov r0, r6
00333dac  b5 0e 00 eb                                      bl #0x337888
00333db0  40 12 9f e5                                      ldr r1, [pc, #0x240]
00333db4  43 7f 8d e2                                      add r7, sp, #0x10c
00333db8  07 00 a0 e1                                      mov r0, r7
00333dbc  01 10 8f e0                                      add r1, pc, r1
00333dc0  20 20 8d e2                                      add r2, sp, #0x20
00333dc4  c8 80 ff eb                                      bl #0x3140ec
00333dc8  07 10 a0 e1                                      mov r1, r7
00333dcc  05 20 a0 e1                                      mov r2, r5
00333dd0  06 00 a0 e1                                      mov r0, r6
00333dd4  00 10 00 eb                                      bl #0x337ddc
00333dd8  07 00 a0 e1                                      mov r0, r7
00333ddc  f2 7e ff eb                                      bl #0x3139ac
00333de0  06 00 a0 e1                                      mov r0, r6
00333de4  a7 0e 00 eb                                      bl #0x337888
00333de8  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
00333dec  f4 70 8d e2                                      add r7, sp, #0xf4
00333df0  1c 20 8d e2                                      add r2, sp, #0x1c
00333df4  01 10 8f e0                                      add r1, pc, r1
00333df8  07 00 a0 e1                                      mov r0, r7
00333dfc  ba 80 ff eb                                      bl #0x3140ec
00333e00  07 10 a0 e1                                      mov r1, r7
00333e04  01 20 a0 e3                                      mov r2, #1
00333e08  06 00 a0 e1                                      mov r0, r6
00333e0c  f2 0f 00 eb                                      bl #0x337ddc
00333e10  07 00 a0 e1                                      mov r0, r7
00333e14  e4 7e ff eb                                      bl #0x3139ac
00333e18  06 00 a0 e1                                      mov r0, r6
00333e1c  99 0e 00 eb                                      bl #0x337888
00333e20  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
00333e24  dc 70 8d e2                                      add r7, sp, #0xdc
00333e28  18 20 8d e2                                      add r2, sp, #0x18
00333e2c  01 10 8f e0                                      add r1, pc, r1
00333e30  07 00 a0 e1                                      mov r0, r7
00333e34  ac 80 ff eb                                      bl #0x3140ec
00333e38  07 10 a0 e1                                      mov r1, r7
00333e3c  01 20 a0 e3                                      mov r2, #1
00333e40  06 00 a0 e1                                      mov r0, r6
00333e44  e4 0f 00 eb                                      bl #0x337ddc
00333e48  07 00 a0 e1                                      mov r0, r7
00333e4c  d6 7e ff eb                                      bl #0x3139ac
00333e50  06 00 a0 e1                                      mov r0, r6
00333e54  8b 0e 00 eb                                      bl #0x337888
00333e58  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
00333e5c  c4 70 8d e2                                      add r7, sp, #0xc4
00333e60  07 00 a0 e1                                      mov r0, r7
00333e64  01 10 8f e0                                      add r1, pc, r1
00333e68  14 20 8d e2                                      add r2, sp, #0x14
00333e6c  9e 80 ff eb                                      bl #0x3140ec
00333e70  07 10 a0 e1                                      mov r1, r7
00333e74  05 20 a0 e1                                      mov r2, r5
00333e78  06 00 a0 e1                                      mov r0, r6
00333e7c  d6 0f 00 eb                                      bl #0x337ddc
00333e80  07 00 a0 e1                                      mov r0, r7
00333e84  c8 7e ff eb                                      bl #0x3139ac
00333e88  06 00 a0 e1                                      mov r0, r6
00333e8c  7d 0e 00 eb                                      bl #0x337888
00333e90  70 11 9f e5                                      ldr r1, [pc, #0x170]
00333e94  ac 70 8d e2                                      add r7, sp, #0xac
00333e98  07 00 a0 e1                                      mov r0, r7
00333e9c  01 10 8f e0                                      add r1, pc, r1
00333ea0  10 20 8d e2                                      add r2, sp, #0x10
00333ea4  90 80 ff eb                                      bl #0x3140ec
00333ea8  07 10 a0 e1                                      mov r1, r7
00333eac  05 20 a0 e1                                      mov r2, r5
00333eb0  06 00 a0 e1                                      mov r0, r6
00333eb4  c8 0f 00 eb                                      bl #0x337ddc
00333eb8  07 00 a0 e1                                      mov r0, r7
00333ebc  ba 7e ff eb                                      bl #0x3139ac
00333ec0  06 00 a0 e1                                      mov r0, r6
00333ec4  6f 0e 00 eb                                      bl #0x337888
00333ec8  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
00333ecc  94 70 8d e2                                      add r7, sp, #0x94
00333ed0  07 00 a0 e1                                      mov r0, r7
00333ed4  01 10 8f e0                                      add r1, pc, r1
00333ed8  0c 20 8d e2                                      add r2, sp, #0xc
00333edc  82 80 ff eb                                      bl #0x3140ec
00333ee0  07 10 a0 e1                                      mov r1, r7
00333ee4  05 20 a0 e1                                      mov r2, r5
00333ee8  06 00 a0 e1                                      mov r0, r6
00333eec  ba 0f 00 eb                                      bl #0x337ddc
00333ef0  07 00 a0 e1                                      mov r0, r7
00333ef4  ac 7e ff eb                                      bl #0x3139ac
00333ef8  06 00 a0 e1                                      mov r0, r6
00333efc  61 0e 00 eb                                      bl #0x337888
00333f00  08 11 9f e5                                      ldr r1, [pc, #0x108]
00333f04  7c 70 8d e2                                      add r7, sp, #0x7c
00333f08  08 20 8d e2                                      add r2, sp, #8
00333f0c  01 10 8f e0                                      add r1, pc, r1
00333f10  07 00 a0 e1                                      mov r0, r7
00333f14  74 80 ff eb                                      bl #0x3140ec
00333f18  07 10 a0 e1                                      mov r1, r7
00333f1c  01 20 a0 e3                                      mov r2, #1
00333f20  06 00 a0 e1                                      mov r0, r6
00333f24  ac 0f 00 eb                                      bl #0x337ddc
00333f28  07 00 a0 e1                                      mov r0, r7
00333f2c  9e 7e ff eb                                      bl #0x3139ac
00333f30  06 00 a0 e1                                      mov r0, r6
00333f34  53 0e 00 eb                                      bl #0x337888
00333f38  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00333f3c  64 70 8d e2                                      add r7, sp, #0x64
00333f40  04 20 8d e2                                      add r2, sp, #4
00333f44  01 10 8f e0                                      add r1, pc, r1
00333f48  07 00 a0 e1                                      mov r0, r7
00333f4c  66 80 ff eb                                      bl #0x3140ec
00333f50  05 20 a0 e1                                      mov r2, r5
00333f54  07 10 a0 e1                                      mov r1, r7
00333f58  06 00 a0 e1                                      mov r0, r6
00333f5c  9e 0f 00 eb                                      bl #0x337ddc
00333f60  07 00 a0 e1                                      mov r0, r7
00333f64  90 7e ff eb                                      bl #0x3139ac
00333f68  06 00 a0 e1                                      mov r0, r6
00333f6c  45 0e 00 eb                                      bl #0x337888
00333f70  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00333f74  4c 50 8d e2                                      add r5, sp, #0x4c
00333f78  0d 20 a0 e1                                      mov r2, sp
00333f7c  01 10 8f e0                                      add r1, pc, r1
00333f80  05 00 a0 e1                                      mov r0, r5
00333f84  58 80 ff eb                                      bl #0x3140ec
00333f88  05 10 a0 e1                                      mov r1, r5
00333f8c  06 00 a0 e1                                      mov r0, r6
00333f90  bc 0e 00 eb                                      bl #0x337a88
00333f94  05 00 a0 e1                                      mov r0, r5
00333f98  83 7e ff eb                                      bl #0x3139ac
00333f9c  14 22 9d e5                                      ldr r2, [sp, #0x214]
00333fa0  00 30 9b e5                                      ldr r3, [fp]
00333fa4  04 00 a0 e1                                      mov r0, r4
00333fa8  03 00 52 e1                                      cmp r2, r3
00333fac  01 00 00 1a                                      bne #0x333fb8
00333fb0  87 df 8d e2                                      add sp, sp, #0x21c
00333fb4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00333fb8  d4 68 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00333fbc  34 10 66 00 ac 40 00 00 38 39 00 00 f4 37 00 00  .byte 0x34, 0x10, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
00333fcc  84 08 00 00 ac b3 58 00 98 b3 58 00 44 bd 58 00  .byte 0x84, 0x08, 0x00, 0x00, 0xac, 0xb3, 0x58, 0x00, 0x98, 0xb3, 0x58, 0x00, 0x44, 0xbd, 0x58, 0x00
00333fdc  60 b6 58 00 3c bd 58 00 e4 b3 58 00 e4 bc 58 00  .byte 0x60, 0xb6, 0x58, 0x00, 0x3c, 0xbd, 0x58, 0x00, 0xe4, 0xb3, 0x58, 0x00, 0xe4, 0xbc, 0x58, 0x00
00333fec  c4 bc 58 00 a4 bc 58 00 8c bc 58 00 74 bc 58 00  .byte 0xc4, 0xbc, 0x58, 0x00, 0xa4, 0xbc, 0x58, 0x00, 0x8c, 0xbc, 0x58, 0x00, 0x74, 0xbc, 0x58, 0x00
00333ffc  5c bc 58 00 4c bc 58 00 2c bc 58 00 04 bc 58 00  .byte 0x5c, 0xbc, 0x58, 0x00, 0x4c, 0xbc, 0x58, 0x00, 0x2c, 0xbc, 0x58, 0x00, 0x04, 0xbc, 0x58, 0x00
0033400c  e4 bb 58 00 c4 bb 58 00 a4 bb 58 00 9c bb 58 00  .byte 0xe4, 0xbb, 0x58, 0x00, 0xc4, 0xbb, 0x58, 0x00, 0xa4, 0xbb, 0x58, 0x00, 0x9c, 0xbb, 0x58, 0x00

; FUNCTION 0x0033401c, declared_size=1488, range_size=1488, mode=arm
; class-group: Console
; alias: _ZN7ConsoleC2Ev
; demangled: Console::Console()
; decoder-mode: arm
0033401c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00334020  64 65 9f e5                                      ldr r6, [pc, #0x564]
00334024  64 35 9f e5                                      ldr r3, [pc, #0x564]
00334028  64 25 9f e5                                      ldr r2, [pc, #0x564]
0033402c  06 60 8f e0                                      add r6, pc, r6
00334030  03 b0 96 e7                                      ldr fp, [r6, r3]
00334034  02 20 96 e7                                      ldr r2, [r6, r2]
00334038  00 50 a0 e3                                      mov r5, #0
0033403c  00 30 9b e5                                      ldr r3, [fp]
00334040  00 40 a0 e1                                      mov r4, r0
00334044  08 10 82 e2                                      add r1, r2, #8
00334048  58 20 80 e2                                      add r2, r0, #0x58
0033404c  87 df 4d e2                                      sub sp, sp, #0x21c
00334050  00 10 80 e5                                      str r1, [r0]
00334054  02 00 a0 e1                                      mov r0, r2
00334058  04 50 c4 e5                                      strb r5, [r4, #4]
0033405c  08 50 84 e5                                      str r5, [r4, #8]
00334060  0c 50 84 e5                                      str r5, [r4, #0xc]
00334064  10 50 84 e5                                      str r5, [r4, #0x10]
00334068  14 50 84 e5                                      str r5, [r4, #0x14]
0033406c  18 50 84 e5                                      str r5, [r4, #0x18]
00334070  1c 50 84 e5                                      str r5, [r4, #0x1c]
00334074  20 50 84 e5                                      str r5, [r4, #0x20]
00334078  24 50 84 e5                                      str r5, [r4, #0x24]
0033407c  28 50 84 e5                                      str r5, [r4, #0x28]
00334080  2c 50 84 e5                                      str r5, [r4, #0x2c]
00334084  30 50 84 e5                                      str r5, [r4, #0x30]
00334088  34 50 84 e5                                      str r5, [r4, #0x34]
0033408c  38 50 84 e5                                      str r5, [r4, #0x38]
00334090  3c 50 84 e5                                      str r5, [r4, #0x3c]
00334094  40 50 84 e5                                      str r5, [r4, #0x40]
00334098  44 50 84 e5                                      str r5, [r4, #0x44]
0033409c  48 50 84 e5                                      str r5, [r4, #0x48]
003340a0  4c 50 84 e5                                      str r5, [r4, #0x4c]
003340a4  50 50 84 e5                                      str r5, [r4, #0x50]
003340a8  54 50 84 e5                                      str r5, [r4, #0x54]
003340ac  68 20 84 e5                                      str r2, [r4, #0x68]
003340b0  6c 20 84 e5                                      str r2, [r4, #0x6c]
003340b4  10 10 a0 e3                                      mov r1, #0x10
003340b8  14 32 8d e5                                      str r3, [sp, #0x214]
003340bc  6e 75 ff eb                                      bl #0x31167c
003340c0  68 10 94 e5                                      ldr r1, [r4, #0x68]
003340c4  90 30 84 e2                                      add r3, r4, #0x90
003340c8  00 20 e0 e3                                      mvn r2, #0
003340cc  00 50 c1 e5                                      strb r5, [r1]
003340d0  03 00 a0 e1                                      mov r0, r3
003340d4  8c 20 84 e5                                      str r2, [r4, #0x8c]
003340d8  74 50 84 e5                                      str r5, [r4, #0x74]
003340dc  78 20 84 e5                                      str r2, [r4, #0x78]
003340e0  7c 50 84 e5                                      str r5, [r4, #0x7c]
003340e4  80 50 c4 e5                                      strb r5, [r4, #0x80]
003340e8  b2 58 c4 e1                                      strh r5, [r4, #0x82]
003340ec  b4 58 c4 e1                                      strh r5, [r4, #0x84]
003340f0  86 50 c4 e5                                      strb r5, [r4, #0x86]
003340f4  88 50 84 e5                                      str r5, [r4, #0x88]
003340f8  a0 30 84 e5                                      str r3, [r4, #0xa0]
003340fc  a4 30 84 e5                                      str r3, [r4, #0xa4]
00334100  10 10 a0 e3                                      mov r1, #0x10
00334104  5c 75 ff eb                                      bl #0x31167c
00334108  88 24 9f e5                                      ldr r2, [pc, #0x488]
0033410c  a0 30 94 e5                                      ldr r3, [r4, #0xa0]
00334110  04 10 a0 e3                                      mov r1, #4
00334114  02 70 96 e7                                      ldr r7, [r6, r2]
00334118  00 50 c3 e5                                      strb r5, [r3]
0033411c  04 20 a0 e1                                      mov r2, r4
00334120  0f 30 a0 e3                                      mov r3, #0xf
00334124  14 00 97 e5                                      ldr r0, [r7, #0x14]
00334128  1c 13 00 eb                                      bl #0x338da0
0033412c  05 10 a0 e3                                      mov r1, #5
00334130  04 20 a0 e1                                      mov r2, r4
00334134  14 00 97 e5                                      ldr r0, [r7, #0x14]
00334138  0f 30 a0 e3                                      mov r3, #0xf
0033413c  17 13 00 eb                                      bl #0x338da0
00334140  54 34 9f e5                                      ldr r3, [pc, #0x454]
00334144  7f 8f 8d e2                                      add r8, sp, #0x1fc
00334148  79 9f 8d e2                                      add sb, sp, #0x1e4
0033414c  03 60 96 e7                                      ldr r6, [r6, r3]
00334150  73 af 8d e2                                      add sl, sp, #0x1cc
00334154  6d 7f 8d e2                                      add r7, sp, #0x1b4
00334158  06 00 a0 e1                                      mov r0, r6
0033415c  c9 0d 00 eb                                      bl #0x337888
00334160  38 14 9f e5                                      ldr r1, [pc, #0x438]
00334164  48 20 8d e2                                      add r2, sp, #0x48
00334168  08 00 a0 e1                                      mov r0, r8
0033416c  01 10 8f e0                                      add r1, pc, r1
00334170  dd 7f ff eb                                      bl #0x3140ec
00334174  05 20 a0 e1                                      mov r2, r5
00334178  08 10 a0 e1                                      mov r1, r8
0033417c  06 00 a0 e1                                      mov r0, r6
00334180  15 0f 00 eb                                      bl #0x337ddc
00334184  08 00 a0 e1                                      mov r0, r8
00334188  07 7e ff eb                                      bl #0x3139ac
0033418c  06 00 a0 e1                                      mov r0, r6
00334190  bc 0d 00 eb                                      bl #0x337888
00334194  08 14 9f e5                                      ldr r1, [pc, #0x408]
00334198  44 20 8d e2                                      add r2, sp, #0x44
0033419c  09 00 a0 e1                                      mov r0, sb
003341a0  01 10 8f e0                                      add r1, pc, r1
003341a4  d0 7f ff eb                                      bl #0x3140ec
003341a8  05 20 a0 e1                                      mov r2, r5
003341ac  09 10 a0 e1                                      mov r1, sb
003341b0  06 00 a0 e1                                      mov r0, r6
003341b4  08 0f 00 eb                                      bl #0x337ddc
003341b8  09 00 a0 e1                                      mov r0, sb
003341bc  fa 7d ff eb                                      bl #0x3139ac
003341c0  06 00 a0 e1                                      mov r0, r6
003341c4  af 0d 00 eb                                      bl #0x337888
003341c8  d8 13 9f e5                                      ldr r1, [pc, #0x3d8]
003341cc  40 20 8d e2                                      add r2, sp, #0x40
003341d0  0a 00 a0 e1                                      mov r0, sl
003341d4  01 10 8f e0                                      add r1, pc, r1
003341d8  c3 7f ff eb                                      bl #0x3140ec
003341dc  05 20 a0 e1                                      mov r2, r5
003341e0  0a 10 a0 e1                                      mov r1, sl
003341e4  06 00 a0 e1                                      mov r0, r6
003341e8  fb 0e 00 eb                                      bl #0x337ddc
003341ec  0a 00 a0 e1                                      mov r0, sl
003341f0  ed 7d ff eb                                      bl #0x3139ac
003341f4  06 00 a0 e1                                      mov r0, r6
003341f8  a2 0d 00 eb                                      bl #0x337888
003341fc  a8 13 9f e5                                      ldr r1, [pc, #0x3a8]
00334200  07 00 a0 e1                                      mov r0, r7
00334204  3c 20 8d e2                                      add r2, sp, #0x3c
00334208  01 10 8f e0                                      add r1, pc, r1
0033420c  b6 7f ff eb                                      bl #0x3140ec
00334210  07 10 a0 e1                                      mov r1, r7
00334214  05 20 a0 e1                                      mov r2, r5
00334218  06 00 a0 e1                                      mov r0, r6
0033421c  ee 0e 00 eb                                      bl #0x337ddc
00334220  07 00 a0 e1                                      mov r0, r7
00334224  e0 7d ff eb                                      bl #0x3139ac
00334228  06 00 a0 e1                                      mov r0, r6
0033422c  95 0d 00 eb                                      bl #0x337888
00334230  78 13 9f e5                                      ldr r1, [pc, #0x378]
00334234  67 7f 8d e2                                      add r7, sp, #0x19c
00334238  07 00 a0 e1                                      mov r0, r7
0033423c  01 10 8f e0                                      add r1, pc, r1
00334240  38 20 8d e2                                      add r2, sp, #0x38
00334244  a8 7f ff eb                                      bl #0x3140ec
00334248  07 10 a0 e1                                      mov r1, r7
0033424c  05 20 a0 e1                                      mov r2, r5
00334250  06 00 a0 e1                                      mov r0, r6
00334254  e0 0e 00 eb                                      bl #0x337ddc
00334258  07 00 a0 e1                                      mov r0, r7
0033425c  d2 7d ff eb                                      bl #0x3139ac
00334260  06 00 a0 e1                                      mov r0, r6
00334264  87 0d 00 eb                                      bl #0x337888
00334268  44 13 9f e5                                      ldr r1, [pc, #0x344]
0033426c  61 7f 8d e2                                      add r7, sp, #0x184
00334270  07 00 a0 e1                                      mov r0, r7
00334274  01 10 8f e0                                      add r1, pc, r1
00334278  34 20 8d e2                                      add r2, sp, #0x34
0033427c  9a 7f ff eb                                      bl #0x3140ec
00334280  07 10 a0 e1                                      mov r1, r7
00334284  05 20 a0 e1                                      mov r2, r5
00334288  06 00 a0 e1                                      mov r0, r6
0033428c  d2 0e 00 eb                                      bl #0x337ddc
00334290  07 00 a0 e1                                      mov r0, r7
00334294  c4 7d ff eb                                      bl #0x3139ac
00334298  06 00 a0 e1                                      mov r0, r6
0033429c  79 0d 00 eb                                      bl #0x337888
003342a0  10 13 9f e5                                      ldr r1, [pc, #0x310]
003342a4  5b 7f 8d e2                                      add r7, sp, #0x16c
003342a8  30 20 8d e2                                      add r2, sp, #0x30
003342ac  01 10 8f e0                                      add r1, pc, r1
003342b0  07 00 a0 e1                                      mov r0, r7
003342b4  8c 7f ff eb                                      bl #0x3140ec
003342b8  07 10 a0 e1                                      mov r1, r7
003342bc  01 20 a0 e3                                      mov r2, #1
003342c0  06 00 a0 e1                                      mov r0, r6
003342c4  c4 0e 00 eb                                      bl #0x337ddc
003342c8  07 00 a0 e1                                      mov r0, r7
003342cc  b6 7d ff eb                                      bl #0x3139ac
003342d0  06 00 a0 e1                                      mov r0, r6
003342d4  6b 0d 00 eb                                      bl #0x337888
003342d8  dc 12 9f e5                                      ldr r1, [pc, #0x2dc]
003342dc  55 7f 8d e2                                      add r7, sp, #0x154
003342e0  2c 20 8d e2                                      add r2, sp, #0x2c
003342e4  01 10 8f e0                                      add r1, pc, r1
003342e8  07 00 a0 e1                                      mov r0, r7
003342ec  7e 7f ff eb                                      bl #0x3140ec
003342f0  07 10 a0 e1                                      mov r1, r7
003342f4  01 20 a0 e3                                      mov r2, #1
003342f8  06 00 a0 e1                                      mov r0, r6
003342fc  b6 0e 00 eb                                      bl #0x337ddc
00334300  07 00 a0 e1                                      mov r0, r7
00334304  a8 7d ff eb                                      bl #0x3139ac
00334308  06 00 a0 e1                                      mov r0, r6
0033430c  5d 0d 00 eb                                      bl #0x337888
00334310  a8 12 9f e5                                      ldr r1, [pc, #0x2a8]
00334314  4f 7f 8d e2                                      add r7, sp, #0x13c
00334318  07 00 a0 e1                                      mov r0, r7
0033431c  01 10 8f e0                                      add r1, pc, r1
00334320  28 20 8d e2                                      add r2, sp, #0x28
00334324  70 7f ff eb                                      bl #0x3140ec
00334328  07 10 a0 e1                                      mov r1, r7
0033432c  05 20 a0 e1                                      mov r2, r5
00334330  06 00 a0 e1                                      mov r0, r6
00334334  a8 0e 00 eb                                      bl #0x337ddc
00334338  07 00 a0 e1                                      mov r0, r7
0033433c  9a 7d ff eb                                      bl #0x3139ac
00334340  06 00 a0 e1                                      mov r0, r6
00334344  4f 0d 00 eb                                      bl #0x337888
00334348  74 12 9f e5                                      ldr r1, [pc, #0x274]
0033434c  49 7f 8d e2                                      add r7, sp, #0x124
00334350  07 00 a0 e1                                      mov r0, r7
00334354  01 10 8f e0                                      add r1, pc, r1
00334358  24 20 8d e2                                      add r2, sp, #0x24
0033435c  62 7f ff eb                                      bl #0x3140ec
00334360  07 10 a0 e1                                      mov r1, r7
00334364  05 20 a0 e1                                      mov r2, r5
00334368  06 00 a0 e1                                      mov r0, r6
0033436c  9a 0e 00 eb                                      bl #0x337ddc
00334370  07 00 a0 e1                                      mov r0, r7
00334374  8c 7d ff eb                                      bl #0x3139ac
00334378  06 00 a0 e1                                      mov r0, r6
0033437c  41 0d 00 eb                                      bl #0x337888
00334380  40 12 9f e5                                      ldr r1, [pc, #0x240]
00334384  43 7f 8d e2                                      add r7, sp, #0x10c
00334388  07 00 a0 e1                                      mov r0, r7
0033438c  01 10 8f e0                                      add r1, pc, r1
00334390  20 20 8d e2                                      add r2, sp, #0x20
00334394  54 7f ff eb                                      bl #0x3140ec
00334398  07 10 a0 e1                                      mov r1, r7
0033439c  05 20 a0 e1                                      mov r2, r5
003343a0  06 00 a0 e1                                      mov r0, r6
003343a4  8c 0e 00 eb                                      bl #0x337ddc
003343a8  07 00 a0 e1                                      mov r0, r7
003343ac  7e 7d ff eb                                      bl #0x3139ac
003343b0  06 00 a0 e1                                      mov r0, r6
003343b4  33 0d 00 eb                                      bl #0x337888
003343b8  0c 12 9f e5                                      ldr r1, [pc, #0x20c]
003343bc  f4 70 8d e2                                      add r7, sp, #0xf4
003343c0  1c 20 8d e2                                      add r2, sp, #0x1c
003343c4  01 10 8f e0                                      add r1, pc, r1
003343c8  07 00 a0 e1                                      mov r0, r7
003343cc  46 7f ff eb                                      bl #0x3140ec
003343d0  07 10 a0 e1                                      mov r1, r7
003343d4  01 20 a0 e3                                      mov r2, #1
003343d8  06 00 a0 e1                                      mov r0, r6
003343dc  7e 0e 00 eb                                      bl #0x337ddc
003343e0  07 00 a0 e1                                      mov r0, r7
003343e4  70 7d ff eb                                      bl #0x3139ac
003343e8  06 00 a0 e1                                      mov r0, r6
003343ec  25 0d 00 eb                                      bl #0x337888
003343f0  d8 11 9f e5                                      ldr r1, [pc, #0x1d8]
003343f4  dc 70 8d e2                                      add r7, sp, #0xdc
003343f8  18 20 8d e2                                      add r2, sp, #0x18
003343fc  01 10 8f e0                                      add r1, pc, r1
00334400  07 00 a0 e1                                      mov r0, r7
00334404  38 7f ff eb                                      bl #0x3140ec
00334408  07 10 a0 e1                                      mov r1, r7
0033440c  01 20 a0 e3                                      mov r2, #1
00334410  06 00 a0 e1                                      mov r0, r6
00334414  70 0e 00 eb                                      bl #0x337ddc
00334418  07 00 a0 e1                                      mov r0, r7
0033441c  62 7d ff eb                                      bl #0x3139ac
00334420  06 00 a0 e1                                      mov r0, r6
00334424  17 0d 00 eb                                      bl #0x337888
00334428  a4 11 9f e5                                      ldr r1, [pc, #0x1a4]
0033442c  c4 70 8d e2                                      add r7, sp, #0xc4
00334430  07 00 a0 e1                                      mov r0, r7
00334434  01 10 8f e0                                      add r1, pc, r1
00334438  14 20 8d e2                                      add r2, sp, #0x14
0033443c  2a 7f ff eb                                      bl #0x3140ec
00334440  07 10 a0 e1                                      mov r1, r7
00334444  05 20 a0 e1                                      mov r2, r5
00334448  06 00 a0 e1                                      mov r0, r6
0033444c  62 0e 00 eb                                      bl #0x337ddc
00334450  07 00 a0 e1                                      mov r0, r7
00334454  54 7d ff eb                                      bl #0x3139ac
00334458  06 00 a0 e1                                      mov r0, r6
0033445c  09 0d 00 eb                                      bl #0x337888
00334460  70 11 9f e5                                      ldr r1, [pc, #0x170]
00334464  ac 70 8d e2                                      add r7, sp, #0xac
00334468  07 00 a0 e1                                      mov r0, r7
0033446c  01 10 8f e0                                      add r1, pc, r1
00334470  10 20 8d e2                                      add r2, sp, #0x10
00334474  1c 7f ff eb                                      bl #0x3140ec
00334478  07 10 a0 e1                                      mov r1, r7
0033447c  05 20 a0 e1                                      mov r2, r5
00334480  06 00 a0 e1                                      mov r0, r6
00334484  54 0e 00 eb                                      bl #0x337ddc
00334488  07 00 a0 e1                                      mov r0, r7
0033448c  46 7d ff eb                                      bl #0x3139ac
00334490  06 00 a0 e1                                      mov r0, r6
00334494  fb 0c 00 eb                                      bl #0x337888
00334498  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
0033449c  94 70 8d e2                                      add r7, sp, #0x94
003344a0  07 00 a0 e1                                      mov r0, r7
003344a4  01 10 8f e0                                      add r1, pc, r1
003344a8  0c 20 8d e2                                      add r2, sp, #0xc
003344ac  0e 7f ff eb                                      bl #0x3140ec
003344b0  07 10 a0 e1                                      mov r1, r7
003344b4  05 20 a0 e1                                      mov r2, r5
003344b8  06 00 a0 e1                                      mov r0, r6
003344bc  46 0e 00 eb                                      bl #0x337ddc
003344c0  07 00 a0 e1                                      mov r0, r7
003344c4  38 7d ff eb                                      bl #0x3139ac
003344c8  06 00 a0 e1                                      mov r0, r6
003344cc  ed 0c 00 eb                                      bl #0x337888
003344d0  08 11 9f e5                                      ldr r1, [pc, #0x108]
003344d4  7c 70 8d e2                                      add r7, sp, #0x7c
003344d8  08 20 8d e2                                      add r2, sp, #8
003344dc  01 10 8f e0                                      add r1, pc, r1
003344e0  07 00 a0 e1                                      mov r0, r7
003344e4  00 7f ff eb                                      bl #0x3140ec
003344e8  07 10 a0 e1                                      mov r1, r7
003344ec  01 20 a0 e3                                      mov r2, #1
003344f0  06 00 a0 e1                                      mov r0, r6
003344f4  38 0e 00 eb                                      bl #0x337ddc
003344f8  07 00 a0 e1                                      mov r0, r7
003344fc  2a 7d ff eb                                      bl #0x3139ac
00334500  06 00 a0 e1                                      mov r0, r6
00334504  df 0c 00 eb                                      bl #0x337888
00334508  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
0033450c  64 70 8d e2                                      add r7, sp, #0x64
00334510  04 20 8d e2                                      add r2, sp, #4
00334514  01 10 8f e0                                      add r1, pc, r1
00334518  07 00 a0 e1                                      mov r0, r7
0033451c  f2 7e ff eb                                      bl #0x3140ec
00334520  05 20 a0 e1                                      mov r2, r5
00334524  07 10 a0 e1                                      mov r1, r7
00334528  06 00 a0 e1                                      mov r0, r6
0033452c  2a 0e 00 eb                                      bl #0x337ddc
00334530  07 00 a0 e1                                      mov r0, r7
00334534  1c 7d ff eb                                      bl #0x3139ac
00334538  06 00 a0 e1                                      mov r0, r6
0033453c  d1 0c 00 eb                                      bl #0x337888
00334540  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00334544  4c 50 8d e2                                      add r5, sp, #0x4c
00334548  0d 20 a0 e1                                      mov r2, sp
0033454c  01 10 8f e0                                      add r1, pc, r1
00334550  05 00 a0 e1                                      mov r0, r5
00334554  e4 7e ff eb                                      bl #0x3140ec
00334558  05 10 a0 e1                                      mov r1, r5
0033455c  06 00 a0 e1                                      mov r0, r6
00334560  48 0d 00 eb                                      bl #0x337a88
00334564  05 00 a0 e1                                      mov r0, r5
00334568  0f 7d ff eb                                      bl #0x3139ac
0033456c  14 22 9d e5                                      ldr r2, [sp, #0x214]
00334570  00 30 9b e5                                      ldr r3, [fp]
00334574  04 00 a0 e1                                      mov r0, r4
00334578  03 00 52 e1                                      cmp r2, r3
0033457c  01 00 00 1a                                      bne #0x334588
00334580  87 df 8d e2                                      add sp, sp, #0x21c
00334584  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00334588  60 67 ff eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0033458c  64 0a 66 00 ac 40 00 00 38 39 00 00 f4 37 00 00  .byte 0x64, 0x0a, 0x66, 0x00, 0xac, 0x40, 0x00, 0x00, 0x38, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
0033459c  84 08 00 00 dc ad 58 00 c8 ad 58 00 74 b7 58 00  .byte 0x84, 0x08, 0x00, 0x00, 0xdc, 0xad, 0x58, 0x00, 0xc8, 0xad, 0x58, 0x00, 0x74, 0xb7, 0x58, 0x00
003345ac  90 b0 58 00 6c b7 58 00 14 ae 58 00 14 b7 58 00  .byte 0x90, 0xb0, 0x58, 0x00, 0x6c, 0xb7, 0x58, 0x00, 0x14, 0xae, 0x58, 0x00, 0x14, 0xb7, 0x58, 0x00
003345bc  f4 b6 58 00 d4 b6 58 00 bc b6 58 00 a4 b6 58 00  .byte 0xf4, 0xb6, 0x58, 0x00, 0xd4, 0xb6, 0x58, 0x00, 0xbc, 0xb6, 0x58, 0x00, 0xa4, 0xb6, 0x58, 0x00
003345cc  8c b6 58 00 7c b6 58 00 5c b6 58 00 34 b6 58 00  .byte 0x8c, 0xb6, 0x58, 0x00, 0x7c, 0xb6, 0x58, 0x00, 0x5c, 0xb6, 0x58, 0x00, 0x34, 0xb6, 0x58, 0x00
003345dc  14 b6 58 00 f4 b5 58 00 d4 b5 58 00 cc b5 58 00  .byte 0x14, 0xb6, 0x58, 0x00, 0xf4, 0xb5, 0x58, 0x00, 0xd4, 0xb5, 0x58, 0x00, 0xcc, 0xb5, 0x58, 0x00

; FUNCTION 0x00334764, declared_size=476, range_size=476, mode=arm
; class-group: Console
; alias: _ZN7Console20_setMenuDebugModulesEv
; demangled: Console::_setMenuDebugModules()
; decoder-mode: arm
00334764  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00334768  41 dd 4d e2                                      sub sp, sp, #0x1040
0033476c  04 d0 4d e2                                      sub sp, sp, #4
00334770  01 2a 8d e2                                      add r2, sp, #0x1000
00334774  2c 20 82 e2                                      add r2, r2, #0x2c
00334778  02 10 a0 e1                                      mov r1, r2
0033477c  0c 20 8d e5                                      str r2, [sp, #0xc]
00334780  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
00334784  01 ca 8d e2                                      add ip, sp, #0x1000
00334788  00 30 a0 e3                                      mov r3, #0
0033478c  02 20 8f e0                                      add r2, pc, r2
00334790  34 30 8c e5                                      str r3, [ip, #0x34]
00334794  2c 30 8c e5                                      str r3, [ip, #0x2c]
00334798  30 30 8c e5                                      str r3, [ip, #0x30]
0033479c  00 50 a0 e1                                      mov r5, r0
003347a0  a0 ed ff eb                                      bl #0x32fe28
003347a4  40 30 95 e5                                      ldr r3, [r5, #0x40]
003347a8  88 41 9f e5                                      ldr r4, [pc, #0x188]
003347ac  01 6a 8d e2                                      add r6, sp, #0x1000
003347b0  03 00 a0 e1                                      mov r0, r3
003347b4  00 30 93 e5                                      ldr r3, [r3]
003347b8  0f e0 a0 e1                                      mov lr, pc
003347bc  98 f0 93 e5                                      ldr pc, [r3, #0x98]
003347c0  74 31 9f e5                                      ldr r3, [pc, #0x174]
003347c4  04 40 8f e0                                      add r4, pc, r4
003347c8  14 60 86 e2                                      add r6, r6, #0x14
003347cc  03 40 94 e7                                      ldr r4, [r4, r3]
003347d0  04 00 a0 e1                                      mov r0, r4
003347d4  2b 0c 00 eb                                      bl #0x337888
003347d8  18 10 84 e2                                      add r1, r4, #0x18
003347dc  06 00 a0 e1                                      mov r0, r6
003347e0  c1 ff ff eb                                      bl #0x3346ec
003347e4  01 2a 8d e2                                      add r2, sp, #0x1000
003347e8  1c 40 92 e5                                      ldr r4, [r2, #0x1c]
003347ec  06 00 54 e1                                      cmp r4, r6
003347f0  30 00 00 0a                                      beq #0x3348b8
003347f4  01 3a 8d e2                                      add r3, sp, #0x1000
003347f8  40 70 8d e2                                      add r7, sp, #0x40
003347fc  02 81 a0 e3                                      mov r8, #0x80000000
00334800  ff a4 a0 e3                                      mov sl, #0xff000000
00334804  3c 30 83 e2                                      add r3, r3, #0x3c
00334808  2c 70 47 e2                                      sub r7, r7, #0x2c
0033480c  c8 87 a0 e1                                      asr r8, r8, #0xf
00334810  ff ac 8a e2                                      add sl, sl, #0xff00
00334814  08 30 8d e5                                      str r3, [sp, #8]
00334818  28 90 d4 e5                                      ldrb sb, [r4, #0x28]
0033481c  40 30 95 e5                                      ldr r3, [r5, #0x40]
00334820  07 10 a0 e1                                      mov r1, r7
00334824  00 00 59 e3                                      cmp sb, #0
00334828  03 00 a0 e1                                      mov r0, r3
0033482c  00 30 93 e5                                      ldr r3, [r3]
00334830  08 90 a0 01                                      moveq sb, r8
00334834  0a 90 a0 11                                      movne sb, sl
00334838  0f e0 a0 e1                                      mov lr, pc
0033483c  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00334840  00 10 a0 e1                                      mov r1, r0
00334844  40 00 95 e5                                      ldr r0, [r5, #0x40]
00334848  59 24 e7 e7                                      ubfx r2, sb, #8, #8
0033484c  01 3a 8d e2                                      add r3, sp, #0x1000
00334850  00 c0 90 e5                                      ldr ip, [r0]
00334854  00 b0 a0 e3                                      mov fp, #0
00334858  04 20 8d e5                                      str r2, [sp, #4]
0033485c  29 ec a0 e1                                      lsr lr, sb, #0x18
00334860  59 28 e7 e7                                      ubfx r2, sb, #0x10, #8
00334864  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
00334868  3f b0 c3 e5                                      strb fp, [r3, #0x3f]
0033486c  3e e0 c3 e5                                      strb lr, [r3, #0x3e]
00334870  3d 20 c3 e5                                      strb r2, [r3, #0x3d]
00334874  04 20 9d e5                                      ldr r2, [sp, #4]
00334878  38 90 83 e5                                      str sb, [r3, #0x38]
0033487c  3c 20 c3 e5                                      strb r2, [r3, #0x3c]
00334880  08 30 9d e5                                      ldr r3, [sp, #8]
00334884  0b 20 a0 e1                                      mov r2, fp
00334888  3c ff 2f e1                                      blx ip
0033488c  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00334890  0b 00 52 e1                                      cmp r2, fp
00334894  01 00 00 1a                                      bne #0x3348a0
00334898  18 00 00 ea                                      b #0x334900
0033489c  03 20 a0 e1                                      mov r2, r3
003348a0  08 30 92 e5                                      ldr r3, [r2, #8]
003348a4  00 00 53 e3                                      cmp r3, #0
003348a8  fb ff ff 1a                                      bne #0x33489c
003348ac  02 40 a0 e1                                      mov r4, r2
003348b0  06 00 54 e1                                      cmp r4, r6
003348b4  d7 ff ff 1a                                      bne #0x334818
003348b8  01 ca 8d e2                                      add ip, sp, #0x1000
003348bc  24 30 9c e5                                      ldr r3, [ip, #0x24]
003348c0  00 00 53 e3                                      cmp r3, #0
003348c4  08 00 00 0a                                      beq #0x3348ec
003348c8  06 00 a0 e1                                      mov r0, r6
003348cc  18 10 9c e5                                      ldr r1, [ip, #0x18]
003348d0  b6 f0 ff eb                                      bl #0x330bb0
003348d4  01 2a 8d e2                                      add r2, sp, #0x1000
003348d8  00 30 a0 e3                                      mov r3, #0
003348dc  20 60 82 e5                                      str r6, [r2, #0x20]
003348e0  24 30 82 e5                                      str r3, [r2, #0x24]
003348e4  1c 60 82 e5                                      str r6, [r2, #0x1c]
003348e8  18 30 82 e5                                      str r3, [r2, #0x18]
003348ec  0c 00 9d e5                                      ldr r0, [sp, #0xc]
003348f0  8e 7d ff eb                                      bl #0x313f30
003348f4  44 d0 8d e2                                      add sp, sp, #0x44
003348f8  01 da 8d e2                                      add sp, sp, #0x1000
003348fc  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00334900  04 30 94 e5                                      ldr r3, [r4, #4]
00334904  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00334908  01 00 54 e1                                      cmp r4, r1
0033490c  05 00 00 1a                                      bne #0x334928
00334910  03 40 a0 e1                                      mov r4, r3
00334914  04 30 93 e5                                      ldr r3, [r3, #4]
00334918  0c 20 93 e5                                      ldr r2, [r3, #0xc]
0033491c  04 00 52 e1                                      cmp r2, r4
00334920  fa ff ff 0a                                      beq #0x334910
00334924  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00334928  03 00 52 e1                                      cmp r2, r3
0033492c  03 40 a0 11                                      movne r4, r3
00334930  de ff ff ea                                      b #0x3348b0
; mapping-symbol data/literal pool
00334934  a4 b3 58 00 cc 02 66 00 84 08 00 00              .byte 0xa4, 0xb3, 0x58, 0x00, 0xcc, 0x02, 0x66, 0x00, 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x00334940, declared_size=476, range_size=476, mode=arm
; class-group: Console
; alias: _ZN7Console21_setMenuDebugSwitchesEv
; demangled: Console::_setMenuDebugSwitches()
; decoder-mode: arm
00334940  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00334944  41 dd 4d e2                                      sub sp, sp, #0x1040
00334948  04 d0 4d e2                                      sub sp, sp, #4
0033494c  01 2a 8d e2                                      add r2, sp, #0x1000
00334950  2c 20 82 e2                                      add r2, r2, #0x2c
00334954  02 10 a0 e1                                      mov r1, r2
00334958  0c 20 8d e5                                      str r2, [sp, #0xc]
0033495c  ac 21 9f e5                                      ldr r2, [pc, #0x1ac]
00334960  01 ca 8d e2                                      add ip, sp, #0x1000
00334964  00 30 a0 e3                                      mov r3, #0
00334968  02 20 8f e0                                      add r2, pc, r2
0033496c  34 30 8c e5                                      str r3, [ip, #0x34]
00334970  2c 30 8c e5                                      str r3, [ip, #0x2c]
00334974  30 30 8c e5                                      str r3, [ip, #0x30]
00334978  00 50 a0 e1                                      mov r5, r0
0033497c  29 ed ff eb                                      bl #0x32fe28
00334980  40 30 95 e5                                      ldr r3, [r5, #0x40]
00334984  88 41 9f e5                                      ldr r4, [pc, #0x188]
00334988  01 6a 8d e2                                      add r6, sp, #0x1000
0033498c  03 00 a0 e1                                      mov r0, r3
00334990  00 30 93 e5                                      ldr r3, [r3]
00334994  0f e0 a0 e1                                      mov lr, pc
00334998  98 f0 93 e5                                      ldr pc, [r3, #0x98]
0033499c  74 31 9f e5                                      ldr r3, [pc, #0x174]
003349a0  04 40 8f e0                                      add r4, pc, r4
003349a4  14 60 86 e2                                      add r6, r6, #0x14
003349a8  03 a0 94 e7                                      ldr sl, [r4, r3]
003349ac  02 71 a0 e3                                      mov r7, #0x80000000
003349b0  ff 84 a0 e3                                      mov r8, #0xff000000
003349b4  0a 00 a0 e1                                      mov r0, sl
003349b8  b2 0b 00 eb                                      bl #0x337888
003349bc  0a 10 a0 e1                                      mov r1, sl
003349c0  06 00 a0 e1                                      mov r0, r6
003349c4  48 ff ff eb                                      bl #0x3346ec
003349c8  01 2a 8d e2                                      add r2, sp, #0x1000
003349cc  01 3a 8d e2                                      add r3, sp, #0x1000
003349d0  1c 40 92 e5                                      ldr r4, [r2, #0x1c]
003349d4  40 a0 8d e2                                      add sl, sp, #0x40
003349d8  3c 30 83 e2                                      add r3, r3, #0x3c
003349dc  c7 77 a0 e1                                      asr r7, r7, #0xf
003349e0  ff 8c 88 e2                                      add r8, r8, #0xff00
003349e4  2c a0 4a e2                                      sub sl, sl, #0x2c
003349e8  08 30 8d e5                                      str r3, [sp, #8]
003349ec  06 00 54 e1                                      cmp r4, r6
003349f0  27 00 00 0a                                      beq #0x334a94
003349f4  28 90 d4 e5                                      ldrb sb, [r4, #0x28]
003349f8  40 30 95 e5                                      ldr r3, [r5, #0x40]
003349fc  0a 10 a0 e1                                      mov r1, sl
00334a00  00 00 59 e3                                      cmp sb, #0
00334a04  03 00 a0 e1                                      mov r0, r3
00334a08  00 30 93 e5                                      ldr r3, [r3]
00334a0c  07 90 a0 01                                      moveq sb, r7
00334a10  08 90 a0 11                                      movne sb, r8
00334a14  0f e0 a0 e1                                      mov lr, pc
00334a18  84 f0 93 e5                                      ldr pc, [r3, #0x84]
00334a1c  00 10 a0 e1                                      mov r1, r0
00334a20  40 00 95 e5                                      ldr r0, [r5, #0x40]
00334a24  59 24 e7 e7                                      ubfx r2, sb, #8, #8
00334a28  01 3a 8d e2                                      add r3, sp, #0x1000
00334a2c  00 c0 90 e5                                      ldr ip, [r0]
00334a30  00 b0 a0 e3                                      mov fp, #0
00334a34  04 20 8d e5                                      str r2, [sp, #4]
00334a38  29 ec a0 e1                                      lsr lr, sb, #0x18
00334a3c  59 28 e7 e7                                      ubfx r2, sb, #0x10, #8
00334a40  b0 c0 9c e5                                      ldr ip, [ip, #0xb0]
00334a44  3f b0 c3 e5                                      strb fp, [r3, #0x3f]
00334a48  3e e0 c3 e5                                      strb lr, [r3, #0x3e]
00334a4c  3d 20 c3 e5                                      strb r2, [r3, #0x3d]
00334a50  04 20 9d e5                                      ldr r2, [sp, #4]
00334a54  38 90 83 e5                                      str sb, [r3, #0x38]
00334a58  3c 20 c3 e5                                      strb r2, [r3, #0x3c]
00334a5c  08 30 9d e5                                      ldr r3, [sp, #8]
00334a60  0b 20 a0 e1                                      mov r2, fp
00334a64  3c ff 2f e1                                      blx ip
00334a68  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00334a6c  0b 00 52 e1                                      cmp r2, fp
00334a70  01 00 00 1a                                      bne #0x334a7c
00334a74  18 00 00 ea                                      b #0x334adc
00334a78  03 20 a0 e1                                      mov r2, r3
00334a7c  08 30 92 e5                                      ldr r3, [r2, #8]
00334a80  00 00 53 e3                                      cmp r3, #0
00334a84  fb ff ff 1a                                      bne #0x334a78
00334a88  02 40 a0 e1                                      mov r4, r2
00334a8c  06 00 54 e1                                      cmp r4, r6
00334a90  d7 ff ff 1a                                      bne #0x3349f4
00334a94  01 ca 8d e2                                      add ip, sp, #0x1000
00334a98  24 30 9c e5                                      ldr r3, [ip, #0x24]
00334a9c  00 00 53 e3                                      cmp r3, #0
00334aa0  08 00 00 0a                                      beq #0x334ac8
00334aa4  04 00 a0 e1                                      mov r0, r4
00334aa8  18 10 9c e5                                      ldr r1, [ip, #0x18]
00334aac  3f f0 ff eb                                      bl #0x330bb0
00334ab0  01 2a 8d e2                                      add r2, sp, #0x1000
00334ab4  00 30 a0 e3                                      mov r3, #0
00334ab8  20 40 82 e5                                      str r4, [r2, #0x20]
00334abc  24 30 82 e5                                      str r3, [r2, #0x24]
00334ac0  1c 40 82 e5                                      str r4, [r2, #0x1c]
00334ac4  18 30 82 e5                                      str r3, [r2, #0x18]
00334ac8  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00334acc  17 7d ff eb                                      bl #0x313f30
00334ad0  44 d0 8d e2                                      add sp, sp, #0x44
00334ad4  01 da 8d e2                                      add sp, sp, #0x1000
00334ad8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00334adc  04 30 94 e5                                      ldr r3, [r4, #4]
00334ae0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00334ae4  01 00 54 e1                                      cmp r4, r1
00334ae8  05 00 00 1a                                      bne #0x334b04
00334aec  03 40 a0 e1                                      mov r4, r3
00334af0  04 30 93 e5                                      ldr r3, [r3, #4]
00334af4  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00334af8  04 00 52 e1                                      cmp r2, r4
00334afc  fa ff ff 0a                                      beq #0x334aec
00334b00  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00334b04  03 00 52 e1                                      cmp r2, r3
00334b08  03 40 a0 11                                      movne r4, r3
00334b0c  b6 ff ff ea                                      b #0x3349ec
; mapping-symbol data/literal pool
00334b10  d8 b1 58 00 f0 00 66 00 84 08 00 00              .byte 0xd8, 0xb1, 0x58, 0x00, 0xf0, 0x00, 0x66, 0x00, 0x84, 0x08, 0x00, 0x00

; FUNCTION 0x00334b1c, declared_size=188, range_size=188, mode=arm
; class-group: Console
; alias: _ZN7Console8_setMenuEv
; demangled: Console::_setMenu()
; decoder-mode: arm
00334b1c  04 30 d0 e5                                      ldrb r3, [r0, #4]
00334b20  00 00 53 e3                                      cmp r3, #0
00334b24  1e ff 2f 01                                      bxeq lr
00334b28  08 30 90 e5                                      ldr r3, [r0, #8]
00334b2c  13 00 53 e3                                      cmp r3, #0x13
00334b30  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00334b34  13 00 00 ea                                      b #0x334b88
00334b38  25 00 00 ea                                      b #0x334bd4
00334b3c  23 00 00 ea                                      b #0x334bd0
00334b40  21 00 00 ea                                      b #0x334bcc
00334b44  1f 00 00 ea                                      b #0x334bc8
00334b48  1d 00 00 ea                                      b #0x334bc4
00334b4c  1b 00 00 ea                                      b #0x334bc0
00334b50  19 00 00 ea                                      b #0x334bbc
00334b54  17 00 00 ea                                      b #0x334bb8
00334b58  15 00 00 ea                                      b #0x334bb4
00334b5c  13 00 00 ea                                      b #0x334bb0
00334b60  11 00 00 ea                                      b #0x334bac
00334b64  0f 00 00 ea                                      b #0x334ba8
00334b68  0d 00 00 ea                                      b #0x334ba4
00334b6c  0b 00 00 ea                                      b #0x334ba0
00334b70  09 00 00 ea                                      b #0x334b9c
00334b74  07 00 00 ea                                      b #0x334b98
00334b78  02 00 00 ea                                      b #0x334b88
00334b7c  04 00 00 ea                                      b #0x334b94
00334b80  02 00 00 ea                                      b #0x334b90
00334b84  00 00 00 ea                                      b #0x334b8c
00334b88  1e ff 2f e1                                      bx lr
00334b8c  ca f1 ff ea                                      b #0x3312bc
00334b90  91 ed ff ea                                      b #0x3301dc
00334b94  f4 ef ff ea                                      b #0x330b6c
00334b98  d0 f0 ff ea                                      b #0x330ee0
00334b9c  15 f1 ff ea                                      b #0x330ff8
00334ba0  66 f1 ff ea                                      b #0x331140
00334ba4  8b ed ff ea                                      b #0x3301d8
00334ba8  44 f0 ff ea                                      b #0x330cc0
00334bac  6f f0 ff ea                                      b #0x330d70
00334bb0  0e f0 ff ea                                      b #0x330bf0
00334bb4  0f f2 ff ea                                      b #0x3313f8
00334bb8  62 f2 ff ea                                      b #0x331548
00334bbc  4a f5 ff ea                                      b #0x3320ec
00334bc0  96 f0 ff ea                                      b #0x330e20
00334bc4  2f f6 ff ea                                      b #0x332488
00334bc8  b3 f2 ff ea                                      b #0x33169c
00334bcc  e4 fe ff ea                                      b #0x334764
00334bd0  5a ff ff ea                                      b #0x334940
00334bd4  7a ed ff ea                                      b #0x3301c4

; FUNCTION 0x00334bd8, declared_size=324, range_size=324, mode=arm
; class-group: Console
; alias: _ZN7Console6ToggleEv
; demangled: Console::Toggle()
; decoder-mode: arm
00334bd8  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00334bdc  04 30 d0 e5                                      ldrb r3, [r0, #4]
00334be0  1c 51 9f e5                                      ldr r5, [pc, #0x11c]
00334be4  0c d0 4d e2                                      sub sp, sp, #0xc
00334be8  01 30 23 e2                                      eor r3, r3, #1
00334bec  00 00 53 e3                                      cmp r3, #0
00334bf0  04 30 c0 e5                                      strb r3, [r0, #4]
00334bf4  00 40 a0 e1                                      mov r4, r0
00334bf8  05 50 8f e0                                      add r5, pc, r5
00334bfc  3e 00 00 0a                                      beq #0x334cfc
00334c00  10 10 90 e5                                      ldr r1, [r0, #0x10]
00334c04  14 20 90 e5                                      ldr r2, [r0, #0x14]
00334c08  10 60 80 e2                                      add r6, r0, #0x10
00334c0c  02 00 51 e1                                      cmp r1, r2
00334c10  02 00 00 0a                                      beq #0x334c20
00334c14  06 00 a0 e1                                      mov r0, r6
00334c18  04 30 8d e2                                      add r3, sp, #4
00334c1c  2b ee ff eb                                      bl #0x3304d0
00334c20  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00334c24  e0 10 9f e5                                      ldr r1, [pc, #0xe0]
00334c28  06 20 a0 e1                                      mov r2, r6
00334c2c  03 50 95 e7                                      ldr r5, [r5, r3]
00334c30  01 10 8f e0                                      add r1, pc, r1
00334c34  d4 70 9f e5                                      ldr r7, [pc, #0xd4]
00334c38  10 30 95 e5                                      ldr r3, [r5, #0x10]
00334c3c  0d 80 a0 e1                                      mov r8, sp
00334c40  07 70 8f e0                                      add r7, pc, r7
00334c44  34 30 93 e5                                      ldr r3, [r3, #0x34]
00334c48  03 00 a0 e1                                      mov r0, r3
00334c4c  00 30 93 e5                                      ldr r3, [r3]
00334c50  0f e0 a0 e1                                      mov lr, pc
00334c54  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00334c58  10 30 95 e5                                      ldr r3, [r5, #0x10]
00334c5c  b0 10 9f e5                                      ldr r1, [pc, #0xb0]
00334c60  06 20 a0 e1                                      mov r2, r6
00334c64  34 30 93 e5                                      ldr r3, [r3, #0x34]
00334c68  01 10 8f e0                                      add r1, pc, r1
00334c6c  a4 50 9f e5                                      ldr r5, [pc, #0xa4]
00334c70  03 00 a0 e1                                      mov r0, r3
00334c74  00 30 93 e5                                      ldr r3, [r3]
00334c78  0f e0 a0 e1                                      mov lr, pc
00334c7c  7c f0 93 e5                                      ldr pc, [r3, #0x7c]
00334c80  10 a0 94 e5                                      ldr sl, [r4, #0x10]
00334c84  14 b0 94 e5                                      ldr fp, [r4, #0x14]
00334c88  05 50 8f e0                                      add r5, pc, r5
00334c8c  0b 00 5a e1                                      cmp sl, fp
00334c90  05 10 a0 e1                                      mov r1, r5
00334c94  08 00 00 0a                                      beq #0x334cbc
00334c98  14 90 9a e5                                      ldr sb, [sl, #0x14]
00334c9c  09 00 a0 e1                                      mov r0, sb
00334ca0  cb 67 ff eb                                      bl #0x30ebd4
00334ca4  00 00 50 e3                                      cmp r0, #0
00334ca8  07 00 00 0a                                      beq #0x334ccc
00334cac  18 a0 8a e2                                      add sl, sl, #0x18
00334cb0  0b 00 5a e1                                      cmp sl, fp
00334cb4  05 10 a0 e1                                      mov r1, r5
00334cb8  f6 ff ff 1a                                      bne #0x334c98
00334cbc  04 00 a0 e1                                      mov r0, r4
00334cc0  95 ff ff eb                                      bl #0x334b1c
00334cc4  0c d0 8d e2                                      add sp, sp, #0xc
00334cc8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00334ccc  09 00 a0 e1                                      mov r0, sb
00334cd0  07 10 a0 e1                                      mov r1, r7
00334cd4  be 67 ff eb                                      bl #0x30ebd4
00334cd8  00 00 50 e3                                      cmp r0, #0
00334cdc  f2 ff ff 1a                                      bne #0x334cac
00334ce0  0a 10 a0 e1                                      mov r1, sl
00334ce4  06 00 a0 e1                                      mov r0, r6
00334ce8  0d 20 a0 e1                                      mov r2, sp
00334cec  be ed ff eb                                      bl #0x3303ec
00334cf0  14 b0 94 e5                                      ldr fp, [r4, #0x14]
00334cf4  00 a0 a0 e1                                      mov sl, r0
00334cf8  e3 ff ff ea                                      b #0x334c8c
00334cfc  2f ec ff eb                                      bl #0x32fdc0
00334d00  ef ff ff ea                                      b #0x334cc4
; mapping-symbol data/literal pool
00334d04  98 fe 65 00 f4 37 00 00 20 af 58 00 10 ab 58 00  .byte 0x98, 0xfe, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00, 0x20, 0xaf, 0x58, 0x00, 0x10, 0xab, 0x58, 0x00
00334d14  00 af 58 00 e0 aa 58 00                          .byte 0x00, 0xaf, 0x58, 0x00, 0xe0, 0xaa, 0x58, 0x00

; FUNCTION 0x00334d1c, declared_size=3576, range_size=3576, mode=arm
; class-group: Console
; alias: _ZN7Console11_selectItemEi
; demangled: Console::_selectItem(int)
; decoder-mode: arm
00334d1c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00334d20  c0 4d 9f e5                                      ldr r4, [pc, #0xdc0]
00334d24  c0 5d 9f e5                                      ldr r5, [pc, #0xdc0]
00334d28  05 dc 4d e2                                      sub sp, sp, #0x500
00334d2c  04 40 8f e0                                      add r4, pc, r4
00334d30  05 30 94 e7                                      ldr r3, [r4, r5]
00334d34  04 d0 4d e2                                      sub sp, sp, #4
00334d38  0c 70 90 e5                                      ldr r7, [r0, #0xc]
00334d3c  00 30 93 e5                                      ldr r3, [r3]
00334d40  00 60 a0 e1                                      mov r6, r0
00334d44  01 80 a0 e1                                      mov r8, r1
00334d48  fc 34 8d e5                                      str r3, [sp, #0x4fc]
00334d4c  96 ee ff eb                                      bl #0x3307ac
00334d50  00 00 57 e1                                      cmp r7, r0
00334d54  29 00 00 2a                                      bhs #0x334e00
00334d58  08 30 96 e5                                      ldr r3, [r6, #8]
00334d5c  13 00 53 e3                                      cmp r3, #0x13
00334d60  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00334d64  25 00 00 ea                                      b #0x334e00
00334d68  9a 01 00 ea                                      b #0x3353d8
00334d6c  70 01 00 ea                                      b #0x335334
00334d70  42 01 00 ea                                      b #0x335280
00334d74  37 01 00 ea                                      b #0x335258
00334d78  48 00 00 ea                                      b #0x334ea0
00334d7c  5a 00 00 ea                                      b #0x334eec
00334d80  0c 00 00 ea                                      b #0x334db8
00334d84  24 01 00 ea                                      b #0x33521c
00334d88  12 01 00 ea                                      b #0x3351d8
00334d8c  fc 00 00 ea                                      b #0x335184
00334d90  d7 00 00 ea                                      b #0x3350f4
00334d94  b2 00 00 ea                                      b #0x335064
00334d98  18 00 00 ea                                      b #0x334e00
00334d9c  a7 00 00 ea                                      b #0x335040
00334da0  9a 00 00 ea                                      b #0x335010
00334da4  7c 00 00 ea                                      b #0x334f9c
00334da8  14 00 00 ea                                      b #0x334e00
00334dac  9e 01 00 ea                                      b #0x33542c
00334db0  27 00 00 ea                                      b #0x334e54
00334db4  6d 00 00 ea                                      b #0x334f70
00334db8  30 3d 9f e5                                      ldr r3, [pc, #0xd30]
00334dbc  03 30 94 e7                                      ldr r3, [r4, r3]
00334dc0  40 00 93 e5                                      ldr r0, [r3, #0x40]
00334dc4  72 ee ff eb                                      bl #0x330794
00334dc8  00 00 50 e3                                      cmp r0, #0
00334dcc  0b 00 00 0a                                      beq #0x334e00
00334dd0  1c 3d 9f e5                                      ldr r3, [pc, #0xd1c]
00334dd4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00334dd8  00 20 e0 e3                                      mvn r2, #0
00334ddc  03 30 94 e7                                      ldr r3, [r4, r3]
00334de0  00 30 93 e5                                      ldr r3, [r3]
00334de4  01 11 93 e7                                      ldr r1, [r3, r1, lsl #2]
00334de8  21 1d 02 eb                                      bl #0x3bc274
00334dec  00 00 50 e3                                      cmp r0, #0
00334df0  00 00 00 0a                                      beq #0x334df8
00334df4  d7 30 05 eb                                      bl #0x481158
00334df8  06 00 a0 e1                                      mov r0, r6
00334dfc  46 ff ff eb                                      bl #0x334b1c
00334e00  05 30 94 e7                                      ldr r3, [r4, r5]
00334e04  fc 24 9d e5                                      ldr r2, [sp, #0x4fc]
00334e08  00 30 93 e5                                      ldr r3, [r3]
00334e0c  03 00 52 e1                                      cmp r2, r3
00334e10  2e 03 00 1a                                      bne #0x335ad0
00334e14  41 df 8d e2                                      add sp, sp, #0x104
00334e18  01 db 8d e2                                      add sp, sp, #0x400
00334e1c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00334e20  c8 3c 9f e5                                      ldr r3, [pc, #0xcc8]
00334e24  03 70 94 e7                                      ldr r7, [r4, r3]
00334e28  07 00 a0 e1                                      mov r0, r7
00334e2c  d8 a9 ff eb                                      bl #0x31f594
00334e30  00 00 50 e3                                      cmp r0, #0
00334e34  06 00 00 0a                                      beq #0x334e54
00334e38  40 00 97 e5                                      ldr r0, [r7, #0x40]
00334e3c  54 ee ff eb                                      bl #0x330794
00334e40  00 70 50 e2                                      subs r7, r0, #0
00334e44  02 00 00 0a                                      beq #0x334e54
00334e48  07 21 02 eb                                      bl #0x3bd26c
00334e4c  07 00 a0 e1                                      mov r0, r7
00334e50  82 1e 02 eb                                      bl #0x3bc860
00334e54  34 10 96 e5                                      ldr r1, [r6, #0x34]
00334e58  38 30 96 e5                                      ldr r3, [r6, #0x38]
00334e5c  03 30 61 e0                                      rsb r3, r1, r3
00334e60  c3 31 a0 e1                                      asr r3, r3, #3
00334e64  03 21 83 e0                                      add r2, r3, r3, lsl #2
00334e68  02 22 82 e0                                      add r2, r2, r2, lsl #4
00334e6c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00334e70  02 28 82 e0                                      add r2, r2, r2, lsl #16
00334e74  82 30 93 e0                                      adds r3, r3, r2, lsl #1
00334e78  e0 ff ff 0a                                      beq #0x334e00
00334e7c  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00334e80  03 00 52 e1                                      cmp r2, r3
00334e84  dd ff ff 2a                                      bhs #0x334e00
00334e88  18 30 a0 e3                                      mov r3, #0x18
00334e8c  93 12 22 e0                                      mla r2, r3, r2, r1
00334e90  06 00 a0 e1                                      mov r0, r6
00334e94  14 10 92 e5                                      ldr r1, [r2, #0x14]
00334e98  cb f5 ff eb                                      bl #0x3325cc
00334e9c  d7 ff ff ea                                      b #0x334e00
00334ea0  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00334ea4  0e 00 53 e3                                      cmp r3, #0xe
00334ea8  03 f1 8f 90                                      addls pc, pc, r3, lsl #2
00334eac  b3 02 00 ea                                      b #0x335980
00334eb0  af 02 00 ea                                      b #0x335974
00334eb4  a3 02 00 ea                                      b #0x335948
00334eb8  93 02 00 ea                                      b #0x33590c
00334ebc  6a 02 00 ea                                      b #0x33586c
00334ec0  5c 02 00 ea                                      b #0x335838
00334ec4  4c 02 00 ea                                      b #0x3357fc
00334ec8  3c 02 00 ea                                      b #0x3357c0
00334ecc  d3 ff ff ea                                      b #0x334e20
00334ed0  34 02 00 ea                                      b #0x3357a8
00334ed4  24 02 00 ea                                      b #0x33576c
00334ed8  17 02 00 ea                                      b #0x33573c
00334edc  11 02 00 ea                                      b #0x335728
00334ee0  02 02 00 ea                                      b #0x3356f0
00334ee4  bc 01 00 ea                                      b #0x3355dc
00334ee8  9b 01 00 ea                                      b #0x33555c
00334eec  fc 3b 9f e5                                      ldr r3, [pc, #0xbfc]
00334ef0  03 30 94 e7                                      ldr r3, [r4, r3]
00334ef4  40 00 93 e5                                      ldr r0, [r3, #0x40]
00334ef8  25 ee ff eb                                      bl #0x330794
00334efc  00 70 50 e2                                      subs r7, r0, #0
00334f00  be ff ff 0a                                      beq #0x334e00
00334f04  ec 3b 9f e5                                      ldr r3, [pc, #0xbec]
00334f08  0c 20 96 e5                                      ldr r2, [r6, #0xc]
00334f0c  03 30 94 e7                                      ldr r3, [r4, r3]
00334f10  00 30 93 e5                                      ldr r3, [r3]
00334f14  03 00 52 e1                                      cmp r2, r3
00334f18  b8 ff ff 2a                                      bhs #0x334e00
00334f1c  30 80 8d e2                                      add r8, sp, #0x30
00334f20  0c 80 48 e2                                      sub r8, r8, #0xc
00334f24  08 00 a0 e1                                      mov r0, r8
00334f28  b4 28 03 eb                                      bl #0x3ff200
00334f2c  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00334f30  00 60 a0 e3                                      mov r6, #0
00334f34  00 c0 e0 e3                                      mvn ip, #0
00334f38  06 20 a0 e1                                      mov r2, r6
00334f3c  06 30 a0 e1                                      mov r3, r6
00334f40  08 00 a0 e1                                      mov r0, r8
00334f44  00 c0 8d e5                                      str ip, [sp]
00334f48  04 60 8d e5                                      str r6, [sp, #4]
00334f4c  4a 3c 03 eb                                      bl #0x40407c
00334f50  08 00 a0 e1                                      mov r0, r8
00334f54  df 1f 87 e2                                      add r1, r7, #0x37c
00334f58  06 20 a0 e1                                      mov r2, r6
00334f5c  01 30 a0 e3                                      mov r3, #1
00334f60  c0 2a 03 eb                                      bl #0x3ffa68
00334f64  08 00 a0 e1                                      mov r0, r8
00334f68  3c 29 03 eb                                      bl #0x3ff460
00334f6c  a3 ff ff ea                                      b #0x334e00
00334f70  78 3b 9f e5                                      ldr r3, [pc, #0xb78]
00334f74  03 70 94 e7                                      ldr r7, [r4, r3]
00334f78  07 00 a0 e1                                      mov r0, r7
00334f7c  84 a9 ff eb                                      bl #0x31f594
00334f80  00 00 50 e3                                      cmp r0, #0
00334f84  c5 ff ff 0a                                      beq #0x334ea0
00334f88  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00334f8c  00 00 53 e3                                      cmp r3, #0
00334f90  6b 01 00 1a                                      bne #0x335544
00334f94  12 39 01 eb                                      bl #0x3833e4
00334f98  98 ff ff ea                                      b #0x334e00
00334f9c  40 30 96 e5                                      ldr r3, [r6, #0x40]
00334fa0  03 00 a0 e1                                      mov r0, r3
00334fa4  00 30 93 e5                                      ldr r3, [r3]
00334fa8  0f e0 a0 e1                                      mov lr, pc
00334fac  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00334fb0  38 3b 9f e5                                      ldr r3, [pc, #0xb38]
00334fb4  00 80 a0 e1                                      mov r8, r0
00334fb8  03 30 94 e7                                      ldr r3, [r4, r3]
00334fbc  40 00 93 e5                                      ldr r0, [r3, #0x40]
00334fc0  f3 ed ff eb                                      bl #0x330794
00334fc4  00 00 50 e3                                      cmp r0, #0
00334fc8  8c ff ff 0a                                      beq #0x334e00
00334fcc  d8 62 90 e5                                      ldr r6, [r0, #0x2d8]
00334fd0  00 00 56 e3                                      cmp r6, #0
00334fd4  00 70 a0 13                                      movne r7, #0
00334fd8  07 00 00 1a                                      bne #0x334ffc
00334fdc  87 ff ff ea                                      b #0x334e00
00334fe0  06 00 a0 e1                                      mov r0, r6
00334fe4  07 10 a0 e1                                      mov r1, r7
00334fe8  a9 ef 04 eb                                      bl #0x470e94
00334fec  08 00 50 e1                                      cmp r0, r8
00334ff0  8c 02 00 ca                                      bgt #0x335a28
00334ff4  08 80 60 e0                                      rsb r8, r0, r8
00334ff8  01 70 87 e2                                      add r7, r7, #1
00334ffc  06 00 a0 e1                                      mov r0, r6
00335000  a7 ef 04 eb                                      bl #0x470ea4
00335004  07 00 50 e1                                      cmp r0, r7
00335008  7c ff ff da                                      ble #0x334e00
0033500c  f3 ff ff ea                                      b #0x334fe0
00335010  e4 3a 9f e5                                      ldr r3, [pc, #0xae4]
00335014  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335018  03 70 94 e7                                      ldr r7, [r4, r3]
0033501c  07 00 a0 e1                                      mov r0, r7
00335020  f1 82 04 eb                                      bl #0x455bec
00335024  00 30 50 e2                                      subs r3, r0, #0
00335028  6c 02 00 0a                                      beq #0x3359e0
0033502c  07 00 a0 e1                                      mov r0, r7
00335030  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335034  00 20 a0 e3                                      mov r2, #0
00335038  de 82 04 eb                                      bl #0x455bb8
0033503c  6f ff ff ea                                      b #0x334e00
00335040  91 de 03 eb                                      bl #0x42ca8c
00335044  0c 80 96 e5                                      ldr r8, [r6, #0xc]
00335048  00 70 a0 e1                                      mov r7, r0
0033504c  b9 de 03 eb                                      bl #0x42cb38
00335050  00 00 58 e1                                      cmp r8, r0
00335054  66 02 00 3a                                      blo #0x3359f4
00335058  07 00 a0 e1                                      mov r0, r7
0033505c  74 e0 03 eb                                      bl #0x42d234
00335060  64 ff ff ea                                      b #0x334df8
00335064  84 3a 9f e5                                      ldr r3, [pc, #0xa84]
00335068  03 30 94 e7                                      ldr r3, [r4, r3]
0033506c  40 00 93 e5                                      ldr r0, [r3, #0x40]
00335070  c7 ed ff eb                                      bl #0x330794
00335074  00 00 50 e3                                      cmp r0, #0
00335078  60 ff ff 0a                                      beq #0x334e00
0033507c  56 79 01 eb                                      bl #0x3935dc
00335080  78 3a 9f e5                                      ldr r3, [pc, #0xa78]
00335084  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335088  08 e0 90 e5                                      ldr lr, [r0, #8]
0033508c  03 20 94 e7                                      ldr r2, [r4, r3]
00335090  00 70 90 e5                                      ldr r7, [r0]
00335094  04 60 90 e5                                      ldr r6, [r0, #4]
00335098  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
0033509c  20 00 92 e5                                      ldr r0, [r2, #0x20]
003350a0  00 30 63 e0                                      rsb r3, r3, r0
003350a4  c3 31 a0 e1                                      asr r3, r3, #3
003350a8  03 01 83 e0                                      add r0, r3, r3, lsl #2
003350ac  00 02 80 e0                                      add r0, r0, r0, lsl #4
003350b0  00 04 80 e0                                      add r0, r0, r0, lsl #8
003350b4  00 08 80 e0                                      add r0, r0, r0, lsl #16
003350b8  80 30 83 e0                                      add r3, r3, r0, lsl #1
003350bc  03 00 51 e1                                      cmp r1, r3
003350c0  b3 ff ff 2a                                      bhs #0x334f94
003350c4  00 c0 a0 e3                                      mov ip, #0
003350c8  02 00 a0 e1                                      mov r0, r2
003350cc  60 20 8d e2                                      add r2, sp, #0x60
003350d0  04 20 42 e2                                      sub r2, r2, #4
003350d4  0c 30 a0 e1                                      mov r3, ip
003350d8  64 e0 8d e5                                      str lr, [sp, #0x64]
003350dc  00 c0 8d e5                                      str ip, [sp]
003350e0  5c 70 8d e5                                      str r7, [sp, #0x5c]
003350e4  60 60 8d e5                                      str r6, [sp, #0x60]
003350e8  09 83 05 eb                                      bl #0x495d14
003350ec  bc 38 01 eb                                      bl #0x3833e4
003350f0  42 ff ff ea                                      b #0x334e00
003350f4  f4 39 9f e5                                      ldr r3, [pc, #0x9f4]
003350f8  03 30 94 e7                                      ldr r3, [r4, r3]
003350fc  40 00 93 e5                                      ldr r0, [r3, #0x40]
00335100  a3 ed ff eb                                      bl #0x330794
00335104  00 00 50 e3                                      cmp r0, #0
00335108  3c ff ff 0a                                      beq #0x334e00
0033510c  32 79 01 eb                                      bl #0x3935dc
00335110  e8 39 9f e5                                      ldr r3, [pc, #0x9e8]
00335114  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335118  08 c0 90 e5                                      ldr ip, [r0, #8]
0033511c  03 70 94 e7                                      ldr r7, [r4, r3]
00335120  00 60 90 e5                                      ldr r6, [r0]
00335124  04 e0 90 e5                                      ldr lr, [r0, #4]
00335128  2c 20 97 e5                                      ldr r2, [r7, #0x2c]
0033512c  28 30 97 e5                                      ldr r3, [r7, #0x28]
00335130  02 30 63 e0                                      rsb r3, r3, r2
00335134  c3 31 a0 e1                                      asr r3, r3, #3
00335138  03 21 83 e0                                      add r2, r3, r3, lsl #2
0033513c  02 22 82 e0                                      add r2, r2, r2, lsl #4
00335140  02 24 82 e0                                      add r2, r2, r2, lsl #8
00335144  02 28 82 e0                                      add r2, r2, r2, lsl #16
00335148  82 30 83 e0                                      add r3, r3, r2, lsl #1
0033514c  03 00 51 e1                                      cmp r1, r3
00335150  8f ff ff 2a                                      bhs #0x334f94
00335154  05 2c 8d e2                                      add r2, sp, #0x500
00335158  90 c4 22 e5                                      str ip, [r2, #-0x490]!
0033515c  00 c0 a0 e3                                      mov ip, #0
00335160  07 00 a0 e1                                      mov r0, r7
00335164  08 20 42 e2                                      sub r2, r2, #8
00335168  0c 30 a0 e1                                      mov r3, ip
0033516c  6c e0 8d e5                                      str lr, [sp, #0x6c]
00335170  00 c0 8d e5                                      str ip, [sp]
00335174  68 60 8d e5                                      str r6, [sp, #0x68]
00335178  75 82 05 eb                                      bl #0x495b54
0033517c  98 38 01 eb                                      bl #0x3833e4
00335180  1e ff ff ea                                      b #0x334e00
00335184  64 39 9f e5                                      ldr r3, [pc, #0x964]
00335188  03 70 94 e7                                      ldr r7, [r4, r3]
0033518c  07 00 a0 e1                                      mov r0, r7
00335190  ff a8 ff eb                                      bl #0x31f594
00335194  00 00 50 e3                                      cmp r0, #0
00335198  18 ff ff 0a                                      beq #0x334e00
0033519c  40 00 97 e5                                      ldr r0, [r7, #0x40]
003351a0  7b ed ff eb                                      bl #0x330794
003351a4  00 00 50 e3                                      cmp r0, #0
003351a8  14 ff ff 0a                                      beq #0x334e00
003351ac  50 39 9f e5                                      ldr r3, [pc, #0x950]
003351b0  0c 20 96 e5                                      ldr r2, [r6, #0xc]
003351b4  49 0e 80 e2                                      add r0, r0, #0x490
003351b8  03 30 94 e7                                      ldr r3, [r4, r3]
003351bc  0c 00 80 e2                                      add r0, r0, #0xc
003351c0  01 10 a0 e3                                      mov r1, #1
003351c4  00 30 93 e5                                      ldr r3, [r3]
003351c8  20 30 93 e5                                      ldr r3, [r3, #0x20]
003351cc  08 20 83 e5                                      str r2, [r3, #8]
003351d0  b6 56 02 eb                                      bl #0x3cacb0
003351d4  09 ff ff ea                                      b #0x334e00
003351d8  10 39 9f e5                                      ldr r3, [pc, #0x910]
003351dc  03 30 94 e7                                      ldr r3, [r4, r3]
003351e0  40 00 93 e5                                      ldr r0, [r3, #0x40]
003351e4  6a ed ff eb                                      bl #0x330794
003351e8  00 00 50 e3                                      cmp r0, #0
003351ec  03 ff ff 0a                                      beq #0x334e00
003351f0  02 00 58 e3                                      cmp r8, #2
003351f4  27 02 00 0a                                      beq #0x335a98
003351f8  03 00 58 e3                                      cmp r8, #3
003351fc  20 02 00 0a                                      beq #0x335a84
00335200  01 00 58 e3                                      cmp r8, #1
00335204  fb fe ff 1a                                      bne #0x334df8
00335208  0c 10 96 e5                                      ldr r1, [r6, #0xc]
0033520c  00 20 a0 e3                                      mov r2, #0
00335210  00 30 e0 e3                                      mvn r3, #0
00335214  e1 1a 02 eb                                      bl #0x3bbda0
00335218  f6 fe ff ea                                      b #0x334df8
0033521c  cc 38 9f e5                                      ldr r3, [pc, #0x8cc]
00335220  03 30 94 e7                                      ldr r3, [r4, r3]
00335224  40 00 93 e5                                      ldr r0, [r3, #0x40]
00335228  59 ed ff eb                                      bl #0x330794
0033522c  00 00 50 e3                                      cmp r0, #0
00335230  f2 fe ff 0a                                      beq #0x334e00
00335234  01 00 58 e3                                      cmp r8, #1
00335238  05 02 00 0a                                      beq #0x335a54
0033523c  02 00 58 e3                                      cmp r8, #2
00335240  ec fe ff 1a                                      bne #0x334df8
00335244  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335248  01 20 a0 e3                                      mov r2, #1
0033524c  00 30 e0 e3                                      mvn r3, #0
00335250  93 1a 02 eb                                      bl #0x3bbca4
00335254  e7 fe ff ea                                      b #0x334df8
00335258  a7 d4 03 eb                                      bl #0x42a4fc
0033525c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00335260  15 00 53 e3                                      cmp r3, #0x15
00335264  e3 fe ff 8a                                      bhi #0x334df8
00335268  03 30 80 e0                                      add r3, r0, r3
0033526c  e0 20 d3 e5                                      ldrb r2, [r3, #0xe0]
00335270  01 20 22 e2                                      eor r2, r2, #1
00335274  e0 20 c3 e5                                      strb r2, [r3, #0xe0]
00335278  de d3 03 eb                                      bl #0x42a1f8
0033527c  dd fe ff ea                                      b #0x334df8
00335280  40 80 96 e5                                      ldr r8, [r6, #0x40]
00335284  00 30 98 e5                                      ldr r3, [r8]
00335288  08 00 a0 e1                                      mov r0, r8
0033528c  80 70 93 e5                                      ldr r7, [r3, #0x80]
00335290  0f e0 a0 e1                                      mov lr, pc
00335294  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00335298  00 10 a0 e1                                      mov r1, r0
0033529c  08 00 a0 e1                                      mov r0, r8
003352a0  37 ff 2f e1                                      blx r7
003352a4  00 00 50 e3                                      cmp r0, #0
003352a8  d4 fe ff 0a                                      beq #0x334e00
003352ac  23 ed ff eb                                      bl #0x330740
003352b0  90 90 8d e2                                      add sb, sp, #0x90
003352b4  12 7d 8d e2                                      add r7, sp, #0x480
003352b8  0c 90 49 e2                                      sub sb, sb, #0xc
003352bc  04 70 87 e2                                      add r7, r7, #4
003352c0  80 a0 8d e2                                      add sl, sp, #0x80
003352c4  00 30 a0 e1                                      mov r3, r0
003352c8  09 10 a0 e1                                      mov r1, sb
003352cc  0c 20 4a e2                                      sub r2, sl, #0xc
003352d0  07 00 a0 e1                                      mov r0, r7
003352d4  18 30 8d e5                                      str r3, [sp, #0x18]
003352d8  83 7b ff eb                                      bl #0x3140ec
003352dc  17 ed ff eb                                      bl #0x330740
003352e0  49 8e 8d e2                                      add r8, sp, #0x490
003352e4  0c 80 88 e2                                      add r8, r8, #0xc
003352e8  08 20 4a e2                                      sub r2, sl, #8
003352ec  00 b0 a0 e1                                      mov fp, r0
003352f0  09 10 a0 e1                                      mov r1, sb
003352f4  08 00 a0 e1                                      mov r0, r8
003352f8  7b 7b ff eb                                      bl #0x3140ec
003352fc  08 10 a0 e1                                      mov r1, r8
00335300  0b 00 a0 e1                                      mov r0, fp
00335304  ef 0a 00 eb                                      bl #0x337ec8
00335308  18 30 9d e5                                      ldr r3, [sp, #0x18]
0033530c  01 20 20 e2                                      eor r2, r0, #1
00335310  72 20 ef e6                                      uxtb r2, r2
00335314  03 00 a0 e1                                      mov r0, r3
00335318  07 10 a0 e1                                      mov r1, r7
0033531c  38 08 00 eb                                      bl #0x337404
00335320  08 00 a0 e1                                      mov r0, r8
00335324  a0 79 ff eb                                      bl #0x3139ac
00335328  07 00 a0 e1                                      mov r0, r7
0033532c  9e 79 ff eb                                      bl #0x3139ac
00335330  b0 fe ff ea                                      b #0x334df8
00335334  40 80 96 e5                                      ldr r8, [r6, #0x40]
00335338  00 30 98 e5                                      ldr r3, [r8]
0033533c  08 00 a0 e1                                      mov r0, r8
00335340  80 70 93 e5                                      ldr r7, [r3, #0x80]
00335344  0f e0 a0 e1                                      mov lr, pc
00335348  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0033534c  00 10 a0 e1                                      mov r1, r0
00335350  08 00 a0 e1                                      mov r0, r8
00335354  37 ff 2f e1                                      blx r7
00335358  00 00 50 e3                                      cmp r0, #0
0033535c  a7 fe ff 0a                                      beq #0x334e00
00335360  f6 ec ff eb                                      bl #0x330740
00335364  90 90 8d e2                                      add sb, sp, #0x90
00335368  4b 7e 8d e2                                      add r7, sp, #0x4b0
0033536c  0c 90 49 e2                                      sub sb, sb, #0xc
00335370  04 70 87 e2                                      add r7, r7, #4
00335374  80 a0 8d e2                                      add sl, sp, #0x80
00335378  00 30 a0 e1                                      mov r3, r0
0033537c  09 10 a0 e1                                      mov r1, sb
00335380  04 20 4a e2                                      sub r2, sl, #4
00335384  07 00 a0 e1                                      mov r0, r7
00335388  18 30 8d e5                                      str r3, [sp, #0x18]
0033538c  56 7b ff eb                                      bl #0x3140ec
00335390  ea ec ff eb                                      bl #0x330740
00335394  13 8d 8d e2                                      add r8, sp, #0x4c0
00335398  0c 80 88 e2                                      add r8, r8, #0xc
0033539c  0a 20 a0 e1                                      mov r2, sl
003353a0  00 b0 a0 e1                                      mov fp, r0
003353a4  09 10 a0 e1                                      mov r1, sb
003353a8  08 00 a0 e1                                      mov r0, r8
003353ac  4e 7b ff eb                                      bl #0x3140ec
003353b0  08 10 a0 e1                                      mov r1, r8
003353b4  0b 00 a0 e1                                      mov r0, fp
003353b8  b2 09 00 eb                                      bl #0x337a88
003353bc  18 30 9d e5                                      ldr r3, [sp, #0x18]
003353c0  01 20 20 e2                                      eor r2, r0, #1
003353c4  72 20 ef e6                                      uxtb r2, r2
003353c8  03 00 a0 e1                                      mov r0, r3
003353cc  07 10 a0 e1                                      mov r1, r7
003353d0  81 0a 00 eb                                      bl #0x337ddc
003353d4  d1 ff ff ea                                      b #0x335320
003353d8  ed 20 13 eb                                      bl #0x7fd794
003353dc  05 30 d0 e5                                      ldrb r3, [r0, #5]
003353e0  00 00 53 e3                                      cmp r3, #0
003353e4  9f 01 00 1a                                      bne #0x335a68
003353e8  14 30 96 e5                                      ldr r3, [r6, #0x14]
003353ec  10 00 96 e5                                      ldr r0, [r6, #0x10]
003353f0  0c 10 96 e5                                      ldr r1, [r6, #0xc]
003353f4  03 30 60 e0                                      rsb r3, r0, r3
003353f8  c3 31 a0 e1                                      asr r3, r3, #3
003353fc  03 21 83 e0                                      add r2, r3, r3, lsl #2
00335400  02 22 82 e0                                      add r2, r2, r2, lsl #4
00335404  02 24 82 e0                                      add r2, r2, r2, lsl #8
00335408  02 28 82 e0                                      add r2, r2, r2, lsl #16
0033540c  82 30 83 e0                                      add r3, r3, r2, lsl #1
00335410  03 00 51 e1                                      cmp r1, r3
00335414  79 fe ff 2a                                      bhs #0x334e00
00335418  18 30 a0 e3                                      mov r3, #0x18
0033541c  93 01 21 e0                                      mla r1, r3, r1, r0
00335420  14 00 91 e5                                      ldr r0, [r1, #0x14]
00335424  dc f0 ff eb                                      bl #0x33179c
00335428  74 fe ff ea                                      b #0x334e00
0033542c  a0 20 96 e5                                      ldr r2, [r6, #0xa0]
00335430  a4 30 96 e5                                      ldr r3, [r6, #0xa4]
00335434  03 00 52 e1                                      cmp r2, r3
00335438  a0 01 00 0a                                      beq #0x335ac0
0033543c  28 00 96 e5                                      ldr r0, [r6, #0x28]
00335440  2c 20 96 e5                                      ldr r2, [r6, #0x2c]
00335444  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00335448  02 20 60 e0                                      rsb r2, r0, r2
0033544c  c2 21 a0 e1                                      asr r2, r2, #3
00335450  02 11 82 e0                                      add r1, r2, r2, lsl #2
00335454  01 12 81 e0                                      add r1, r1, r1, lsl #4
00335458  01 14 81 e0                                      add r1, r1, r1, lsl #8
0033545c  01 18 81 e0                                      add r1, r1, r1, lsl #16
00335460  81 20 82 e0                                      add r2, r2, r1, lsl #1
00335464  02 00 53 e1                                      cmp r3, r2
00335468  64 fe ff 2a                                      bhs #0x334e00
0033546c  18 20 a0 e3                                      mov r2, #0x18
00335470  92 03 23 e0                                      mla r3, r2, r3, r0
00335474  90 80 8d e2                                      add r8, sp, #0x90
00335478  0c 80 48 e2                                      sub r8, r8, #0xc
0033547c  08 00 a0 e1                                      mov r0, r8
00335480  10 10 a0 e3                                      mov r1, #0x10
00335484  14 a0 93 e5                                      ldr sl, [r3, #0x14]
00335488  94 80 8d e5                                      str r8, [sp, #0x94]
0033548c  98 80 8d e5                                      str r8, [sp, #0x98]
00335490  79 70 ff eb                                      bl #0x31167c
00335494  94 30 9d e5                                      ldr r3, [sp, #0x94]
00335498  68 26 9f e5                                      ldr r2, [pc, #0x668]
0033549c  4e 9e 8d e2                                      add sb, sp, #0x4e0
003354a0  00 70 a0 e3                                      mov r7, #0
003354a4  04 90 89 e2                                      add sb, sb, #4
003354a8  00 70 c3 e5                                      strb r7, [r3]
003354ac  90 10 86 e2                                      add r1, r6, #0x90
003354b0  09 00 a0 e1                                      mov r0, sb
003354b4  02 20 8f e0                                      add r2, pc, r2
003354b8  30 66 9f e5                                      ldr r6, [pc, #0x630]
003354bc  02 f9 ff eb                                      bl #0x3338cc
003354c0  f4 24 9d e5                                      ldr r2, [sp, #0x4f4]
003354c4  f8 14 9d e5                                      ldr r1, [sp, #0x4f8]
003354c8  08 00 a0 e1                                      mov r0, r8
003354cc  43 6d ff eb                                      bl #0x3109e0
003354d0  09 00 a0 e1                                      mov r0, sb
003354d4  34 79 ff eb                                      bl #0x3139ac
003354d8  06 60 94 e7                                      ldr r6, [r4, r6]
003354dc  98 10 9d e5                                      ldr r1, [sp, #0x98]
003354e0  d4 00 86 e2                                      add r0, r6, #0xd4
003354e4  a0 ec ff eb                                      bl #0x33076c
003354e8  0a 00 a0 e1                                      mov r0, sl
003354ec  58 62 ff eb                                      bl #0x30de54
003354f0  0a 10 a0 e1                                      mov r1, sl
003354f4  00 20 8a e0                                      add r2, sl, r0
003354f8  08 00 a0 e1                                      mov r0, r8
003354fc  c0 6c ff eb                                      bl #0x310804
00335500  98 10 9d e5                                      ldr r1, [sp, #0x98]
00335504  bc 00 86 e2                                      add r0, r6, #0xbc
00335508  97 ec ff eb                                      bl #0x33076c
0033550c  d0 10 96 e5                                      ldr r1, [r6, #0xd0]
00335510  06 00 a0 e1                                      mov r0, r6
00335514  01 c0 a0 e3                                      mov ip, #1
00335518  07 20 a0 e1                                      mov r2, r7
0033551c  07 30 a0 e1                                      mov r3, r7
00335520  80 10 8d e8                                      stm sp, {r7, ip}
00335524  08 70 8d e5                                      str r7, [sp, #8]
00335528  0c 70 8d e5                                      str r7, [sp, #0xc]
0033552c  10 70 8d e5                                      str r7, [sp, #0x10]
00335530  14 70 8d e5                                      str r7, [sp, #0x14]
00335534  23 da ff eb                                      bl #0x32bdc8
00335538  08 00 a0 e1                                      mov r0, r8
0033553c  1a 79 ff eb                                      bl #0x3139ac
00335540  2e fe ff ea                                      b #0x334e00
00335544  07 00 a0 e1                                      mov r0, r7
00335548  11 a8 ff eb                                      bl #0x31f594
0033554c  0c 30 96 e5                                      ldr r3, [r6, #0xc]
00335550  e4 30 80 e5                                      str r3, [r0, #0xe4]
00335554  a2 37 01 eb                                      bl #0x3833e4
00335558  28 fe ff ea                                      b #0x334e00
0033555c  8c 35 9f e5                                      ldr r3, [pc, #0x58c]
00335560  03 70 94 e7                                      ldr r7, [r4, r3]
00335564  07 00 a0 e1                                      mov r0, r7
00335568  09 a8 ff eb                                      bl #0x31f594
0033556c  00 00 50 e3                                      cmp r0, #0
00335570  37 fe ff 0a                                      beq #0x334e54
00335574  40 00 97 e5                                      ldr r0, [r7, #0x40]
00335578  85 ec ff eb                                      bl #0x330794
0033557c  00 80 50 e2                                      subs r8, r0, #0
00335580  33 fe ff 0a                                      beq #0x334e54
00335584  00 10 e0 e3                                      mvn r1, #0
00335588  7b 1b 02 eb                                      bl #0x3bc37c
0033558c  00 a0 50 e2                                      subs sl, r0, #0
00335590  00 70 a0 13                                      movne r7, #0
00335594  05 00 00 1a                                      bne #0x3355b0
00335598  2d fe ff ea                                      b #0x334e54
0033559c  07 10 a0 e1                                      mov r1, r7
003355a0  00 20 e0 e3                                      mvn r2, #0
003355a4  08 00 a0 e1                                      mov r0, r8
003355a8  52 1b 02 eb                                      bl #0x3bc2f8
003355ac  e9 2e 05 eb                                      bl #0x481158
003355b0  08 00 a0 e1                                      mov r0, r8
003355b4  07 10 a0 e1                                      mov r1, r7
003355b8  00 20 e0 e3                                      mvn r2, #0
003355bc  4d 1b 02 eb                                      bl #0x3bc2f8
003355c0  00 30 90 e5                                      ldr r3, [r0]
003355c4  0c 00 53 e3                                      cmp r3, #0xc
003355c8  f3 ff ff da                                      ble #0x33559c
003355cc  01 70 87 e2                                      add r7, r7, #1
003355d0  0a 00 57 e1                                      cmp r7, sl
003355d4  f5 ff ff 1a                                      bne #0x3355b0
003355d8  1d fe ff ea                                      b #0x334e54
003355dc  0c 35 9f e5                                      ldr r3, [pc, #0x50c]
003355e0  03 70 94 e7                                      ldr r7, [r4, r3]
003355e4  07 00 a0 e1                                      mov r0, r7
003355e8  e9 a7 ff eb                                      bl #0x31f594
003355ec  00 00 50 e3                                      cmp r0, #0
003355f0  17 fe ff 0a                                      beq #0x334e54
003355f4  40 00 97 e5                                      ldr r0, [r7, #0x40]
003355f8  65 ec ff eb                                      bl #0x330794
003355fc  00 80 50 e2                                      subs r8, r0, #0
00335600  13 fe ff 0a                                      beq #0x334e54
00335604  00 70 a0 e3                                      mov r7, #0
00335608  01 70 87 e2                                      add r7, r7, #1
0033560c  08 00 a0 e1                                      mov r0, r8
00335610  00 10 a0 e3                                      mov r1, #0
00335614  5b 25 02 eb                                      bl #0x3beb88
00335618  32 00 57 e3                                      cmp r7, #0x32
0033561c  f9 ff ff 1a                                      bne #0x335608
00335620  c8 33 01 e3                                      movw r3, #0x13c8
00335624  f3 30 98 e1                                      ldrsh r3, [r8, r3]
00335628  49 0f 53 e3                                      cmp r3, #0x124
0033562c  28 01 00 ca                                      bgt #0x335ad4
00335630  22 21 00 e3                                      movw r2, #0x122
00335634  02 00 53 e1                                      cmp r3, r2
00335638  0f 00 00 aa                                      bge #0x33567c
0033563c  41 3f 43 e2                                      sub r3, r3, #0x104
00335640  03 30 43 e2                                      sub r3, r3, #3
00335644  02 00 53 e3                                      cmp r3, #2
00335648  11 00 00 8a                                      bhi #0x335694
0033564c  00 70 a0 e3                                      mov r7, #0
00335650  01 70 87 e2                                      add r7, r7, #1
00335654  08 00 a0 e1                                      mov r0, r8
00335658  6c 20 02 eb                                      bl #0x3bd810
0033565c  64 00 57 e3                                      cmp r7, #0x64
00335660  fa ff ff 1a                                      bne #0x335650
00335664  00 70 a0 e3                                      mov r7, #0
00335668  01 70 87 e2                                      add r7, r7, #1
0033566c  08 00 a0 e1                                      mov r0, r8
00335670  24 20 02 eb                                      bl #0x3bd708
00335674  64 00 57 e3                                      cmp r7, #0x64
00335678  fa ff ff 1a                                      bne #0x335668
0033567c  00 70 a0 e3                                      mov r7, #0
00335680  01 70 87 e2                                      add r7, r7, #1
00335684  08 00 a0 e1                                      mov r0, r8
00335688  9a 1f 02 eb                                      bl #0x3bd4f8
0033568c  64 00 57 e3                                      cmp r7, #0x64
00335690  fa ff ff 1a                                      bne #0x335680
00335694  df 7f 88 e2                                      add r7, r8, #0x37c
00335698  08 00 a0 e1                                      mov r0, r8
0033569c  01 a0 a0 e3                                      mov sl, #1
003356a0  a9 e4 01 eb                                      bl #0x3ae94c
003356a4  07 00 a0 e1                                      mov r0, r7
003356a8  ab a3 c8 e5                                      strb sl, [r8, #0x3ab]
003356ac  e9 3b 03 eb                                      bl #0x404658
003356b0  00 30 98 e5                                      ldr r3, [r8]
003356b4  08 00 a0 e1                                      mov r0, r8
003356b8  0f e0 a0 e1                                      mov lr, pc
003356bc  38 f1 93 e5                                      ldr pc, [r3, #0x138]
003356c0  a8 13 d8 e5                                      ldrb r1, [r8, #0x3a8]
003356c4  07 00 a0 e1                                      mov r0, r7
003356c8  71 10 af e6                                      sxtb r1, r1
003356cc  5b 29 03 eb                                      bl #0x3ffc40
003356d0  02 16 a0 e3                                      mov r1, #0x200000
003356d4  07 00 a0 e1                                      mov r0, r7
003356d8  a1 22 03 eb                                      bl #0x3fe164
003356dc  08 00 a0 e1                                      mov r0, r8
003356e0  e2 18 02 eb                                      bl #0x3bba70
003356e4  83 03 04 eb                                      bl #0x4364f8
003356e8  2c a1 c0 e5                                      strb sl, [r0, #0x12c]
003356ec  d8 fd ff ea                                      b #0x334e54
003356f0  f8 33 9f e5                                      ldr r3, [pc, #0x3f8]
003356f4  03 70 94 e7                                      ldr r7, [r4, r3]
003356f8  07 00 a0 e1                                      mov r0, r7
003356fc  a4 a7 ff eb                                      bl #0x31f594
00335700  00 00 50 e3                                      cmp r0, #0
00335704  d2 fd ff 0a                                      beq #0x334e54
00335708  40 00 97 e5                                      ldr r0, [r7, #0x40]
0033570c  20 ec ff eb                                      bl #0x330794
00335710  00 00 50 e3                                      cmp r0, #0
00335714  ce fd ff 0a                                      beq #0x334e54
00335718  df 0f 80 e2                                      add r0, r0, #0x37c
0033571c  02 16 a0 e3                                      mov r1, #0x200000
00335720  8f 22 03 eb                                      bl #0x3fe164
00335724  ca fd ff ea                                      b #0x334e54
00335728  dc 33 9f e5                                      ldr r3, [pc, #0x3dc]
0033572c  03 30 94 e7                                      ldr r3, [r4, r3]
00335730  00 00 93 e5                                      ldr r0, [r3]
00335734  63 2f 01 eb                                      bl #0x3814c8
00335738  c5 fd ff ea                                      b #0x334e54
0033573c  ac 33 9f e5                                      ldr r3, [pc, #0x3ac]
00335740  03 70 94 e7                                      ldr r7, [r4, r3]
00335744  07 00 a0 e1                                      mov r0, r7
00335748  91 a7 ff eb                                      bl #0x31f594
0033574c  00 00 50 e3                                      cmp r0, #0
00335750  bf fd ff 0a                                      beq #0x334e54
00335754  40 00 97 e5                                      ldr r0, [r7, #0x40]
00335758  0d ec ff eb                                      bl #0x330794
0033575c  00 00 50 e3                                      cmp r0, #0
00335760  bb fd ff 0a                                      beq #0x334e54
00335764  78 e4 01 eb                                      bl #0x3ae94c
00335768  b9 fd ff ea                                      b #0x334e54
0033576c  7c 33 9f e5                                      ldr r3, [pc, #0x37c]
00335770  03 70 94 e7                                      ldr r7, [r4, r3]
00335774  07 00 a0 e1                                      mov r0, r7
00335778  85 a7 ff eb                                      bl #0x31f594
0033577c  00 00 50 e3                                      cmp r0, #0
00335780  b3 fd ff 0a                                      beq #0x334e54
00335784  40 00 97 e5                                      ldr r0, [r7, #0x40]
00335788  01 ec ff eb                                      bl #0x330794
0033578c  00 00 50 e3                                      cmp r0, #0
00335790  af fd ff 0a                                      beq #0x334e54
00335794  b5 18 02 eb                                      bl #0x3bba70
00335798  56 03 04 eb                                      bl #0x4364f8
0033579c  01 30 a0 e3                                      mov r3, #1
003357a0  2c 31 c0 e5                                      strb r3, [r0, #0x12c]
003357a4  aa fd ff ea                                      b #0x334e54
003357a8  40 33 9f e5                                      ldr r3, [pc, #0x340]
003357ac  03 00 94 e7                                      ldr r0, [r4, r3]
003357b0  77 a7 ff eb                                      bl #0x31f594
003357b4  00 10 a0 e3                                      mov r1, #0
003357b8  77 eb 02 eb                                      bl #0x3f059c
003357bc  a4 fd ff ea                                      b #0x334e54
003357c0  28 33 9f e5                                      ldr r3, [pc, #0x328]
003357c4  03 70 94 e7                                      ldr r7, [r4, r3]
003357c8  07 00 a0 e1                                      mov r0, r7
003357cc  70 a7 ff eb                                      bl #0x31f594
003357d0  00 00 50 e3                                      cmp r0, #0
003357d4  9e fd ff 0a                                      beq #0x334e54
003357d8  40 00 97 e5                                      ldr r0, [r7, #0x40]
003357dc  ec eb ff eb                                      bl #0x330794
003357e0  00 70 50 e2                                      subs r7, r0, #0
003357e4  9a fd ff 0a                                      beq #0x334e54
003357e8  02 10 a0 e3                                      mov r1, #2
003357ec  4f 18 02 eb                                      bl #0x3bb930
003357f0  07 00 a0 e1                                      mov r0, r7
003357f4  2b 1b 02 eb                                      bl #0x3bc4a8
003357f8  95 fd ff ea                                      b #0x334e54
003357fc  ec 32 9f e5                                      ldr r3, [pc, #0x2ec]
00335800  03 70 94 e7                                      ldr r7, [r4, r3]
00335804  07 00 a0 e1                                      mov r0, r7
00335808  61 a7 ff eb                                      bl #0x31f594
0033580c  00 00 50 e3                                      cmp r0, #0
00335810  8f fd ff 0a                                      beq #0x334e54
00335814  40 00 97 e5                                      ldr r0, [r7, #0x40]
00335818  dd eb ff eb                                      bl #0x330794
0033581c  00 00 50 e3                                      cmp r0, #0
00335820  8b fd ff 0a                                      beq #0x334e54
00335824  f0 34 01 e3                                      movw r3, #0x14f0
00335828  03 20 d0 e7                                      ldrb r2, [r0, r3]
0033582c  01 20 22 e2                                      eor r2, r2, #1
00335830  03 20 c0 e7                                      strb r2, [r0, r3]
00335834  86 fd ff ea                                      b #0x334e54
00335838  b0 32 9f e5                                      ldr r3, [pc, #0x2b0]
0033583c  03 70 94 e7                                      ldr r7, [r4, r3]
00335840  07 00 a0 e1                                      mov r0, r7
00335844  52 a7 ff eb                                      bl #0x31f594
00335848  00 00 50 e3                                      cmp r0, #0
0033584c  80 fd ff 0a                                      beq #0x334e54
00335850  40 00 97 e5                                      ldr r0, [r7, #0x40]
00335854  ce eb ff eb                                      bl #0x330794
00335858  00 00 50 e3                                      cmp r0, #0
0033585c  7c fd ff 0a                                      beq #0x334e54
00335860  00 10 a0 e3                                      mov r1, #0
00335864  c7 24 02 eb                                      bl #0x3beb88
00335868  79 fd ff ea                                      b #0x334e54
0033586c  7c 32 9f e5                                      ldr r3, [pc, #0x27c]
00335870  03 70 94 e7                                      ldr r7, [r4, r3]
00335874  07 00 a0 e1                                      mov r0, r7
00335878  45 a7 ff eb                                      bl #0x31f594
0033587c  00 00 50 e3                                      cmp r0, #0
00335880  73 fd ff 0a                                      beq #0x334e54
00335884  40 00 97 e5                                      ldr r0, [r7, #0x40]
00335888  c1 eb ff eb                                      bl #0x330794
0033588c  00 00 50 e3                                      cmp r0, #0
00335890  6f fd ff 0a                                      beq #0x334e54
00335894  38 80 97 e5                                      ldr r8, [r7, #0x38]
00335898  df 0f 80 e2                                      add r0, r0, #0x37c
0033589c  1c 00 8d e5                                      str r0, [sp, #0x1c]
003358a0  60 70 b8 e5                                      ldr r7, [r8, #0x60]!
003358a4  4c b2 9f e5                                      ldr fp, [pc, #0x24c]
003358a8  30 a0 8d e2                                      add sl, sp, #0x30
003358ac  0c a0 4a e2                                      sub sl, sl, #0xc
003358b0  00 90 a0 e3                                      mov sb, #0
003358b4  08 00 57 e1                                      cmp r7, r8
003358b8  65 fd ff 0a                                      beq #0x334e54
003358bc  08 30 97 e5                                      ldr r3, [r7, #8]
003358c0  03 00 a0 e1                                      mov r0, r3
003358c4  18 30 8d e5                                      str r3, [sp, #0x18]
003358c8  e5 b5 01 eb                                      bl #0x3a3064
003358cc  00 00 50 e3                                      cmp r0, #0
003358d0  18 30 9d e5                                      ldr r3, [sp, #0x18]
003358d4  0a 00 00 0a                                      beq #0x335904
003358d8  8a 20 d3 e5                                      ldrb r2, [r3, #0x8a]
003358dc  00 00 52 e3                                      cmp r2, #0
003358e0  07 00 00 0a                                      beq #0x335904
003358e4  03 00 a0 e1                                      mov r0, r3
003358e8  b7 b5 01 eb                                      bl #0x3a2fcc
003358ec  00 10 50 e2                                      subs r1, r0, #0
003358f0  03 00 00 ba                                      blt #0x335904
003358f4  0b 30 94 e7                                      ldr r3, [r4, fp]
003358f8  00 30 93 e5                                      ldr r3, [r3]
003358fc  03 00 51 e1                                      cmp r1, r3
00335900  22 00 00 3a                                      blo #0x335990
00335904  00 70 97 e5                                      ldr r7, [r7]
00335908  e9 ff ff ea                                      b #0x3358b4
0033590c  dc 31 9f e5                                      ldr r3, [pc, #0x1dc]
00335910  03 30 94 e7                                      ldr r3, [r4, r3]
00335914  40 00 93 e5                                      ldr r0, [r3, #0x40]
00335918  9d eb ff eb                                      bl #0x330794
0033591c  00 70 50 e2                                      subs r7, r0, #0
00335920  4b fd ff 0a                                      beq #0x334e54
00335924  df 8f 87 e2                                      add r8, r7, #0x37c
00335928  08 00 a0 e1                                      mov r0, r8
0033592c  00 10 a0 e3                                      mov r1, #0
00335930  61 23 03 eb                                      bl #0x3fe6bc
00335934  a8 13 d7 e5                                      ldrb r1, [r7, #0x3a8]
00335938  08 00 a0 e1                                      mov r0, r8
0033593c  71 10 af e6                                      sxtb r1, r1
00335940  be 28 03 eb                                      bl #0x3ffc40
00335944  42 fd ff ea                                      b #0x334e54
00335948  a0 31 9f e5                                      ldr r3, [pc, #0x1a0]
0033594c  03 30 94 e7                                      ldr r3, [r4, r3]
00335950  40 00 93 e5                                      ldr r0, [r3, #0x40]
00335954  8e eb ff eb                                      bl #0x330794
00335958  00 00 50 e3                                      cmp r0, #0
0033595c  3c fd ff 0a                                      beq #0x334e54
00335960  01 30 a0 e3                                      mov r3, #1
00335964  ab 33 c0 e5                                      strb r3, [r0, #0x3ab]
00335968  df 0f 80 e2                                      add r0, r0, #0x37c
0033596c  39 3b 03 eb                                      bl #0x404658
00335970  37 fd ff ea                                      b #0x334e54
00335974  06 00 a0 e1                                      mov r0, r6
00335978  15 ec ff eb                                      bl #0x3309d4
0033597c  34 fd ff ea                                      b #0x334e54
00335980  88 01 9f e5                                      ldr r0, [pc, #0x188]
00335984  00 00 8f e0                                      add r0, pc, r0
00335988  cd 61 ff eb                                      bl #0x30e0c4
0033598c  30 fd ff ea                                      b #0x334e54
00335990  0a 00 a0 e1                                      mov r0, sl
00335994  18 10 8d e5                                      str r1, [sp, #0x18]
00335998  18 26 03 eb                                      bl #0x3ff200
0033599c  00 c0 e0 e3                                      mvn ip, #0
003359a0  18 10 9d e5                                      ldr r1, [sp, #0x18]
003359a4  09 30 a0 e1                                      mov r3, sb
003359a8  0a 00 a0 e1                                      mov r0, sl
003359ac  09 20 a0 e1                                      mov r2, sb
003359b0  00 c0 8d e5                                      str ip, [sp]
003359b4  04 90 8d e5                                      str sb, [sp, #4]
003359b8  af 39 03 eb                                      bl #0x40407c
003359bc  0a 00 a0 e1                                      mov r0, sl
003359c0  1c 10 9d e5                                      ldr r1, [sp, #0x1c]
003359c4  09 20 a0 e1                                      mov r2, sb
003359c8  01 30 a0 e3                                      mov r3, #1
003359cc  25 28 03 eb                                      bl #0x3ffa68
003359d0  0a 00 a0 e1                                      mov r0, sl
003359d4  a1 26 03 eb                                      bl #0x3ff460
003359d8  00 70 97 e5                                      ldr r7, [r7]
003359dc  b4 ff ff ea                                      b #0x3358b4
003359e0  07 00 a0 e1                                      mov r0, r7
003359e4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
003359e8  00 20 e0 e3                                      mvn r2, #0
003359ec  f3 aa 04 eb                                      bl #0x4605c0
003359f0  02 fd ff ea                                      b #0x334e00
003359f4  07 00 a0 e1                                      mov r0, r7
003359f8  0c 10 96 e5                                      ldr r1, [r6, #0xc]
003359fc  52 dc 03 eb                                      bl #0x42cb4c
00335a00  00 70 50 e2                                      subs r7, r0, #0
00335a04  fb fc ff 0a                                      beq #0x334df8
00335a08  79 a6 03 eb                                      bl #0x41f3f4
00335a0c  00 00 50 e3                                      cmp r0, #0
00335a10  25 00 00 1a                                      bne #0x335aac
00335a14  07 00 a0 e1                                      mov r0, r7
00335a18  00 30 97 e5                                      ldr r3, [r7]
00335a1c  0f e0 a0 e1                                      mov lr, pc
00335a20  0c f0 93 e5                                      ldr pc, [r3, #0xc]
00335a24  f3 fc ff ea                                      b #0x334df8
00335a28  07 10 a0 e1                                      mov r1, r7
00335a2c  08 20 a0 e1                                      mov r2, r8
00335a30  06 00 a0 e1                                      mov r0, r6
00335a34  f7 ec 04 eb                                      bl #0x470e18
00335a38  06 00 a0 e1                                      mov r0, r6
00335a3c  a4 ec 04 eb                                      bl #0x470cd4
00335a40  06 00 a0 e1                                      mov r0, r6
00335a44  33 fa 04 eb                                      bl #0x474318
00335a48  06 00 a0 e1                                      mov r0, r6
00335a4c  a7 ed 04 eb                                      bl #0x4710f0
00335a50  ea fc ff ea                                      b #0x334e00
00335a54  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335a58  00 20 a0 e3                                      mov r2, #0
00335a5c  00 30 e0 e3                                      mvn r3, #0
00335a60  8f 18 02 eb                                      bl #0x3bbca4
00335a64  e3 fc ff ea                                      b #0x334df8
00335a68  80 30 9f e5                                      ldr r3, [pc, #0x80]
00335a6c  03 30 94 e7                                      ldr r3, [r4, r3]
00335a70  40 00 93 e5                                      ldr r0, [r3, #0x40]
00335a74  7e e5 00 eb                                      bl #0x36f074
00335a78  00 00 50 e3                                      cmp r0, #0
00335a7c  df fc ff 0a                                      beq #0x334e00
00335a80  58 fe ff ea                                      b #0x3353e8
00335a84  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335a88  02 20 a0 e3                                      mov r2, #2
00335a8c  00 30 e0 e3                                      mvn r3, #0
00335a90  c2 18 02 eb                                      bl #0x3bbda0
00335a94  d7 fc ff ea                                      b #0x334df8
00335a98  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335a9c  01 20 a0 e3                                      mov r2, #1
00335aa0  00 30 e0 e3                                      mvn r3, #0
00335aa4  bd 18 02 eb                                      bl #0x3bbda0
00335aa8  d2 fc ff ea                                      b #0x334df8
00335aac  07 00 a0 e1                                      mov r0, r7
00335ab0  00 30 97 e5                                      ldr r3, [r7]
00335ab4  0f e0 a0 e1                                      mov lr, pc
00335ab8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00335abc  cd fc ff ea                                      b #0x334df8
00335ac0  06 00 a0 e1                                      mov r0, r6
00335ac4  0c 10 96 e5                                      ldr r1, [r6, #0xc]
00335ac8  9f f7 ff eb                                      bl #0x33394c
00335acc  cb fc ff ea                                      b #0x334e00
00335ad0  0e 62 ff eb                                      bl #0x30e310
00335ad4  51 3f 43 e2                                      sub r3, r3, #0x144
00335ad8  01 30 43 e2                                      sub r3, r3, #1
00335adc  02 00 53 e3                                      cmp r3, #2
00335ae0  eb fe ff 8a                                      bhi #0x335694
00335ae4  de fe ff ea                                      b #0x335664
; mapping-symbol data/literal pool
00335ae8  64 fd 65 00 ac 40 00 00 f4 37 00 00 cc 20 00 00  .byte 0x64, 0xfd, 0x65, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xcc, 0x20, 0x00, 0x00
00335af8  20 35 00 00 20 1a 00 00 08 1b 00 00 7c 3c 00 00  .byte 0x20, 0x35, 0x00, 0x00, 0x20, 0x1a, 0x00, 0x00, 0x08, 0x1b, 0x00, 0x00, 0x7c, 0x3c, 0x00, 0x00
00335b08  a4 b7 58 00 70 1d 00 00 fc a1 58 00              .byte 0xa4, 0xb7, 0x58, 0x00, 0x70, 0x1d, 0x00, 0x00, 0xfc, 0xa1, 0x58, 0x00

; FUNCTION 0x00335b14, declared_size=1152, range_size=1152, mode=arm
; class-group: Console
; alias: _ZN7Console7onEventEPK6IEventPK12EventManager
; demangled: Console::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00335b14  70 40 2d e9                                      push {r4, r5, r6, lr}
00335b18  00 50 a0 e1                                      mov r5, r0
00335b1c  01 40 a0 e1                                      mov r4, r1
00335b20  fd f2 ff eb                                      bl #0x33271c
00335b24  04 30 d5 e5                                      ldrb r3, [r5, #4]
00335b28  5c 64 9f e5                                      ldr r6, [pc, #0x45c]
00335b2c  00 00 53 e3                                      cmp r3, #0
00335b30  06 60 8f e0                                      add r6, pc, r6
00335b34  01 00 00 1a                                      bne #0x335b40
00335b38  00 00 a0 e3                                      mov r0, #0
00335b3c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335b40  00 30 94 e5                                      ldr r3, [r4]
00335b44  04 00 a0 e1                                      mov r0, r4
00335b48  0f e0 a0 e1                                      mov lr, pc
00335b4c  08 f0 93 e5                                      ldr pc, [r3, #8]
00335b50  00 00 50 e3                                      cmp r0, #0
00335b54  69 00 00 1a                                      bne #0x335d00
00335b58  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00335b5c  00 00 53 e3                                      cmp r3, #0
00335b60  f4 ff ff 0a                                      beq #0x335b38
00335b64  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00335b68  30 10 41 e2                                      sub r1, r1, #0x30
00335b6c  5a 00 51 e3                                      cmp r1, #0x5a
00335b70  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
00335b74  ef ff ff ea                                      b #0x335b38
00335b78  d9 00 00 ea                                      b #0x335ee4
00335b7c  d8 00 00 ea                                      b #0x335ee4
00335b80  d7 00 00 ea                                      b #0x335ee4
00335b84  d6 00 00 ea                                      b #0x335ee4
00335b88  d5 00 00 ea                                      b #0x335ee4
00335b8c  d4 00 00 ea                                      b #0x335ee4
00335b90  d3 00 00 ea                                      b #0x335ee4
00335b94  d2 00 00 ea                                      b #0x335ee4
00335b98  d1 00 00 ea                                      b #0x335ee4
00335b9c  d0 00 00 ea                                      b #0x335ee4
00335ba0  e4 ff ff ea                                      b #0x335b38
00335ba4  e3 ff ff ea                                      b #0x335b38
00335ba8  e2 ff ff ea                                      b #0x335b38
00335bac  e1 ff ff ea                                      b #0x335b38
00335bb0  e0 ff ff ea                                      b #0x335b38
00335bb4  df ff ff ea                                      b #0x335b38
00335bb8  de ff ff ea                                      b #0x335b38
00335bbc  dd ff ff ea                                      b #0x335b38
00335bc0  dc ff ff ea                                      b #0x335b38
00335bc4  db ff ff ea                                      b #0x335b38
00335bc8  da ff ff ea                                      b #0x335b38
00335bcc  d9 ff ff ea                                      b #0x335b38
00335bd0  d8 ff ff ea                                      b #0x335b38
00335bd4  d7 ff ff ea                                      b #0x335b38
00335bd8  d6 ff ff ea                                      b #0x335b38
00335bdc  d5 ff ff ea                                      b #0x335b38
00335be0  d4 ff ff ea                                      b #0x335b38
00335be4  d3 ff ff ea                                      b #0x335b38
00335be8  d2 ff ff ea                                      b #0x335b38
00335bec  d1 ff ff ea                                      b #0x335b38
00335bf0  d0 ff ff ea                                      b #0x335b38
00335bf4  cf ff ff ea                                      b #0x335b38
00335bf8  ce ff ff ea                                      b #0x335b38
00335bfc  cd ff ff ea                                      b #0x335b38
00335c00  cc ff ff ea                                      b #0x335b38
00335c04  cb ff ff ea                                      b #0x335b38
00335c08  ca ff ff ea                                      b #0x335b38
00335c0c  c9 ff ff ea                                      b #0x335b38
00335c10  c8 ff ff ea                                      b #0x335b38
00335c14  c7 ff ff ea                                      b #0x335b38
00335c18  c6 ff ff ea                                      b #0x335b38
00335c1c  c5 ff ff ea                                      b #0x335b38
00335c20  c4 ff ff ea                                      b #0x335b38
00335c24  c3 ff ff ea                                      b #0x335b38
00335c28  a0 00 00 ea                                      b #0x335eb0
00335c2c  31 00 00 ea                                      b #0x335cf8
00335c30  30 00 00 ea                                      b #0x335cf8
00335c34  bf ff ff ea                                      b #0x335b38
00335c38  be ff ff ea                                      b #0x335b38
00335c3c  bd ff ff ea                                      b #0x335b38
00335c40  bc ff ff ea                                      b #0x335b38
00335c44  bb ff ff ea                                      b #0x335b38
00335c48  ba ff ff ea                                      b #0x335b38
00335c4c  b9 ff ff ea                                      b #0x335b38
00335c50  b8 ff ff ea                                      b #0x335b38
00335c54  b7 ff ff ea                                      b #0x335b38
00335c58  b6 ff ff ea                                      b #0x335b38
00335c5c  b5 ff ff ea                                      b #0x335b38
00335c60  b4 ff ff ea                                      b #0x335b38
00335c64  b3 ff ff ea                                      b #0x335b38
00335c68  b2 ff ff ea                                      b #0x335b38
00335c6c  b1 ff ff ea                                      b #0x335b38
00335c70  b0 ff ff ea                                      b #0x335b38
00335c74  af ff ff ea                                      b #0x335b38
00335c78  ae ff ff ea                                      b #0x335b38
00335c7c  ad ff ff ea                                      b #0x335b38
00335c80  ac ff ff ea                                      b #0x335b38
00335c84  ab ff ff ea                                      b #0x335b38
00335c88  aa ff ff ea                                      b #0x335b38
00335c8c  a9 ff ff ea                                      b #0x335b38
00335c90  a8 ff ff ea                                      b #0x335b38
00335c94  a7 ff ff ea                                      b #0x335b38
00335c98  a6 ff ff ea                                      b #0x335b38
00335c9c  a5 ff ff ea                                      b #0x335b38
00335ca0  a4 ff ff ea                                      b #0x335b38
00335ca4  a3 ff ff ea                                      b #0x335b38
00335ca8  a2 ff ff ea                                      b #0x335b38
00335cac  a1 ff ff ea                                      b #0x335b38
00335cb0  a0 ff ff ea                                      b #0x335b38
00335cb4  9f ff ff ea                                      b #0x335b38
00335cb8  9e ff ff ea                                      b #0x335b38
00335cbc  9d ff ff ea                                      b #0x335b38
00335cc0  9c ff ff ea                                      b #0x335b38
00335cc4  9b ff ff ea                                      b #0x335b38
00335cc8  9a ff ff ea                                      b #0x335b38
00335ccc  99 ff ff ea                                      b #0x335b38
00335cd0  98 ff ff ea                                      b #0x335b38
00335cd4  63 00 00 ea                                      b #0x335e68
00335cd8  56 00 00 ea                                      b #0x335e38
00335cdc  00 00 00 ea                                      b #0x335ce4
00335ce0  67 00 00 ea                                      b #0x335e84
00335ce4  08 30 95 e5                                      ldr r3, [r5, #8]
00335ce8  00 00 53 e3                                      cmp r3, #0
00335cec  01 30 43 12                                      subne r3, r3, #1
00335cf0  08 30 85 15                                      strne r3, [r5, #8]
00335cf4  3e 00 00 1a                                      bne #0x335df4
00335cf8  01 00 a0 e3                                      mov r0, #1
00335cfc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335d00  00 30 94 e5                                      ldr r3, [r4]
00335d04  04 00 a0 e1                                      mov r0, r4
00335d08  0f e0 a0 e1                                      mov lr, pc
00335d0c  08 f0 93 e5                                      ldr pc, [r3, #8]
00335d10  04 00 50 e3                                      cmp r0, #4
00335d14  0f 00 00 1a                                      bne #0x335d58
00335d18  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00335d1c  00 00 53 e3                                      cmp r3, #0
00335d20  39 00 00 0a                                      beq #0x335e0c
00335d24  8c 30 95 e5                                      ldr r3, [r5, #0x8c]
00335d28  00 00 53 e3                                      cmp r3, #0
00335d2c  8a 00 00 ba                                      blt #0x335f5c
00335d30  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00335d34  02 00 53 e1                                      cmp r3, r2
00335d38  ee ff ff 0a                                      beq #0x335cf8
00335d3c  00 30 a0 e3                                      mov r3, #0
00335d40  86 30 c5 e5                                      strb r3, [r5, #0x86]
00335d44  00 30 e0 e3                                      mvn r3, #0
00335d48  8c 30 85 e5                                      str r3, [r5, #0x8c]
00335d4c  a4 35 01 eb                                      bl #0x3833e4
00335d50  01 00 a0 e3                                      mov r0, #1
00335d54  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335d58  00 30 94 e5                                      ldr r3, [r4]
00335d5c  04 00 a0 e1                                      mov r0, r4
00335d60  0f e0 a0 e1                                      mov lr, pc
00335d64  08 f0 93 e5                                      ldr pc, [r3, #8]
00335d68  05 00 50 e3                                      cmp r0, #5
00335d6c  71 ff ff 1a                                      bne #0x335b38
00335d70  00 20 a0 e3                                      mov r2, #0
00335d74  86 20 c5 e5                                      strb r2, [r5, #0x86]
00335d78  ba 60 d4 e1                                      ldrh r6, [r4, #0xa]
00335d7c  f4 38 d5 e1                                      ldrsh r3, [r5, #0x84]
00335d80  b8 40 d4 e1                                      ldrh r4, [r4, #8]
00335d84  76 10 bf e6                                      sxth r1, r6
00335d88  01 30 63 e0                                      rsb r3, r3, r1
00335d8c  0f 10 83 e2                                      add r1, r3, #0xf
00335d90  02 00 53 e1                                      cmp r3, r2
00335d94  01 30 a0 b1                                      movlt r3, r1
00335d98  43 32 b0 e1                                      asrs r3, r3, #4
00335d9c  57 00 00 1a                                      bne #0x335f00
00335da0  f2 28 d5 e1                                      ldrsh r2, [r5, #0x82]
00335da4  74 10 bf e6                                      sxth r1, r4
00335da8  67 36 06 e3                                      movw r3, #0x6667
00335dac  01 20 62 e0                                      rsb r2, r2, r1
00335db0  66 36 46 e3                                      movt r3, #0x6666
00335db4  93 12 c3 e0                                      smull r1, r3, r3, r2
00335db8  c2 2f a0 e1                                      asr r2, r2, #0x1f
00335dbc  43 32 62 e0                                      rsb r3, r2, r3, asr #4
00335dc0  00 00 53 e3                                      cmp r3, #0
00335dc4  cb ff ff 0a                                      beq #0x335cf8
00335dc8  08 20 95 e5                                      ldr r2, [r5, #8]
00335dcc  b4 68 c5 e1                                      strh r6, [r5, #0x84]
00335dd0  b2 48 c5 e1                                      strh r4, [r5, #0x82]
00335dd4  02 30 83 e0                                      add r3, r3, r2
00335dd8  00 00 53 e3                                      cmp r3, #0
00335ddc  00 30 a0 d3                                      movle r3, #0
00335de0  08 30 85 d5                                      strle r3, [r5, #8]
00335de4  02 00 00 da                                      ble #0x335df4
00335de8  13 00 53 e3                                      cmp r3, #0x13
00335dec  13 30 a0 23                                      movhs r3, #0x13
00335df0  08 30 85 e5                                      str r3, [r5, #8]
00335df4  00 30 a0 e3                                      mov r3, #0
00335df8  05 00 a0 e1                                      mov r0, r5
00335dfc  0c 30 85 e5                                      str r3, [r5, #0xc]
00335e00  45 fb ff eb                                      bl #0x334b1c
00335e04  01 00 a0 e3                                      mov r0, #1
00335e08  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335e0c  86 20 d5 e5                                      ldrb r2, [r5, #0x86]
00335e10  00 10 e0 e3                                      mvn r1, #0
00335e14  8c 10 85 e5                                      str r1, [r5, #0x8c]
00335e18  00 00 52 e3                                      cmp r2, #0
00335e1c  b5 ff ff 0a                                      beq #0x335cf8
00335e20  05 00 a0 e1                                      mov r0, r5
00335e24  86 30 c5 e5                                      strb r3, [r5, #0x86]
00335e28  01 10 a0 e3                                      mov r1, #1
00335e2c  ba fb ff eb                                      bl #0x334d1c
00335e30  01 00 a0 e3                                      mov r0, #1
00335e34  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335e38  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00335e3c  05 00 a0 e1                                      mov r0, r5
00335e40  01 30 83 e2                                      add r3, r3, #1
00335e44  0c 30 85 e5                                      str r3, [r5, #0xc]
00335e48  57 ea ff eb                                      bl #0x3307ac
00335e4c  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00335e50  01 20 40 e2                                      sub r2, r0, #1
00335e54  01 00 a0 e3                                      mov r0, #1
00335e58  02 00 53 e1                                      cmp r3, r2
00335e5c  0c 30 85 95                                      strls r3, [r5, #0xc]
00335e60  0c 20 85 85                                      strhi r2, [r5, #0xc]
00335e64  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335e68  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00335e6c  00 00 53 e3                                      cmp r3, #0
00335e70  a0 ff ff 0a                                      beq #0x335cf8
00335e74  01 30 43 e2                                      sub r3, r3, #1
00335e78  0c 30 85 e5                                      str r3, [r5, #0xc]
00335e7c  01 00 a0 e3                                      mov r0, #1
00335e80  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335e84  08 30 95 e5                                      ldr r3, [r5, #8]
00335e88  00 20 a0 e3                                      mov r2, #0
00335e8c  05 00 a0 e1                                      mov r0, r5
00335e90  01 30 83 e2                                      add r3, r3, #1
00335e94  13 00 53 e3                                      cmp r3, #0x13
00335e98  13 30 a0 23                                      movhs r3, #0x13
00335e9c  0c 20 85 e5                                      str r2, [r5, #0xc]
00335ea0  08 30 85 e5                                      str r3, [r5, #8]
00335ea4  1c fb ff eb                                      bl #0x334b1c
00335ea8  01 00 a0 e3                                      mov r0, #1
00335eac  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335eb0  d8 30 9f e5                                      ldr r3, [pc, #0xd8]
00335eb4  03 00 96 e7                                      ldr r0, [r6, r3]
00335eb8  b5 a5 ff eb                                      bl #0x31f594
00335ebc  00 30 50 e2                                      subs r3, r0, #0
00335ec0  8c ff ff 0a                                      beq #0x335cf8
00335ec4  30 21 93 e5                                      ldr r2, [r3, #0x130]
00335ec8  24 00 52 e3                                      cmp r2, #0x24
00335ecc  89 ff ff 1a                                      bne #0x335cf8
00335ed0  30 21 93 e5                                      ldr r2, [r3, #0x130]
00335ed4  01 00 a0 e3                                      mov r0, #1
00335ed8  00 20 82 e0                                      add r2, r2, r0
00335edc  30 21 83 e5                                      str r2, [r3, #0x130]
00335ee0  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335ee4  04 30 d5 e5                                      ldrb r3, [r5, #4]
00335ee8  00 00 53 e3                                      cmp r3, #0
00335eec  11 ff ff 0a                                      beq #0x335b38
00335ef0  05 00 a0 e1                                      mov r0, r5
00335ef4  88 fb ff eb                                      bl #0x334d1c
00335ef8  01 00 a0 e3                                      mov r0, #1
00335efc  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335f00  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00335f04  b4 68 c5 e1                                      strh r6, [r5, #0x84]
00335f08  b2 48 c5 e1                                      strh r4, [r5, #0x82]
00335f0c  01 30 83 e0                                      add r3, r3, r1
00335f10  00 00 53 e3                                      cmp r3, #0
00335f14  19 00 00 da                                      ble #0x335f80
00335f18  0c 30 85 e5                                      str r3, [r5, #0xc]
00335f1c  05 00 a0 e1                                      mov r0, r5
00335f20  21 ea ff eb                                      bl #0x3307ac
00335f24  f2 28 d5 e1                                      ldrsh r2, [r5, #0x82]
00335f28  74 10 bf e6                                      sxth r1, r4
00335f2c  67 36 06 e3                                      movw r3, #0x6667
00335f30  01 20 62 e0                                      rsb r2, r2, r1
00335f34  66 36 46 e3                                      movt r3, #0x6666
00335f38  93 12 c3 e0                                      smull r1, r3, r3, r2
00335f3c  0c 10 95 e5                                      ldr r1, [r5, #0xc]
00335f40  01 00 40 e2                                      sub r0, r0, #1
00335f44  c2 2f a0 e1                                      asr r2, r2, #0x1f
00335f48  00 00 51 e1                                      cmp r1, r0
00335f4c  0c 10 85 95                                      strls r1, [r5, #0xc]
00335f50  0c 00 85 85                                      strhi r0, [r5, #0xc]
00335f54  43 32 62 e0                                      rsb r3, r2, r3, asr #4
00335f58  98 ff ff ea                                      b #0x335dc0
00335f5c  0c 30 94 e5                                      ldr r3, [r4, #0xc]
00335f60  01 00 a0 e3                                      mov r0, #1
00335f64  86 00 c5 e5                                      strb r0, [r5, #0x86]
00335f68  8c 30 85 e5                                      str r3, [r5, #0x8c]
00335f6c  b8 10 d4 e1                                      ldrh r1, [r4, #8]
00335f70  b2 18 c5 e1                                      strh r1, [r5, #0x82]
00335f74  ba 40 d4 e1                                      ldrh r4, [r4, #0xa]
00335f78  b4 48 c5 e1                                      strh r4, [r5, #0x84]
00335f7c  70 80 bd e8                                      pop {r4, r5, r6, pc}
00335f80  0c 20 85 e5                                      str r2, [r5, #0xc]
00335f84  01 00 a0 e3                                      mov r0, #1
00335f88  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00335f8c  60 ef 65 00 f4 37 00 00                          .byte 0x60, 0xef, 0x65, 0x00, 0xf4, 0x37, 0x00, 0x00
