; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00523570, declared_size=92, range_size=92, mode=arm
; class-group: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >
; alias: _ZNSt6vectorIN15SearchFailCache5EntryESaIS1_EED1Ev
; demangled: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >::~vector()
; decoder-mode: arm
00523570  10 40 2d e9                                      push {r4, lr}
00523574  00 40 a0 e1                                      mov r4, r0
00523578  00 00 90 e5                                      ldr r0, [r0]
0052357c  00 00 50 e3                                      cmp r0, #0
00523580  0c 00 00 0a                                      beq #0x5235b8
00523584  08 30 94 e5                                      ldr r3, [r4, #8]
00523588  03 30 60 e0                                      rsb r3, r0, r3
0052358c  43 31 a0 e1                                      asr r3, r3, #2
00523590  03 11 83 e0                                      add r1, r3, r3, lsl #2
00523594  01 12 81 e0                                      add r1, r1, r1, lsl #4
00523598  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052359c  01 18 81 e0                                      add r1, r1, r1, lsl #16
005235a0  81 30 83 e0                                      add r3, r3, r1, lsl #1
005235a4  0c 10 a0 e3                                      mov r1, #0xc
005235a8  91 03 01 e0                                      mul r1, r1, r3
005235ac  80 00 51 e3                                      cmp r1, #0x80
005235b0  02 00 00 8a                                      bhi #0x5235c0
005235b4  51 96 07 eb                                      bl #0x708f00
005235b8  04 00 a0 e1                                      mov r0, r4
005235bc  10 80 bd e8                                      pop {r4, pc}
005235c0  9e b3 f7 eb                                      bl #0x310440
005235c4  04 00 a0 e1                                      mov r0, r4
005235c8  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x005285b0, declared_size=696, range_size=696, mode=arm
; class-group: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >
; alias: _ZNSt6vectorIN15SearchFailCache5EntryESaIS1_EE18_M_fill_insert_auxEPS1_jRKS1_RKSt12__false_type
; demangled: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >::_M_fill_insert_aux(SearchFailCache::Entry*, unsigned int, SearchFailCache::Entry const&, std::__false_type const&)
; decoder-mode: arm
005285b0  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
005285b4  00 40 90 e5                                      ldr r4, [r0]
005285b8  18 d0 4d e2                                      sub sp, sp, #0x18
005285bc  00 c0 a0 e1                                      mov ip, r0
005285c0  04 00 53 e1                                      cmp r3, r4
005285c4  01 50 a0 e1                                      mov r5, r1
005285c8  02 40 a0 e1                                      mov r4, r2
005285cc  04 60 90 35                                      ldrlo r6, [r0, #4]
005285d0  10 00 00 3a                                      blo #0x528618
005285d4  04 60 90 e5                                      ldr r6, [r0, #4]
005285d8  06 00 53 e1                                      cmp r3, r6
005285dc  0d 00 00 2a                                      bhs #0x528618
005285e0  03 c0 a0 e1                                      mov ip, r3
005285e4  04 50 9c e4                                      ldr r5, [ip], #4
005285e8  04 40 93 e5                                      ldr r4, [r3, #4]
005285ec  18 30 8d e2                                      add r3, sp, #0x18
005285f0  04 e0 9c e5                                      ldr lr, [ip, #4]
005285f4  0c c0 8d e2                                      add ip, sp, #0xc
005285f8  04 40 8c e4                                      str r4, [ip], #4
005285fc  00 e0 8c e5                                      str lr, [ip]
00528600  10 50 23 e5                                      str r5, [r3, #-0x10]!
00528604  14 c0 8d e2                                      add ip, sp, #0x14
00528608  00 c0 8d e5                                      str ip, [sp]
0052860c  e7 ff ff eb                                      bl #0x5285b0
00528610  18 d0 8d e2                                      add sp, sp, #0x18
00528614  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00528618  06 20 65 e0                                      rsb r2, r5, r6
0052861c  42 21 a0 e1                                      asr r2, r2, #2
00528620  02 71 82 e0                                      add r7, r2, r2, lsl #2
00528624  07 72 87 e0                                      add r7, r7, r7, lsl #4
00528628  07 74 87 e0                                      add r7, r7, r7, lsl #8
0052862c  07 78 87 e0                                      add r7, r7, r7, lsl #16
00528630  87 70 82 e0                                      add r7, r2, r7, lsl #1
00528634  07 00 54 e1                                      cmp r4, r7
00528638  47 00 00 2a                                      bhs #0x52875c
0052863c  0c 20 a0 e3                                      mov r2, #0xc
00528640  92 04 04 e0                                      mul r4, r2, r4
00528644  44 21 a0 e1                                      asr r2, r4, #2
00528648  06 80 64 e0                                      rsb r8, r4, r6
0052864c  02 71 82 e0                                      add r7, r2, r2, lsl #2
00528650  07 72 87 e0                                      add r7, r7, r7, lsl #4
00528654  07 74 87 e0                                      add r7, r7, r7, lsl #8
00528658  07 78 87 e0                                      add r7, r7, r7, lsl #16
0052865c  87 70 82 e0                                      add r7, r2, r7, lsl #1
00528660  00 00 57 e3                                      cmp r7, #0
00528664  06 00 a0 d1                                      movle r0, r6
00528668  0e 00 00 da                                      ble #0x5286a8
0052866c  00 20 a0 e3                                      mov r2, #0
00528670  02 10 98 e7                                      ldr r1, [r8, r2]
00528674  02 00 88 e0                                      add r0, r8, r2
00528678  04 00 80 e2                                      add r0, r0, #4
0052867c  02 10 86 e7                                      str r1, [r6, r2]
00528680  04 a0 90 e4                                      ldr sl, [r0], #4
00528684  02 10 86 e0                                      add r1, r6, r2
00528688  04 10 81 e2                                      add r1, r1, #4
0052868c  04 a0 81 e4                                      str sl, [r1], #4
00528690  00 00 90 e5                                      ldr r0, [r0]
00528694  01 70 57 e2                                      subs r7, r7, #1
00528698  0c 20 82 e2                                      add r2, r2, #0xc
0052869c  00 00 81 e5                                      str r0, [r1]
005286a0  f2 ff ff 1a                                      bne #0x528670
005286a4  04 00 9c e5                                      ldr r0, [ip, #4]
005286a8  08 20 65 e0                                      rsb r2, r5, r8
005286ac  42 21 a0 e1                                      asr r2, r2, #2
005286b0  04 00 80 e0                                      add r0, r0, r4
005286b4  02 11 82 e0                                      add r1, r2, r2, lsl #2
005286b8  04 00 8c e5                                      str r0, [ip, #4]
005286bc  01 12 81 e0                                      add r1, r1, r1, lsl #4
005286c0  01 14 81 e0                                      add r1, r1, r1, lsl #8
005286c4  01 18 81 e0                                      add r1, r1, r1, lsl #16
005286c8  81 10 82 e0                                      add r1, r2, r1, lsl #1
005286cc  00 00 51 e3                                      cmp r1, #0
005286d0  0a 00 00 da                                      ble #0x528700
005286d4  08 20 a0 e1                                      mov r2, r8
005286d8  0c 00 12 e5                                      ldr r0, [r2, #-0xc]
005286dc  01 10 51 e2                                      subs r1, r1, #1
005286e0  0c 00 06 e5                                      str r0, [r6, #-0xc]
005286e4  08 00 12 e5                                      ldr r0, [r2, #-8]
005286e8  08 00 06 e5                                      str r0, [r6, #-8]
005286ec  04 00 12 e5                                      ldr r0, [r2, #-4]
005286f0  0c 20 42 e2                                      sub r2, r2, #0xc
005286f4  04 00 06 e5                                      str r0, [r6, #-4]
005286f8  0c 60 46 e2                                      sub r6, r6, #0xc
005286fc  f5 ff ff 1a                                      bne #0x5286d8
00528700  44 41 a0 e1                                      asr r4, r4, #2
00528704  04 21 84 e0                                      add r2, r4, r4, lsl #2
00528708  02 22 82 e0                                      add r2, r2, r2, lsl #4
0052870c  02 24 82 e0                                      add r2, r2, r2, lsl #8
00528710  02 28 82 e0                                      add r2, r2, r2, lsl #16
00528714  82 40 84 e0                                      add r4, r4, r2, lsl #1
00528718  00 00 54 e3                                      cmp r4, #0
0052871c  bb ff ff da                                      ble #0x528610
00528720  04 00 83 e2                                      add r0, r3, #4
00528724  00 10 a0 e3                                      mov r1, #0
00528728  04 60 80 e2                                      add r6, r0, #4
0052872c  00 c0 93 e5                                      ldr ip, [r3]
00528730  01 20 85 e0                                      add r2, r5, r1
00528734  04 20 82 e2                                      add r2, r2, #4
00528738  01 c0 85 e7                                      str ip, [r5, r1]
0052873c  00 c0 90 e5                                      ldr ip, [r0]
00528740  01 40 54 e2                                      subs r4, r4, #1
00528744  0c 10 81 e2                                      add r1, r1, #0xc
00528748  04 c0 82 e4                                      str ip, [r2], #4
0052874c  00 c0 96 e5                                      ldr ip, [r6]
00528750  00 c0 82 e5                                      str ip, [r2]
00528754  f4 ff ff 1a                                      bne #0x52872c
00528758  ac ff ff ea                                      b #0x528610
0052875c  0c 20 a0 e3                                      mov r2, #0xc
00528760  04 40 67 e0                                      rsb r4, r7, r4
00528764  92 64 24 e0                                      mla r4, r2, r4, r6
00528768  04 20 66 e0                                      rsb r2, r6, r4
0052876c  42 21 a0 e1                                      asr r2, r2, #2
00528770  02 81 82 e0                                      add r8, r2, r2, lsl #2
00528774  08 82 88 e0                                      add r8, r8, r8, lsl #4
00528778  08 84 88 e0                                      add r8, r8, r8, lsl #8
0052877c  08 88 88 e0                                      add r8, r8, r8, lsl #16
00528780  88 80 82 e0                                      add r8, r2, r8, lsl #1
00528784  00 00 58 e3                                      cmp r8, #0
00528788  0d 00 00 da                                      ble #0x5287c4
0052878c  04 00 83 e2                                      add r0, r3, #4
00528790  00 10 a0 e3                                      mov r1, #0
00528794  04 90 80 e2                                      add sb, r0, #4
00528798  00 a0 93 e5                                      ldr sl, [r3]
0052879c  01 20 86 e0                                      add r2, r6, r1
005287a0  04 20 82 e2                                      add r2, r2, #4
005287a4  01 a0 86 e7                                      str sl, [r6, r1]
005287a8  00 a0 90 e5                                      ldr sl, [r0]
005287ac  01 80 58 e2                                      subs r8, r8, #1
005287b0  0c 10 81 e2                                      add r1, r1, #0xc
005287b4  04 a0 82 e4                                      str sl, [r2], #4
005287b8  00 a0 99 e5                                      ldr sl, [sb]
005287bc  00 a0 82 e5                                      str sl, [r2]
005287c0  f4 ff ff 1a                                      bne #0x528798
005287c4  00 00 57 e3                                      cmp r7, #0
005287c8  04 40 8c e5                                      str r4, [ip, #4]
005287cc  21 00 00 da                                      ble #0x528858
005287d0  07 60 a0 e1                                      mov r6, r7
005287d4  00 20 a0 e3                                      mov r2, #0
005287d8  02 10 95 e7                                      ldr r1, [r5, r2]
005287dc  02 00 85 e0                                      add r0, r5, r2
005287e0  04 00 80 e2                                      add r0, r0, #4
005287e4  02 10 84 e7                                      str r1, [r4, r2]
005287e8  04 80 90 e4                                      ldr r8, [r0], #4
005287ec  02 10 84 e0                                      add r1, r4, r2
005287f0  04 10 81 e2                                      add r1, r1, #4
005287f4  04 80 81 e4                                      str r8, [r1], #4
005287f8  00 00 90 e5                                      ldr r0, [r0]
005287fc  01 60 56 e2                                      subs r6, r6, #1
00528800  0c 20 82 e2                                      add r2, r2, #0xc
00528804  00 00 81 e5                                      str r0, [r1]
00528808  f2 ff ff 1a                                      bne #0x5287d8
0052880c  04 20 9c e5                                      ldr r2, [ip, #4]
00528810  0c 10 a0 e3                                      mov r1, #0xc
00528814  04 00 83 e2                                      add r0, r3, #4
00528818  91 27 22 e0                                      mla r2, r1, r7, r2
0052881c  04 40 80 e2                                      add r4, r0, #4
00528820  06 10 a0 e1                                      mov r1, r6
00528824  04 20 8c e5                                      str r2, [ip, #4]
00528828  00 c0 93 e5                                      ldr ip, [r3]
0052882c  01 20 85 e0                                      add r2, r5, r1
00528830  04 20 82 e2                                      add r2, r2, #4
00528834  01 c0 85 e7                                      str ip, [r5, r1]
00528838  00 c0 90 e5                                      ldr ip, [r0]
0052883c  01 70 57 e2                                      subs r7, r7, #1
00528840  0c 10 81 e2                                      add r1, r1, #0xc
00528844  04 c0 82 e4                                      str ip, [r2], #4
00528848  00 c0 94 e5                                      ldr ip, [r4]
0052884c  00 c0 82 e5                                      str ip, [r2]
00528850  f4 ff ff 1a                                      bne #0x528828
00528854  6d ff ff ea                                      b #0x528610
00528858  0c 30 a0 e3                                      mov r3, #0xc
0052885c  93 47 24 e0                                      mla r4, r3, r7, r4
00528860  04 40 8c e5                                      str r4, [ip, #4]
00528864  69 ff ff ea                                      b #0x528610

; FUNCTION 0x00528aac, declared_size=128, range_size=128, mode=arm
; class-group: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >
; alias: _ZNSt6vectorIN15SearchFailCache5EntryESaIS1_EE20_M_compute_next_sizeEj
; demangled: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >::_M_compute_next_size(unsigned int)
; decoder-mode: arm
00528aac  70 40 2d e9                                      push {r4, r5, r6, lr}
00528ab0  14 00 90 e8                                      ldm r0, {r2, r4}
00528ab4  55 35 05 e3                                      movw r3, #0x5555
00528ab8  55 35 41 e3                                      movt r3, #0x1555
00528abc  04 20 62 e0                                      rsb r2, r2, r4
00528ac0  42 21 a0 e1                                      asr r2, r2, #2
00528ac4  01 50 a0 e1                                      mov r5, r1
00528ac8  02 41 82 e0                                      add r4, r2, r2, lsl #2
00528acc  04 42 84 e0                                      add r4, r4, r4, lsl #4
00528ad0  04 44 84 e0                                      add r4, r4, r4, lsl #8
00528ad4  04 48 84 e0                                      add r4, r4, r4, lsl #16
00528ad8  84 40 82 e0                                      add r4, r2, r4, lsl #1
00528adc  03 30 64 e0                                      rsb r3, r4, r3
00528ae0  01 00 53 e1                                      cmp r3, r1
00528ae4  0b 00 00 3a                                      blo #0x528b18
00528ae8  55 35 05 e3                                      movw r3, #0x5555
00528aec  05 00 54 e1                                      cmp r4, r5
00528af0  04 00 84 20                                      addhs r0, r4, r4
00528af4  05 00 84 30                                      addlo r0, r4, r5
00528af8  03 37 83 e1                                      orr r3, r3, r3, lsl #14
00528afc  03 00 50 e1                                      cmp r0, r3
00528b00  01 00 00 8a                                      bhi #0x528b0c
00528b04  04 00 50 e1                                      cmp r0, r4
00528b08  01 00 00 2a                                      bhs #0x528b14
00528b0c  55 05 05 e3                                      movw r0, #0x5555
00528b10  00 07 80 e1                                      orr r0, r0, r0, lsl #14
00528b14  70 80 bd e8                                      pop {r4, r5, r6, pc}
00528b18  08 00 9f e5                                      ldr r0, [pc, #8]
00528b1c  00 00 8f e0                                      add r0, pc, r0
00528b20  c6 80 07 eb                                      bl #0x708e40
00528b24  ef ff ff ea                                      b #0x528ae8
; mapping-symbol data/literal pool
00528b28  4c 59 39 00                                      .byte 0x4c, 0x59, 0x39, 0x00

; FUNCTION 0x0052a23c, declared_size=604, range_size=604, mode=arm
; class-group: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >
; alias: _ZNSt6vectorIN15SearchFailCache5EntryESaIS1_EE22_M_insert_overflow_auxEPS1_RKS1_RKSt12__false_typejb
; demangled: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >::_M_insert_overflow_aux(SearchFailCache::Entry*, SearchFailCache::Entry const&, std::__false_type const&, unsigned int, bool)
; decoder-mode: arm
0052a23c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0052a240  0c d0 4d e2                                      sub sp, sp, #0xc
0052a244  30 70 9d e5                                      ldr r7, [sp, #0x30]
0052a248  01 40 a0 e1                                      mov r4, r1
0052a24c  00 60 a0 e1                                      mov r6, r0
0052a250  07 10 a0 e1                                      mov r1, r7
0052a254  02 50 a0 e1                                      mov r5, r2
0052a258  34 b0 dd e5                                      ldrb fp, [sp, #0x34]
0052a25c  12 fa ff eb                                      bl #0x528aac
0052a260  08 20 8d e2                                      add r2, sp, #8
0052a264  00 10 a0 e1                                      mov r1, r0
0052a268  04 00 22 e5                                      str r0, [r2, #-4]!
0052a26c  08 00 86 e2                                      add r0, r6, #8
0052a270  ad ff ff eb                                      bl #0x52a12c
0052a274  00 c0 96 e5                                      ldr ip, [r6]
0052a278  00 80 a0 e1                                      mov r8, r0
0052a27c  04 30 6c e0                                      rsb r3, ip, r4
0052a280  43 31 a0 e1                                      asr r3, r3, #2
0052a284  03 91 83 e0                                      add sb, r3, r3, lsl #2
0052a288  09 92 89 e0                                      add sb, sb, sb, lsl #4
0052a28c  09 94 89 e0                                      add sb, sb, sb, lsl #8
0052a290  09 98 89 e0                                      add sb, sb, sb, lsl #16
0052a294  89 90 83 e0                                      add sb, r3, sb, lsl #1
0052a298  00 00 59 e3                                      cmp sb, #0
0052a29c  00 00 a0 d1                                      movle r0, r0
0052a2a0  10 00 00 da                                      ble #0x52a2e8
0052a2a4  09 00 a0 e1                                      mov r0, sb
0052a2a8  00 30 a0 e3                                      mov r3, #0
0052a2ac  03 20 9c e7                                      ldr r2, [ip, r3]
0052a2b0  03 10 8c e0                                      add r1, ip, r3
0052a2b4  04 10 81 e2                                      add r1, r1, #4
0052a2b8  03 20 88 e7                                      str r2, [r8, r3]
0052a2bc  04 a0 91 e4                                      ldr sl, [r1], #4
0052a2c0  03 20 88 e0                                      add r2, r8, r3
0052a2c4  04 20 82 e2                                      add r2, r2, #4
0052a2c8  04 a0 82 e4                                      str sl, [r2], #4
0052a2cc  00 10 91 e5                                      ldr r1, [r1]
0052a2d0  01 00 50 e2                                      subs r0, r0, #1
0052a2d4  0c 30 83 e2                                      add r3, r3, #0xc
0052a2d8  00 10 82 e5                                      str r1, [r2]
0052a2dc  f2 ff ff 1a                                      bne #0x52a2ac
0052a2e0  0c 00 a0 e3                                      mov r0, #0xc
0052a2e4  90 89 20 e0                                      mla r0, r0, sb, r8
0052a2e8  01 00 57 e3                                      cmp r7, #1
0052a2ec  5f 00 00 0a                                      beq #0x52a470
0052a2f0  0c 30 a0 e3                                      mov r3, #0xc
0052a2f4  93 07 27 e0                                      mla r7, r3, r7, r0
0052a2f8  07 30 60 e0                                      rsb r3, r0, r7
0052a2fc  43 31 a0 e1                                      asr r3, r3, #2
0052a300  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052a304  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052a308  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052a30c  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052a310  81 10 83 e0                                      add r1, r3, r1, lsl #1
0052a314  00 00 51 e3                                      cmp r1, #0
0052a318  0d 00 00 da                                      ble #0x52a354
0052a31c  04 a0 85 e2                                      add sl, r5, #4
0052a320  00 20 a0 e3                                      mov r2, #0
0052a324  04 90 8a e2                                      add sb, sl, #4
0052a328  00 c0 95 e5                                      ldr ip, [r5]
0052a32c  02 30 80 e0                                      add r3, r0, r2
0052a330  04 30 83 e2                                      add r3, r3, #4
0052a334  02 c0 80 e7                                      str ip, [r0, r2]
0052a338  00 c0 9a e5                                      ldr ip, [sl]
0052a33c  01 10 51 e2                                      subs r1, r1, #1
0052a340  0c 20 82 e2                                      add r2, r2, #0xc
0052a344  04 c0 83 e4                                      str ip, [r3], #4
0052a348  00 c0 99 e5                                      ldr ip, [sb]
0052a34c  00 c0 83 e5                                      str ip, [r3]
0052a350  f4 ff ff 1a                                      bne #0x52a328
0052a354  00 00 5b e3                                      cmp fp, #0
0052a358  19 00 00 1a                                      bne #0x52a3c4
0052a35c  04 30 96 e5                                      ldr r3, [r6, #4]
0052a360  03 20 64 e0                                      rsb r2, r4, r3
0052a364  42 21 a0 e1                                      asr r2, r2, #2
0052a368  02 c1 82 e0                                      add ip, r2, r2, lsl #2
0052a36c  0c c2 8c e0                                      add ip, ip, ip, lsl #4
0052a370  0c c4 8c e0                                      add ip, ip, ip, lsl #8
0052a374  0c c8 8c e0                                      add ip, ip, ip, lsl #16
0052a378  8c c0 82 e0                                      add ip, r2, ip, lsl #1
0052a37c  00 00 5c e3                                      cmp ip, #0
0052a380  10 00 00 da                                      ble #0x52a3c8
0052a384  0c 10 a0 e1                                      mov r1, ip
0052a388  0b 30 94 e7                                      ldr r3, [r4, fp]
0052a38c  0b 20 84 e0                                      add r2, r4, fp
0052a390  04 20 82 e2                                      add r2, r2, #4
0052a394  0b 30 87 e7                                      str r3, [r7, fp]
0052a398  04 00 92 e4                                      ldr r0, [r2], #4
0052a39c  0b 30 87 e0                                      add r3, r7, fp
0052a3a0  04 30 83 e2                                      add r3, r3, #4
0052a3a4  04 00 83 e4                                      str r0, [r3], #4
0052a3a8  00 20 92 e5                                      ldr r2, [r2]
0052a3ac  01 10 51 e2                                      subs r1, r1, #1
0052a3b0  0c b0 8b e2                                      add fp, fp, #0xc
0052a3b4  00 20 83 e5                                      str r2, [r3]
0052a3b8  f2 ff ff 1a                                      bne #0x52a388
0052a3bc  0c 30 a0 e3                                      mov r3, #0xc
0052a3c0  93 7c 27 e0                                      mla r7, r3, ip, r7
0052a3c4  04 30 96 e5                                      ldr r3, [r6, #4]
0052a3c8  00 00 96 e5                                      ldr r0, [r6]
0052a3cc  00 00 53 e1                                      cmp r3, r0
0052a3d0  0e 00 00 0a                                      beq #0x52a410
0052a3d4  0c 20 43 e2                                      sub r2, r3, #0xc
0052a3d8  02 20 60 e0                                      rsb r2, r0, r2
0052a3dc  22 21 a0 e1                                      lsr r2, r2, #2
0052a3e0  02 11 82 e0                                      add r1, r2, r2, lsl #2
0052a3e4  81 12 81 e0                                      add r1, r1, r1, lsl #5
0052a3e8  81 10 82 e0                                      add r1, r2, r1, lsl #1
0052a3ec  81 12 81 e0                                      add r1, r1, r1, lsl #5
0052a3f0  81 c7 a0 e1                                      lsl ip, r1, #0xf
0052a3f4  0c 10 61 e0                                      rsb r1, r1, ip
0052a3f8  81 20 82 e0                                      add r2, r2, r1, lsl #1
0052a3fc  03 21 c2 e3                                      bic r2, r2, #0xc0000000
0052a400  0b 10 e0 e3                                      mvn r1, #0xb
0052a404  91 02 02 e0                                      mul r2, r1, r2
0052a408  01 20 82 e0                                      add r2, r2, r1
0052a40c  02 30 83 e0                                      add r3, r3, r2
0052a410  00 00 53 e3                                      cmp r3, #0
0052a414  08 20 96 e5                                      ldr r2, [r6, #8]
0052a418  0b 00 00 0a                                      beq #0x52a44c
0052a41c  02 30 63 e0                                      rsb r3, r3, r2
0052a420  43 31 a0 e1                                      asr r3, r3, #2
0052a424  03 11 83 e0                                      add r1, r3, r3, lsl #2
0052a428  01 12 81 e0                                      add r1, r1, r1, lsl #4
0052a42c  01 14 81 e0                                      add r1, r1, r1, lsl #8
0052a430  01 18 81 e0                                      add r1, r1, r1, lsl #16
0052a434  81 30 83 e0                                      add r3, r3, r1, lsl #1
0052a438  0c 10 a0 e3                                      mov r1, #0xc
0052a43c  91 03 01 e0                                      mul r1, r1, r3
0052a440  80 00 51 e3                                      cmp r1, #0x80
0052a444  07 00 00 8a                                      bhi #0x52a468
0052a448  ac 7a 07 eb                                      bl #0x708f00
0052a44c  04 30 9d e5                                      ldr r3, [sp, #4]
0052a450  0c 20 a0 e3                                      mov r2, #0xc
0052a454  00 80 86 e5                                      str r8, [r6]
0052a458  92 83 28 e0                                      mla r8, r2, r3, r8
0052a45c  80 01 86 e9                                      stmib r6, {r7, r8}
0052a460  0c d0 8d e2                                      add sp, sp, #0xc
0052a464  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0052a468  f4 97 f7 eb                                      bl #0x310440
0052a46c  f6 ff ff ea                                      b #0x52a44c
0052a470  05 20 a0 e1                                      mov r2, r5
0052a474  04 10 92 e4                                      ldr r1, [r2], #4
0052a478  00 30 a0 e1                                      mov r3, r0
0052a47c  0c 70 80 e2                                      add r7, r0, #0xc
0052a480  04 10 83 e4                                      str r1, [r3], #4
0052a484  04 10 95 e5                                      ldr r1, [r5, #4]
0052a488  04 10 80 e5                                      str r1, [r0, #4]
0052a48c  04 20 92 e5                                      ldr r2, [r2, #4]
0052a490  04 20 83 e5                                      str r2, [r3, #4]
0052a494  ae ff ff ea                                      b #0x52a354

; FUNCTION 0x0052a498, declared_size=108, range_size=108, mode=arm
; class-group: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >
; alias: _ZNSt6vectorIN15SearchFailCache5EntryESaIS1_EE14_M_fill_insertEPS1_jRKS1_
; demangled: std::vector<SearchFailCache::Entry, std::allocator<SearchFailCache::Entry> >::_M_fill_insert(SearchFailCache::Entry*, unsigned int, SearchFailCache::Entry const&)
; decoder-mode: arm
0052a498  30 40 2d e9                                      push {r4, r5, lr}
0052a49c  00 40 52 e2                                      subs r4, r2, #0
0052a4a0  14 d0 4d e2                                      sub sp, sp, #0x14
0052a4a4  03 50 a0 e1                                      mov r5, r3
0052a4a8  0f 00 00 0a                                      beq #0x52a4ec
0052a4ac  04 e0 90 e5                                      ldr lr, [r0, #4]
0052a4b0  08 c0 90 e5                                      ldr ip, [r0, #8]
0052a4b4  0c c0 6e e0                                      rsb ip, lr, ip
0052a4b8  4c c1 a0 e1                                      asr ip, ip, #2
0052a4bc  0c e1 8c e0                                      add lr, ip, ip, lsl #2
0052a4c0  0e e2 8e e0                                      add lr, lr, lr, lsl #4
0052a4c4  0e e4 8e e0                                      add lr, lr, lr, lsl #8
0052a4c8  0e e8 8e e0                                      add lr, lr, lr, lsl #16
0052a4cc  8e c0 8c e0                                      add ip, ip, lr, lsl #1
0052a4d0  0c 00 54 e1                                      cmp r4, ip
0052a4d4  06 00 00 9a                                      bls #0x52a4f4
0052a4d8  03 20 a0 e1                                      mov r2, r3
0052a4dc  00 c0 a0 e3                                      mov ip, #0
0052a4e0  08 30 8d e2                                      add r3, sp, #8
0052a4e4  10 10 8d e8                                      stm sp, {r4, ip}
0052a4e8  53 ff ff eb                                      bl #0x52a23c
0052a4ec  14 d0 8d e2                                      add sp, sp, #0x14
0052a4f0  30 80 bd e8                                      pop {r4, r5, pc}
0052a4f4  0c c0 8d e2                                      add ip, sp, #0xc
0052a4f8  00 c0 8d e5                                      str ip, [sp]
0052a4fc  2b f8 ff eb                                      bl #0x5285b0
0052a500  f9 ff ff ea                                      b #0x52a4ec
