; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00894904, declared_size=124, range_size=124, mode=arm
; class-group: vox::SZipFileEntry
; alias: _ZN3vox13SZipFileEntryC1ERKS0_
; demangled: vox::SZipFileEntry::SZipFileEntry(vox::SZipFileEntry const&)
; decoder-mode: arm
00894904  70 40 2d e9                                      push {r4, r5, r6, lr}
00894908  00 40 a0 e1                                      mov r4, r0
0089490c  01 50 a0 e1                                      mov r5, r1
00894910  10 00 84 e5                                      str r0, [r4, #0x10]
00894914  14 00 84 e5                                      str r0, [r4, #0x14]
00894918  10 20 95 e5                                      ldr r2, [r5, #0x10]
0089491c  14 10 91 e5                                      ldr r1, [r1, #0x14]
00894920  72 6a ff eb                                      bl #0x86f2f0
00894924  18 00 84 e2                                      add r0, r4, #0x18
00894928  28 00 84 e5                                      str r0, [r4, #0x28]
0089492c  2c 00 84 e5                                      str r0, [r4, #0x2c]
00894930  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00894934  28 20 95 e5                                      ldr r2, [r5, #0x28]
00894938  6c 6a ff eb                                      bl #0x86f2f0
0089493c  30 00 84 e2                                      add r0, r4, #0x30
00894940  40 00 84 e5                                      str r0, [r4, #0x40]
00894944  44 00 84 e5                                      str r0, [r4, #0x44]
00894948  44 10 95 e5                                      ldr r1, [r5, #0x44]
0089494c  40 20 95 e5                                      ldr r2, [r5, #0x40]
00894950  66 6a ff eb                                      bl #0x86f2f0
00894954  48 30 95 e5                                      ldr r3, [r5, #0x48]
00894958  4c c0 84 e2                                      add ip, r4, #0x4c
0089495c  4c 50 85 e2                                      add r5, r5, #0x4c
00894960  48 30 84 e5                                      str r3, [r4, #0x48]
00894964  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00894968  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0089496c  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00894970  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00894974  04 00 a0 e1                                      mov r0, r4
00894978  b0 30 cc e1                                      strh r3, [ip]
0089497c  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00894980, declared_size=108, range_size=108, mode=arm
; class-group: vox::SZipFileEntry
; alias: _ZN3vox13SZipFileEntryC1Ev
; demangled: vox::SZipFileEntry::SZipFileEntry()
; decoder-mode: arm
00894980  70 40 2d e9                                      push {r4, r5, r6, lr}
00894984  00 40 a0 e1                                      mov r4, r0
00894988  10 00 84 e5                                      str r0, [r4, #0x10]
0089498c  14 00 84 e5                                      str r0, [r4, #0x14]
00894990  10 10 a0 e3                                      mov r1, #0x10
00894994  41 6a ff eb                                      bl #0x86f2a0
00894998  10 20 94 e5                                      ldr r2, [r4, #0x10]
0089499c  18 30 84 e2                                      add r3, r4, #0x18
008949a0  00 50 a0 e3                                      mov r5, #0
008949a4  00 50 c2 e5                                      strb r5, [r2]
008949a8  03 00 a0 e1                                      mov r0, r3
008949ac  28 30 84 e5                                      str r3, [r4, #0x28]
008949b0  2c 30 84 e5                                      str r3, [r4, #0x2c]
008949b4  10 10 a0 e3                                      mov r1, #0x10
008949b8  38 6a ff eb                                      bl #0x86f2a0
008949bc  28 20 94 e5                                      ldr r2, [r4, #0x28]
008949c0  30 30 84 e2                                      add r3, r4, #0x30
008949c4  03 00 a0 e1                                      mov r0, r3
008949c8  00 50 c2 e5                                      strb r5, [r2]
008949cc  10 10 a0 e3                                      mov r1, #0x10
008949d0  40 30 84 e5                                      str r3, [r4, #0x40]
008949d4  44 30 84 e5                                      str r3, [r4, #0x44]
008949d8  30 6a ff eb                                      bl #0x86f2a0
008949dc  40 30 94 e5                                      ldr r3, [r4, #0x40]
008949e0  04 00 a0 e1                                      mov r0, r4
008949e4  00 50 c3 e5                                      strb r5, [r3]
008949e8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00894a3c, declared_size=132, range_size=132, mode=arm
; class-group: vox::SZipFileEntry
; alias: _ZN3vox13SZipFileEntryaSERKS0_
; demangled: vox::SZipFileEntry::operator=(vox::SZipFileEntry const&)
; decoder-mode: arm
00894a3c  01 00 50 e1                                      cmp r0, r1
00894a40  70 40 2d e9                                      push {r4, r5, r6, lr}
00894a44  01 40 a0 e1                                      mov r4, r1
00894a48  00 50 a0 e1                                      mov r5, r0
00894a4c  02 00 00 0a                                      beq #0x894a5c
00894a50  14 10 91 e5                                      ldr r1, [r1, #0x14]
00894a54  10 20 94 e5                                      ldr r2, [r4, #0x10]
00894a58  44 d0 ff eb                                      bl #0x888b70
00894a5c  18 00 85 e2                                      add r0, r5, #0x18
00894a60  18 30 84 e2                                      add r3, r4, #0x18
00894a64  03 00 50 e1                                      cmp r0, r3
00894a68  02 00 00 0a                                      beq #0x894a78
00894a6c  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
00894a70  28 20 94 e5                                      ldr r2, [r4, #0x28]
00894a74  3d d0 ff eb                                      bl #0x888b70
00894a78  30 00 85 e2                                      add r0, r5, #0x30
00894a7c  30 30 84 e2                                      add r3, r4, #0x30
00894a80  03 00 50 e1                                      cmp r0, r3
00894a84  02 00 00 0a                                      beq #0x894a94
00894a88  44 10 94 e5                                      ldr r1, [r4, #0x44]
00894a8c  40 20 94 e5                                      ldr r2, [r4, #0x40]
00894a90  36 d0 ff eb                                      bl #0x888b70
00894a94  48 30 94 e5                                      ldr r3, [r4, #0x48]
00894a98  4c c0 85 e2                                      add ip, r5, #0x4c
00894a9c  4c 40 84 e2                                      add r4, r4, #0x4c
00894aa0  48 30 85 e5                                      str r3, [r5, #0x48]
00894aa4  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
00894aa8  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00894aac  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
00894ab0  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00894ab4  05 00 a0 e1                                      mov r0, r5
00894ab8  b0 30 cc e1                                      strh r3, [ip]
00894abc  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00894cec, declared_size=96, range_size=96, mode=arm
; class-group: vox::SZipFileEntry
; alias: _ZN3vox13SZipFileEntryD1Ev
; demangled: vox::SZipFileEntry::~SZipFileEntry()
; decoder-mode: arm
00894cec  10 40 2d e9                                      push {r4, lr}
00894cf0  30 30 80 e2                                      add r3, r0, #0x30
00894cf4  00 40 a0 e1                                      mov r4, r0
00894cf8  14 00 93 e5                                      ldr r0, [r3, #0x14]
00894cfc  03 00 50 e1                                      cmp r0, r3
00894d00  02 00 00 0a                                      beq #0x894d10
00894d04  00 00 50 e3                                      cmp r0, #0
00894d08  00 00 00 0a                                      beq #0x894d10
00894d0c  cc ed e9 eb                                      bl #0x310444
00894d10  18 30 84 e2                                      add r3, r4, #0x18
00894d14  14 00 93 e5                                      ldr r0, [r3, #0x14]
00894d18  03 00 50 e1                                      cmp r0, r3
00894d1c  02 00 00 0a                                      beq #0x894d2c
00894d20  00 00 50 e3                                      cmp r0, #0
00894d24  00 00 00 0a                                      beq #0x894d2c
00894d28  c5 ed e9 eb                                      bl #0x310444
00894d2c  14 00 94 e5                                      ldr r0, [r4, #0x14]
00894d30  04 00 50 e1                                      cmp r0, r4
00894d34  02 00 00 0a                                      beq #0x894d44
00894d38  00 00 50 e3                                      cmp r0, #0
00894d3c  00 00 00 0a                                      beq #0x894d44
00894d40  bf ed e9 eb                                      bl #0x310444
00894d44  04 00 a0 e1                                      mov r0, r4
00894d48  10 80 bd e8                                      pop {r4, pc}
