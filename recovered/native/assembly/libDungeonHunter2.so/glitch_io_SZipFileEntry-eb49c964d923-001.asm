; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00576e78, declared_size=124, range_size=124, mode=arm
; class-group: glitch::io::SZipFileEntry
; alias: _ZN6glitch2io13SZipFileEntryC1ERKS1_
; demangled: glitch::io::SZipFileEntry::SZipFileEntry(glitch::io::SZipFileEntry const&)
; decoder-mode: arm
00576e78  70 40 2d e9                                      push {r4, r5, r6, lr}
00576e7c  00 40 a0 e1                                      mov r4, r0
00576e80  01 50 a0 e1                                      mov r5, r1
00576e84  10 00 84 e5                                      str r0, [r4, #0x10]
00576e88  14 00 84 e5                                      str r0, [r4, #0x14]
00576e8c  10 20 95 e5                                      ldr r2, [r5, #0x10]
00576e90  14 10 91 e5                                      ldr r1, [r1, #0x14]
00576e94  56 bc f6 eb                                      bl #0x325ff4
00576e98  18 00 84 e2                                      add r0, r4, #0x18
00576e9c  28 00 84 e5                                      str r0, [r4, #0x28]
00576ea0  2c 00 84 e5                                      str r0, [r4, #0x2c]
00576ea4  2c 10 95 e5                                      ldr r1, [r5, #0x2c]
00576ea8  28 20 95 e5                                      ldr r2, [r5, #0x28]
00576eac  50 bc f6 eb                                      bl #0x325ff4
00576eb0  30 00 84 e2                                      add r0, r4, #0x30
00576eb4  40 00 84 e5                                      str r0, [r4, #0x40]
00576eb8  44 00 84 e5                                      str r0, [r4, #0x44]
00576ebc  44 10 95 e5                                      ldr r1, [r5, #0x44]
00576ec0  40 20 95 e5                                      ldr r2, [r5, #0x40]
00576ec4  4a bc f6 eb                                      bl #0x325ff4
00576ec8  48 30 95 e5                                      ldr r3, [r5, #0x48]
00576ecc  4c c0 84 e2                                      add ip, r4, #0x4c
00576ed0  4c 50 85 e2                                      add r5, r5, #0x4c
00576ed4  48 30 84 e5                                      str r3, [r4, #0x48]
00576ed8  0f 00 b5 e8                                      ldm r5!, {r0, r1, r2, r3}
00576edc  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00576ee0  0f 00 95 e8                                      ldm r5, {r0, r1, r2, r3}
00576ee4  07 00 ac e8                                      stm ip!, {r0, r1, r2}
00576ee8  04 00 a0 e1                                      mov r0, r4
00576eec  b0 30 cc e1                                      strh r3, [ip]
00576ef0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00577284, declared_size=132, range_size=132, mode=arm
; class-group: glitch::io::SZipFileEntry
; alias: _ZN6glitch2io13SZipFileEntryaSERKS1_
; demangled: glitch::io::SZipFileEntry::operator=(glitch::io::SZipFileEntry const&)
; decoder-mode: arm
00577284  01 00 50 e1                                      cmp r0, r1
00577288  70 40 2d e9                                      push {r4, r5, r6, lr}
0057728c  01 40 a0 e1                                      mov r4, r1
00577290  00 50 a0 e1                                      mov r5, r0
00577294  02 00 00 0a                                      beq #0x5772a4
00577298  14 10 91 e5                                      ldr r1, [r1, #0x14]
0057729c  10 20 94 e5                                      ldr r2, [r4, #0x10]
005772a0  38 a6 f6 eb                                      bl #0x320b88
005772a4  18 00 85 e2                                      add r0, r5, #0x18
005772a8  18 30 84 e2                                      add r3, r4, #0x18
005772ac  03 00 50 e1                                      cmp r0, r3
005772b0  02 00 00 0a                                      beq #0x5772c0
005772b4  2c 10 94 e5                                      ldr r1, [r4, #0x2c]
005772b8  28 20 94 e5                                      ldr r2, [r4, #0x28]
005772bc  31 a6 f6 eb                                      bl #0x320b88
005772c0  30 00 85 e2                                      add r0, r5, #0x30
005772c4  30 30 84 e2                                      add r3, r4, #0x30
005772c8  03 00 50 e1                                      cmp r0, r3
005772cc  02 00 00 0a                                      beq #0x5772dc
005772d0  44 10 94 e5                                      ldr r1, [r4, #0x44]
005772d4  40 20 94 e5                                      ldr r2, [r4, #0x40]
005772d8  2a a6 f6 eb                                      bl #0x320b88
005772dc  48 30 94 e5                                      ldr r3, [r4, #0x48]
005772e0  4c c0 85 e2                                      add ip, r5, #0x4c
005772e4  4c 40 84 e2                                      add r4, r4, #0x4c
005772e8  48 30 85 e5                                      str r3, [r5, #0x48]
005772ec  0f 00 b4 e8                                      ldm r4!, {r0, r1, r2, r3}
005772f0  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
005772f4  0f 00 94 e8                                      ldm r4, {r0, r1, r2, r3}
005772f8  07 00 ac e8                                      stm ip!, {r0, r1, r2}
005772fc  05 00 a0 e1                                      mov r0, r5
00577300  b0 30 cc e1                                      strh r3, [ip]
00577304  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00577308, declared_size=108, range_size=108, mode=arm
; class-group: glitch::io::SZipFileEntry
; alias: _ZN6glitch2io13SZipFileEntryC1Ev
; demangled: glitch::io::SZipFileEntry::SZipFileEntry()
; decoder-mode: arm
00577308  70 40 2d e9                                      push {r4, r5, r6, lr}
0057730c  00 40 a0 e1                                      mov r4, r0
00577310  10 00 84 e5                                      str r0, [r4, #0x10]
00577314  14 00 84 e5                                      str r0, [r4, #0x14]
00577318  10 10 a0 e3                                      mov r1, #0x10
0057731c  a1 a5 f6 eb                                      bl #0x3209a8
00577320  10 20 94 e5                                      ldr r2, [r4, #0x10]
00577324  18 30 84 e2                                      add r3, r4, #0x18
00577328  00 50 a0 e3                                      mov r5, #0
0057732c  00 50 c2 e5                                      strb r5, [r2]
00577330  03 00 a0 e1                                      mov r0, r3
00577334  28 30 84 e5                                      str r3, [r4, #0x28]
00577338  2c 30 84 e5                                      str r3, [r4, #0x2c]
0057733c  10 10 a0 e3                                      mov r1, #0x10
00577340  98 a5 f6 eb                                      bl #0x3209a8
00577344  28 20 94 e5                                      ldr r2, [r4, #0x28]
00577348  30 30 84 e2                                      add r3, r4, #0x30
0057734c  03 00 a0 e1                                      mov r0, r3
00577350  00 50 c2 e5                                      strb r5, [r2]
00577354  10 10 a0 e3                                      mov r1, #0x10
00577358  40 30 84 e5                                      str r3, [r4, #0x40]
0057735c  44 30 84 e5                                      str r3, [r4, #0x44]
00577360  90 a5 f6 eb                                      bl #0x3209a8
00577364  40 30 94 e5                                      ldr r3, [r4, #0x40]
00577368  04 00 a0 e1                                      mov r0, r4
0057736c  00 50 c3 e5                                      strb r5, [r3]
00577370  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x005773e4, declared_size=96, range_size=96, mode=arm
; class-group: glitch::io::SZipFileEntry
; alias: _ZN6glitch2io13SZipFileEntryD1Ev
; demangled: glitch::io::SZipFileEntry::~SZipFileEntry()
; decoder-mode: arm
005773e4  10 40 2d e9                                      push {r4, lr}
005773e8  30 30 80 e2                                      add r3, r0, #0x30
005773ec  00 40 a0 e1                                      mov r4, r0
005773f0  14 00 93 e5                                      ldr r0, [r3, #0x14]
005773f4  03 00 50 e1                                      cmp r0, r3
005773f8  02 00 00 0a                                      beq #0x577408
005773fc  00 00 50 e3                                      cmp r0, #0
00577400  00 00 00 0a                                      beq #0x577408
00577404  11 64 f6 eb                                      bl #0x310450
00577408  18 30 84 e2                                      add r3, r4, #0x18
0057740c  14 00 93 e5                                      ldr r0, [r3, #0x14]
00577410  03 00 50 e1                                      cmp r0, r3
00577414  02 00 00 0a                                      beq #0x577424
00577418  00 00 50 e3                                      cmp r0, #0
0057741c  00 00 00 0a                                      beq #0x577424
00577420  0a 64 f6 eb                                      bl #0x310450
00577424  14 00 94 e5                                      ldr r0, [r4, #0x14]
00577428  04 00 50 e1                                      cmp r0, r4
0057742c  02 00 00 0a                                      beq #0x57743c
00577430  00 00 50 e3                                      cmp r0, #0
00577434  00 00 00 0a                                      beq #0x57743c
00577438  04 64 f6 eb                                      bl #0x310450
0057743c  04 00 a0 e1                                      mov r0, r4
00577440  10 80 bd e8                                      pop {r4, pc}
