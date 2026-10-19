; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00381fb0, declared_size=108, range_size=108, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandler9setCameraEP11CameraLevel
; demangled: ZoomHandler::setCamera(CameraLevel*)
; decoder-mode: arm
00381fb0  5c 30 9f e5                                      ldr r3, [pc, #0x5c]
00381fb4  5c 20 9f e5                                      ldr r2, [pc, #0x5c]
00381fb8  10 40 2d e9                                      push {r4, lr}
00381fbc  03 30 8f e0                                      add r3, pc, r3
00381fc0  00 40 a0 e1                                      mov r4, r0
00381fc4  02 00 93 e7                                      ldr r0, [r3, r2]
00381fc8  00 20 a0 e3                                      mov r2, #0
00381fcc  20 10 84 e5                                      str r1, [r4, #0x20]
00381fd0  24 20 c4 e5                                      strb r2, [r4, #0x24]
00381fd4  34 20 c4 e5                                      strb r2, [r4, #0x34]
00381fd8  10 20 90 e5                                      ldr r2, [r0, #0x10]
00381fdc  1c 30 92 e5                                      ldr r3, [r2, #0x1c]
00381fe0  14 30 93 e5                                      ldr r3, [r3, #0x14]
00381fe4  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
00381fe8  04 30 13 e5                                      ldr r3, [r3, #-4]
00381fec  0c 20 93 e5                                      ldr r2, [r3, #0xc]
00381ff0  10 00 93 e5                                      ldr r0, [r3, #0x10]
00381ff4  02 00 50 e1                                      cmp r0, r2
00381ff8  02 00 a0 b1                                      movlt r0, r2
00381ffc  58 32 fe eb                                      bl #0x30e964
00382000  00 10 a0 e1                                      mov r1, r0
00382004  fe 05 a0 e3                                      mov r0, #0x3f800000
00382008  21 33 fe eb                                      bl #0x30ec94
0038200c  28 00 84 e5                                      str r0, [r4, #0x28]
00382010  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00382014  d4 2a 61 00 f4 37 00 00                          .byte 0xd4, 0x2a, 0x61, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x0038201c, declared_size=28, range_size=28, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandler9ResetZoomEv
; demangled: ZoomHandler::ResetZoom()
; decoder-mode: arm
0038201c  20 30 90 e5                                      ldr r3, [r0, #0x20]
00382020  fe 25 a0 e3                                      mov r2, #0x3f800000
00382024  8c 20 83 e5                                      str r2, [r3, #0x8c]
00382028  20 30 90 e5                                      ldr r3, [r0, #0x20]
0038202c  00 20 a0 e3                                      mov r2, #0
00382030  88 20 83 e5                                      str r2, [r3, #0x88]
00382034  1e ff 2f e1                                      bx lr

; FUNCTION 0x00382038, declared_size=8, range_size=8, mode=arm
; class-group: ZoomHandler
; alias: _ZThn4_N11ZoomHandler7onEventERKN6glitch6SEventE
; demangled: non-virtual thunk to ZoomHandler::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00382038  04 00 40 e2                                      sub r0, r0, #4
0038203c  ff ff ff ea                                      b #0x382040

; FUNCTION 0x00382040, declared_size=452, range_size=452, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandler7onEventERKN6glitch6SEventE
; demangled: ZoomHandler::onEvent(glitch::SEvent const&)
; decoder-mode: arm
00382040  f0 47 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, lr}
00382044  20 60 90 e5                                      ldr r6, [r0, #0x20]
00382048  00 40 a0 e1                                      mov r4, r0
0038204c  01 50 a0 e1                                      mov r5, r1
00382050  00 00 56 e3                                      cmp r6, #0
00382054  02 00 00 0a                                      beq #0x382064
00382058  00 70 91 e5                                      ldr r7, [r1]
0038205c  01 00 57 e3                                      cmp r7, #1
00382060  01 00 00 0a                                      beq #0x38206c
00382064  00 00 a0 e3                                      mov r0, #0
00382068  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
0038206c  14 30 91 e5                                      ldr r3, [r1, #0x14]
00382070  07 00 53 e3                                      cmp r3, #7
00382074  1d 00 00 0a                                      beq #0x3820f0
00382078  24 20 d0 e5                                      ldrb r2, [r0, #0x24]
0038207c  00 00 52 e3                                      cmp r2, #0
00382080  f7 ff ff 0a                                      beq #0x382064
00382084  00 00 53 e3                                      cmp r3, #0
00382088  10 00 00 1a                                      bne #0x3820d0
0038208c  85 30 d6 e5                                      ldrb r3, [r6, #0x85]
00382090  00 00 53 e3                                      cmp r3, #0
00382094  21 00 00 1a                                      bne #0x382120
00382098  01 30 a0 e3                                      mov r3, #1
0038209c  34 30 c4 e5                                      strb r3, [r4, #0x34]
003820a0  08 30 95 e5                                      ldr r3, [r5, #8]
003820a4  01 00 a0 e3                                      mov r0, #1
003820a8  2c 30 84 e5                                      str r3, [r4, #0x2c]
003820ac  0c 30 95 e5                                      ldr r3, [r5, #0xc]
003820b0  30 30 84 e5                                      str r3, [r4, #0x30]
003820b4  98 10 96 e5                                      ldr r1, [r6, #0x98]
003820b8  9c 20 96 e5                                      ldr r2, [r6, #0x9c]
003820bc  a0 30 96 e5                                      ldr r3, [r6, #0xa0]
003820c0  38 10 84 e5                                      str r1, [r4, #0x38]
003820c4  3c 20 84 e5                                      str r2, [r4, #0x3c]
003820c8  40 30 84 e5                                      str r3, [r4, #0x40]
003820cc  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003820d0  06 00 53 e3                                      cmp r3, #6
003820d4  18 00 00 0a                                      beq #0x38213c
003820d8  03 00 53 e3                                      cmp r3, #3
003820dc  e0 ff ff 1a                                      bne #0x382064
003820e0  00 30 a0 e3                                      mov r3, #0
003820e4  34 30 c0 e5                                      strb r3, [r0, #0x34]
003820e8  07 00 a0 e1                                      mov r0, r7
003820ec  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003820f0  01 11 a0 e3                                      mov r1, #0x40000000
003820f4  28 00 90 e5                                      ldr r0, [r0, #0x28]
003820f8  0a 16 81 e2                                      add r1, r1, #0xa00000
003820fc  1a 33 fe eb                                      bl #0x30ed6c
00382100  88 40 96 e5                                      ldr r4, [r6, #0x88]
00382104  10 10 95 e5                                      ldr r1, [r5, #0x10]
00382108  17 33 fe eb                                      bl #0x30ed6c
0038210c  04 10 a0 e1                                      mov r1, r4
00382110  a3 32 fe eb                                      bl #0x30eba4
00382114  88 00 86 e5                                      str r0, [r6, #0x88]
00382118  07 00 a0 e1                                      mov r0, r7
0038211c  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
00382120  1f 47 03 eb                                      bl #0x453da4
00382124  e4 31 d0 e5                                      ldrb r3, [r0, #0x1e4]
00382128  00 00 53 e3                                      cmp r3, #0
0038212c  2c 00 00 0a                                      beq #0x3821e4
00382130  00 30 a0 e3                                      mov r3, #0
00382134  20 60 94 e5                                      ldr r6, [r4, #0x20]
00382138  d7 ff ff ea                                      b #0x38209c
0038213c  34 30 d0 e5                                      ldrb r3, [r0, #0x34]
00382140  00 00 53 e3                                      cmp r3, #0
00382144  c6 ff ff 0a                                      beq #0x382064
00382148  2c 00 90 e5                                      ldr r0, [r0, #0x2c]
0038214c  04 32 fe eb                                      bl #0x30e964
00382150  00 80 a0 e1                                      mov r8, r0
00382154  30 00 94 e5                                      ldr r0, [r4, #0x30]
00382158  01 32 fe eb                                      bl #0x30e964
0038215c  00 a0 a0 e1                                      mov sl, r0
00382160  08 00 95 e5                                      ldr r0, [r5, #8]
00382164  fe 31 fe eb                                      bl #0x30e964
00382168  00 90 a0 e1                                      mov sb, r0
0038216c  0c 00 95 e5                                      ldr r0, [r5, #0xc]
00382170  fb 31 fe eb                                      bl #0x30e964
00382174  08 10 a0 e1                                      mov r1, r8
00382178  00 50 a0 e1                                      mov r5, r0
0038217c  09 00 a0 e1                                      mov r0, sb
00382180  89 30 fe eb                                      bl #0x30e3ac
00382184  42 14 a0 e3                                      mov r1, #0x42000000
00382188  12 17 81 e2                                      add r1, r1, #0x480000
0038218c  02 01 80 e2                                      add r0, r0, #0x80000000
00382190  f5 32 fe eb                                      bl #0x30ed6c
00382194  38 10 94 e5                                      ldr r1, [r4, #0x38]
00382198  81 32 fe eb                                      bl #0x30eba4
0038219c  0a 10 a0 e1                                      mov r1, sl
003821a0  00 80 a0 e1                                      mov r8, r0
003821a4  05 00 a0 e1                                      mov r0, r5
003821a8  7f 30 fe eb                                      bl #0x30e3ac
003821ac  42 14 a0 e3                                      mov r1, #0x42000000
003821b0  12 17 81 e2                                      add r1, r1, #0x480000
003821b4  ec 32 fe eb                                      bl #0x30ed6c
003821b8  3c 10 94 e5                                      ldr r1, [r4, #0x3c]
003821bc  78 32 fe eb                                      bl #0x30eba4
003821c0  00 10 a0 e3                                      mov r1, #0
003821c4  00 50 a0 e1                                      mov r5, r0
003821c8  40 00 94 e5                                      ldr r0, [r4, #0x40]
003821cc  74 32 fe eb                                      bl #0x30eba4
003821d0  98 80 86 e5                                      str r8, [r6, #0x98]
003821d4  a0 00 86 e5                                      str r0, [r6, #0xa0]
003821d8  9c 50 86 e5                                      str r5, [r6, #0x9c]
003821dc  07 00 a0 e1                                      mov r0, r7
003821e0  f0 87 bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, pc}
003821e4  ee 46 03 eb                                      bl #0x453da4
003821e8  08 10 95 e5                                      ldr r1, [r5, #8]
003821ec  0c 20 95 e5                                      ldr r2, [r5, #0xc]
003821f0  7d 44 03 eb                                      bl #0x4533ec
003821f4  00 00 50 e3                                      cmp r0, #0
003821f8  20 60 94 15                                      ldrne r6, [r4, #0x20]
003821fc  a5 ff ff 1a                                      bne #0x382098
00382200  ca ff ff ea                                      b #0x382130

; FUNCTION 0x00382204, declared_size=224, range_size=224, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandlerC1Ev
; demangled: ZoomHandler::ZoomHandler()
; decoder-mode: arm
00382204  70 40 2d e9                                      push {r4, r5, r6, lr}
00382208  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
0038220c  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
00382210  c8 60 9f e5                                      ldr r6, [pc, #0xc8]
00382214  05 50 8f e0                                      add r5, pc, r5
00382218  03 30 95 e7                                      ldr r3, [r5, r3]
0038221c  00 40 a0 e1                                      mov r4, r0
00382220  00 20 a0 e3                                      mov r2, #0
00382224  20 e0 83 e2                                      add lr, r3, #0x20
00382228  06 c0 95 e7                                      ldr ip, [r5, r6]
0038222c  04 10 a0 e1                                      mov r1, r4
00382230  08 30 83 e2                                      add r3, r3, #8
00382234  04 e0 84 e5                                      str lr, [r4, #4]
00382238  0c 20 84 e5                                      str r2, [r4, #0xc]
0038223c  00 30 84 e5                                      str r3, [r4]
00382240  00 00 a0 e3                                      mov r0, #0
00382244  08 20 e1 e5                                      strb r2, [r1, #8]!
00382248  14 10 84 e5                                      str r1, [r4, #0x14]
0038224c  24 20 c4 e5                                      strb r2, [r4, #0x24]
00382250  18 20 84 e5                                      str r2, [r4, #0x18]
00382254  20 20 84 e5                                      str r2, [r4, #0x20]
00382258  34 20 c4 e5                                      strb r2, [r4, #0x34]
0038225c  10 10 84 e5                                      str r1, [r4, #0x10]
00382260  40 00 84 e5                                      str r0, [r4, #0x40]
00382264  38 00 84 e5                                      str r0, [r4, #0x38]
00382268  3c 00 84 e5                                      str r0, [r4, #0x3c]
0038226c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00382270  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00382274  14 30 93 e5                                      ldr r3, [r3, #0x14]
00382278  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
0038227c  04 30 13 e5                                      ldr r3, [r3, #-4]
00382280  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00382284  10 30 93 e5                                      ldr r3, [r3, #0x10]
00382288  00 00 53 e1                                      cmp r3, r0
0038228c  03 00 a0 a1                                      movge r0, r3
00382290  b3 31 fe eb                                      bl #0x30e964
00382294  00 10 a0 e1                                      mov r1, r0
00382298  fe 05 a0 e3                                      mov r0, #0x3f800000
0038229c  7c 32 fe eb                                      bl #0x30ec94
003822a0  06 50 95 e7                                      ldr r5, [r5, r6]
003822a4  28 00 84 e5                                      str r0, [r4, #0x28]
003822a8  04 20 a0 e1                                      mov r2, r4
003822ac  04 10 a0 e3                                      mov r1, #4
003822b0  00 30 a0 e3                                      mov r3, #0
003822b4  14 00 95 e5                                      ldr r0, [r5, #0x14]
003822b8  b8 da fe eb                                      bl #0x338da0
003822bc  14 00 95 e5                                      ldr r0, [r5, #0x14]
003822c0  05 10 a0 e3                                      mov r1, #5
003822c4  04 20 a0 e1                                      mov r2, r4
003822c8  00 30 a0 e3                                      mov r3, #0
003822cc  b3 da fe eb                                      bl #0x338da0
003822d0  04 00 a0 e1                                      mov r0, r4
003822d4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003822d8  7c 28 61 00 40 11 00 00 f4 37 00 00              .byte 0x7c, 0x28, 0x61, 0x00, 0x40, 0x11, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x003822e4, declared_size=224, range_size=224, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandlerC2Ev
; demangled: ZoomHandler::ZoomHandler()
; decoder-mode: arm
003822e4  70 40 2d e9                                      push {r4, r5, r6, lr}
003822e8  c8 50 9f e5                                      ldr r5, [pc, #0xc8]
003822ec  c8 30 9f e5                                      ldr r3, [pc, #0xc8]
003822f0  c8 60 9f e5                                      ldr r6, [pc, #0xc8]
003822f4  05 50 8f e0                                      add r5, pc, r5
003822f8  03 30 95 e7                                      ldr r3, [r5, r3]
003822fc  00 40 a0 e1                                      mov r4, r0
00382300  00 20 a0 e3                                      mov r2, #0
00382304  20 e0 83 e2                                      add lr, r3, #0x20
00382308  06 c0 95 e7                                      ldr ip, [r5, r6]
0038230c  04 10 a0 e1                                      mov r1, r4
00382310  08 30 83 e2                                      add r3, r3, #8
00382314  04 e0 84 e5                                      str lr, [r4, #4]
00382318  0c 20 84 e5                                      str r2, [r4, #0xc]
0038231c  00 30 84 e5                                      str r3, [r4]
00382320  00 00 a0 e3                                      mov r0, #0
00382324  08 20 e1 e5                                      strb r2, [r1, #8]!
00382328  14 10 84 e5                                      str r1, [r4, #0x14]
0038232c  24 20 c4 e5                                      strb r2, [r4, #0x24]
00382330  18 20 84 e5                                      str r2, [r4, #0x18]
00382334  20 20 84 e5                                      str r2, [r4, #0x20]
00382338  34 20 c4 e5                                      strb r2, [r4, #0x34]
0038233c  10 10 84 e5                                      str r1, [r4, #0x10]
00382340  40 00 84 e5                                      str r0, [r4, #0x40]
00382344  38 00 84 e5                                      str r0, [r4, #0x38]
00382348  3c 00 84 e5                                      str r0, [r4, #0x3c]
0038234c  10 30 9c e5                                      ldr r3, [ip, #0x10]
00382350  1c 30 93 e5                                      ldr r3, [r3, #0x1c]
00382354  14 30 93 e5                                      ldr r3, [r3, #0x14]
00382358  cc 30 93 e5                                      ldr r3, [r3, #0xcc]
0038235c  04 30 13 e5                                      ldr r3, [r3, #-4]
00382360  0c 00 93 e5                                      ldr r0, [r3, #0xc]
00382364  10 30 93 e5                                      ldr r3, [r3, #0x10]
00382368  00 00 53 e1                                      cmp r3, r0
0038236c  03 00 a0 a1                                      movge r0, r3
00382370  7b 31 fe eb                                      bl #0x30e964
00382374  00 10 a0 e1                                      mov r1, r0
00382378  fe 05 a0 e3                                      mov r0, #0x3f800000
0038237c  44 32 fe eb                                      bl #0x30ec94
00382380  06 50 95 e7                                      ldr r5, [r5, r6]
00382384  28 00 84 e5                                      str r0, [r4, #0x28]
00382388  04 20 a0 e1                                      mov r2, r4
0038238c  04 10 a0 e3                                      mov r1, #4
00382390  00 30 a0 e3                                      mov r3, #0
00382394  14 00 95 e5                                      ldr r0, [r5, #0x14]
00382398  80 da fe eb                                      bl #0x338da0
0038239c  14 00 95 e5                                      ldr r0, [r5, #0x14]
003823a0  05 10 a0 e3                                      mov r1, #5
003823a4  04 20 a0 e1                                      mov r2, r4
003823a8  00 30 a0 e3                                      mov r3, #0
003823ac  7b da fe eb                                      bl #0x338da0
003823b0  04 00 a0 e1                                      mov r0, r4
003823b4  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
003823b8  9c 27 61 00 40 11 00 00 f4 37 00 00              .byte 0x9c, 0x27, 0x61, 0x00, 0x40, 0x11, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00382bdc, declared_size=1192, range_size=1192, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandler7onEventEPK6IEventPK12EventManager
; demangled: ZoomHandler::onEvent(IEvent const*, EventManager const*)
; decoder-mode: arm
00382bdc  f0 4f 2d e9                                      push {r4, r5, r6, r7, r8, sb, sl, fp, lr}
00382be0  20 30 90 e5                                      ldr r3, [r0, #0x20]
00382be4  1c d0 4d e2                                      sub sp, sp, #0x1c
00382be8  00 50 a0 e1                                      mov r5, r0
00382bec  00 00 53 e3                                      cmp r3, #0
00382bf0  01 40 a0 e1                                      mov r4, r1
00382bf4  02 00 00 0a                                      beq #0x382c04
00382bf8  85 30 d3 e5                                      ldrb r3, [r3, #0x85]
00382bfc  00 00 53 e3                                      cmp r3, #0
00382c00  03 00 00 1a                                      bne #0x382c14
00382c04  00 50 a0 e3                                      mov r5, #0
00382c08  05 00 a0 e1                                      mov r0, r5
00382c0c  1c d0 8d e2                                      add sp, sp, #0x1c
00382c10  f0 8f bd e8                                      pop {r4, r5, r6, r7, r8, sb, sl, fp, pc}
00382c14  00 30 91 e5                                      ldr r3, [r1]
00382c18  01 00 a0 e1                                      mov r0, r1
00382c1c  0f e0 a0 e1                                      mov lr, pc
00382c20  08 f0 93 e5                                      ldr pc, [r3, #8]
00382c24  04 00 50 e3                                      cmp r0, #4
00382c28  3a 00 00 1a                                      bne #0x382d18
00382c2c  10 30 d4 e5                                      ldrb r3, [r4, #0x10]
00382c30  00 00 53 e3                                      cmp r3, #0
00382c34  18 00 00 1a                                      bne #0x382c9c
00382c38  0c 30 95 e5                                      ldr r3, [r5, #0xc]
00382c3c  00 00 53 e3                                      cmp r3, #0
00382c40  2f 00 00 0a                                      beq #0x382d04
00382c44  08 00 85 e2                                      add r0, r5, #8
00382c48  0c c0 94 e5                                      ldr ip, [r4, #0xc]
00382c4c  00 10 a0 e1                                      mov r1, r0
00382c50  00 00 00 ea                                      b #0x382c58
00382c54  02 30 a0 e1                                      mov r3, r2
00382c58  10 20 93 e5                                      ldr r2, [r3, #0x10]
00382c5c  0c 00 52 e1                                      cmp r2, ip
00382c60  0c 20 93 b5                                      ldrlt r2, [r3, #0xc]
00382c64  08 20 93 a5                                      ldrge r2, [r3, #8]
00382c68  01 30 a0 b1                                      movlt r3, r1
00382c6c  03 10 a0 e1                                      mov r1, r3
00382c70  00 00 52 e3                                      cmp r2, #0
00382c74  f6 ff ff 1a                                      bne #0x382c54
00382c78  03 00 50 e1                                      cmp r0, r3
00382c7c  20 00 00 0a                                      beq #0x382d04
00382c80  10 20 93 e5                                      ldr r2, [r3, #0x10]
00382c84  0c 00 52 e1                                      cmp r2, ip
00382c88  1d 00 00 ca                                      bgt #0x382d04
00382c8c  18 10 8d e2                                      add r1, sp, #0x18
00382c90  04 30 21 e5                                      str r3, [r1, #-4]!
00382c94  01 fe ff eb                                      bl #0x3824a0
00382c98  19 00 00 ea                                      b #0x382d04
00382c9c  20 30 95 e5                                      ldr r3, [r5, #0x20]
00382ca0  85 30 d3 e5                                      ldrb r3, [r3, #0x85]
00382ca4  00 00 53 e3                                      cmp r3, #0
00382ca8  9a 00 00 1a                                      bne #0x382f18
00382cac  0c 70 84 e2                                      add r7, r4, #0xc
00382cb0  08 60 85 e2                                      add r6, r5, #8
00382cb4  07 10 a0 e1                                      mov r1, r7
00382cb8  06 00 a0 e1                                      mov r0, r6
00382cbc  9c ff ff eb                                      bl #0x382b34
00382cc0  b8 30 d4 e1                                      ldrh r3, [r4, #8]
00382cc4  07 10 a0 e1                                      mov r1, r7
00382cc8  b0 30 c0 e1                                      strh r3, [r0]
00382ccc  06 00 a0 e1                                      mov r0, r6
00382cd0  97 ff ff eb                                      bl #0x382b34
00382cd4  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
00382cd8  07 10 a0 e1                                      mov r1, r7
00382cdc  b2 30 c0 e1                                      strh r3, [r0, #2]
00382ce0  06 00 a0 e1                                      mov r0, r6
00382ce4  92 ff ff eb                                      bl #0x382b34
00382ce8  b8 30 d4 e1                                      ldrh r3, [r4, #8]
00382cec  07 10 a0 e1                                      mov r1, r7
00382cf0  b4 30 c0 e1                                      strh r3, [r0, #4]
00382cf4  06 00 a0 e1                                      mov r0, r6
00382cf8  8d ff ff eb                                      bl #0x382b34
00382cfc  ba 40 d4 e1                                      ldrh r4, [r4, #0xa]
00382d00  b6 40 c0 e1                                      strh r4, [r0, #6]
00382d04  18 50 95 e5                                      ldr r5, [r5, #0x18]
00382d08  01 00 55 e3                                      cmp r5, #1
00382d0c  00 50 a0 93                                      movls r5, #0
00382d10  01 50 a0 83                                      movhi r5, #1
00382d14  bb ff ff ea                                      b #0x382c08
00382d18  00 30 94 e5                                      ldr r3, [r4]
00382d1c  04 00 a0 e1                                      mov r0, r4
00382d20  0f e0 a0 e1                                      mov lr, pc
00382d24  08 f0 93 e5                                      ldr pc, [r3, #8]
00382d28  05 00 50 e3                                      cmp r0, #5
00382d2c  b4 ff ff 1a                                      bne #0x382c04
00382d30  08 70 85 e2                                      add r7, r5, #8
00382d34  0c 80 84 e2                                      add r8, r4, #0xc
00382d38  07 00 a0 e1                                      mov r0, r7
00382d3c  08 10 a0 e1                                      mov r1, r8
00382d40  7b ff ff eb                                      bl #0x382b34
00382d44  f0 30 d0 e1                                      ldrsh r3, [r0]
00382d48  00 00 53 e3                                      cmp r3, #0
00382d4c  7c 00 00 0a                                      beq #0x382f44
00382d50  08 10 a0 e1                                      mov r1, r8
00382d54  07 00 a0 e1                                      mov r0, r7
00382d58  75 ff ff eb                                      bl #0x382b34
00382d5c  b8 30 d4 e1                                      ldrh r3, [r4, #8]
00382d60  08 10 a0 e1                                      mov r1, r8
00382d64  b4 30 c0 e1                                      strh r3, [r0, #4]
00382d68  07 00 a0 e1                                      mov r0, r7
00382d6c  70 ff ff eb                                      bl #0x382b34
00382d70  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
00382d74  b6 30 c0 e1                                      strh r3, [r0, #6]
00382d78  18 30 95 e5                                      ldr r3, [r5, #0x18]
00382d7c  01 00 53 e3                                      cmp r3, #1
00382d80  80 00 00 9a                                      bls #0x382f88
00382d84  10 60 95 e5                                      ldr r6, [r5, #0x10]
00382d88  f4 01 d6 e1                                      ldrsh r0, [r6, #0x14]
00382d8c  f4 2e fe eb                                      bl #0x30e964
00382d90  0c 00 8d e5                                      str r0, [sp, #0xc]
00382d94  f6 01 d6 e1                                      ldrsh r0, [r6, #0x16]
00382d98  f1 2e fe eb                                      bl #0x30e964
00382d9c  00 b0 a0 e1                                      mov fp, r0
00382da0  f8 01 d6 e1                                      ldrsh r0, [r6, #0x18]
00382da4  ee 2e fe eb                                      bl #0x30e964
00382da8  08 00 8d e5                                      str r0, [sp, #8]
00382dac  fa 01 d6 e1                                      ldrsh r0, [r6, #0x1a]
00382db0  eb 2e fe eb                                      bl #0x30e964
00382db4  00 30 a0 e1                                      mov r3, r0
00382db8  0c 00 96 e5                                      ldr r0, [r6, #0xc]
00382dbc  00 00 50 e3                                      cmp r0, #0
00382dc0  00 10 a0 e1                                      mov r1, r0
00382dc4  01 00 00 1a                                      bne #0x382dd0
00382dc8  9d 00 00 ea                                      b #0x383044
00382dcc  02 10 a0 e1                                      mov r1, r2
00382dd0  08 20 91 e5                                      ldr r2, [r1, #8]
00382dd4  00 00 52 e3                                      cmp r2, #0
00382dd8  fb ff ff 1a                                      bne #0x382dcc
00382ddc  01 60 a0 e1                                      mov r6, r1
00382de0  f4 01 d6 e1                                      ldrsh r0, [r6, #0x14]
00382de4  04 30 8d e5                                      str r3, [sp, #4]
00382de8  dd 2e fe eb                                      bl #0x30e964
00382dec  00 a0 a0 e1                                      mov sl, r0
00382df0  f6 01 d6 e1                                      ldrsh r0, [r6, #0x16]
00382df4  da 2e fe eb                                      bl #0x30e964
00382df8  0a 10 a0 e1                                      mov r1, sl
00382dfc  00 90 a0 e1                                      mov sb, r0
00382e00  0c 00 9d e5                                      ldr r0, [sp, #0xc]
00382e04  68 2d fe eb                                      bl #0x30e3ac
00382e08  09 10 a0 e1                                      mov r1, sb
00382e0c  00 a0 a0 e1                                      mov sl, r0
00382e10  0b 00 a0 e1                                      mov r0, fp
00382e14  64 2d fe eb                                      bl #0x30e3ac
00382e18  0a 10 a0 e1                                      mov r1, sl
00382e1c  00 90 a0 e1                                      mov sb, r0
00382e20  0a 00 a0 e1                                      mov r0, sl
00382e24  d0 2f fe eb                                      bl #0x30ed6c
00382e28  09 10 a0 e1                                      mov r1, sb
00382e2c  00 a0 a0 e1                                      mov sl, r0
00382e30  09 00 a0 e1                                      mov r0, sb
00382e34  cc 2f fe eb                                      bl #0x30ed6c
00382e38  00 10 a0 e1                                      mov r1, r0
00382e3c  0a 00 a0 e1                                      mov r0, sl
00382e40  57 2f fe eb                                      bl #0x30eba4
00382e44  96 2e fe eb                                      bl #0x30e8a4
00382e48  dc 2c fe eb                                      bl #0x30e1c0
00382e4c  13 2e fe eb                                      bl #0x30e6a0
00382e50  00 a0 a0 e1                                      mov sl, r0
00382e54  f8 01 d6 e1                                      ldrsh r0, [r6, #0x18]
00382e58  c1 2e fe eb                                      bl #0x30e964
00382e5c  00 90 a0 e1                                      mov sb, r0
00382e60  fa 01 d6 e1                                      ldrsh r0, [r6, #0x1a]
00382e64  be 2e fe eb                                      bl #0x30e964
00382e68  09 10 a0 e1                                      mov r1, sb
00382e6c  00 60 a0 e1                                      mov r6, r0
00382e70  08 00 9d e5                                      ldr r0, [sp, #8]
00382e74  4c 2d fe eb                                      bl #0x30e3ac
00382e78  04 30 9d e5                                      ldr r3, [sp, #4]
00382e7c  00 90 a0 e1                                      mov sb, r0
00382e80  06 10 a0 e1                                      mov r1, r6
00382e84  03 00 a0 e1                                      mov r0, r3
00382e88  47 2d fe eb                                      bl #0x30e3ac
00382e8c  09 10 a0 e1                                      mov r1, sb
00382e90  00 b0 a0 e1                                      mov fp, r0
00382e94  09 00 a0 e1                                      mov r0, sb
00382e98  b3 2f fe eb                                      bl #0x30ed6c
00382e9c  0b 10 a0 e1                                      mov r1, fp
00382ea0  00 60 a0 e1                                      mov r6, r0
00382ea4  0b 00 a0 e1                                      mov r0, fp
00382ea8  af 2f fe eb                                      bl #0x30ed6c
00382eac  00 10 a0 e1                                      mov r1, r0
00382eb0  06 00 a0 e1                                      mov r0, r6
00382eb4  3a 2f fe eb                                      bl #0x30eba4
00382eb8  79 2e fe eb                                      bl #0x30e8a4
00382ebc  bf 2c fe eb                                      bl #0x30e1c0
00382ec0  20 60 95 e5                                      ldr r6, [r5, #0x20]
00382ec4  f5 2d fe eb                                      bl #0x30e6a0
00382ec8  0a 10 a0 e1                                      mov r1, sl
00382ecc  36 2d fe eb                                      bl #0x30e3ac
00382ed0  28 10 95 e5                                      ldr r1, [r5, #0x28]
00382ed4  88 50 96 e5                                      ldr r5, [r6, #0x88]
00382ed8  a3 2f fe eb                                      bl #0x30ed6c
00382edc  05 10 a0 e1                                      mov r1, r5
00382ee0  2f 2f fe eb                                      bl #0x30eba4
00382ee4  01 50 a0 e3                                      mov r5, #1
00382ee8  88 00 86 e5                                      str r0, [r6, #0x88]
00382eec  08 10 a0 e1                                      mov r1, r8
00382ef0  07 00 a0 e1                                      mov r0, r7
00382ef4  0e ff ff eb                                      bl #0x382b34
00382ef8  b8 30 d4 e1                                      ldrh r3, [r4, #8]
00382efc  08 10 a0 e1                                      mov r1, r8
00382f00  b0 30 c0 e1                                      strh r3, [r0]
00382f04  07 00 a0 e1                                      mov r0, r7
00382f08  09 ff ff eb                                      bl #0x382b34
00382f0c  ba 40 d4 e1                                      ldrh r4, [r4, #0xa]
00382f10  b2 40 c0 e1                                      strh r4, [r0, #2]
00382f14  3b ff ff ea                                      b #0x382c08
00382f18  a1 43 03 eb                                      bl #0x453da4
00382f1c  e4 31 d0 e5                                      ldrb r3, [r0, #0x1e4]
00382f20  00 00 53 e3                                      cmp r3, #0
00382f24  76 ff ff 1a                                      bne #0x382d04
00382f28  9d 43 03 eb                                      bl #0x453da4
00382f2c  f8 10 d4 e1                                      ldrsh r1, [r4, #8]
00382f30  fa 20 d4 e1                                      ldrsh r2, [r4, #0xa]
00382f34  2c 41 03 eb                                      bl #0x4533ec
00382f38  00 00 50 e3                                      cmp r0, #0
00382f3c  5a ff ff 1a                                      bne #0x382cac
00382f40  6f ff ff ea                                      b #0x382d04
00382f44  07 00 a0 e1                                      mov r0, r7
00382f48  08 10 a0 e1                                      mov r1, r8
00382f4c  f8 fe ff eb                                      bl #0x382b34
00382f50  f2 30 d0 e1                                      ldrsh r3, [r0, #2]
00382f54  00 00 53 e3                                      cmp r3, #0
00382f58  7c ff ff 1a                                      bne #0x382d50
00382f5c  08 10 a0 e1                                      mov r1, r8
00382f60  07 00 a0 e1                                      mov r0, r7
00382f64  f2 fe ff eb                                      bl #0x382b34
00382f68  b8 30 d4 e1                                      ldrh r3, [r4, #8]
00382f6c  08 10 a0 e1                                      mov r1, r8
00382f70  b0 30 c0 e1                                      strh r3, [r0]
00382f74  07 00 a0 e1                                      mov r0, r7
00382f78  ed fe ff eb                                      bl #0x382b34
00382f7c  ba 30 d4 e1                                      ldrh r3, [r4, #0xa]
00382f80  b2 30 c0 e1                                      strh r3, [r0, #2]
00382f84  71 ff ff ea                                      b #0x382d50
00382f88  20 30 95 e5                                      ldr r3, [r5, #0x20]
00382f8c  85 30 d3 e5                                      ldrb r3, [r3, #0x85]
00382f90  00 00 53 e3                                      cmp r3, #0
00382f94  03 50 a0 01                                      moveq r5, r3
00382f98  d3 ff ff 0a                                      beq #0x382eec
00382f9c  08 10 a0 e1                                      mov r1, r8
00382fa0  07 00 a0 e1                                      mov r0, r7
00382fa4  e2 fe ff eb                                      bl #0x382b34
00382fa8  00 60 a0 e1                                      mov r6, r0
00382fac  f0 00 d0 e1                                      ldrsh r0, [r0]
00382fb0  6b 2e fe eb                                      bl #0x30e964
00382fb4  00 b0 a0 e1                                      mov fp, r0
00382fb8  f2 00 d6 e1                                      ldrsh r0, [r6, #2]
00382fbc  68 2e fe eb                                      bl #0x30e964
00382fc0  00 60 a0 e1                                      mov r6, r0
00382fc4  f8 00 d4 e1                                      ldrsh r0, [r4, #8]
00382fc8  65 2e fe eb                                      bl #0x30e964
00382fcc  00 a0 a0 e1                                      mov sl, r0
00382fd0  fa 00 d4 e1                                      ldrsh r0, [r4, #0xa]
00382fd4  62 2e fe eb                                      bl #0x30e964
00382fd8  0b 10 a0 e1                                      mov r1, fp
00382fdc  00 90 a0 e1                                      mov sb, r0
00382fe0  0a 00 a0 e1                                      mov r0, sl
00382fe4  f0 2c fe eb                                      bl #0x30e3ac
00382fe8  42 14 a0 e3                                      mov r1, #0x42000000
00382fec  12 17 81 e2                                      add r1, r1, #0x480000
00382ff0  5d 2f fe eb                                      bl #0x30ed6c
00382ff4  06 10 a0 e1                                      mov r1, r6
00382ff8  00 a0 a0 e1                                      mov sl, r0
00382ffc  09 00 a0 e1                                      mov r0, sb
00383000  e9 2c fe eb                                      bl #0x30e3ac
00383004  42 14 a0 e3                                      mov r1, #0x42000000
00383008  12 17 81 e2                                      add r1, r1, #0x480000
0038300c  02 01 80 e2                                      add r0, r0, #0x80000000
00383010  55 2f fe eb                                      bl #0x30ed6c
00383014  20 50 95 e5                                      ldr r5, [r5, #0x20]
00383018  00 10 a0 e1                                      mov r1, r0
0038301c  9c 00 95 e5                                      ldr r0, [r5, #0x9c]
00383020  e1 2c fe eb                                      bl #0x30e3ac
00383024  0a 10 a0 e1                                      mov r1, sl
00383028  00 60 a0 e1                                      mov r6, r0
0038302c  98 00 95 e5                                      ldr r0, [r5, #0x98]
00383030  dd 2c fe eb                                      bl #0x30e3ac
00383034  9c 60 85 e5                                      str r6, [r5, #0x9c]
00383038  98 00 85 e5                                      str r0, [r5, #0x98]
0038303c  00 50 a0 e3                                      mov r5, #0
00383040  a9 ff ff ea                                      b #0x382eec
00383044  04 20 96 e5                                      ldr r2, [r6, #4]
00383048  0c 10 92 e5                                      ldr r1, [r2, #0xc]
0038304c  06 00 51 e1                                      cmp r1, r6
00383050  01 00 00 0a                                      beq #0x38305c
00383054  07 00 00 ea                                      b #0x383078
00383058  01 20 a0 e1                                      mov r2, r1
0038305c  04 10 92 e5                                      ldr r1, [r2, #4]
00383060  0c 00 91 e5                                      ldr r0, [r1, #0xc]
00383064  00 00 52 e1                                      cmp r2, r0
00383068  fa ff ff 0a                                      beq #0x383058
0038306c  02 60 a0 e1                                      mov r6, r2
00383070  0c 00 92 e5                                      ldr r0, [r2, #0xc]
00383074  01 20 a0 e1                                      mov r2, r1
00383078  00 00 52 e1                                      cmp r2, r0
0038307c  02 60 a0 11                                      movne r6, r2
00383080  56 ff ff ea                                      b #0x382de0

; FUNCTION 0x003830bc, declared_size=60, range_size=60, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandler14ResetFingerMapEv
; demangled: ZoomHandler::ResetFingerMap()
; decoder-mode: arm
003830bc  70 40 2d e9                                      push {r4, r5, r6, lr}
003830c0  18 30 90 e5                                      ldr r3, [r0, #0x18]
003830c4  00 40 a0 e1                                      mov r4, r0
003830c8  00 00 53 e3                                      cmp r3, #0
003830cc  08 00 00 0a                                      beq #0x3830f4
003830d0  08 50 80 e2                                      add r5, r0, #8
003830d4  05 00 a0 e1                                      mov r0, r5
003830d8  0c 10 94 e5                                      ldr r1, [r4, #0xc]
003830dc  e8 ff ff eb                                      bl #0x383084
003830e0  00 30 a0 e3                                      mov r3, #0
003830e4  18 30 84 e5                                      str r3, [r4, #0x18]
003830e8  14 50 84 e5                                      str r5, [r4, #0x14]
003830ec  10 50 84 e5                                      str r5, [r4, #0x10]
003830f0  0c 30 84 e5                                      str r3, [r4, #0xc]
003830f4  70 80 bd e8                                      pop {r4, r5, r6, pc}

; FUNCTION 0x003830f8, declared_size=8, range_size=8, mode=arm
; class-group: ZoomHandler
; alias: _ZThn4_N11ZoomHandlerD1Ev
; demangled: non-virtual thunk to ZoomHandler::~ZoomHandler()
; decoder-mode: arm
003830f8  04 00 40 e2                                      sub r0, r0, #4
003830fc  ff ff ff ea                                      b #0x383100

; FUNCTION 0x00383100, declared_size=148, range_size=148, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandlerD1Ev
; demangled: ZoomHandler::~ZoomHandler()
; decoder-mode: arm
00383100  80 30 9f e5                                      ldr r3, [pc, #0x80]
00383104  80 20 9f e5                                      ldr r2, [pc, #0x80]
00383108  80 10 9f e5                                      ldr r1, [pc, #0x80]
0038310c  03 30 8f e0                                      add r3, pc, r3
00383110  70 40 2d e9                                      push {r4, r5, r6, lr}
00383114  02 20 93 e7                                      ldr r2, [r3, r2]
00383118  01 50 93 e7                                      ldr r5, [r3, r1]
0038311c  00 40 a0 e1                                      mov r4, r0
00383120  20 10 82 e2                                      add r1, r2, #0x20
00383124  08 20 82 e2                                      add r2, r2, #8
00383128  00 20 80 e5                                      str r2, [r0]
0038312c  04 10 80 e5                                      str r1, [r0, #4]
00383130  00 20 a0 e1                                      mov r2, r0
00383134  04 10 a0 e3                                      mov r1, #4
00383138  14 00 95 e5                                      ldr r0, [r5, #0x14]
0038313c  f6 d3 fe eb                                      bl #0x33811c
00383140  14 00 95 e5                                      ldr r0, [r5, #0x14]
00383144  05 10 a0 e3                                      mov r1, #5
00383148  04 20 a0 e1                                      mov r2, r4
0038314c  f2 d3 fe eb                                      bl #0x33811c
00383150  18 30 94 e5                                      ldr r3, [r4, #0x18]
00383154  00 00 53 e3                                      cmp r3, #0
00383158  08 00 00 0a                                      beq #0x383180
0038315c  08 50 84 e2                                      add r5, r4, #8
00383160  05 00 a0 e1                                      mov r0, r5
00383164  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00383168  c5 ff ff eb                                      bl #0x383084
0038316c  00 30 a0 e3                                      mov r3, #0
00383170  14 50 84 e5                                      str r5, [r4, #0x14]
00383174  18 30 84 e5                                      str r3, [r4, #0x18]
00383178  10 50 84 e5                                      str r5, [r4, #0x10]
0038317c  0c 30 84 e5                                      str r3, [r4, #0xc]
00383180  04 00 a0 e1                                      mov r0, r4
00383184  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00383188  84 19 61 00 40 11 00 00 f4 37 00 00              .byte 0x84, 0x19, 0x61, 0x00, 0x40, 0x11, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00

; FUNCTION 0x00383194, declared_size=8, range_size=8, mode=arm
; class-group: ZoomHandler
; alias: _ZThn4_N11ZoomHandlerD0Ev
; demangled: non-virtual thunk to ZoomHandler::~ZoomHandler()
; decoder-mode: arm
00383194  04 00 40 e2                                      sub r0, r0, #4
00383198  ff ff ff ea                                      b #0x38319c

; FUNCTION 0x0038319c, declared_size=28, range_size=28, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandlerD0Ev
; demangled: ZoomHandler::~ZoomHandler()
; decoder-mode: arm
0038319c  10 40 2d e9                                      push {r4, lr}
003831a0  00 40 a0 e1                                      mov r4, r0
003831a4  d5 ff ff eb                                      bl #0x383100
003831a8  04 00 a0 e1                                      mov r0, r4
003831ac  a3 34 fe eb                                      bl #0x310440
003831b0  04 00 a0 e1                                      mov r0, r4
003831b4  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x003831b8, declared_size=148, range_size=148, mode=arm
; class-group: ZoomHandler
; alias: _ZN11ZoomHandlerD2Ev
; demangled: ZoomHandler::~ZoomHandler()
; decoder-mode: arm
003831b8  80 30 9f e5                                      ldr r3, [pc, #0x80]
003831bc  80 20 9f e5                                      ldr r2, [pc, #0x80]
003831c0  80 10 9f e5                                      ldr r1, [pc, #0x80]
003831c4  03 30 8f e0                                      add r3, pc, r3
003831c8  70 40 2d e9                                      push {r4, r5, r6, lr}
003831cc  02 20 93 e7                                      ldr r2, [r3, r2]
003831d0  01 50 93 e7                                      ldr r5, [r3, r1]
003831d4  00 40 a0 e1                                      mov r4, r0
003831d8  20 10 82 e2                                      add r1, r2, #0x20
003831dc  08 20 82 e2                                      add r2, r2, #8
003831e0  00 20 80 e5                                      str r2, [r0]
003831e4  04 10 80 e5                                      str r1, [r0, #4]
003831e8  00 20 a0 e1                                      mov r2, r0
003831ec  04 10 a0 e3                                      mov r1, #4
003831f0  14 00 95 e5                                      ldr r0, [r5, #0x14]
003831f4  c8 d3 fe eb                                      bl #0x33811c
003831f8  14 00 95 e5                                      ldr r0, [r5, #0x14]
003831fc  05 10 a0 e3                                      mov r1, #5
00383200  04 20 a0 e1                                      mov r2, r4
00383204  c4 d3 fe eb                                      bl #0x33811c
00383208  18 30 94 e5                                      ldr r3, [r4, #0x18]
0038320c  00 00 53 e3                                      cmp r3, #0
00383210  08 00 00 0a                                      beq #0x383238
00383214  08 50 84 e2                                      add r5, r4, #8
00383218  05 00 a0 e1                                      mov r0, r5
0038321c  0c 10 94 e5                                      ldr r1, [r4, #0xc]
00383220  97 ff ff eb                                      bl #0x383084
00383224  00 30 a0 e3                                      mov r3, #0
00383228  14 50 84 e5                                      str r5, [r4, #0x14]
0038322c  18 30 84 e5                                      str r3, [r4, #0x18]
00383230  10 50 84 e5                                      str r5, [r4, #0x10]
00383234  0c 30 84 e5                                      str r3, [r4, #0xc]
00383238  04 00 a0 e1                                      mov r0, r4
0038323c  70 80 bd e8                                      pop {r4, r5, r6, pc}
; mapping-symbol data/literal pool
00383240  cc 18 61 00 40 11 00 00 f4 37 00 00              .byte 0xcc, 0x18, 0x61, 0x00, 0x40, 0x11, 0x00, 0x00, 0xf4, 0x37, 0x00, 0x00
