; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00546f1c, declared_size=216, range_size=216, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZNK6glitch3gui14CGUIMessageBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIMessageBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00546f1c  70 40 2d e9                                      push {r4, r5, r6, lr}
00546f20  00 50 a0 e1                                      mov r5, r0
00546f24  01 40 a0 e1                                      mov r4, r1
00546f28  63 b8 ff eb                                      bl #0x5350bc
00546f2c  84 21 95 e5                                      ldr r2, [r5, #0x184]
00546f30  a8 10 9f e5                                      ldr r1, [pc, #0xa8]
00546f34  04 00 a0 e1                                      mov r0, r4
00546f38  00 c0 94 e5                                      ldr ip, [r4]
00546f3c  01 20 02 e2                                      and r2, r2, #1
00546f40  01 10 8f e0                                      add r1, pc, r1
00546f44  00 30 a0 e3                                      mov r3, #0
00546f48  0f e0 a0 e1                                      mov lr, pc
00546f4c  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00546f50  84 21 95 e5                                      ldr r2, [r5, #0x184]
00546f54  88 10 9f e5                                      ldr r1, [pc, #0x88]
00546f58  04 00 a0 e1                                      mov r0, r4
00546f5c  00 c0 94 e5                                      ldr ip, [r4]
00546f60  d2 20 e0 e7                                      ubfx r2, r2, #1, #1
00546f64  01 10 8f e0                                      add r1, pc, r1
00546f68  00 30 a0 e3                                      mov r3, #0
00546f6c  0f e0 a0 e1                                      mov lr, pc
00546f70  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00546f74  84 21 95 e5                                      ldr r2, [r5, #0x184]
00546f78  68 10 9f e5                                      ldr r1, [pc, #0x68]
00546f7c  04 00 a0 e1                                      mov r0, r4
00546f80  00 c0 94 e5                                      ldr ip, [r4]
00546f84  52 21 e0 e7                                      ubfx r2, r2, #2, #1
00546f88  01 10 8f e0                                      add r1, pc, r1
00546f8c  00 30 a0 e3                                      mov r3, #0
00546f90  0f e0 a0 e1                                      mov lr, pc
00546f94  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00546f98  84 21 95 e5                                      ldr r2, [r5, #0x184]
00546f9c  48 10 9f e5                                      ldr r1, [pc, #0x48]
00546fa0  04 00 a0 e1                                      mov r0, r4
00546fa4  00 c0 94 e5                                      ldr ip, [r4]
00546fa8  d2 21 e0 e7                                      ubfx r2, r2, #3, #1
00546fac  01 10 8f e0                                      add r1, pc, r1
00546fb0  00 30 a0 e3                                      mov r3, #0
00546fb4  0f e0 a0 e1                                      mov lr, pc
00546fb8  d8 f0 9c e5                                      ldr pc, [ip, #0xd8]
00546fbc  2c 10 9f e5                                      ldr r1, [pc, #0x2c]
00546fc0  04 00 a0 e1                                      mov r0, r4
00546fc4  cc 21 95 e5                                      ldr r2, [r5, #0x1cc]
00546fc8  01 10 8f e0                                      add r1, pc, r1
00546fcc  00 c0 94 e5                                      ldr ip, [r4]
00546fd0  00 30 a0 e3                                      mov r3, #0
00546fd4  0f e0 a0 e1                                      mov lr, pc
00546fd8  94 f0 9c e5                                      ldr pc, [ip, #0x94]
00546fdc  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00546fe0  e0 75 39 00 cc 75 39 00 b8 75 39 00 a4 75 39 00  .byte 0xe0, 0x75, 0x39, 0x00, 0xcc, 0x75, 0x39, 0x00, 0xb8, 0x75, 0x39, 0x00, 0xa4, 0x75, 0x39, 0x00
00546ff0  98 75 39 00                                      .byte 0x98, 0x75, 0x39, 0x00

; FUNCTION 0x00547014, declared_size=716, range_size=716, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBox7onEventERKNS_6SEventE
; demangled: glitch::gui::CGUIMessageBox::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00547014  30 40 2d e9                                      push {r4, r5, lr}
00547018  99 30 d0 e5                                      ldrb r3, [r0, #0x99]
0054701c  1c d0 4d e2                                      sub sp, sp, #0x1c
00547020  00 40 a0 e1                                      mov r4, r0
00547024  00 00 53 e3                                      cmp r3, #0
00547028  01 50 a0 e1                                      mov r5, r1
0054702c  09 00 00 0a                                      beq #0x547058
00547030  00 30 91 e5                                      ldr r3, [r1]
00547034  00 10 a0 e3                                      mov r1, #0
00547038  00 10 8d e5                                      str r1, [sp]
0054703c  01 00 53 e1                                      cmp r3, r1
00547040  08 00 8d e5                                      str r0, [sp, #8]
00547044  0c 10 8d e5                                      str r1, [sp, #0xc]
00547048  07 00 00 1a                                      bne #0x54706c
0054704c  10 30 95 e5                                      ldr r3, [r5, #0x10]
00547050  05 00 53 e3                                      cmp r3, #5
00547054  3e 00 00 0a                                      beq #0x547154
00547058  04 00 a0 e1                                      mov r0, r4
0054705c  05 10 a0 e1                                      mov r1, r5
00547060  6d 63 00 eb                                      bl #0x55fe1c
00547064  1c d0 8d e2                                      add sp, sp, #0x1c
00547068  30 80 bd e8                                      pop {r4, r5, pc}
0054706c  02 00 53 e3                                      cmp r3, #2
00547070  f8 ff ff 1a                                      bne #0x547058
00547074  10 30 d5 e5                                      ldrb r3, [r5, #0x10]
00547078  01 00 53 e1                                      cmp r3, r1
0054707c  28 00 00 1a                                      bne #0x547124
00547080  d0 31 d0 e5                                      ldrb r3, [r0, #0x1d0]
00547084  00 00 53 e3                                      cmp r3, #0
00547088  f2 ff ff 0a                                      beq #0x547058
0054708c  70 31 90 e5                                      ldr r3, [r0, #0x170]
00547090  00 00 53 e3                                      cmp r3, #0
00547094  02 00 00 0a                                      beq #0x5470a4
00547098  0c 30 95 e5                                      ldr r3, [r5, #0xc]
0054709c  0d 00 53 e3                                      cmp r3, #0xd
005470a0  50 00 00 0a                                      beq #0x5471e8
005470a4  74 31 94 e5                                      ldr r3, [r4, #0x174]
005470a8  00 00 53 e3                                      cmp r3, #0
005470ac  46 00 00 0a                                      beq #0x5471cc
005470b0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005470b4  1b 00 53 e3                                      cmp r3, #0x1b
005470b8  47 00 00 0a                                      beq #0x5471dc
005470bc  78 31 94 e5                                      ldr r3, [r4, #0x178]
005470c0  00 00 53 e3                                      cmp r3, #0
005470c4  02 00 00 0a                                      beq #0x5470d4
005470c8  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005470cc  59 00 53 e3                                      cmp r3, #0x59
005470d0  7f 00 00 0a                                      beq #0x5472d4
005470d4  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005470d8  00 00 53 e3                                      cmp r3, #0
005470dc  dd ff ff 0a                                      beq #0x547058
005470e0  0c 30 95 e5                                      ldr r3, [r5, #0xc]
005470e4  4e 00 53 e3                                      cmp r3, #0x4e
005470e8  da ff ff 1a                                      bne #0x547058
005470ec  24 30 94 e5                                      ldr r3, [r4, #0x24]
005470f0  0d 20 a0 e3                                      mov r2, #0xd
005470f4  10 20 8d e5                                      str r2, [sp, #0x10]
005470f8  03 00 a0 e1                                      mov r0, r3
005470fc  0d 10 a0 e1                                      mov r1, sp
00547100  00 30 93 e5                                      ldr r3, [r3]
00547104  0f e0 a0 e1                                      mov lr, pc
00547108  08 f0 93 e5                                      ldr pc, [r3, #8]
0054710c  04 00 a0 e1                                      mov r0, r4
00547110  00 30 94 e5                                      ldr r3, [r4]
00547114  0f e0 a0 e1                                      mov lr, pc
00547118  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0054711c  01 00 a0 e3                                      mov r0, #1
00547120  cf ff ff ea                                      b #0x547064
00547124  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00547128  1b 00 53 e3                                      cmp r3, #0x1b
0054712c  30 00 00 0a                                      beq #0x5471f4
00547130  18 00 00 da                                      ble #0x547198
00547134  4e 00 53 e3                                      cmp r3, #0x4e
00547138  4c 00 00 0a                                      beq #0x547270
0054713c  59 00 53 e3                                      cmp r3, #0x59
00547140  c4 ff ff 1a                                      bne #0x547058
00547144  78 31 90 e5                                      ldr r3, [r0, #0x178]
00547148  00 00 53 e3                                      cmp r3, #0
0054714c  16 00 00 1a                                      bne #0x5471ac
00547150  c0 ff ff ea                                      b #0x547058
00547154  08 30 95 e5                                      ldr r3, [r5, #8]
00547158  70 21 90 e5                                      ldr r2, [r0, #0x170]
0054715c  02 00 53 e1                                      cmp r3, r2
00547160  20 00 00 0a                                      beq #0x5471e8
00547164  74 21 90 e5                                      ldr r2, [r0, #0x174]
00547168  02 00 53 e1                                      cmp r3, r2
0054716c  1a 00 00 0a                                      beq #0x5471dc
00547170  64 21 90 e5                                      ldr r2, [r0, #0x164]
00547174  02 00 53 e1                                      cmp r3, r2
00547178  17 00 00 0a                                      beq #0x5471dc
0054717c  78 21 90 e5                                      ldr r2, [r0, #0x178]
00547180  02 00 53 e1                                      cmp r3, r2
00547184  52 00 00 0a                                      beq #0x5472d4
00547188  7c 21 90 e5                                      ldr r2, [r0, #0x17c]
0054718c  02 00 53 e1                                      cmp r3, r2
00547190  b0 ff ff 1a                                      bne #0x547058
00547194  d4 ff ff ea                                      b #0x5470ec
00547198  0d 00 53 e3                                      cmp r3, #0xd
0054719c  ad ff ff 1a                                      bne #0x547058
005471a0  70 31 90 e5                                      ldr r3, [r0, #0x170]
005471a4  00 00 53 e3                                      cmp r3, #0
005471a8  aa ff ff 0a                                      beq #0x547058
005471ac  03 00 a0 e1                                      mov r0, r3
005471b0  01 10 a0 e3                                      mov r1, #1
005471b4  00 30 93 e5                                      ldr r3, [r3]
005471b8  0f e0 a0 e1                                      mov lr, pc
005471bc  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
005471c0  01 30 a0 e3                                      mov r3, #1
005471c4  d0 31 c4 e5                                      strb r3, [r4, #0x1d0]
005471c8  a2 ff ff ea                                      b #0x547058
005471cc  64 31 94 e5                                      ldr r3, [r4, #0x164]
005471d0  00 00 53 e3                                      cmp r3, #0
005471d4  b5 ff ff 1a                                      bne #0x5470b0
005471d8  b7 ff ff ea                                      b #0x5470bc
005471dc  24 30 94 e5                                      ldr r3, [r4, #0x24]
005471e0  0f 20 a0 e3                                      mov r2, #0xf
005471e4  c2 ff ff ea                                      b #0x5470f4
005471e8  24 30 94 e5                                      ldr r3, [r4, #0x24]
005471ec  0e 20 a0 e3                                      mov r2, #0xe
005471f0  bf ff ff ea                                      b #0x5470f4
005471f4  d0 31 d0 e5                                      ldrb r3, [r0, #0x1d0]
005471f8  00 00 53 e3                                      cmp r3, #0
005471fc  1f 00 00 0a                                      beq #0x547280
00547200  70 31 90 e5                                      ldr r3, [r0, #0x170]
00547204  00 00 53 e3                                      cmp r3, #0
00547208  03 00 00 0a                                      beq #0x54721c
0054720c  03 00 a0 e1                                      mov r0, r3
00547210  00 30 93 e5                                      ldr r3, [r3]
00547214  0f e0 a0 e1                                      mov lr, pc
00547218  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
0054721c  78 31 94 e5                                      ldr r3, [r4, #0x178]
00547220  00 00 53 e3                                      cmp r3, #0
00547224  05 00 00 0a                                      beq #0x547240
00547228  70 31 94 e5                                      ldr r3, [r4, #0x170]
0054722c  00 10 a0 e3                                      mov r1, #0
00547230  03 00 a0 e1                                      mov r0, r3
00547234  00 30 93 e5                                      ldr r3, [r3]
00547238  0f e0 a0 e1                                      mov lr, pc
0054723c  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00547240  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00547244  00 00 53 e3                                      cmp r3, #0
00547248  05 00 00 0a                                      beq #0x547264
0054724c  70 31 94 e5                                      ldr r3, [r4, #0x170]
00547250  00 10 a0 e3                                      mov r1, #0
00547254  03 00 a0 e1                                      mov r0, r3
00547258  00 30 93 e5                                      ldr r3, [r3]
0054725c  0f e0 a0 e1                                      mov lr, pc
00547260  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00547264  00 30 a0 e3                                      mov r3, #0
00547268  d0 31 c4 e5                                      strb r3, [r4, #0x1d0]
0054726c  79 ff ff ea                                      b #0x547058
00547270  7c 31 90 e5                                      ldr r3, [r0, #0x17c]
00547274  00 00 53 e3                                      cmp r3, #0
00547278  cb ff ff 1a                                      bne #0x5471ac
0054727c  75 ff ff ea                                      b #0x547058
00547280  74 31 90 e5                                      ldr r3, [r0, #0x174]
00547284  00 00 53 e3                                      cmp r3, #0
00547288  c7 ff ff 1a                                      bne #0x5471ac
0054728c  64 31 90 e5                                      ldr r3, [r0, #0x164]
00547290  00 00 53 e3                                      cmp r3, #0
00547294  6f ff ff 0a                                      beq #0x547058
00547298  03 00 a0 e1                                      mov r0, r3
0054729c  00 30 93 e5                                      ldr r3, [r3]
005472a0  0f e0 a0 e1                                      mov lr, pc
005472a4  2c f0 93 e5                                      ldr pc, [r3, #0x2c]
005472a8  00 00 50 e3                                      cmp r0, #0
005472ac  69 ff ff 0a                                      beq #0x547058
005472b0  64 31 94 e5                                      ldr r3, [r4, #0x164]
005472b4  01 10 a0 e3                                      mov r1, #1
005472b8  03 00 a0 e1                                      mov r0, r3
005472bc  00 30 93 e5                                      ldr r3, [r3]
005472c0  0f e0 a0 e1                                      mov lr, pc
005472c4  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
005472c8  01 30 a0 e3                                      mov r3, #1
005472cc  d0 31 c4 e5                                      strb r3, [r4, #0x1d0]
005472d0  60 ff ff ea                                      b #0x547058
005472d4  24 30 94 e5                                      ldr r3, [r4, #0x24]
005472d8  0c 20 a0 e3                                      mov r2, #0xc
005472dc  84 ff ff ea                                      b #0x5470f4

; FUNCTION 0x005472e0, declared_size=1836, range_size=1836, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBox15refreshControlsEv
; demangled: glitch::gui::CGUIMessageBox::refreshControls()
; decoder-mode: arm
005472e0  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
005472e4  50 31 90 e5                                      ldr r3, [r0, #0x150]
005472e8  5c d0 4d e2                                      sub sp, sp, #0x5c
005472ec  00 40 a0 e1                                      mov r4, r0
005472f0  03 00 a0 e1                                      mov r0, r3
005472f4  00 30 93 e5                                      ldr r3, [r3]
005472f8  0f e0 a0 e1                                      mov lr, pc
005472fc  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00547300  07 10 a0 e3                                      mov r1, #7
00547304  00 30 90 e5                                      ldr r3, [r0]
00547308  00 50 a0 e1                                      mov r5, r0
0054730c  0f e0 a0 e1                                      mov lr, pc
00547310  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00547314  06 10 a0 e3                                      mov r1, #6
00547318  00 70 a0 e1                                      mov r7, r0
0054731c  00 30 95 e5                                      ldr r3, [r5]
00547320  05 00 a0 e1                                      mov r0, r5
00547324  0f e0 a0 e1                                      mov lr, pc
00547328  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054732c  02 10 a0 e3                                      mov r1, #2
00547330  00 60 a0 e1                                      mov r6, r0
00547334  00 30 95 e5                                      ldr r3, [r5]
00547338  05 00 a0 e1                                      mov r0, r5
0054733c  0f e0 a0 e1                                      mov lr, pc
00547340  18 f0 93 e5                                      ldr pc, [r3, #0x18]
00547344  00 30 95 e5                                      ldr r3, [r5]
00547348  02 80 80 e2                                      add r8, r0, #2
0054734c  02 10 a0 e3                                      mov r1, #2
00547350  05 00 a0 e1                                      mov r0, r5
00547354  0f e0 a0 e1                                      mov lr, pc
00547358  18 f0 93 e5                                      ldr pc, [r3, #0x18]
0054735c  14 00 8d e5                                      str r0, [sp, #0x14]
00547360  54 10 94 e5                                      ldr r1, [r4, #0x54]
00547364  50 e0 94 e5                                      ldr lr, [r4, #0x50]
00547368  48 c0 94 e5                                      ldr ip, [r4, #0x48]
0054736c  4c 30 94 e5                                      ldr r3, [r4, #0x4c]
00547370  80 01 94 e5                                      ldr r0, [r4, #0x180]
00547374  a7 af 87 e0                                      add sl, r7, r7, lsr #31
00547378  a6 2f 86 e0                                      add r2, r6, r6, lsr #31
0054737c  01 30 63 e0                                      rsb r3, r3, r1
00547380  ca a0 a0 e1                                      asr sl, sl, #1
00547384  0e c0 6c e0                                      rsb ip, ip, lr
00547388  02 10 e0 e3                                      mvn r1, #2
0054738c  00 00 50 e3                                      cmp r0, #0
00547390  10 a0 8d e5                                      str sl, [sp, #0x10]
00547394  91 37 23 e0                                      mla r3, r1, r7, r3
00547398  0c c0 66 e0                                      rsb ip, r6, ip
0054739c  c2 20 a0 e1                                      asr r2, r2, #1
005473a0  08 a0 8a e0                                      add sl, sl, r8
005473a4  72 01 00 0a                                      beq #0x547974
005473a8  03 30 8a e0                                      add r3, sl, r3
005473ac  0c c0 82 e0                                      add ip, r2, ip
005473b0  38 10 8d e2                                      add r1, sp, #0x38
005473b4  44 30 8d e5                                      str r3, [sp, #0x44]
005473b8  40 c0 8d e5                                      str ip, [sp, #0x40]
005473bc  38 20 8d e5                                      str r2, [sp, #0x38]
005473c0  3c a0 8d e5                                      str sl, [sp, #0x3c]
005473c4  dd b4 ff eb                                      bl #0x534740
005473c8  80 31 94 e5                                      ldr r3, [r4, #0x180]
005473cc  cc 11 94 e5                                      ldr r1, [r4, #0x1cc]
005473d0  03 00 a0 e1                                      mov r0, r3
005473d4  00 30 93 e5                                      ldr r3, [r3]
005473d8  0f e0 a0 e1                                      mov lr, pc
005473dc  44 f0 93 e5                                      ldr pc, [r3, #0x44]
005473e0  80 31 94 e5                                      ldr r3, [r4, #0x180]
005473e4  28 b0 8d e2                                      add fp, sp, #0x28
005473e8  03 00 a0 e1                                      mov r0, r3
005473ec  00 30 93 e5                                      ldr r3, [r3]
005473f0  0f e0 a0 e1                                      mov lr, pc
005473f4  ac f0 93 e5                                      ldr pc, [r3, #0xac]
005473f8  80 31 94 e5                                      ldr r3, [r4, #0x180]
005473fc  00 90 a0 e1                                      mov sb, r0
00547400  08 80 80 e0                                      add r8, r0, r8
00547404  28 20 93 e5                                      ldr r2, [r3, #0x28]
00547408  03 00 a0 e1                                      mov r0, r3
0054740c  0b 10 a0 e1                                      mov r1, fp
00547410  28 20 8d e5                                      str r2, [sp, #0x28]
00547414  2c 20 93 e5                                      ldr r2, [r3, #0x2c]
00547418  2c 20 8d e5                                      str r2, [sp, #0x2c]
0054741c  30 30 93 e5                                      ldr r3, [r3, #0x30]
00547420  02 20 89 e0                                      add r2, sb, r2
00547424  34 20 8d e5                                      str r2, [sp, #0x34]
00547428  30 30 8d e5                                      str r3, [sp, #0x30]
0054742c  c3 b4 ff eb                                      bl #0x534740
00547430  28 c0 94 e5                                      ldr ip, [r4, #0x28]
00547434  2c 10 84 e2                                      add r1, r4, #0x2c
00547438  0e 00 91 e8                                      ldm r1, {r1, r2, r3}
0054743c  07 00 a0 e1                                      mov r0, r7
00547440  28 c0 8d e5                                      str ip, [sp, #0x28]
00547444  30 20 8d e5                                      str r2, [sp, #0x30]
00547448  34 30 8d e5                                      str r3, [sp, #0x34]
0054744c  2c 10 8d e5                                      str r1, [sp, #0x2c]
00547450  43 1d f7 eb                                      bl #0x30e964
00547454  01 11 a0 e3                                      mov r1, #0x40000000
00547458  02 16 81 e2                                      add r1, r1, #0x200000
0054745c  42 1e f7 eb                                      bl #0x30ed6c
00547460  14 1e f7 eb                                      bl #0x30ecb8
00547464  18 1c f7 eb                                      bl #0x30e4cc
00547468  24 30 94 e5                                      ldr r3, [r4, #0x24]
0054746c  00 80 88 e0                                      add r8, r8, r0
00547470  0b 10 a0 e1                                      mov r1, fp
00547474  44 20 93 e5                                      ldr r2, [r3, #0x44]
00547478  3c 30 93 e5                                      ldr r3, [r3, #0x3c]
0054747c  04 00 a0 e1                                      mov r0, r4
00547480  02 30 63 e0                                      rsb r3, r3, r2
00547484  03 30 68 e0                                      rsb r3, r8, r3
00547488  a3 3f 83 e0                                      add r3, r3, r3, lsr #31
0054748c  c3 30 a0 e1                                      asr r3, r3, #1
00547490  08 80 83 e0                                      add r8, r3, r8
00547494  34 80 8d e5                                      str r8, [sp, #0x34]
00547498  2c 30 8d e5                                      str r3, [sp, #0x2c]
0054749c  a7 b4 ff eb                                      bl #0x534740
005474a0  84 31 94 e5                                      ldr r3, [r4, #0x184]
005474a4  50 00 94 e5                                      ldr r0, [r4, #0x50]
005474a8  48 10 94 e5                                      ldr r1, [r4, #0x48]
005474ac  01 20 03 e2                                      and r2, r3, #1
005474b0  02 00 13 e3                                      tst r3, #2
005474b4  14 c0 9d e5                                      ldr ip, [sp, #0x14]
005474b8  01 20 82 12                                      addne r2, r2, #1
005474bc  04 00 13 e3                                      tst r3, #4
005474c0  01 20 82 12                                      addne r2, r2, #1
005474c4  08 00 13 e3                                      tst r3, #8
005474c8  06 80 8c e0                                      add r8, ip, r6
005474cc  01 20 82 12                                      addne r2, r2, #1
005474d0  00 10 61 e0                                      rsb r1, r1, r0
005474d4  98 12 62 e0                                      mls r2, r8, r2, r1
005474d8  10 c0 9d e5                                      ldr ip, [sp, #0x10]
005474dc  a2 2f 82 e0                                      add r2, r2, r2, lsr #31
005474e0  01 b0 13 e2                                      ands fp, r3, #1
005474e4  0c a0 8a e0                                      add sl, sl, ip
005474e8  09 90 8a e0                                      add sb, sl, sb
005474ec  c2 20 a0 e1                                      asr r2, r2, #1
005474f0  07 70 89 e0                                      add r7, sb, r7
005474f4  06 60 82 e0                                      add r6, r2, r6
005474f8  24 70 8d e5                                      str r7, [sp, #0x24]
005474fc  20 60 8d e5                                      str r6, [sp, #0x20]
00547500  1c 90 8d e5                                      str sb, [sp, #0x1c]
00547504  18 20 8d e5                                      str r2, [sp, #0x18]
00547508  7d 00 00 0a                                      beq #0x547704
0054750c  70 31 94 e5                                      ldr r3, [r4, #0x170]
00547510  00 00 53 e3                                      cmp r3, #0
00547514  ff 00 00 0a                                      beq #0x547918
00547518  03 00 a0 e1                                      mov r0, r3
0054751c  18 10 8d e2                                      add r1, sp, #0x18
00547520  86 b4 ff eb                                      bl #0x534740
00547524  70 61 94 e5                                      ldr r6, [r4, #0x170]
00547528  00 30 95 e5                                      ldr r3, [r5]
0054752c  00 10 a0 e3                                      mov r1, #0
00547530  00 20 96 e5                                      ldr r2, [r6]
00547534  05 00 a0 e1                                      mov r0, r5
00547538  44 70 92 e5                                      ldr r7, [r2, #0x44]
0054753c  0f e0 a0 e1                                      mov lr, pc
00547540  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00547544  00 10 a0 e1                                      mov r1, r0
00547548  06 00 a0 e1                                      mov r0, r6
0054754c  37 ff 2f e1                                      blx r7
00547550  20 20 9d e5                                      ldr r2, [sp, #0x20]
00547554  18 30 9d e5                                      ldr r3, [sp, #0x18]
00547558  70 61 94 e5                                      ldr r6, [r4, #0x170]
0054755c  08 20 82 e0                                      add r2, r2, r8
00547560  08 30 83 e0                                      add r3, r3, r8
00547564  20 20 8d e5                                      str r2, [sp, #0x20]
00547568  18 30 8d e5                                      str r3, [sp, #0x18]
0054756c  84 31 94 e5                                      ldr r3, [r4, #0x184]
00547570  02 a0 13 e2                                      ands sl, r3, #2
00547574  74 00 00 0a                                      beq #0x54774c
00547578  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054757c  00 00 53 e3                                      cmp r3, #0
00547580  b6 00 00 0a                                      beq #0x547860
00547584  03 00 a0 e1                                      mov r0, r3
00547588  18 10 8d e2                                      add r1, sp, #0x18
0054758c  6b b4 ff eb                                      bl #0x534740
00547590  74 71 94 e5                                      ldr r7, [r4, #0x174]
00547594  00 30 95 e5                                      ldr r3, [r5]
00547598  01 10 a0 e3                                      mov r1, #1
0054759c  00 20 97 e5                                      ldr r2, [r7]
005475a0  05 00 a0 e1                                      mov r0, r5
005475a4  44 a0 92 e5                                      ldr sl, [r2, #0x44]
005475a8  0f e0 a0 e1                                      mov lr, pc
005475ac  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005475b0  00 10 a0 e1                                      mov r1, r0
005475b4  07 00 a0 e1                                      mov r0, r7
005475b8  3a ff 2f e1                                      blx sl
005475bc  20 20 9d e5                                      ldr r2, [sp, #0x20]
005475c0  18 30 9d e5                                      ldr r3, [sp, #0x18]
005475c4  00 00 56 e3                                      cmp r6, #0
005475c8  08 20 82 e0                                      add r2, r2, r8
005475cc  08 30 83 e0                                      add r3, r3, r8
005475d0  20 20 8d e5                                      str r2, [sp, #0x20]
005475d4  18 30 8d e5                                      str r3, [sp, #0x18]
005475d8  74 61 94 05                                      ldreq r6, [r4, #0x174]
005475dc  84 31 94 e5                                      ldr r3, [r4, #0x184]
005475e0  04 a0 13 e2                                      ands sl, r3, #4
005475e4  68 00 00 0a                                      beq #0x54778c
005475e8  78 31 94 e5                                      ldr r3, [r4, #0x178]
005475ec  00 00 53 e3                                      cmp r3, #0
005475f0  83 00 00 0a                                      beq #0x547804
005475f4  03 00 a0 e1                                      mov r0, r3
005475f8  18 10 8d e2                                      add r1, sp, #0x18
005475fc  4f b4 ff eb                                      bl #0x534740
00547600  78 71 94 e5                                      ldr r7, [r4, #0x178]
00547604  00 30 95 e5                                      ldr r3, [r5]
00547608  02 10 a0 e3                                      mov r1, #2
0054760c  00 20 97 e5                                      ldr r2, [r7]
00547610  05 00 a0 e1                                      mov r0, r5
00547614  44 a0 92 e5                                      ldr sl, [r2, #0x44]
00547618  0f e0 a0 e1                                      mov lr, pc
0054761c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00547620  00 10 a0 e1                                      mov r1, r0
00547624  07 00 a0 e1                                      mov r0, r7
00547628  3a ff 2f e1                                      blx sl
0054762c  20 20 9d e5                                      ldr r2, [sp, #0x20]
00547630  18 30 9d e5                                      ldr r3, [sp, #0x18]
00547634  00 00 56 e3                                      cmp r6, #0
00547638  08 20 82 e0                                      add r2, r2, r8
0054763c  08 30 83 e0                                      add r3, r3, r8
00547640  20 20 8d e5                                      str r2, [sp, #0x20]
00547644  18 30 8d e5                                      str r3, [sp, #0x18]
00547648  78 61 94 05                                      ldreq r6, [r4, #0x178]
0054764c  84 31 94 e5                                      ldr r3, [r4, #0x184]
00547650  08 70 13 e2                                      ands r7, r3, #8
00547654  5c 00 00 0a                                      beq #0x5477cc
00547658  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
0054765c  00 00 53 e3                                      cmp r3, #0
00547660  95 00 00 0a                                      beq #0x5478bc
00547664  03 00 a0 e1                                      mov r0, r3
00547668  18 10 8d e2                                      add r1, sp, #0x18
0054766c  33 b4 ff eb                                      bl #0x534740
00547670  7c 71 94 e5                                      ldr r7, [r4, #0x17c]
00547674  00 30 95 e5                                      ldr r3, [r5]
00547678  05 00 a0 e1                                      mov r0, r5
0054767c  00 20 97 e5                                      ldr r2, [r7]
00547680  03 10 a0 e3                                      mov r1, #3
00547684  44 50 92 e5                                      ldr r5, [r2, #0x44]
00547688  0f e0 a0 e1                                      mov lr, pc
0054768c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00547690  00 10 a0 e1                                      mov r1, r0
00547694  07 00 a0 e1                                      mov r0, r7
00547698  35 ff 2f e1                                      blx r5
0054769c  20 30 9d e5                                      ldr r3, [sp, #0x20]
005476a0  18 20 9d e5                                      ldr r2, [sp, #0x18]
005476a4  00 00 56 e3                                      cmp r6, #0
005476a8  08 30 83 e0                                      add r3, r3, r8
005476ac  08 80 82 e0                                      add r8, r2, r8
005476b0  20 30 8d e5                                      str r3, [sp, #0x20]
005476b4  18 80 8d e5                                      str r8, [sp, #0x18]
005476b8  7c 61 94 05                                      ldreq r6, [r4, #0x17c]
005476bc  50 31 94 e5                                      ldr r3, [r4, #0x150]
005476c0  04 10 a0 e1                                      mov r1, r4
005476c4  03 00 a0 e1                                      mov r0, r3
005476c8  00 30 93 e5                                      ldr r3, [r3]
005476cc  0f e0 a0 e1                                      mov lr, pc
005476d0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005476d4  00 00 50 e3                                      cmp r0, #0
005476d8  07 00 00 0a                                      beq #0x5476fc
005476dc  00 00 56 e3                                      cmp r6, #0
005476e0  05 00 00 0a                                      beq #0x5476fc
005476e4  50 31 94 e5                                      ldr r3, [r4, #0x150]
005476e8  06 10 a0 e1                                      mov r1, r6
005476ec  03 00 a0 e1                                      mov r0, r3
005476f0  00 30 93 e5                                      ldr r3, [r3]
005476f4  0f e0 a0 e1                                      mov lr, pc
005476f8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005476fc  5c d0 8d e2                                      add sp, sp, #0x5c
00547700  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00547704  70 21 94 e5                                      ldr r2, [r4, #0x170]
00547708  00 00 52 e3                                      cmp r2, #0
0054770c  02 60 a0 01                                      moveq r6, r2
00547710  96 ff ff 0a                                      beq #0x547570
00547714  00 30 92 e5                                      ldr r3, [r2]
00547718  0b 60 a0 e1                                      mov r6, fp
0054771c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00547720  00 00 82 e0                                      add r0, r2, r0
00547724  96 57 f7 eb                                      bl #0x31d584
00547728  70 31 94 e5                                      ldr r3, [r4, #0x170]
0054772c  03 00 a0 e1                                      mov r0, r3
00547730  00 30 93 e5                                      ldr r3, [r3]
00547734  0f e0 a0 e1                                      mov lr, pc
00547738  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0054773c  84 31 94 e5                                      ldr r3, [r4, #0x184]
00547740  70 b1 84 e5                                      str fp, [r4, #0x170]
00547744  02 a0 13 e2                                      ands sl, r3, #2
00547748  8a ff ff 1a                                      bne #0x547578
0054774c  74 21 94 e5                                      ldr r2, [r4, #0x174]
00547750  00 00 52 e3                                      cmp r2, #0
00547754  a1 ff ff 0a                                      beq #0x5475e0
00547758  00 30 92 e5                                      ldr r3, [r2]
0054775c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00547760  00 00 82 e0                                      add r0, r2, r0
00547764  86 57 f7 eb                                      bl #0x31d584
00547768  74 31 94 e5                                      ldr r3, [r4, #0x174]
0054776c  03 00 a0 e1                                      mov r0, r3
00547770  00 30 93 e5                                      ldr r3, [r3]
00547774  0f e0 a0 e1                                      mov lr, pc
00547778  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
0054777c  84 31 94 e5                                      ldr r3, [r4, #0x184]
00547780  74 a1 84 e5                                      str sl, [r4, #0x174]
00547784  04 a0 13 e2                                      ands sl, r3, #4
00547788  96 ff ff 1a                                      bne #0x5475e8
0054778c  78 21 94 e5                                      ldr r2, [r4, #0x178]
00547790  00 00 52 e3                                      cmp r2, #0
00547794  ad ff ff 0a                                      beq #0x547650
00547798  00 30 92 e5                                      ldr r3, [r2]
0054779c  10 00 13 e5                                      ldr r0, [r3, #-0x10]
005477a0  00 00 82 e0                                      add r0, r2, r0
005477a4  76 57 f7 eb                                      bl #0x31d584
005477a8  78 31 94 e5                                      ldr r3, [r4, #0x178]
005477ac  03 00 a0 e1                                      mov r0, r3
005477b0  00 30 93 e5                                      ldr r3, [r3]
005477b4  0f e0 a0 e1                                      mov lr, pc
005477b8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005477bc  84 31 94 e5                                      ldr r3, [r4, #0x184]
005477c0  78 a1 84 e5                                      str sl, [r4, #0x178]
005477c4  08 70 13 e2                                      ands r7, r3, #8
005477c8  a2 ff ff 1a                                      bne #0x547658
005477cc  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005477d0  00 00 53 e3                                      cmp r3, #0
005477d4  b8 ff ff 0a                                      beq #0x5476bc
005477d8  00 20 93 e5                                      ldr r2, [r3]
005477dc  10 00 12 e5                                      ldr r0, [r2, #-0x10]
005477e0  00 00 83 e0                                      add r0, r3, r0
005477e4  66 57 f7 eb                                      bl #0x31d584
005477e8  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005477ec  03 00 a0 e1                                      mov r0, r3
005477f0  00 30 93 e5                                      ldr r3, [r3]
005477f4  0f e0 a0 e1                                      mov lr, pc
005477f8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005477fc  7c 71 84 e5                                      str r7, [r4, #0x17c]
00547800  ad ff ff ea                                      b #0x5476bc
00547804  50 c1 94 e5                                      ldr ip, [r4, #0x150]
00547808  04 20 a0 e1                                      mov r2, r4
0054780c  18 10 8d e2                                      add r1, sp, #0x18
00547810  0c 00 a0 e1                                      mov r0, ip
00547814  00 c0 9c e5                                      ldr ip, [ip]
00547818  04 30 8d e5                                      str r3, [sp, #4]
0054781c  00 30 8d e5                                      str r3, [sp]
00547820  00 30 e0 e3                                      mvn r3, #0
00547824  0f e0 a0 e1                                      mov lr, pc
00547828  78 f0 9c e5                                      ldr pc, [ip, #0x78]
0054782c  78 01 84 e5                                      str r0, [r4, #0x178]
00547830  00 30 90 e5                                      ldr r3, [r0]
00547834  01 10 a0 e3                                      mov r1, #1
00547838  0f e0 a0 e1                                      mov lr, pc
0054783c  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00547840  78 31 94 e5                                      ldr r3, [r4, #0x178]
00547844  00 20 93 e5                                      ldr r2, [r3]
00547848  10 20 12 e5                                      ldr r2, [r2, #-0x10]
0054784c  02 30 83 e0                                      add r3, r3, r2
00547850  04 20 93 e5                                      ldr r2, [r3, #4]
00547854  01 20 82 e2                                      add r2, r2, #1
00547858  04 20 83 e5                                      str r2, [r3, #4]
0054785c  67 ff ff ea                                      b #0x547600
00547860  50 c1 94 e5                                      ldr ip, [r4, #0x150]
00547864  04 20 a0 e1                                      mov r2, r4
00547868  18 10 8d e2                                      add r1, sp, #0x18
0054786c  0c 00 a0 e1                                      mov r0, ip
00547870  00 c0 9c e5                                      ldr ip, [ip]
00547874  04 30 8d e5                                      str r3, [sp, #4]
00547878  00 30 8d e5                                      str r3, [sp]
0054787c  00 30 e0 e3                                      mvn r3, #0
00547880  0f e0 a0 e1                                      mov lr, pc
00547884  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00547888  74 01 84 e5                                      str r0, [r4, #0x174]
0054788c  00 30 90 e5                                      ldr r3, [r0]
00547890  01 10 a0 e3                                      mov r1, #1
00547894  0f e0 a0 e1                                      mov lr, pc
00547898  38 f0 93 e5                                      ldr pc, [r3, #0x38]
0054789c  74 31 94 e5                                      ldr r3, [r4, #0x174]
005478a0  00 20 93 e5                                      ldr r2, [r3]
005478a4  10 20 12 e5                                      ldr r2, [r2, #-0x10]
005478a8  02 30 83 e0                                      add r3, r3, r2
005478ac  04 20 93 e5                                      ldr r2, [r3, #4]
005478b0  01 20 82 e2                                      add r2, r2, #1
005478b4  04 20 83 e5                                      str r2, [r3, #4]
005478b8  34 ff ff ea                                      b #0x547590
005478bc  50 c1 94 e5                                      ldr ip, [r4, #0x150]
005478c0  04 20 a0 e1                                      mov r2, r4
005478c4  18 10 8d e2                                      add r1, sp, #0x18
005478c8  0c 00 a0 e1                                      mov r0, ip
005478cc  00 c0 9c e5                                      ldr ip, [ip]
005478d0  04 30 8d e5                                      str r3, [sp, #4]
005478d4  00 30 8d e5                                      str r3, [sp]
005478d8  00 30 e0 e3                                      mvn r3, #0
005478dc  0f e0 a0 e1                                      mov lr, pc
005478e0  78 f0 9c e5                                      ldr pc, [ip, #0x78]
005478e4  7c 01 84 e5                                      str r0, [r4, #0x17c]
005478e8  00 30 90 e5                                      ldr r3, [r0]
005478ec  01 10 a0 e3                                      mov r1, #1
005478f0  0f e0 a0 e1                                      mov lr, pc
005478f4  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005478f8  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
005478fc  00 20 93 e5                                      ldr r2, [r3]
00547900  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00547904  02 30 83 e0                                      add r3, r3, r2
00547908  04 20 93 e5                                      ldr r2, [r3, #4]
0054790c  01 20 82 e2                                      add r2, r2, #1
00547910  04 20 83 e5                                      str r2, [r3, #4]
00547914  55 ff ff ea                                      b #0x547670
00547918  50 c1 94 e5                                      ldr ip, [r4, #0x150]
0054791c  04 20 a0 e1                                      mov r2, r4
00547920  18 10 8d e2                                      add r1, sp, #0x18
00547924  0c 00 a0 e1                                      mov r0, ip
00547928  00 c0 9c e5                                      ldr ip, [ip]
0054792c  04 30 8d e5                                      str r3, [sp, #4]
00547930  00 30 8d e5                                      str r3, [sp]
00547934  00 30 e0 e3                                      mvn r3, #0
00547938  0f e0 a0 e1                                      mov lr, pc
0054793c  78 f0 9c e5                                      ldr pc, [ip, #0x78]
00547940  70 01 84 e5                                      str r0, [r4, #0x170]
00547944  00 30 90 e5                                      ldr r3, [r0]
00547948  01 10 a0 e3                                      mov r1, #1
0054794c  0f e0 a0 e1                                      mov lr, pc
00547950  38 f0 93 e5                                      ldr pc, [r3, #0x38]
00547954  70 31 94 e5                                      ldr r3, [r4, #0x170]
00547958  00 20 93 e5                                      ldr r2, [r3]
0054795c  10 20 12 e5                                      ldr r2, [r2, #-0x10]
00547960  02 30 83 e0                                      add r3, r3, r2
00547964  04 20 93 e5                                      ldr r2, [r3, #4]
00547968  01 20 82 e2                                      add r2, r2, #1
0054796c  04 20 83 e5                                      str r2, [r3, #4]
00547970  eb fe ff ea                                      b #0x547524
00547974  50 e1 94 e5                                      ldr lr, [r4, #0x150]
00547978  03 30 8a e0                                      add r3, sl, r3
0054797c  cc 11 94 e5                                      ldr r1, [r4, #0x1cc]
00547980  00 90 9e e5                                      ldr sb, [lr]
00547984  0c c0 82 e0                                      add ip, r2, ip
00547988  a8 90 99 e5                                      ldr sb, [sb, #0xa8]
0054798c  54 30 8d e5                                      str r3, [sp, #0x54]
00547990  00 30 e0 e3                                      mvn r3, #0
00547994  50 c0 8d e5                                      str ip, [sp, #0x50]
00547998  08 30 8d e5                                      str r3, [sp, #8]
0054799c  48 20 8d e5                                      str r2, [sp, #0x48]
005479a0  00 30 a0 e1                                      mov r3, r0
005479a4  48 20 8d e2                                      add r2, sp, #0x48
005479a8  00 00 8d e5                                      str r0, [sp]
005479ac  0c 00 8d e5                                      str r0, [sp, #0xc]
005479b0  4c a0 8d e5                                      str sl, [sp, #0x4c]
005479b4  0e 00 a0 e1                                      mov r0, lr
005479b8  04 40 8d e5                                      str r4, [sp, #4]
005479bc  39 ff 2f e1                                      blx sb
005479c0  80 01 84 e5                                      str r0, [r4, #0x180]
005479c4  00 30 90 e5                                      ldr r3, [r0]
005479c8  01 10 a0 e3                                      mov r1, #1
005479cc  0f e0 a0 e1                                      mov lr, pc
005479d0  a4 f0 93 e5                                      ldr pc, [r3, #0xa4]
005479d4  80 31 94 e5                                      ldr r3, [r4, #0x180]
005479d8  01 10 a0 e3                                      mov r1, #1
005479dc  03 00 a0 e1                                      mov r0, r3
005479e0  00 30 93 e5                                      ldr r3, [r3]
005479e4  0f e0 a0 e1                                      mov lr, pc
005479e8  38 f0 93 e5                                      ldr pc, [r3, #0x38]
005479ec  80 31 94 e5                                      ldr r3, [r4, #0x180]
005479f0  00 20 93 e5                                      ldr r2, [r3]
005479f4  10 20 12 e5                                      ldr r2, [r2, #-0x10]
005479f8  02 30 83 e0                                      add r3, r3, r2
005479fc  04 20 93 e5                                      ldr r2, [r3, #4]
00547a00  01 20 82 e2                                      add r2, r2, #1
00547a04  04 20 83 e5                                      str r2, [r3, #4]
00547a08  74 fe ff ea                                      b #0x5473e0

; FUNCTION 0x00547a0c, declared_size=316, range_size=316, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBoxC2EPNS0_15IGUIEnvironmentEPKwS5_iPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMessageBox::CGUIMessageBox(glitch::gui::IGUIEnvironment*, wchar_t const*, wchar_t const*, int, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00547a0c  f0 40 2d e9                                      push {r4, r5, r6, r7, lr}
00547a10  24 d0 4d e2                                      sub sp, sp, #0x24
00547a14  48 c0 9d e5                                      ldr ip, [sp, #0x48]
00547a18  01 50 a0 e1                                      mov r5, r1
00547a1c  03 60 a0 e1                                      mov r6, r3
00547a20  0c e0 9c e5                                      ldr lr, [ip, #0xc]
00547a24  00 70 9c e5                                      ldr r7, [ip]
00547a28  10 10 9c e9                                      ldmib ip, {r4, ip}
00547a2c  04 10 81 e2                                      add r1, r1, #4
00547a30  40 30 9d e5                                      ldr r3, [sp, #0x40]
00547a34  14 c0 8d e5                                      str ip, [sp, #0x14]
00547a38  44 c0 9d e5                                      ldr ip, [sp, #0x44]
00547a3c  18 e0 8d e5                                      str lr, [sp, #0x18]
00547a40  0c 70 8d e5                                      str r7, [sp, #0xc]
00547a44  00 c0 8d e5                                      str ip, [sp]
00547a48  0c c0 8d e2                                      add ip, sp, #0xc
00547a4c  10 40 8d e5                                      str r4, [sp, #0x10]
00547a50  04 c0 8d e5                                      str ip, [sp, #4]
00547a54  00 40 a0 e1                                      mov r4, r0
00547a58  08 5f 00 eb                                      bl #0x55f680
00547a5c  00 30 95 e5                                      ldr r3, [r5]
00547a60  38 10 9d e5                                      ldr r1, [sp, #0x38]
00547a64  00 70 a0 e3                                      mov r7, #0
00547a68  00 30 84 e5                                      str r3, [r4]
00547a6c  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00547a70  28 c0 95 e5                                      ldr ip, [r5, #0x28]
00547a74  1c 20 8d e2                                      add r2, sp, #0x1c
00547a78  62 0f 84 e2                                      add r0, r4, #0x188
00547a7c  03 c0 84 e7                                      str ip, [r4, r3]
00547a80  00 30 94 e5                                      ldr r3, [r4]
00547a84  2c c0 95 e5                                      ldr ip, [r5, #0x2c]
00547a88  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00547a8c  03 c0 84 e7                                      str ip, [r4, r3]
00547a90  3c 30 9d e5                                      ldr r3, [sp, #0x3c]
00547a94  70 71 84 e5                                      str r7, [r4, #0x170]
00547a98  74 71 84 e5                                      str r7, [r4, #0x174]
00547a9c  84 31 84 e5                                      str r3, [r4, #0x184]
00547aa0  78 71 84 e5                                      str r7, [r4, #0x178]
00547aa4  7c 71 84 e5                                      str r7, [r4, #0x17c]
00547aa8  80 71 84 e5                                      str r7, [r4, #0x180]
00547aac  12 79 f7 eb                                      bl #0x325efc
00547ab0  50 31 94 e5                                      ldr r3, [r4, #0x150]
00547ab4  0c 20 a0 e3                                      mov r2, #0xc
00547ab8  54 21 84 e5                                      str r2, [r4, #0x154]
00547abc  d0 71 c4 e5                                      strb r7, [r4, #0x1d0]
00547ac0  07 10 a0 e1                                      mov r1, r7
00547ac4  03 00 a0 e1                                      mov r0, r3
00547ac8  00 30 93 e5                                      ldr r3, [r3]
00547acc  0f e0 a0 e1                                      mov lr, pc
00547ad0  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00547ad4  04 00 a0 e1                                      mov r0, r4
00547ad8  1d 5c 00 eb                                      bl #0x55eb54
00547adc  00 30 90 e5                                      ldr r3, [r0]
00547ae0  0f e0 a0 e1                                      mov lr, pc
00547ae4  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00547ae8  04 00 a0 e1                                      mov r0, r4
00547aec  16 5c 00 eb                                      bl #0x55eb4c
00547af0  00 30 90 e5                                      ldr r3, [r0]
00547af4  0f e0 a0 e1                                      mov lr, pc
00547af8  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00547afc  07 00 56 e1                                      cmp r6, r7
00547b00  05 00 00 0a                                      beq #0x547b1c
00547b04  06 00 a0 e1                                      mov r0, r6
00547b08  5e 1c f7 eb                                      bl #0x30ec88
00547b0c  06 10 a0 e1                                      mov r1, r6
00547b10  00 21 86 e0                                      add r2, r6, r0, lsl #2
00547b14  a0 00 84 e2                                      add r0, r4, #0xa0
00547b18  a0 6d f7 eb                                      bl #0x3231a0
00547b1c  50 31 94 e5                                      ldr r3, [r4, #0x150]
00547b20  04 10 a0 e1                                      mov r1, r4
00547b24  03 00 a0 e1                                      mov r0, r3
00547b28  00 30 93 e5                                      ldr r3, [r3]
00547b2c  0f e0 a0 e1                                      mov lr, pc
00547b30  10 f0 93 e5                                      ldr pc, [r3, #0x10]
00547b34  04 00 a0 e1                                      mov r0, r4
00547b38  e8 fd ff eb                                      bl #0x5472e0
00547b3c  04 00 a0 e1                                      mov r0, r4
00547b40  24 d0 8d e2                                      add sp, sp, #0x24
00547b44  f0 80 bd e8                                      pop {r4, r5, r6, r7, pc}

; FUNCTION 0x00547cb4, declared_size=256, range_size=256, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBoxD1Ev
; demangled: glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00547cb4  70 40 2d e9                                      push {r4, r5, r6, lr}
00547cb8  e8 50 9f e5                                      ldr r5, [pc, #0xe8]
00547cbc  e8 30 9f e5                                      ldr r3, [pc, #0xe8]
00547cc0  80 21 90 e5                                      ldr r2, [r0, #0x180]
00547cc4  05 50 8f e0                                      add r5, pc, r5
00547cc8  03 30 95 e7                                      ldr r3, [r5, r3]
00547ccc  00 40 a0 e1                                      mov r4, r0
00547cd0  00 00 52 e3                                      cmp r2, #0
00547cd4  d0 10 83 e2                                      add r1, r3, #0xd0
00547cd8  10 00 83 e2                                      add r0, r3, #0x10
00547cdc  b0 30 83 e2                                      add r3, r3, #0xb0
00547ce0  00 00 84 e5                                      str r0, [r4]
00547ce4  d4 31 84 e5                                      str r3, [r4, #0x1d4]
00547ce8  d8 11 84 e5                                      str r1, [r4, #0x1d8]
00547cec  03 00 00 0a                                      beq #0x547d00
00547cf0  00 30 92 e5                                      ldr r3, [r2]
00547cf4  10 00 13 e5                                      ldr r0, [r3, #-0x10]
00547cf8  00 00 82 e0                                      add r0, r2, r0
00547cfc  20 56 f7 eb                                      bl #0x31d584
00547d00  70 31 94 e5                                      ldr r3, [r4, #0x170]
00547d04  00 00 53 e3                                      cmp r3, #0
00547d08  03 00 00 0a                                      beq #0x547d1c
00547d0c  00 20 93 e5                                      ldr r2, [r3]
00547d10  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547d14  00 00 83 e0                                      add r0, r3, r0
00547d18  19 56 f7 eb                                      bl #0x31d584
00547d1c  74 31 94 e5                                      ldr r3, [r4, #0x174]
00547d20  00 00 53 e3                                      cmp r3, #0
00547d24  03 00 00 0a                                      beq #0x547d38
00547d28  00 20 93 e5                                      ldr r2, [r3]
00547d2c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547d30  00 00 83 e0                                      add r0, r3, r0
00547d34  12 56 f7 eb                                      bl #0x31d584
00547d38  78 31 94 e5                                      ldr r3, [r4, #0x178]
00547d3c  00 00 53 e3                                      cmp r3, #0
00547d40  03 00 00 0a                                      beq #0x547d54
00547d44  00 20 93 e5                                      ldr r2, [r3]
00547d48  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547d4c  00 00 83 e0                                      add r0, r3, r0
00547d50  0b 56 f7 eb                                      bl #0x31d584
00547d54  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00547d58  00 00 53 e3                                      cmp r3, #0
00547d5c  03 00 00 0a                                      beq #0x547d70
00547d60  00 20 93 e5                                      ldr r2, [r3]
00547d64  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547d68  00 00 83 e0                                      add r0, r3, r0
00547d6c  04 56 f7 eb                                      bl #0x31d584
00547d70  62 3f 84 e2                                      add r3, r4, #0x188
00547d74  44 00 93 e5                                      ldr r0, [r3, #0x44]
00547d78  03 00 50 e1                                      cmp r0, r3
00547d7c  02 00 00 0a                                      beq #0x547d8c
00547d80  00 00 50 e3                                      cmp r0, #0
00547d84  00 00 00 0a                                      beq #0x547d8c
00547d88  b0 21 f7 eb                                      bl #0x310450
00547d8c  1c 10 9f e5                                      ldr r1, [pc, #0x1c]
00547d90  04 00 a0 e1                                      mov r0, r4
00547d94  01 10 95 e7                                      ldr r1, [r5, r1]
00547d98  04 10 81 e2                                      add r1, r1, #4
00547d9c  ee 5f 00 eb                                      bl #0x55fd5c
00547da0  04 00 a0 e1                                      mov r0, r4
00547da4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00547da8  cc cd 44 00 24 0c 00 00 10 37 00 00              .byte 0xcc, 0xcd, 0x44, 0x00, 0x24, 0x0c, 0x00, 0x00, 0x10, 0x37, 0x00, 0x00

; FUNCTION 0x00547db4, declared_size=28, range_size=28, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBoxD0Ev
; demangled: glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00547db4  10 40 2d e9                                      push {r4, lr}
00547db8  00 40 a0 e1                                      mov r4, r0
00547dbc  bc ff ff eb                                      bl #0x547cb4
00547dc0  04 00 a0 e1                                      mov r0, r4
00547dc4  39 19 f7 eb                                      bl #0x30e2b0
00547dc8  04 00 a0 e1                                      mov r0, r4
00547dcc  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00547dd0, declared_size=236, range_size=236, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBoxD2Ev
; demangled: glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00547dd0  70 40 2d e9                                      push {r4, r5, r6, lr}
00547dd4  00 30 91 e5                                      ldr r3, [r1]
00547dd8  01 50 a0 e1                                      mov r5, r1
00547ddc  00 40 a0 e1                                      mov r4, r0
00547de0  00 30 80 e5                                      str r3, [r0]
00547de4  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00547de8  28 20 91 e5                                      ldr r2, [r1, #0x28]
00547dec  03 20 80 e7                                      str r2, [r0, r3]
00547df0  00 30 90 e5                                      ldr r3, [r0]
00547df4  2c 20 91 e5                                      ldr r2, [r1, #0x2c]
00547df8  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00547dfc  03 20 80 e7                                      str r2, [r0, r3]
00547e00  80 31 90 e5                                      ldr r3, [r0, #0x180]
00547e04  00 00 53 e3                                      cmp r3, #0
00547e08  03 00 00 0a                                      beq #0x547e1c
00547e0c  00 20 93 e5                                      ldr r2, [r3]
00547e10  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547e14  00 00 83 e0                                      add r0, r3, r0
00547e18  d9 55 f7 eb                                      bl #0x31d584
00547e1c  70 31 94 e5                                      ldr r3, [r4, #0x170]
00547e20  00 00 53 e3                                      cmp r3, #0
00547e24  03 00 00 0a                                      beq #0x547e38
00547e28  00 20 93 e5                                      ldr r2, [r3]
00547e2c  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547e30  00 00 83 e0                                      add r0, r3, r0
00547e34  d2 55 f7 eb                                      bl #0x31d584
00547e38  74 31 94 e5                                      ldr r3, [r4, #0x174]
00547e3c  00 00 53 e3                                      cmp r3, #0
00547e40  03 00 00 0a                                      beq #0x547e54
00547e44  00 20 93 e5                                      ldr r2, [r3]
00547e48  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547e4c  00 00 83 e0                                      add r0, r3, r0
00547e50  cb 55 f7 eb                                      bl #0x31d584
00547e54  78 31 94 e5                                      ldr r3, [r4, #0x178]
00547e58  00 00 53 e3                                      cmp r3, #0
00547e5c  03 00 00 0a                                      beq #0x547e70
00547e60  00 20 93 e5                                      ldr r2, [r3]
00547e64  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547e68  00 00 83 e0                                      add r0, r3, r0
00547e6c  c4 55 f7 eb                                      bl #0x31d584
00547e70  7c 31 94 e5                                      ldr r3, [r4, #0x17c]
00547e74  00 00 53 e3                                      cmp r3, #0
00547e78  03 00 00 0a                                      beq #0x547e8c
00547e7c  00 20 93 e5                                      ldr r2, [r3]
00547e80  10 00 12 e5                                      ldr r0, [r2, #-0x10]
00547e84  00 00 83 e0                                      add r0, r3, r0
00547e88  bd 55 f7 eb                                      bl #0x31d584
00547e8c  62 3f 84 e2                                      add r3, r4, #0x188
00547e90  44 00 93 e5                                      ldr r0, [r3, #0x44]
00547e94  03 00 50 e1                                      cmp r0, r3
00547e98  02 00 00 0a                                      beq #0x547ea8
00547e9c  00 00 50 e3                                      cmp r0, #0
00547ea0  00 00 00 0a                                      beq #0x547ea8
00547ea4  69 21 f7 eb                                      bl #0x310450
00547ea8  04 10 85 e2                                      add r1, r5, #4
00547eac  04 00 a0 e1                                      mov r0, r4
00547eb0  a9 5f 00 eb                                      bl #0x55fd5c
00547eb4  04 00 a0 e1                                      mov r0, r4
00547eb8  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x00547f28, declared_size=328, range_size=328, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: glitch::gui::CGUIMessageBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00547f28  f0 41 2d e9                                      push {r4, r5, r6, r7, r8, lr}
00547f2c  01 40 a0 e1                                      mov r4, r1
00547f30  24 11 9f e5                                      ldr r1, [pc, #0x124]
00547f34  00 30 a0 e3                                      mov r3, #0
00547f38  84 31 80 e5                                      str r3, [r0, #0x184]
00547f3c  48 d0 4d e2                                      sub sp, sp, #0x48
00547f40  00 50 a0 e1                                      mov r5, r0
00547f44  01 10 8f e0                                      add r1, pc, r1
00547f48  00 30 94 e5                                      ldr r3, [r4]
00547f4c  04 00 a0 e1                                      mov r0, r4
00547f50  02 70 a0 e1                                      mov r7, r2
00547f54  0f e0 a0 e1                                      mov lr, pc
00547f58  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00547f5c  fc 10 9f e5                                      ldr r1, [pc, #0xfc]
00547f60  84 01 85 e5                                      str r0, [r5, #0x184]
00547f64  00 60 a0 e1                                      mov r6, r0
00547f68  00 30 94 e5                                      ldr r3, [r4]
00547f6c  01 10 8f e0                                      add r1, pc, r1
00547f70  04 00 a0 e1                                      mov r0, r4
00547f74  0f e0 a0 e1                                      mov lr, pc
00547f78  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00547f7c  00 00 50 e3                                      cmp r0, #0
00547f80  02 00 a0 13                                      movne r0, #2
00547f84  00 00 a0 03                                      moveq r0, #0
00547f88  d4 10 9f e5                                      ldr r1, [pc, #0xd4]
00547f8c  06 60 80 e1                                      orr r6, r0, r6
00547f90  84 61 85 e5                                      str r6, [r5, #0x184]
00547f94  01 10 8f e0                                      add r1, pc, r1
00547f98  00 30 94 e5                                      ldr r3, [r4]
00547f9c  04 00 a0 e1                                      mov r0, r4
00547fa0  0f e0 a0 e1                                      mov lr, pc
00547fa4  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00547fa8  00 00 50 e3                                      cmp r0, #0
00547fac  04 00 a0 13                                      movne r0, #4
00547fb0  00 00 a0 03                                      moveq r0, #0
00547fb4  ac 10 9f e5                                      ldr r1, [pc, #0xac]
00547fb8  06 60 80 e1                                      orr r6, r0, r6
00547fbc  84 61 85 e5                                      str r6, [r5, #0x184]
00547fc0  01 10 8f e0                                      add r1, pc, r1
00547fc4  00 30 94 e5                                      ldr r3, [r4]
00547fc8  04 00 a0 e1                                      mov r0, r4
00547fcc  0f e0 a0 e1                                      mov lr, pc
00547fd0  e4 f0 93 e5                                      ldr pc, [r3, #0xe4]
00547fd4  00 00 50 e3                                      cmp r0, #0
00547fd8  08 00 a0 13                                      movne r0, #8
00547fdc  00 00 a0 03                                      moveq r0, #0
00547fe0  84 20 9f e5                                      ldr r2, [pc, #0x84]
00547fe4  06 60 80 e1                                      orr r6, r0, r6
00547fe8  84 61 85 e5                                      str r6, [r5, #0x184]
00547fec  02 20 8f e0                                      add r2, pc, r2
00547ff0  04 10 a0 e1                                      mov r1, r4
00547ff4  00 30 94 e5                                      ldr r3, [r4]
00547ff8  0d 00 a0 e1                                      mov r0, sp
00547ffc  0f e0 a0 e1                                      mov lr, pc
00548000  9c f0 93 e5                                      ldr pc, [r3, #0x9c]
00548004  44 80 9d e5                                      ldr r8, [sp, #0x44]
00548008  0d 60 a0 e1                                      mov r6, sp
0054800c  08 00 a0 e1                                      mov r0, r8
00548010  1c 1b f7 eb                                      bl #0x30ec88
00548014  08 10 a0 e1                                      mov r1, r8
00548018  00 21 88 e0                                      add r2, r8, r0, lsl #2
0054801c  62 0f 85 e2                                      add r0, r5, #0x188
00548020  5e 6c f7 eb                                      bl #0x3231a0
00548024  44 00 9d e5                                      ldr r0, [sp, #0x44]
00548028  06 00 50 e1                                      cmp r0, r6
0054802c  02 00 00 0a                                      beq #0x54803c
00548030  00 00 50 e3                                      cmp r0, #0
00548034  00 00 00 0a                                      beq #0x54803c
00548038  04 21 f7 eb                                      bl #0x310450
0054803c  05 00 a0 e1                                      mov r0, r5
00548040  04 10 a0 e1                                      mov r1, r4
00548044  07 20 a0 e1                                      mov r2, r7
00548048  fa c5 ff eb                                      bl #0x539838
0054804c  05 00 a0 e1                                      mov r0, r5
00548050  a2 fc ff eb                                      bl #0x5472e0
00548054  48 d0 8d e2                                      add sp, sp, #0x48
00548058  f0 81 bd e8                                      pop {r4, r5, r6, r7, r8, pc}
; mapping-symbol data/literal pool
0054805c  dc 65 39 00 c4 65 39 00 ac 65 39 00 90 65 39 00  .byte 0xdc, 0x65, 0x39, 0x00, 0xc4, 0x65, 0x39, 0x00, 0xac, 0x65, 0x39, 0x00, 0x90, 0x65, 0x39, 0x00
0054806c  74 65 39 00                                      .byte 0x74, 0x65, 0x39, 0x00

; FUNCTION 0x00548070, declared_size=400, range_size=400, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZN6glitch3gui14CGUIMessageBoxC1EPNS0_15IGUIEnvironmentEPKwS5_iPNS0_11IGUIElementEiNS_4core4rectIiEE
; demangled: glitch::gui::CGUIMessageBox::CGUIMessageBox(glitch::gui::IGUIEnvironment*, wchar_t const*, wchar_t const*, int, glitch::gui::IGUIElement*, int, glitch::core::rect<int>)
; decoder-mode: arm
00548070  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00548074  74 51 9f e5                                      ldr r5, [pc, #0x174]
00548078  74 c1 9f e5                                      ldr ip, [pc, #0x174]
0054807c  74 e1 9f e5                                      ldr lr, [pc, #0x174]
00548080  05 50 8f e0                                      add r5, pc, r5
00548084  0c c0 95 e7                                      ldr ip, [r5, ip]
00548088  0e e0 95 e7                                      ldr lr, [r5, lr]
0054808c  01 70 a0 e3                                      mov r7, #1
00548090  30 60 9c e5                                      ldr r6, [ip, #0x30]
00548094  08 e0 8e e2                                      add lr, lr, #8
00548098  dc 71 80 e5                                      str r7, [r0, #0x1dc]
0054809c  d8 e1 80 e5                                      str lr, [r0, #0x1d8]
005480a0  d4 61 80 e5                                      str r6, [r0, #0x1d4]
005480a4  0c e0 16 e5                                      ldr lr, [r6, #-0xc]
005480a8  34 80 9c e5                                      ldr r8, [ip, #0x34]
005480ac  24 d0 4d e2                                      sub sp, sp, #0x24
005480b0  54 60 9d e5                                      ldr r6, [sp, #0x54]
005480b4  75 7f 80 e2                                      add r7, r0, #0x1d4
005480b8  0e 80 87 e7                                      str r8, [r7, lr]
005480bc  01 70 a0 e1                                      mov r7, r1
005480c0  04 10 8c e2                                      add r1, ip, #4
005480c4  50 c0 9d e5                                      ldr ip, [sp, #0x50]
005480c8  00 e0 96 e5                                      ldr lr, [r6]
005480cc  0c a0 96 e5                                      ldr sl, [r6, #0xc]
005480d0  00 09 96 e9                                      ldmib r6, {r8, fp}
005480d4  03 90 a0 e1                                      mov sb, r3
005480d8  02 60 a0 e1                                      mov r6, r2
005480dc  4c 30 9d e5                                      ldr r3, [sp, #0x4c]
005480e0  07 20 a0 e1                                      mov r2, r7
005480e4  00 c0 8d e5                                      str ip, [sp]
005480e8  0c c0 8d e2                                      add ip, sp, #0xc
005480ec  00 40 a0 e1                                      mov r4, r0
005480f0  0c e0 8d e5                                      str lr, [sp, #0xc]
005480f4  04 c0 8d e5                                      str ip, [sp, #4]
005480f8  10 80 8d e5                                      str r8, [sp, #0x10]
005480fc  14 b0 8d e5                                      str fp, [sp, #0x14]
00548100  18 a0 8d e5                                      str sl, [sp, #0x18]
00548104  5d 5d 00 eb                                      bl #0x55f680
00548108  ec 30 9f e5                                      ldr r3, [pc, #0xec]
0054810c  48 20 9d e5                                      ldr r2, [sp, #0x48]
00548110  00 70 a0 e3                                      mov r7, #0
00548114  03 30 95 e7                                      ldr r3, [r5, r3]
00548118  84 21 84 e5                                      str r2, [r4, #0x184]
0054811c  09 10 a0 e1                                      mov r1, sb
00548120  d0 20 83 e2                                      add r2, r3, #0xd0
00548124  10 00 83 e2                                      add r0, r3, #0x10
00548128  b0 30 83 e2                                      add r3, r3, #0xb0
0054812c  00 00 84 e5                                      str r0, [r4]
00548130  d4 31 84 e5                                      str r3, [r4, #0x1d4]
00548134  d8 21 84 e5                                      str r2, [r4, #0x1d8]
00548138  70 71 84 e5                                      str r7, [r4, #0x170]
0054813c  1c 20 8d e2                                      add r2, sp, #0x1c
00548140  74 71 84 e5                                      str r7, [r4, #0x174]
00548144  78 71 84 e5                                      str r7, [r4, #0x178]
00548148  7c 71 84 e5                                      str r7, [r4, #0x17c]
0054814c  80 71 84 e5                                      str r7, [r4, #0x180]
00548150  62 0f 84 e2                                      add r0, r4, #0x188
00548154  68 77 f7 eb                                      bl #0x325efc
00548158  50 31 94 e5                                      ldr r3, [r4, #0x150]
0054815c  0c 20 a0 e3                                      mov r2, #0xc
00548160  54 21 84 e5                                      str r2, [r4, #0x154]
00548164  d0 71 c4 e5                                      strb r7, [r4, #0x1d0]
00548168  07 10 a0 e1                                      mov r1, r7
0054816c  03 00 a0 e1                                      mov r0, r3
00548170  00 30 93 e5                                      ldr r3, [r3]
00548174  0f e0 a0 e1                                      mov lr, pc
00548178  10 f0 93 e5                                      ldr pc, [r3, #0x10]
0054817c  04 00 a0 e1                                      mov r0, r4
00548180  73 5a 00 eb                                      bl #0x55eb54
00548184  00 30 90 e5                                      ldr r3, [r0]
00548188  0f e0 a0 e1                                      mov lr, pc
0054818c  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
00548190  04 00 a0 e1                                      mov r0, r4
00548194  6c 5a 00 eb                                      bl #0x55eb4c
00548198  00 30 90 e5                                      ldr r3, [r0]
0054819c  0f e0 a0 e1                                      mov lr, pc
005481a0  1c f0 93 e5                                      ldr pc, [r3, #0x1c]
005481a4  07 00 56 e1                                      cmp r6, r7
005481a8  05 00 00 0a                                      beq #0x5481c4
005481ac  06 00 a0 e1                                      mov r0, r6
005481b0  b4 1a f7 eb                                      bl #0x30ec88
005481b4  06 10 a0 e1                                      mov r1, r6
005481b8  00 21 86 e0                                      add r2, r6, r0, lsl #2
005481bc  a0 00 84 e2                                      add r0, r4, #0xa0
005481c0  f6 6b f7 eb                                      bl #0x3231a0
005481c4  50 31 94 e5                                      ldr r3, [r4, #0x150]
005481c8  04 10 a0 e1                                      mov r1, r4
005481cc  03 00 a0 e1                                      mov r0, r3
005481d0  00 30 93 e5                                      ldr r3, [r3]
005481d4  0f e0 a0 e1                                      mov lr, pc
005481d8  10 f0 93 e5                                      ldr pc, [r3, #0x10]
005481dc  04 00 a0 e1                                      mov r0, r4
005481e0  3e fc ff eb                                      bl #0x5472e0
005481e4  04 00 a0 e1                                      mov r0, r4
005481e8  24 d0 8d e2                                      add sp, sp, #0x24
005481ec  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
; mapping-symbol data/literal pool
005481f0  10 ca 44 00 10 37 00 00 44 2b 00 00 24 0c 00 00  .byte 0x10, 0xca, 0x44, 0x00, 0x10, 0x37, 0x00, 0x00, 0x44, 0x2b, 0x00, 0x00, 0x24, 0x0c, 0x00, 0x00

; FUNCTION 0x00548200, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZTv0_n20_N6glitch3gui14CGUIMessageBox21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIMessageBox::deserializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*)
; decoder-mode: arm
00548200  00 30 90 e5                                      ldr r3, [r0]
00548204  14 30 13 e5                                      ldr r3, [r3, #-0x14]
00548208  03 00 80 e0                                      add r0, r0, r3
0054820c  45 ff ff ea                                      b #0x547f28

; FUNCTION 0x00548210, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZTv0_n24_N6glitch3gui14CGUIMessageBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00548210  00 30 90 e5                                      ldr r3, [r0]
00548214  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00548218  03 00 80 e0                                      add r0, r0, r3
0054821c  e4 fe ff ea                                      b #0x547db4

; FUNCTION 0x00548220, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZTv0_n12_N6glitch3gui14CGUIMessageBoxD0Ev
; demangled: virtual thunk to glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00548220  00 30 90 e5                                      ldr r3, [r0]
00548224  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00548228  03 00 80 e0                                      add r0, r0, r3
0054822c  e0 fe ff ea                                      b #0x547db4

; FUNCTION 0x00548230, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZTv0_n24_N6glitch3gui14CGUIMessageBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00548230  00 30 90 e5                                      ldr r3, [r0]
00548234  18 30 13 e5                                      ldr r3, [r3, #-0x18]
00548238  03 00 80 e0                                      add r0, r0, r3
0054823c  9c fe ff ea                                      b #0x547cb4

; FUNCTION 0x00548240, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZTv0_n12_N6glitch3gui14CGUIMessageBoxD1Ev
; demangled: virtual thunk to glitch::gui::CGUIMessageBox::~CGUIMessageBox()
; decoder-mode: arm
00548240  00 30 90 e5                                      ldr r3, [r0]
00548244  0c 30 13 e5                                      ldr r3, [r3, #-0xc]
00548248  03 00 80 e0                                      add r0, r0, r3
0054824c  98 fe ff ea                                      b #0x547cb4

; FUNCTION 0x00548250, declared_size=16, range_size=16, mode=arm
; class-group: glitch::gui::CGUIMessageBox
; alias: _ZTv0_n16_NK6glitch3gui14CGUIMessageBox19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
; demangled: virtual thunk to glitch::gui::CGUIMessageBox::serializeAttributes(glitch::io::IAttributes*, glitch::io::SAttributeReadWriteOptions*) const
; decoder-mode: arm
00548250  00 30 90 e5                                      ldr r3, [r0]
00548254  10 30 13 e5                                      ldr r3, [r3, #-0x10]
00548258  03 00 80 e0                                      add r0, r0, r3
0054825c  2e fb ff ea                                      b #0x546f1c
