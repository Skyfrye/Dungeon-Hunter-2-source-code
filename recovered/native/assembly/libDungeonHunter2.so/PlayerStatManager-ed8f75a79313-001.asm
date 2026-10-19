; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00379084, declared_size=36, range_size=36, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManagerC2Ev
; demangled: PlayerStatManager::PlayerStatManager()
; decoder-mode: arm
00379084  14 30 9f e5                                      ldr r3, [pc, #0x14]
00379088  14 20 9f e5                                      ldr r2, [pc, #0x14]
0037908c  03 30 8f e0                                      add r3, pc, r3
00379090  02 20 93 e7                                      ldr r2, [r3, r2]
00379094  08 20 82 e2                                      add r2, r2, #8
00379098  00 20 80 e5                                      str r2, [r0]
0037909c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003790a0  04 ba 61 00 08 36 00 00                          .byte 0x04, 0xba, 0x61, 0x00, 0x08, 0x36, 0x00, 0x00

; FUNCTION 0x003790a8, declared_size=36, range_size=36, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManagerC1Ev
; demangled: PlayerStatManager::PlayerStatManager()
; decoder-mode: arm
003790a8  14 30 9f e5                                      ldr r3, [pc, #0x14]
003790ac  14 20 9f e5                                      ldr r2, [pc, #0x14]
003790b0  03 30 8f e0                                      add r3, pc, r3
003790b4  02 20 93 e7                                      ldr r2, [r3, r2]
003790b8  08 20 82 e2                                      add r2, r2, #8
003790bc  00 20 80 e5                                      str r2, [r0]
003790c0  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
003790c4  e0 b9 61 00 08 36 00 00                          .byte 0xe0, 0xb9, 0x61, 0x00, 0x08, 0x36, 0x00, 0x00

; FUNCTION 0x003790cc, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManagerD2Ev
; demangled: PlayerStatManager::~PlayerStatManager()
; decoder-mode: arm
003790cc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003790d0, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManagerD1Ev
; demangled: PlayerStatManager::~PlayerStatManager()
; decoder-mode: arm
003790d0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003790d4, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager5ResetEv
; demangled: PlayerStatManager::Reset()
; decoder-mode: arm
003790d4  1e ff 2f e1                                      bx lr

; FUNCTION 0x003790d8, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager6UpdateEv
; demangled: PlayerStatManager::Update()
; decoder-mode: arm
003790d8  1e ff 2f e1                                      bx lr

; FUNCTION 0x003790dc, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager17ApplyPlayersBonusEv
; demangled: PlayerStatManager::ApplyPlayersBonus()
; decoder-mode: arm
003790dc  1e ff 2f e1                                      bx lr

; FUNCTION 0x003790e0, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager12IncreaseStatE9EStatTypeii
; demangled: PlayerStatManager::IncreaseStat(EStatType, int, int)
; decoder-mode: arm
003790e0  1e ff 2f e1                                      bx lr

; FUNCTION 0x003790e4, declared_size=8, range_size=8, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager12DecreaseStatE9EStatTypeii
; demangled: PlayerStatManager::DecreaseStat(EStatType, int, int)
; decoder-mode: arm
003790e4  00 20 62 e2                                      rsb r2, r2, #0
003790e8  fc ff ff ea                                      b #0x3790e0

; FUNCTION 0x003790ec, declared_size=12, range_size=12, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager13IncrementStatE9EStatTypei
; demangled: PlayerStatManager::IncrementStat(EStatType, int)
; decoder-mode: arm
003790ec  02 30 a0 e1                                      mov r3, r2
003790f0  01 20 a0 e3                                      mov r2, #1
003790f4  f9 ff ff ea                                      b #0x3790e0

; FUNCTION 0x003790f8, declared_size=12, range_size=12, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager13DecrementStatE9EStatTypei
; demangled: PlayerStatManager::DecrementStat(EStatType, int)
; decoder-mode: arm
003790f8  02 30 a0 e1                                      mov r3, r2
003790fc  00 20 e0 e3                                      mvn r2, #0
00379100  f6 ff ff ea                                      b #0x3790e0

; FUNCTION 0x00379104, declared_size=4, range_size=4, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager12SetStatValueE9EStatTypeiib
; demangled: PlayerStatManager::SetStatValue(EStatType, int, int, bool)
; decoder-mode: arm
00379104  1e ff 2f e1                                      bx lr

; FUNCTION 0x00379108, declared_size=36, range_size=36, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager14ResetStatValueE9EStatTypei
; demangled: PlayerStatManager::ResetStatValue(EStatType, int)
; decoder-mode: arm
00379108  04 e0 2d e5                                      str lr, [sp, #-4]!
0037910c  00 c0 a0 e3                                      mov ip, #0
00379110  0c d0 4d e2                                      sub sp, sp, #0xc
00379114  02 30 a0 e1                                      mov r3, r2
00379118  0c 20 a0 e1                                      mov r2, ip
0037911c  00 c0 8d e5                                      str ip, [sp]
00379120  f7 ff ff eb                                      bl #0x379104
00379124  0c d0 8d e2                                      add sp, sp, #0xc
00379128  00 80 bd e8                                      ldm sp!, {pc}

; FUNCTION 0x0037912c, declared_size=48, range_size=48, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager18ResetAllStatValuesEi
; demangled: PlayerStatManager::ResetAllStatValues(int)
; decoder-mode: arm
0037912c  70 40 2d e9                                      push {r4, r5, r6, lr}
00379130  00 60 a0 e1                                      mov r6, r0
00379134  01 50 a0 e1                                      mov r5, r1
00379138  00 40 a0 e3                                      mov r4, #0
0037913c  04 10 a0 e1                                      mov r1, r4
00379140  06 00 a0 e1                                      mov r0, r6
00379144  01 40 84 e2                                      add r4, r4, #1
00379148  05 20 a0 e1                                      mov r2, r5
0037914c  ed ff ff eb                                      bl #0x379108
00379150  07 00 54 e3                                      cmp r4, #7
00379154  f8 ff ff 1a                                      bne #0x37913c
00379158  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00379568, declared_size=68, range_size=68, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager6InvokeERKSs
; demangled: PlayerStatManager::Invoke(std::basic_string<char, std::char_traits<char>, std::allocator<char> > const&) const
; decoder-mode: arm
00379568  30 40 2d e9                                      push {r4, r5, lr}
0037956c  0c d0 4d e2                                      sub sp, sp, #0xc
00379570  01 50 a0 e1                                      mov r5, r1
00379574  44 cd 02 eb                                      bl #0x42ca8c
00379578  83 cd 02 eb                                      bl #0x42cb8c
0037957c  00 40 a0 e1                                      mov r4, r0
00379580  c9 b9 10 eb                                      bl #0x7a7cac
00379584  f2 ea 0f eb                                      bl #0x774154
00379588  00 c0 a0 e3                                      mov ip, #0
0037958c  00 10 a0 e1                                      mov r1, r0
00379590  14 20 95 e5                                      ldr r2, [r5, #0x14]
00379594  04 00 a0 e1                                      mov r0, r4
00379598  0c 30 a0 e1                                      mov r3, ip
0037959c  00 c0 8d e5                                      str ip, [sp]
003795a0  19 ca 10 eb                                      bl #0x7abe0c
003795a4  0c d0 8d e2                                      add sp, sp, #0xc
003795a8  30 80 bd e8                                      pop {r4, r5, pc}

; FUNCTION 0x003795ac, declared_size=28, range_size=28, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManagerD0Ev
; demangled: PlayerStatManager::~PlayerStatManager()
; decoder-mode: arm
003795ac  10 40 2d e9                                      push {r4, lr}
003795b0  00 40 a0 e1                                      mov r4, r0
003795b4  c5 fe ff eb                                      bl #0x3790d0
003795b8  04 00 a0 e1                                      mov r0, r4
003795bc  9f 5b fe eb                                      bl #0x310440
003795c0  04 00 a0 e1                                      mov r0, r4
003795c4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003795c8, declared_size=252, range_size=252, mode=arm
; class-group: PlayerStatManager
; alias: _ZN17PlayerStatManager10GetStatStrE9EStatType
; demangled: PlayerStatManager::GetStatStr(EStatType)
; decoder-mode: arm
003795c8  10 40 2d e9                                      push {r4, lr}
003795cc  00 40 a0 e1                                      mov r4, r0
003795d0  20 d0 4d e2                                      sub sp, sp, #0x20
003795d4  06 00 51 e3                                      cmp r1, #6
003795d8  01 f1 8f 90                                      addls pc, pc, r1, lsl #2
003795dc  0d 00 00 ea                                      b #0x379618
003795e0  11 00 00 ea                                      b #0x37962c
003795e4  15 00 00 ea                                      b #0x379640
003795e8  19 00 00 ea                                      b #0x379654
003795ec  1d 00 00 ea                                      b #0x379668
003795f0  21 00 00 ea                                      b #0x37967c
003795f4  25 00 00 ea                                      b #0x379690
003795f8  ff ff ff ea                                      b #0x3795fc
003795fc  a0 10 9f e5                                      ldr r1, [pc, #0xa0]
00379600  04 20 8d e2                                      add r2, sp, #4
00379604  01 10 8f e0                                      add r1, pc, r1
00379608  b7 6a fe eb                                      bl #0x3140ec
0037960c  04 00 a0 e1                                      mov r0, r4
00379610  20 d0 8d e2                                      add sp, sp, #0x20
00379614  10 80 bd e8                                      pop {r4, pc}
00379618  88 10 9f e5                                      ldr r1, [pc, #0x88]
0037961c  0d 20 a0 e1                                      mov r2, sp
00379620  01 10 8f e0                                      add r1, pc, r1
00379624  b0 6a fe eb                                      bl #0x3140ec
00379628  f7 ff ff ea                                      b #0x37960c
0037962c  78 10 9f e5                                      ldr r1, [pc, #0x78]
00379630  1c 20 8d e2                                      add r2, sp, #0x1c
00379634  01 10 8f e0                                      add r1, pc, r1
00379638  ab 6a fe eb                                      bl #0x3140ec
0037963c  f2 ff ff ea                                      b #0x37960c
00379640  68 10 9f e5                                      ldr r1, [pc, #0x68]
00379644  18 20 8d e2                                      add r2, sp, #0x18
00379648  01 10 8f e0                                      add r1, pc, r1
0037964c  a6 6a fe eb                                      bl #0x3140ec
00379650  ed ff ff ea                                      b #0x37960c
00379654  58 10 9f e5                                      ldr r1, [pc, #0x58]
00379658  14 20 8d e2                                      add r2, sp, #0x14
0037965c  01 10 8f e0                                      add r1, pc, r1
00379660  a1 6a fe eb                                      bl #0x3140ec
00379664  e8 ff ff ea                                      b #0x37960c
00379668  48 10 9f e5                                      ldr r1, [pc, #0x48]
0037966c  10 20 8d e2                                      add r2, sp, #0x10
00379670  01 10 8f e0                                      add r1, pc, r1
00379674  9c 6a fe eb                                      bl #0x3140ec
00379678  e3 ff ff ea                                      b #0x37960c
0037967c  38 10 9f e5                                      ldr r1, [pc, #0x38]
00379680  0c 20 8d e2                                      add r2, sp, #0xc
00379684  01 10 8f e0                                      add r1, pc, r1
00379688  97 6a fe eb                                      bl #0x3140ec
0037968c  de ff ff ea                                      b #0x37960c
00379690  28 10 9f e5                                      ldr r1, [pc, #0x28]
00379694  08 20 8d e2                                      add r2, sp, #8
00379698  01 10 8f e0                                      add r1, pc, r1
0037969c  92 6a fe eb                                      bl #0x3140ec
003796a0  d9 ff ff ea                                      b #0x37960c
; mapping-symbol data/literal pool
003796a4  1c 83 54 00 e8 21 55 00 ac 82 54 00 a0 82 54 00  .byte 0x1c, 0x83, 0x54, 0x00, 0xe8, 0x21, 0x55, 0x00, 0xac, 0x82, 0x54, 0x00, 0xa0, 0x82, 0x54, 0x00
003796b4  94 82 54 00 90 82 54 00 8c 82 54 00 80 82 54 00  .byte 0x94, 0x82, 0x54, 0x00, 0x90, 0x82, 0x54, 0x00, 0x8c, 0x82, 0x54, 0x00, 0x80, 0x82, 0x54, 0x00

; FUNCTION 0x003796c4, declared_size=352, range_size=352, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager6InvokeE9EStatTypeii
; demangled: PlayerStatManager::Invoke(EStatType, int, int) const
; decoder-mode: arm
003796c4  48 c1 9f e5                                      ldr ip, [pc, #0x148]
003796c8  48 01 9f e5                                      ldr r0, [pc, #0x148]
003796cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
003796d0  0c c0 8f e0                                      add ip, pc, ip
003796d4  00 50 9c e7                                      ldr r5, [ip, r0]
003796d8  3c 01 9f e5                                      ldr r0, [pc, #0x13c]
003796dc  64 d0 4d e2                                      sub sp, sp, #0x64
003796e0  00 e0 95 e5                                      ldr lr, [r5]
003796e4  00 00 9c e7                                      ldr r0, [ip, r0]
003796e8  01 60 a0 e1                                      mov r6, r1
003796ec  02 10 a0 e1                                      mov r1, r2
003796f0  40 00 90 e5                                      ldr r0, [r0, #0x40]
003796f4  00 20 a0 e3                                      mov r2, #0
003796f8  5c e0 8d e5                                      str lr, [sp, #0x5c]
003796fc  03 b0 a0 e1                                      mov fp, r3
00379700  2a d2 ff eb                                      bl #0x36dfb0
00379704  00 40 a0 e1                                      mov r4, r0
00379708  df cc 02 eb                                      bl #0x42ca8c
0037970c  1e cd 02 eb                                      bl #0x42cb8c
00379710  00 70 a0 e3                                      mov r7, #0
00379714  00 80 a0 e1                                      mov r8, r0
00379718  02 a0 a0 e3                                      mov sl, #2
0037971c  7c 06 94 e5                                      ldr r0, [r4, #0x67c]
00379720  08 70 cd e5                                      strb r7, [sp, #8]
00379724  09 a0 cd e5                                      strb sl, [sp, #9]
00379728  80 55 fe eb                                      bl #0x30ed30
0037972c  f8 03 cd e1                                      strd r0, r1, [sp, #0x38]
00379730  38 30 9d e5                                      ldr r3, [sp, #0x38]
00379734  04 00 a0 e1                                      mov r0, r4
00379738  08 40 8d e2                                      add r4, sp, #8
0037973c  0c 30 8d e5                                      str r3, [sp, #0xc]
00379740  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00379744  44 90 8d e2                                      add sb, sp, #0x44
00379748  08 30 84 e5                                      str r3, [r4, #8]
0037974c  84 56 12 eb                                      bl #0x80f164
00379750  01 30 a0 e3                                      mov r3, #1
00379754  06 10 a0 e1                                      mov r1, r6
00379758  18 00 cd e5                                      strb r0, [sp, #0x18]
0037975c  18 60 84 e2                                      add r6, r4, #0x18
00379760  09 00 a0 e1                                      mov r0, sb
00379764  15 30 cd e5                                      strb r3, [sp, #0x15]
00379768  14 70 cd e5                                      strb r7, [sp, #0x14]
0037976c  95 ff ff eb                                      bl #0x3795c8
00379770  58 10 9d e5                                      ldr r1, [sp, #0x58]
00379774  06 00 a0 e1                                      mov r0, r6
00379778  20 70 cd e5                                      strb r7, [sp, #0x20]
0037977c  21 70 cd e5                                      strb r7, [sp, #0x21]
00379780  f2 76 10 eb                                      bl #0x797350
00379784  09 00 a0 e1                                      mov r0, sb
00379788  87 68 fe eb                                      bl #0x3139ac
0037978c  0b 00 a0 e1                                      mov r0, fp
00379790  2c 70 cd e5                                      strb r7, [sp, #0x2c]
00379794  2d a0 cd e5                                      strb sl, [sp, #0x2d]
00379798  64 55 fe eb                                      bl #0x30ed30
0037979c  00 20 a0 e1                                      mov r2, r0
003797a0  01 30 a0 e1                                      mov r3, r1
003797a4  08 00 a0 e1                                      mov r0, r8
003797a8  f0 23 cd e1                                      strd r2, r3, [sp, #0x30]
003797ac  f8 23 cd e1                                      strd r2, r3, [sp, #0x38]
003797b0  3d b9 10 eb                                      bl #0x7a7cac
003797b4  66 ea 0f eb                                      bl #0x774154
003797b8  60 30 9f e5                                      ldr r3, [pc, #0x60]
003797bc  00 10 a0 e1                                      mov r1, r0
003797c0  04 c0 a0 e3                                      mov ip, #4
003797c4  03 20 9f e7                                      ldr r2, [pc, r3]
003797c8  08 00 a0 e1                                      mov r0, r8
003797cc  04 30 a0 e1                                      mov r3, r4
003797d0  00 c0 8d e5                                      str ip, [sp]
003797d4  8c c9 10 eb                                      bl #0x7abe0c
003797d8  24 00 84 e2                                      add r0, r4, #0x24
003797dc  50 76 10 eb                                      bl #0x797124
003797e0  06 00 a0 e1                                      mov r0, r6
003797e4  4e 76 10 eb                                      bl #0x797124
003797e8  0c 00 84 e2                                      add r0, r4, #0xc
003797ec  4c 76 10 eb                                      bl #0x797124
003797f0  04 00 a0 e1                                      mov r0, r4
003797f4  4a 76 10 eb                                      bl #0x797124
003797f8  5c 20 9d e5                                      ldr r2, [sp, #0x5c]
003797fc  00 30 95 e5                                      ldr r3, [r5]
00379800  03 00 52 e1                                      cmp r2, r3
00379804  01 00 00 1a                                      bne #0x379810
00379808  64 d0 8d e2                                      add sp, sp, #0x64
0037980c  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00379810  be 52 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00379814  c0 b3 61 00 ac 40 00 00 f4 37 00 00 e4 d1 5d 00  .byte 0xc0, 0xb3, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xe4, 0xd1, 0x5d, 0x00

; FUNCTION 0x00379824, declared_size=300, range_size=300, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager12GetStatValueE9EStatTypei
; demangled: PlayerStatManager::GetStatValue(EStatType, int) const
; decoder-mode: arm
00379824  70 40 2d e9                                      push {r4, r5, r6, lr}
00379828  f8 40 9f e5                                      ldr r4, [pc, #0xf8]
0037982c  06 00 51 e3                                      cmp r1, #6
00379830  08 d0 4d e2                                      sub sp, sp, #8
00379834  01 50 a0 e1                                      mov r5, r1
00379838  04 40 8f e0                                      add r4, pc, r4
0037983c  02 60 a0 e1                                      mov r6, r2
00379840  08 00 00 da                                      ble #0x379868
00379844  e0 30 9f e5                                      ldr r3, [pc, #0xe0]
00379848  03 30 94 e7                                      ldr r3, [r4, r3]
0037984c  00 30 93 e5                                      ldr r3, [r3]
00379850  02 00 53 e3                                      cmp r3, #2
00379854  00 30 a0 03                                      moveq r3, #0
00379858  00 30 83 05                                      streq r3, [r3]
0037985c  01 00 00 0a                                      beq #0x379868
00379860  01 00 53 e3                                      cmp r3, #1
00379864  22 00 00 0a                                      beq #0x3798f4
00379868  03 00 56 e3                                      cmp r6, #3
0037986c  08 00 00 da                                      ble #0x379894
00379870  b4 30 9f e5                                      ldr r3, [pc, #0xb4]
00379874  03 30 94 e7                                      ldr r3, [r4, r3]
00379878  00 30 93 e5                                      ldr r3, [r3]
0037987c  02 00 53 e3                                      cmp r3, #2
00379880  00 30 a0 03                                      moveq r3, #0
00379884  00 30 83 05                                      streq r3, [r3]
00379888  01 00 00 0a                                      beq #0x379894
0037988c  01 00 53 e3                                      cmp r3, #1
00379890  0a 00 00 0a                                      beq #0x3798c0
00379894  94 30 9f e5                                      ldr r3, [pc, #0x94]
00379898  06 10 a0 e1                                      mov r1, r6
0037989c  00 20 a0 e3                                      mov r2, #0
003798a0  03 30 94 e7                                      ldr r3, [r4, r3]
003798a4  40 00 93 e5                                      ldr r0, [r3, #0x40]
003798a8  c0 d1 ff eb                                      bl #0x36dfb0
003798ac  28 30 a0 e3                                      mov r3, #0x28
003798b0  93 05 25 e0                                      mla r5, r3, r5, r0
003798b4  68 05 95 e5                                      ldr r0, [r5, #0x568]
003798b8  08 d0 8d e2                                      add sp, sp, #8
003798bc  70 80 bd e8                                      pop {r4, r5, r6, pc}
003798c0  6c 00 9f e5                                      ldr r0, [pc, #0x6c]
003798c4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
003798c8  6c 20 9f e5                                      ldr r2, [pc, #0x6c]
003798cc  00 00 94 e7                                      ldr r0, [r4, r0]
003798d0  68 30 9f e5                                      ldr r3, [pc, #0x68]
003798d4  e0 c0 a0 e3                                      mov ip, #0xe0
003798d8  01 10 8f e0                                      add r1, pc, r1
003798dc  02 20 8f e0                                      add r2, pc, r2
003798e0  03 30 8f e0                                      add r3, pc, r3
003798e4  a8 00 80 e2                                      add r0, r0, #0xa8
003798e8  00 c0 8d e5                                      str ip, [sp]
003798ec  c4 51 fe eb                                      bl #0x30e004
003798f0  e7 ff ff ea                                      b #0x379894
003798f4  38 00 9f e5                                      ldr r0, [pc, #0x38]
003798f8  44 10 9f e5                                      ldr r1, [pc, #0x44]
003798fc  44 20 9f e5                                      ldr r2, [pc, #0x44]
00379900  00 00 94 e7                                      ldr r0, [r4, r0]
00379904  40 30 9f e5                                      ldr r3, [pc, #0x40]
00379908  df c0 a0 e3                                      mov ip, #0xdf
0037990c  01 10 8f e0                                      add r1, pc, r1
00379910  02 20 8f e0                                      add r2, pc, r2
00379914  03 30 8f e0                                      add r3, pc, r3
00379918  a8 00 80 e2                                      add r0, r0, #0xa8
0037991c  00 c0 8d e5                                      str ip, [sp]
00379920  b7 51 fe eb                                      bl #0x30e004
00379924  cf ff ff ea                                      b #0x379868
; mapping-symbol data/literal pool
00379928  58 b2 61 00 c0 39 00 00 f4 37 00 00 c0 19 00 00  .byte 0x58, 0xb2, 0x61, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00
00379938  00 4b 54 00 bc 80 54 00 60 80 54 00 cc 4a 54 00  .byte 0x00, 0x4b, 0x54, 0x00, 0xbc, 0x80, 0x54, 0x00, 0x60, 0x80, 0x54, 0x00, 0xcc, 0x4a, 0x54, 0x00
00379948  18 80 54 00 2c 80 54 00                          .byte 0x18, 0x80, 0x54, 0x00, 0x2c, 0x80, 0x54, 0x00

; FUNCTION 0x00379ac4, declared_size=596, range_size=596, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager10GetRankingE9EStatTypeb
; demangled: PlayerStatManager::GetRanking(EStatType, bool) const
; decoder-mode: arm
00379ac4  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00379ac8  28 42 9f e5                                      ldr r4, [pc, #0x228]
00379acc  28 52 9f e5                                      ldr r5, [pc, #0x228]
00379ad0  18 d0 4d e2                                      sub sp, sp, #0x18
00379ad4  04 40 8f e0                                      add r4, pc, r4
00379ad8  2c 30 94 e5                                      ldr r3, [r4, #0x2c]
00379adc  05 50 8f e0                                      add r5, pc, r5
00379ae0  00 70 a0 e1                                      mov r7, r0
00379ae4  01 60 13 e2                                      ands r6, r3, #1
00379ae8  01 80 a0 e1                                      mov r8, r1
00379aec  02 a0 a0 e1                                      mov sl, r2
00379af0  47 00 00 0a                                      beq #0x379c14
00379af4  00 00 5a e3                                      cmp sl, #0
00379af8  04 00 00 1a                                      bne #0x379b10
00379afc  fc 01 9f e5                                      ldr r0, [pc, #0x1fc]
00379b00  00 00 8f e0                                      add r0, pc, r0
00379b04  0c 00 80 e2                                      add r0, r0, #0xc
00379b08  18 d0 8d e2                                      add sp, sp, #0x18
00379b0c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00379b10  ec 31 9f e5                                      ldr r3, [pc, #0x1ec]
00379b14  03 30 95 e7                                      ldr r3, [r5, r3]
00379b18  40 00 93 e5                                      ldr r0, [r3, #0x40]
00379b1c  21 cf ff eb                                      bl #0x36d7a8
00379b20  00 40 50 e2                                      subs r4, r0, #0
00379b24  0f 00 00 da                                      ble #0x379b68
00379b28  d8 a1 9f e5                                      ldr sl, [pc, #0x1d8]
00379b2c  00 60 a0 e3                                      mov r6, #0
00379b30  06 50 a0 e1                                      mov r5, r6
00379b34  0a a0 8f e0                                      add sl, pc, sl
00379b38  0c a0 8a e2                                      add sl, sl, #0xc
00379b3c  05 20 a0 e1                                      mov r2, r5
00379b40  07 00 a0 e1                                      mov r0, r7
00379b44  08 10 a0 e1                                      mov r1, r8
00379b48  35 ff ff eb                                      bl #0x379824
00379b4c  06 30 8a e0                                      add r3, sl, r6
00379b50  04 50 83 e5                                      str r5, [r3, #4]
00379b54  01 50 85 e2                                      add r5, r5, #1
00379b58  04 00 55 e1                                      cmp r5, r4
00379b5c  06 00 8a e7                                      str r0, [sl, r6]
00379b60  08 60 86 e2                                      add r6, r6, #8
00379b64  f4 ff ff 1a                                      bne #0x379b3c
00379b68  9c 61 9f e5                                      ldr r6, [pc, #0x19c]
00379b6c  06 60 8f e0                                      add r6, pc, r6
00379b70  0c 60 86 e2                                      add r6, r6, #0xc
00379b74  84 41 86 e0                                      add r4, r6, r4, lsl #3
00379b78  06 00 54 e1                                      cmp r4, r6
00379b7c  de ff ff 0a                                      beq #0x379afc
00379b80  04 60 66 e0                                      rsb r6, r6, r4
00379b84  c6 21 a0 e1                                      asr r2, r6, #3
00379b88  01 00 52 e3                                      cmp r2, #1
00379b8c  00 30 a0 03                                      moveq r3, #0
00379b90  05 00 00 0a                                      beq #0x379bac
00379b94  00 30 a0 e3                                      mov r3, #0
00379b98  c2 20 a0 e1                                      asr r2, r2, #1
00379b9c  01 00 52 e3                                      cmp r2, #1
00379ba0  01 30 83 e2                                      add r3, r3, #1
00379ba4  fb ff ff 1a                                      bne #0x379b98
00379ba8  83 30 a0 e1                                      lsl r3, r3, #1
00379bac  5c 51 9f e5                                      ldr r5, [pc, #0x15c]
00379bb0  00 c0 a0 e3                                      mov ip, #0
00379bb4  04 10 a0 e1                                      mov r1, r4
00379bb8  05 50 8f e0                                      add r5, pc, r5
00379bbc  0c 00 85 e2                                      add r0, r5, #0xc
00379bc0  00 20 a0 e3                                      mov r2, #0
00379bc4  00 c0 cd e5                                      strb ip, [sp]
00379bc8  17 fe ff eb                                      bl #0x37942c
00379bcc  87 00 56 e3                                      cmp r6, #0x87
00379bd0  1f 00 00 ca                                      bgt #0x379c54
00379bd4  14 50 85 e2                                      add r5, r5, #0x14
00379bd8  05 00 54 e1                                      cmp r4, r5
00379bdc  c6 ff ff 0a                                      beq #0x379afc
00379be0  08 60 8d e2                                      add r6, sp, #8
00379be4  00 30 95 e5                                      ldr r3, [r5]
00379be8  05 00 a0 e1                                      mov r0, r5
00379bec  06 10 a0 e1                                      mov r1, r6
00379bf0  08 30 8d e5                                      str r3, [sp, #8]
00379bf4  04 30 95 e5                                      ldr r3, [r5, #4]
00379bf8  00 20 a0 e3                                      mov r2, #0
00379bfc  08 50 85 e2                                      add r5, r5, #8
00379c00  0c 30 8d e5                                      str r3, [sp, #0xc]
00379c04  88 ff ff eb                                      bl #0x379a2c
00379c08  05 00 54 e1                                      cmp r4, r5
00379c0c  f4 ff ff 1a                                      bne #0x379be4
00379c10  b9 ff ff ea                                      b #0x379afc
00379c14  2c 90 84 e2                                      add sb, r4, #0x2c
00379c18  09 00 a0 e1                                      mov r0, sb
00379c1c  d2 52 fe eb                                      bl #0x30e76c
00379c20  00 00 50 e3                                      cmp r0, #0
00379c24  b2 ff ff 0a                                      beq #0x379af4
00379c28  28 60 84 e5                                      str r6, [r4, #0x28]
00379c2c  0c 60 84 e5                                      str r6, [r4, #0xc]
00379c30  10 60 84 e5                                      str r6, [r4, #0x10]
00379c34  14 60 84 e5                                      str r6, [r4, #0x14]
00379c38  18 60 84 e5                                      str r6, [r4, #0x18]
00379c3c  1c 60 84 e5                                      str r6, [r4, #0x1c]
00379c40  20 60 84 e5                                      str r6, [r4, #0x20]
00379c44  24 60 84 e5                                      str r6, [r4, #0x24]
00379c48  09 00 a0 e1                                      mov r0, sb
00379c4c  7a 53 fe eb                                      bl #0x30ea3c
00379c50  a7 ff ff ea                                      b #0x379af4
00379c54  14 60 85 e2                                      add r6, r5, #0x14
00379c58  10 70 8d e2                                      add r7, sp, #0x10
00379c5c  8c 50 85 e2                                      add r5, r5, #0x8c
00379c60  00 30 96 e5                                      ldr r3, [r6]
00379c64  06 00 a0 e1                                      mov r0, r6
00379c68  07 10 a0 e1                                      mov r1, r7
00379c6c  10 30 8d e5                                      str r3, [sp, #0x10]
00379c70  04 30 96 e5                                      ldr r3, [r6, #4]
00379c74  00 20 a0 e3                                      mov r2, #0
00379c78  08 60 86 e2                                      add r6, r6, #8
00379c7c  14 30 8d e5                                      str r3, [sp, #0x14]
00379c80  69 ff ff eb                                      bl #0x379a2c
00379c84  05 00 56 e1                                      cmp r6, r5
00379c88  f4 ff ff 1a                                      bne #0x379c60
00379c8c  80 50 9f e5                                      ldr r5, [pc, #0x80]
00379c90  05 50 8f e0                                      add r5, pc, r5
00379c94  8c 60 85 e2                                      add r6, r5, #0x8c
00379c98  06 00 54 e1                                      cmp r4, r6
00379c9c  96 ff ff 0a                                      beq #0x379afc
00379ca0  84 50 85 e2                                      add r5, r5, #0x84
00379ca4  08 c0 95 e5                                      ldr ip, [r5, #8]
00379ca8  0c 70 95 e5                                      ldr r7, [r5, #0xc]
00379cac  05 30 a0 e1                                      mov r3, r5
00379cb0  06 20 a0 e1                                      mov r2, r6
00379cb4  04 00 00 ea                                      b #0x379ccc
00379cb8  08 10 93 e5                                      ldr r1, [r3, #8]
00379cbc  00 10 82 e5                                      str r1, [r2]
00379cc0  0c 10 93 e5                                      ldr r1, [r3, #0xc]
00379cc4  04 10 82 e5                                      str r1, [r2, #4]
00379cc8  00 20 a0 e1                                      mov r2, r0
00379ccc  03 00 a0 e1                                      mov r0, r3
00379cd0  08 10 13 e4                                      ldr r1, [r3], #-8
00379cd4  01 00 5c e1                                      cmp ip, r1
00379cd8  f6 ff ff ca                                      bgt #0x379cb8
00379cdc  08 60 86 e2                                      add r6, r6, #8
00379ce0  06 00 54 e1                                      cmp r4, r6
00379ce4  00 c0 82 e5                                      str ip, [r2]
00379ce8  04 70 82 e5                                      str r7, [r2, #4]
00379cec  08 50 85 e2                                      add r5, r5, #8
00379cf0  eb ff ff 1a                                      bne #0x379ca4
00379cf4  80 ff ff ea                                      b #0x379afc
; mapping-symbol data/literal pool
00379cf8  dc 88 62 00 b4 af 61 00 b0 88 62 00 f4 37 00 00  .byte 0xdc, 0x88, 0x62, 0x00, 0xb4, 0xaf, 0x61, 0x00, 0xb0, 0x88, 0x62, 0x00, 0xf4, 0x37, 0x00, 0x00
00379d08  7c 88 62 00 44 88 62 00 f8 87 62 00 20 87 62 00  .byte 0x7c, 0x88, 0x62, 0x00, 0x44, 0x88, 0x62, 0x00, 0xf8, 0x87, 0x62, 0x00, 0x20, 0x87, 0x62, 0x00

; FUNCTION 0x00379d18, declared_size=228, range_size=228, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager13UpdateRankingE9EStatType
; demangled: PlayerStatManager::UpdateRanking(EStatType) const
; decoder-mode: arm
00379d18  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00379d1c  c4 a0 9f e5                                      ldr sl, [pc, #0xc4]
00379d20  c4 90 9f e5                                      ldr sb, [pc, #0xc4]
00379d24  20 d0 4d e2                                      sub sp, sp, #0x20
00379d28  0a a0 8f e0                                      add sl, pc, sl
00379d2c  09 30 9a e7                                      ldr r3, [sl, sb]
00379d30  01 20 a0 e3                                      mov r2, #1
00379d34  01 70 a0 e1                                      mov r7, r1
00379d38  00 30 93 e5                                      ldr r3, [r3]
00379d3c  00 60 a0 e1                                      mov r6, r0
00379d40  04 40 8d e2                                      add r4, sp, #4
00379d44  1c 30 8d e5                                      str r3, [sp, #0x1c]
00379d48  5d ff ff eb                                      bl #0x379ac4
00379d4c  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
00379d50  00 50 a0 e1                                      mov r5, r0
00379d54  03 80 9a e7                                      ldr r8, [sl, r3]
00379d58  08 00 a0 e1                                      mov r0, r8
00379d5c  c9 f6 fe eb                                      bl #0x337888
00379d60  8c 10 9f e5                                      ldr r1, [pc, #0x8c]
00379d64  0d 20 a0 e1                                      mov r2, sp
00379d68  04 00 a0 e1                                      mov r0, r4
00379d6c  01 10 8f e0                                      add r1, pc, r1
00379d70  dd 68 fe eb                                      bl #0x3140ec
00379d74  04 10 a0 e1                                      mov r1, r4
00379d78  08 00 a0 e1                                      mov r0, r8
00379d7c  41 f7 fe eb                                      bl #0x337a88
00379d80  04 00 a0 e1                                      mov r0, r4
00379d84  08 67 fe eb                                      bl #0x3139ac
00379d88  68 30 9f e5                                      ldr r3, [pc, #0x68]
00379d8c  03 30 9a e7                                      ldr r3, [sl, r3]
00379d90  40 00 93 e5                                      ldr r0, [r3, #0x40]
00379d94  83 ce ff eb                                      bl #0x36d7a8
00379d98  00 80 50 e2                                      subs r8, r0, #0
00379d9c  09 00 00 da                                      ble #0x379dc8
00379da0  00 40 a0 e3                                      mov r4, #0
00379da4  84 31 85 e0                                      add r3, r5, r4, lsl #3
00379da8  04 20 93 e5                                      ldr r2, [r3, #4]
00379dac  06 00 a0 e1                                      mov r0, r6
00379db0  04 30 a0 e1                                      mov r3, r4
00379db4  07 10 a0 e1                                      mov r1, r7
00379db8  01 40 84 e2                                      add r4, r4, #1
00379dbc  40 fe ff eb                                      bl #0x3796c4
00379dc0  08 00 54 e1                                      cmp r4, r8
00379dc4  f6 ff ff 1a                                      bne #0x379da4
00379dc8  09 30 9a e7                                      ldr r3, [sl, sb]
00379dcc  1c 20 9d e5                                      ldr r2, [sp, #0x1c]
00379dd0  00 30 93 e5                                      ldr r3, [r3]
00379dd4  03 00 52 e1                                      cmp r2, r3
00379dd8  01 00 00 1a                                      bne #0x379de4
00379ddc  20 d0 8d e2                                      add sp, sp, #0x20
00379de0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00379de4  49 51 fe eb                                      bl #0x30e310
; mapping-symbol data/literal pool
00379de8  68 ad 61 00 ac 40 00 00 84 08 00 00 44 7c 54 00  .byte 0x68, 0xad, 0x61, 0x00, 0xac, 0x40, 0x00, 0x00, 0x84, 0x08, 0x00, 0x00, 0x44, 0x7c, 0x54, 0x00
00379df8  f4 37 00 00                                      .byte 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00379dfc, declared_size=20, range_size=20, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager9GetLeaderE9EStatType
; demangled: PlayerStatManager::GetLeader(EStatType) const
; decoder-mode: arm
00379dfc  10 40 2d e9                                      push {r4, lr}
00379e00  00 20 a0 e3                                      mov r2, #0
00379e04  2e ff ff eb                                      bl #0x379ac4
00379e08  04 00 90 e5                                      ldr r0, [r0, #4]
00379e0c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00379e10, declared_size=88, range_size=88, mode=arm
; class-group: PlayerStatManager
; alias: _ZNK17PlayerStatManager18GetNumLeadingStatsEi
; demangled: PlayerStatManager::GetNumLeadingStats(int) const
; decoder-mode: arm
00379e10  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00379e14  00 40 a0 e3                                      mov r4, #0
00379e18  00 60 a0 e1                                      mov r6, r0
00379e1c  01 50 a0 e1                                      mov r5, r1
00379e20  04 70 a0 e1                                      mov r7, r4
00379e24  04 10 a0 e1                                      mov r1, r4
00379e28  06 00 a0 e1                                      mov r0, r6
00379e2c  f2 ff ff eb                                      bl #0x379dfc
00379e30  05 00 50 e1                                      cmp r0, r5
00379e34  04 00 00 0a                                      beq #0x379e4c
00379e38  01 40 84 e2                                      add r4, r4, #1
00379e3c  06 00 54 e3                                      cmp r4, #6
00379e40  f7 ff ff 1a                                      bne #0x379e24
00379e44  07 00 a0 e1                                      mov r0, r7
00379e48  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
00379e4c  04 10 a0 e1                                      mov r1, r4
00379e50  06 00 a0 e1                                      mov r0, r6
00379e54  05 20 a0 e1                                      mov r2, r5
00379e58  71 fe ff eb                                      bl #0x379824
00379e5c  00 00 50 e3                                      cmp r0, #0
00379e60  01 70 87 c2                                      addgt r7, r7, #1
00379e64  f3 ff ff ea                                      b #0x379e38
