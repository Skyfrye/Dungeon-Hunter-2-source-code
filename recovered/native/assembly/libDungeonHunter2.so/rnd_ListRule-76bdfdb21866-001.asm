; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x0048ec74, declared_size=184, range_size=184, mode=arm
; class-group: rnd::ListRule
; alias: _ZN3rnd8ListRule7ReplaceERNS_8ListElemE
; demangled: rnd::ListRule::Replace(rnd::ListElem&)
; decoder-mode: arm
0048ec74  30 40 2d e9                                      push {r4, r5, lr}
0048ec78  18 20 d0 e5                                      ldrb r2, [r0, #0x18]
0048ec7c  90 30 9f e5                                      ldr r3, [pc, #0x90]
0048ec80  0c d0 4d e2                                      sub sp, sp, #0xc
0048ec84  00 00 52 e3                                      cmp r2, #0
0048ec88  00 40 a0 e1                                      mov r4, r0
0048ec8c  01 50 a0 e1                                      mov r5, r1
0048ec90  03 30 8f e0                                      add r3, pc, r3
0048ec94  0f 00 00 1a                                      bne #0x48ecd8
0048ec98  00 10 91 e5                                      ldr r1, [r1]
0048ec9c  00 00 51 e1                                      cmp r1, r0
0048eca0  07 00 00 0a                                      beq #0x48ecc4
0048eca4  6c 10 9f e5                                      ldr r1, [pc, #0x6c]
0048eca8  01 10 93 e7                                      ldr r1, [r3, r1]
0048ecac  00 10 91 e5                                      ldr r1, [r1]
0048ecb0  02 00 51 e3                                      cmp r1, #2
0048ecb4  00 20 82 05                                      streq r2, [r2]
0048ecb8  01 00 00 0a                                      beq #0x48ecc4
0048ecbc  01 00 51 e3                                      cmp r1, #1
0048ecc0  06 00 00 0a                                      beq #0x48ece0
0048ecc4  1c 00 84 e2                                      add r0, r4, #0x1c
0048ecc8  05 10 a0 e1                                      mov r1, r5
0048eccc  0c d0 8d e2                                      add sp, sp, #0xc
0048ecd0  30 40 bd e8                                      pop {r4, r5, lr}
0048ecd4  9d ff ff ea                                      b #0x48eb50
0048ecd8  0c d0 8d e2                                      add sp, sp, #0xc
0048ecdc  30 80 bd e8                                      pop {r4, r5, pc}
0048ece0  34 00 9f e5                                      ldr r0, [pc, #0x34]
0048ece4  34 10 9f e5                                      ldr r1, [pc, #0x34]
0048ece8  34 20 9f e5                                      ldr r2, [pc, #0x34]
0048ecec  00 00 93 e7                                      ldr r0, [r3, r0]
0048ecf0  30 30 9f e5                                      ldr r3, [pc, #0x30]
0048ecf4  7f c0 a0 e3                                      mov ip, #0x7f
0048ecf8  01 10 8f e0                                      add r1, pc, r1
0048ecfc  02 20 8f e0                                      add r2, pc, r2
0048ed00  03 30 8f e0                                      add r3, pc, r3
0048ed04  a8 00 80 e2                                      add r0, r0, #0xa8
0048ed08  00 c0 8d e5                                      str ip, [sp]
0048ed0c  bc fc f9 eb                                      bl #0x30e004
0048ed10  eb ff ff ea                                      b #0x48ecc4
; mapping-symbol data/literal pool
0048ed14  00 5e 50 00 c0 39 00 00 c0 19 00 00 e0 f6 42 00  .byte 0x00, 0x5e, 0x50, 0x00, 0xc0, 0x39, 0x00, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xe0, 0xf6, 0x42, 0x00
0048ed24  94 61 44 00 28 61 44 00                          .byte 0x94, 0x61, 0x44, 0x00, 0x28, 0x61, 0x44, 0x00

; FUNCTION 0x0048ed2c, declared_size=508, range_size=508, mode=arm
; class-group: rnd::ListRule
; alias: _ZN3rnd8ListRule11LoadFromXmlEP9TiXmlNode
; demangled: rnd::ListRule::LoadFromXml(TiXmlNode*)
; decoder-mode: arm
0048ed2c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0048ed30  c0 a1 9f e5                                      ldr sl, [pc, #0x1c0]
0048ed34  c0 b1 9f e5                                      ldr fp, [pc, #0x1c0]
0048ed38  74 d0 4d e2                                      sub sp, sp, #0x74
0048ed3c  0a a0 8f e0                                      add sl, pc, sl
0048ed40  0b 20 9a e7                                      ldr r2, [sl, fp]
0048ed44  00 30 91 e5                                      ldr r3, [r1]
0048ed48  00 60 a0 e1                                      mov r6, r0
0048ed4c  00 20 92 e5                                      ldr r2, [r2]
0048ed50  01 00 a0 e1                                      mov r0, r1
0048ed54  01 40 a0 e1                                      mov r4, r1
0048ed58  6c 20 8d e5                                      str r2, [sp, #0x6c]
0048ed5c  0f e0 a0 e1                                      mov lr, pc
0048ed60  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
0048ed64  00 70 50 e2                                      subs r7, r0, #0
0048ed68  1b 00 00 0a                                      beq #0x48eddc
0048ed6c  8c 11 9f e5                                      ldr r1, [pc, #0x18c]
0048ed70  01 10 8f e0                                      add r1, pc, r1
0048ed74  bd 17 02 eb                                      bl #0x514c70
0048ed78  00 10 a0 e3                                      mov r1, #0
0048ed7c  00 50 a0 e1                                      mov r5, r0
0048ed80  00 20 e0 e3                                      mvn r2, #0
0048ed84  a2 fd fa eb                                      bl #0x34e414
0048ed88  00 00 55 e3                                      cmp r5, #0
0048ed8c  54 00 00 0a                                      beq #0x48eee4
0048ed90  05 00 a0 e1                                      mov r0, r5
0048ed94  2e fc f9 eb                                      bl #0x30de54
0048ed98  00 20 85 e0                                      add r2, r5, r0
0048ed9c  05 10 a0 e1                                      mov r1, r5
0048eda0  06 00 a0 e1                                      mov r0, r6
0048eda4  0d 07 fa eb                                      bl #0x3109e0
0048eda8  54 11 9f e5                                      ldr r1, [pc, #0x154]
0048edac  07 00 a0 e1                                      mov r0, r7
0048edb0  01 10 8f e0                                      add r1, pc, r1
0048edb4  ad 17 02 eb                                      bl #0x514c70
0048edb8  00 00 50 e3                                      cmp r0, #0
0048edbc  01 00 a0 03                                      moveq r0, #1
0048edc0  04 00 00 0a                                      beq #0x48edd8
0048edc4  3c 11 9f e5                                      ldr r1, [pc, #0x13c]
0048edc8  01 10 8f e0                                      add r1, pc, r1
0048edcc  52 fd f9 eb                                      bl #0x30e31c
0048edd0  01 00 70 e2                                      rsbs r0, r0, #1
0048edd4  00 00 a0 33                                      movlo r0, #0
0048edd8  18 00 c6 e5                                      strb r0, [r6, #0x18]
0048eddc  28 71 9f e5                                      ldr r7, [pc, #0x128]
0048ede0  04 00 a0 e1                                      mov r0, r4
0048ede4  07 70 8f e0                                      add r7, pc, r7
0048ede8  07 10 a0 e1                                      mov r1, r7
0048edec  e9 17 02 eb                                      bl #0x514d98
0048edf0  00 50 50 e2                                      subs r5, r0, #0
0048edf4  29 00 00 0a                                      beq #0x48eea0
0048edf8  10 31 9f e5                                      ldr r3, [pc, #0x110]
0048edfc  10 91 9f e5                                      ldr sb, [pc, #0x110]
0048ee00  1c 80 86 e2                                      add r8, r6, #0x1c
0048ee04  08 30 8d e5                                      str r3, [sp, #8]
0048ee08  08 31 9f e5                                      ldr r3, [pc, #0x108]
0048ee0c  1c 40 8d e2                                      add r4, sp, #0x1c
0048ee10  03 30 8f e0                                      add r3, pc, r3
0048ee14  0c 30 8d e5                                      str r3, [sp, #0xc]
0048ee18  fc 30 9f e5                                      ldr r3, [pc, #0xfc]
0048ee1c  03 30 8f e0                                      add r3, pc, r3
0048ee20  10 30 8d e5                                      str r3, [sp, #0x10]
0048ee24  f4 30 9f e5                                      ldr r3, [pc, #0xf4]
0048ee28  03 30 8f e0                                      add r3, pc, r3
0048ee2c  14 30 8d e5                                      str r3, [sp, #0x14]
0048ee30  06 10 a0 e1                                      mov r1, r6
0048ee34  04 00 a0 e1                                      mov r0, r4
0048ee38  ba fc ff eb                                      bl #0x48e128
0048ee3c  04 00 a0 e1                                      mov r0, r4
0048ee40  05 10 a0 e1                                      mov r1, r5
0048ee44  b4 f5 ff eb                                      bl #0x48c51c
0048ee48  28 00 96 e5                                      ldr r0, [r6, #0x28]
0048ee4c  34 10 9d e5                                      ldr r1, [sp, #0x34]
0048ee50  de d5 ff eb                                      bl #0x4845d0
0048ee54  00 00 50 e3                                      cmp r0, #0
0048ee58  06 00 00 1a                                      bne #0x48ee78
0048ee5c  09 30 9a e7                                      ldr r3, [sl, sb]
0048ee60  00 30 93 e5                                      ldr r3, [r3]
0048ee64  02 00 53 e3                                      cmp r3, #2
0048ee68  00 00 80 05                                      streq r0, [r0]
0048ee6c  01 00 00 0a                                      beq #0x48ee78
0048ee70  01 00 53 e3                                      cmp r3, #1
0048ee74  10 00 00 0a                                      beq #0x48eebc
0048ee78  04 10 a0 e1                                      mov r1, r4
0048ee7c  08 00 a0 e1                                      mov r0, r8
0048ee80  32 ff ff eb                                      bl #0x48eb50
0048ee84  04 00 a0 e1                                      mov r0, r4
0048ee88  d0 e4 ff eb                                      bl #0x4881d0
0048ee8c  05 00 a0 e1                                      mov r0, r5
0048ee90  07 10 a0 e1                                      mov r1, r7
0048ee94  8b 17 02 eb                                      bl #0x514cc8
0048ee98  00 50 50 e2                                      subs r5, r0, #0
0048ee9c  e3 ff ff 1a                                      bne #0x48ee30
0048eea0  0b 30 9a e7                                      ldr r3, [sl, fp]
0048eea4  6c 20 9d e5                                      ldr r2, [sp, #0x6c]
0048eea8  00 30 93 e5                                      ldr r3, [r3]
0048eeac  03 00 52 e1                                      cmp r2, r3
0048eeb0  0f 00 00 1a                                      bne #0x48eef4
0048eeb4  74 d0 8d e2                                      add sp, sp, #0x74
0048eeb8  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0048eebc  08 30 9d e5                                      ldr r3, [sp, #8]
0048eec0  59 c0 a0 e3                                      mov ip, #0x59
0048eec4  0c 10 9d e5                                      ldr r1, [sp, #0xc]
0048eec8  03 00 9a e7                                      ldr r0, [sl, r3]
0048eecc  10 20 9d e5                                      ldr r2, [sp, #0x10]
0048eed0  14 30 9d e5                                      ldr r3, [sp, #0x14]
0048eed4  a8 00 80 e2                                      add r0, r0, #0xa8
0048eed8  00 c0 8d e5                                      str ip, [sp]
0048eedc  48 fc f9 eb                                      bl #0x30e004
0048eee0  e4 ff ff ea                                      b #0x48ee78
0048eee4  05 00 a0 e1                                      mov r0, r5
0048eee8  34 50 9f e5                                      ldr r5, [pc, #0x34]
0048eeec  05 50 8f e0                                      add r5, pc, r5
0048eef0  a8 ff ff ea                                      b #0x48ed98
0048eef4  05 fd f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
0048eef8  54 5d 50 00 ac 40 00 00 78 23 45 00 f8 60 44 00  .byte 0x54, 0x5d, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00, 0x78, 0x23, 0x45, 0x00, 0xf8, 0x60, 0x44, 0x00
0048ef08  28 fb 42 00 2c 60 44 00 c0 19 00 00 c0 39 00 00  .byte 0x28, 0xfb, 0x42, 0x00, 0x2c, 0x60, 0x44, 0x00, 0xc0, 0x19, 0x00, 0x00, 0xc0, 0x39, 0x00, 0x00
0048ef18  c8 f5 42 00 9c 60 44 00 00 60 44 00 1c c9 43 00  .byte 0xc8, 0xf5, 0x42, 0x00, 0x9c, 0x60, 0x44, 0x00, 0x00, 0x60, 0x44, 0x00, 0x1c, 0xc9, 0x43, 0x00

; FUNCTION 0x004905d0, declared_size=236, range_size=236, mode=arm
; class-group: rnd::ListRule
; alias: _ZN3rnd8ListRule4FindEPKcS2_S2_b
; demangled: rnd::ListRule::Find(char const*, char const*, char const*, bool)
; decoder-mode: arm
004905d0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
004905d4  d8 40 9f e5                                      ldr r4, [pc, #0xd8]
004905d8  d8 70 9f e5                                      ldr r7, [pc, #0xd8]
004905dc  5c d0 4d e2                                      sub sp, sp, #0x5c
004905e0  04 40 8f e0                                      add r4, pc, r4
004905e4  07 c0 94 e7                                      ldr ip, [r4, r7]
004905e8  80 90 9d e5                                      ldr sb, [sp, #0x80]
004905ec  03 a0 a0 e1                                      mov sl, r3
004905f0  02 b0 a0 e1                                      mov fp, r2
004905f4  84 30 dd e5                                      ldrb r3, [sp, #0x84]
004905f8  00 20 9c e5                                      ldr r2, [ip]
004905fc  01 50 a0 e1                                      mov r5, r1
00490600  04 30 8d e5                                      str r3, [sp, #4]
00490604  54 20 8d e5                                      str r2, [sp, #0x54]
00490608  00 80 a0 e1                                      mov r8, r0
0049060c  9b f6 ff eb                                      bl #0x48e080
00490610  09 30 a0 e1                                      mov r3, sb
00490614  0a 20 a0 e1                                      mov r2, sl
00490618  20 90 95 e5                                      ldr sb, [r5, #0x20]
0049061c  1c a0 95 e5                                      ldr sl, [r5, #0x1c]
00490620  0c 60 8d e2                                      add r6, sp, #0xc
00490624  0b 10 a0 e1                                      mov r1, fp
00490628  06 00 a0 e1                                      mov r0, r6
0049062c  ab f6 ff eb                                      bl #0x48e0e0
00490630  0a 00 a0 e1                                      mov r0, sl
00490634  09 10 a0 e1                                      mov r1, sb
00490638  06 20 a0 e1                                      mov r2, r6
0049063c  c3 ff ff eb                                      bl #0x490550
00490640  00 a0 a0 e1                                      mov sl, r0
00490644  06 00 a0 e1                                      mov r0, r6
00490648  43 f5 ff eb                                      bl #0x48db5c
0049064c  20 30 95 e5                                      ldr r3, [r5, #0x20]
00490650  03 00 5a e1                                      cmp sl, r3
00490654  08 00 00 0a                                      beq #0x49067c
00490658  08 00 a0 e1                                      mov r0, r8
0049065c  0a 10 a0 e1                                      mov r1, sl
00490660  95 ee ff eb                                      bl #0x48c0bc
00490664  04 30 9d e5                                      ldr r3, [sp, #4]
00490668  00 00 53 e3                                      cmp r3, #0
0049066c  02 00 00 0a                                      beq #0x49067c
00490670  18 30 d5 e5                                      ldrb r3, [r5, #0x18]
00490674  00 00 53 e3                                      cmp r3, #0
00490678  07 00 00 0a                                      beq #0x49069c
0049067c  07 30 94 e7                                      ldr r3, [r4, r7]
00490680  54 20 9d e5                                      ldr r2, [sp, #0x54]
00490684  08 00 a0 e1                                      mov r0, r8
00490688  00 30 93 e5                                      ldr r3, [r3]
0049068c  03 00 52 e1                                      cmp r2, r3
00490690  06 00 00 1a                                      bne #0x4906b0
00490694  5c d0 8d e2                                      add sp, sp, #0x5c
00490698  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0049069c  1c 00 85 e2                                      add r0, r5, #0x1c
004906a0  0a 10 a0 e1                                      mov r1, sl
004906a4  08 20 8d e2                                      add r2, sp, #8
004906a8  0e f5 ff eb                                      bl #0x48dae8
004906ac  f2 ff ff ea                                      b #0x49067c
004906b0  16 f7 f9 eb                                      bl #0x30e310
; mapping-symbol data/literal pool
004906b4  b0 44 50 00 ac 40 00 00                          .byte 0xb0, 0x44, 0x50, 0x00, 0xac, 0x40, 0x00, 0x00
