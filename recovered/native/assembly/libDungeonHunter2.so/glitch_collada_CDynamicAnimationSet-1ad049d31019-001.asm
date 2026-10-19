; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x003648c4, declared_size=184, range_size=184, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSetC1Ev
; demangled: glitch::collada::CDynamicAnimationSet::CDynamicAnimationSet()
; decoder-mode: arm
003648c4  a4 10 9f e5                                      ldr r1, [pc, #0xa4]
003648c8  a4 20 9f e5                                      ldr r2, [pc, #0xa4]
003648cc  a4 30 9f e5                                      ldr r3, [pc, #0xa4]
003648d0  01 10 8f e0                                      add r1, pc, r1
003648d4  02 20 91 e7                                      ldr r2, [r1, r2]
003648d8  30 00 2d e9                                      push {r4, r5}
003648dc  03 40 91 e7                                      ldr r4, [r1, r3]
003648e0  08 50 82 e2                                      add r5, r2, #8
003648e4  01 c0 a0 e3                                      mov ip, #1
003648e8  00 20 a0 e3                                      mov r2, #0
003648ec  7c 20 80 e5                                      str r2, [r0, #0x7c]
003648f0  00 50 80 e5                                      str r5, [r0]
003648f4  6c 40 80 e5                                      str r4, [r0, #0x6c]
003648f8  70 c0 c0 e5                                      strb ip, [r0, #0x70]
003648fc  04 c0 80 e5                                      str ip, [r0, #4]
00364900  08 20 80 e5                                      str r2, [r0, #8]
00364904  0c 20 80 e5                                      str r2, [r0, #0xc]
00364908  10 20 80 e5                                      str r2, [r0, #0x10]
0036490c  14 20 80 e5                                      str r2, [r0, #0x14]
00364910  18 20 80 e5                                      str r2, [r0, #0x18]
00364914  1c 20 80 e5                                      str r2, [r0, #0x1c]
00364918  20 20 80 e5                                      str r2, [r0, #0x20]
0036491c  24 20 80 e5                                      str r2, [r0, #0x24]
00364920  28 20 80 e5                                      str r2, [r0, #0x28]
00364924  2c 20 80 e5                                      str r2, [r0, #0x2c]
00364928  30 20 80 e5                                      str r2, [r0, #0x30]
0036492c  34 20 80 e5                                      str r2, [r0, #0x34]
00364930  38 20 80 e5                                      str r2, [r0, #0x38]
00364934  40 20 80 e5                                      str r2, [r0, #0x40]
00364938  44 20 80 e5                                      str r2, [r0, #0x44]
0036493c  48 20 80 e5                                      str r2, [r0, #0x48]
00364940  4c 20 80 e5                                      str r2, [r0, #0x4c]
00364944  50 20 80 e5                                      str r2, [r0, #0x50]
00364948  54 20 80 e5                                      str r2, [r0, #0x54]
0036494c  58 20 80 e5                                      str r2, [r0, #0x58]
00364950  5c 20 80 e5                                      str r2, [r0, #0x5c]
00364954  60 20 80 e5                                      str r2, [r0, #0x60]
00364958  64 20 80 e5                                      str r2, [r0, #0x64]
0036495c  68 20 80 e5                                      str r2, [r0, #0x68]
00364960  74 20 80 e5                                      str r2, [r0, #0x74]
00364964  78 20 80 e5                                      str r2, [r0, #0x78]
00364968  30 00 bd e8                                      pop {r4, r5}
0036496c  1e ff 2f e1                                      bx lr
; mapping-symbol data/literal pool
00364970  c0 01 63 00 c4 37 00 00 10 47 00 00              .byte 0xc0, 0x01, 0x63, 0x00, 0xc4, 0x37, 0x00, 0x00, 0x10, 0x47, 0x00, 0x00

; FUNCTION 0x0062dba0, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet10getChannelEj
; demangled: glitch::collada::CDynamicAnimationSet::getChannel(unsigned int)
; decoder-mode: arm
0062dba0  74 00 90 e5                                      ldr r0, [r0, #0x74]
0062dba4  01 02 80 e0                                      add r0, r0, r1, lsl #4
0062dba8  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062dbac, declared_size=12, range_size=12, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZNK6glitch7collada20CDynamicAnimationSet10getChannelEj
; demangled: glitch::collada::CDynamicAnimationSet::getChannel(unsigned int) const
; decoder-mode: arm
0062dbac  74 00 90 e5                                      ldr r0, [r0, #0x74]
0062dbb0  01 02 80 e0                                      add r0, r0, r1, lsl #4
0062dbb4  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062dbb8, declared_size=84, range_size=84, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet16getDatabaseIndexERNS0_16CColladaDatabaseE
; demangled: glitch::collada::CDynamicAnimationSet::getDatabaseIndex(glitch::collada::CColladaDatabase&)
; decoder-mode: arm
0062dbb8  28 20 90 e5                                      ldr r2, [r0, #0x28]
0062dbbc  24 30 90 e5                                      ldr r3, [r0, #0x24]
0062dbc0  02 20 63 e0                                      rsb r2, r3, r2
0062dbc4  c2 21 b0 e1                                      asrs r2, r2, #3
0062dbc8  0c 00 00 0a                                      beq #0x62dc00
0062dbcc  00 c0 91 e5                                      ldr ip, [r1]
0062dbd0  00 10 93 e5                                      ldr r1, [r3]
0062dbd4  0c 00 51 e1                                      cmp r1, ip
0062dbd8  00 00 a0 03                                      moveq r0, #0
0062dbdc  1e ff 2f 01                                      bxeq lr
0062dbe0  00 00 a0 e3                                      mov r0, #0
0062dbe4  02 00 00 ea                                      b #0x62dbf4
0062dbe8  80 11 93 e7                                      ldr r1, [r3, r0, lsl #3]
0062dbec  0c 00 51 e1                                      cmp r1, ip
0062dbf0  04 00 00 0a                                      beq #0x62dc08
0062dbf4  01 00 80 e2                                      add r0, r0, #1
0062dbf8  02 00 50 e1                                      cmp r0, r2
0062dbfc  f9 ff ff 1a                                      bne #0x62dbe8
0062dc00  00 00 e0 e3                                      mvn r0, #0
0062dc04  1e ff 2f e1                                      bx lr
0062dc08  1e ff 2f e1                                      bx lr

; FUNCTION 0x0062e198, declared_size=80, range_size=80, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSetD1Ev
; demangled: glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet()
; decoder-mode: arm
0062e198  10 40 2d e9                                      push {r4, lr}
0062e19c  3c 30 9f e5                                      ldr r3, [pc, #0x3c]
0062e1a0  3c 20 9f e5                                      ldr r2, [pc, #0x3c]
0062e1a4  00 40 a0 e1                                      mov r4, r0
0062e1a8  03 30 8f e0                                      add r3, pc, r3
0062e1ac  74 00 90 e5                                      ldr r0, [r0, #0x74]
0062e1b0  02 20 93 e7                                      ldr r2, [r3, r2]
0062e1b4  00 00 50 e3                                      cmp r0, #0
0062e1b8  08 20 82 e2                                      add r2, r2, #8
0062e1bc  00 20 84 e5                                      str r2, [r4]
0062e1c0  00 00 00 0a                                      beq #0x62e1c8
0062e1c4  a1 88 f3 eb                                      bl #0x310450
0062e1c8  68 00 84 e2                                      add r0, r4, #0x68
0062e1cc  a8 ac ff eb                                      bl #0x619474
0062e1d0  04 00 a0 e1                                      mov r0, r4
0062e1d4  c8 ff ff eb                                      bl #0x62e0fc
0062e1d8  04 00 a0 e1                                      mov r0, r4
0062e1dc  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
0062e1e0  e8 68 36 00 c4 37 00 00                          .byte 0xe8, 0x68, 0x36, 0x00, 0xc4, 0x37, 0x00, 0x00

; FUNCTION 0x0062e1e8, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSetD0Ev
; demangled: glitch::collada::CDynamicAnimationSet::~CDynamicAnimationSet()
; decoder-mode: arm
0062e1e8  10 40 2d e9                                      push {r4, lr}
0062e1ec  00 40 a0 e1                                      mov r4, r0
0062e1f0  e8 ff ff eb                                      bl #0x62e198
0062e1f4  04 00 a0 e1                                      mov r0, r4
0062e1f8  2c 80 f3 eb                                      bl #0x30e2b0
0062e1fc  04 00 a0 e1                                      mov r0, r4
0062e200  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062e204, declared_size=500, range_size=500, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet33overwriteAnimationLibraryBindingsERKNS0_16CColladaDatabaseEj
; demangled: glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(glitch::collada::CColladaDatabase const&, unsigned int)
; decoder-mode: arm
0062e204  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062e208  00 40 a0 e1                                      mov r4, r0
0062e20c  24 30 90 e5                                      ldr r3, [r0, #0x24]
0062e210  28 00 90 e5                                      ldr r0, [r0, #0x28]
0062e214  14 d0 4d e2                                      sub sp, sp, #0x14
0062e218  02 70 a0 e1                                      mov r7, r2
0062e21c  00 00 63 e0                                      rsb r0, r3, r0
0062e220  c0 01 52 e1                                      cmp r2, r0, asr #3
0062e224  01 a0 a0 e1                                      mov sl, r1
0062e228  70 00 00 2a                                      bhs #0x62e3f0
0062e22c  82 21 93 e7                                      ldr r2, [r3, r2, lsl #3]
0062e230  87 11 a0 e1                                      lsl r1, r7, #3
0062e234  01 00 83 e0                                      add r0, r3, r1
0062e238  08 20 8d e5                                      str r2, [sp, #8]
0062e23c  04 00 90 e5                                      ldr r0, [r0, #4]
0062e240  00 00 52 e3                                      cmp r2, #0
0062e244  0c 00 8d e5                                      str r0, [sp, #0xc]
0062e248  04 00 00 0a                                      beq #0x62e260
0062e24c  04 00 92 e5                                      ldr r0, [r2, #4]
0062e250  00 00 50 e3                                      cmp r0, #0
0062e254  01 00 80 12                                      addne r0, r0, #1
0062e258  04 00 82 15                                      strne r0, [r2, #4]
0062e25c  24 30 94 15                                      ldrne r3, [r4, #0x24]
0062e260  00 20 9a e5                                      ldr r2, [sl]
0062e264  04 00 9a e5                                      ldr r0, [sl, #4]
0062e268  01 10 83 e0                                      add r1, r3, r1
0062e26c  00 00 52 e3                                      cmp r2, #0
0062e270  04 00 8d e5                                      str r0, [sp, #4]
0062e274  00 20 8d e5                                      str r2, [sp]
0062e278  04 00 00 0a                                      beq #0x62e290
0062e27c  04 00 92 e5                                      ldr r0, [r2, #4]
0062e280  00 00 50 e3                                      cmp r0, #0
0062e284  01 00 80 12                                      addne r0, r0, #1
0062e288  04 00 82 15                                      strne r0, [r2, #4]
0062e28c  00 20 9d 15                                      ldrne r2, [sp]
0062e290  87 c1 93 e7                                      ldr ip, [r3, r7, lsl #3]
0062e294  0d 00 a0 e1                                      mov r0, sp
0062e298  00 c0 8d e5                                      str ip, [sp]
0062e29c  87 21 83 e7                                      str r2, [r3, r7, lsl #3]
0062e2a0  04 20 91 e5                                      ldr r2, [r1, #4]
0062e2a4  04 30 9d e5                                      ldr r3, [sp, #4]
0062e2a8  04 20 8d e5                                      str r2, [sp, #4]
0062e2ac  04 30 81 e5                                      str r3, [r1, #4]
0062e2b0  6f ac ff eb                                      bl #0x619474
0062e2b4  00 20 9a e5                                      ldr r2, [sl]
0062e2b8  40 30 94 e5                                      ldr r3, [r4, #0x40]
0062e2bc  24 20 92 e5                                      ldr r2, [r2, #0x24]
0062e2c0  20 20 92 e5                                      ldr r2, [r2, #0x20]
0062e2c4  1c 20 92 e5                                      ldr r2, [r2, #0x1c]
0062e2c8  07 21 83 e7                                      str r2, [r3, r7, lsl #2]
0062e2cc  00 20 9a e5                                      ldr r2, [sl]
0062e2d0  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
0062e2d4  24 20 92 e5                                      ldr r2, [r2, #0x24]
0062e2d8  20 20 92 e5                                      ldr r2, [r2, #0x20]
0062e2dc  20 20 92 e5                                      ldr r2, [r2, #0x20]
0062e2e0  07 21 83 e7                                      str r2, [r3, r7, lsl #2]
0062e2e4  4c 10 94 e5                                      ldr r1, [r4, #0x4c]
0062e2e8  40 20 94 e5                                      ldr r2, [r4, #0x40]
0062e2ec  58 30 94 e5                                      ldr r3, [r4, #0x58]
0062e2f0  07 11 91 e7                                      ldr r1, [r1, r7, lsl #2]
0062e2f4  07 21 92 e7                                      ldr r2, [r2, r7, lsl #2]
0062e2f8  01 20 62 e0                                      rsb r2, r2, r1
0062e2fc  07 21 83 e7                                      str r2, [r3, r7, lsl #2]
0062e300  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0062e304  00 00 53 e3                                      cmp r3, #0
0062e308  36 00 00 0a                                      beq #0x62e3e8
0062e30c  0c 50 a0 e3                                      mov r5, #0xc
0062e310  95 03 05 e0                                      mul r5, r5, r3
0062e314  00 60 a0 e3                                      mov r6, #0
0062e318  97 05 05 e0                                      mul r5, r7, r5
0062e31c  68 b0 84 e2                                      add fp, r4, #0x68
0062e320  02 90 a0 e3                                      mov sb, #2
0062e324  0b 00 00 ea                                      b #0x62e358
0062e328  30 20 94 e5                                      ldr r2, [r4, #0x30]
0062e32c  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062e330  05 20 82 e0                                      add r2, r2, r5
0062e334  07 10 81 e0                                      add r1, r1, r7
0062e338  04 20 82 e2                                      add r2, r2, #4
0062e33c  de b8 ff eb                                      bl #0x61c6bc
0062e340  00 00 50 e3                                      cmp r0, #0
0062e344  1f 00 00 0a                                      beq #0x62e3c8
0062e348  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0062e34c  0c 50 85 e2                                      add r5, r5, #0xc
0062e350  06 00 53 e1                                      cmp r3, r6
0062e354  23 00 00 9a                                      bls #0x62e3e8
0062e358  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062e35c  06 72 a0 e1                                      lsl r7, r6, #4
0062e360  0a 00 a0 e1                                      mov r0, sl
0062e364  07 10 81 e0                                      add r1, r1, r7
0062e368  9c b7 ff eb                                      bl #0x61c1e0
0062e36c  30 20 94 e5                                      ldr r2, [r4, #0x30]
0062e370  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062e374  00 80 a0 e1                                      mov r8, r0
0062e378  05 20 82 e0                                      add r2, r2, r5
0062e37c  04 20 82 e2                                      add r2, r2, #4
0062e380  0a 00 a0 e1                                      mov r0, sl
0062e384  07 10 81 e0                                      add r1, r1, r7
0062e388  cb b8 ff eb                                      bl #0x61c6bc
0062e38c  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062e390  00 00 58 e3                                      cmp r8, #0
0062e394  01 20 a0 03                                      moveq r2, #1
0062e398  05 20 83 07                                      streq r2, [r3, r5]
0062e39c  05 90 83 17                                      strne sb, [r3, r5]
0062e3a0  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062e3a4  00 00 50 e3                                      cmp r0, #0
0062e3a8  01 60 86 e2                                      add r6, r6, #1
0062e3ac  05 30 83 e0                                      add r3, r3, r5
0062e3b0  08 80 83 e5                                      str r8, [r3, #8]
0062e3b4  e3 ff ff 1a                                      bne #0x62e348
0062e3b8  68 30 94 e5                                      ldr r3, [r4, #0x68]
0062e3bc  0b 00 a0 e1                                      mov r0, fp
0062e3c0  00 00 53 e3                                      cmp r3, #0
0062e3c4  d7 ff ff 1a                                      bne #0x62e328
0062e3c8  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062e3cc  00 20 a0 e3                                      mov r2, #0
0062e3d0  05 30 83 e0                                      add r3, r3, r5
0062e3d4  04 20 83 e5                                      str r2, [r3, #4]
0062e3d8  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0062e3dc  0c 50 85 e2                                      add r5, r5, #0xc
0062e3e0  06 00 53 e1                                      cmp r3, r6
0062e3e4  db ff ff 8a                                      bhi #0x62e358
0062e3e8  08 00 8d e2                                      add r0, sp, #8
0062e3ec  20 ac ff eb                                      bl #0x619474
0062e3f0  14 d0 8d e2                                      add sp, sp, #0x14
0062e3f4  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}

; FUNCTION 0x0062e3f8, declared_size=40, range_size=40, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet33overwriteAnimationLibraryBindingsERKNS0_16CColladaDatabaseERS2_
; demangled: glitch::collada::CDynamicAnimationSet::overwriteAnimationLibraryBindings(glitch::collada::CColladaDatabase const&, glitch::collada::CColladaDatabase&)
; decoder-mode: arm
0062e3f8  70 40 2d e9                                      push {r4, r5, r6, lr}
0062e3fc  01 40 a0 e1                                      mov r4, r1
0062e400  02 10 a0 e1                                      mov r1, r2
0062e404  00 50 a0 e1                                      mov r5, r0
0062e408  ea fd ff eb                                      bl #0x62dbb8
0062e40c  04 10 a0 e1                                      mov r1, r4
0062e410  00 20 a0 e1                                      mov r2, r0
0062e414  05 00 a0 e1                                      mov r0, r5
0062e418  70 40 bd e8                                      pop {r4, r5, r6, lr}
0062e41c  78 ff ff ea                                      b #0x62e204

; FUNCTION 0x0062e8a8, declared_size=24, range_size=24, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet19addAnimationLibraryERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CDynamicAnimationSet::addAnimationLibrary(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0062e8a8  10 40 2d e9                                      push {r4, lr}
0062e8ac  00 40 a0 e1                                      mov r4, r0
0062e8b0  47 c6 00 eb                                      bl #0x6601d4
0062e8b4  01 30 a0 e3                                      mov r3, #1
0062e8b8  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062e8bc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062ee9c, declared_size=560, range_size=560, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet27addAnimationLibraryBindingsERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CDynamicAnimationSet::addAnimationLibraryBindings(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0062ee9c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062eea0  00 40 a0 e1                                      mov r4, r0
0062eea4  01 a0 a0 e1                                      mov sl, r1
0062eea8  1c d0 4d e2                                      sub sp, sp, #0x1c
0062eeac  24 00 80 e2                                      add r0, r0, #0x24
0062eeb0  7d ff ff eb                                      bl #0x62ecac
0062eeb4  00 30 9a e5                                      ldr r3, [sl]
0062eeb8  44 10 94 e5                                      ldr r1, [r4, #0x44]
0062eebc  48 20 94 e5                                      ldr r2, [r4, #0x48]
0062eec0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0062eec4  02 00 51 e1                                      cmp r1, r2
0062eec8  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062eecc  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
0062eed0  14 30 8d e5                                      str r3, [sp, #0x14]
0062eed4  70 00 00 0a                                      beq #0x62f09c
0062eed8  00 30 81 e5                                      str r3, [r1]
0062eedc  44 30 94 e5                                      ldr r3, [r4, #0x44]
0062eee0  04 30 83 e2                                      add r3, r3, #4
0062eee4  44 30 84 e5                                      str r3, [r4, #0x44]
0062eee8  00 30 9a e5                                      ldr r3, [sl]
0062eeec  50 10 94 e5                                      ldr r1, [r4, #0x50]
0062eef0  54 20 94 e5                                      ldr r2, [r4, #0x54]
0062eef4  24 30 93 e5                                      ldr r3, [r3, #0x24]
0062eef8  02 00 51 e1                                      cmp r1, r2
0062eefc  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062ef00  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062ef04  10 30 8d e5                                      str r3, [sp, #0x10]
0062ef08  67 00 00 0a                                      beq #0x62f0ac
0062ef0c  00 30 81 e5                                      str r3, [r1]
0062ef10  50 30 94 e5                                      ldr r3, [r4, #0x50]
0062ef14  04 30 83 e2                                      add r3, r3, #4
0062ef18  50 30 84 e5                                      str r3, [r4, #0x50]
0062ef1c  00 30 9a e5                                      ldr r3, [sl]
0062ef20  60 20 94 e5                                      ldr r2, [r4, #0x60]
0062ef24  5c 10 94 e5                                      ldr r1, [r4, #0x5c]
0062ef28  24 30 93 e5                                      ldr r3, [r3, #0x24]
0062ef2c  02 00 51 e1                                      cmp r1, r2
0062ef30  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062ef34  1c 20 93 e5                                      ldr r2, [r3, #0x1c]
0062ef38  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062ef3c  03 30 62 e0                                      rsb r3, r2, r3
0062ef40  0c 30 8d e5                                      str r3, [sp, #0xc]
0062ef44  5c 00 00 0a                                      beq #0x62f0bc
0062ef48  00 30 81 e5                                      str r3, [r1]
0062ef4c  5c 30 94 e5                                      ldr r3, [r4, #0x5c]
0062ef50  04 30 83 e2                                      add r3, r3, #4
0062ef54  5c 30 84 e5                                      str r3, [r4, #0x5c]
0062ef58  34 50 94 e5                                      ldr r5, [r4, #0x34]
0062ef5c  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062ef60  3c 70 94 e5                                      ldr r7, [r4, #0x3c]
0062ef64  30 80 84 e2                                      add r8, r4, #0x30
0062ef68  05 30 63 e0                                      rsb r3, r3, r5
0062ef6c  43 31 a0 e1                                      asr r3, r3, #2
0062ef70  08 00 a0 e1                                      mov r0, r8
0062ef74  03 51 83 e0                                      add r5, r3, r3, lsl #2
0062ef78  00 60 a0 e3                                      mov r6, #0
0062ef7c  05 52 85 e0                                      add r5, r5, r5, lsl #4
0062ef80  05 54 85 e0                                      add r5, r5, r5, lsl #8
0062ef84  05 58 85 e0                                      add r5, r5, r5, lsl #16
0062ef88  85 50 83 e0                                      add r5, r3, r5, lsl #1
0062ef8c  07 70 85 e0                                      add r7, r5, r7
0062ef90  07 10 a0 e1                                      mov r1, r7
0062ef94  91 fd ff eb                                      bl #0x62e5e0
0062ef98  08 00 a0 e1                                      mov r0, r8
0062ef9c  07 10 a0 e1                                      mov r1, r7
0062efa0  0d 20 a0 e1                                      mov r2, sp
0062efa4  00 60 8d e5                                      str r6, [sp]
0062efa8  04 60 8d e5                                      str r6, [sp, #4]
0062efac  08 60 8d e5                                      str r6, [sp, #8]
0062efb0  26 ff ff eb                                      bl #0x62ec50
0062efb4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0062efb8  06 00 53 e1                                      cmp r3, r6
0062efbc  34 00 00 0a                                      beq #0x62f094
0062efc0  0c 30 a0 e3                                      mov r3, #0xc
0062efc4  93 05 05 e0                                      mul r5, r3, r5
0062efc8  68 b0 84 e2                                      add fp, r4, #0x68
0062efcc  02 90 a0 e3                                      mov sb, #2
0062efd0  0b 00 00 ea                                      b #0x62f004
0062efd4  30 20 94 e5                                      ldr r2, [r4, #0x30]
0062efd8  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062efdc  05 20 82 e0                                      add r2, r2, r5
0062efe0  07 10 81 e0                                      add r1, r1, r7
0062efe4  04 20 82 e2                                      add r2, r2, #4
0062efe8  b3 b5 ff eb                                      bl #0x61c6bc
0062efec  00 00 50 e3                                      cmp r0, #0
0062eff0  1f 00 00 0a                                      beq #0x62f074
0062eff4  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0062eff8  0c 50 85 e2                                      add r5, r5, #0xc
0062effc  06 00 53 e1                                      cmp r3, r6
0062f000  23 00 00 9a                                      bls #0x62f094
0062f004  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f008  06 72 a0 e1                                      lsl r7, r6, #4
0062f00c  0a 00 a0 e1                                      mov r0, sl
0062f010  07 10 81 e0                                      add r1, r1, r7
0062f014  71 b4 ff eb                                      bl #0x61c1e0
0062f018  30 20 94 e5                                      ldr r2, [r4, #0x30]
0062f01c  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f020  00 80 a0 e1                                      mov r8, r0
0062f024  05 20 82 e0                                      add r2, r2, r5
0062f028  04 20 82 e2                                      add r2, r2, #4
0062f02c  0a 00 a0 e1                                      mov r0, sl
0062f030  07 10 81 e0                                      add r1, r1, r7
0062f034  a0 b5 ff eb                                      bl #0x61c6bc
0062f038  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062f03c  00 00 58 e3                                      cmp r8, #0
0062f040  01 20 a0 03                                      moveq r2, #1
0062f044  05 20 83 07                                      streq r2, [r3, r5]
0062f048  05 90 83 17                                      strne sb, [r3, r5]
0062f04c  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062f050  00 00 50 e3                                      cmp r0, #0
0062f054  01 60 86 e2                                      add r6, r6, #1
0062f058  05 30 83 e0                                      add r3, r3, r5
0062f05c  08 80 83 e5                                      str r8, [r3, #8]
0062f060  e3 ff ff 1a                                      bne #0x62eff4
0062f064  68 30 94 e5                                      ldr r3, [r4, #0x68]
0062f068  0b 00 a0 e1                                      mov r0, fp
0062f06c  00 00 53 e3                                      cmp r3, #0
0062f070  d7 ff ff 1a                                      bne #0x62efd4
0062f074  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062f078  00 20 a0 e3                                      mov r2, #0
0062f07c  05 30 83 e0                                      add r3, r3, r5
0062f080  04 20 83 e5                                      str r2, [r3, #4]
0062f084  3c 30 94 e5                                      ldr r3, [r4, #0x3c]
0062f088  0c 50 85 e2                                      add r5, r5, #0xc
0062f08c  06 00 53 e1                                      cmp r3, r6
0062f090  db ff ff 8a                                      bhi #0x62f004
0062f094  1c d0 8d e2                                      add sp, sp, #0x1c
0062f098  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062f09c  40 00 84 e2                                      add r0, r4, #0x40
0062f0a0  14 20 8d e2                                      add r2, sp, #0x14
0062f0a4  58 ff ff eb                                      bl #0x62ee0c
0062f0a8  8e ff ff ea                                      b #0x62eee8
0062f0ac  4c 00 84 e2                                      add r0, r4, #0x4c
0062f0b0  10 20 8d e2                                      add r2, sp, #0x10
0062f0b4  54 ff ff eb                                      bl #0x62ee0c
0062f0b8  97 ff ff ea                                      b #0x62ef1c
0062f0bc  58 00 84 e2                                      add r0, r4, #0x58
0062f0c0  0c 20 8d e2                                      add r2, sp, #0xc
0062f0c4  50 ff ff eb                                      bl #0x62ee0c
0062f0c8  a2 ff ff ea                                      b #0x62ef58

; FUNCTION 0x0062f0cc, declared_size=372, range_size=372, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet12remAnimationEPKNS0_10SAnimationE
; demangled: glitch::collada::CDynamicAnimationSet::remAnimation(glitch::collada::SAnimation const*)
; decoder-mode: arm
0062f0cc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062f0d0  74 30 90 e5                                      ldr r3, [r0, #0x74]
0062f0d4  78 80 90 e5                                      ldr r8, [r0, #0x78]
0062f0d8  54 a1 9f e5                                      ldr sl, [pc, #0x154]
0062f0dc  14 d0 4d e2                                      sub sp, sp, #0x14
0062f0e0  08 80 63 e0                                      rsb r8, r3, r8
0062f0e4  48 82 b0 e1                                      asrs r8, r8, #4
0062f0e8  00 60 a0 e1                                      mov r6, r0
0062f0ec  10 70 91 e5                                      ldr r7, [r1, #0x10]
0062f0f0  0a a0 8f e0                                      add sl, pc, sl
0062f0f4  4b 00 00 0a                                      beq #0x62f228
0062f0f8  38 21 9f e5                                      ldr r2, [pc, #0x138]
0062f0fc  38 b1 9f e5                                      ldr fp, [pc, #0x138]
0062f100  00 40 a0 e3                                      mov r4, #0
0062f104  02 20 8f e0                                      add r2, pc, r2
0062f108  0c 20 8d e5                                      str r2, [sp, #0xc]
0062f10c  0c 90 a0 e3                                      mov sb, #0xc
0062f110  03 00 00 ea                                      b #0x62f124
0062f114  01 40 84 e2                                      add r4, r4, #1
0062f118  08 00 54 e1                                      cmp r4, r8
0062f11c  41 00 00 0a                                      beq #0x62f228
0062f120  74 30 96 e5                                      ldr r3, [r6, #0x74]
0062f124  04 52 a0 e1                                      lsl r5, r4, #4
0062f128  05 20 83 e0                                      add r2, r3, r5
0062f12c  0c 10 d2 e5                                      ldrb r1, [r2, #0xc]
0062f130  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
0062f134  03 00 51 e1                                      cmp r1, r3
0062f138  f5 ff ff 1a                                      bne #0x62f114
0062f13c  0b 10 9a e7                                      ldr r1, [sl, fp]
0062f140  08 30 97 e5                                      ldr r3, [r7, #8]
0062f144  08 20 92 e5                                      ldr r2, [r2, #8]
0062f148  00 10 91 e5                                      ldr r1, [r1]
0062f14c  5b 00 53 e3                                      cmp r3, #0x5b
0062f150  99 12 22 e0                                      mla r2, sb, r2, r1
0062f154  05 00 00 9a                                      bls #0x62f170
0062f158  0c 00 9d e5                                      ldr r0, [sp, #0xc]
0062f15c  08 20 8d e5                                      str r2, [sp, #8]
0062f160  04 30 8d e5                                      str r3, [sp, #4]
0062f164  51 67 03 eb                                      bl #0x708eb0
0062f168  04 30 9d e5                                      ldr r3, [sp, #4]
0062f16c  08 20 9d e5                                      ldr r2, [sp, #8]
0062f170  a3 12 a0 e1                                      lsr r1, r3, #5
0062f174  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
0062f178  1f 30 03 e2                                      and r3, r3, #0x1f
0062f17c  01 10 a0 e3                                      mov r1, #1
0062f180  11 23 12 e0                                      ands r2, r2, r1, lsl r3
0062f184  e2 ff ff 0a                                      beq #0x62f114
0062f188  74 30 96 e5                                      ldr r3, [r6, #0x74]
0062f18c  04 10 97 e5                                      ldr r1, [r7, #4]
0062f190  05 50 83 e0                                      add r5, r3, r5
0062f194  04 00 95 e5                                      ldr r0, [r5, #4]
0062f198  5f 7c f3 eb                                      bl #0x30e31c
0062f19c  00 00 50 e3                                      cmp r0, #0
0062f1a0  db ff ff 1a                                      bne #0x62f114
0062f1a4  78 30 96 e5                                      ldr r3, [r6, #0x78]
0062f1a8  10 c0 85 e2                                      add ip, r5, #0x10
0062f1ac  03 00 5c e1                                      cmp ip, r3
0062f1b0  0b 00 00 0a                                      beq #0x62f1e4
0062f1b4  03 70 6c e0                                      rsb r7, ip, r3
0062f1b8  47 72 a0 e1                                      asr r7, r7, #4
0062f1bc  00 00 57 e3                                      cmp r7, #0
0062f1c0  01 00 00 ca                                      bgt #0x62f1cc
0062f1c4  06 00 00 ea                                      b #0x62f1e4
0062f1c8  10 c0 8c e2                                      add ip, ip, #0x10
0062f1cc  01 70 57 e2                                      subs r7, r7, #1
0062f1d0  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0062f1d4  0f 00 85 e8                                      stm r5, {r0, r1, r2, r3}
0062f1d8  0c 50 a0 e1                                      mov r5, ip
0062f1dc  f9 ff ff 1a                                      bne #0x62f1c8
0062f1e0  78 30 96 e5                                      ldr r3, [r6, #0x78]
0062f1e4  18 00 96 e5                                      ldr r0, [r6, #0x18]
0062f1e8  1c c0 96 e5                                      ldr ip, [r6, #0x1c]
0062f1ec  10 30 43 e2                                      sub r3, r3, #0x10
0062f1f0  04 01 80 e0                                      add r0, r0, r4, lsl #2
0062f1f4  04 10 80 e2                                      add r1, r0, #4
0062f1f8  0c 00 51 e1                                      cmp r1, ip
0062f1fc  78 30 86 e5                                      str r3, [r6, #0x78]
0062f200  04 00 00 0a                                      beq #0x62f218
0062f204  01 20 5c e0                                      subs r2, ip, r1
0062f208  0c 10 a0 01                                      moveq r1, ip
0062f20c  01 00 00 0a                                      beq #0x62f218
0062f210  48 7b f3 eb                                      bl #0x30df38
0062f214  1c 10 96 e5                                      ldr r1, [r6, #0x1c]
0062f218  04 10 41 e2                                      sub r1, r1, #4
0062f21c  1c 10 86 e5                                      str r1, [r6, #0x1c]
0062f220  04 00 a0 e1                                      mov r0, r4
0062f224  00 00 00 ea                                      b #0x62f22c
0062f228  00 00 e0 e3                                      mvn r0, #0
0062f22c  14 d0 8d e2                                      add sp, sp, #0x14
0062f230  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
0062f234  a0 59 36 00 c4 2b 29 00 4c 45 00 00              .byte 0xa0, 0x59, 0x36, 0x00, 0xc4, 0x2b, 0x29, 0x00, 0x4c, 0x45, 0x00, 0x00

; FUNCTION 0x0062f354, declared_size=504, range_size=504, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet12addAnimationEPKNS0_10SAnimationE
; demangled: glitch::collada::CDynamicAnimationSet::addAnimation(glitch::collada::SAnimation const*)
; decoder-mode: arm
0062f354  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062f358  74 20 90 e5                                      ldr r2, [r0, #0x74]
0062f35c  78 b0 90 e5                                      ldr fp, [r0, #0x78]
0062f360  00 40 a0 e1                                      mov r4, r0
0062f364  d4 01 9f e5                                      ldr r0, [pc, #0x1d4]
0062f368  2c d0 4d e2                                      sub sp, sp, #0x2c
0062f36c  0b b0 62 e0                                      rsb fp, r2, fp
0062f370  14 10 8d e5                                      str r1, [sp, #0x14]
0062f374  4b b2 b0 e1                                      asrs fp, fp, #4
0062f378  00 00 8f e0                                      add r0, pc, r0
0062f37c  10 70 91 e5                                      ldr r7, [r1, #0x10]
0062f380  3f 00 00 0a                                      beq #0x62f484
0062f384  08 30 97 e5                                      ldr r3, [r7, #8]
0062f388  00 00 53 e3                                      cmp r3, #0
0062f38c  3a 00 00 ba                                      blt #0x62f47c
0062f390  ac 11 9f e5                                      ldr r1, [pc, #0x1ac]
0062f394  00 50 a0 e3                                      mov r5, #0
0062f398  0c a0 a0 e3                                      mov sl, #0xc
0062f39c  01 90 90 e7                                      ldr sb, [r0, r1]
0062f3a0  a0 11 9f e5                                      ldr r1, [pc, #0x1a0]
0062f3a4  01 80 a0 e3                                      mov r8, #1
0062f3a8  01 10 8f e0                                      add r1, pc, r1
0062f3ac  10 10 8d e5                                      str r1, [sp, #0x10]
0062f3b0  05 62 a0 e1                                      lsl r6, r5, #4
0062f3b4  06 20 82 e0                                      add r2, r2, r6
0062f3b8  08 10 92 e5                                      ldr r1, [r2, #8]
0062f3bc  00 20 99 e5                                      ldr r2, [sb]
0062f3c0  5b 00 53 e3                                      cmp r3, #0x5b
0062f3c4  9a 21 22 e0                                      mla r2, sl, r1, r2
0062f3c8  05 00 00 9a                                      bls #0x62f3e4
0062f3cc  10 00 9d e5                                      ldr r0, [sp, #0x10]
0062f3d0  08 20 8d e5                                      str r2, [sp, #8]
0062f3d4  0c 30 8d e5                                      str r3, [sp, #0xc]
0062f3d8  b4 66 03 eb                                      bl #0x708eb0
0062f3dc  0c 30 9d e5                                      ldr r3, [sp, #0xc]
0062f3e0  08 20 9d e5                                      ldr r2, [sp, #8]
0062f3e4  a3 12 a0 e1                                      lsr r1, r3, #5
0062f3e8  01 21 92 e7                                      ldr r2, [r2, r1, lsl #2]
0062f3ec  1f 30 03 e2                                      and r3, r3, #0x1f
0062f3f0  18 23 12 e0                                      ands r2, r2, r8, lsl r3
0062f3f4  13 00 00 0a                                      beq #0x62f448
0062f3f8  74 30 94 e5                                      ldr r3, [r4, #0x74]
0062f3fc  04 10 97 e5                                      ldr r1, [r7, #4]
0062f400  06 60 83 e0                                      add r6, r3, r6
0062f404  04 00 96 e5                                      ldr r0, [r6, #4]
0062f408  c3 7b f3 eb                                      bl #0x30e31c
0062f40c  00 00 50 e3                                      cmp r0, #0
0062f410  0c 00 00 1a                                      bne #0x62f448
0062f414  08 30 97 e5                                      ldr r3, [r7, #8]
0062f418  0e 00 53 e3                                      cmp r3, #0xe
0062f41c  11 00 00 0a                                      beq #0x62f468
0062f420  56 00 53 e3                                      cmp r3, #0x56
0062f424  02 00 00 0a                                      beq #0x62f434
0062f428  05 00 a0 e1                                      mov r0, r5
0062f42c  2c d0 8d e2                                      add sp, sp, #0x2c
0062f430  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062f434  0c 00 96 e5                                      ldr r0, [r6, #0xc]
0062f438  0c 10 97 e5                                      ldr r1, [r7, #0xc]
0062f43c  b6 7b f3 eb                                      bl #0x30e31c
0062f440  00 00 50 e3                                      cmp r0, #0
0062f444  f7 ff ff 0a                                      beq #0x62f428
0062f448  01 50 85 e2                                      add r5, r5, #1
0062f44c  0b 00 55 e1                                      cmp r5, fp
0062f450  0b 00 00 0a                                      beq #0x62f484
0062f454  08 30 97 e5                                      ldr r3, [r7, #8]
0062f458  00 00 53 e3                                      cmp r3, #0
0062f45c  06 00 00 ba                                      blt #0x62f47c
0062f460  74 20 94 e5                                      ldr r2, [r4, #0x74]
0062f464  d1 ff ff ea                                      b #0x62f3b0
0062f468  0c 20 d6 e5                                      ldrb r2, [r6, #0xc]
0062f46c  0c 30 d7 e5                                      ldrb r3, [r7, #0xc]
0062f470  03 00 52 e1                                      cmp r2, r3
0062f474  f3 ff ff 1a                                      bne #0x62f448
0062f478  ea ff ff ea                                      b #0x62f428
0062f47c  00 00 e0 e3                                      mvn r0, #0
0062f480  e9 ff ff ea                                      b #0x62f42c
0062f484  14 00 9d e5                                      ldr r0, [sp, #0x14]
0062f488  94 89 ff eb                                      bl #0x611ae0
0062f48c  00 00 50 e3                                      cmp r0, #0
0062f490  f9 ff ff 0a                                      beq #0x62f47c
0062f494  78 c0 94 e5                                      ldr ip, [r4, #0x78]
0062f498  7c 30 94 e5                                      ldr r3, [r4, #0x7c]
0062f49c  14 10 9d e5                                      ldr r1, [sp, #0x14]
0062f4a0  1c 00 8d e5                                      str r0, [sp, #0x1c]
0062f4a4  03 00 5c e1                                      cmp ip, r3
0062f4a8  10 20 91 e5                                      ldr r2, [r1, #0x10]
0062f4ac  13 00 00 0a                                      beq #0x62f500
0062f4b0  0f 00 92 e8                                      ldm r2, {r0, r1, r2, r3}
0062f4b4  0f 00 8c e8                                      stm ip, {r0, r1, r2, r3}
0062f4b8  78 30 94 e5                                      ldr r3, [r4, #0x78]
0062f4bc  10 30 83 e2                                      add r3, r3, #0x10
0062f4c0  78 30 84 e5                                      str r3, [r4, #0x78]
0062f4c4  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0062f4c8  20 30 94 e5                                      ldr r3, [r4, #0x20]
0062f4cc  03 00 51 e1                                      cmp r1, r3
0062f4d0  12 00 00 0a                                      beq #0x62f520
0062f4d4  1c 30 9d e5                                      ldr r3, [sp, #0x1c]
0062f4d8  00 30 81 e5                                      str r3, [r1]
0062f4dc  1c 30 94 e5                                      ldr r3, [r4, #0x1c]
0062f4e0  04 30 83 e2                                      add r3, r3, #4
0062f4e4  1c 30 84 e5                                      str r3, [r4, #0x1c]
0062f4e8  74 30 94 e5                                      ldr r3, [r4, #0x74]
0062f4ec  78 00 94 e5                                      ldr r0, [r4, #0x78]
0062f4f0  00 00 63 e0                                      rsb r0, r3, r0
0062f4f4  40 02 a0 e1                                      asr r0, r0, #4
0062f4f8  01 00 40 e2                                      sub r0, r0, #1
0062f4fc  ca ff ff ea                                      b #0x62f42c
0062f500  0c 10 a0 e1                                      mov r1, ip
0062f504  74 00 84 e2                                      add r0, r4, #0x74
0062f508  01 c0 a0 e3                                      mov ip, #1
0062f50c  24 30 8d e2                                      add r3, sp, #0x24
0062f510  04 c0 8d e5                                      str ip, [sp, #4]
0062f514  00 c0 8d e5                                      str ip, [sp]
0062f518  7c fc ff eb                                      bl #0x62e710
0062f51c  e8 ff ff ea                                      b #0x62f4c4
0062f520  01 c0 a0 e3                                      mov ip, #1
0062f524  18 00 84 e2                                      add r0, r4, #0x18
0062f528  1c 20 8d e2                                      add r2, sp, #0x1c
0062f52c  20 30 8d e2                                      add r3, sp, #0x20
0062f530  04 c0 8d e5                                      str ip, [sp, #4]
0062f534  00 c0 8d e5                                      str ip, [sp]
0062f538  40 ff ff eb                                      bl #0x62f240
0062f53c  e9 ff ff ea                                      b #0x62f4e8
; mapping-symbol data/literal pool
0062f540  18 57 36 00 4c 45 00 00 20 29 29 00              .byte 0x18, 0x57, 0x36, 0x00, 0x4c, 0x45, 0x00, 0x00, 0x20, 0x29, 0x29, 0x00

; FUNCTION 0x0062f54c, declared_size=208, range_size=208, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet11clearTracksEv
; demangled: glitch::collada::CDynamicAnimationSet::clearTracks()
; decoder-mode: arm
0062f54c  30 40 2d e9                                      push {r4, r5, lr}
0062f550  78 10 90 e5                                      ldr r1, [r0, #0x78]
0062f554  74 e0 90 e5                                      ldr lr, [r0, #0x74]
0062f558  24 d0 4d e2                                      sub sp, sp, #0x24
0062f55c  00 c0 a0 e3                                      mov ip, #0
0062f560  00 40 a0 e1                                      mov r4, r0
0062f564  04 00 8d e2                                      add r0, sp, #4
0062f568  04 c0 80 e4                                      str ip, [r0], #4
0062f56c  01 20 6e e0                                      rsb r2, lr, r1
0062f570  04 c0 80 e4                                      str ip, [r0], #4
0062f574  42 22 b0 e1                                      asrs r2, r2, #4
0062f578  00 c0 80 e5                                      str ip, [r0]
0062f57c  00 c0 8d e5                                      str ip, [sp]
0062f580  17 00 00 0a                                      beq #0x62f5e4
0062f584  0e 00 51 e1                                      cmp r1, lr
0062f588  18 30 94 e5                                      ldr r3, [r4, #0x18]
0062f58c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0062f590  00 20 a0 e3                                      mov r2, #0
0062f594  78 e0 84 15                                      strne lr, [r4, #0x78]
0062f598  1c 20 8d e5                                      str r2, [sp, #0x1c]
0062f59c  01 20 63 e0                                      rsb r2, r3, r1
0062f5a0  42 21 b0 e1                                      asrs r2, r2, #2
0062f5a4  18 00 00 0a                                      beq #0x62f60c
0062f5a8  03 00 51 e1                                      cmp r1, r3
0062f5ac  1c 30 84 15                                      strne r3, [r4, #0x1c]
0062f5b0  00 50 a0 e3                                      mov r5, #0
0062f5b4  30 00 84 e2                                      add r0, r4, #0x30
0062f5b8  05 10 a0 e1                                      mov r1, r5
0062f5bc  10 20 8d e2                                      add r2, sp, #0x10
0062f5c0  10 50 8d e5                                      str r5, [sp, #0x10]
0062f5c4  14 50 8d e5                                      str r5, [sp, #0x14]
0062f5c8  18 50 8d e5                                      str r5, [sp, #0x18]
0062f5cc  9f fd ff eb                                      bl #0x62ec50
0062f5d0  01 30 a0 e3                                      mov r3, #1
0062f5d4  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062f5d8  3c 50 84 e5                                      str r5, [r4, #0x3c]
0062f5dc  24 d0 8d e2                                      add sp, sp, #0x24
0062f5e0  30 80 bd e8                                      pop {r4, r5, pc}
0062f5e4  0d 30 a0 e1                                      mov r3, sp
0062f5e8  74 00 84 e2                                      add r0, r4, #0x74
0062f5ec  98 fc ff eb                                      bl #0x62e854
0062f5f0  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0062f5f4  18 30 94 e5                                      ldr r3, [r4, #0x18]
0062f5f8  00 20 a0 e3                                      mov r2, #0
0062f5fc  1c 20 8d e5                                      str r2, [sp, #0x1c]
0062f600  01 20 63 e0                                      rsb r2, r3, r1
0062f604  42 21 b0 e1                                      asrs r2, r2, #2
0062f608  e6 ff ff 1a                                      bne #0x62f5a8
0062f60c  18 00 84 e2                                      add r0, r4, #0x18
0062f610  1c 30 8d e2                                      add r3, sp, #0x1c
0062f614  39 ff ff eb                                      bl #0x62f300
0062f618  e4 ff ff ea                                      b #0x62f5b0

; FUNCTION 0x0062f61c, declared_size=888, range_size=888, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet7compileEv
; demangled: glitch::collada::CDynamicAnimationSet::compile()
; decoder-mode: arm
0062f61c  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
0062f620  70 30 d0 e5                                      ldrb r3, [r0, #0x70]
0062f624  1c d0 4d e2                                      sub sp, sp, #0x1c
0062f628  00 40 a0 e1                                      mov r4, r0
0062f62c  00 00 53 e3                                      cmp r3, #0
0062f630  01 00 00 1a                                      bne #0x62f63c
0062f634  1c d0 8d e2                                      add sp, sp, #0x1c
0062f638  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
0062f63c  c2 ff ff eb                                      bl #0x62f54c
0062f640  24 30 94 e5                                      ldr r3, [r4, #0x24]
0062f644  28 20 94 e5                                      ldr r2, [r4, #0x28]
0062f648  02 10 63 e0                                      rsb r1, r3, r2
0062f64c  a1 11 b0 e1                                      lsrs r1, r1, #3
0062f650  00 70 a0 13                                      movne r7, #0
0062f654  c9 00 00 0a                                      beq #0x62f980
0062f658  87 11 93 e7                                      ldr r1, [r3, r7, lsl #3]
0062f65c  87 61 83 e0                                      add r6, r3, r7, lsl #3
0062f660  24 10 91 e5                                      ldr r1, [r1, #0x24]
0062f664  20 10 91 e5                                      ldr r1, [r1, #0x20]
0062f668  24 10 91 e5                                      ldr r1, [r1, #0x24]
0062f66c  00 00 51 e3                                      cmp r1, #0
0062f670  11 00 00 da                                      ble #0x62f6bc
0062f674  00 50 a0 e3                                      mov r5, #0
0062f678  05 10 a0 e1                                      mov r1, r5
0062f67c  06 00 a0 e1                                      mov r0, r6
0062f680  35 7b ff eb                                      bl #0x60e35c
0062f684  00 30 94 e5                                      ldr r3, [r4]
0062f688  00 10 a0 e1                                      mov r1, r0
0062f68c  04 00 a0 e1                                      mov r0, r4
0062f690  0f e0 a0 e1                                      mov lr, pc
0062f694  0c f0 93 e5                                      ldr pc, [r3, #0xc]
0062f698  00 30 96 e5                                      ldr r3, [r6]
0062f69c  01 50 85 e2                                      add r5, r5, #1
0062f6a0  24 30 93 e5                                      ldr r3, [r3, #0x24]
0062f6a4  20 30 93 e5                                      ldr r3, [r3, #0x20]
0062f6a8  24 30 93 e5                                      ldr r3, [r3, #0x24]
0062f6ac  03 00 55 e1                                      cmp r5, r3
0062f6b0  f0 ff ff ba                                      blt #0x62f678
0062f6b4  24 30 94 e5                                      ldr r3, [r4, #0x24]
0062f6b8  28 20 94 e5                                      ldr r2, [r4, #0x28]
0062f6bc  02 10 63 e0                                      rsb r1, r3, r2
0062f6c0  01 70 87 e2                                      add r7, r7, #1
0062f6c4  c1 11 a0 e1                                      asr r1, r1, #3
0062f6c8  01 00 57 e1                                      cmp r7, r1
0062f6cc  e1 ff ff 3a                                      blo #0x62f658
0062f6d0  00 00 51 e3                                      cmp r1, #0
0062f6d4  a9 00 00 0a                                      beq #0x62f980
0062f6d8  78 00 94 e5                                      ldr r0, [r4, #0x78]
0062f6dc  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f6e0  00 70 a0 e3                                      mov r7, #0
0062f6e4  14 a0 8d e2                                      add sl, sp, #0x14
0062f6e8  00 00 61 e0                                      rsb r0, r1, r0
0062f6ec  40 c2 b0 e1                                      asrs ip, r0, #4
0062f6f0  87 61 83 e0                                      add r6, r3, r7, lsl #3
0062f6f4  0f 00 00 0a                                      beq #0x62f738
0062f6f8  00 50 a0 e3                                      mov r5, #0
0062f6fc  05 82 a0 e1                                      lsl r8, r5, #4
0062f700  08 10 81 e0                                      add r1, r1, r8
0062f704  06 00 a0 e1                                      mov r0, r6
0062f708  b4 b2 ff eb                                      bl #0x61c1e0
0062f70c  00 00 50 e3                                      cmp r0, #0
0062f710  6d 00 00 0a                                      beq #0x62f8cc
0062f714  78 00 94 e5                                      ldr r0, [r4, #0x78]
0062f718  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f71c  01 50 85 e2                                      add r5, r5, #1
0062f720  00 00 61 e0                                      rsb r0, r1, r0
0062f724  40 c2 a0 e1                                      asr ip, r0, #4
0062f728  0c 00 55 e1                                      cmp r5, ip
0062f72c  f2 ff ff 3a                                      blo #0x62f6fc
0062f730  24 30 94 e5                                      ldr r3, [r4, #0x24]
0062f734  28 20 94 e5                                      ldr r2, [r4, #0x28]
0062f738  01 70 87 e2                                      add r7, r7, #1
0062f73c  02 e0 63 e0                                      rsb lr, r3, r2
0062f740  ce 01 57 e1                                      cmp r7, lr, asr #3
0062f744  e8 ff ff 3a                                      blo #0x62f6ec
0062f748  02 30 63 e0                                      rsb r3, r3, r2
0062f74c  c3 51 a0 e1                                      asr r5, r3, #3
0062f750  95 0c 05 e0                                      mul r5, r5, ip
0062f754  30 60 84 e2                                      add r6, r4, #0x30
0062f758  3c c0 84 e5                                      str ip, [r4, #0x3c]
0062f75c  06 00 a0 e1                                      mov r0, r6
0062f760  05 10 a0 e1                                      mov r1, r5
0062f764  9d fb ff eb                                      bl #0x62e5e0
0062f768  00 a0 a0 e3                                      mov sl, #0
0062f76c  05 10 a0 e1                                      mov r1, r5
0062f770  08 20 8d e2                                      add r2, sp, #8
0062f774  06 00 a0 e1                                      mov r0, r6
0062f778  08 a0 8d e5                                      str sl, [sp, #8]
0062f77c  0c a0 8d e5                                      str sl, [sp, #0xc]
0062f780  10 a0 8d e5                                      str sl, [sp, #0x10]
0062f784  31 fd ff eb                                      bl #0x62ec50
0062f788  24 30 94 e5                                      ldr r3, [r4, #0x24]
0062f78c  28 20 94 e5                                      ldr r2, [r4, #0x28]
0062f790  02 10 63 e0                                      rsb r1, r3, r2
0062f794  a1 11 b0 e1                                      lsrs r1, r1, #3
0062f798  46 00 00 0a                                      beq #0x62f8b8
0062f79c  68 00 84 e2                                      add r0, r4, #0x68
0062f7a0  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0062f7a4  02 b0 a0 e3                                      mov fp, #2
0062f7a8  01 04 8d e8                                      stm sp, {r0, sl}
0062f7ac  04 c0 9d e5                                      ldr ip, [sp, #4]
0062f7b0  00 00 51 e3                                      cmp r1, #0
0062f7b4  8c 91 83 e0                                      add sb, r3, ip, lsl #3
0062f7b8  37 00 00 0a                                      beq #0x62f89c
0062f7bc  0c 00 a0 e3                                      mov r0, #0xc
0062f7c0  90 0a 05 e0                                      mul r5, r0, sl
0062f7c4  00 60 a0 e3                                      mov r6, #0
0062f7c8  0c 00 00 ea                                      b #0x62f800
0062f7cc  30 20 94 e5                                      ldr r2, [r4, #0x30]
0062f7d0  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f7d4  05 20 82 e0                                      add r2, r2, r5
0062f7d8  07 10 81 e0                                      add r1, r1, r7
0062f7dc  04 20 82 e2                                      add r2, r2, #4
0062f7e0  b5 b3 ff eb                                      bl #0x61c6bc
0062f7e4  00 00 50 e3                                      cmp r0, #0
0062f7e8  20 00 00 0a                                      beq #0x62f870
0062f7ec  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0062f7f0  01 a0 8a e2                                      add sl, sl, #1
0062f7f4  0c 50 85 e2                                      add r5, r5, #0xc
0062f7f8  06 00 51 e1                                      cmp r1, r6
0062f7fc  24 00 00 9a                                      bls #0x62f894
0062f800  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f804  06 72 a0 e1                                      lsl r7, r6, #4
0062f808  09 00 a0 e1                                      mov r0, sb
0062f80c  07 10 81 e0                                      add r1, r1, r7
0062f810  72 b2 ff eb                                      bl #0x61c1e0
0062f814  30 20 94 e5                                      ldr r2, [r4, #0x30]
0062f818  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f81c  00 80 a0 e1                                      mov r8, r0
0062f820  05 20 82 e0                                      add r2, r2, r5
0062f824  04 20 82 e2                                      add r2, r2, #4
0062f828  09 00 a0 e1                                      mov r0, sb
0062f82c  07 10 81 e0                                      add r1, r1, r7
0062f830  a1 b3 ff eb                                      bl #0x61c6bc
0062f834  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062f838  00 00 58 e3                                      cmp r8, #0
0062f83c  01 20 a0 03                                      moveq r2, #1
0062f840  05 20 83 07                                      streq r2, [r3, r5]
0062f844  05 b0 83 17                                      strne fp, [r3, r5]
0062f848  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062f84c  00 00 50 e3                                      cmp r0, #0
0062f850  01 60 86 e2                                      add r6, r6, #1
0062f854  05 30 83 e0                                      add r3, r3, r5
0062f858  08 80 83 e5                                      str r8, [r3, #8]
0062f85c  e2 ff ff 1a                                      bne #0x62f7ec
0062f860  68 30 94 e5                                      ldr r3, [r4, #0x68]
0062f864  00 00 9d e5                                      ldr r0, [sp]
0062f868  00 00 53 e3                                      cmp r3, #0
0062f86c  d6 ff ff 1a                                      bne #0x62f7cc
0062f870  30 30 94 e5                                      ldr r3, [r4, #0x30]
0062f874  00 c0 a0 e3                                      mov ip, #0
0062f878  01 a0 8a e2                                      add sl, sl, #1
0062f87c  05 30 83 e0                                      add r3, r3, r5
0062f880  04 c0 83 e5                                      str ip, [r3, #4]
0062f884  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
0062f888  0c 50 85 e2                                      add r5, r5, #0xc
0062f88c  06 00 51 e1                                      cmp r1, r6
0062f890  da ff ff 8a                                      bhi #0x62f800
0062f894  24 30 94 e5                                      ldr r3, [r4, #0x24]
0062f898  28 20 94 e5                                      ldr r2, [r4, #0x28]
0062f89c  04 00 9d e5                                      ldr r0, [sp, #4]
0062f8a0  01 00 80 e2                                      add r0, r0, #1
0062f8a4  04 00 8d e5                                      str r0, [sp, #4]
0062f8a8  04 c0 9d e5                                      ldr ip, [sp, #4]
0062f8ac  02 00 63 e0                                      rsb r0, r3, r2
0062f8b0  c0 01 5c e1                                      cmp ip, r0, asr #3
0062f8b4  bc ff ff 3a                                      blo #0x62f7ac
0062f8b8  04 00 a0 e1                                      mov r0, r4
0062f8bc  3a c3 00 eb                                      bl #0x6605ac
0062f8c0  00 30 a0 e3                                      mov r3, #0
0062f8c4  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062f8c8  59 ff ff ea                                      b #0x62f634
0062f8cc  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f8d0  06 00 a0 e1                                      mov r0, r6
0062f8d4  0a 20 a0 e1                                      mov r2, sl
0062f8d8  08 10 81 e0                                      add r1, r1, r8
0062f8dc  76 b3 ff eb                                      bl #0x61c6bc
0062f8e0  00 00 50 e3                                      cmp r0, #0
0062f8e4  8a ff ff 1a                                      bne #0x62f714
0062f8e8  08 30 94 e5                                      ldr r3, [r4, #8]
0062f8ec  00 00 53 e3                                      cmp r3, #0
0062f8f0  87 ff ff 1a                                      bne #0x62f714
0062f8f4  74 e0 94 e5                                      ldr lr, [r4, #0x74]
0062f8f8  78 30 94 e5                                      ldr r3, [r4, #0x78]
0062f8fc  08 e0 8e e0                                      add lr, lr, r8
0062f900  10 c0 8e e2                                      add ip, lr, #0x10
0062f904  03 00 5c e1                                      cmp ip, r3
0062f908  0b 00 00 0a                                      beq #0x62f93c
0062f90c  03 80 6c e0                                      rsb r8, ip, r3
0062f910  48 82 a0 e1                                      asr r8, r8, #4
0062f914  00 00 58 e3                                      cmp r8, #0
0062f918  01 00 00 ca                                      bgt #0x62f924
0062f91c  06 00 00 ea                                      b #0x62f93c
0062f920  10 c0 8c e2                                      add ip, ip, #0x10
0062f924  01 80 58 e2                                      subs r8, r8, #1
0062f928  0f 00 9c e8                                      ldm ip, {r0, r1, r2, r3}
0062f92c  0f 00 8e e8                                      stm lr, {r0, r1, r2, r3}
0062f930  0c e0 a0 e1                                      mov lr, ip
0062f934  f9 ff ff 1a                                      bne #0x62f920
0062f938  78 30 94 e5                                      ldr r3, [r4, #0x78]
0062f93c  18 00 94 e5                                      ldr r0, [r4, #0x18]
0062f940  1c c0 94 e5                                      ldr ip, [r4, #0x1c]
0062f944  10 30 43 e2                                      sub r3, r3, #0x10
0062f948  05 01 80 e0                                      add r0, r0, r5, lsl #2
0062f94c  04 10 80 e2                                      add r1, r0, #4
0062f950  0c 00 51 e1                                      cmp r1, ip
0062f954  78 30 84 e5                                      str r3, [r4, #0x78]
0062f958  04 00 00 0a                                      beq #0x62f970
0062f95c  01 20 5c e0                                      subs r2, ip, r1
0062f960  0c 10 a0 01                                      moveq r1, ip
0062f964  01 00 00 0a                                      beq #0x62f970
0062f968  72 79 f3 eb                                      bl #0x30df38
0062f96c  1c 10 94 e5                                      ldr r1, [r4, #0x1c]
0062f970  04 10 41 e2                                      sub r1, r1, #4
0062f974  1c 10 84 e5                                      str r1, [r4, #0x1c]
0062f978  01 50 45 e2                                      sub r5, r5, #1
0062f97c  64 ff ff ea                                      b #0x62f714
0062f980  74 10 94 e5                                      ldr r1, [r4, #0x74]
0062f984  78 c0 94 e5                                      ldr ip, [r4, #0x78]
0062f988  0c c0 61 e0                                      rsb ip, r1, ip
0062f98c  4c c2 a0 e1                                      asr ip, ip, #4
0062f990  6c ff ff ea                                      b #0x62f748

; FUNCTION 0x0062fa44, declared_size=204, range_size=204, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet27remAnimationLibraryBindingsEj
; demangled: glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(unsigned int)
; decoder-mode: arm
0062fa44  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
0062fa48  24 30 90 e5                                      ldr r3, [r0, #0x24]
0062fa4c  28 20 90 e5                                      ldr r2, [r0, #0x28]
0062fa50  0c d0 4d e2                                      sub sp, sp, #0xc
0062fa54  02 20 63 e0                                      rsb r2, r3, r2
0062fa58  c2 01 51 e1                                      cmp r1, r2, asr #3
0062fa5c  29 00 00 2a                                      bhs #0x62fb08
0062fa60  3c c0 90 e5                                      ldr ip, [r0, #0x3c]
0062fa64  0c 40 a0 e3                                      mov r4, #0xc
0062fa68  30 20 90 e5                                      ldr r2, [r0, #0x30]
0062fa6c  94 0c 04 e0                                      mul r4, r4, ip
0062fa70  91 44 25 e0                                      mla r5, r1, r4, r4
0062fa74  94 21 24 e0                                      mla r4, r4, r1, r2
0062fa78  05 50 82 e0                                      add r5, r2, r5
0062fa7c  05 00 54 e1                                      cmp r4, r5
0062fa80  1c 00 00 0a                                      beq #0x62faf8
0062fa84  34 20 90 e5                                      ldr r2, [r0, #0x34]
0062fa88  02 20 65 e0                                      rsb r2, r5, r2
0062fa8c  42 21 a0 e1                                      asr r2, r2, #2
0062fa90  02 71 82 e0                                      add r7, r2, r2, lsl #2
0062fa94  07 72 87 e0                                      add r7, r7, r7, lsl #4
0062fa98  07 74 87 e0                                      add r7, r7, r7, lsl #8
0062fa9c  07 78 87 e0                                      add r7, r7, r7, lsl #16
0062faa0  87 70 82 e0                                      add r7, r2, r7, lsl #1
0062faa4  00 00 57 e3                                      cmp r7, #0
0062faa8  11 00 00 da                                      ble #0x62faf4
0062faac  07 e0 a0 e1                                      mov lr, r7
0062fab0  00 30 a0 e3                                      mov r3, #0
0062fab4  03 20 95 e7                                      ldr r2, [r5, r3]
0062fab8  03 c0 85 e0                                      add ip, r5, r3
0062fabc  04 c0 8c e2                                      add ip, ip, #4
0062fac0  03 20 84 e7                                      str r2, [r4, r3]
0062fac4  04 60 9c e4                                      ldr r6, [ip], #4
0062fac8  03 20 84 e0                                      add r2, r4, r3
0062facc  04 20 82 e2                                      add r2, r2, #4
0062fad0  04 60 82 e4                                      str r6, [r2], #4
0062fad4  00 c0 9c e5                                      ldr ip, [ip]
0062fad8  01 e0 5e e2                                      subs lr, lr, #1
0062fadc  0c 30 83 e2                                      add r3, r3, #0xc
0062fae0  00 c0 82 e5                                      str ip, [r2]
0062fae4  f2 ff ff 1a                                      bne #0x62fab4
0062fae8  0c 30 a0 e3                                      mov r3, #0xc
0062faec  93 47 24 e0                                      mla r4, r3, r7, r4
0062faf0  24 30 90 e5                                      ldr r3, [r0, #0x24]
0062faf4  34 40 80 e5                                      str r4, [r0, #0x34]
0062faf8  81 11 83 e0                                      add r1, r3, r1, lsl #3
0062fafc  24 00 80 e2                                      add r0, r0, #0x24
0062fb00  04 20 8d e2                                      add r2, sp, #4
0062fb04  a2 ff ff eb                                      bl #0x62f994
0062fb08  0c d0 8d e2                                      add sp, sp, #0xc
0062fb0c  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x0062fb10, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet27remAnimationLibraryBindingsERNS0_16CColladaDatabaseE
; demangled: glitch::collada::CDynamicAnimationSet::remAnimationLibraryBindings(glitch::collada::CColladaDatabase&)
; decoder-mode: arm
0062fb10  10 40 2d e9                                      push {r4, lr}
0062fb14  00 40 a0 e1                                      mov r4, r0
0062fb18  26 f8 ff eb                                      bl #0x62dbb8
0062fb1c  00 10 a0 e1                                      mov r1, r0
0062fb20  04 00 a0 e1                                      mov r0, r4
0062fb24  10 40 bd e8                                      pop {r4, lr}
0062fb28  c5 ff ff ea                                      b #0x62fa44

; FUNCTION 0x0062fb2c, declared_size=64, range_size=64, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet19remAnimationLibraryEj
; demangled: glitch::collada::CDynamicAnimationSet::remAnimationLibrary(unsigned int)
; decoder-mode: arm
0062fb2c  10 40 2d e9                                      push {r4, lr}
0062fb30  24 30 90 e5                                      ldr r3, [r0, #0x24]
0062fb34  28 20 90 e5                                      ldr r2, [r0, #0x28]
0062fb38  08 d0 4d e2                                      sub sp, sp, #8
0062fb3c  00 40 a0 e1                                      mov r4, r0
0062fb40  02 20 63 e0                                      rsb r2, r3, r2
0062fb44  c2 01 51 e1                                      cmp r1, r2, asr #3
0062fb48  05 00 00 2a                                      bhs #0x62fb64
0062fb4c  81 11 83 e0                                      add r1, r3, r1, lsl #3
0062fb50  24 00 80 e2                                      add r0, r0, #0x24
0062fb54  04 20 8d e2                                      add r2, sp, #4
0062fb58  8d ff ff eb                                      bl #0x62f994
0062fb5c  01 30 a0 e3                                      mov r3, #1
0062fb60  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062fb64  08 d0 8d e2                                      add sp, sp, #8
0062fb68  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062fb6c, declared_size=28, range_size=28, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet19remAnimationLibraryERNS0_16CColladaDatabaseE
; demangled: glitch::collada::CDynamicAnimationSet::remAnimationLibrary(glitch::collada::CColladaDatabase&)
; decoder-mode: arm
0062fb6c  10 40 2d e9                                      push {r4, lr}
0062fb70  00 40 a0 e1                                      mov r4, r0
0062fb74  0f f8 ff eb                                      bl #0x62dbb8
0062fb78  00 10 a0 e1                                      mov r1, r0
0062fb7c  04 00 a0 e1                                      mov r0, r4
0062fb80  10 40 bd e8                                      pop {r4, lr}
0062fb84  e8 ff ff ea                                      b #0x62fb2c

; FUNCTION 0x0062fc58, declared_size=56, range_size=56, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet8clearSetEv
; demangled: glitch::collada::CDynamicAnimationSet::clearSet()
; decoder-mode: arm
0062fc58  10 40 2d e9                                      push {r4, lr}
0062fc5c  24 10 90 e5                                      ldr r1, [r0, #0x24]
0062fc60  28 20 90 e5                                      ldr r2, [r0, #0x28]
0062fc64  08 d0 4d e2                                      sub sp, sp, #8
0062fc68  00 40 a0 e1                                      mov r4, r0
0062fc6c  02 00 51 e1                                      cmp r1, r2
0062fc70  02 00 00 0a                                      beq #0x62fc80
0062fc74  24 00 80 e2                                      add r0, r0, #0x24
0062fc78  04 30 8d e2                                      add r3, sp, #4
0062fc7c  c1 ff ff eb                                      bl #0x62fb88
0062fc80  01 30 a0 e3                                      mov r3, #1
0062fc84  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062fc88  08 d0 8d e2                                      add sp, sp, #8
0062fc8c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062fc90, declared_size=104, range_size=104, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet26setDefaultAnimationLibraryERKNS0_16CColladaDatabaseE
; demangled: glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(glitch::collada::CColladaDatabase const&)
; decoder-mode: arm
0062fc90  10 40 2d e9                                      push {r4, lr}
0062fc94  00 30 91 e5                                      ldr r3, [r1]
0062fc98  04 20 91 e5                                      ldr r2, [r1, #4]
0062fc9c  08 d0 4d e2                                      sub sp, sp, #8
0062fca0  00 00 53 e3                                      cmp r3, #0
0062fca4  00 40 a0 e1                                      mov r4, r0
0062fca8  04 20 8d e5                                      str r2, [sp, #4]
0062fcac  00 30 8d e5                                      str r3, [sp]
0062fcb0  04 00 00 0a                                      beq #0x62fcc8
0062fcb4  04 20 93 e5                                      ldr r2, [r3, #4]
0062fcb8  00 00 52 e3                                      cmp r2, #0
0062fcbc  01 20 82 12                                      addne r2, r2, #1
0062fcc0  04 20 83 15                                      strne r2, [r3, #4]
0062fcc4  00 30 9d 15                                      ldrne r3, [sp]
0062fcc8  04 00 9d e5                                      ldr r0, [sp, #4]
0062fccc  68 10 94 e5                                      ldr r1, [r4, #0x68]
0062fcd0  6c 20 94 e5                                      ldr r2, [r4, #0x6c]
0062fcd4  68 30 84 e5                                      str r3, [r4, #0x68]
0062fcd8  6c 00 84 e5                                      str r0, [r4, #0x6c]
0062fcdc  0d 00 a0 e1                                      mov r0, sp
0062fce0  06 00 8d e8                                      stm sp, {r1, r2}
0062fce4  e2 a5 ff eb                                      bl #0x619474
0062fce8  01 30 a0 e3                                      mov r3, #1
0062fcec  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062fcf0  08 d0 8d e2                                      add sp, sp, #8
0062fcf4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x0062fcf8, declared_size=212, range_size=212, mode=arm
; class-group: glitch::collada::CDynamicAnimationSet
; alias: _ZN6glitch7collada20CDynamicAnimationSet26setDefaultAnimationLibraryEj
; demangled: glitch::collada::CDynamicAnimationSet::setDefaultAnimationLibrary(unsigned int)
; decoder-mode: arm
0062fcf8  30 40 2d e9                                      push {r4, r5, lr}
0062fcfc  00 40 a0 e1                                      mov r4, r0
0062fd00  24 30 90 e5                                      ldr r3, [r0, #0x24]
0062fd04  28 00 90 e5                                      ldr r0, [r0, #0x28]
0062fd08  b4 20 9f e5                                      ldr r2, [pc, #0xb4]
0062fd0c  1c d0 4d e2                                      sub sp, sp, #0x1c
0062fd10  00 00 63 e0                                      rsb r0, r3, r0
0062fd14  c0 01 51 e1                                      cmp r1, r0, asr #3
0062fd18  01 50 a0 e1                                      mov r5, r1
0062fd1c  02 20 8f e0                                      add r2, pc, r2
0062fd20  0f 00 00 3a                                      blo #0x62fd64
0062fd24  9c 30 9f e5                                      ldr r3, [pc, #0x9c]
0062fd28  68 c0 94 e5                                      ldr ip, [r4, #0x68]
0062fd2c  6c 10 94 e5                                      ldr r1, [r4, #0x6c]
0062fd30  03 30 92 e7                                      ldr r3, [r2, r3]
0062fd34  00 20 a0 e3                                      mov r2, #0
0062fd38  68 20 84 e5                                      str r2, [r4, #0x68]
0062fd3c  6c 30 84 e5                                      str r3, [r4, #0x6c]
0062fd40  08 00 8d e2                                      add r0, sp, #8
0062fd44  14 30 8d e5                                      str r3, [sp, #0x14]
0062fd48  08 c0 8d e5                                      str ip, [sp, #8]
0062fd4c  0c 10 8d e5                                      str r1, [sp, #0xc]
0062fd50  10 20 8d e5                                      str r2, [sp, #0x10]
0062fd54  c6 a5 ff eb                                      bl #0x619474
0062fd58  10 00 8d e2                                      add r0, sp, #0x10
0062fd5c  c4 a5 ff eb                                      bl #0x619474
0062fd60  24 30 94 e5                                      ldr r3, [r4, #0x24]
0062fd64  85 11 93 e7                                      ldr r1, [r3, r5, lsl #3]
0062fd68  85 51 83 e0                                      add r5, r3, r5, lsl #3
0062fd6c  00 10 8d e5                                      str r1, [sp]
0062fd70  04 30 95 e5                                      ldr r3, [r5, #4]
0062fd74  00 00 51 e3                                      cmp r1, #0
0062fd78  04 30 8d e5                                      str r3, [sp, #4]
0062fd7c  04 00 00 0a                                      beq #0x62fd94
0062fd80  04 30 91 e5                                      ldr r3, [r1, #4]
0062fd84  00 00 53 e3                                      cmp r3, #0
0062fd88  01 30 83 12                                      addne r3, r3, #1
0062fd8c  04 30 81 15                                      strne r3, [r1, #4]
0062fd90  00 10 9d 15                                      ldrne r1, [sp]
0062fd94  04 00 9d e5                                      ldr r0, [sp, #4]
0062fd98  6c 30 94 e5                                      ldr r3, [r4, #0x6c]
0062fd9c  68 20 94 e5                                      ldr r2, [r4, #0x68]
0062fda0  6c 00 84 e5                                      str r0, [r4, #0x6c]
0062fda4  68 10 84 e5                                      str r1, [r4, #0x68]
0062fda8  0d 00 a0 e1                                      mov r0, sp
0062fdac  0c 00 8d e8                                      stm sp, {r2, r3}
0062fdb0  af a5 ff eb                                      bl #0x619474
0062fdb4  01 30 a0 e3                                      mov r3, #1
0062fdb8  70 30 c4 e5                                      strb r3, [r4, #0x70]
0062fdbc  1c d0 8d e2                                      add sp, sp, #0x1c
0062fdc0  30 80 bd e8                                      pop {r4, r5, pc}
; mapping-symbol data/literal pool
0062fdc4  74 4d 36 00 10 47 00 00                          .byte 0x74, 0x4d, 0x36, 0x00, 0x10, 0x47, 0x00, 0x00
