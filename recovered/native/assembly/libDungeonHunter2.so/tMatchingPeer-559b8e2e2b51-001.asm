; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00802560, declared_size=100, range_size=100, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerC1ERKS_
; demangled: tMatchingPeer::tMatchingPeer(tMatchingPeer const&)
; decoder-mode: arm
00802560  70 40 2d e9                                      push {r4, r5, r6, lr}
00802564  01 e0 a0 e1                                      mov lr, r1
00802568  04 30 9e e4                                      ldr r3, [lr], #4
0080256c  00 c0 a0 e1                                      mov ip, r0
00802570  00 40 a0 e1                                      mov r4, r0
00802574  04 30 8c e4                                      str r3, [ip], #4
00802578  01 50 a0 e1                                      mov r5, r1
0080257c  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00802580  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
00802584  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00802588  07 00 8c e8                                      stm ip, {r0, r1, r2}
0080258c  20 30 95 e5                                      ldr r3, [r5, #0x20]
00802590  24 10 85 e2                                      add r1, r5, #0x24
00802594  24 00 84 e2                                      add r0, r4, #0x24
00802598  20 30 84 e5                                      str r3, [r4, #0x20]
0080259c  dd a4 ec eb                                      bl #0x32b918
008025a0  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
008025a4  48 10 85 e2                                      add r1, r5, #0x48
008025a8  48 00 84 e2                                      add r0, r4, #0x48
008025ac  3c 30 84 e5                                      str r3, [r4, #0x3c]
008025b0  40 30 95 e5                                      ldr r3, [r5, #0x40]
008025b4  40 30 84 e5                                      str r3, [r4, #0x40]
008025b8  a4 5a 00 eb                                      bl #0x819050
008025bc  04 00 a0 e1                                      mov r0, r4
008025c0  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x008025c4, declared_size=68, range_size=68, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerC1Ev
; demangled: tMatchingPeer::tMatchingPeer()
; decoder-mode: arm
008025c4  10 40 2d e9                                      push {r4, lr}
008025c8  00 40 a0 e1                                      mov r4, r0
008025cc  04 00 80 e2                                      add r0, r0, #4
008025d0  6b e7 ff eb                                      bl #0x7fc384
008025d4  24 30 84 e2                                      add r3, r4, #0x24
008025d8  03 00 a0 e1                                      mov r0, r3
008025dc  34 30 84 e5                                      str r3, [r4, #0x34]
008025e0  38 30 84 e5                                      str r3, [r4, #0x38]
008025e4  10 10 a0 e3                                      mov r1, #0x10
008025e8  23 3c ec eb                                      bl #0x31167c
008025ec  34 30 94 e5                                      ldr r3, [r4, #0x34]
008025f0  00 20 a0 e3                                      mov r2, #0
008025f4  48 00 84 e2                                      add r0, r4, #0x48
008025f8  00 20 c3 e5                                      strb r2, [r3]
008025fc  e0 5a 00 eb                                      bl #0x819184
00802600  04 00 a0 e1                                      mov r0, r4
00802604  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00807240, declared_size=80, range_size=80, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerD1Ev
; demangled: tMatchingPeer::~tMatchingPeer()
; decoder-mode: arm
00807240  10 40 2d e9                                      push {r4, lr}
00807244  00 40 a0 e1                                      mov r4, r0
00807248  48 00 80 e2                                      add r0, r0, #0x48
0080724c  70 46 00 eb                                      bl #0x818c14
00807250  24 30 84 e2                                      add r3, r4, #0x24
00807254  14 00 93 e5                                      ldr r0, [r3, #0x14]
00807258  03 00 50 e1                                      cmp r0, r3
0080725c  06 00 00 0a                                      beq #0x80727c
00807260  00 00 50 e3                                      cmp r0, #0
00807264  04 00 00 0a                                      beq #0x80727c
00807268  24 10 94 e5                                      ldr r1, [r4, #0x24]
0080726c  01 10 60 e0                                      rsb r1, r0, r1
00807270  80 00 51 e3                                      cmp r1, #0x80
00807274  02 00 00 8a                                      bhi #0x807284
00807278  2e dc 02 eb                                      bl #0x8be338
0080727c  04 00 a0 e1                                      mov r0, r4
00807280  10 80 bd e8                                      pop {r4, pc}
00807284  6d 24 ec eb                                      bl #0x310440
00807288  04 00 a0 e1                                      mov r0, r4
0080728c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x008081c4, declared_size=68, range_size=68, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerC1Ev
; demangled: tMatchingPeer::tMatchingPeer()
; decoder-mode: arm
008081c4  10 40 2d e9                                      push {r4, lr}
008081c8  00 40 a0 e1                                      mov r4, r0
008081cc  04 00 80 e2                                      add r0, r0, #4
008081d0  6b d0 ff eb                                      bl #0x7fc384
008081d4  24 30 84 e2                                      add r3, r4, #0x24
008081d8  03 00 a0 e1                                      mov r0, r3
008081dc  34 30 84 e5                                      str r3, [r4, #0x34]
008081e0  38 30 84 e5                                      str r3, [r4, #0x38]
008081e4  10 10 a0 e3                                      mov r1, #0x10
008081e8  23 25 ec eb                                      bl #0x31167c
008081ec  34 30 94 e5                                      ldr r3, [r4, #0x34]
008081f0  00 20 a0 e3                                      mov r2, #0
008081f4  48 00 84 e2                                      add r0, r4, #0x48
008081f8  00 20 c3 e5                                      strb r2, [r3]
008081fc  e0 43 00 eb                                      bl #0x819184
00808200  04 00 a0 e1                                      mov r0, r4
00808204  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00808208, declared_size=112, range_size=112, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerC1ERKS_
; demangled: tMatchingPeer::tMatchingPeer(tMatchingPeer const&)
; decoder-mode: arm
00808208  70 40 2d e9                                      push {r4, r5, r6, lr}
0080820c  01 e0 a0 e1                                      mov lr, r1
00808210  04 30 9e e4                                      ldr r3, [lr], #4
00808214  00 c0 a0 e1                                      mov ip, r0
00808218  00 40 a0 e1                                      mov r4, r0
0080821c  04 30 8c e4                                      str r3, [ip], #4
00808220  01 50 a0 e1                                      mov r5, r1
00808224  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
00808228  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0080822c  07 00 9e e8                                      ldm lr, {r0, r1, r2}
00808230  07 00 8c e8                                      stm ip, {r0, r1, r2}
00808234  20 30 95 e5                                      ldr r3, [r5, #0x20]
00808238  24 00 84 e2                                      add r0, r4, #0x24
0080823c  34 00 84 e5                                      str r0, [r4, #0x34]
00808240  20 30 84 e5                                      str r3, [r4, #0x20]
00808244  38 00 84 e5                                      str r0, [r4, #0x38]
00808248  38 10 95 e5                                      ldr r1, [r5, #0x38]
0080824c  34 20 95 e5                                      ldr r2, [r5, #0x34]
00808250  24 25 ec eb                                      bl #0x3116e8
00808254  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
00808258  48 10 85 e2                                      add r1, r5, #0x48
0080825c  48 00 84 e2                                      add r0, r4, #0x48
00808260  3c 30 84 e5                                      str r3, [r4, #0x3c]
00808264  40 30 95 e5                                      ldr r3, [r5, #0x40]
00808268  40 30 84 e5                                      str r3, [r4, #0x40]
0080826c  77 43 00 eb                                      bl #0x819050
00808270  04 00 a0 e1                                      mov r0, r4
00808274  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081e184, declared_size=100, range_size=100, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerC1ERKS_
; demangled: tMatchingPeer::tMatchingPeer(tMatchingPeer const&)
; decoder-mode: arm
0081e184  70 40 2d e9                                      push {r4, r5, r6, lr}
0081e188  01 e0 a0 e1                                      mov lr, r1
0081e18c  04 30 9e e4                                      ldr r3, [lr], #4
0081e190  00 c0 a0 e1                                      mov ip, r0
0081e194  00 40 a0 e1                                      mov r4, r0
0081e198  04 30 8c e4                                      str r3, [ip], #4
0081e19c  01 50 a0 e1                                      mov r5, r1
0081e1a0  0f 00 be e8                                      ldm lr!, {r0, r1, r2, r3}
0081e1a4  0f 00 ac e8                                      stm ip!, {r0, r1, r2, r3}
0081e1a8  07 00 9e e8                                      ldm lr, {r0, r1, r2}
0081e1ac  07 00 8c e8                                      stm ip, {r0, r1, r2}
0081e1b0  20 30 95 e5                                      ldr r3, [r5, #0x20]
0081e1b4  24 10 85 e2                                      add r1, r5, #0x24
0081e1b8  24 00 84 e2                                      add r0, r4, #0x24
0081e1bc  20 30 84 e5                                      str r3, [r4, #0x20]
0081e1c0  d4 35 ec eb                                      bl #0x32b918
0081e1c4  3c 30 95 e5                                      ldr r3, [r5, #0x3c]
0081e1c8  48 10 85 e2                                      add r1, r5, #0x48
0081e1cc  48 00 84 e2                                      add r0, r4, #0x48
0081e1d0  3c 30 84 e5                                      str r3, [r4, #0x3c]
0081e1d4  40 30 95 e5                                      ldr r3, [r5, #0x40]
0081e1d8  40 30 84 e5                                      str r3, [r4, #0x40]
0081e1dc  9b eb ff eb                                      bl #0x819050
0081e1e0  04 00 a0 e1                                      mov r0, r4
0081e1e4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x0081edac, declared_size=68, range_size=68, mode=arm
; class-group: tMatchingPeer
; alias: _ZN13tMatchingPeerC1Ev
; demangled: tMatchingPeer::tMatchingPeer()
; decoder-mode: arm
0081edac  10 40 2d e9                                      push {r4, lr}
0081edb0  00 40 a0 e1                                      mov r4, r0
0081edb4  04 00 80 e2                                      add r0, r0, #4
0081edb8  71 75 ff eb                                      bl #0x7fc384
0081edbc  24 30 84 e2                                      add r3, r4, #0x24
0081edc0  03 00 a0 e1                                      mov r0, r3
0081edc4  34 30 84 e5                                      str r3, [r4, #0x34]
0081edc8  38 30 84 e5                                      str r3, [r4, #0x38]
0081edcc  10 10 a0 e3                                      mov r1, #0x10
0081edd0  29 ca eb eb                                      bl #0x31167c
0081edd4  34 30 94 e5                                      ldr r3, [r4, #0x34]
0081edd8  00 20 a0 e3                                      mov r2, #0
0081eddc  48 00 84 e2                                      add r0, r4, #0x48
0081ede0  00 20 c3 e5                                      strb r2, [r3]
0081ede4  e6 e8 ff eb                                      bl #0x819184
0081ede8  04 00 a0 e1                                      mov r0, r4
0081edec  10 80 bd e8                                      pop {r4, pc}
