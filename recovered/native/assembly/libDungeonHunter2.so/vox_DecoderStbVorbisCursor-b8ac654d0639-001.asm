; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.
; .byte marks mapped data or bytes Capstone could not decode.
; This is an annotated listing, not assembler-ready source.

; FUNCTION 0x00874f2c, declared_size=112, range_size=112, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursor7HasDataEv
; demangled: vox::DecoderStbVorbisCursor::HasData()
; decoder-mode: arm
00874f2c  10 40 2d e9                                      push {r4, lr}
00874f30  18 30 90 e5                                      ldr r3, [r0, #0x18]
00874f34  00 40 a0 e1                                      mov r4, r0
00874f38  00 00 53 e3                                      cmp r3, #0
00874f3c  14 00 00 0a                                      beq #0x874f94
00874f40  24 20 90 e5                                      ldr r2, [r0, #0x24]
00874f44  10 30 90 e5                                      ldr r3, [r0, #0x10]
00874f48  03 00 52 e1                                      cmp r2, r3
00874f4c  02 00 00 3a                                      blo #0x874f5c
00874f50  1c 10 d0 e5                                      ldrb r1, [r0, #0x1c]
00874f54  00 00 51 e3                                      cmp r1, #0
00874f58  03 00 00 1a                                      bne #0x874f6c
00874f5c  03 00 52 e1                                      cmp r2, r3
00874f60  00 00 a0 23                                      movhs r0, #0
00874f64  01 00 a0 33                                      movlo r0, #1
00874f68  10 80 bd e8                                      pop {r4, pc}
00874f6c  00 30 90 e5                                      ldr r3, [r0]
00874f70  00 10 a0 e3                                      mov r1, #0
00874f74  0f e0 a0 e1                                      mov lr, pc
00874f78  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00874f7c  10 30 94 e5                                      ldr r3, [r4, #0x10]
00874f80  24 20 94 e5                                      ldr r2, [r4, #0x24]
00874f84  03 00 52 e1                                      cmp r2, r3
00874f88  00 00 a0 23                                      movhs r0, #0
00874f8c  01 00 a0 33                                      movlo r0, #1
00874f90  10 80 bd e8                                      pop {r4, pc}
00874f94  03 00 a0 e1                                      mov r0, r3
00874f98  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00874f9c, declared_size=80, range_size=80, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursor4SeekEj
; demangled: vox::DecoderStbVorbisCursor::Seek(unsigned int)
; decoder-mode: arm
00874f9c  10 40 2d e9                                      push {r4, lr}
00874fa0  10 30 90 e5                                      ldr r3, [r0, #0x10]
00874fa4  08 d0 4d e2                                      sub sp, sp, #8
00874fa8  00 40 a0 e1                                      mov r4, r0
00874fac  01 00 53 e1                                      cmp r3, r1
00874fb0  02 00 00 2a                                      bhs #0x874fc0
00874fb4  00 00 e0 e3                                      mvn r0, #0
00874fb8  08 d0 8d e2                                      add sp, sp, #8
00874fbc  10 80 bd e8                                      pop {r4, pc}
00874fc0  00 00 51 e3                                      cmp r1, #0
00874fc4  fa ff ff 1a                                      bne #0x874fb4
00874fc8  20 00 90 e5                                      ldr r0, [r0, #0x20]
00874fcc  00 00 50 e3                                      cmp r0, #0
00874fd0  f7 ff ff 0a                                      beq #0x874fb4
00874fd4  04 10 8d e5                                      str r1, [sp, #4]
00874fd8  b7 23 00 eb                                      bl #0x87debc
00874fdc  04 10 9d e5                                      ldr r1, [sp, #4]
00874fe0  24 10 84 e5                                      str r1, [r4, #0x24]
00874fe4  01 00 a0 e1                                      mov r0, r1
00874fe8  f2 ff ff ea                                      b #0x874fb8

; FUNCTION 0x00874fec, declared_size=216, range_size=216, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursor6DecodeEPvi
; demangled: vox::DecoderStbVorbisCursor::Decode(void*, int)
; decoder-mode: arm
00874fec  70 40 2d e9                                      push {r4, r5, r6, lr}
00874ff0  00 40 a0 e1                                      mov r4, r0
00874ff4  20 00 90 e5                                      ldr r0, [r0, #0x20]
00874ff8  02 30 a0 e1                                      mov r3, r2
00874ffc  00 00 50 e3                                      cmp r0, #0
00875000  1f 00 00 0a                                      beq #0x875084
00875004  0c 20 94 e5                                      ldr r2, [r4, #0xc]
00875008  20 00 52 e3                                      cmp r2, #0x20
0087500c  26 00 00 0a                                      beq #0x8750ac
00875010  01 20 a0 e1                                      mov r2, r1
00875014  a3 30 a0 e1                                      lsr r3, r3, #1
00875018  04 10 94 e5                                      ldr r1, [r4, #4]
0087501c  55 25 00 eb                                      bl #0x87e578
00875020  00 50 a0 e1                                      mov r5, r0
00875024  24 30 94 e5                                      ldr r3, [r4, #0x24]
00875028  00 00 55 e3                                      cmp r5, #0
0087502c  03 30 85 e0                                      add r3, r5, r3
00875030  24 30 84 e5                                      str r3, [r4, #0x24]
00875034  13 00 00 1a                                      bne #0x875088
00875038  1c 30 d4 e5                                      ldrb r3, [r4, #0x1c]
0087503c  00 00 53 e3                                      cmp r3, #0
00875040  05 00 00 1a                                      bne #0x87505c
00875044  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00875048  04 30 94 e5                                      ldr r3, [r4, #4]
0087504c  c0 01 a0 e1                                      asr r0, r0, #3
00875050  93 00 00 e0                                      mul r0, r3, r0
00875054  95 00 00 e0                                      mul r0, r5, r0
00875058  70 80 bd e8                                      pop {r4, r5, r6, pc}
0087505c  00 30 94 e5                                      ldr r3, [r4]
00875060  04 00 a0 e1                                      mov r0, r4
00875064  00 10 a0 e3                                      mov r1, #0
00875068  0f e0 a0 e1                                      mov lr, pc
0087506c  28 f0 93 e5                                      ldr pc, [r3, #0x28]
00875070  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00875074  04 30 94 e5                                      ldr r3, [r4, #4]
00875078  c0 01 a0 e1                                      asr r0, r0, #3
0087507c  93 00 00 e0                                      mul r0, r3, r0
00875080  95 00 00 e0                                      mul r0, r5, r0
00875084  70 80 bd e8                                      pop {r4, r5, r6, pc}
00875088  10 20 94 e5                                      ldr r2, [r4, #0x10]
0087508c  02 00 53 e1                                      cmp r3, r2
00875090  e8 ff ff 0a                                      beq #0x875038
00875094  0c 00 94 e5                                      ldr r0, [r4, #0xc]
00875098  04 30 94 e5                                      ldr r3, [r4, #4]
0087509c  c0 01 a0 e1                                      asr r0, r0, #3
008750a0  93 00 00 e0                                      mul r0, r3, r0
008750a4  95 00 00 e0                                      mul r0, r5, r0
008750a8  70 80 bd e8                                      pop {r4, r5, r6, pc}
008750ac  01 20 a0 e1                                      mov r2, r1
008750b0  23 31 a0 e1                                      lsr r3, r3, #2
008750b4  04 10 94 e5                                      ldr r1, [r4, #4]
008750b8  a6 24 00 eb                                      bl #0x87e358
008750bc  00 50 a0 e1                                      mov r5, r0
008750c0  d7 ff ff ea                                      b #0x875024

; FUNCTION 0x008750c4, declared_size=64, range_size=64, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursorD1Ev
; demangled: vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor()
; decoder-mode: arm
008750c4  10 40 2d e9                                      push {r4, lr}
008750c8  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
008750cc  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
008750d0  00 40 a0 e1                                      mov r4, r0
008750d4  03 30 8f e0                                      add r3, pc, r3
008750d8  20 00 90 e5                                      ldr r0, [r0, #0x20]
008750dc  02 20 93 e7                                      ldr r2, [r3, r2]
008750e0  00 00 50 e3                                      cmp r0, #0
008750e4  08 20 82 e2                                      add r2, r2, #8
008750e8  00 20 84 e5                                      str r2, [r4]
008750ec  00 00 00 0a                                      beq #0x8750f4
008750f0  31 16 00 eb                                      bl #0x87a9bc
008750f4  04 00 a0 e1                                      mov r0, r4
008750f8  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
008750fc  bc f9 11 00 08 18 00 00                          .byte 0xbc, 0xf9, 0x11, 0x00, 0x08, 0x18, 0x00, 0x00

; FUNCTION 0x00875104, declared_size=28, range_size=28, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursorD0Ev
; demangled: vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor()
; decoder-mode: arm
00875104  10 40 2d e9                                      push {r4, lr}
00875108  00 40 a0 e1                                      mov r4, r0
0087510c  ec ff ff eb                                      bl #0x8750c4
00875110  04 00 a0 e1                                      mov r0, r4
00875114  65 64 ea eb                                      bl #0x30e2b0
00875118  04 00 a0 e1                                      mov r0, r4
0087511c  10 80 bd e8                                      pop {r4, pc}

; FUNCTION 0x00875120, declared_size=64, range_size=64, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursorD2Ev
; demangled: vox::DecoderStbVorbisCursor::~DecoderStbVorbisCursor()
; decoder-mode: arm
00875120  10 40 2d e9                                      push {r4, lr}
00875124  2c 30 9f e5                                      ldr r3, [pc, #0x2c]
00875128  2c 20 9f e5                                      ldr r2, [pc, #0x2c]
0087512c  00 40 a0 e1                                      mov r4, r0
00875130  03 30 8f e0                                      add r3, pc, r3
00875134  20 00 90 e5                                      ldr r0, [r0, #0x20]
00875138  02 20 93 e7                                      ldr r2, [r3, r2]
0087513c  00 00 50 e3                                      cmp r0, #0
00875140  08 20 82 e2                                      add r2, r2, #8
00875144  00 20 84 e5                                      str r2, [r4]
00875148  00 00 00 0a                                      beq #0x875150
0087514c  1a 16 00 eb                                      bl #0x87a9bc
00875150  04 00 a0 e1                                      mov r0, r4
00875154  10 80 bd e8                                      pop {r4, pc}
; mapping-symbol data/literal pool
00875158  60 f9 11 00 08 18 00 00                          .byte 0x60, 0xf9, 0x11, 0x00, 0x08, 0x18, 0x00, 0x00

; FUNCTION 0x008751fc, declared_size=192, range_size=192, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
008751fc  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
00875200  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
00875204  10 40 2d e9                                      push {r4, lr}
00875208  0c c0 8f e0                                      add ip, pc, ip
0087520c  03 30 9c e7                                      ldr r3, [ip, r3]
00875210  00 e0 a0 e3                                      mov lr, #0
00875214  20 d0 4d e2                                      sub sp, sp, #0x20
00875218  08 30 83 e2                                      add r3, r3, #8
0087521c  14 10 80 e5                                      str r1, [r0, #0x14]
00875220  00 30 80 e5                                      str r3, [r0]
00875224  18 20 80 e5                                      str r2, [r0, #0x18]
00875228  00 40 a0 e1                                      mov r4, r0
0087522c  04 e0 80 e5                                      str lr, [r0, #4]
00875230  08 e0 80 e5                                      str lr, [r0, #8]
00875234  0c e0 80 e5                                      str lr, [r0, #0xc]
00875238  10 e0 80 e5                                      str lr, [r0, #0x10]
0087523c  1c e0 c0 e5                                      strb lr, [r0, #0x1c]
00875240  20 e0 80 e5                                      str lr, [r0, #0x20]
00875244  24 e0 80 e5                                      str lr, [r0, #0x24]
00875248  0e 10 a0 e1                                      mov r1, lr
0087524c  02 00 a0 e1                                      mov r0, r2
00875250  0e 30 a0 e1                                      mov r3, lr
00875254  1c 20 8d e2                                      add r2, sp, #0x1c
00875258  9a 23 00 eb                                      bl #0x87e0c8
0087525c  00 00 50 e3                                      cmp r0, #0
00875260  20 00 84 e5                                      str r0, [r4, #0x20]
00875264  0d 00 00 0a                                      beq #0x8752a0
00875268  00 10 a0 e1                                      mov r1, r0
0087526c  04 00 8d e2                                      add r0, sp, #4
00875270  ed 06 00 eb                                      bl #0x876e2c
00875274  08 20 9d e5                                      ldr r2, [sp, #8]
00875278  04 30 9d e5                                      ldr r3, [sp, #4]
0087527c  10 10 a0 e3                                      mov r1, #0x10
00875280  0c 10 84 e5                                      str r1, [r4, #0xc]
00875284  0c 00 84 e9                                      stmib r4, {r2, r3}
00875288  20 00 94 e5                                      ldr r0, [r4, #0x20]
0087528c  36 0c 00 eb                                      bl #0x87836c
00875290  10 00 84 e5                                      str r0, [r4, #0x10]
00875294  04 00 a0 e1                                      mov r0, r4
00875298  20 d0 8d e2                                      add sp, sp, #0x20
0087529c  10 80 bd e8                                      pop {r4, pc}
008752a0  10 00 84 e5                                      str r0, [r4, #0x10]
008752a4  04 00 84 e5                                      str r0, [r4, #4]
008752a8  08 00 84 e5                                      str r0, [r4, #8]
008752ac  0c 00 84 e5                                      str r0, [r4, #0xc]
008752b0  f7 ff ff ea                                      b #0x875294
; mapping-symbol data/literal pool
008752b4  88 f8 11 00 08 18 00 00                          .byte 0x88, 0xf8, 0x11, 0x00, 0x08, 0x18, 0x00, 0x00

; FUNCTION 0x008752bc, declared_size=192, range_size=192, mode=arm
; class-group: vox::DecoderStbVorbisCursor
; alias: _ZN3vox22DecoderStbVorbisCursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
; demangled: vox::DecoderStbVorbisCursor::DecoderStbVorbisCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
; decoder-mode: arm
008752bc  b0 c0 9f e5                                      ldr ip, [pc, #0xb0]
008752c0  b0 30 9f e5                                      ldr r3, [pc, #0xb0]
008752c4  10 40 2d e9                                      push {r4, lr}
008752c8  0c c0 8f e0                                      add ip, pc, ip
008752cc  03 30 9c e7                                      ldr r3, [ip, r3]
008752d0  00 e0 a0 e3                                      mov lr, #0
008752d4  20 d0 4d e2                                      sub sp, sp, #0x20
008752d8  08 30 83 e2                                      add r3, r3, #8
008752dc  14 10 80 e5                                      str r1, [r0, #0x14]
008752e0  00 30 80 e5                                      str r3, [r0]
008752e4  18 20 80 e5                                      str r2, [r0, #0x18]
008752e8  00 40 a0 e1                                      mov r4, r0
008752ec  04 e0 80 e5                                      str lr, [r0, #4]
008752f0  08 e0 80 e5                                      str lr, [r0, #8]
008752f4  0c e0 80 e5                                      str lr, [r0, #0xc]
008752f8  10 e0 80 e5                                      str lr, [r0, #0x10]
008752fc  1c e0 c0 e5                                      strb lr, [r0, #0x1c]
00875300  20 e0 80 e5                                      str lr, [r0, #0x20]
00875304  24 e0 80 e5                                      str lr, [r0, #0x24]
00875308  0e 10 a0 e1                                      mov r1, lr
0087530c  02 00 a0 e1                                      mov r0, r2
00875310  0e 30 a0 e1                                      mov r3, lr
00875314  1c 20 8d e2                                      add r2, sp, #0x1c
00875318  6a 23 00 eb                                      bl #0x87e0c8
0087531c  00 00 50 e3                                      cmp r0, #0
00875320  20 00 84 e5                                      str r0, [r4, #0x20]
00875324  0d 00 00 0a                                      beq #0x875360
00875328  00 10 a0 e1                                      mov r1, r0
0087532c  04 00 8d e2                                      add r0, sp, #4
00875330  bd 06 00 eb                                      bl #0x876e2c
00875334  08 20 9d e5                                      ldr r2, [sp, #8]
00875338  04 30 9d e5                                      ldr r3, [sp, #4]
0087533c  10 10 a0 e3                                      mov r1, #0x10
00875340  0c 10 84 e5                                      str r1, [r4, #0xc]
00875344  0c 00 84 e9                                      stmib r4, {r2, r3}
00875348  20 00 94 e5                                      ldr r0, [r4, #0x20]
0087534c  06 0c 00 eb                                      bl #0x87836c
00875350  10 00 84 e5                                      str r0, [r4, #0x10]
00875354  04 00 a0 e1                                      mov r0, r4
00875358  20 d0 8d e2                                      add sp, sp, #0x20
0087535c  10 80 bd e8                                      pop {r4, pc}
00875360  10 00 84 e5                                      str r0, [r4, #0x10]
00875364  04 00 84 e5                                      str r0, [r4, #4]
00875368  08 00 84 e5                                      str r0, [r4, #8]
0087536c  0c 00 84 e5                                      str r0, [r4, #0xc]
00875370  f7 ff ff ea                                      b #0x875354
; mapping-symbol data/literal pool
00875374  c8 f7 11 00 08 18 00 00                          .byte 0xc8, 0xf7, 0x11, 0x00, 0x08, 0x18, 0x00, 0x00
